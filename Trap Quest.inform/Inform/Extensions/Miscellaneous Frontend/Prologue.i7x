Prologue by Miscellaneous Frontend begins here.

Figure of Trap Quest Logo is the file "TrapQuestLogo1.png".
Figure of Diaper Quest Logo is the file "TrapQuestLogo2.png".

[!<SayTrapQuest>+

REQUIRES COMMENTING

+!]
To say Trap Quest:
	say "[if diaper quest is 1]Die Per[otherwise]Trap[end if] Quest".

[!<Prologue>+

REQUIRES COMMENTING

+!]
To Prologue:
	if images visible is 1:
		clear the screen;
		if diaper quest is 1, display the figure of Diaper Quest Logo;
		otherwise display the figure of Trap Quest Logo;
		wait 3000 ms before continuing;
		clear the screen;
	say "[second custom style]'Nintendolls are passionately dedicated to pushing the boundaries of technology in video games.  As you know we've been developing virtual reality for some time.  We think we're finally ready for mass production, and we have made just one game so far - for proof of concept and to demonstrate the power of the machine.  That game, of course, is [Trap Quest].'";
	say "[line break][roman type]'[Trap Quest]', the first ever fully virtual video game.  And you're the person from the public that gets to play it first.  You still can't get over it!  Just two weeks ago you found the golden ticket in your cereal pack, and now here you are being led down a series of corridors in Nintendolls['] massive R&D building by two [if diaper quest is 1]very friendly[otherwise if the player is male]very attractive ladies[otherwise]undignified harlots[end if] each wearing an outrageously skimpy latex uniform / micro bikini that leaves [if diaper quest is 0]very [end if]little to the imagination.";
	if image cutscenes is 1:
		if the player is male, display figure of cutscene prologue male;
		otherwise display figure of cutscene prologue female;
	if diaper quest is 1:
		say "[line break][first custom style]'The name of the game is a bit weird.  I'm guessing it's a rogue-like?'[roman type]  You ask politely, trying to ignore their unusual outfits.";
		say "[second custom style]'What do you mean?  And yes, good guess, it is a rogue-like!'[line break][roman type]The girls don't seem very smart, so you drop the line of questioning.  You [if the player is male]lose yourself in a daydream where these two nurses take care of you in a rather... intimate manner[otherwise]frown, distracted by your mild annoyance at these women using their bodies to get ahead in the world.  It's not your idea of feminism at all.  You politely nod and say 'yep' every now and then but in your mind you're lecturing them on how their actions are causing problems for hundreds of other women[end if].  You get handed a lengthy contract on a clipboard and quickly sign your signature on the last page.  Health and safety bullshit probably - you definitely can't be bothered to read that right now.";
	otherwise if the player is female:
		say "[line break][first custom style]Ugh, lowering yourselves to appeal to such a typical male fantasy, how disgraceful.  Thanks for your contribution to feminism, bitches.[roman type]";
		say "[line break][roman type]You lose yourself in a daydream of debating these girls on the expectations of women in a world dominated by men, and on how women using their bodies to get ahead in the world is not helping the problem.  You politely nod and say 'yep' every now and then but in your mind you're lecturing them on how their actions are causing problems for hundreds of other women.  You get handed a lengthy contract on a clipboard and quickly sign your signature on the last page.  Health and safety bullshit probably - you definitely can't be bothered to read that right now.";
	otherwise:
		say "[line break]As you walk they're asking you questions, but you're a bit hypnotised by their beauty and they both have the most [bold type]amazing[roman type] tits and ass you've seen on any girl, and they're flirting with you!  They started by asking how much you liked their outfits, which you obviously love, and now they're asking you if you're into anal... of course you fucking are!  You are just trying to work out if you're being offered a threesome or if you're supposed to choose which one to ask out.";
		say "[line break][first custom style]Which one would I choose?  What should I say?  Will they still be here when I finish Trap Quest?";
		say "[line break][roman type]You lose yourself in a daydream while one of the girls is saying something about the game.  You politely nod and say 'yep' every now and then but your mind is elsewhere.  You get handed a lengthy contract on a clipboard and quickly scrawl your signature on the last page.  Health and safety bullshit probably - you definitely can't be bothered to read that right now.";
	[say "[line break][bold type]Press enter to continue.[roman type][line break]";
	unless text delay is 999, wait 30000 * text delay ms before continuing;]
	say "[line break]You arrive at a large metal door with a strange black section of wall right next to it.  One of the ladies escorting you goes up to the black section and turns so that her side is facing it.  A horizontal red line of laser appears from within the black glass, it slowly moves down, scanning the entire profile image of the showgirl.  When it reaches the bottom, the laser turns green with a little 'ding!'.  The metal door opens.  [if the player is male]Wow, even their security is impressive[otherwise]This company is clearly way too rich for its own good[end if]!";
	say "[line break]You are escorted towards the only significant thing in the room, a metal chamber with an open hatch at the top.  A large green button on the side says 'ABORT'.  Well at least you know there's a safety feature!  [if the player is male]Grinning to nobody in particular[otherwise]Harrumphing to make sure that they know you are a strong woman who is usually quite independent[end if], you let the girls help you into the chamber, which has comfortable mattress-like insides.  You get in and the ladies secure a metal device around your head, the latest of the latest computer to brain technology that the world has to offer.  Immediately after that, they close the hatch above you, so you are left in the dim light of the chamber.";
	[say "[line break][bold type]Press enter to continue.[roman type][line break]";
	unless text delay is 999, wait 30000 * text delay ms before continuing;]
	say "[line break][second custom style]'Testing testing one two three.'";
	say "[line break][roman type]The voice of one of the girls comes through a speaker somewhere inside the chamber.";
	if diaper quest is 1:
		say "[line break][second custom style]'We're so glad you have chosen to be the first member of the public to play Diaper Quest, the game for big babies!'";
		say "[line break][first custom style]Wait what?  Did they say DIAPER Quest?!";
		say "[line break][second custom style]'It's a race against the clock really, can you make it to the end of the game before you get transformed into a diaper-addicted adult baby?  If you win, you'll earn money for all the jewellery you end up wearing at the end of the game.  If you got a perfect set of gold jewellery, you could earn upwards of FOUR MILLION DOLLARS!  However, if we have to pull you out early for health and safety reasons, you get nothing.  Be careful, you're going to need some of that to pay off the costs of running this simulation we're about to put you in, which comes to about... half a million dollars. The contract you just signed says if you can't pay, you'll have to work with us in whatever capacity we require for you to pay it back within a year, and we have quite the vivid imagination.[paragraph break]";
		say "'Right, so, about the game!  Lots of things are going to try and put baby-themed clothing you, and also transform you!  The game can also affect your likes and dislikes - the more you encounter or do something gross, the more your brain will rewire itself to actually love that thing more than anything else in the world!  You might even find yourself getting turned on, and if you orgasm in weird and gross situations too much you could probably even end up with a new fetish!  The more you experience pain, the more submissive and delicate you will become, like a weak little sissy girl!  Whenever you hold in your [if diaper lover > 2]poop or [end if]pee for too long, you'll go involuntarily and become more incontinent.  But at least that one can be reversed, by using an adult toilet like a big [if the player is male]boy[otherwise]girl[end if].  All these mind altering effects will become permanent after you leave the game, so really you're risking quite a lot, aren't you?  Congratulations on being the first person brave enough to actually accept the terms of the contract, we were starting to lose hope, we've sent out hundreds of those golden tickets already, but everyone else we brought here completely refused after reading the contract!  You did read the contract properly, didn't you?  Oh well, if you didn't it's too late now!'";
	otherwise:
		say "[line break][second custom style]'We're so glad you have chosen to be the first member of the public to play Bimbo Babe Trap Quest, the game where we try to turn you into a Bimbo Babe, just like us!'";
		say "[line break][first custom style]Wait what?";
		say "[line break][second custom style]'It's a race against the clock really, can you make it to the end of the game before you get transformed into a [if the player is female or tg fetish >= 1]sex obsessed bimbo[otherwise]submissive sissy slut[end if]?  If you win, you'll earn money for all the jewellery you end up wearing at the end of the game.  If you got a perfect set of gold jewellery, you could earn upwards of FOUR MILLION DOLLARS!  However, if we have to pull you out early for health and safety reasons, you get nothing.  Be careful, you're going to need some of that to pay off the costs of running this simulation we're about to put you in, which comes to about... half a million dollars. The contract you just signed says if you can't pay, you'll have to work with us in whatever capacity we require for you to pay it back within a year, and we have quite the vivid imagination.[paragraph break]'Right, so, about the game!  Lots of things are going to try and do naughty things to you, and also transform you, both physically and mentally!  Try to avoid getting fucked too much, or you might pass out from the pain.  When you pass out, we'll get rid of the most expensive jewel you have - and not just on you, we'll find the most expensive one in the game universe so don't bother making a stash.  Any mind altering effects the game may have on you will become permanent, so really you're risking quite a lot, aren't you?  Congratulations on being the first person brave enough to actually accept the terms of the contract, we were starting to lose hope, we've sent out hundreds of those golden tickets already!  I guess that makes you ONE kind of sucker already!'";
	[say "[line break][bold type]Press enter to continue.[roman type][line break]";
	unless text delay is 999, wait 30000 * text delay ms before continuing;]
	say "[line break][if the player is male and diaper quest is 0]You completely gloss over most of what they said and focus on the one thing that caught your attention.  [first custom style]'Wait what? Is this some sort of money scam to force me into debt? You're kidding me!  I want a lawyer!'  [roman type][otherwise][first custom style]'You can't be serious?!  So you're either going to force me to degrade myself in this game, or essentially be your slave for a year?  Pull the other one, this can't be legal!'  [end if][roman type]You are completely ignored.";
	say "[line break][second custom style]'Once you get in the game, you might want to [bold type]search [second custom style]things for traps before [bold type]opening [second custom style]them!  Not that you'll always be able to notice them!  And make sure to [bold type]examine yourself [second custom style]lots to see what transformations you have undergone.  If you get really stuck, you could shout for [bold type]help[second custom style] and it'll bring up some useful information. Oh yeah, your legs will get tired and you might need to [bold type]kneel down [second custom style]sometimes, but since it's more difficult to move and it's easier for [if diaper quest is 1]your enemies to baby you[otherwise]things to have fun with you[end if], you probably don't want to spend too much time on your knees (or maybe you do, tee-hee), so remember to [bold type]stand up [second custom style] after a bit.  If you've been beaten up by the enemies in the game, you'll need to [bold type]find some furniture to rest on[second custom style] to heal your wounds.  [if diaper quest is 1]We would wish you the best of luck, but really we're looking forward to meeting our new diaper-addicted baby-slave[otherwise if the player is female]We would wish you the best of luck, but really we're looking forward to meeting our newest Slutty Sister[otherwise]We would wish you the best of luck, but really we're looking forward to watching you have lots of naughty sex[end if]![paragraph break]*giggle*'";
	say "[paragraph break][first custom style][if diaper quest is 1 or the player is female]Okay keep calm. I can do this.  I just have to avoid all the weird stuff and get to the end of the game...[otherwise]So this game is all about sex?  Well, that's right down my alley, I've always wanted to fuck some virtual hotties![end if]";
	if the player is female or diaper quest is 1, say "[line break][roman type]It becomes clear very quickly that nobody is going to let you out of the capsule until you have played through the game.  [first custom style]Might as well get this over with...[roman type][paragraph break]";
	say "[line break][bold type]Press enter to start.[roman type]";
	unless text delay is 999, wait 30000 * text delay ms before continuing;
	clear the screen.



Prologue ends here.
