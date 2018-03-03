Gloryhole by Objects begins here.

gloryhole is a thing. a gloryhole is not portable. The printed name of gloryhole is "[TQlink of item described]gloryhole and painting[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of gloryhole is "gl". The description of gloryhole is "A hole in the wall at crotch height. Above it, a painting of the torso of a naked, muscly man with a large penis hangs at face height.". Understand "painting", "and painting", "glory", "hole" as gloryhole.

Definition: A gloryhole (called T) is live:
	decide yes.

gloryhole has a number called charge. gloryhole has a number called turns trapped.

A gloryhole can be normal glory hole, painting oral, blowjob portal (this is the gloryhole-type property).

Definition: A gloryhole (called I) is immune to change:
	decide yes.

This is the gloryhole chooses random hallway rule:
	let R be a random number between 1 and 2;
	if diaper quest is 1:
		destroy gloryhole;
	otherwise if R is 1:
		now gloryhole is in a random unpinned untrappable labyrinth room;
	otherwise:
		now gloryhole is in a random unpinned untrappable modern room.
The gloryhole chooses random hallway rule is listed in the setup starting items rules.

Check climbing gloryhole:
	try entering the gloryhole instead.

Check entering gloryhole:
	if the player is not a bit horny and the player is upright and the semen taste addiction of the player < 12, say "You're not aroused enough." instead;
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	if the player is male and the size of penis is 0:
	[Let's also make the milking the default action if they have milky breasts and no dick]
		if the milk volume of breasts > 0 and bottom level lactation cover is nothing:
			now gloryhole is grabbing the player;
			say "You feel a tongue probe at your sexless mound, and suddenly freeze... [line break][variable custom style]'What the fuck?  You're some kind of doll, aren't you!'[roman type][line break]You hear a woman sniffing. [line break][variable custom style]'Hah!  This'll teach you to poke your nose where you shouldn't!'[roman type][line break]You hear a lever pulled, nearby, and suddenly two holes open up, just at your breast height!";
			[if bottom level lactation cover is nothing and random worn nipple covering clothing is nothing:]
			say "Two suction cups leap out of the bottom of the portrait and latch onto your nipples!";
			[otherwise:
				say "Two springy rods shoot up from the ground, slamming up into your [BreastDesc] from below and pushing aside everything covering them, an instant before two suction cups leap out of the bottom of the portrait and latch onto your nipples!  The rods slam back down into the ground, leaving the suction devices impossibly-tightly latched to your instantly erect and throbbing nipples!";]
  			trigger lactation;
  			dislodge gloryhole instead;
		otherwise: [This is what it used to always do in this case:]
			say "You would, but you no longer have a penis." instead;
	if the player is upright:
		if the player is pee protected, say "You would need to remove your [random worn pee covering clothing] first." instead;
	otherwise:
		if face is actually occupied, say "Your mouth is currently occupied." instead;
	now seconds is 6;
	now the turns trapped of gloryhole is 0;
	if the player is upright and (a random number between 12 and 20 <= the semen taste addiction of the player or the player is not a bit horny):
		say "[bold type]In a moment of weakness, you drop to your knees,[roman type] deciding you'd rather taste [manly-penis] and get some [semen] to swallow right now rather than get your own rocks off.";
		now the stance of the player is 1;
	if the player is upright, say "[if the player is male]You stick your [ShortDesc of penis] into the hole[otherwise]You press your [vagina] against the hole[end if]. ";
	otherwise say "You expectantly put your mouth up to the hole. ";
	if the charge of gloryhole > 0, say "Nothing happens. Maybe you should try again later?" instead;
	now gloryhole is grabbing the player;
	if the player is upright:
		let R be a random number between 0 and 5;
		if there is a worn chastity cage:
			compute gloryhole genital modification;
		otherwise if R <= 3:
			if the milk volume of breasts > 0 and ( a random number between 1 and 3 is 1 ) :
				if bottom level lactation cover is nothing and random worn nipple covering clothing is nothing:
					say "Two suction cups leap out of the bottom of the portrait and latch onto your nipples!";
				otherwise:
					repeat with B running through not not-top-displacable nipple covering clothing:
						now B is top-displaced;
					say "Two suction cups leap out of the bottom of the portrait and latch onto your nipples!";
					[say "Two springy rods shoot up from the ground, slamming up into your [BreastDesc] from below and pushing aside everything covering them, an instant before two suction cups leap out of the bottom of the portrait to latch onto your nipples!  The rods slam back down into the ground, leaving behind the suction devices, now impossibly-tightly latched to your instantly erect and throbbing nipples!";]
  				trigger lactation;
  				dislodge gloryhole instead;
			otherwise if the player is male:
				compute gloryhole blowjob receipt;
			otherwise:
				compute gloryhole cunnilingus receipt;
		otherwise if R is 4 and face is not actually occupied:
			compute gloryhole painting blowjob;
		otherwise if R is 5:
			compute gloryhole genital modification;
	otherwise:
		if face is not actually occupied:
			say "Within moments, a large [if the oral sex addiction of the player > 5]juicy [end if][manly-penis] is pushed through the hole and into your mouth. It is easily long enough to hit the back of your throat, [if the player is not gag-prone]almost [end if]causing you to gag[if the oral sex addiction of the player > 7] slightly[end if].";
			now gloryhole is penetrating face;
		otherwise:
			say "Nothing happens. Maybe if you didn't have something in your mouth already...?";
			dislodge gloryhole;
	if the player is upright, now the charge of gloryhole is 150 instead;
	otherwise do nothing instead.

To say GloryHoleSuction:
	if the player is upright, say "Suddenly, a powerful and invisible suction force presses your body powerfully against the wall!  Your face is forced against the groin of the man in the painting[if the largeness of breasts > 2] and your [ShortDesc of breasts] are lewdly squooshed up against the wall[end if]!   You are completely unable to move!  ".
	[Selkie: This would seem like a good place to *also* milk the breasts - perhaps if they're uncovered and milky?]

To compute gloryhole blowjob receipt:
	now busy is 1;
	say GloryHoleSuction;
	if a random number between 1 and 3 is 1 and the size of penis > 1 and face is not actually occupied:
		now gloryhole is blowjob portal;
		say "You gasp in shock as a black hole appears in the portrait next to your face, and [one of]a strangely familiar [ShortDesc of penis] is forced into your mouth!  As the [player-penis] pushes past your lips, you feel a pair of lips move around your own. Then, as your tongue touches the base of the [player-penis], you feel a tongue touch the base of your own. [line break][variable custom style]Wait a minute... I'm sucking my own [player-penis]!  How [if the bimbo of the player < 9]awful[otherwise if the bimbo of the player < 13]weird[otherwise]cool[end if]![roman type][line break][or]your [player-penis] once again enters your own mouth. [stopping]You [if the bimbo of the player < 10]can't help but [end if]moan as your own mouth starts to stimulate you, and [one of][if the sex addiction of the player < 8]since the magic of the gloryhole clearly isn't going to let you go until you've finished[otherwise]unable to resist the pleasure[end if],[or]once again[stopping] you [if the oral sex addiction of the player < 4]reluctantly [end if]get to work.";
		say "[variable custom style]How weird is this!  [roman type][if the oral sex addiction of the player < 4]But although you start off reluctantly sucking your own [player-penis], you're soon telling yourself that it's not so much you're sucking a [manly-penis], as you've just found a new way to wank, right?  [line break][variable custom style]I mean, how different is this to those guys who are so flexible they can bend over and suck their own [manly-penis]s? It's not like this is training me to enjoy sucking [manly-penis]s, ha ha![roman type][line break][otherwise]It doesn't take long, though, before you're really getting into this! It's like having the perfect blowjob partner: you can imagine your [player-penis] is being swallowed whole by some hot bitch who can magically read your mind to know exactly what you'd like done at any instant. [line break][variable custom style]Mmm, like that![roman type][line break]You wrap your tongue around the tip, rasping it up against the sensitive underside, and feel your balls throb in reaction. [line break][variable custom style]Yeah, bitch, just like that![roman type][line break]You hum, making your [player-penis] vibrate deliciously. You suck harder, and feel more blood rush into the fleshy rod jabbing into your mouth, stiffening it even further. [line break][variable custom style]Wow, sucking dicks is fun![roman type][line break]You start to really get into the sensation of the silken-smooth, stiff staff thrusting into your mouth.[end if]";
		if the size of penis < 4:
			say "Your [player-penis] slips and slides comfortably around inside your mouth. It's like a little swizzle-stick, a small candy that you can push and prod and poke around to your heart's content. It's so small it's easy to manoeuvre, even stiff as it is and at its full but minuscule erection!  You certainly don't have to worry about gagging on [italic type]this[roman type] cute little thing!  But then it occurs to you that this is [italic type]your[roman type] dick, and you feel yourself blush in shame.";
			humiliate 500;
		otherwise if the size of the penis < 8:
			say "The [player-penis] pushes against the back of your throat, and you suddenly feel the urge to see if you can deep throat it!  Eagerly, you angle your head so it slides deep into your gullet. For a moment you start to gag, but since you're in total control of every movement, it's not too scary or threatening, and you find you're able to relax your throat without much effort. And then you really start to get into it. [line break][variable custom style]Yeah, go bitch, swallow that sword![roman type][line break]";
		otherwise:
			say "You thought it was kind of cool, having a [ShortDesc of penis], but being on the receiving end as it shoves its way into your mouth, so fat and long and broad that you have to strain to fit it in, is even better!  And then some stupid, evil part of you wonders about deep-throating, and you feel your hips instinctively slam forward to impale the bitch-mouth that's timidly swallowing your sword. The doubled-up sensation - the prick in your mouth, and the mouth wrapped tightly around your prick - confuses you, but the pleasure that's coming from your [player-penis] somehow overrules the panic you feel at having your mouth so stuffed, and you feel simultaneously exultant at forcing your way into this timid opening, and horrified at the massive invading rod abusing you!";
			[Selkie. ^ etc. Does someone want to take over and carry on?]
	otherwise:
		now gloryhole is normal glory hole;
		say "You hear a feminine giggle come from the other side of the wall, and then feel a pair of soft lips close around your [player-penis]. You moan as the anonymous mouth gets to work, [if the size of penis > 3]sliding up and down your shaft like a professional[otherwise]nibbling gently at your member as if it was a large clitoris[end if].";
		if the largeness of breasts > 10:
			say "Your [BreastDesc] bulge out to the sides of your rib cage, and you pull back a little, just to test how firmly trapped you are. [line break][variable custom style]'Mmmm-ohhh!'  Was that me?  Yikes![roman type][line break]You feel yourself blush bright pink. [line break][variable custom style]  But that felt so strange: the way your massive boobies force you to lean back from the wall, while totally and irresistibly gluing you against the wall. But at the same time, they're so big that you still have enough movement to do a little dance with your upper body, if you wanted to. It's like you're helplessly trapped yet strangely free at the same time![roman type][line break]";
		otherwise  if the largeness of breasts > 6:
			say "Your [BreastDesc] are binding you tightly against the cold wall. If they were any smaller, they'd be making your head press against it, too, but luckily they're a good enough size to leave your head clear. You experimentally wriggle your shoulders, testing the strength of the force holding you stuck here in position.... [line break][variable custom style]Wow! That feels weird. But nice![roman type][line break]A funny shiver runs through you at the discovery of just how firmly stuck you are - especially at how much freedom of movement you have, even so, thanks to the sheer volume of your breasts!";
		otherwise  if the largeness of breasts > 3:
			say "Your [BreastDesc] are sucked tight against the wall, forcing your head into close proximity to the cold surface.";
		otherwise  if the largeness of breasts > 1:
			say "Your [BreastDesc] are still jammed hard up against the cold stone wall, which because of their small size, presses the wall against your head, bending your neck back at an uncomfortable angle.";
	arouse 500.

To compute gloryhole cunnilingus receipt:
	now busy is 1;
	now gloryhole is normal glory hole;
	say GloryHoleSuction;
	say "Suddenly you feel something warm and soft snaking between your folds. It's a tongue!  You moan as the anonymous mouth gets to work, licking up and down and inside your [vagina].";
	arouse 500.

To compute gloryhole painting blowjob:
	now busy is 1;
	now gloryhole is painting oral;
	say GloryHoleSuction;
	say "You watch in [horror (the oral sex addiction of the player * 2)] as the large [manly-penis] in the painting in front of you slowly comes to life, sealing your [LipDesc] around it as it [if the oral sex addiction of the player < 12]forces[otherwise]pushes[end if] them apart. The penis thrusts in and out of your mouth, the bottom half phasing in and out of the painting like some bizarre hologram.";
	now gloryhole is penetrating face.

To compute gloryhole genital modification:
	let C be a random off-stage chastity cage;
	let P be a random off-stage clitoris piercing;
	if there is a worn tattoo and the number of worn crotch tattoos is 0:
		let T be a random slut tattoo;
		summon T;
		say "You feel a sharp pain near your crotch and pull your body back. You now have a 'SLUT' tattoo!  [line break][variable custom style][if the bimbo of the player < 13]Fuck![otherwise]Heh. It's making me feel even more [one of]girly[or]giddy[at random]![end if][roman type][line break]";
	otherwise if P is actually summonable and the player is female:
		summon P cursed;
		say "You feel a sharp hot pain in your clit!  You scream and try to pull away from the wall as hard as you can. The suction stops and you are able to step away and see your new [P]!";
	otherwise if C is chastity cage:
		summon C cursed;
		say "[if the player is male]Before you can react, someone on the other end of the hole has forced something hard and plastic around your [ShortDesc of penis]!  The suction stops and you pull back to find that you are now wearing a [C]![otherwise][GloryHoleSuction]While you are stuck, you can feel somebody reach through the hole and start pushing sections of metal against your hips. Within moments, a full female chastity belt has been locked on to your body. The suction stops and you are able to step backwards and properly inspect your new attire[end if]!  [line break][variable custom style][if the anal sex addiction of the player < 3]What the fuck?![otherwise if the anal sex addiction of the player < 5]Nooooo![otherwise if the anal sex addiction of the player < 7]I don't deserve this, do I?![otherwise if diaper lover is 1]Uh-oh, it looks like I'm going to have to get my cummies with my [asshole] now![otherwise]Looks like I'm going to have to get my orgasms with my [asshole] now! Sounds like fun![end if][roman type][line break]";
	otherwise:
		if the player is male:
			say "Somebody slaps your [ShortDesc of penis] painfully!";
			DelicateUp 1;
			PenisDown 1;
			say "You pull it back out, but the experience has made you more submissive. You now have a [ShortDesc of Penis]";
		otherwise:
			say "Somebody flicks your clitoris painfully!  You pull it back out, but the [if the sex addiction of the player < 10]shocking [end if]experience has made you more submissive.";
			DelicateUp 2;
	dislodge gloryhole.
			

To say SexResistFlav of (G - gloryhole):
	if the player is prone:
		if a random number between 1 and (the semen taste addiction of the player * the semen taste addiction of the player * the semen taste addiction of the player) > 700:
			say "You can't bring yourself to stop right now!  [SexSubmissionFlav of G]";
		otherwise:
			say "You shuffle backwards, removing the [manly-penis] from you mouth and giving the anonymous man blue balls. [line break][first custom style]'[one of]Fucking bitch!  Come back here!'[or]What the fuck?  You've got to be shitting me!'[or]Hey [bitch], I wasn't finished!'[or]You fucking [slut]!  Finish sucking my cock you little [bitch]!'[in random order][roman type][line break]He doesn't seem happy, but after a few seconds the [manly-penis] is removed from the hole.";
			dislodge G;
	otherwise if G is normal glory hole:
		say "You try to pull away but the magical suction is holding you tightly against the wall[if the player is not a pervert][one of]!  You can't even pull your eyes away from the large painting of the cock in front of your face[or][or][or][or][or][cycling][end if]!";
	otherwise if G is painting oral:
		say "You refuse to suck on the [if the oral sex addiction of the player < 4]unwelcome [end if][manly-penis] in your mouth!";
	otherwise if G is blowjob portal:
		if player-urinating is 1:
			if the urine taste addiction of the player > 11:
				say "You can't resist the amazing taste of your own [urine]!  [SexSubmissionFlav of G]";
			otherwise:
				say "You struggle [if the urine taste addiction of the player < 4][one of]urgently[or]fervently[or]desperately[in random order] [end if]to pull out of your own mouth but you can't move an inch!  You are forced to swallow gulp after gulp of your own [urine].";
		otherwise if the oral sex addiction of the player < 4:
			say "You try to stimulate yourself as gently and modestly as possible, but it still feels really good[one of]!  You clench your eyes shut and try to think of other things than your own taste.[or]![stopping]";
		otherwise:
			say "You can't resist the amazing feelings of your own mouth!  [SexSubmissionFlav of G]".
		

To say SexSubmissionFlav of (G - a gloryhole):
	if the player is prone:
		say "[if the oral sex addiction of the player < 5]You stay still and let the anonymous [manly-penis] fuck your mouth.[otherwise][one of]You fellate the anonymous [manly-penis] with your mouth.[or]You suck diligently on the [manly-penis] poking through the hole in the wall.[or]You find yourself moaning gently as you pleasure the anonymous stranger's [manly-penis].[or]You smile inwardly at the pleasant taste of the stranger's [manly-penis].[or]You push the large [manly-penis] to the back of your mouth tickling the entrance to your throat. The man on the other side of the wall groans with pleasure.[or]You fuck the anonymous [manly-penis] with your face as fast and hard as you can, making a [line break][variable custom style]'Hyuk hyuk hyuk'[roman type][line break]sound as you do.[in random order][end if]";
	otherwise if G is normal glory hole:
		if player-urinating is 1:
			say "You stand there patiently and allow your flow of [urine] to continue.";
		otherwise:
			if the player is upright, say "You stand still and continue to enjoy the oral service[if the oral sex addiction of the player < 5][one of], although it does feel a bit weird having to stare at a painting of a large veiny cock[or][or][or][or][or][cycling][otherwise][one of], the painting of the large veiny cock in front of your face just turning you on even more[or][or][or][or][or][cycling][end if].";
			if the semen volume of vagina > 0:
				say "The skilful tongue [one of]laps up some [semen] that is slowly seeping[or]felches some more [semen][stopping] from your [vagina].";
				decrease the semen volume of vagina by 1;
				if the semen volume of vagina is 0, say "Your [vagina] now feels pretty much empty of [semen].";
	otherwise if G is painting oral:
		say "You [if the oral sex addiction of the player < 4]reluctantly [otherwise if the oral sex addiction of the player < 6]hesitantly [end if][one of]slurp on the [manly-penis] in your mouth[or]massage the [manly-penis] in your mouth with your tongue[or]hum a tune with the [manly-penis] in your mouth, increasing the stimulation[at random].";
		increase the turns trapped of G by 1;
	otherwise if G is blowjob portal:
		if player-urinating is 1:
			if the urine taste addiction of the player > 11:
				say "You happily swallow gulp after gulp of your own [urine].";
			otherwise:
				say "You [one of]don't put up a fight, and[or]continue to[stopping] reluctantly swallow gulp after gulp of your own [urine].";
		otherwise:
			say "You [if the oral sex addiction of the player < 8]reluctantly [otherwise if the oral sex addiction of the player < 11]hesitantly [end if][one of]slurp on the [manly-penis] in your mouth[or]encircle your [player-penis] with your tongue[or]frantically fuck your own [player-penis] with your mouth[at random].";
			increase the turns trapped of G by 1.
	

To GloryHoleSwallow:
	say "You [if the semen taste addiction of the player < 7]shiver with shame as you swallow the stranger's [semen][otherwise if the semen taste addiction of the player < 11]swallow quickly, trying not to think about what you're doing too much[otherwise]swallow the tasty [semen] loudly, trying to make sure the stranger on the other side of the wall can hear what you're doing[end if].";
	StomachSemenUp 3;
	humiliate 200.

A time based rule (this is the compute gloryhole rule):
	let tinyDickGrabbed be 0;
	if gloryhole is grabbing the player:
		if player-urinating is 0, increase the turns trapped of gloryhole by 1;
		if the player is upright:
			if gloryhole is normal glory hole:
				if the player is male:
					if player-urinating is 1:
						say "[one of]The anonymous mouth obediently gulps down your [urine] as you try to slow down the flow enough for her have time to swallow it all[or]The girl on the other side continues to hoover the [urine] out of your [player-penis] and drink every single drop[stopping].";
					otherwise if (the player is extremely horny and the turns trapped of gloryhole > 1) or (the player is very horny and the turns trapped of gloryhole > 3) or the turns trapped of gloryhole > 5 or the size of penis < 3:
						[Some mods for small penis sizes:]
						if the size of the penis is 0:
							say "You feel a tongue probe at your sexless mound, and it suddenly freezes... [line break][variable custom style]'Stupid fucking sex dolls,'[roman type][line break]you hear a woman mutter. [line break][variable custom style]'Well, maybe this'll teach it to poke its nose where it shouldn't!'[roman type][line break]";
							[Selkie: I don't know a suitable punishment - ideas?
							Aika observes, though: it should never happen anyway; unless the player gets breast-milked the game will refuse to let a penis-less male character use the gloryhole whilst standing.] 
							say "You feel something weird happen at your groin - but you're not sure what!"; [They strap on a fake baby-dick you can't remove?  Tattoo?  Draw a pussy?]
						otherwise if the size of the penis is 1:
							now tinyDickGrabbed is 1;
							say "For several seconds, nothing happens. Then you feel a tongue flick past the end of your [player-penis]. It freezes, then slowly slides down, tracing a line directly below it, probing at the place where your ball-sac [italic type]used[roman type] to be. You hear a woman giggle. [line break][variable custom style]'You poor sod, I really thought some bitch had shoved her vag up here for a lapping, but you're actually a guy, aren't you?  Normally I'd have no chance of reaching your tiny nubbin, but the Nintendolls R&D department planned for this unlikely event. Hang on...'[roman type][line break]You feel her tongue withdraw, then something oily and circular presses forwards against your mostly-smooth mound, and suddenly a powerful humming starts and the suction increases ten-fold!  You feel your tiny clitoris swell and bulge, almost painfully. It reminds you of what your erections [italic type]used[roman type] to feel like. At least, until the girl snorts in disbelief. [line break][variable custom style]'Wow, that's much bigger now - it must be the size of a cigarette butt!  Looks pretty red though, babe - I hope your tender little raspberry isn't going to burst!'[roman type][line break]";
							humiliate 400;
						otherwise:
							say "You feel the girl keep her mouth wrapped around your [player-penis] to catch your [if the size of penis > 4]entire [otherwise if the size of the penis < 3]tiny[end if]load, and then swallow it all in one [if the size of penis > 7]large gulp[otherwise if the size of the penis < 3]small sip[otherwise]swallow[end if]. The lips remove themselves from your member and then the magical force keeping you pressed to the wall disappears, allowing you to leave. You slowly pull your [player-penis] out of the hole. You feel more dominant!";
							SexAddictDown 1;
						say "You shudder as the sensations [if the size of penis < 3]immediately [end if]bring you to a powerful climax.";
						if tinyDickGrabbed is 1:
							say "But even though it felt [italic type]wonderful[roman type], you stare in shock at the tiny amount you squirted out. [line break][variable custom style]I doubt any chick would even FEEL that, if I squirted in her[roman type][line break]Then realise, there's no way you could work your little clit inside [italic type]anyone[roman type]!  But the device is still sucking, as if it doesn't realise you're already finished, and you stare in a kind of sick fascination at your groin as your nubbin swells and shrinks with each suck. [line break][variable custom style]It won't really burst, will it?[roman type][line break]Your [player-penis] bulges, flushing a darkening, angry red - but because of the suction, and its tiny length, it's now as wide as it is long!  It really [italic type]does[roman type] look like a raspberry. [line break][variable custom style]Or maybe, a strawberry, if I'm being generous?[roman type][line break]It deepens in colour to a dark purple, and it's really starting to hurt... but finally, the suction ends, and the device hisses as air rushes in, and pops free.[line break]";
						now player-fucking is 1;
						orgasm;
						now player-fucking is 0;
						now gloryhole is not grabbing the player;
						now busy is 0;
					otherwise:
						say "[one of]The anonymous girl's tongue gently swirls around your tip, causing you to moan with pleasure.[or][if the size of penis > 3]The anonymous slut forces your [player-penis] deep into her throat, and you hear gagging sounds coming through the wall. You squeal with delight.[otherwise]The girl tries to deepthroat your length, but your [player-penis] can't even reach the back of her throat. You make an embarrassed sound and she giggles.[end if][or]The girl lightly scrapes your [player-penis] with her teeth, causing you to shiver, but in a good way.[or]The girl silently sucks away, taking you to a world of bliss.[in random order]";
						arouse 750;
				otherwise:
					if (the player is extremely horny and the turns trapped of gloryhole > 1) or (the player is very horny and the turns trapped of gloryhole > 3) or the turns trapped of gloryhole > 5:
						say "You shudder as the sensations bring you to a powerful climax.";
						orgasm;
						say "After lapping up your girlcum, the anonymous tongue removes itself from underneath you and then the magical force keeping you pressed to the wall disappears, allowing you to leave. You feel more dominant!";
						SexAddictDown 1;
						now gloryhole is not grabbing the player;
						now busy is 0;
					otherwise:
						say "[one of]The anonymous tongue gently swirls around your clit, causing you to moan with pleasure.[or]The anonymous slut forces their tongue as deep as it can go into your [vagina]. You squeal with delight.[or]The tongue carefully explores all the way around your external folds.[or]The tongue silently licks away at your entrance, taking you to a world of bliss.[in random order]";
						arouse 750;
			otherwise if gloryhole is painting oral:
				if the turns trapped of gloryhole > a random number between 5 and 8:
					say "The [manly-penis] in your mouth spasms as [if the reaction of the player > 0]you bring it to climax[otherwise]it reaches its climax[end if], and it shoots several ropes of salty [semen] into your mouth. [if the semen taste addiction of the player > 10]You quickly[otherwise]The [manly-penis] doesn't move from its position filling your mouth and you are forced to[end if] swallow it all.";
					StomachSemenUp 4;
					say "Finally, the [manly-penis] slowly pulls itself out of your mouth and recedes back into the painting. The magical force keeping you pressed to the wall disappears, allowing you to leave[if the size of penis > 0]. You slowly pull your [player-penis] out of the hole[end if].";
					now gloryhole is not grabbing the player;
					now gloryhole is not penetrating face;
					now busy is 0;
				otherwise:
					say "The [manly-penis] in the painting keeps thrusting in and out of your mouth and throat[one of], causing you to make lewd gagging sounds[or][or][or][cycling]!";
			otherwise if gloryhole is blowjob portal:
				if the turns trapped of gloryhole > a random number between 5 and 8 and player-urinating is 0:
					now player-fucking is 1;
					orgasm;
					now player-fucking is 0;
					say "Your hips shake as you cum, your [ShortDesc of penis] filling your own mouth with [if the size of penis > 7]a flood of [otherwise if the size of penis > 4]several ropes of [otherwise]a single rope of [end if][semen]. [if the semen taste addiction of the player > 10]You quickly[otherwise]You whimper in shame as you are forced to[end if] swallow it all.";
					StomachSemenUp the size of penis;
					if delayed fainting is 0, say "Finally, the magical force keeping you pressed to the wall disappears, allowing you to pull your [player-penis] out of the hole, and therefore out of your mouth.";
					now gloryhole is not grabbing the player;
					now gloryhole is not penetrating face;
					now busy is 0;
		otherwise if gloryhole is penetrating face:
			if the turns trapped of gloryhole > a random number between 2 and 4:
				say "The [manly-penis] explodes in your mouth. Wow, there's a lot[if the semen taste addiction of the player < 12 and the thirst of the player <= 4]!  Do you swallow? [yesnolink] [otherwise]![end if]";
				if the semen taste addiction of the player >= 12 or the thirst of the player > 4:
					GloryHoleSwallow;
				otherwise if the player consents:
					GloryHoleSwallow;
				otherwise:
					let vessel-capture be 0;
					repeat with V running through held open topped vessels:
						if vessel-capture is 0:
							say "Collect the [semen] into the [V][if the doses of V > 0] (You'll lose its current contents of [PotionType of V])[end if]? [yesnolink] ";
							if the player consents:
								if the doses of V > 0:
									say "You tip the contents of the [printed name of V] onto the floor.";
									dump V;
								say "You spit the [if the semen taste addiction of the player < 6]disgusting [otherwise if the semen taste addiction of the player < 10]slimy [end if][semen] into the [V].";
								now the fill-colour of V is creamy;
								now the doses of V is the max-doses of V;
								now V is monster-origin;
								now vessel-capture is 1;
					if vessel-capture is 0:
						say "You spit the [if the semen taste addiction of the player < 6]disgusting [otherwise if the semen taste addiction of the player < 10]slimy [end if][semen] onto the floor beneath the hole.";
						SemenPuddleUp 3;
				say "The rapidly deflating [manly-penis] is withdrawn from the hole.";
				dislodge gloryhole;
			otherwise:
				say "The [manly-penis] in the gloryhole continues to [one of]fuck your mouth![or]gently thrust.[or]move slowly in and out[or]fuck your face![at random]";
		if the turns trapped of gloryhole > 12:
			say "Gloryhole is broken and should have let you go by now!  Please report the bug to Aika.";
			dislodge gloryhole;
			now busy is 0.

Check drinking gloryhole:
	try entering the noun instead.


Gloryhole ends here.

