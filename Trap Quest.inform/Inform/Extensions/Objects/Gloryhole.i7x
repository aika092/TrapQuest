Gloryhole by Objects begins here.

gloryhole is a thing. gloryhole is not portable. The printed name of gloryhole is "[TQlink of item described]double gloryhole[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of gloryhole is "gl". Understand "double", "glory", "hole" as gloryhole.

Figure of gloryhole is the file "Env/School/gloryhole3a.jpg".
Figure of empty gloryhole is the file "Env/School/gloryhole3b.jpg".
Figure of top gloryhole is the file "Env/School/gloryhole3c.jpg".
Figure of bottom gloryhole is the file "Env/School/gloryhole3d.jpg".
Figure of double gloryhole is the file "Env/School/gloryhole3e.jpg".

To decide which figure-name is the examine-image of (G - gloryhole):
	if G is penetrating face and the player is prone, decide on figure of bottom gloryhole;
	if G is grabbing the player:
		if G is upper oral, decide on figure of top gloryhole;
		if G is blowjob portal, decide on figure of double gloryhole;
		decide on figure of gloryhole;
	if the charge of G <= 0, decide on figure of gloryhole;
	decide on figure of empty gloryhole.

To say ExamineDesc of (C - gloryhole):
	say "A hole in the wall at crotch height, and another above it at face height. Each hole is surrounded by a circle of runic markings, which seem to pulse with magical energy[if the charge of C <= 0]. A womanly mouth with big lips sits patiently waiting at the lower hole[end if].".

Definition: gloryhole is live: decide yes.
Definition: gloryhole is throater:
	if the reaction of the player is 0 or (gloryhole is blowjob portal and the size of penis >= 8), decide yes;
	decide no.

gloryhole has a number called charge. gloryhole has a number called turns trapped. gloryhole can be glorywrapped or gloryunwrapped. gloryhole is gloryunwrapped.

A gloryhole can be normal glory hole, upper oral, blowjob portal (this is the gloryhole-type property).

Definition: gloryhole is immune to change: decide yes.

Check climbing gloryhole:
	try entering the noun instead.
Check drinking gloryhole:
	try entering the noun instead.

Check entering gloryhole:
	if the player is not a bit horny and the player is upright and the semen taste addiction of the player < 12 and the oral sex addiction of the player < 6, say "You're not aroused enough." instead;
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	if the player is upright and the player is barbie:
	[Let's also make the milking the default action if they have milky breasts and no dick]
		if the milk volume of breasts > 0 and bottom level lactation cover is nothing:
			allocate 6 seconds;
			now gloryhole is grabbing the player;
			say "You feel a tongue probe at your sexless mound, and suddenly freeze...[line break][second custom style]'What the fuck? You're some kind of doll, aren't you!'[roman type][line break]You hear a woman sniffing.[line break][second custom style]'Hah! This'll teach you to poke your nose where you shouldn't!'[roman type][line break]You hear a lever pulled, nearby, and suddenly two holes open up, just at your breast height!";
			[if bottom level lactation cover is nothing and random worn actually nipple covering clothing is nothing:]
			say "Two suction cups leap out of the new holes and latch onto your nipples!";
			trigger lactation;
			compute gloryhole dislodging instead;
		otherwise: [This is what it used to always do in this case:]
			say "You would, but you no longer have a penis." instead;
	if the player is upright:
		let C be a random pussy covering undisplacable unzippable clothing;
		if C is clothing, say "You can't just displace [NameDesc of C] to get your [genitals] free." instead;
		if the player is pussy protected:
			if the player is not able to displace, do nothing instead; [We didn't set auto to 1 so it'll output the reason]
	otherwise:
		if face is actually occupied, say "Your mouth is currently occupied." instead;
	allocate 6 seconds;
	now the turns trapped of gloryhole is 0;
	if the player is upright and (a random number between 12 and 20 <= the semen taste addiction of the player or a random number between 6 and 10 <= the oral sex addiction of the player or the player is not a bit horny):
		say "[bold type]In a moment of weakness, you drop to your knees,[roman type] deciding you'd rather taste [manly-penis] [if the semen taste addiction of the player > 12]and get some [semen] to swallow [end if]right now rather than get your own rocks off.";
		now the stance of the player is 1;
	if the charge of gloryhole > 0, say "Nobody seems to be there. Maybe you should try again later?" instead;
	if the player is upright:
		let C1 be a random top level protection clothing;
		let C2 be a random off-stage clothing;
		while C1 is not C2 and C1 is clothing:
			now C2 is C1;
			if C1 is crotch-zipped:
				try unzipping C1;
				if C1 is crotch-unzipped, now C1 is temporarily-displaced;
			otherwise if C1 is displacable and C1 is crotch-in-place:
				try displacing C1;
				if C1 is crotch-displaced, now C1 is temporarily-displaced;
			now C1 is a random top level protection clothing;
		say "[if the player is possessing a penis]You stick your [ShortDesc of penis] into[otherwise if the player is possessing a vagina]You press your [vagina] against[end if] the waiting lips. ";
		repeat with M running through reactive students:
			if the outrage tolerance of M <= 8:
				FavourDown M;
	otherwise:
		say "As your mouth approaches the lower hole, the waiting pair of lips retracts.";
		if there is a held condom-providing thing and face is not actually occupied:
			say "Use a condom?";
			if the player is consenting:
				say "You delicately place a condom between your lips and put your mouth up to the hole.";
				now gloryhole is glorywrapped;
		if gloryhole is gloryunwrapped:
			say "You expectantly put your mouth up to the hole. ";
		repeat with M running through reactive students:
			if the outrage tolerance of M <= 10:
				FavourDown M;
	now gloryhole is grabbing the player;
	if the player is upright:
		if ex-princess is not unconcerned and the player is getting unlucky:
			if the milk volume of breasts > 0 and (a random number between 1 and 3 is 1):
				if bottom level lactation cover is nothing and random worn actually nipple covering clothing is nothing:
					say "Two suction cups leap out of the wall and latch onto your nipples!";
				otherwise:
					repeat with B running through worn not not-top-displacable actually nipple covering clothing:
						TopDisplace B;
					say "Two suction cups leap out of wall and latch onto your nipples!";
				say GotUnluckyFlav;
				trigger lactation;
				repeat with M running through reactive monsters:
					say NastyTrapReactFlav of M;
				compute gloryhole dislodging instead;
			otherwise if face is not actually occupied and a random number between 1 and 2 is 1:
				compute gloryhole upper blowjob;
			otherwise:
				compute gloryhole genital modification;
			say GotUnluckyFlav;
			repeat with M running through reactive monsters:
				say NastyTrapReactFlav of M;
		otherwise if the player is male:
			compute gloryhole blowjob receipt;
		otherwise:
			compute gloryhole cunnilingus receipt;
	otherwise:
		if face is not actually occupied:
			say "Within moments, a large [if the oral sex addiction of the player > 5]juicy [end if][manly-penis] is pushed through the hole [if gloryhole is glorywrapped]and you use your lips to unroll the condom down its length as it enters your mouth[otherwise]and into your mouth[end if]. It is easily long enough to hit the back of your throat, causing you to gag[if the oral sex addiction of the player > 7] slightly[end if].";
			now gloryhole is penetrating face;
			now busy is 1;
		otherwise:
			say "Nothing happens. Maybe if you didn't have something in your mouth already...?";
			compute gloryhole dislodging;[handles automatic]
	update appearance level;
	repeat with M running through reactive monsters:
		now the latest-appearance of M is the appearance of the player; [Prevents them suddenly being shocked at how outrageous the player looks]
	if the player is upright, now the charge of gloryhole is 200 instead;
	otherwise do nothing instead.

To say GloryHoleSuction:
	if the player is upright, say "Suddenly, a powerful and invisible suction force presses your body powerfully against the wall! Your face is forced against the upper hole[if the largeness of breasts > 2] and your [ShortDesc of breasts] are lewdly squooshed up against the wall[end if]! You are completely unable to move! ".

To compute gloryhole blowjob receipt:
	now busy is 1;
	say GloryHoleSuction;
	now gloryhole is penetrating penis;
	if the size of penis > 1 and face is not actually occupied and the player is getting unlucky:
		now gloryhole is blowjob portal;
		now the player-reaction of the player is submitting;
		say "You gasp in shock as [one of]a strangely familiar [ShortDesc of penis] is forced into your mouth! As the [player-penis] pushes past your lips, you feel a pair of lips move around your own. Then, as your tongue touches the base of the [player-penis], you feel a tongue touch the base of your own.[line break][variable custom style]Wait a minute... I'm sucking my own [player-penis]! How [if the bimbo of the player < 9]awful[otherwise if the bimbo of the player < 13]weird[otherwise]cool[end if]![roman type][line break][or]your [ShortDesc of penis] once again enters your own mouth.[stopping][GotUnluckyFlav]You [if the bimbo of the player < 10]can't help but [end if]moan as your own mouth starts to stimulate you, and [one of][if the sex addiction of the player < 8]since the magic of the gloryhole clearly isn't going to let you go until you've finished[otherwise]unable to resist the pleasure[end if],[or]once again[stopping] you [if the oral sex addiction of the player < 4]reluctantly [end if]get to work.";
		say "[one of][variable custom style]How weird is this![roman type][line break][or][stopping][if the oral sex addiction of the player < 4][one of]But although you start off reluctantly sucking your own [player-penis], you're soon telling yourself that it's not so much you're sucking a [manly-penis], as you've just found a new way to wank, right?[line break][variable custom style]I mean, how different is this to those guys who are so flexible they can bend over and suck their own [manly-penis]s? It's not like this is training me to enjoy sucking [manly-penis]s, ha ha![roman type][line break][or][stopping][otherwise][one of]It doesn't take long, though, before you're really getting into this! It's like having the perfect blowjob partner: you can imagine your [player-penis] is being swallowed whole by some hot bitch who can magically read your mind to know exactly what you'd like done at any instant.[line break][variable custom style]Mmm, like that![roman type][line break]You wrap your tongue around the tip, rasping it up against the sensitive underside, and feel your [ShortDesc of scrotum] throb in reaction.[line break][variable custom style]Yeah, bitch, just like that![roman type][line break]You hum, making your [player-penis] vibrate deliciously. You suck harder, and feel more blood rush into the fleshy rod jabbing into your mouth, stiffening it even further.[line break][variable custom style]Wow, sucking [manly-penis]s is fun![roman type][line break]You start to really get into the sensation of the silken-smooth, stiff staff thrusting into your mouth.[or][stopping][end if]";
		if the size of penis < 4:
			say "Your [player-penis] slips and slides comfortably around inside your mouth. It's like a little swizzle-stick, a small candy that you can push and prod and poke around to your heart's content. It's so small it's easy to manoeuvre, even stiff as it is and at its full but minuscule erection! You certainly don't have to worry about gagging on [italic type]this[roman type] cute little thing! But then it occurs to you that this is [italic type]your[roman type] dick, and you feel yourself blush in shame.";
			moderateHumiliate;
		otherwise if the size of the penis < 8:
			say "The [player-penis] pushes against the back of your throat, and you suddenly feel the urge to see if you can deep throat it! Eagerly, you angle your head so it slides deep into your gullet. For a moment you start to gag, but since you're in total control of every movement, it's not too scary or threatening, and you find you're able to relax your throat without much effort. And then you really start to get into it.[line break][variable custom style]Yeah, go bitch, swallow that sword![roman type][line break]";
		otherwise:
			say "You thought it was kind of cool, having a [ShortDesc of penis], but being on the receiving end as it shoves its way into your mouth, so fat and long and broad that you have to strain to fit it in, is even better! And then some stupid, evil part of you wonders about deep-throating, and you feel your hips instinctively slam forward to impale the bitch-mouth that's timidly swallowing your sword. The doubled-up sensation - the prick in your mouth, and the mouth wrapped tightly around your prick - confuses you, but the pleasure that's coming from your [player-penis] somehow overrules the panic you feel at having your mouth so stuffed, and you feel simultaneously exultant at forcing your way into this timid opening, and horrified at the massive invading rod abusing you!";
	otherwise:
		now gloryhole is normal glory hole;
		say "You hear a delighted feminine cooing as the pair of soft lips close around your [ShortDesc of penis]. You moan as the anonymous mouth gets to work, [if the size of penis > 3]sliding up and down your shaft like a professional[otherwise]nibbling gently at your member as if it was a large clitoris[end if].";
		if the largeness of breasts > 10:
			say "Your [BreastDesc] bulge out to the sides of your rib cage, and you pull back a little, just to test how firmly trapped you are.[line break][variable custom style]'Mmmm-ohhh!'[line break]Was that me? Yikes![roman type][line break][trivialHumiliateReflect][line break][variable custom style]But that felt so strange: the way your massive boobies force you to lean back from the wall, while totally and irresistibly gluing you against the wall. But at the same time, they're so big that you still have enough movement to do a little dance with your upper body, if you wanted to. It's like you're helplessly trapped yet strangely free at the same time![roman type][line break]";
		otherwise if the largeness of breasts > 6:
			say "Your [BreastDesc] are binding you tightly against the cold wall. If they were any smaller, they'd be making your head press against it too, but luckily they're a good enough size to leave your head clear. You experimentally wriggle your shoulders, testing the strength of the force holding you stuck here in position...[line break][variable custom style]Wow! That feels weird. But nice![roman type][line break]A funny shiver runs through you at the discovery of just how firmly stuck you are - especially at how much freedom of movement you have, even so, thanks to the sheer volume of your breasts!";
		otherwise if the largeness of breasts > 3:
			say "Your [BreastDesc] are sucked tight against the wall, forcing your head into close proximity to the cold surface.";
		otherwise if the largeness of breasts > 1:
			say "Your [BreastDesc] are still jammed hard up against the cold stone wall, which because of their small size, presses the wall against your head, bending your neck back at an uncomfortable angle.";
	arouse 500.

To compute gloryhole cunnilingus receipt:
	now busy is 1;
	now gloryhole is normal glory hole;
	say GloryHoleSuction;
	say "The soft warms lips press against your labia and then you feel something warm and soft snaking between your folds. It's a tongue! You moan as the anonymous mouth gets to work, licking up and down and inside your [vagina].";
	arouse 500.

To compute gloryhole upper blowjob:
	now busy is 1;
	now gloryhole is upper oral;
	now gloryhole is gloryunwrapped;
	[#LXorDD]
	if the player is possessing a penis and (the player is getting unlucky or a random number between 1 and 1 is 1), now gloryhole is a-dick-detacher;
	say "Uh-oh, ####Selkie forgot to make something less certain: now you're in trouble!";
	say GloryHoleSuction;
	say "You hear a playful feminine giggle as the pair of soft lips [if the player is possessing a penis]close around your [ShortDesc of penis][otherwise if the player is possessing a vagina]press against your labia[end if]. But then a split second later, the mouth disappears! You know something is up but it's too late. You watch in [horror (the oral sex addiction of the player * 2)] as a large [manly-penis] advances through the upper hole, sealing your [LipDesc] around it as it [if the oral sex addiction of the player < 12]forces[otherwise]pushes[end if] them apart. The penis begins thrusting in and out of your mouth.";
	now gloryhole is penetrating face;
	say "Do you want to resist?";
	if the player is reverse bimbo consenting:
		now the player-reaction of the player is resisting;
		say "You immediately begin to struggle, refusing to suck on the [manly-penis]. It simply responds by thrusting in and out even harder and further, prodding at your throat and making you gag.";
	otherwise:
		now the player-reaction of the player is submitting;
		say "You begin to use your tongue to try and satisfy the [manly-penis] without its owner feeling like they need to force it to the back of your throat.".

To compute gloryhole genital modification:
	let C be a random off-stage actually summonable chastity bond;
	if there is a worn tattoo and the number of worn crotch tattoos is 0:
		summon slut-tattoo;
		say "You feel a sharp pain near your crotch and pull your body back. You now have a 'SLUT' tattoo![line break][variable custom style][if the bimbo of the player < 13]Fuck![otherwise]Heh. It's making me feel even more [one of]girly[or]giddy[at random]![end if][roman type][line break]";
	otherwise if clitoris piercing is eligible:
		summon normal clit piercing cursed with quest;
		say "You feel a sharp hot pain in your clit! You scream and try to pull away from the wall as hard as you can. The suction stops and you are able to step away and see your new [normal clit piercing]!";
	otherwise if C is chastity bond:
		summon C locked;
		say "[if C is chastity cage]Before you can react, someone on the other end of the hole has forced something rigid around your [ShortDesc of penis]! The suction stops and you pull back to find that you are now wearing a [C]![otherwise][GloryHoleSuction]While you are stuck, you can feel somebody reach through the hole and start pushing sections of metal against your hips. Within moments, a full female chastity belt has been locked on to your body. The suction stops and you are able to step backwards and properly inspect your new attire[end if]![line break][variable custom style][if the anal sex addiction of the player < 3]What the fuck?![otherwise if the anal sex addiction of the player < 5]Nooooo![otherwise if the anal sex addiction of the player < 7]I don't deserve this, do I?![otherwise if diaper lover is 1]Uh-oh, it looks like I'm going to have to get my cummies with my [asshole] now![otherwise]Looks like I'm going to have to get my orgasms with my [asshole] now! Sounds like fun![end if][roman type][line break]";
	otherwise:
		if the player is possessing a penis:
			if gloryhole is a-dick-detacher and penis-is-detachable by gloryhole using 1: [#LXorDD]
				say "You're enjoying both the sensations and the feeling of dominance";
				compute detach-players-dick by gloryhole using 1;
				say GotUnluckyFlav;
			otherwise:
				say "Somebody slaps your [ShortDesc of penis] painfully!";
				PainUp 1;
				PenisDown 1;
				say "You reflexively pull back.";
		otherwise:
			say "Somebody flicks your clitoris painfully! You pull it back out, but the [if the sex addiction of the player < 10]shocking [end if]experience has made you more submissive.";
			PainUp 2;
	compute gloryhole dislodging.

To say SexResistFlav of (G - gloryhole):
	if the player is prone:
		if a random number between 3 and the oral sex addiction of the player > 6:
			say "You can't bring yourself to stop right now! [SexSubmissionFlav of G]";
		otherwise:
			say "You shuffle backwards, removing the [manly-penis] from you mouth and giving the anonymous [man of shopkeeper] blue balls.[line break][first custom style]'[one of]Fucking bitch! Come back here!'[or]What the fuck? You've got to be shitting me!'[or]Hey [bitch], I wasn't finished!'[or]You fucking [slut]! Finish sucking my [manly-penis] you little [bitch]!'[in random order][roman type][line break]He doesn't seem happy, but after a few seconds the [manly-penis] is removed from the hole.";
			compute gloryhole dislodging;
	otherwise if G is normal glory hole:
		say "You try to pull away but the magical suction is holding you tightly against the wall!";
	otherwise if G is upper oral:
		say "You refuse to suck on the [if the oral sex addiction of the player < 4]unwelcome [end if][manly-penis] in your mouth!";
	otherwise if G is blowjob portal:
		if player-urinating is 0:
			if the oral sex addiction of the player < 4:
				say "You try to stimulate yourself as gently and modestly as possible, but it still feels really good[one of]! You clench your eyes shut and try to think of other things than your own taste.[or]![stopping]";
			otherwise:
				say "You can't resist the amazing feelings of your own mouth! [SexSubmissionFlav of G]".

To say SexSubmissionFlav of (G - a gloryhole):
	if the player is prone:
		say "[if the oral sex addiction of the player < 5]You stay still and let the anonymous [manly-penis] fuck your mouth.[otherwise][one of]You fellate the anonymous [manly-penis] with your mouth.[or]You suck diligently on the [manly-penis] poking through the hole in the wall.[or]You find yourself moaning gently as you pleasure the anonymous stranger's [manly-penis].[or]You smile inwardly at the pleasant taste of the stranger's [manly-penis].[or]You push the large [manly-penis] to the back of your mouth tickling the entrance to your throat. The man on the other side of the wall groans with pleasure.[or]You fuck the anonymous [manly-penis] with your face as fast and hard as you can, making a[line break][variable custom style]'Hyuk hyuk hyuk'[roman type][line break]sound as you do.[in random order][end if]";
	otherwise if G is normal glory hole:
		if player-urinating is 1:
			say "You stand there patiently and allow your flow of [urine] to continue.";
		otherwise:
			if the player is upright, say "You stand still and continue to enjoy the oral service[one of], although it does feel a bit weird being held in place by magical forces[or][or][or][or][or][cycling].";
			if the semen volume of vagina > 0:
				say "The skilful tongue [one of]laps up some [semen] that is slowly seeping[or]felches some more [semen][stopping] from your [vagina].";
				decrease the semen volume of vagina by 1;
				if the semen volume of vagina is 0, say "Your [vagina] now feels pretty much empty of [semen].";
	otherwise if G is upper oral:
		say "You [if the oral sex addiction of the player < 4]reluctantly [otherwise if the oral sex addiction of the player < 6]hesitantly [end if][one of]slurp on the [manly-penis] in your mouth[or]massage the [manly-penis] in your mouth with your tongue[or]hum a tune with the [manly-penis] in your mouth, increasing the stimulation[at random].";
	otherwise if G is blowjob portal:
		if player-urinating is 0:
			say "You [if the oral sex addiction of the player < 8]reluctantly [otherwise if the oral sex addiction of the player < 11]hesitantly [end if][one of]slurp on the [manly-penis] in your mouth[or]encircle your [player-penis] with your tongue[or]frantically fuck your own [player-penis] with your mouth[at random].".

[This will only happen if the player has a different type of orgasm while getting sucked, e.g. by inserting something in their butt]
To compute erection orgasm of (M - gloryhole):
	if M is a-dick-detacher and penis-is-detachable by M using 1: [#LXorDD]
		say "[one of]Panting, you thrust one last time [or]You feel the [semen] about to burst forth[or][line break][variable custom style]Yes, yes![roman type][line break]You're just about to explode [at random]";
		compute detach-players-dick by M using 1;
		compute gloryhole dislodging;
		stop;
	say "You feel the girl keep her mouth wrapped around your [player-penis] to catch your [if the size of penis > 4]entire [otherwise if the size of the penis < 3]tiny[end if]load, and then swallow it all in one [if the size of penis > 7]large gulp[otherwise if the size of the penis < 3]small sip[otherwise]swallow[end if]. The lips remove themselves from your member and then the magical force keeping you pressed to the wall disappears, allowing you to leave. You slowly pull your [player-penis] out of the hole.";
	if the size of the penis < 3:
		say "[one of]The amused look she gives you make your cheeks turn bright pink.[or]She smirks and holds up her pinkie finger, giving it a little wiggle. Once again you feel your cheeks burning.[or]She purses her lips in a [italic type]tiny[roman type] air-kiss.[stopping]";
		SlightHumiliate;
	BlowGet;
	DelicateDown 1;
	now penis is not penis-erect;
	compute gloryhole dislodging.

An all time based rule (this is the compute gloryhole rule):
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
						if the player is not possessing a penis:
							say "You feel a tongue probe at your sexless mound, and it suddenly freezes...[line break][variable custom style]'Stupid fucking sex dolls,'[roman type][line break]you hear a woman mutter.[line break][variable custom style]'Well, maybe this'll teach it to poke its nose where it shouldn't!'[roman type][line break]";
							[Selkie: I don't know a suitable punishment - ideas?
							Aika observes, though: it should never happen anyway; unless the player gets breast-milked the game will refuse to let a penis-less male character use the gloryhole whilst standing.]
							say "You feel something weird happen at your groin - but you're not sure what!"; [They strap on a fake baby-dick you can't remove? Tattoo? Draw a pussy?]
						otherwise if the size of the penis is 1:
							now tinyDickGrabbed is 1;
							say "For several seconds, nothing happens. Then you feel a tongue flick past the end of your [player-penis]. It freezes, then slowly slides down, tracing a line directly below it, probing at the place where your ball-sac [italic type]used[roman type] to be. You hear a woman giggle.[line break][variable custom style]'You poor sod, I really thought some bitch had shoved her vag up here for a lapping, but you're actually a guy, aren't you? Normally I'd have no chance of reaching your tiny nubbin, but the Nintendolls R&D department planned for this unlikely event. Hang on...'[roman type][line break]You feel her tongue withdraw, then something oily and circular presses forwards against your mostly-smooth mound, and suddenly a powerful humming starts and the suction increases ten-fold! You feel your tiny clitoris swell and bulge, almost painfully. It reminds you of what your erections [italic type]used[roman type] to feel like. At least, until the girl snorts in disbelief.[line break][variable custom style]'Wow, that's much bigger now - it must be the size of a cigarette butt! Looks pretty red though, babe - I hope your tender little raspberry isn't going to burst!'[roman type][line break]";
							humiliate 400;
						otherwise:
							say "You feel the girl keep her mouth wrapped around your [player-penis] to catch your [if the size of penis > 4]entire [otherwise if the size of the penis < 3]tiny[end if]load, and then swallow it all in one [if the size of penis > 7]large gulp[otherwise if the size of the penis < 3]small sip[otherwise]swallow[end if]. The lips remove themselves from your member and then the magical force keeping you pressed to the wall disappears, allowing you to leave. You slowly pull your [player-penis] out of the hole.";
							BlowGet;
							DelicateDown 1;
						say "You shudder as the sensations [if the size of penis < 3]immediately [end if]bring you to a powerful climax.";
						if tinyDickGrabbed is 1:
							say "But even though it felt [italic type]wonderful[roman type], you stare in shock at the tiny amount you squirted out.[line break][variable custom style]I doubt any chick would even FEEL that, if I squirted in her[roman type][line break]Then realise, there's no way you could work your little clit inside [italic type]anyone[roman type]! But the device is still sucking, as if it doesn't realise you're already finished, and you stare in a kind of sick fascination at your groin as your nubbin swells and shrinks with each suck.[line break][variable custom style]It won't really burst, will it?[roman type][line break]Your [player-penis] bulges, flushing a darkening, angry red - but because of the suction, and its tiny length, it's now as wide as it is long! It really [italic type]does[roman type] look like a raspberry.[line break][variable custom style]Or maybe, a strawberry, if I'm being generous?[roman type][line break]It deepens in colour to a dark purple, and it's really starting to hurt... but finally, the suction ends, and the device hisses as air rushes in, and pops free.[line break]";
						orgasm quietly;
						compute gloryhole dislodging;
					otherwise:
						say "[one of]The anonymous girl's tongue gently swirls around your tip, causing you to moan with pleasure.[or][if the size of penis > 3]The anonymous slut forces your [player-penis] deep into her throat, and you hear gagging sounds coming through the wall. You squeal with delight.[otherwise]The girl tries to deepthroat your length, but your [player-penis] can't even reach the back of her throat. You make an embarrassed sound and she giggles.[end if][or]The girl lightly scrapes your [player-penis] with her teeth, causing you to shiver, but in a good way.[or]The girl silently sucks away, taking you to a world of bliss.[in random order]";
						passively stimulate penis from gloryhole;
				otherwise:
					if (the player is extremely horny and the turns trapped of gloryhole > 1) or (the player is very horny and the turns trapped of gloryhole > 3) or the turns trapped of gloryhole > 5:
						say "You shudder as the sensations bring you to a powerful climax.";
						orgasm;
						say "After lapping up your girlcum, the anonymous tongue removes itself from underneath you and then the magical force keeping you pressed to the wall disappears, allowing you to leave.";
						LickGet;
						DelicateDown 1;
						compute gloryhole dislodging;
					otherwise:
						say "[one of]The anonymous tongue gently swirls around your clit, causing you to moan with pleasure.[or]The anonymous slut forces their tongue as deep as it can go into your [vagina]. You squeal with delight.[or]The tongue carefully explores all the way around your external folds.[or]The tongue silently licks away at your entrance, taking you to a world of bliss.[in random order]";
						passively stimulate vagina from gloryhole;
						if vagina is orgasming:
							say "After lapping up your girlcum, the anonymous tongue removes itself from underneath you and then the magical force keeping you pressed to the wall disappears, allowing you to leave.";
							LickGet;
							DelicateDown 1;
							compute gloryhole dislodging;
			otherwise if gloryhole is upper oral:
				if the turns trapped of gloryhole > a random number between 3 and 7:
					compute gloryhole BJ completion;
					if delayed fainting is 0, say "The rapidly deflating [manly-penis] is withdrawn from the hole.";
					compute gloryhole dislodging;
				otherwise:
					if gloryhole is throater, say "The [manly-penis] in the upper hole keeps thrusting in and out of your mouth and throat[one of], causing you to make lewd gagging sounds[or][or][or][cycling]!";
					otherwise say "The [manly-penis] in the gloryhole continues to [one of]fuck your mouth![or]gently thrust.[or]move slowly in and out.[or]fuck your face![in random order]";
			otherwise if gloryhole is blowjob portal:
				if the turns trapped of gloryhole > a random number between 3 and 7 and player-urinating is 0:
					orgasm quietly;
					say "Your hips shake as you cum!";
					compute gloryhole BJ completion;
					BlowGet;
					if delayed fainting is 0, say "Finally, the magical force keeping you pressed to the wall disappears, allowing you to pull your [player-penis] out of the hole, and therefore out of your mouth.";
					compute gloryhole dislodging;
		otherwise if gloryhole is penetrating face:
			if the turns trapped of gloryhole > a random number between 2 and 4:
				compute gloryhole BJ completion;
				if delayed fainting is 0, say "The rapidly deflating [manly-penis] is withdrawn from the hole.";
				compute gloryhole dislodging;
			otherwise:
				if gloryhole is throater, say "The [manly-penis] in the gloryhole continues to [one of]fuck your throat![or]vigorously thrust.[in random order]";
				otherwise say "The [manly-penis] in the gloryhole continues to [one of]fuck your mouth![or]gently thrust.[or]move slowly in and out.[or]fuck your face![in random order]";
		if the turns trapped of gloryhole > 12:
			say "Gloryhole is broken and should have let you go by now! Please report the bug to Aika.";
			compute gloryhole dislodging;
			now busy is 0.

To compute gloryhole BJ completion:
	let M be a random ultimate-lesson-actor;
	BlowCount;
	if gloryhole is glorywrapped:
		say "[one of]The [manly-penis] spasms as it fills the condom with a huge load[or]The [manly-penis] throbs powerfully as it fills the condom with a nice, big load[or]The [manly-penis] jizzes, filling the condom with a really big load[in random order]. ";
		compute default condom filling of a random fairy;
		now gloryhole is gloryunwrapped;
	otherwise if gloryhole is throater:
		say "The [manly-penis] [one of]explodes down your throat[or]jizzes directly down your throat[at random], removing your choice of whether to swallow the salty gift.";
		StomachSemenUp the semen load of M;
	otherwise:
		say "The [manly-penis] [one of]explodes in your mouth[or]jizzes in your waiting mouth[or]throbs as it fills your mouth with its load[in random order]. Wow, there's a lot!";
		FaceFill semen by the semen load of M;
		if the player is desperate to drink semen:
			say AutomaticSwallow of M;
			compute silent swallowing;
		otherwise:
			suggest swallowing.

To compute gloryhole dislodging:
	dislodge gloryhole;
	now busy is 0;
	if delayed fainting is 0:
		if there is worn temporarily-displaced clothing, say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
		repeat with C running through temporarily-displaced clothing:
			if C is worn:
				if C is crotch-unzipped, ZipUp C;
				otherwise Replace C;
			now C is not temporarily-displaced;
		update appearance level;
		repeat with M running through reactive monsters:
			now the latest-appearance of M is the appearance of the player.

[Fairies wouldn't use condoms, so it's fitting]
To say CondomPinFlav of (M - a fairy) on (C - a clothing):
	say "[one of]Completely of its own accord[or]Once again[stopping], the used condom suddenly peels itself off and flies through the air until it hits your [C]. ".

To construct normal buttons for (D - gloryhole):
	if ButtonTableFull is 0:
		if D is grabbing the player:
			choose a blank row in the Table of Buttons;
			now the ButtonColour entry is lightModeFullGreen;
			if D is normal glory hole:
				now the ButtonImage entry is Figure of WaitButton;
				now the ButtonCommand entry is "wait";
			otherwise:
				now the ButtonImage entry is Figure of SubmitButton;
				now the ButtonCommand entry is "submit";
				if ButtonTableFull is 0 and the player is not broken:
					choose a blank row in the Table of Buttons;
					now the ButtonImage entry is Figure of ResistButton;
					now the ButtonCommand entry is "resist";
					now the ButtonColour entry is lightModeFullGreen;
		otherwise:
			choose a blank row in the Table of Buttons;
			now the ButtonColour entry is lightModeFullGreen;
			if the player is prone or the player is not a bit horny:
				now the ButtonImage entry is figure of OralButton;
				if face is actually occupied, now the ButtonColour entry is lightModeFullYellow; [turn yellow - player's mouth unavailable]
			otherwise:
				now the ButtonImage entry is figure of WankButton;
				if there is pussy covering undisplacable unzippable clothing:
					now the ButtonColour entry is lightModeFullYellow; [turn yellow - player's crotch unavailable]
				otherwise if the player is pussy protected:
					now auto is 1;
					if the player is not able to displace, now the ButtonColour entry is lightModeFullYellow; [turn yellow - can't displace]
					now auto is 0;
			now the ButtonCommand entry is "use [text-shortcut of D]";
			if the player is immobile or the player is in danger, now the ButtonColour entry is lightModeFullRed. [turn red - player immobile]


school-fuckhole is a thing. school-fuckhole is not portable. The printed name of school-fuckhole is "[TQlink of item described]fuckhole[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of school-fuckhole is "fkhl". Understand "fuckhole" as school-fuckhole. school-fuckhole has a person called fuckhole-person.

Definition: school-fuckhole is immune to change: decide yes.

school-fuckhole has a number called recently-used.
school-fuckhole has a number called asscum.
school-fuckhole has a number called pussycum.
school-fuckhole has a number called buttcum.
school-fuckhole has a number called buttcondoms.
To decide which number is the bracum of (C - school-fuckhole):
	let N be 0;
	repeat with B running through bras in the location of the player:
		if N < the semen-soak of B, now N is the semen-soak of B;
	decide on N.

school-fuckhole has a number called fuckhole-rule.
[
0: All permitted
1: Creampie
2: Anal creampie or bra
3: Butt
4: Condom
5: Condom and leave it
]

To say FuckholeRuleDesc:
	let M be the fuckhole-person of school-fuckhole;
	say "'[if the fuckhole-rule of school-fuckhole is 0]Use [him of M] however you like[otherwise if the fuckhole-rule of school-fuckhole is 1]All ejaculations must be internal creampies[otherwise if the fuckhole-rule of school-fuckhole is 2]You must either give [his of M] an anal creampie or pull out and ejaculate on [his of M] bra. Do not steal the bra[otherwise if the fuckhole-rule of school-fuckhole is 3]You must pull out and ejaculate on [his of M] ass cheeks[otherwise if the fuckhole-rule of school-fuckhole is 4]You must use a condom[otherwise]You must use a condom and leave your used condom on top of [his of M] ass[end if].'".

Figure of school-fuckhole pale is the file "Env/School/fuckhole1a.jpg".
[Figure of school-fuckhole mixed is the file "Env/School/fuckhole1b.jpg".]
Figure of school-fuckhole dark is the file "Env/School/fuckhole1c.jpg".

Figure of school-fuckhole asscum is the file "Env/School/fuckhole2a.png".
Figure of school-fuckhole asscum jet is the file "Env/School/fuckhole2b.png".
Figure of school-fuckhole pussycum is the file "Env/School/fuckhole3a.png".
Figure of school-fuckhole buttcum is the file "Env/School/fuckhole4a.png".
Figure of school-fuckhole condoms is the file "Env/School/fuckhole5a.png".
Figure of school-fuckhole bra is the file "Env/School/fuckhole6a.png".
Figure of school-fuckhole bracum is the file "Env/School/fuckhole6b.png".

To decide which figure-name is the examine-image of (G - school-fuckhole):
	if the fuckhole-person of G is dark skinned monster, decide on Figure of school-fuckhole dark;
	decide on Figure of school-fuckhole pale.

To ForegroundRender (G - school-fuckhole) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	if the buttcum of G > 0:
		display the image Figure of school-fuckhole buttcum in the current focus window at X1 by Y1 with dimensions DX by DY;
	if the pussycum of G > 0:
		display the image Figure of school-fuckhole pussycum in the current focus window at X1 by Y1 with dimensions DX by DY;
	if the buttcondoms of G > 0:
		display the image Figure of school-fuckhole condoms in the current focus window at X1 by Y1 with dimensions DX by DY;
	if the bracum of G is 1:
		display the image Figure of school-fuckhole bra in the current focus window at X1 by Y1 with dimensions DX by DY;
	otherwise if the bracum of G > 0:
		display the image Figure of school-fuckhole bracum in the current focus window at X1 by Y1 with dimensions DX by DY;
	if the asscum of G is 1:
		display the image Figure of school-fuckhole asscum in the current focus window at X1 by Y1 with dimensions DX by DY;
	otherwise if the asscum of G > 1:
		display the image Figure of school-fuckhole asscum jet in the current focus window at X1 by Y1 with dimensions DX by DY;

An all time based rule (this is the fuckhole asscum rule):
	if the asscum of school-fuckhole > 1:
		decrease the asscum of school-fuckhole by 1;
		if the player is in the location of school-fuckhole, say "The [semen] jetting out of [NameDesc of school-fuckhole][']s butthole gets all over [if the bracum of school-fuckhole > 0]the bra on [end if]the floor.";
		SemenPuddleUp 2 in (the location of school-fuckhole);
		repeat with B running through bras in the location of school-fuckhole:
			CumSoak 1 on B.

To say ExamineDesc of (C - school-fuckhole):
	let M be the fuckhole-person of C;
	say "The lower half of a [man of M] is stuck in the wall here: [big his of M] hands, calves and butt are presented through five tight rubber-sealed holes in the wall. [big his of M] head, torso, arms and knees must be on the other side. It doesn't look like [he of M][']ll be getting out any time soon.";
	say "[if the asscum of C is 1]The cum leaking out of [his of M] asshole is evidence that [he of M][']s recently been anally creampied. [otherwise if the asscum of C > 1]The cum shooting out of [his of M] asshole is evidence that [his of M] ass has recently been filled to the brim with [semen]. [end if][if the pussycum of C > 0]The cum leaking out of [his of M] cunt is evidence that [he of M][']s recently been vaginally creampied. [end if][if the buttcum of C > 0][big his of M] buttcheeks are coated in [semen]. [end if][if the buttcondoms of C > 0]Used condoms are piled on top of [his of C] butt. [end if][if the bracum of C > 0][big his of M] bra is lying on the ground by [his of M] feet. [end if][if the bracum of C is 2]It has been plastered by several ropes of [semen]. [end if]You remember [NameDesc of headmistress][']s instructions:[line break][speech style of headmistress][FuckholeRuleDesc][roman type][line break]".

To construct normal buttons for (T - school-fuckhole):
	if the player is a bit horny:
		choose a blank row in the Table of Buttons;
		now the ButtonColour entry is lightModeFullGreen;
		now the ButtonImage entry is figure of WankButton;
		if there is pussy covering undisplacable unzippable clothing:
			now the ButtonColour entry is lightModeFullYellow; [turn yellow - player's crotch unavailable]
		otherwise if the player is pussy protected:
			now auto is 1;
			if the player is not able to displace, now the ButtonColour entry is lightModeFullYellow; [turn yellow - can't displace]
			now auto is 0;
		now the ButtonCommand entry is "use [text-shortcut of T]";
		if the player is immobile or the player is in danger, now the ButtonColour entry is lightModeFullRed. [turn red - player immobile]

Check climbing school-fuckhole:
	try entering the noun instead.
Check dominating school-fuckhole:
	try entering the noun instead.
Check drinking school-fuckhole:
	try entering the noun instead.

Check entering school-fuckhole:
	increase the recently-used of school-fuckhole by 1;
	let ruleBreaker be false;
	if the fuckhole-rule of school-fuckhole > 0, now ruleBreaker is true;
	if the player is not possessing a penis, say "You would need a penis." instead;
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	if the player is prone, say "You'd need to stand up first." instead;
	if the player is not a bit horny, say "You're not aroused enough." instead;
	let C be a random pussy covering undisplacable unzippable clothing;
	if C is clothing, say "You can't just displace [NameDesc of C] to get your [genitals] free." instead;
	if the player is pussy protected:
		if the player is not able to displace, do nothing instead; [We didn't set auto to 1 so it'll output the reason]
	allocate 6 seconds;
	let C1 be a random top level protection clothing;
	let C2 be a random off-stage clothing;
	while C1 is not C2 and C1 is clothing:
		now C2 is C1;
		if C1 is crotch-zipped:
			try unzipping C1;
			if C1 is crotch-unzipped, now C1 is temporarily-displaced;
		otherwise if C1 is displacable and C1 is crotch-in-place:
			try displacing C1;
			if C1 is crotch-displaced, now C1 is temporarily-displaced;
		now C1 is a random top level protection clothing;
	repeat with M running through reactive students:
		if the outrage tolerance of M <= 8:
			FavourDown M;
	let M be the fuckhole-person of school-fuckhole;
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	set numerical response 1 to "Fuck anally[if there is a held condom-providing thing] (no condom)[end if]";
	set numerical response 2 to "Fuck vaginally[if there is a held condom-providing thing] (no condom)[end if]";
	if there is a held condom-providing thing:
		set numerical response 3 to "Fuck anally (with condom)";
		set numerical response 4 to "Fuck vaginally (with condom)";
	compute multiple choice question;
	let F be vagina;
	let O be player-numerical-response;
	if O is 1 or O is 3, now F is asshole;
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	say "You [if O > 2]wrap your member then [end if]push inside the easily accessible [F] in front of you. It feels warm and tight - everything you could ever want in a fuckhole. It doesn't take long before you're groaning with pleasure and ";
	if O > 2:
		say "filling your condom with your [if the semen load of the player > 7]huge [otherwise if the semen load of the player < 4]small [end if]load.";
		if the fuckhole-rule of school-fuckhole is 4, now ruleBreaker is false;
		orgasm quietly;
		now player-numerical-response is 0;
		let BL be a random off-stage bag lunch;
		if BL is a thing:
			if the buttcondoms of school-fuckhole > 0:
				set numerical response 1 to "Keep the used condom";
				set numerical response 2 to "Put the used condom on [his of M] butt";
				compute multiple choice question;
			otherwise:
				now player-numerical-response is 1;
		otherwise:
			now player-numerical-response is 2;
		if player-numerical-response is 1:
			now BL is carried by the player;
			say "You keep [NameDesc of BL] for yourself.";
		otherwise if player-numerical-response is 2:
			say "You add the used condom to the countless used condoms already on [his of M] butt.";
			if the fuckhole-rule of school-fuckhole is 5, now ruleBreaker is false;
	otherwise:
		say "ready to cum.";
		set numerical response 1 to "Cum inside";
		set numerical response 2 to "Pull out and cum on [his of M] ass";
		if the bracum of school-fuckhole > 0, set numerical response 3 to "Pull out and cum on [his of M] bra";
		compute multiple choice question;
		orgasm quietly;
		if player-numerical-response is 1:
			if the fuckhole-rule of school-fuckhole is 1, now ruleBreaker is false;
			say "You fill the warm hole with your [if the semen load of the player > 7]huge [otherwise if the semen load of the player < 4]small [end if]hot sticky load.";
			if F is vagina:
				increase the pussycum of school-fuckhole by 1;
			otherwise:
				if the fuckhole-rule of school-fuckhole is 2, now ruleBreaker is false;
				increase the asscum of school-fuckhole by 2;
				if the asscum of school-fuckhole > 2, say "As you pull out, cum starts shooting out from [his of M] asshole like a fire hydrant!";
		otherwise if player-numerical-response is 2:
			say "You pull out with an audible SLURP, and spill your load over [his of M] [if the buttcum of school-fuckhole > 0]cum-covered [end if]ass. You watch [his of M] toes curl as [he of M] feels your warm [semen] painting [his of M] rear.";
			increase the buttcum of school-fuckhole by 1;
			if the fuckhole-rule of school-fuckhole is 3, now ruleBreaker is false;
		otherwise:
			say "You pull out with an audible SLURP, and point your [ShortDesc of penis] towards the bra on the floor. You shoot your load all over it.";
			repeat with B running through bras in the location of school-fuckhole:
				CumSoak (the semen load of the player) on B;
			if the fuckhole-rule of school-fuckhole is 2, now ruleBreaker is false;
	if there is worn temporarily-displaced clothing, say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
	repeat with TDC running through temporarily-displaced clothing:
		if TDC is worn:
			if TDC is crotch-unzipped, ZipUp TDC;
			otherwise Replace TDC;
		now TDC is not temporarily-displaced;
	DelicateDown 1;
	if ruleBreaker is true and headmistress is alive and headmistress is undefeated:
		now M is a random staff member in the location of the player;
		if M is nothing and the player is getting unlucky, now M is a random alive teacher;
		if M is a monster:
			if M is not in the location of the player:
				now M is in the location of the player;
				say "Suddenly, [NameDesc of M] walks into the room! [GotUnluckyFlav]";
			now M is interested;
			anger M;
			make M expectant;
			say "[BigNameDesc of M] puts [his of M] hands on [his of M] hips.[line break][speech style of M]'I SAW THAT! How dare you break the headmistress's rules[if the recently-used of school-fuckhole > 1] by using the fuckhole more than once per visit[end if]. GET ON YOUR KNEES AT ONCE!'[roman type][line break]";
		otherwise:
			say "You feel proud of yourself for breaking the rules but not getting caught.";
			dignify 2500;
			repeat with ST running through reactive students:
				if ST is not nasty student, FavourDown ST;
	do nothing instead.


Gloryhole ends here.
