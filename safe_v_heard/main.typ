#import "@preview/wordometer:0.1.4": word-count, total-words
#show: word-count

#let title = [Musing about safety v.s. freedom, and proposals.]
#set document(
  author: "saffron",
  title: title,
  date: auto
)
#set page(paper: "us-letter", numbering: "1", number-align: right)
#set text(font: "Roboto", size: 12pt)
#show link: set text(fill: blue)
#show link: underline

#let title = [Musing about safety v.s. freedom, and proposals.]
#text(size: 20pt)[*#title*]

(Feel free to download as pdf for easier viewing and to enable links and footnote jumping.)

I'll start with a concept that might seem off topic and then get to the point.

#outline()

= Opt-in v.s. opt-out

I've been thinking about the idea of opt-in vs opt-out. Generally, *for security-conscious applications, security risks are off by default* (opt-in) instead of on by default (opt-out). Skip to this section's tldr below if you don't need to be convinced that this is true.

A simple example is internet browsing. For apps that are less security-conscious, one feature is being able to resize your window. (Firefox, Edge, Chrome, Safari on PC, whatever can do this.) But this is a possible "fingerprinting" risk because websites are able to detect a browser's window size. Given window size and enough other fingerprints (which extensions you're using, a user's habitual method of inputting clicks and keystrokes, etc), an attacker can make a very good guess or even statistical guarantee of exactly who is using the internet, where.

There exists a security-conscious browser called Tor that comes with minimal fingerprinting attack vectors. In it, the ability to resize the window is opt-in #footnote[I've simplified this feature for the point of analogy. What Tor does w.r.t window size is more nuanced than this.], for people who want to sign up for less security, be more trackable even while using this app that was designed for security. 

*Tldr, reiterating the takeaway: in applications that provide security, the standard is to make security risks opt-in.* #footnote[I've essentially made an argument by example. Hopefully you can connect the dots and see why opt-out security risks are bad for security-conscious applications in general, instead of being an outlier cherry picked example, but I can explain my thoughts on this if requested.]

= The point

Now, we want to balance the tradeoff of "safe" and "heard" for this (discord) community. #footnote[Balancing "safe" and "heard" is important in our community at large, but the current discussion is about how to improve it within the context of this server.] I claim that my concept of security is a synonym for your concept of safety in this context. *So here's the main thesis: I think one thing that could help balance "safe" and "heard" here (and in other similar online communities) is to somehow make "hearing" (the risks to "safety") opt-in.*

To work toward how to do this, I'll first reiterate how safety and freedom butt heads. Then, I'll examine the thesis by seeing how by making risk to safety opt-in, some of this butting can be alleviated, at minimal cost to either side.

= Lit Review! What is safety vs freedom?

So what was our issue again?

#quote(block: true, attribution: [mathrocks784 at #link("https://discord.com/channels/453284856227430415/1404791453611327488/1404832909361283194")[message]])[... it seems as if there might be a little tradeoff here... in order to keep members safe, some opinions that people want to speak out should be restricted, but in order to make sure members are heard, sometimes hard truths or potentially offensive statements might have to be spilled...]

So, there are two paradigms. For the sake of argument, let's assume discussions happen in good faith and people aren't doing excessive insults or whatever and leave this other side to the ideas of moderation and expectation setting in PRISM. The paradigms are #footnote[where what discussion, people, controversial, and desirable are changes per discussion.] 

1. discussion with people who are saying controversial things is undesirable

2. discussion about controversial things is desirable

= So what about this opt-in nonsense?

For some arbitrary discussion, Paradigm 1 has people that don't want to interact with people following Paradigm 2. However, Paradigm 2 wants to discuss anyway.

To rephrase, Paradigm 2 wants to be heard. Paradigm 1 wants to be safe from hearing. What if we just make hearing, the risk to safety, opt-in? What are some methods of doing so? What are some effects of using these methods?

== Channel-level expectations

This is already in place! People generally don't ever get heated in, say, `#music`, because we have channels that implicitly or explicitly invite more or less heat. Channels like `#vent`, `#political`, and so on are understood by people to be the places to be heated, and people will actively say "Oh hey, this sounds like a cool discussion, how about we move to `#political` instead of `#positivity-wholesomeness`?" A cool side effect of this has been that a user can pretty damn effectively opt-in to safety by shrimply manually muting every channel that invites heat.

But wait a minute. Isn't our thesis that we want to opt _out_ of safety/_in_ to _risk_ of safety?

// #let Slack(body: none) = {
//   text[Slack #box(move(dx: -2pt, dy: 2pt, image("Slack_icon_2019.svg", height: 1em)))]
//   if body == none {
//     [hi]
//   } else {
//     [not hi]
//   }
  
//   h(-4pt)
// }

#let Slack(body) = {
  // examples in use:
  // #Slack[] is used for word spacing
  // #Slack[ing] off! 
  text[
    Slack 
    #box(place(
      dx: -2pt, 
      dy: -12pt, 
      image("Slack_icon_2019.svg", height: 1em)
    )) 
    #if body == [] { h(10pt) } else { h(9pt) } 
    #body 
  ]
}

== Proposal 1: #Slack[ification]  a.k.a. community server features

First application of the thesis: Discord lets community servers (like ours) set up what channels are visible when members join. Members can then toggle channel visibility themselves (@browse-channel). So, we can make risk of safety opt-in by hiding many channels, enough to provide safety #footnote[There should be a separate discussion about the role of PRISM in general. Is it a space for announcements? A space for interaction? Both? There are people who join PRISM for any these three possibilities. People who join just for announcements or for minimal interaction get the short end of the stick because they want to be "safe" from interaction, but must opt-in to safety by muting channels they do not want to read.]. 

What is safety here? Its degree needs to be defined somehow. I am of the opinion that visibility should be set to err on the side of very safe---un-hiding channels is easy, and people who want to opt-in are often glad to do so. Hiding channels (e.g. though manual muting, or the browse channel feature which less people even know exist) can be read as obnoxious because you're going against this principle of opting in to safety. As an example proposal, only these channels would be unhidden on member join #footnote[after server verification, which should be implemented with roles anyways, and would not conflict with this browse channel community server feature.]:

- administrative/announcement channels
- actually that might be it. I was going to suggest server suggestion style channels, but that's plenty of "risk" going on even right now.

Apparently this style of channel administration is seen often on Slack.

== Proposal 2: Threading

I agree that threads are good. I think forums (in general, not saying an opinion on discord forums) are cool. TODO: write the rest! :D

#pagebreak()
= Closing remarks

Huh, weird. Thought I'd have more proposals. I forgor.

Important note: I MAY BE WRONG OR HAVE NOT CONSIDERED THINGS!!! SO TALK TO ME ABOUT IT!!! DISCUSSIONS! :D

If you are viewing this article online #link("https://github.com/saffronner/prism-papers/blob/main/safe_v_heard/main.pdf")[here], you are seeing a living article that is kept updated as I edit. The version history is available as well #link("https://github.com/saffronner/prism-papers/commits/main/safe_v_heard")[here].

#pagebreak(weak: true)
= Appendix

#figure(
  image("browse_channels.png"),
  caption: [A screenshot of the "browse channel" feature]
) <browse-channel>

Yap meter (word count): #total-words

