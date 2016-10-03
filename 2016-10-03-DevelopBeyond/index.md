name: main
class: center, middle

---
name: inverse
class: center, middle, inverse

---
name: black
class: center, middle, black

<style>
.black {
background: #000000;
color: #ffffff;
}
</style>

---
template: main
# https://andreineculau.github.io/go-remark/?//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/index.md#1

# Press `p` to see presentation notes
???
Bingo. Now press `right arrow`.

---
template: black
# Planning Poker

# or

# 🃏 Planning

???
Great! Let's start!

You know, I've submitted 3 proposals to this conference.  
The other 2 were serious, this isn't :)

So ladies and gents, I'll be your joker and entertain you for the next 20 minutes.

---
template: main
<small>PLANNING POKER (R) is a registered trademark of Mountain Goat Software, LLC</small>

# *Don't hate the player, hate the game*

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/haters_gonna_hate.gif" style="height:75vh"/>

???
First joke is that the phrase "planning poker" is a registered trademark of Mountain Goat Software :)

Moving on...

credit: This Is All I Do – Omar Noory - http://www.thisisallido.com/

---
template: black
## How many here

# heard of planning poker before?

## Raise your hand!

???
I need your help. How many here heard of planning poker before? Raise your hand!

...

That's worrysome/awesome!

Because I know nothing at all about planning poker! :p

---
template: black
<!--<iframe src="https://player.vimeo.com/video/45768175?color=000000&title=0&byline=0&portrait=0" width="640" height="480" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
-->
<video src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/knowledge_management.mp4" controls></video>

???
To set the stage right, I'll invite you to watch and listen to a short video.

---
template: main
# I know nothing at all.

### I'm completely lost.

### 🙈🙊🙉

???
So what's the takeaway of my funny video? :)

I told you. I know nothing at all :)

---
template: main
# We know nothing at all.

### How to estimate/quantify/define - time/effort/knowledge.

### How to be/become/stay - happy/productive/focused.

???
And that's a strong claim, but take it with an open mind...

---
template: main

# **I think it is necessary to think**

and not to assume what you don't know.

*W. Edwards Deming*

# ~1986

???
and allow me to take you back in time,  
around 30 years to be more exact.

And introduce you to Edwards Deming, an engineer at heart,  
and a statistician at mind,  
and his experiment known as "the RED BEAD experiment".

---
template: black

<h1 style="color:red"> 🔴 RED BEAD</h1>

<iframe width="640" height="480" src="https://www.youtube.com/v/JeWTD-0BRS4?start=655&end=755&version=3" frameborder="0" allowfullscreen></iframe>

???
Here's an enactment snippet.

...

Now this is a funny enactment, but the experiment is dead serious :)

And it shows that **100% of the variation** in performance  
was **determined by the system**,  
and that **only management** could change the system,  
but did not.

---
template: black

# empirical evidence is complete

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/wrong.png" style="width:100vh"/>

???
There are a few wrong assumptions that build up this flawed sytem,  
but one sticks out: and that is that empirical evidence is complete.

... when in fact there's a large number of variables that affect the performance results,  
many of which are not only unknown, but **unknownable**.

Add to that the assumption that workers control their own performance,  
and that system variations are equally distributed among workers,  
and you've put yourself on the way to disaster.

Ref: http://edition.cnn.com/videos/politics/2016/09/27/donald-trump-debate-art-of-interjection-origwx-js.cnn

---
template: black

<h1>A bad system <small>will defeat a</small></h1>

<h1>a good person, <small style="color:red">every time</small>.</h1>

W. Edwards Deming

???
Luckily, what came next was that people acknowledged the experiment,  
and one thing lead to another,  
and here we are.

Talking about planning poker.

---
template: black

<h1>&nbsp;</h1>

<h1 style="color:red">~1986 🔴 RED BEAD</h1>

# ~2002 PLANNING POKER

???
Some would even call this **evolution**.

---
template: black

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/so_wrong.jpg" style="width:100vh"/>

???
Except...

---
template: black

# ~1968 👻 WIDEBAND DELPHI

<h1 style="color:red">~1986 🔴 RED BEAD</h1>

# ~2002 PLANNING POKER

???
... planning poker is just a form of an estimation technique known was Wideband Delphi.

Created in **1968**.

Roughly two decades before the red bead experiment.

Roughly five decades ago.

Progress is slow, and sometimes even ignored.

---
template: black

# So what

# is planning poker?

---
template: main

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/crisp_deck.jpg" style="width:100vh"/>

???
A deck of planning poker cards, consists of sets, usually 4, one for each team member,

of cards numbered by an exponential growth, usually along the Fibonacci sequence,

plus a few extras, like a wild card and coffee-break card.

---
template: main

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/redbooth_deck.jpg" style="width:100vh"/>

???
But don't let anyone stop you from naming and visualizing your cards

* Low-hanging fruit
* Piece of cake
* It ain’t rocket science
* When pigs fly
* Ping-pong break
* Brownie
* Yak shaving

NOTE: yak shaving = coined by Carlin Vieri in his time at the MIT AI Lab (1993-8)[1]
after viewing[2] a 1991 episode of The Ren and Stimpy Show featuring "Yak Shaving Day",
a Christmas-like Holiday where participants hang diapers instead of stockings,
stuff rubber boots with coleslaw, and watch for the shaven yak
to float by in his enchanted canoe.

Ref https://redbooth.com/blog/scrum-planning-poker-cards

---
template: black

# How?

1. describe story/bug/work task
2. quickly discuss the necessary effort
3. estimate the effort on your own
4. pick the card with the correct ~~effort~~ story points
5. hold it! wait for everyone...
6. ready? everyone shows their card
7. if there are outliers, discuss a bit more
8. estimate again, **highest** effort estimate wins

---
template: black

# How? But... how?

* group **dialogue**
* story points are neither hours, nor days, but **abstract**
* story points are **tacitly agreed on** by the team (baseline)
* story points are **tacitly agreed on** in time (statistically)
* story points are **different** from team to team
* story points are **different** when a team member comes or goes
* **not an exact science** - red bead experiment anyone?
* in fact there's nothing exact about it - **estimation** technique anyone?

---
template: main

# When you know nothing at all,

# you can only start to estimate unknowingly.

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/estimate_the_unknowns.png" style="width:100vh"/>

???
If something will resemble anything exact,
it will be your statistics,
the velocity of the team,
and the predictability - stability, reaction to change, etc.

---
template: black

# war room

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/war_room.jpg" style="width:100vh"/>

???
I learned to love this inexact technique the hard way.

Starting with one of my first days at work, seeing the only scrum master we had getting fired. Boom!

A few months later, around 8 people, me included, were crammed in a 4x4 meters room.

People that wanted to look good for their bosses,  
and bossed that wanted to look good for their own bosses.

Do you know what makes this a war room photo for me?

Not the focus. Not the big bosses. Not the military suites. Not the weight of the situation.

It's the fact that only one guy is busy at all,  
while everyone else is physically present,  
and while the real work happens outside of the war room.

---
template: black

# war room

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/war_room.jpg" style="width:100vh"/>

???
So 4x4. A so-called war room.

With a so-called higher focus. On breathing, I might add :)

For the sake of a so-called silver bullet,  
a big push with huge rewards and empty promises,  
that would soon be labeled a minimal viable product,  
and quickly after, a beta release,  
and then success at last.

Ref: https://rules.ssw.com.au/do-you-have-a-war-room-(summary)
Ref: https://en.wikipedia.org/wiki/No_Silver_Bullet

---
template: black

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/so_wrong.jpg" style="width:100vh"/>

???
Except...

---
template: black

# No silver bullet

Essence and Accidents of Software Engineering

*Fred Brooks*

# ~1986

???
... there is no silver bullet.

You can't possibly run a flawed system,  
thinking you control everything,  
when many factors are not even possible to know, let alone control,  
giving no control to the workers,  
neither the timeline, nor the scope,  
neither the means, nor the metrics,  
neither the people, nor the place,  
and expect a positive performance trend, not to mention success.

Ref: https://en.wikipedia.org/wiki/No_Silver_Bullet

---
template: main

# lines of code

<img src="//andreineculau.github.io/talks/2016-10-03-DevelopBeyond/wat.jpg" style="width:100vh"/>

???
Fun fact: some where even asked to report lines of code

---
template: main

## Light at the end of the tunnel

# PLANNING POKER!

???
Soon after the war room was silently acknowledged as a failure,  
with many burned out, sick, confused, etc.  
the plan was to start planning (pun intended).

Push in sprints, rather than push continuously (kanban they called it),  
and estimate the work beforehand.

And so we did.

---
template: black

## Darkness at the end of the tunnel

# 🃏 PLANNING!

???
We planned

* by giving day estimates!
* by being held responsible for not finishing **in time**
* by being pressured to **"improve" the time estimates**.

Although I didn't know it then,  
both the war room, and the time estimates,  
were just another red bead case.

Could I control the scope? No.  
Could I control the deadline? No.  
Could I control the means? No.  
Could we, the team, control the process? No.  
Could we, the team, control the order of priorities? No.  
Could we control time, then? :D

This is what joker planning is to me.

The illusion of planning with no context, with no history,  
just with a unit of time.

---
template: main

## Light at the end of the tunnel

# PLANNING POKER!

???
when instead you should let statistics

* predict when you can meet your goals
* tell you who is better at estimates
* tell you how good you yourself can estimate
* change your prediction based on goal changes
* change your prediction based on team changes
* **drive your plans, not time estimates**.

---
template: black

# Failling to ~~plan~~ joke

# is ~~planning~~ joking to fail!

*Alan Lakein*

# Thanks! Q&A?
## [anu@tobii.com](mailto:anu@tobii.com)
