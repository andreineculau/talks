should = require('chai').should()
fs = require 'fs'
path = require 'path'
glob = require 'glob'
_ = require 'lodash'
async = require 'async'
katt = require 'katt-js'

scenarios = glob.sync "#{__dirname}/scenarios/**/*.apib"

describe 'KATT example', () ->
  @timeout 5000
  for scenario_ in scenarios
    do () ->
      scenario = scenario_
      dir = path.dirname scenario
      title = path.basename(dir) + '/' + path.basename scenario

      it title, (done) ->
        params = require "#{dir}/params.json"  if fs.existsSync "#{dir}/params.json"
        params ?= {}
        _.defaults params,
          hostname: 'spotifytest.apiary-mock.com'

        # ref HPE_INVALID_CONSTANT error in NodeJS HTTP parser
        return done()  if params.hostname is 'ws.spotify.com'

        final = (err) ->
          katt.run {scenario, params}, (err, result) ->
            return done err  if err?
            result.status.should.eql 'pass', JSON.stringify result, null, 2
            done()

        if fs.existsSync "#{dir}/deps.json"
          deps = require "#{dir}/deps.json"
          iterator = (scenario, next) ->
            scenario = path.resolve dir, scenario
            katt.run {scenario, params, callbacks}, (err, result) ->
              should.fail err  if err?
              result.status.should.eql 'pass', JSON.stringify result, null, 2
              params = result.finalParams
              next()

          async.eachSeries deps, iterator, final
        else
          final()
