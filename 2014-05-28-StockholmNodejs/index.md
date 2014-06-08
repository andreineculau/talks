name: main
class: center, middle

---
name: inverse
class: center, middle, inverse

---
template: main

# https://andreineculau.github.io/go-remark/?//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/index.md#18

# Press `p` to see presentation notes
???
Bingo. Now press `right arrow`.

---
template: inverse
# KATT

---
template: inverse
<img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/cat.png" style="height: 25em">
# ?

---
template: main
## Wherefore art thou speaking?
# Andrei
## before @<img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/klarna.png" style="height: .75em">, now @<img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/tail-f.jpg" style="height: 0.75em">systems
## caught in the realm of the frontend of the backend purgatory
## [moar](https://www.youtube.com/watch?v=ABzWafwY20o) foo at [andreineculau.com](http://andreineculau.com)
???

---
template: inverse
# <u>K</u>larna <u>A</u>PI <u>T</u>esting <u>T</u>ool
* Isak Bakken
* Andrei Neculau
* Christian Rennerskog
* Johan Stenson
* Stefan Strigler
* Eduard Zamora
* Rebecca Meritz
* Abdul Haseeb
* Ulf Liedberg
* ...
* <img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/apiary.png" style="height: 2em">, PEG

# Open-sourced at

* Erlang: https://github.com/klarna/katt
* NodeJS: https://github.com/klarna/katt-js
* the NodeJS repo might be abandonware; I keep my fork at https://github.com/for-GET/katt-js

???
* KATT v1 - Christian & Johan
* KATT v2 - Isak & me
* Klarna Checkout: complex state machine, complex behaviour
* ~1:1 relation between a user action and an API request
* open-sourced, or as Isak said: we saved some code
* follows the 80/20 Pareto principle

---
template: main
## **Test**ing
## **behaviour** of
## **HTTP** *
## **JSON** *
## **API**s
## with a NodeJS * tool

-

\* not only
???
* KATT could be made HTTP agnostic
* KATT is already syntax agnostic, just that only plaintext and JSON support is builtin
* KATT is originally written in Erlang, and ported to NodeJS
* ask me why at the end of the talk

---
template: main
## **Test**ing
## **chained semantics** of
## a **transfer**
## and **messaging**
## **protocol**
## -

-

(in higher abstraction lingo)
???
* chained semantics = a flow of behaviours

---
template: main
## <u>NOT</u> testing
## usability
## standard
## performance
## typing *
## ...
## [<img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/smartbear.png" style="height: 1em"> <img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/nordicapis.png" style="height: 1em">](https://www.youtube.com/user/nordicapis/videos)

(in exclusive lingo)
???
* it should be obvious why it's important/beneficial to test in general
* to test APIs
* check SmartBear's talks at Nordic APIs in Stockholm last year
* ask me about typing at the end of the talk

---
template: inverse
# We have a <u>red</u> [IFTTT](https://ifttt.com/)
# that needs to be ~~green~~ <u>blue</u>.

---
template: inverse
<img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/nodejs.png" style="height: 25em">
???

---
template: inverse
# most-common?! practice

---
```coffeescript
# Mocha + Chai + SuperAgent + SuperTest

should = require('chai').should()
api = require('supertest') 'http://example.com'

describe 'my api', () ->
  describe 'GET /collection', () ->
    it 'responds as expected', (done) ->
      api.get('/collection')
        .set('authorization', 'Bearer AbCdEf123456')
        .set('accept', 'application/json')
        .expect(200)
        .expect('content-type', /json/)
        .expect('cache-control', 'no-cache')
        .end (err, res) ->
          return done err  if err?
          res.body.should.have.property('items').and.be.instanceof Array
          done()
```
???
* how much of this is HTTP/JSON/behaviour, and how much is boilerplate?
* when "responds as expected" ends up being the norm - what do you actually test?
* naming, one of the two hardest things in computer science...
* can you chain requests into a workflow? yes, more boilerplate - callback hell, async, ...
* can you reuse previous requests? - maybe, with even more boilerplate
* can you share them with your customers? improbable, as it will be filled with business critical edge-cases
* are they standalone?
* can a non-js-developer understand them, have an overview of them?
* ...

---
template: inverse
# alternative practice

---
template: main
## @steveklabnik @balanced
# [TDD your API](http://blog.balancedpayments.com/tdd-your-api/)

* v1. reStructured Text
* v2. YAML
* v3. Cucumber
???
* 2 years (since August 16, 2012) "progress"

---
template: inverse
[<img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/wat.jpg" style="height: 25em">](https://www.destroyallsoftware.com/talks/wat)

---
```text
Feature: Credit cards

  Scenario: Add a card to a customer
    Given I have tokenized a card
    And I have created a customer
    When I make a PATCH request to /cards/:card_id with the body:
      """
        [{
          "op": "replace",
          "path": "/cards/0/links/customer",
          "value": ":customer_id"
        }]
      """
    Then I should get a 200 OK status code
    And I make a GET request to /cards/:card_id
    Then the response is valid according to the "cards" schema
    And the fields on this card match:
      """
        {
          "links": { "customer": ":customer_id" }
        }
      """
```
[...](https://github.com/balanced/balanced-api/pull/431#issuecomment-29706071)
???
* now the boilerplate is ~~minimized~~ hidden away
* matching steps with step definitions
* JSON has surfaced a bit
* HTTP is still hidden
* language "agnostic", although you need to implement this in every programming language
* ...

---
template: inverse
# remember KATT ?

---
template: main
# live coding session
## KATT for a @spotify [metadata API](https://developer.spotify.com/technologies/web-api/) scenario

* test (katt)
* record ([HAR](http://www.softwareishard.com/blog/har-12-spec/) & katt-util)
* replay (katt-player)

---
template: main
# !"#%&/()=

# a file dump that "works on my machine"
https://github.com/andreineculau/talks/tree/gh-pages/2014-05-28-StockholmNodejs/files
???
// ERROR with NodeJS' HTTP parser
* katt-js -p '{"hostname":"ws.spotify.com","protocol":"https:"}' test/scenarios/1/spotify.metadata.apib

// SWITCH to [an apiary mock](http://docs.spotifytest.apiary.io/)
* katt-js -p '{"hostname":"spotifytest.apiary-mock.com"}' test/scenarios/1/spotify.metadata.apib

// that's ok for a quick test, but for a real-life CI experience
// NOTE testem + mocha + chai + params + deps
* testem ci

// NOTE testem + emacs
* testem

---
template: main
# Key points
* test HTTP by writing HTTP
* test JSON by writing JSON
* test API behaviour by writing API behaviour
* STOP boilerplating and cucumbering!
* make your API tests public
* let customers run a mock of your API locally via katt-player

---
template: main
[<img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/duck.jpg" style="height: 25em">](http://en.wikipedia.org/wiki/Rubber_duck_debugging)
???
* but most importantly
* talk to your duck
* before it gets blow out of proportion

---
template: main
<img src="//andreineculau.github.io/talks/2014-05-28-StockholmNodejs/wat.jpg" style="height: 25em">
???

---
template: inverse
# Thanks! Q&A?
## [@andreineculau](https://twitter.com/andreineculau)
## -
## Slides and text <u>soon</u> at [hyperrest.com](http://hyperrest.com)

---
# References

* https://github.com/klarna/katt-js | https://github.com/for-GET/katt-js
* https://github.com/klarna/katt-util | https://github.com/for-GET/katt-util
* https://github.com/klarna/katt-player | https://github.com/for-GET/katt-player
* https://github.com/klarna/katt | https://github.com/for-GET/katt
* http://blog.balancedpayments.com/tdd-your-api/
* http://strongloop.com/strongblog/how-to-test-an-api-with-node-js/
* https://github.com/apiaryio/dredd
* https://apiary.io
* https://github.com/dmajda/pegjs
* https://www.youtube.com/watch?v=iPC6ArcGyL8
* https://www.youtube.com/watch?v=UqTlToUYK1E
* https://www.youtube.com/watch?v=4EwuuSLr2Lk
* http://nordicapis.com/
* http://smartbear.com/

---
# Q&A

### So you have this in Erlang and NodeJS. I know what I'll do this weekend, port it to...
STOP! Just don't! KATT was originally in Erlang, then we wrote KATT-player (for mocking a backend for Klarna Checkout's frontend development), which implied writing 80% of KATT in NodeJS. So then I said I might as well continue with the other 20%.

### What about types? x is a String, y is a Boolean, z is an Array of objects that have x and y.
NO. APIs should check that for themselves 1) if the request follows format 2) if the response follows format. For JSON, use JSON schema, validate every message. In production! Behaviour is not about format.

### Non-JSON support? XML, YAML, binary?
YES, by extension
