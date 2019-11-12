Patron by Monster begins here.

A patron is a kind of monster. A patron is usually intelligent. A patron is male. A patron can be pissed off. A patron is usually not pissed off. The difficulty of a patron is usually 3. A patron has an object called wanking-target. A patron can be trickdone or not trickdone. A patron is usually not trickdone.

Definition: a patron is dark skinned: decide yes.
Definition: a patron is raunchy: decide yes.
Definition: a patron is condom-preferring: decide yes.[Every John wants to be sensible if the whore has come prepared.]
Definition: a patron is manly-wenchy:
	if the player is an april 2019 top donator, decide yes;
	decide no.

Figure of white inexperienced patron is the file "NPCs/Hotel/Patron/patron1.png".
Figure of black inexperienced patron is the file "NPCs/Hotel/Patron/patron2.png".
Figure of white experienced patron is the file "NPCs/Hotel/Patron/patron3.png".
Figure of black experienced patron is the file "NPCs/Hotel/Patron/patron4.png".
Figure of white gross patron is the file "NPCs/Hotel/Patron/patron5.png".
Figure of black gross patron is the file "NPCs/Hotel/Patron/patron6.png".
Figure of white dickhead patron is the file "NPCs/Hotel/Patron/patron7.png".
Figure of black dickhead patron is the file "NPCs/Hotel/Patron/patron8.png".

To say ShortDesc of (M - a patron):
	say "patron".

To say MonsterDesc of (M - a patron):
	if diaper quest is 0, say "A [man of M], naked from the waist down, who is [if the girth of item described < 3]less than [otherwise if the girth of item described > 3]more than [end if]averagely endowed for an adult male. [big he of M] is clearly expecting some paid company tonight. ";
	say PatronDesc of M;

An inexperienced patron is a kind of patron.
eager patron is an inexperienced patron. impatient patron is an inexperienced patron. The text-shortcut of eager patron is "epa". The text-shortcut of impatient patron is "ipa".
To decide which figure-name is the monster-image of (M - an inexperienced patron):
	if M is eager patron or interracial fetish is 1, decide on figure of black inexperienced patron;
	otherwise decide on figure of white inexperienced patron.
To say PatronDesc of (M - an inexperienced patron):[TODO: change for lady fetish]
	say "This particular [if lady fetish is 1]girl[otherwise]guy[end if] looks like [he of M]'s in [his of M] early twenties, and is very over-eager.[line break]".

To say MonsterComment of (M - an inexperienced patron):
	say "[if item described is penetrating a body part and the relevant sex addiction of item described < 4][first custom style]Well I hope that means [he of M]'ll cum quickly...[otherwise if item described is penetrating a body part][variable custom style][big he of M]'s clearly nowhere near as experienced as me![otherwise][variable custom style]Maybe [he of M]'s a virgin?[end if][roman type][line break]".

To say MediumDesc of (M - eager patron):
	say "eager patron".
To say MediumDesc of (M - impatient patron):
	say "impatient patron".

An experienced patron is a kind of patron.
well dressed patron is an experienced patron. A suited patron is an experienced patron. The text-shortcut of well dressed patron is "wdp". The text-shortcut of suited patron is "spa".
To decide which figure-name is the monster-image of (M - an experienced patron):
	if M is well dressed patron or interracial fetish is 1, decide on figure of black experienced patron;
	otherwise decide on figure of white experienced patron.
To say PatronDesc of (M - an experienced patron):
	if diaper quest is 1, say "This [man of M] is wearing a smart suit and has quite a serious mature face.";
	otherwise say "This particular [man of M] is wearing a smart suit and [he of M] doesn't stare at you like you might expect, seeming only mildly interested. You guess that [he of M]'s been with a lot of whores in [his of M] time, and just wants a body to use to get [his of M] rocks off.[line break]".
To say MonsterComment of (M - an experienced patron):
	if diaper quest is 1, say "[if the player is not a pervert][line break][first custom style][one of][big he of M] isn't thinking that this is going to get sexual, is [he of M]?[or]Not again![stopping][otherwise if the player is feeling submissive][line break][second custom style][one of]I hope [he of M] gives obedient babies their cummies![or]Yay, Daddy's home![stopping][otherwise][line break][variable custom style]Something tells me [he of M]'s going to want to be in charge...[end if][roman type][line break]";
	otherwise say "[if the player is not a pervert][first custom style]Trust me, I'm not interested in you either, buddy.[otherwise if the player is broken][variable custom style]Well [he of M]'s right, I'm just an object to be used.[otherwise if the player is shameless][second custom style][big he of M] certainly knows how to frustrate an attention whore like me![otherwise][variable custom style]The least [he of M] could do is at least appreciate my beauty![end if][roman type][line break]".
To say MediumDesc of (M - well dressed patron):
	say "well dressed patron".
To say MediumDesc of (M - suited patron):
	say "suited patron".

A gross patron is a kind of patron.
chubby patron is a gross patron. hairy patron is a gross patron. The text-shortcut of chubby patron is "cpa". The text-shortcut of hairy patron is "hpa".
To decide which number is the girth of (M - gross patron):
	decide on 2.
To say LongDickDesc of (M - a gross patron):
	if full-lady fetish is 1, say "ribbed strap-on dildo";
	otherwise say "uncut [DickDesc of M]".
To decide which figure-name is the monster-image of (M - a gross patron):
	if M is hairy patron or interracial fetish is 1, decide on figure of black gross patron;
	otherwise decide on figure of white gross patron.
To say PatronDesc of (M - a gross patron):[TODO: change for lady fetish]
	if lady fetish is 1:
		say "This particular woman is [if M is hairy patron]heavily pregnant[otherwise]quite overweight[end if], [his of M] belly hanging out of [his of M] shirt and [his of M] big, [if M is hairy patron]lactating breasts[otherwise]heavy breasts[end if] fully visible.";
	otherwise:
		say "This particular man is quite overweight, [his of M] [if M is hairy patron]hairy [end if]belly hangs out from [his of M] shirt and [his of M] gross [if item described is hairy patron]hairy[otherwise]flabby[end if] chest is fully visible.[line break]".
To say MonsterComment of (M - a gross patron):
	if lady fetish is not 1:
		say "[if item described is penetrating a body part and the relevant sex addiction of item described < 4][first custom style]Oh my god, [he of M]'s so gross![otherwise if the sex addiction of the player < 7][variable custom style]I do NOT want to go anywhere near [his of M] [DickDesc of M]![otherwise if the humiliation of the player < 27500][variable custom style][big he of M]'s pretty gross.[otherwise][variable custom style][big he of M]'s disgusting, I'm disgusting. We make a perfect match.[end if][roman type][line break]".
To say MediumDesc of (M - chubby patron):
	say "chubby patron".
To say MediumDesc of (M - hairy patron):
	if lady fetish is 1, say "pregnant patron";
	otherwise say "hairy patron".


A dickhead patron is a kind of patron.
menacing patron is a dickhead patron. sneering patron is a dickhead patron. The text-shortcut of menacing patron is "mpa". The text-shortcut of sneering patron is "snp".
To decide which number is the girth of (M - dickhead patron):
	decide on 4.
To decide which figure-name is the monster-image of (M - a dickhead patron):
	if M is menacing patron or interracial fetish is 1, decide on figure of black dickhead patron;
	otherwise decide on figure of white dickhead patron.
To say PatronDesc of (M - a dickhead patron):
	say "This particular [man of M] stares at you with narrow eyes. It looks like [he of M]'s both aroused and disgusted by you.[line break]".
To say MonsterComment of (M - a dickhead patron):
	say "[if the player is not a pervert][first custom style]I'm just disgusted.[otherwise if the humiliation of the player > 31500][variable custom style]I'm disgusted by me too.[otherwise if the sex addiction of the player > 12][second custom style]I'm just aroused![otherwise][variable custom style]The feeling is mutual![end if][roman type][line break]";
To say MediumDesc of (M - menacing patron):
	say "menacing patron".
To say MediumDesc of (M - sneering patron):
	say "sneering patron".

To say LongDickDesc of (M - a dickhead patron):
	say "big [if interracial fetish is 1]black [end if][DickDesc of M]";

To set up (M - a patron):
	reset M;
	now the monstersetup of M is 1;
	now M is unleashed;
	now M is not pissed off;[In case the patron was angry during his last session with the player. He's calmed down since then.]
	now the difficulty of M is 3;
	now the health of M is the maxhealth of M;
	now the wanking-target of M is nothing;
	now the refactory-period of M is 0.

To decide which number is the girth of (M - a patron):
	decide on 3.

To say LongDickDesc of (M - a patron):
	say "[if interracial fetish is 1]black[otherwise]hard[end if] [DickDesc of M]".

To say HoleDesc of (M - a patron):
	if lady fetish is 1, say "[vagina]";
	otherwise say "[asshole]";

To decide which number is the base semen load of (M - a patron):
	decide on 2.

To say PregFlav of (M - a patron):
	say "[speech style of M]'Oh my god, I can't believe it, I'm a daddy!'[roman type][line break]".

To say PregFlav of (M - an inexperienced patron):
	say "[speech style of M]'Oh my god, it's a baby [one of]girl[or]boy[purely at random]! You were my first, and now you've given birth to my first kid... I'll never forget you.'[roman type][line break]".

To say PregFlav of (M - an experienced patron):
	say "[speech style of M]'Ugh, not again, I can't believe I got another hooker pregnant. You don't look like you're really ready to raise a child, so I'll take responsibility. Don't bother coming to look for us, we don't need you in our lives.'[roman type][line break]".

To say PregFlav of (M - a gross patron):
	say "[speech style of M]'Yikes, I didn't really plan for this to happen. I guess I should wear a rubber in the future. I guess I'll take her home, then. If you want to join us after you've finished working here, we'll be waiting. Come to [if lady fetish is 1]mommy[otherwise]daddy[end if] now, little one.'[roman type][line break]".

To say PregFlav of (M - a dickhead patron):
	say "[speech style of M]'Fucking hell, when I said I was going to get you pregnant I didn't think it would actually happen. I guess that makes this pretty ironic, huh? Oh, don't look at me like that, you weren't on protection either. FINE, I'll take responsibility for it. Fucking useless bitch.'[roman type][line break]".

To say PregGrowth of (M - a patron):
	say "[one of]a hotel brothel[or]the[stopping] patron's [child]".

To compute labour to (M - a patron):
	if playerRegion is Hotel:
		compute pregnancy clothing displacement;
		say "[PregFlav]A human head pushes its way out of your cunt, agonisingly slowly and painfully. Finally the head has passed through, and after a final push at the shoulders, the birthing is complete. You pick your child up off the floor and start to cradle it in your arms. The [father] appears almost as if on cue! [PregFlav of the father]Severing the umbilical cord, [he of M] pulls the baby from your hands, wraps it in a soft blanket and then carries it away. [line break][variable custom style][if the bimbo of the player < 8]That is definitely for the best.[otherwise if the bimbo of the player < 14]I guess I don't really have anywhere to raise a baby in here, anyway.[otherwise]Oh good, that means I can busy myself with finding a new man to breed me again![end if][roman type][line break]";
	otherwise:
		Delay Labour.

To say NonAliveFatherBirthFlav of (M - a patron):
	say "You are filled with a desire to return to the Hotel!".


To compute fatherhood to (M - a patron):
	dislodge M.

Definition: a patron is human: decide yes.

To check motion of (P - a patron):
	if the number of monsters in the location of the player is the number of patrons in the location of the player:[should fix bugs with the dominatrix and the wrestler]
		if P is penetrating a body part:
			dislodge P;
		compute monstermotion of P;
		now P is moved;
	otherwise:
		do nothing.

Part 1 - Misc Flavour

To compute diaper mess reaction of (M - a patron):
	if diaper quest is 1:
		say "[BigNameDesc of M] [one of]visibly recoils[or]cries out with shock[or]steps back in horror[or]yells with surprise[in random order]. [if there is a barrier in the location of the player][line break][speech style of M]'[one of]Yuck! You're even more gross than I expected from a baby slave. Do you have no shame?!'[or]What the hell? This wasn't supposed to happen. Can you really not control yourself?!'[in random order][roman type][line break][end if][line break]";
	otherwise:
		say "[BigNameDesc of M] [one of]visibly recoils[or]cries out with shock[or]steps back in horror[or]yells with surprise[in random order]. [if there is a barrier in the location of the player][line break][speech style of M]'[one of]Woah, this is not what I wanted!!! Too far!'[or]What the hell? This isn't what I'm paying for! Oh god, that smell!'[or]What the fuck are you doing?! Yuck, stop!!!'[or]Is this some kind of prank? That stinks!'[or]Nope, sorry, way too far for me. I'm out.'[or]Nope, nope nope nope. This is not my scene. No thank you!'[in random order][roman type][line break][end if][line break]";
		say "[BigNameDesc of M] [if M is penetrating an orifice]pulls out and [end if]leaves in a hurry.";
		destroy M;
	humiliate 400.

To compute (M - a demon lord) stomping (N - a patron):
	if M is in the location of the player, say "[M] roars at the [N].[line break][speech style of M]'GET OUT OF MY WAY[one of], MORTAL[or][stopping]!'[roman type][line break]The [N] doesn't need telling twice - [he of N] runs out the room as fast as [his of N] legs can carry [him of N]!";
	otherwise say "You hear a [man of M]'s terrified whimper and fast running footsteps from somewhere else in the hotel.";
	destroy N.

patronTime is a number that varies.
SRBSummoned is initially false.

A time based rule (this is the patron encountering rule):
	if playerRegion is Hotel and the player is not in a nonstandard room:
		let R be a random number between 1 and patronTime;
		if R > 15 and the player is not in danger:
			if debuginfo > 1, say "[input-style]Patron wandering check: ([patronTime] turns) --> d[patronTime] ([R]) | 15.5[roman type][line break]";
			now patronTime is 0;
			let H be a random hotel bed in the location of the player;
			if the player is the donator and H is a thing and the number of monsters in the location of the player is 0 and woman-barbara is in the hotel and the patron-scene-done of woman-barbara is 0 and woman-barbara is friendly and the woman-status of woman-barbara < 10:
				now woman-barbara is in the location of the player;
				say "[BigNameDesc of woman-barbara] wanders into the room. [if woman-barbara is uninterested][big he of woman-barbara] seems happy to see you![line break][speech style of woman-barbara]'Oh [NameBimbo], fancy bumping into you here! I was just checking out the... wait, what's that sound?'[roman type][end if][line break]";
			if H is a thing and the number of monsters in the location of the player is 0:
				compute PatronSpawning of H;[sometimes beds will just activate]
				now the alert of the player is 1;
			otherwise if the player is the donator and H is a thing and the number of monsters in the location of the player is 1 and woman-barbara is in the location of the player and the patron-scene-done of woman-barbara is 0 and woman-barbara is friendly:
				compute patron scene of woman-barbara;
			otherwise if diaper quest is 0 and resting is 0:
				let P be a random off-stage patron;
				let M be a random monster in the location of the player;
				if the player is in Hotel38 and watersports fetish is 1 and the human-toilet-scene of woman-barbara is not 1, now M is toilet;
				let PSRB be a random carried probably-serve-ready bottle;
				if PSRB is a bottle:
					now P is in the location of the player;
					set up P;
					compute waitressDemand of P on PSRB;
				otherwise if watersports fetish is 1 and face is not actually occupied and there is a worn ringagged clothing:
					compute player urinal use of P;
				otherwise if M is a thing or a random number between 1 and 2 is 1:
					now P is in the location of the player;
					set up P;
					if M is a thing:
						compute patronMeeting of M with P;
					otherwise:
						compute patronEncounter of P;
						say "[big he of P] leaves the way [he of P] came in.";
				otherwise:
					now M is a random regional monster;
					compute patronMeeting of M with P;
				destroy P;
				zero focus stuff; [Flags the focus window for a full redraw (prevents the patron from appearing in it at the end of the turn).]
			if SRBSummoned is false and senior robobellboy is off-stage and (whoring feedback tattoo is worn or the employee-record of senior robobellboy < a random number between -5 and 0):
				summon senior robobellboy;
				now SRBSummoned is true;
		otherwise if R <= 15 and debuginfo > 1:
			say "[input-style]Patron wandering check: ([patronTime] turns) --> [if patronTime <= 15]automatic failure (under 16)[otherwise]d[patronTime] ([R]) | 15.5[end if][roman type][line break]";
		increase patronTime by 1.

To compute patronMeeting of (M - toilet) with (P - a patron):
	if debuginfo > 1, say "[input-style]Patron is meeting [NameDesc of M].[roman type][line break]";
	let patronBarter be 0;
	if toilet-key is in Holding Pen and the human-toilet-scene of woman-barbara > 1 and the player is able to speak:[###Selkie: what about if I(we?) modify this to use some humiliating begging charade text on Barbara's behalf, for the case where the player can't speak?]
		say "[BigNameDesc of P] wanders into the room! You see [him of P] toying with the key for the toilet bondage in one of [his of P] hands. Do you beg [him of P] for the key? ";
		if the player is consenting:
			now patronBarter is 1;
			if the player is upright:
				say "You drop to your knees.";
				now auto is 1;
				try kneeling;
				now auto is 0;
			if the player is able to speak:[Modified to use some humiliating begging charade text on Barbara's behalf, for the case where the player can't speak.]
				say "[variable custom style]'Please, let my friend out now, [he of woman-barbara][']s gonna go insane!'[roman type][line break]";
			otherwise:
				say "Even though you can't talk, you make enough sound to attract [his of P] attention. You swallow as [he of P] stares at you with a hard-to-read expression and feel yourself flush red. Gesturing at [NameDesc of woman-barbara] you shake your head, making sure to put on an exaggerated pleading expression. [if the player is wrist bound behind]You'd hold your hands up to beg, but with them behind you, the best you can do is twist your shoulders to try to point toward your hapless friend. It makes your [BreastDesc] [BreastBounceDesc].[otherwise if the player is wrist bound]You look especially abject and humiliating thanks to your wrists being cuffed together as if you were some kind of slave or something![otherwise]You put your hands up to make your abject begging even clearer.[end if] You lift your chin up, kind of nodding, kind of offering your own face, suddenly wondering whether [he of P] will even be able to jam [his of P] cock into your mouth, or whether [he of P][']ll just pee all over your face!";
			say "[BigNameDesc of P] looks at you and thinks for a moment, rubbing [his of P] chin with amusement.[line break][speech style of P]'Okay, if you drink this in your friend's place, I'll give you the key.'[roman type][line break]Before you can react, [he of P] has whipped out [his of P] [DickDesc of P] and it's pointing right at your face!";
			FacePiss from P;
			if P is pissed off:
				say "[BigNameDesc of P] just laughs.[line break][speech style of P]'Pathetic. That shows how much you actually care about your friend.'[roman type][line break]";
			otherwise:
				say "[BigNameDesc of P] smiles widely.[line break][speech style of P]'Wow, calm down slut, you didn't have to gobble it down quite so greedily, you know! Drinking piss is nothing to be proud of. What a perfect pair of pathetic toilet sluts you two make. Anyway, as promised, here's the key[if freedom tattoo is drawable]... but here's a little secret. If you put this in the chute in the inspiration room, it'll give you a magic tattoo that will make you much faster. And if you choose to do that, instead of rescuing [him of woman-barbara]... nobody except me and the toilet over there will ever know. I'll leave the decision up to you[end if].'[roman type][line break]";
				now toilet-key is in the location of the player;
				compute autotaking toilet-key;
		otherwise:
			say "You can't bring yourself to intervene, and silently watch as ";
	otherwise:
		say "[BigNameDesc of P] wanders into the room! Completely ignoring you, ";
	if patronBarter is 0:
		say "[he of P] whips out [his of P] [DickDesc of P] and [one of]takes an impressively long[or]takes a quick[or]sighs as he takes a[purely at random] piss into [if the human-toilet-scene of woman-barbara > 1][NameDesc of woman-barbara][']s[otherwise]the poor human toilet's[end if] mouth. [big he of woman-barbara] gargles weakly as [he of woman-barbara] is forced to swallow gulp after gulp after gulp of the hot [urine]. [big his of woman-barbara] belly audibly groans as it is forced to stretch even further.";
		if the human-toilet-scene of woman-barbara > 1, ImmediateWomanSluttify;
	say "[BigNameDesc of P] leaves the way [he of P] came in.";


To compute player urinal use of (M - a monster):
	now M is in the location of the player;
	say "A [MediumDesc of M] walks into the room and makes a beeline for you. ";
	if the player is upright:
		say "[line break][speech style of M]'On your knees. I need to piss.'[roman type][line break]Do you get on your knees? ";
		if the player is bimbo consenting:
			now auto is 1;
			try kneeling;
			now auto is 0;
	if the player is prone:
		say "Without saying a word, [he of M] begins urinating through your gag!";
		FacePiss from M;
	otherwise:
		say "[speech style of M]'This toilet is malfunctioning. I'll be sure to tell the mechanic about this, so [he of mechanic] can [']fix['] it.'[roman type][line break]";
		decrease the employee-record of senior robobellboy by 1;
	say "[big he of M] leaves the way [he of M] came.".


To compute patronMeeting of (M - a monster) with (P - a patron):
	if debuginfo > 1, say "[input-style]Patron is meeting [NameDesc of M].[roman type][line break]";
	compute patronEncounter of P.

To compute patronMeeting of (M - a demon lord) with (P - a patron):
	if debuginfo > 1, say "[input-style]Patron is meeting [NameDesc of M].[roman type][line break]";
	if M is in the location of the player, say "A [MediumDesc of P] walks into the room and accidentally bumps into [NameDesc of M]";
	compute M stomping P.

To compute patronMeeting of (M - a mechanic) with (P - a patron):[performance]
	if debuginfo > 1, say "[input-style]Patron is meeting [NameDesc of M].[roman type][line break]";
	if M is in the location of the player:
		say "A [MediumDesc of P] walks into the room and makes a beeline for [NameDesc of M]. They glance at you as [NameDesc of P] whispers something in [NameDesc of M]'s ear, and then silently leaves the room.";
	if P is pissed off:
		FavourDown M;
		decrease the employee-record of senior robobellboy by 1;
	otherwise:
		FavourUp M;
		if a random number between 1 and 3 is 1:
			increase the employee-record of senior robobellboy by 1.

To compute patronMeeting of (M - a wrestler) with (P - a patron):
	if debuginfo > 1, say "[input-style]Patron is meeting [NameDesc of M].[roman type][line break]";
	let R be a random number between 0 and watersports fetish;
	if M is in the location of the player, say "A [MediumDesc of P] walks into the room and makes a beeline for [NameDesc of M]. [big he of M] immediately drops to [his of M] knees, pushing up [his of M] [ChestDesc of M] and eagerly lolling out [his of M] tongue as [Namedesc of P] [if R is 1]showers [him of M] with [urine][otherwise]ejaculates all over [NameDesc of M]'s face[end if].";
	if R is 1, UrinePuddleUp 2 in the location of M;
	if the refactory-period of M < 0, now the refactory-period of M is 0.

To compute patronMeeting of (M - a dominatrix) with (P - a patron):
	if debuginfo > 1, say "[input-style]Patron is meeting [NameDesc of M].[roman type][line break]";
	if the location of the player is Hotel37:
		if M is in the location of the player, say "A [MediumDesc of P] walks into the room and offers [NameDesc of M] a piece of jewellery. [big he of M] gently takes it from [NameDesc of P], whispering something in [his of P] ear before shooing [him of P] away.";
		otherwise say "A [MediumDesc of P] walks into the room, notices you, and immediately leaves without saying anything.";
		FavourDown M;
		FavourDown P;[You cock-blocked him!]
	otherwise:
		if M is in the location of the player:
			say "A [MediumDesc of P] walks into the room and offers [NameDesc of M] a piece of jewellery. [big he of M] snatches it from [him of P], smirking as [he of M] drags [NameDesc of P] out of the room.";
		now M is in Hotel37;
		SemenPuddleUp (the semen load of P) in (the location of M).

To compute waitressDemand of (M - a patron) on (B - a bottle):
	say "[bold type]A [MediumDesc of M] walks into the room and makes a beeline for you. [roman type][big he of M] takes [NameDesc of B] [if serving table is worn]from the serving table on your back[otherwise if there is worn serving-bondage]from your [ShortDesc of random worn serving-bondage][otherwise]right out of your hand[end if] and drinks down the entire beverage, before returning you the glass.[line break][speech style of M]'[one of]That hit the spot[or]Delicious[or]Just what I needed[or]Phew, I didn't realise just how thirsty I'd become[in random order]. [one of]That will be all, doll[or]Good work, whore. Maybe I'll pay you to fuck me later as a reward[or]That'll be all, wench[or]Thanks a bunch, [honey of M][or]Be a doll and go refill that now[or]You took long enough though, slut, I've been looking everywhere trying to find you[or]Keep up the work and maybe I'll give you a taste of my [manly-penis] later[in random order].'[roman type][line break]";
	compute waitress resolution of M taking B.

To compute waitressDemand of (M - an inexperienced patron) on (B - a bottle):
	say "A [MediumDesc of M] walks into the room and hesitantly approaches you. [big he of M] gingerly takes [NameDesc of B] [if serving table is worn]from the serving table on your back[otherwise if there is worn serving-bondage]from your [ShortDesc of random worn serving-bondage][otherwise]out of your hand[end if] and drinks it all down before politely returning you the glass.[line break][speech style of M]'[one of]Sorry. I mean, thanks[or]Thank you very much[or]That was very nice. Thanks so much[or]Wow, you're so pretty. I mean, um, thanks for the drink[in random order].'[roman type][line break]";
	compute waitress resolution of M taking B.

To compute patronEncounter of (M - a patron):
	if debuginfo > 1, say "[input-style]Patron is ejaculating on the floor in [location of M].[roman type][line break]";
	if M is in the location of the player, say "A [MediumDesc of M] walks into the room and immediately begins to masturbate. [big he of M] grunts in pleasure as [he of M] blows [his of M] load on the ground.";
	SemenPuddleUp 1 in (the location of M).

To compute patronEncounter of (M - an inexperienced patron):
	if M is in the location of the player:
		say "A [MediumDesc of M] walks into the room and makes eye contact with you. [big his of M] [DickDesc of M] immediately hardens, but [he of M] seems too intimidated to ask you for a handjob. [if the player is able to use manual dexterity and the player is not immobile]Take care of it anyway? [end if]";[give him a handjob]
		if the player is not able to use manual dexterity or the player is immobile:
			say "You can't really help [him of M], so after an awkward moment of staring at each other [he of M] leaves the room.";
		otherwise if the player is bimbo consenting:
			say "You walk up to [him of M], looking [him of M] in the eye as you wrap your hand around [his of M] [LongDickDesc of M]. [BigNameDesc of M] can't hold on for long, and within moments [he of M] shoots a big load all over the ground.";
			increase the employee-record of senior robobellboy by 1;
			SemenPuddleUp (the semen load of M) in (the location of M);
		otherwise:
			say "[if the bimbo of the player >= 8][big he of M]'s really cute, but you're not in the mood for that right now, so you let the eye contact hang until [he of M] awkwardly[otherwise]You're not interested in [him of M] at all, so after awkwardly staring at each other for a moment, [he of M][end if] leaves the room.";
	otherwise:
		if debuginfo > 1, say "[input-style]Patron is ejaculating on the floor in [location of M].[roman type][line break]";
		SemenPuddleUp 1 in (the location of M).

To compute patronEncounter of (M - an experienced patron):
	if M is in the location of the player:
		if the player is immobile or the player is not able to use manual dexterity:
			say "A [MediumDesc of M] walks into the room and immediately makes eye contact with you. [big he of M] seems to nod [his of M] head and then leaves the room.";
			increase the employee-record of senior robobellboy by 1;
		otherwise:
			say "A [MediumDesc of M] walks into the room and immediately makes eye contact with you. [line break][speech style of M]'You. Whore. Fix this.'[roman type][line break][big he of M] gestures at [his of M] rapidly hardening [DickDesc of M]. It seems like [he of M] wants a handjob. Give [him of M] one?";[give him a handjob]
			if the player is bimbo consenting:
				say "You [if the player is feeling submissive]eagerly[otherwise]slowly[end if] wrap a hand around [his of M] [LongDickDesc of M] and start pumping away. The clinical expression on [his of M] face [if the player is shameless]makes the whole experience even more exciting, and by the time [he of M] finally blows [his of M] load on the ground you're feeling pretty hot[otherwise]makes it hard to focus, and when [he of M] finally blows [his of M] load, you aren't expecting it and most of it gets on you[end if]. Satisfied, [NameDesc of M] leaves the room as if nothing happened.";
				moderateHumiliate;
				if the player is shameless:
					SemenPuddleUp (the semen load of M) in (the location of M);
				otherwise:
					if bukkake fetish is 1, CumThighsUp the semen load of M;
					otherwise strongHumiliate;
					SemenPuddleUp 1 in (the location of M);
				increase the employee-record of senior robobellboy by 1;
			otherwise:
				say "You shake your head, and [he of M] rolls [his of M] eyes.[line break][speech style of M]'Hmph. Typical. Your manager will hear about his.'[roman type][line break][BigNameDesc of M] leaves the room.";
				decrease the employee-record of senior robobellboy by 1;
	otherwise:
		if debuginfo > 1, say "[input-style]Patron is ejaculating on the floor in [location of M].[roman type][line break]";
		SemenPuddleUp 1 in (the location of M).

To compute patronEncounter of (M - a gross patron):
	let R be a random number between 1 and 2;
	if M is in the location of the player:
		say "A [MediumDesc of M] walks into the room, [if R is 1 and watersports fetish is 1]stumbling a bit as [he of M] pisses in the corner[otherwise]and begins to masturbate as soon as [he of M] makes eye contact with you. [big he of M] groans with pleasure as [he of M] blows a big load on the ground[end if].";
	if R is 1 and watersports fetish is 1:
		if debuginfo > 1, say "[input-style]Patron is pissing on the floor in [location of M].[roman type][line break]";
		UrinePuddleUp (the semen load of M) in (the location of M);
	otherwise:
		if debuginfo > 1, say "[input-style]Patron is ejaculating on the floor in [location of M].[roman type][line break]";
		SemenPuddleUp (the semen load of M) in (the location of M).

To compute patronEncounter of (M - a dickhead patron):
	if M is in the location of the player:
		if the player is prone:
			let R be a random number between 1 and 3;
			if R is 1 and watersports fetish is 1:
				say "A [MediumDesc of M] walks into the room and makes a beeline for you as soon as [he of M] notices you. [line break][speech style of M]'You could use a shower, whore.'[roman type][line break][BigNameDesc of M] immediately starts pissing in your face.";
				FacePiss from M;
				destroy M;
			otherwise if R is 2 and bukkake fetish is 1:
				say "A [MediumDesc of M] walks into the room and makes a beeline for you as soon as [he of M] notices you. [line break][speech style of M]'I'm gonna cum on your face, whore.'[roman type][line break]As if on cue, [BigNameDesc of M] ejaculates, flinging several ropes of [semen] across your face.";
				CumFaceUp 1;
				destroy M;
			otherwise if face is not actually occupied:
				say "A [MediumDesc of M] walks into the room and makes a beeline for you as soon as [he of M] notices you. [line break][speech style of M]'Look, I don't have any money but whatever, you're just a whore anyway. Open up.'[roman type][line break][big he of M] holds [his of M] [LongDickDesc of M] in your face. Do you give [him of M] a quick blowjob? ";
				if the player is bimbo consenting:
					say "You barely have time to get your mouth open before [he of M] shoves it in, roughly fucking your face until [he of M] jizzes straight down your throat.[line break][speech style of M]'Thanks. Maybe I'll have some money for you next time.'[roman type][line break][big he of M] leaves as soon as [he of M] showed up.";
					BlowCount;
					slightHumiliate;
					StomachSemenUp the semen load of M;
					increase the employee-record of senior robobellboy by 1;
				otherwise:[Doesn't affect your employee record]
					say "[line break][speech style of M]'Ugh, greedy bitch.'[roman type][line break][big he of M] storms off. You have a feeling [he of M] won't be kind to you if you meet each other again.";
					compute angry punishment of M;
			otherwise:
				say "A [MediumDesc of M] walks into the room, stopping for a moment when [he of M] notices you. [big he of M] leaves without saying anything.";
		otherwise:
			say "A [MediumDesc of M] walks into the room, stopping for a moment when [he of M] notices you. [big he of M] leaves without saying anything.";
	otherwise:
		if debuginfo > 1, say "[input-style]Patron is ejaculating on the floor in [location of M].[roman type][line break]";
		SemenPuddleUp 1 in (the location of M).

Part 2 - Perception

Definition: a patron is uniquely unfriendly if it is not the father.

To check perception of (M - a patron):
	if M is uninterested and M is aware and there is a hotel bed in the location of M:
		now M is interested;
		now the last-tripped of M is 0;
		now the last-interaction of M is 0;
		if woman-barbara is in the location of the player:
			anger M;
		otherwise if M is the father:
			calm M;
			say "[BigNameDesc of M] notices you![line break][BigNameDesc of M] seems to be waiting for something..."; [Waiting for you to give birth to their baby]
		otherwise if the scared of M > 0:
			say "[BigNameDesc of M] notices you immediately and starts to run away!";
		otherwise:
			compute correct perception of M;
		if M is interested:
			increase the times-met of M by 1. [For patrons, we don't reset their chosen orifice to nothing.]

To compute the orifice choosing of (M - a patron):
	if debugmode > 0, say "The list of actual target body parts are: [list of actual target body parts].";
	if the chosen-orifice of current-monster is nothing or the chosen-orifice of current-monster is not an actual target, now the chosen-orifice of current-monster is a random actual target body part.

To compute perception of (M - a patron):
	now M is interested;
	anger M;
	now the sex-length of M is a random number between 3 and 5;
	now the last-interaction of M is 1; [The patron is expectant, which allows WaitingFlav flavour to trigger.]
	now the chosen-orifice of M is nothing;
	now the chosen-orifice of M is a random actual target body part;
	if M is inexperienced patron, decrease the sex-length of M by a random number between 1 and 2;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";[The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if the class of the player is living sex doll:
		say "[speech style of M]'Oh, I didn't realise this was that new sex doll facility I've heard about. Awesome!'[roman type][line break]";
	otherwise if M is mating:
		say "[speech style of M]'Hey I know you, you're the whore I creampied earlier. I hope you didn't get knocked up, did you?[if the player is flying][line break]And what are you doing up there?!'[otherwise]'[end if][roman type][line break]";
	if the chosen-orifice of M is nothing:
		say "[speech style of M]'Hmm, looks like you're a little tied up right now. [if the number of patrons in the location of the player > 1]We'll[otherwise]I'll[end if] come back later.'[roman type][line break]The [if the number of patrons in the location of the player > 1]guys all leave the way they[otherwise]patron leaves the way [he of M][end if] came.";
		repeat with N running through patrons in the location of the player:
			destroy N;
	otherwise if the number of patrons in the location of the player > 1:
		if the class of the player is princess:
			say "[speech style of M]'[one of]We're here to make you answer for your crimes against the people!'[or]We're overthrowing you, princess! If you satisfy us, we might even let you stay around as a figurehead!'[or]Lets just say there are going to be some big changes around here, princess.'[or]The people no longer answer to you, princess. You answer to us!'[or]Your guards let us through. You're all of out allies, princess.'[or]You've stolen enough of our tax money, so you better satisfy all of us.'[or]We had a talk with your guards, and all of us decided to overthrow you.'[or]Your guards surrendered. You belong to us, now princess.'[or]The war is over, princess. We win. Now its time for some spoils.'[in random order][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]Me first!'[or]We're going to RUIN you!'[or]How many can you take at a time?'[or]I bet you have gangbangs all the time, don't you?'[or]This slut looks like [he of the player] can handle us just fine. I'm sure your [if the player is presenting as male]boi[end if][pussy] has a lot of mileage on it already, doesn't it, whore?'[or]You're getting paid well, so you better make us all cum.'[or]I'm not getting sloppy seconds.'[or][if the number of patrons in the location of the player is 2]Ever been double penetrated, slut?'[otherwise]Ever been made [']airtight['] before, slut?'[end if][or][if the number of patrons in the location of the player is 2]This is the best birthday present ever, bro!'[otherwise]This is the best stag night ever.'[end if][or]I've been saving my cum up for weeks for this party.'[or]This is going to be a lot of fun.'[or]You're going to look like a bukkake porn star by the time we're done!'[or]Last one to cum loses the bet!'[or]I wonder if she'll faint before we're satisfied?'[in random order][roman type][line break]";
		now the chosen-orifice of M is nothing;[We will allow the patrons to choose depending on what's available at the time]
	otherwise:
		compute appearance assessment of M.

To compute appearance assessment of (M - an inexperienced patron):
	if the class of the player is princess:
		say "[speech style of M]'[if the chosen-orifice of M is vagina]W-well, I got past the guards, so uh...get on your knees then, your highness. Your [pussy] is mine!'[otherwise if the chosen-orifice of M is a fuckhole]I-Is it true, your highness? You really do anal with anyone? Please, let me try it!'[otherwise]The guards promised me you would suck my [DickDesc of M]. Please don't embarass me!'[end if][roman type][line break]";
	otherwise:
		say "[speech style of M]'[if the chosen-orifice of M is vagina]Get on your knees [slut], I wanna fuck your [pussy]!'[otherwise if the chosen-orifice of M is a fuckhole]Get on your knees [slut], I wanna fuck!'[otherwise]Get over here and suck my [DickDesc of M], [slut]!'[end if][roman type][line break]";

To compute appearance assessment of (M - a gross patron):
	if the class of the player is princess:
		say "[speech style of M]'[if the chosen-orifice of M is asshole]I can't believe I get to fuck a princess!'[otherwise if the chosen-orifice of M is vagina]Wow, the royal [pussy]. I'm so lucky I get to fuck you!'[otherwise]Your nobles promised me a blowjob tonight, and I'm pretty sure they meant you'd be giving one to me.'[end if][roman type][line break]";
	otherwise:
		say "[speech style of M]'[if the chosen-orifice of M is asshole]How much does anal cost?'[otherwise if the chosen-orifice of M is vagina]How much do you charge for bareback sex?'[otherwise]How much for a blowjob?'[end if][roman type][line break]";

To compute appearance assessment of (M - an experienced patron):
	if the class of the player is princess:
		say "[speech style of M]'[if the chosen-orifice of M is asshole]Tonight, you will be using your asshole to satisfy me. Begin at once.'[otherwise if the chosen-orifice of M is vagina]Your [cunt] belongs to me tonight, your higness. Do not disappoint me.'[otherwise]You are swallowing every single drop, your highness.'[end if][roman type][line break]";
	otherwise:
		say "[speech style of M]'[if the chosen-orifice of M is asshole]You're going to let me fuck your asshole today.'[otherwise if the chosen-orifice of M is vagina]Turn around and show me your [cunt].'[otherwise]Open, and suck it.'[end if][roman type][line break]".

To compute appearance assessment of (M - a patron):[dickhead]
	if the class of the player is princess:
		say "[speech style of M]'[if the chosen-orifice of M is asshole]Your guards don't know I'm here, princess. But don't worry, your asshole is going to find out very soon.'[otherwise if the chosen-orifice of M is vagina and pregnancy fetish + the pregnancy of the player is 1]Your guards don't know I'm here princess. But since I plan on getting you pregnant tonight, they'll probably find out eventually.'[otherwise if the chosen-orifice of M is vagina]Tonight I plan on getting a taste of some prime royal [cunt]!'[otherwise]Look princess. It reflects badly on both of us if you don't swallow my cum. So stop fucking complaining and actually do it this time.'[end if][roman type][line break]";
	otherwise:
		say "[speech style of M]'[if the chosen-orifice of M is asshole]How many [men of M] have already creamed up your asshole today, [cunt]? Well, I'm next.'[otherwise if the chosen-orifice of M is vagina and pregnancy fetish + the pregnancy of the player is 1]I think I'm going to try and get you pregnant today.'[otherwise if the chosen-orifice of M is vagina]You're not going to be able to walk properly after I'm done with your [cunt].'[otherwise]You're going to drink my cum, and you're going to thank me for it afterwards.'[end if][roman type][line break]".

To say CondomRejectFlav of (M - a patron):
	if fishbowl is in the location of the player:
		say "[speech style of M]'[one of]No condoms allowed today[or]Not today[or]Not this time[or]Cum goes in the fishbowl today[in random order], [bitch]!'[roman type][line break]";
	otherwise if M is dickhead patron:
		say "[if chosen-orifice of M is vagina and pregnancy fetish + the pregnancy of the player is 1][line break][speech style of M]'Didn[']t you hear me? I[']m gonna get you pregnant.'[roman type][line break]Looks like there[']s no way out of a creampie...[otherwise][line break][speech style of M]'No thanks.'[roman type][line break]Looks like [he of M]'s going in bare...";
	otherwise:
		say "[speech style of M]'It'll feel better if we don't use that.'[roman type][line break]Looks like [he of M]'s going in bare...".

To compute DQ perception of (M - a patron):
	now M is interested;
	anger M;
	say "[BigNameDesc of M] notices you. ";
	if there are worn messed knickers:
		say "[speech style of M]'Oh gosh, that smell! Err, I'll come back later.'[roman type][line break][BigNameDesc of M] leaves the way [he of M] came.";
		destroy M;
		if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
	otherwise:
		say "[speech style of M]'[one of]I assume that this is the right room, and you are the adult baby slave for hire, yes? Good.'[or]Daddy's home, honey! Are you ready to play?'[stopping][roman type][line break]".


Part 3 - Motion

[When the player leaves the room, the patrons disappear.]

To compute monstermotion of (M - a patron):
	if M is not in the location of the player, destroy M.

To compute (M - a patron) seeking (D - a direction):
	if M is not in the location of the player, destroy M.

Part 4 - Combat

To compute (M - a patron) protecting against (X - a monster):
	do nothing.

To decide which number is the condom resistance of (M - a patron):
	if fishbowl is in the location of the player or woman-barbara is in the location of the player, decide on 20;
	if M is dickhead patron, decide on 1;
	decide on 0.

To compute kneeling reaction of (M - a patron):
	if the number of patrons in the location of the player is 1, say "[BigNameDesc of M] grins.[line break][speech style of M]'[one of]That's more like it.'[or]That's what I thought.'[or]Now you're going to get it.'[or]Time to get what I came here for.'[or]Where you belong.'[in random order][roman type][line break]";
	humiliate 75.

To compute delay of (M - a patron):
	compute attack of M. [Patrons do not wait.]

To compute striking attack of (M - a patron):
	let B be a random body part;
	if B is a fuckhole or B is penis, now B is hips;
	if B is hair, now B is face;
	if woman-barbara is in the location of the player and a random number between 1 and 2 is 1 and patron-scene-fighting of woman-barbara >= 2 and the woman-bimbo of woman-barbara <= 4:
		say "[BigNameDesc of M] [one of]smacks [NameDesc of woman-barbara] [TargetName of B]![or]tries to hit [NameDesc of woman-barbara], but misses.[purely at random]";
	otherwise:
		if the accuracy roll of M >= the dexterity of the player:
			say StrikingSuccessFlav of M on B;
			compute M striking B;
		otherwise:
			say StrikingFailureFlav of M on B;
			if the blind-status of M > 0:
				decrease the blind-status of M by 1;
				if the blind-status of M is 0, say "[BigNameDesc of M] is no longer blind!".

To say waitingflav of (M - a patron):
	if the player is not able to speak:
		say "[one of][line break][variable custom style][muffled sounds][roman type][line break][or]You look up at [if the number of patrons in the location of the player is 1][NameDesc of M][otherwise]the [men of M][end if] silently.[at random]";
	otherwise if diaper quest is 1:
		if the diaper addiction of the player < 7:
			say "[one of]You stare up at [NameDesc of M], still in shock[or]You sigh, having lost any real hope of negotiation being successful[stopping]. [if the player is able to speak][line break][variable custom style]'[one of]I'm sorry, WHAT? What is this place?? Do you think I'm some kind of diaper fetishist?'[or]There's been some kind of mistake, I'm not the baby you're looking for!'[or]Look, can't we talk about this first? There must be another way...'[stopping][roman type][line break]Unsurprisingly, [he of M] completely ignores you.[end if]";
		otherwise if the diaper addiction of the player < 12:
			say "You [one of]cough nervously[or]squirm uncomfortably[or]shuffle awkwardly[in random order]. [line break][variable custom style][if the player is able to speak]'[one of]Please be gentle, okay?'[or]You're not going to be mean to me, are you?'[or]If I play along, do you promise to be kind?'[or]Alright, if you're paying, let's do this.'[in random order][otherwise][gag sounds][end if][roman type][line break].";
		otherwise:
			say "You [one of]mewl playfully[or]grin gleefully[or]bounce up and down on the bed[or]squeal with delight[in random order]. [line break][variable custom style][if the player is able to speak]'[one of]Ooh yay, this should be fun!'[or]'Ooh yay, are we gonna play a fun game?'[or]I'm your little baby, do what you want with me! Tee-hee!'[in random order][otherwise][gag sounds][end if][roman type][line break]";
	otherwise if the number of patrons in the location of the player is 1:
		if the player is not a pervert:
			say "[one of]You stare up at [NameDesc of M], still in shock. [or]You sigh, having lost any real hope of negotiation being successful. [stopping][line break][variable custom style]'[one of]I'm sorry, WHAT? What is this place?? Do you think I'm some kind of prostitute?'[or]There's been some kind of mistake, I'm not the whore you're looking for!'[or]Look, can't we talk about this first? There must be another way...'[stopping][roman type][line break]Unsurprisingly, [he of M] completely ignores you.";
		otherwise if the sex addiction of the player < 12:
			if M is dickhead patron:
				say "[one of]You glare at the rude [man of M]. [or]You harrumph loudly. [at random][line break][variable custom style]'[one of]Look here, bozo. You fuck me, you pay me. No funny business, okay?'[or]Hey, treat me nicely, please? I'm just trying to make an honest living here.'[or]Fuck you, jackass. I'll [if the chosen-orifice of M is face]suck you off[otherwise]fuck you[end if], but only because it's literally my job.'[in random order][roman type][line break]";
			otherwise if M is gross patron:
				say "[one of]You hesitantly reply. [or]You look at the barrier, and then back at the [man of M]. [at random][line break][variable custom style]'[one of]I guess I'll do it for one ring.'[or]I guess I should just be glad that you'll pay me at all...'[or]I guess I'll let you decide how much it's worth. Just please don't hurt me?'[in random order][roman type][line break]";
			otherwise:
				say "[one of]You stare up at [NameDesc of M] nervously. [or]You look at the barrier, and then back at the [man of M]. [at random][line break][variable custom style]'[one of]You're going to be gentle with me, right?'[or]You're going to pay me after, right?'[or]But I don't have any condoms... Okay, just this once.'[in random order][roman type][line break]";
		otherwise:
			if M is dickhead patron:
				say "[one of]You mewl playfully. [or]You stick your tongue out playfully. [at random][line break][second custom style]'[one of]Whatever you say goes, Mister!'[or]Hey, I'm just a cheap whore. You get to treat me however you like, Mister!'[or]Ooh yes sir, I am good at following orders, sir. [if the chosen-orifice of M is face]Pleease can I have permission to suck on your tasty fuckstick and swallow your yummy [semen]?'[otherwise]Please use me like your own personal fucksleeve for as long as you like~'[end if][in random order][roman type][line break]";
			otherwise if M is inexperienced patron:
				say "[one of]You smile gently. [or]You giggle playfully. [at random][line break][second custom style]'[one of]Slow down kiddo, we've got all the time in the world. There's no rush, you can use me as you want.'[or]Whatever you say, kiddo. But take your time! You've got all the time you want until you cum.'[in random order][roman type][line break]";
			otherwise if M is gross patron:
				say "[one of]You smile gently. [or]You giggle playfully. [at random][line break][second custom style]'[one of]If I didn't need the money, I'd be doing this for free.'[or]I don't like to think of it as payment, so much as a tip for a job well done.'[in random order][roman type][line break]";
			otherwise:
				say "[one of]You stare up at [NameDesc of M] with a warm inviting smile. [or][if the chosen-orifice of M is face]You obediently get onto your knees and drool at the sight of [his of M] [DickDesc of M][otherwise]You obediently turn around and push your [MediumDesc of hips] into the air[end if]. [at random][line break][variable custom style]'[one of]Your wish is my command, honey.'[or]Honey, I was born to serve handsome [DickDesc of M]s like yours.'[or]I love a man that knows what [he of M] wants.'[in random order][roman type][line break]";
	otherwise if the sex addiction of the player < 6 + the number of patrons in the location of the player: [Multiple patrons!]
		say "[one of]You stare up at the [men of M], in shock that there's [if the number of patrons in the location of the player is 2]more than one[otherwise]so many[end if]. [or]You yelp in fright, not expecting to have to service [if the number of patrons in the location of the player is 2]two at a time[otherwise]quite so many [men of M] at once[end if]. [stopping][line break][variable custom style]'[one of]Look, there's been a mistake, I've never serviced more than one patron at a time before...'[or]Oh come on, this is just too much for one person to handle, surely?!'[or]This cannot be happening...'[stopping][roman type][line break]Unsurprisingly, they completely ignore you.";
	otherwise if the player is not a nympho:
		say "[one of]You stare up at the [men of M] nervously[or]You are paralyzed by a mixture of excitement and hesitation[at random]. [line break][variable custom style]'[one of]You're each going to pay me, right? I'm not doing extra for free.'[or]I don't usually take this many customers at once you know. But just this once, I'll let it slide, as long as you're careful with me.'[line break]As if I really had a choice...[in random order][roman type][line break]";
	otherwise:
		say "[one of]You stare up at the [men of M] and beckon them invitingly with your finger. [or]You obediently turn around and push your [MediumDesc of hips] into the air, spanking it once for good measure. [at random][line break][variable custom style]'[one of]All aboard, gentle[men of M]. Dinner is served.'[or]If I can [if the body soreness of the player < 8]walk[otherwise]even move[end if] by the time you're [if the number of patrons in the location of the player > 2]all[otherwise]both[end if]done, I'm going to be unimpressed.'[or]Yes, yes, this is more like it! If I don't have [DickDesc of M]s in [if the player is male]both my holes[otherwise if the number of patrons in the location of the player is 2]two of my holes[otherwise]all my holes[end if] within the next five seconds I'm gonna be disappointed. Well come on, hurry up!!!'[in random order][roman type][line break]".

To say SexSubmissionFlav of (M - a patron):
	let A be the relevant sex addiction of M;
	if diaper quest is 1:
		say "You [one of]lay still[or]don't resist[or]keep your legs spread[or]smile shyly[in random order] and [one of]let the patron get [his of M] money's worth[or]allow [him of M] to continue[or]allowing [him of M] to use you as a rag doll for [him of M] to enact [his of M] fantasies[in random order].";
	otherwise if the number of patrons penetrating a body part is 1:
		say TwosomeSexSubmission of M;
	otherwise if the number of patrons penetrating a body part is 2:
		say ThreesomeSexSubmission of M;
	otherwise:
		say GangSexSubmission of M.

To say SexResistFlav of (M - a patron):
	if diaper quest is 1:
		say "You [one of]struggle[or]squirm[or]wriggle[in random order] against [his of M] [one of]grasp[or]hold[in random order]!";
	otherwise if the number of patrons penetrating a body part is 1:
		say TwosomeSexResist of M;
	otherwise if the number of patrons penetrating a body part is 2:
		say ThreesomeSexResist of M;
	otherwise:
		say GangSexResist of M.

To say PainResRefusalFlav of (M - a patron):
	say "It hurts too much! You can't bring yourself to resist!";
	say SexSubmissionFlav of M.

To say DelicateResRefusalFlav of (M - a patron):
	let P be the number of patrons in the location of the player;
	say "[if P > 1]There's no way you could fight [P] patrons at once[end if]! You don't dare resist.";
	say SexSubmissionFlav of M.

To say OralAddResRefusalFlav of (M - a patron):
	say "You have to taste [NameDesc of M]'s [semen]. There's no way you can bring yourself to resist!";
	say SexSubmissionFlav of M.

To say OralSlutResRefusalFlav of (M - a patron):
	say "[BigNameDesc of M]'s [DickDesc of M] is too good! You can't bring yourself to resist!";
	say SexSubmissionFlav of M.

To say ThirstResRefusalFlav of (M - a patron):
	say "You're too thirsty. You can't bring yourself to resist!";
	say SexSubmissionFlav of M.

To say TwosomeSexSubmission of (M - a patron):
	let X be the sex addiction of the player;
	if M is penetrating face:
		if X < 6:
			say "[one of]You keep your body as still as you can, and reluctantly hold your mouth open. [BigNameDesc of M] thrusts in and out at a slow but steady pace.[or]You take absolutely no pleasure in holding your mouth open and allowing [NameDesc of M] to continue to use it as a masturbatory aid.[or]You remain silent and try to think about other things as [NameDesc of M] continues to fuck your open mouth.[or]You try not to gag as the tip of [NameDesc of M]'s [DickDesc of M] keeps prodding your tonsils.[or]You hesitantly allow your tongue to gently touch the underside of [NameDesc of M]'s [DickDesc of M] as [he of M] slides in and out of your mouth.[in random order]";
		otherwise if X < 13:
			say "[one of]You whimper gently around [NameDesc of M]'s [DickDesc of M] as [he of M] fucks your face.[or]You skilfully caress [NameDesc of M]'s [DickDesc of M] with your tongue, telling yourself that it's to make sure this is over as quickly as possible.[or]You massage the head of [NameDesc of M]'s [DickDesc of M] with your lips[if the player is wrist bound behind] whilst milking [his of M] shaft with your hands[end if]. You know you're giving into what the game wants, but also at least this way it won't take too long for [him of M] to climax.[or]You take [NameDesc of M] as deep into your mouth as you can manage without gagging. You watch [him of M] shiver with glee.[or]You form a perfect O with your lips around [NameDesc of M]'s shaft and hold still in order to allow [him of M] to fuck your face steadily.[in random order]";
		otherwise:
			say "[one of]You move your head back and forth as fast as you can go, whilst massaging [NameDesc of M]'s balls with your hand, trying to coax [him of M] to orgasm as powerfully as possible.[or]You loudly slurp [NameDesc of M]'s [DickDesc of M], staring up at [him of M] as [his of M] tip prods your tonsils.[or]You hum gently around [NameDesc of M]'s [DickDesc of M], trying to please [him of M] as much as possible.[or]You gobble down [NameDesc of M]'s [DickDesc of M], as far down your throat as you can manage. You giggle happily around [his of M] member as you watch [him of M] shudder with pleasure.[or]You maintain constant eye contact with [NameDesc of M] as you [if the player is wrist bound behind]pull [his of M] [DickDesc of M] out of your mouth for a moment, and stroke it passionately whilst forcing [his of M] entire scrotum into your mouth[otherwise]work your way down [his of M] shaft, letting your tongue touch [his of M] scrotum as you deepthroat [his of M] shaft[end if]. You hum happily as you massage [his of M] balls with your tongue.[in random order]";
	otherwise if M is penetrating a fuckhole:
		let F be a random fuckhole penetrated by M;
		if X < 6:
			say "[one of]You don't want to get any more sore than you already are, so you hold still and try and take it like a champ.[or]You don't want to anger [NameDesc of M], so you just stay completely still and try to relax and let it happen.[or]You cry internally but remain silent and still, trying not to let [NameDesc of M] see your pain.[or]You try not to make a sound as [NameDesc of M] thrusts in and out of your poor [variable F].[or]You grip the bed-sheets as tightly as you can and grit your teeth, as you try to endure the fucking without crying.[in random order]";
		otherwise if X < 13:
			say "[one of]You relax your [variable F], convincing yourself that this is fine, because it's just a game.[or]You slightly hesitantly push back against [NameDesc of M], trying to keep [him of M] happy.[or]You push your face into the pillow and groan gently. You know you're giving into what the game wants, but also at least this way it won't take too long for [him of M] to climax.[or]You find yourself quietly moaning with each thrust of [NameDesc of M]'s [DickDesc of M] into your [variable F].[or]You allow [NameDesc of M] to guide your hips with [his of M] hands, and soon you have fallen into a steady rhythm.[in random order]";
		otherwise:
			say "[one of]You sigh loudly and push back at [NameDesc of M], encouraging [him of M] to keep going.[or]You guide [NameDesc of M]'s hands to your [ShortDesc of hair], and encourage [him of M] to roughly hold your head up like this. You love being treated this way![or]You moan lewdly as [NameDesc of M]'s [DickDesc of M] continues to roughly plunder your [variable F].[or]You hold yourself still and try to unclench your opening as much as possible, to make sure [NameDesc of M] can get balls deep inside.[or]You sluttily gyrate your hips in an attempt to please [NameDesc of M] even further as [he of M] plows [his of M] [DickDesc of M] in and out of your [variable F].[or]You pull forward until just the tiniest bit of the tip of [NameDesc of M]'s [DickDesc of M] is still inside your [variable F], then suddenly throw your hips backwards so that the entire length of [NameDesc of M]'s [DickDesc of M] brutally rushes inside. From the sound that [NameDesc of M] makes in reaction, you guess that [he of M] almost came instantly from the sensation. You smirk inwardly.[in random order]";
	otherwise:
		if X < 6:
			say "[one of]You reluctantly continue pumping [NameDesc of M]'s [DickDesc of M] with your [BreastDesc].[or][if face is not actually occupied]You dejectedly kiss the tip of [NameDesc of M]'s [DickDesc of M] as it thrusts between your [BreastDesc][otherwise]You stare at [NameDesc of M]'s [DickDesc of M] with undisguised disgust as you massage it with your [ShortDesc of breasts][end if].[or]You reluctantly push your [BreastDesc] together as [NameDesc of M] thrusts between them.[at random]";
		otherwise if X < 13:
			say "[one of]Your heart races as you pump [NameDesc of M]'s [DickDesc of M] with your [BreastDesc].[or][if face is not actually occupied]You hesitantly kiss the tip of [NameDesc of M]'s [DickDesc of M] as it thrusts between your [BreastDesc][otherwise]You stare at [NameDesc of M]'s [DickDesc of M] with what you try to tell yourself is curiosity as you massage it with your [BreastDesc][end if].[or]You use your arms to hold your [BreastDesc] together as [NameDesc of M] thrusts between them. It actually feels kind of exciting![at random]";
		otherwise:
			say "[one of]You eagerly pump [NameDesc of M]'s [DickDesc of M] with your [BreastDesc].[or][if face is not actually occupied]You let the tip of [NameDesc of M]'s [DickDesc of M] pop in and out of your mouth as it thrusts between your [BreastDesc][otherwise]You stare at [NameDesc of M]'s [DickDesc of M] with barely contained hunger as you massage it with your [BreastDesc][end if].[or]You eagerly push your [BreastDesc] together as [NameDesc of M] thrusts between them.[at random]".

To say TwosomeSexResist of (M - a patron):
	let X be the sex addiction of the player;
	if M is penetrating face:
		say "[if X < 6][one of]You pull your head back, trying to get [NameDesc of M]'s [DickDesc of M] out of your mouth. But because [he of M] has a tight grip on your wrists, you can't get the full length out![or]You try and pull away as [NameDesc of M] fucks your face fast, but it just encourages [him of M] to thrust even harder![or]You try as hard as you can to get the disgusting [DickDesc of M] out of your mouth, but you can't break [BigNameDesc of M]'s grip on your head![or]You fruitlessly shake your head and can't help but gag as the tip of [NameDesc of M]'s [DickDesc of M] keeps prodding your tonsils.[or]You try and keep your tongue at the base of your mouth so that you don't have to taste the nasty [DickDesc of M] [NameDesc of M] is forcing in and out of your mouth[in random order][otherwise if X < 13][one of]You try to pull away, even though you know [NameDesc of M] has much too strong a grip on your head.[or]You gag loudly as you try to fight against the [DickDesc of M] in your mouth in vain.[or]You push against [NameDesc of M]'s thighs, trying to get [him of M] to slow down.[or]You make offended whines as [NameDesc of M] slams in and out of your mouth, trying to convince both [him of M] and yourself that you aren't an enthusiastic cocksucker.[in random order][otherwise][one of]You playfully push against [NameDesc of M]'s thighs, pretending that you're struggling to cope with [his of M] girth, to make [him of M] feel good.[or]You pretend to try and fight back, just in case anyone running the game is watching.[or]You playfully slap [NameDesc of M]'s butt cheek, as if telling [him of M] off for being so rough.[or]You make a show of whimpering and gagging around [his of M] [DickDesc of M], putting your hands on [NameDesc of M]'s stomach and pretending that you can't take any more[or]You playfully graze [NameDesc of M]'s [DickDesc of M] with your teeth, hoping [he of M]'ll punish you by being even rougher.[or]You give [NameDesc of M] a middle finger and a wink as [he of M] fucks your face.[in random order][end if]";
	otherwise if M is penetrating a fuckhole:
		let F be a random fuckhole penetrated by M;
		if X < 7:
			say "[one of]You desperately do everything you can to get the [DickDesc of M] out of your [variable F], but [NameDesc of M] holds you in place.[or]You don't care if [NameDesc of M] gets angry, you refuse to let [him of M] cum in your [variable F] without putting up a fight![or]You cry out loud in pain and anger, and try to somehow shake [NameDesc of M] out of your [variable F]. But your attempts are so fruitless [he of M] doesn't even realise you're resisting![or]You claw at the bed-sheets, trying to get some grip to pull yourself away from [NameDesc of M], but you can't get enough traction.[or]You try and kick [NameDesc of M] away, but [he of M] catches your foot and forces it back down onto the bed.[in random order]";
		otherwise if X < 14:
			say "[one of]You fight against [NameDesc of M], trying to ignore the feeling of [his of M] throbbing [DickDesc of M] thrusting in and out of your [variable F].[or]You try and wriggle your way out of [NameDesc of M]'s grip, but it's difficult when your [variable F] is full of [his of M] [DickDesc of M]![or]You clamp your mouth shut, refusing to let [NameDesc of M] hear you moan in pleasure.[or]You growl at [NameDesc of M]. [line break][variable custom style]Oooh! I am not enjoying this. I am not enjoying this. I am not enjoying this.[roman type][line break][or]You do everything you can to remove the [DickDesc of M] lodged up your [variable F], but its owner continues to be very insistent that it says firmly inside.[in random order]";
		otherwise:
			say "[one of]You mewl lewdly and pull away from [NameDesc of M], provoking [him of M] into pushing all the way back in with a single powerful thrust.[or]You yelp in pain, pretending to [NameDesc of M] that you're not enjoying the feeling of [his of M] [DickDesc of M] destroying your [variable F].[or]You bend your neck to turn and face [NameDesc of M], and give [him of M] a wink as you playfully kick [him of M] in the thigh with one leg.[or]You push your shoulders up so that they are above your [MediumDesc of hips], giving [NameDesc of M] a much more difficult angle to thrust at. You grin inwardly as [he of M] grabs your head and forces it back down onto the bed.[or]You shake your head wildly, pulling against [NameDesc of M]'s grip on your hair. As [he of M] pulls your hair back tight in response, you find yourself tingling with pleasure as well as pain.[or]You pull forward until just the tiniest bit of the tip of [NameDesc of M]'s [DickDesc of M] is still inside your [variable F], then stop. [big he of M] moves a step forward and the entire length [his of M] [DickDesc of M] brutally rushes back inside your [variable F]. You can't help but shudder in pleasure.[in random order]";
	otherwise:
		say "[if X < 6][one of]You squirm helplessly, completely pinned underneath [NameDesc of M]'s weight as [he of M] fucks your tits![or]You helplessly try to wiggle out from under [NameDesc of M] as [he of M] squeezes your [BreastDesc] around [his of M] shaft.[or][BigNameDesc of M] holds your wrists against the bed, completely shrugging off your attempts to resist [his of M] grip as [he of M] thrusts between your tits[in random order][otherwise if X < 13][one of]You halfheartedly squirm as [NameDesc of M] fucks your tits, looking away from [him of M] as [his of M] [DickDesc of M] bumps your chin.[or]You squirm weakly as [NameDesc of M] forces you to hold your [BreastDesc] together, forming a fuckable pocket for [his of M] [DickDesc of M].[or]You weakly squirm against [NameDesc of M]'s weight, trying not to look as [he of M] thrusts [his of M] [DickDesc of M] between your tits.[in random order][otherwise][one of]You squirm playfully, making sure to push your [BreastDesc] together with your arms as [NameDesc of M] thrusts between them.[or]You pretend to try and fight back as [NameDesc of M] fucks your breasts, just in case anyone running the game is watching.[or]You pretend to struggle as [NameDesc of M] fucks your [BreastDesc].'[in random order][end if]".

To say ThreesomeSexSubmission of (M - a patron):
	let X be the sex addiction of the player;
	let V be a random patron penetrating vagina;
	let F be a random patron penetrating face;
	let A be a random patron penetrating asshole;
	if V is patron and A is patron:[double penetration]
		if X < 7:
			say "[one of]You find yourself stunned into submission as [NameDesc of V] and [NameDesc of A] fuck your [vagina] and [asshole] at the same time.[or]You don't dare more an inch as the intense feelings of being powerfully plowed in both the [vagina] and [asshole] at the same time threaten to overwhelm you.[or]You overcome your temptation to lash out against [NameDesc of V] and [NameDesc of A], and instead hold perfectly still and pray that your double penetration session will be over soon.[or]Your mind reels as you try to deal with the intensity of having both your lower orifices fucked at the same time. As one pushes in the other pulls out, giving you absolutely no time to mentally steel yourself for the next thrusts.[or]Your legs twitch uncontrollably as you try to hold your hips as still as possible in order to not get seriously injured from this brutal double penetration.[in random order]";
		otherwise if X < 14:
			say "[one of]Partially terrified of getting hurt and partially from pleasure, you find yourself not resisting [NameDesc of V] and [NameDesc of A] as they make good use of both of your fuckholes, with no evident concern for your feelings.[or]You somewhat hesitantly push back against [NameDesc of V] and [NameDesc of A], trying to keep them happy.[or]You push your face into the pillow and groan loudly. You know you're giving into what the game wants, but also at least this way it won't take too long for them to climax.[or]You find yourself lewdly yelping with each thrust of [NameDesc of V] and [NameDesc of A] [DickDesc of M]s into your [vagina] and [asshole].[or]You allow [NameDesc of V] and [NameDesc of A] to guide your hips with their hands, and soon you have fallen into a steady rhythm.[in random order]";
		otherwise:
			say "[one of]You mewl lewdly and push back against [NameDesc of V] and [NameDesc of A] friend, encouraging them to keep going.[or]You squeal submissively as you are overpowered and doubly bred by the two strong [men of M]. You love being treated this way![or]You moan lewdly as [NameDesc of V] and [NameDesc of A] [DickDesc of M]s continue to roughly plunder your fuckholes.[or]You let out a guttural moan of pure bliss as [NameDesc of V] and [NameDesc of A] suddenly change their rhythm, pushing both of their [DickDesc of M]s into you as deep as they can go at the same time. You feel impossibly full, and you love it.[or]You [if face is not actually occupied]loudly encourage[otherwise]do everything you can to encourage[end if] the patrons as they destroy your holes and frazzle your brain with their brutal fucking.[or]You shiver as you move your ass up and down in rhythm with the patrons. One [DickDesc of M] slides in as the other slides out, frazzling your brain with constant pleasure.[in random order]";
	otherwise if F is patron and (A is patron or V is patron):[spitroast]
		let H be F;
		if A is patron, now H is A;
		otherwise now H is V;
		let R be a random orifice penetrated by H;
		if X < 7:
			say "[one of]You hold onto [NameDesc of F]'s thighs, steadying yourself as [NameDesc of H] pounds your [variable R].[or]You try as best as you can to just relax and let it be over soon. You make a muffled noise of disgust as [NameDesc of F] high fives [NameDesc of H] over your back.[or]You try to grunt in frustration at the [DickDesc of H] firmly lodged in your [variable R] but it ends up sounding like a sexual moan around the [DickDesc of F] in your mouth.[or]You whimper and hold still, trying to decide which is worse, the feeling of the [DickDesc of H] in your [variable R] or the taste of the [DickDesc of F] in your mouth.[or]You reluctantly allow yourself to fall into the rhythm of the two [men of M] fucking you from either end.[in random order]";
		otherwise if X < 13:
			say "[one of]Unsure of your own reasons, you find yourself not resisting [NameDesc of F] and [NameDesc of H] use your mouth and [variable R].[or]You hesitantly push back against [NameDesc of H], causing [NameDesc of F] to shiver with pleasure as you quietly slurp [his of F] [DickDesc of F].[or]You find yourself moaning into [NameDesc of F]'s [DickDesc of F] with each thrust of the [DickDesc of H] in your [variable R].[or]You allow [NameDesc of F] and [NameDesc of H] friend to guide your hips and shoulders with their hands, and soon you have fallen into a steady rhythm.[in random order]";
		otherwise:
			say "[one of]You mewl lewdly around the [DickDesc of F] in your mouth and push back against the [DickDesc of M] in your [variable R].[or]You make sure to gag loudly as your face is pushed even deeper onto [NameDesc of F]'s [DickDesc of F], making sure [he of F] and the patron fucking your [variable R] know just how thoroughly they are overpowering and dominating you.[or]You caress [NameDesc of F] balls whilst pushing back against [NameDesc of H], gleefully pleasuring the [DickDesc of M] fucking you from both ends.[or]You let out a guttural moan of pure bliss as [NameDesc of F] and [NameDesc of H] suddenly change their rhythm, pushing both of their [DickDesc of M]s into you as deep as they can go at the same time. You feel completely impaled between the two gents, and you love it.[or]Your eyes roll into the back of your head as you lose yourself in the pleasure of being sandwiched between two delicious [DickDesc of M]s.[or]If you weren't so busy on giving [NameDesc of F] the blowjob of [his of M] life, you would be grinning from ear to ear in bliss thanks to the powerful, steady [variable R]-fucking from [NameDesc of M].[in random order]";
	otherwise:
		let B be a random patron penetrating breasts;
		if F is patron:[bust + face]
			if X < 7:
				say "[one of]You reluctantly suck [NameDesc of F]'s [DickDesc of F] as you pump the [Dickdesc of B] between your [BreastDesc].[or]You angrily slurp the [DickDesc of F] in your mouth as you let [NameDesc of B] fuck your [BreastDesc].[or]You lament your awful view of [NameDesc of F]'s swinging balls as [NameDesc of B] thrusts between your [BreastDesc]. You try your best to hide your disgust as you endure [NameDesc of F]'s eager facefucking.[or]You reluctantly hold your [BreastDesc] together for [NameDesc of B] as [NameDesc of F] fucks your face.[or]You have nothing to look at but [NameDesc of F]'s balls as [he of F] fucks your face. [big his of F] [DickDesc of F] muffles your disgusted groans as you massage [NameDesc of B]'s [DickDesc of B] with your [BreastDesc].[in random order]";
			otherwise if X < 13:
				say "[one of]You hesitantly suck [NameDesc of F]'s [DickDesc of F] as you pump the [Dickdesc of B] between your [BreastDesc].[or]You slurp the [DickDesc of F] in your mouth as [NameDesc of B] fucks your [BreastDesc], accepting your place as nothing but their fucktoy.[or][BigNameDesc of F]'s balls slap your nose as [NameDesc of B] thrusts between your [BreastDesc]. You endure [NameDesc of F]'s eager facefucking with the knowledge that this degradation is actually turning you on.[or]You hold your [BreastDesc] together for [NameDesc of B] as [NameDesc of F] fucks your face.[or]You have no choice but to breath in [NameDesc of F]'s musk as [he of F] fucks your face. You slurp quietly as you blindly pump [NameDesc of B]'s [DickDesc of B] with your [BreastDesc].[in random order]";
			otherwise:
				say "[one of]You hungrily slurp [NameDesc of F]'s [DickDesc of F] as you pump the [Dickdesc of B] between your [BreastDesc].[or]You loudly slurp [DickDesc of F] in your mouth as [NameDesc of B] fucks your [BreastDesc], making sure they definitely get their money's worth.[or]You have a perfect view of [NameDesc of F]'s balls slapping your nose as [he of F] fucks your face. You moan into [him of M] as you pump [NameDesc of B]'s [DickDesc of B] with your [BreastDesc], loving the degradation.[or]You eagerly hold your [BreastDesc] together for [NameDesc of B] as [NameDesc of F] fucks your face.[or]You eagerly breath in [NameDesc of F]'s musk as [his of M] balls slap your face, stroking [his of M] shaft with your tongue as you pump [NameDesc of B]'s [DickDesc of B] with your [BreastDesc].[in random order]";
		otherwise:[bust + fuckhole]
			let H be M;
			if A is patron, now H is A;
			otherwise now H is V;
			let R be a random orifice penetrated by H;
			if X < 7:
				say "[one of]You dejectedly pump [NameDesc of B]'s [DickDesc of B] with your [BreastDesc], doing your best to just ignore [NameDesc of H]'s thrusting.[or]You lie there in silence, not even bothering to conceal your disdain as [NameDesc of B] and [NameDesc of H] use your tits and [variable R].[or]You scowl, massaging [NameDesc of B]'s [DickDesc of B] with your [BreastDesc] as [NameDesc of H] fucks your [variable R].[or]You reluctantly hold your [BreastDesc] together for [NameDesc of B] as [NameDesc of H] uses your [variable R].[or]You try your best to look enthusiastic as [NameDesc of B] thrusts between your [BreastDesc], trying your best to focus on that instead of the [DickDesc of H] pounding your [variable R].[in random order]";
			otherwise if X < 14:
				say "[one of]You hesitantly pump the [DickDesc of B] between your [BreastDesc], enduring every thrust of the [DickDesc of H] in your [variable R].[or]You accept your place as nothing but a receptacle for the patrons and their lust, moaning quietly as they aggressively use your tits and [variable R].[or]You endure [NameDesc of H]'s powerful thrusting with all-too-much enthusiasm, panting with excitement as you massage [NameDesc of B]'s [DickDesc of B] with your [BreastDesc].[or]You hesitantly push your [BreastDesc] together for [NameDesc of B], moaning quietly as [NameDesc of H] uses your [variable R].[or]You look up at [NameDesc of B] as [he of B] thrusts between your [BreastDesc], trying to distract yourself from how good [NameDesc of H]'s [DickDesc of H] feels slamming in and out of your [variable R].[in random order]";
			otherwise:
				say "[one of]You eagerly pump the [DickDesc of B] between your [BreastDesc] as [NameDesc of H] pounds your [variable R].[or]You eagerly allow the patrons to use you, mewling lewdly as they aggressively use your tits and [variable R] to sate their lust.[or]You endure [NameDesc of H]'s powerful thrusting with enthusiasm, working your hips into [his of H] rhythm as you massage [NameDesc of B]'s [DickDesc of B] with your [BreastDesc].[or]You push your [BreastDesc] together for [NameDesc of B], moaning theatrically as [NameDesc of H] uses your [variable R].[or]You stare up at [NameDesc of B] as [he of B] thrusts between your [BreastDesc], moaning through your teeth as [NameDesc of H]'s incredible [DickDesc of H] slams in and out of your [variable R].[in random order]".

To say ThreesomeSexResist of (M - a patron):
	let X be the sex addiction of the player;
	let V be a random patron penetrating vagina;
	let F be a random patron penetrating face;
	let A be a random patron penetrating asshole;
	if A is patron and V is patron:
		if X < 7:
			say "[one of]You thrash around as much as you can, but you there's nothing you can do as [NameDesc of V] and [NameDesc of A] pound your [vagina] and [asshole].[or]You fight against the intense feelings of being powerfully plowed in both the [vagina] and [asshole] at the same time, refusing to lay still.[or]You lash out against [NameDesc of V] and [NameDesc of A], but they work together to hold you in place, egging each other on as they pump away at your fuckholes.[or]You gnash your teeth and growl at [NameDesc of V] and [NameDesc of A], but that's all you can manage given your situation. As one pushes in the other pulls out, giving you absolutely no time to mentally steel yourself for the next thrust.[or]You squirm helplessly as you are brutally double penetrated by [Namedesc of V] and [NameDesc of A].[in random order]";
		otherwise if X < 14:
			say "[one of]You whimper and timidly try to push [NameDesc of V] and [NameDesc of A] away as they make good use of your fuckholes, with no evident concern for your feelings.[or]You refuse to push back against [NameDesc of V] and [NameDesc of A], pretending you're not enjoying yourself[or]You wrestle against [NameDesc of V] and [NameDesc of A] as they brutally pound your fuckholes, trying to convince yourself you don't love being manhandled.[or]You do everything you can not to enjoy yourself as [NameDesc of V] and [NameDesc of A] alternately pound your poor fuckholes.[or]You erratically throw your body weight around as [NameDesc of V] and [NameDesc of A] pound your fuckholes, knowing you might enjoy yourself if you let them settle into a good rhythm.[in random order]";
		otherwise:
			say "[one of]You shake your body, irritating the patrons trying to use your fuckholes, and earn yourself a stern slap on the cheek. You can't help but grin wildly.[or]You play fight back as you are overpowered and doubly bred by the two strong [men of M]. You love being treated this way![or]You scratch and growl playfully as [NameDesc of V] and [NameDesc of A]'s [DickDesc of V]s continue to roughly plunder your fuckholes.[or]You yawn, pretending that you are bored, to try and wind the [men of M] up. You are then forced to let out a guttural moan of pure bliss as [NameDesc of V] and [NameDesc of A] suddenly change their rhythm, pushing both of their [DickDesc of V]s into you as deep as they can go at the same time. You feel impossibly full, and you love it.[or]You move your hips around, trying to interrupt their rhythm and piss them off. [BigNameDesc of V] smacks you roughly, pounding your [vagina] even harder as [NameDesc of A] treats your [asshole] in kind. You can't believe how much this is turning you on![in random order]";
	otherwise if F is patron and (A is patron or V is patron):
		let H be F;
		if A is patron, now H is A;
		otherwise now H is V;
		let R be a random orifice penetrated by H;
		if X < 7:
			say "[one of]You helplessly push on [NameDesc of F]'s thighs as [NameDesc of H] brutally takes you from behind.[or]You do your best to twist and squirm as you are spit-roasted by [NameDesc of F] and [NameDesc of H].[or]You grunt indignantly around [NameDesc of F]'s [DickDesc of F] as [NameDesc of H] slaps your ass, helplessly fighting against their grip.[or]You thrash in [NameDesc of H]'s grip, accidentally gagging yourself on [NameDesc of F]'s [DickDesc of F] as you try to wriggle out of your grip.[or]You refuse to stay still, doing everything you can, but making no headway as you are spit-roasted by [NameDesc of F] and [NameDesc of H].[or][NameDesc of H] rewards your struggling with an even harder [if A is patron][asshole][otherwise][vagina][end if]-pounding, which just makes it even harder to keep from gagging on [NameDesc of F]'s [DickDesc of F]![in random order]";
		otherwise if X < 14:
			say "[one of]You whimper and weakly try to take [NameDesc of F]'s [DickDesc of F] out of your mouth as [NameDesc of H] takes you from behind. They effortlessly shrug off your struggling with no evident concern for your feelings.[or]You refuse to push back against [NameDesc of F] and [NameDesc of H], trying to convince yourself you're not enjoying yourself.[or]You wrestle against [NameDesc of V] and [NameDesc of H] as the pound you from either end, heart racing from the feeling of being manhandled.[or]You accidentally gag yourself on [NameDesc of F]'s [DickDesc of F] as you try to twist out of [NameDesc of H]'s grip, which just earns you an even more brutal [variable R] pounding.[or]You wiggle and squirm helplessly, hoping the [DickDesc of F] in your mouth is at least muffling your moans as you are rhythmically taken from both ends by [NameDesc of F] and [NameDesc of H].[in random order]";
		otherwise:
			say "[one of]You shake your body as the patrons spitroast you, irritating them enough to earn a brutal gagging session. This is so fun![or]You pretend to fight back as you are spit-roasted by the two strong [men of M]. You LOVE being treated this way![or]You playfully fight against [NameDesc of F] and [NameDesc of H]'s grips as they pound you from both ends.[or]You slap [NameDesc of F] and kick [NameDesc of H] as hard as you can, hoping to get punished for it. You get your wish, and you let out a guttural moan of pure bliss as they suddenly change their rhythm, pushing both of their [DickDesc of F]s into you as deep as they can go at the same time. You feel completely impaled between the two gents, and you love it.[or]You squirm as much as you can, loving the feeling of being forcibly overpowered and dominated by two strong [men of M] as they fuck you from both ends.[in random order]";
	otherwise if F is patron:[bust + face]
		let B be a random patron penetrating breasts;
		if X < 7:
			say "[one of]You yell into the [DickDesc of F] in your mouth and fruitlessly kick your legs, completely pinned down as [NameDesc of B] thrusts between your [BreastDesc].[or]You gag on [NameDesc of F]'s [DickDesc of F], trying to wrench your wrists out of [NameDesc of B]'s grip as [he of B] forces you to help [him of B] tittyfuck you.[or]You struggle as much as you can, with only [NameDesc of F]'s balls to look at [NameDesc of B] forces you to tittyfuck [him of M]. You angrily kick your feet as [NameDesc of F] gags you with [his of F] [DickDesc of F], effortlessly shrugging off your attempts to escape the degradation.[or]You squirm desperately as [NameDesc of B] uses your [BreastDesc], unable to push [NameDesc of F] away as [he of F] brutally fucks your face.[or]You squirm angrily, the feeling of [NameDesc of F]'s balls slapping your face only degrading you further as you try to get away. [BigNameDesc of B] effortlessly shrugs off your attempts to break [his of B] grip as [he of B] fucks your [BreastDesc].[in random order]";
		otherwise if X < 13:
			say "[one of]You grunt into the [DickDesc of F] in your mouth and weakly kick your legs, knowing [NameDesc of B] has you completely pinned down as [he of B] thrusts between your [BreastDesc].[or]Your heart races as [NameDesc of F] gags you with [his of F] [DickDesc of F], completely unable, or perhaps just unwilling to resist as [NameDesc of B] fucks your [BreastDesc].[or]You can't help but gag as [NameDesc of F] forces you to deepthroat [his of F] [LongDickDesc of F]. You can't see [NameDesc of B] (all you can see is [NameDesc of F]'s balls), but you can feel how rough [he of B] is, slapping your [BreastDesc] around as [he of B] thrusts between them.[or][BigNameDesc of B] pinches your nipples as [he of B] aggressively uses your [BreastDesc], leaving you with little ability, not to mention will to resist as [NameDesc of F] brutally fucks your face.[or]You squirm halfheartedly, [NameDesc of F]'s [if M is gross patron]sweaty [end if]balls slapping your face as [NameDesc of B] roughly uses your tits. Completely overpowered and dominated by two strong [men of M], you're not sure whether you actually have a problem with the position you're in.[BigNameDesc of B] has no trouble holding onto your wrists as [he of B] thrusts between your [BreastDesc].[in random order]";
		otherwise:
			say "[one of]You moan into the [DickDesc of F] in your mouth and playfully kick your legs, loving the feeling of being completely pinned down as [NameDesc of B] thrusts between your [BreastDesc].[or]You gag on [NameDesc of F]'s [DickDesc of F] as [NameDesc of B] fucks your tits, telling yourself you don't love the feeling of being treated like a cheap fucktoy.[or]You pretend to struggle, loudly gagging on [NameDesc of F]'s [DickDesc of F] and letting [NameDesc of B] 'force' you to tittyfuck [him of M] as you squirm against [his of B] weight.[or]You squirm and intentionally piss [NameDesc of F] off, earning yourself an even deeper, harder facefucking as [NameDesc of B] roughly thrusts between your [BreastDesc].[or]You play squirm [NameDesc of F]'s balls repeatedly slap your face, loving the face that there's nothing you can do to escape this degradation. [BigNameDesc of B] forces you to hold your [BreastDesc] together around [his of M] [DickDesc of B] as you loudly gag on [his of B] friend's shaft.[in random order]";
	otherwise:
		let B be a random patron penetrating breasts;
		let H be M;
		if A is patron, now H is A;
		otherwise now H is V;
		let R be a random orifice penetrated by H;
		if X < 7:
			say "[one of]You helplessly push against [NameDesc of B] as [he of M] uses your [BreastDesc], unable to resist [NameDesc of H] as [he of H] uses your [variable R].[or]You do everything you can to fight against the patrons as they use your tits and [variable R]. It accomplishes nothing, aside from making them treat you even more roughly.[or]You squirm desperately, trying to free your wrists as [NameDesc of F] brutally pounds your poor [variable R]. You make zero headway, and you're forced to hold your [BreastDesc] together as [NameDesc of B] thrusts between them.[or]You do everything you can to fight the patrons, but it's no use. Your wrists are held in place by [NameDesc of B] as [he of B] uses your [BreastDesc], and [NameDesc of H] easily holds onto your legs as [he of H] drills your [variable R], working together to hold you in place.[or]You fight [NameDesc of B] as [he of B] fucks your [BreastDesc], helplessly kicking your legs as [NameDesc of H] mercilessly jackhammers your [variable R].[in random order]";
		otherwise if X < 14:
			say "[one of]You struggle weakly as [NameDesc of H] uses your [variable R], trying your best to stifle your moans as [NameDesc of B] fucks your [BreastDesc].[or]You squirm helplessly, trying not to moan as the patrons use your tits and [variable R]. They continue with no evident concern for your feelings.[or]You struggle meekly, knowing it's no use. Your wrists are held in place by [NameDesc of B] as [he of B] uses your [BreastDesc], and [NameDesc of H] easily holds onto your legs as [he of H] drills your [variable R], working together to hold you in place.[or]You weakly squirm as [NameDesc of H] pounds your [variable R], trying not to stare at [NameDesc of B]'s [DickDesc of B] as it thrusts between your [BreastDesc].[or]You look up at [NameDesc of B] in defeat as [he of B] fucks your [BreastDesc], weakly kicking your legs as [NameDesc of H] mercilessly jackhammers your [variable R].[in random order]";
		otherwise:
			say "[one of]You struggle playfully as the patrons fuck your [variable R] and [BreastDesc], knowing you're completely pinned under [NameDesc of B]'s weight.[or]You pretend to squirm, openly enjoying yourself as the patrons use your [BreastDesc] and [variable R].[or]You struggle playfully as the patrons manhandle you, testing their grip. Your wrists are held in place by [NameDesc of B] as [he of B] uses your [BreastDesc], and [NameDesc of H] easily holds onto your legs as [he of H] drills your [variable R], working together to hold you in place.[or]You do everything you can to piss off the patrons as they tittyfuck you and pound your [variable R], hoping for a really brutal punishment.[or]You pretend to fight [NameDesc of B] as [he of B] fucks your [BreastDesc], screaming in pure bliss as [NameDesc of H] ruins your [variable R].[in random order]".

To say GangSexSubmission of (M - a patron):
	let V be a random patron penetrating vagina;
	let F be a random patron penetrating face;
	let A be a random patron penetrating asshole;
	let B be a random patron penetrating breasts;
	let X be the sex addiction of the player;
	if B is patron and V is patron and F is patron and A is patron:[everything]
		if X < 7:
			say "[one of]You endure the [DickDesc of F] in your mouth, the one in your [asshole], and the one in your [vagina] in silence, reluctantly pumping [NameDesc of B]'s shaft as [he of B] thrusts between your [BreastDesc].[or]You reluctantly suck the [DickDesc of F] in your mouth, halfheartedly pumping the one between your [BreastDesc] as [NameDesc of V] and [NameDesc of A] go to town on your [vagina] and [asshole].[or]You whimper and hold still, trying to decide which is worse, the feeling of the [DickDesc of V] in your [vagina], the stretching of the [DickDesc of A] in your [asshole], the taste of the [DickDesc of F] in your mouth, or the feeling of the [LongDickDesc of B] between your [BreastDesc].[or]You force yourself not to resist as [NameDesc of V] and [NameDesc of A] take your [vagina] and [asshole], reluctantly pumping [NameDesc of B]'s [DickDesc of B] with your [BreastDesc] as [NameDesc of F]'s balls slap your face.[or][BigNameDesc of F]'s balls slap your face as you reluctantly pump [NameDesc of B]'s [DickDesc of B] with your [BreastDesc]. Shame swirls around inside you as you degrade yourself further, lying there willingly as [NameDesc of A] and [NameDesc of V] use your fuckholes.[in random order]";
		otherwise if X < 13:
			say "[one of][BigNameDesc of F]'s [DickDesc of F] muffles your moans as [NameDesc of A] and [NameDesc of V] use your fuckholes. You pump [NameDesc of B]'s [DickDesc of B] with your [BreastDesc], heart racing from the rush of being used by four [men of M] at once.[or]You slurp the [DickDesc of F] in your mouth and pump the one between your [BreastDesc], thankful that your moans are muffled at least a little bit as [NameDesc of V] and [NameDesc of A] thoroughly use your [vagina] and [asshole].[or]You're unsure how to feel about yourself as you allow the patrons to make you air tight, massaging [NameDesc of B]'s [DickDesc of B] with your [BreastDesc] as [NameDesc of F]'s balls slap your face.[or]You don't resist as the patrons gangbang you, trying to figure out what's stopping you, the feeling of the [DickDesc of V] in your [vagina], the stretching of the [DickDesc of A] in your [asshole], the taste of the [DickDesc of F] in your mouth, or the feeling of the [LongDickDesc of B] between your [BreastDesc].[or][BigNameDesc of F]'s balls slap your face as you rub [NameDesc of B]'s [DickDesc of B] with your [BreastDesc]. Somewhere deep down, you know you love the degradation of not even being able to see other two as the fuck your [vagina] and [asshole].[in random order]";
		otherwise:
			say "[one of]You hungrily slurp [NameDesc of F]'s [DickDesc of F], giving [NameDesc of B] the tittyfuck of [his of B] life as [NameDesc of A] and [NameDesc of V] use your fuckholes.[or]You loudly slurp [DickDesc of F] in your mouth as and pump the one between your [BreastDesc], making absolutely certain the patrons using your fuckholes aren't the only ones to get their money's worth.[or]You relish the feeling of [NameDesc of F]'s balls slapping your face as you massage [NameDesc of B]'s [Dickdesc of B] with your [BreastDesc], moaning into [NameDesc of F]'s [DickDesc of F] as [NameDesc of V] and [NameDesc of A] take your [vagina] and [asshole].[or]You're eagerly allow the patrons to make you airtight, massaging [NameDesc of B]'s [DickDesc of B] with your [BreastDesc] as [NameDesc of F]'s balls slap your face.[or]You eagerly submit to the gangbang, trying to figure out what feels best, the feeling of the [DickDesc of V] in your [vagina], the stretching of the [DickDesc of A] in your [asshole], the taste of the [DickDesc of F] in your mouth, or the feeling of the [LongDickDesc of B] between your [BreastDesc].[in random order]";
	otherwise if B is not patron:[holes + face]
		if X < 7:
			say "[one of]You hold onto [NameDesc of F]'s thighs, trying not to gag on [his of F] [DickDesc of F] as [NameDesc of A] and [NameDesc of V] energetically take your fuckholes.[or]You try as best as you can to just relax as the patrons triple penetrate you. You make a muffled noise of disgust as [NameDesc of F] exchanges high fives with [his of F] friends.[or]You try to grunt in frustration at the [DickDesc of M]s firmly lodged in your [vagina] and [asshole] but it ends up sounding like a sexual moan around the [DickDesc of F] in your mouth.[or]You whimper and hold still, trying to decide which is worse, the feeling of the [DickDesc of M] in your [vagina], the stretching of the [DickDesc of M] in your [asshole] or the taste of the [DickDesc of M] in your mouth.[or]You try and allow yourself to fall into a rhythm with the three [men of M] fucking your holes, but it is really difficult because they are all thrusting at different speeds.[in random order]";
		otherwise if X < 14:
			say "[one of]Unsure of your own reasons, you find yourself not resisting [NameDesc of M] and [his of M] friends as they make good use of your mouth, [vagina] and [asshole].[or]You are completely overwhelmed by the feeling of being made airtight. You grip the bed-sheets tightly and groan loudly around the [DickDesc of M] in your mouth as [NameDesc of V] and [NameDesc of A] double penetrate you.[or]You find yourself lewdly yelping with each thrust of the [DickDesc of M] in your [asshole], which seems to be stimulating the [DickDesc of M] in your mouth even more. [NameDesc of V] isn't content to go unnoticed, pounding your [vagina] even harder.[or]You shudder and make an incomprehensible sound as all three [DickDesc of M]s are pushed as deep as they can go at the same time.[in random order]";
		otherwise:
			say "[one of]You mewl lewdly around the [DickDesc of M] in your mouth and push back against the [DickDesc of M]s in your [vagina] and [asshole].[or]You gag loudly as your face is pushed even deeper onto [NameDesc of F]'s [DickDesc of F], making sure [he of F] and both [his of F] friends know just how thoroughly they are overpowering and dominating you.[or]You giggle around the cock in your throat as all three [DickDesc of M]s are pushed as deep as they can go at the same time, and are then used to lift you off the bed, with no hands.[or]You pull apart your [AssDesc] to help the two patrons in your [vagina] and [asshole] get as deep as they can, whilst at the same time bobbing your head back and forth and making lewd gagging noises like a porn star.[or]You lose yourself in the pleasure of being sandwiched between three delicious [DickDesc of M]s.[or]If you weren't so busy on giving [NameDesc of F] in front of you the blowjob of [his of M] life, you would be grinning from ear to ear in bliss thanks to the powerful, steady dual pounding from [NameDesc of A] and [NameDesc of V].[in random order]";
	otherwise if F is patron:[face + bust + hole]
		let H be F;
		if A is patron, now H is A;
		otherwise now H is V;
		let R be a random orifice penetrated by H;
		if X < 7:
			say "[one of]You hold back your frustration as you are spit-roasted by [NameDesc of F] and [NameDesc of H], reluctantly pumping [NameDesc of B]'s shaft as [he of B] thrusts between your [BreastDesc][or]You reluctantly suck the [DickDesc of F] in your mouth, halfheartedly pumping the one between your [BreastDesc] as [NameDesc of H] fucks your [variable R].[or]You dejectedly push your [BreastDesc] together around [NameDesc of B]'s [Dickdesc of B], with nothing to look at but [NameDesc of F]'s swinging balls as [NameDesc of H] drills your [variable R].[or]You force yourself not to resist as [NameDesc of F] and [NameDesc of H] take you from both ends, reluctantly pushing your [BreastDesc] together around [NameDesc of B]'s [LongDickDesc of B].[or][BigNameDesc of F]'s balls slap your face as you reluctantly pump [NameDesc of B]'s [DickDesc of B] with your [BreastDesc]. You force yourself to endure the further degradation of not even being able to see [NameDesc of H] as [he of H] uses your [variable R].[in random order]";
		otherwise if X < 13:
			say "[one of][BigNameDesc of F]'s [DickDesc of F] muffles your moans as [NameDesc of H] fucks your [variable R]. Your heart races from the rush of being used by three [men of M] at the same time as [NameDesc of B] thrusts between your [BreastDesc][or]You slurp the [DickDesc of F] in your mouth and pump the one between your [BreastDesc], thankful that your moans are muffled as [NameDesc of H] pounds your [variable R].[or]You're unsure how to feel about yourself as you willingly massage [NameDesc of B]'s [DickDesc of B] with your [BreastDesc], with nothing to look at but [NameDesc of F]'s swinging balls as [NameDesc of H] drills your [variable R].[or]You don't resist as [NameDesc of F] and [NameDesc of H] take you from both ends, hesitantly pumping [NameDesc of B] [LongDickDesc of B] with your breasts.[or][BigNameDesc of F]'s balls slap your face as you use your [BreastDesc] to pleasure [NameDesc of B]. Somewhere deep down, you know you love the degradation of not even being able to see [NameDesc of H] as [he of H] uses your [variable R].[in random order]";
		otherwise:
			say "[one of]You hungrily slurp [NameDesc of F]'s [DickDesc of F] as [NameDesc of H] fucks your [variable R]. You mewl lewdly as [NameDesc of B] thrusts between your [BreastDesc].[or]You loudly slurp [DickDesc of F] in your mouth as and pump the one between your [BreastDesc], making absolutely certain the patron fucking your [variable R] isn't the only one to get [his of H] money's worth.[or]You love the feeling of [NameDesc of F]'s balls slapping your face as you massage [NameDesc of B]'s [Dickdesc of B] with your [BreastDesc], moaning into [NameDesc of F]'s [DickDesc of F] as [NameDesc of H] drills your [variable R].[or]You eagerly polish [NameDesc of F]'s [DickDesc of F] and massage [NameDesc of B]'s [DickDesc of B] with your tits, thoroughly enjoying the feeling of [NameDesc of H]'s [DickDesc of H] as it slams in and out of your [variable R].[or][BigNameDesc of F]'s balls slap your face as you massage [NameDesc of B]'s [DickDesc of B] with your [BreastDesc]. You love the degradation of not even being able to see [NameDesc of H] as [he of H] claims your [variable R].[in random order]";
	otherwise:[bust + holes]
		if X < 7:
			say "[one of]You dejectedly pump [NameDesc of B]'s [DickDesc of B] with your [BreastDesc], trying (and failing) to ignore [NameDesc of A] and [NameDesc of V]'s relentless double penetration.[or]You lie there in silence, not even bothering to conceal your disdain as the patrons use your [vagina], breasts, and [asshole].[or]You whimper and hold still, trying to decide which is worse, the feeling of the [DickDesc of M] in your [vagina], the stretching of the [DickDesc of M] in your [asshole] or the look on [NameDesc of B]'s face as [he of B] thrusts between your [BreastDesc].[or]You try and allow yourself to fall into a rhythm with the three [men of M] using your body but it is really difficult because they are all thrusting at different speeds.[or]You reluctantly hold your [BreastDesc] together for [NameDesc of B], holding in your frustration as [NameDesc of A] and [NameDesc of V]'s [DickDesc of M]s slam in and out of your fuckholes.[or]You try your best to look enthusiastic as [NameDesc of B] thrusts between your [BreastDesc], trying your best to focus on that instead of the [DickDesc of M]s pounding your [vagina] and [asshole].[in random order]";
		otherwise if X < 14:
			say "[one of]You hesitantly pump the [DickDesc of B] between your [BreastDesc], unable to keep from moaning as you endure the double penetration from [his of M] friends.[or]You accept your place as nothing but a receptacle for the patrons and their lust, moaning quietly as they use your tits, [asshole] (especially your [asshole]), and [vagina].[or]You endure [NameDesc of V] and [NameDesc of A]'s double penetration with what you tell yourself isn't enthusiasm, panting with excitement as you pump [NameDesc of B]'s [LongDickDesc of B] with your [BreastDesc].[or]You push your [BreastDesc] together for [NameDesc of B], completely unable to control your moaning as [his of B] friends drill your [vagina] and [asshole].[or]You look up at [NameDesc of B] as [he of B] thrusts between your [BreastDesc], trying to distract yourself from how good [NameDesc of V] and [NameDesc of A]'s [DickDesc of A] feel slamming in and out of your fuckholes.[in random order]";
		otherwise:
			say "[one of]You eagerly pump the [DickDesc of B] between your [BreastDesc] as [NameDesc of A] and [NameDesc of V] pound your fuckholes.[or]You eagerly allow the patrons to use you, mewling lewdly as they use your tits, [asshole] (especially your [asshole]) and [vagina] to sate their lust.[or]You endure the double penetration with enthusiasm, working your hips into [NameDesc of V] and [NameDesc of A]'s rhythm as you massage [NameDesc of B]'s [DickDesc of B] with your [BreastDesc].[or]You push your [BreastDesc] together for [NameDesc of B], locking your legs around [NameDesc of V]'s waist as [he of V] fucks your [vagina], and moaning like a porn star as [NameDesc of A] drills your [asshole].[or]You make fuck-me eyes at [NameDesc of B] as [he of B] thrusts between your [BreastDesc], moaning nice and loud so [NameDesc of V] and [NameDesc of A] know you're enjoying yourself as they double penetrate your fuckholes.[in random order]".

To say GangSexResist of (M - a patron):
	let V be a random patron penetrating vagina;
	let F be a random patron penetrating face;
	let A be a random patron penetrating asshole;
	let B be a random patron penetrating breasts;
	let X be the sex addiction of the player;
	if B is patron and V is patron and F is patron and A is patron:[everything]
		if X < 7:
			say "[one of]You kick your legs helplessly, gagging on [NameDesc of F]'s [DickDesc of F] as [NameDesc of V] and [NameDesc of A] use your fuckholes. You'd use your arms too, but [NameDesc of B] is forcing you to squeeze your [BreastDesc] together as [he of M] thrusts between them.[or]You struggle as hard as you can, but the patrons have you boxed in from every side, keeping you firmly in place as they fuck your [vagina], mouth, [asshole], and even your [BreastDesc].[or]You grunt indignantly around [NameDesc of F]'s [DickDesc of F], squirming as much as you can, but still completely pinned between [NameDesc of V], [NameDesc of B], and [NameDesc of A] as they use your [vagina], breasts, and [asshole].[or]Pinned underneath [NameDesc of B]'s weight, there's nothing you can do as you are brutally triple penetrated by [NameDesc of F], [NameDesc of V] and [NameDesc of A]. Still, you refuse to do anything to help [NameDesc of B] use your [BreastDesc]![or][BigNameDesc of B] forces you to hold your [BreastDesc] together for [him of B] as [his of M] friends use your [vagina], mouth, and [asshole].[or]You do everything you can to fight the patrons, but it's impossible. Your wrists are held in place by [NameDesc of B] as [he of B] uses your [BreastDesc], [NameDesc of F] holds your hair as [he of F] facefucks you, [NameDesc of A] holds your waist in place as [he of A] drills your [asshole], and [NameDesc of V] completely prevents any movement of your legs as [he of V] powerfucks your [vagina]. There's nothing you can do as they work together to hold you in place.[or]You squirm desperately, but with one [DickDesc of F] invading your throat, one [DickDesc of B] between your [BreastDesc] and two brutally ramming your fuckholes, there's really nothing you can do to get away.[in random order]";
		otherwise if X < 14:
			say "[one of]You squirm weakly as you are triple penetrated by [NameDesc of V], [NameDesc of F], and [NameDesc of A]. You find yourself turned on from the feeling of being totally overpowered and dominated by four [men of M], as [NameDesc of B] thrusts between your [BreastDesc].[or]You squirm weakly as the patrons gangbang you, using your [vagina], mouth, [asshole], and even your [BreastDesc] with no evident concern for your thoughts or feelings.[or]You struggle, forced to moan around [NameDesc of F]'s [DickDesc of F] as [NameDesc of V], [NameDesc of B] and [NameDesc of A] claim your [vagina], tits, and [asshole].[or]Pinned underneath [NameDesc of B]'s weight, there's nothing you can do as you are brutally triple penetrated by [his of B] friends. Still, you try to at least pretend to struggle as [NameDesc of B] thrusts between your [BreastDesc].[or]You struggle weakly, secretly turned on by your situation, gagging on [NameDesc of F]'s [DickDesc of F], forced to help [NameDesc of B] fuck your chest, and completely unable to resist as [NameDesc of V] and [NameDesc of A] pound your fuckholes.[or]You squirm halfheartedly, one [DickDesc of F] invading your throat, one between your [BreastDesc], and two brutally ramming your fuckholes[in random order]";
		otherwise:
			say "[one of]You shake and squirm, intentionally irritating the patrons as they gangbang you. You can't help but grin wildly as it earns you a stern slap on the cheek.[or]You squirm, intentionally gagging yourself on [NameDesc of F]'s [DickDesc of F] as [NameDesc of A] and [NameDesc of V] pound your fuckholes. You let [NameDesc of B] force you to hold your [BreastDesc] together as [he of B] thrusts, pretending you don't love the feeling of [his of B] [DickDesc of B] between your tits.[or]You playfully struggle as you are double penetrated by [NameDesc of V] and [NameDesc of A], moaning into [NameDesc of F]'s [DickDesc of F] as [his of F] balls slap your chin, and pretending to resist as [NameDesc of B] fucks your [BreastDesc].[or]You pretend to resist as you are face-fucked by [NameDesc of F], assfucked by [NameDesc of A], tittyfucked by [NameDesc of B], and plain old regular fucked by [NameDesc of V]. You love being treated like a piece of meat![or]You struggle as much as you can, loving the feeling of gagging on [NameDesc of F]'s [DickDesc of F], getting your [vagina] and [asshole] pounded by two [men of V] at once, and being forced to pleasure [Namedesc of B]'s [DickDesc of B] with your [BreastDesc].[or]You struggle playfully as the patrons manhandle you, testing their grip. Your wrists are held in place by [NameDesc of B] as [he of B] uses your [BreastDesc], [NameDesc of A] grips your waist as [he of A] drills your [asshole], [NameDesc of F] holds your head firmly as [he of F] fucks your face, and [NameDesc of V] holds your legs nice and wide as [he of V] pounds your naughty [vagina]. There's definitely nothing you can do as they work together to hold you in place. Just the way you like it![in random order]";
	otherwise if B is not patron:[holes + face]
		if X < 7:
			say "[one of]You flail helplessly as you are brutally triple penetrated by [NameDesc of F], [NameDesc of A] and [NameDesc of V].[or]You struggle as hard as you can, but the patrons have you boxed in from every side, keeping you firmly in place as they fuck you in all three of your holes.[or]You grunt indignantly around [NameDesc of F]'s [DickDesc of F], helplessly fighting against [his of M] grip as [Namedesc of V] and [NameDesc of A] take turns slapping your ass.[or]Sandwiched between [NameDesc of V] and [NameDesc of A], there's little you can do to struggle as they brutally pound your holes. Still, you do your best to jerk away from [NameDesc of F] as [he of F] gags you with [his of F] [DickDesc of F].[or]You refuse to stay still, doing everything you can, but making no headway as you are fucked from every angle at once.[or]You struggle as much as as you can, and the patrons reward you with an even more brutal triple-pounding![or]You squirm desperately, but with all three patrons working together to hold you in place, there's really nothing you can do as they fuck your face, [asshole], and [vagina].[in random order]";
		otherwise if X < 14:
			say "[one of]You squirm weakly as you are gangbanged by [NameDesc of F], [NameDesc of A] and [NameDesc of V]. They effortlessly shrug off your struggling with no evident concern for your feelings.[or]You refuse to suck [NameDesc of F]'s [DickDesc of F] as you are double penetrated by [his of M] friends, hating much you want to.[or]You wrestle against the patrons as they pound you in every hole, heart racing as you are effortlessly manhandled and dominated.[or]You accidentally gag yourself on [NameDesc of F]'s [DickDesc of F] as you try to twist out of [NameDesc of V] and [NameDesc of V]'s grips, which is immediately followed by an even more brutal double pounding.[or]You wiggle and squirm helplessly, hoping the [DickDesc of F] in your mouth is at least muffling your moans as you are mercilessly fucked in your [asshole] and [vagina].[or]With all three patrons working together to hold you in place, there's really nothing you can do to struggle as they mercilessly fuck your face, [asshole], and [vagina].[in random order]";
		otherwise:
			say "[one of]You shake your body as the patrons gangbang you, hoping they get irritated enough to punish you even harder. This is so fun![or]You pretend to fight back as you are gangbanged by three strong [men of M]. You love being treated this way![or]You playfully fight against the patrons grips as they pound your mouth, [vagina], and [asshole].[or]You slap and kick the patrons as they gangbang you, hoping to get punished for it. You get your wish, and you let out a guttural moan of pure bliss as they suddenly change their rhythm, pushing all three of their [DickDesc of F]s into you as deep as they can go at the same time. You feel impossibly full, and you love it.[or]You squirm as much as you can, loving the feeling of being forcibly overpowered and dominated by three strong [men of M] as they take you in every hole[or]You struggle playfully, knowing that with all three patrons working together to hold you in place, there's really nothing you can do as they mercilessly fuck your face, [asshole], and [vagina]. You love being treated like a piece of meat![in random order]";
	otherwise if F is patron:[bust + hole + face]
		let H be F;
		if A is patron, now H is A;
		otherwise now H is V;
		let R be a random orifice penetrated by H;
		if X < 7:
			say "[one of]You kick your legs helplessly, gagging on [NameDesc of F]'s [DickDesc of F] as [NameDesc of H] fucks your [variable R]. You'd use your arms too, but [NameDesc of B] is forcing you to squeeze your [BreastDesc] together as [he of M] thrusts between them.[or]You struggle as hard as you can, but the patrons have you boxed in from every side, keeping you firmly in place as they fuck your [BreastDesc], mouth, and [variable R].[or]You grunt indignantly around [NameDesc of F]'s [DickDesc of F], squirming as much as you can, but still completely pinned underneath [NameDesc of B] and [NameDesc of H] as they claim your tits and [variable R].[or]Pinned underneath [NameDesc of B]'s weight, there's nothing you can do as you are brutally spit-roasted by [NameDesc of H] and [NameDesc of F]. Still, you refuse to do anything to help [NameDesc of B] use your [BreastDesc]![or][BigNameDesc of B] forces you to hold your [BreastDesc] together as you are spit-roasted by [NameDesc of F] and [NameDesc of H].[or]You struggle as much as as you can, but make little headway, gagging on [NameDesc of F]'s [DickDesc of F], forced to help [NameDesc of B] fuck your chest, and completely unable to resist as [NameDesc of H] pounds your [variable R].[or]You squirm desperately, but with one [DickDesc of F] invading your throat, one [DickDesc of B] between your [BreastDesc] and one brutally ramming your [variable R], there's really nothing you can do to get away.[in random order]";
		otherwise if X < 14:
			say "[one of]You squirm weakly as you are spit-roasted by [NameDesc of F] and [NameDesc of H]. Held by your wrists and your ankles, you find yourself excited there's nothing you can do to stop [NameDesc of B] as [he of M] thrusts between your [BreastDesc].[or]You squirm weakly as the patrons fuck your [BreastDesc], mouth, and [variable R].[or]You struggle, forced to moan around [NameDesc of F]'s [DickDesc of F] as [NameDesc of B] and [NameDesc of H] as claim your tits and [variable R].[or]Pinned underneath [NameDesc of B]'s weight, there's nothing you can do as you are brutally spit-roasted by [NameDesc of H] and [NameDesc of F]. Still, you try to struggle a little as [NameDesc of B] thrusts between your [BreastDesc].[or]Your heart races as [NameDesc of B] forces you to let [him of M] fuck your [BreastDesc], secretly turned on and loving the feeling of being spit-roasted by [his of B] friends.[or]You struggle weakly, secretly turned on by your situation, gagging on [NameDesc of F]'s [DickDesc of F], forced to help [NameDesc of B] fuck your chest, and completely unable to resist as [NameDesc of H] pounds your [variable R].[or]You squirm halfheartedly, one [DickDesc of F] invading your throat, one between your [BreastDesc], and one brutally ramming your [variable R].[in random order]";
		otherwise:
			say "[one of]You shake and squirm, intentionally irritating the patrons trying to use your body. You can't help but grin wildly as it earns you a stern slap on the cheek.[or]You squirm as [NameDesc of F] fucks your face and [NameDesc of H] pounds your [variable R]. You let [NameDesc of B] force you to hold your [BreastDesc] together as [he of B] thrusts, pretending you don't love the feeling of [his of B] [DickDesc of B] between your tits.[or]You playfully struggle as you are spit-roasted between [NameDesc of F] and [NameDesc of B]. You love the feeling of [NameDesc of B]'s strong hands around your wrists as [he of B] forces you to squeeze your [BreastDesc] around [his of M] [DickDesc of B].[or]You pretend to resist as you are spit-roasted by [NameDesc of F] and [NameDesc of H] and tittyfucked by [NameDesc of B]. You love being treated like a piece of meat![or]You struggle as much as you can, loving the feeling of gagging on [NameDesc of F]'s [DickDesc of F], getting your [variable R] pounded by [NameDesc of H], and being forced to pleasure [NameDesc of B] with your [BreastDesc].[or]You squirm playfully making sure the [DickDesc of F] in your mouth, the one between your [BreastDesc], and one in your [variable R] all use you as fast and rough as possible.[in random order]";
	otherwise:[holes + bust]
		if X < 7:
			say "[one of]You helplessly push against [NameDesc of B] as [he of M] uses your [BreastDesc], unable to resist the brutal double penetration from [his of B] friends.[or]You do everything you can to fight against the patrons as they use your [vagina], tits, and [asshole]. It accomplishes nothing, aside from making them treat you even more roughly.[or]You squirm desperately, trying to free your wrists as [NameDesc of A] and [NameDesc of V] brutally double penetrate you. You make zero headway, and you're forced to hold your [BreastDesc] together as [NameDesc of B] thrusts between them.[or]You do everything you can to fight the patrons, but it's impossible. Your wrists are held in place by [NameDesc of B] as [he of B] uses your [BreastDesc], [NameDesc of A] holds your elbows as [he of A] fucks your [asshole], and [NameDesc of V] easily holds onto your legs as [he of V] drills your [vagina]. There's nothing you can do as they work together to hold you in place.[or]You fight [NameDesc of B] as [he of B] fucks your [BreastDesc], grunting helplessly [NameDesc of A] and [NameDesc of V] rhythmically jackhammer your [vagina] and [asshole].[in random order]";
		otherwise if X < 14:
			say "[one of]You struggle weakly as [NameDesc of A] and [NameDesc of V] double penetrate you, trying your best to stifle your moans as [NameDesc of B] fucks your [BreastDesc].[or]You squirm helplessly, trying not to moan as the patrons use your [vagina], tits, and [asshole]. They continue with no evident concern for your feelings.[or]You struggle meekly, wrists held by [NameDesc of B] as [he of B] uses your [BreastDesc], [NameDesc of A] gripping your elbows as [he of A] fucks your [asshole], and [NameDesc of V] easily holding onto your legs as [he of V] drills your [vagina]. There's nothing you can do as they work together to hold you in place.[or]You weakly squirm, staring at [NameDesc of B]'s [DickDesc of B] as [NameDesc of A] and [NameDesc of V] mercilessly pound your fuckholes double penetrate you. [NameDesc of B] makes sure you have something to look at, slapping your [BreastDesc] around as [he of B] thrusts between them.[or]You look up at [NameDesc of B] in defeat as [he of B] forcibly fucks your [BreastDesc], badly stifling your moans as [NameDesc of A] and [NameDesc of V] rhythmically jackhammer your [vagina] and [asshole].[in random order]";
		otherwise:
			say "[one of]You struggle playfully as the patrons fuck your pussy, ass, and [BreastDesc], knowing you're completely pinned under [NameDesc of B]'s weight.[or]You pretend to squirm, openly enjoying yourself as the patrons use your [vagina], tits, and [asshole].[or]You struggle playfully as the patrons manhandle you, testing their grip. Your wrists are held in place by [NameDesc of B] as [he of B] uses your [BreastDesc], [NameDesc of A] holds your elbows as [he of A] fucks your [asshole], and [NameDesc of V] easily holds onto your legs as [he of V] drills your [vagina]. There's definitely nothing you can do as they work together to hold you in place. Just the way you like it![or]You do everything you can to piss off the patrons as they tittyfuck you and pound your fuckholes, hoping they get even rougher with you.[or]You pretend to fight [NameDesc of B] as [he of B] fucks your [BreastDesc], screaming in pure bliss as [NameDesc of A] and [NameDesc of V] mercilessly jackhammer your dirty fuckholes.[in random order]".

[Each combination of player sex and patrons only gets one variation, otherwise this is less a QoL addition and more Homer's Odyssey. This is only an introduction, climaxmasturbationflav should handle the actual payoff.]
To say InstantMasturbationFlav of (O - an object) with (M - a patron) in (C - an object):
	let V be a random patron penetrating vagina;
	let F be a random patron penetrating face;
	let A be a random patron penetrating asshole;
	let B be a random patron penetrating breasts;
	let X be the raw sex addiction of the player;
	if the number of patrons penetrating a body part is 4:[gangbang]
		say "You reach one arm between your legs, [if X < 6]giving up on your inhibitions and[otherwise if X < 12]obediently[otherwise]eagerly[end if] suckling [NameDesc of F]'s [DickDesc of F] as you [if O is vibe-wand]begin to stimulate yourself with the [printed name of O][otherwise]begin to touch yourself[end if]. You can't conceal what you're doing. You know all of them can tell you're masturbating, and [if X < 6]you desperately hope they don't know it's them you're masturbating to[otherwise if X < 12]you don't care whether it's obvious it's them you're masturbating to[otherwise]that's the best part[end if]. You love the feeling of taking [DickDesc of M]'s in every hole, the feeling of [DickDesc of M] in your mouth, the feeling of [LongDickdesc of M] between your [BreastDesc], and every moment turns you on even more. You love getting gangbanged, and [if X < 6]the moment you admit that to yourself[otherwise]the moment that thought enters your head[end if], you realize you're going to cum.";
	otherwise if the number of patrons penetrating a body part is 3:[gangbang]
		if F is not patron:[bust + holes]
			say "You [if O is vibe-wand]switch on your [printed name of O][otherwise]reach between your legs[end if] and [if O is vibe-wand]hold the vibrating end against[otherwise]begin to rub[end if] your clit as the patrons use your body. You're on a bed, but no part of your body is actually touching it. Your legs are draped over [NameDesc of V]'s shoulders, your back is resting [NameDesc of A]'s broad chest, and your other arm, which might otherwise be gripping the sheets, is busy holding your [BreastDesc] together as [NameDesc of B] thrusts between them. No matter how you look at it, you are completely at the mercy of [if lady fetish is 1]three total strangers[otherwise]three big, strong men[end if], and it's that thought that hangs in your head as you realize you're already going to cum.";[TODO: could maybe be better, we will see.]
		otherwise if B is not patron:[triple p]
			say "You eagerly suck [NameDesc of F]'s [DickDesc of F] as you [if O is vibe-wand]turn on your [printed name of O][otherwise]reach between your legs[end if], [if X < 6]no longer able to conceal[otherwise if X < 12]no longer bothering to conceal[otherwise]ready to show the patrons[end if] how turned on all this is making you. You pleasure yourself to the feeling of being completely surrounded by [if lady fetish is 1]strangers[otherwise]big, powerful men[end if], pleasing their hard [DickDesc of M]'s with every single one of your holes. Nothing more than a moment passes, and [if X < 6]a wave of shame passes through your body[otherwise if X < 12]a tiny bit of shame passes through you[otherwise]you feel your muscles tightening in anticipation[end if] as you realize you're already going to cum.";
		otherwise:[bust + face + hole]
			say "You reach back, [if X < 6]cheeks burning with shame[otherwise]heart thumping with excitement[end if] as you [if O is insertable object]slide the [printed name of O] into your [vagina][otherwise if O is vibe-wand]turn on the [printed name of O] and rub the vibrating end around your [genitals][otherwise if the player is male]begin to rub your [ShortDesc of penis][otherwise if vagina is not actually occupied]slide your fingers into your [vagina][otherwise]begin to rub your clit[end if]. You pleasure yourself to the feeling of having three [if lady fetish is 1]complete strangers[otherwise if the player is female]big, strong men[otherwise]men, MEN[end if] treat you like a cheap piece of meat, and the more you think about it, the more your arousal begins to build. The [DickDesc of B] between your breasts, the [DickDesc of F] in your mouth, the [DickDesc of M] [if the player is male]punching your prostate[otherwise if A is patron]stretching out your [asshole][otherwise]fucking your [vagina][end if]... all of them could be intense on their own, but together they're completely overwhelming, and you feel your muscles tightening in anticipation as you realize you're going to cum.";
	otherwise if the number of patrons penetrating a body part is 2:
		if B is patron and A is patron:[bust + ass]
			say "You [if O is insertable object][otherwise if O is vibe-wand and the player is female]turn on the [printed name of O] and hold it against your clit[otherwise if O is vibe-wand]turn on the [printed name of O] and hold it against your [player-penis][otherwise]reach between your legs, touching yourself[end if] to the feeling of [NameDesc of B]'s [DickDesc of B] thrusts between your [BreastDesc]. You find yourself thinking about your situation, completely pinned down under a [if lady fetish is 1]total stranger[otherwise]big, strong man[end if] as another one [if the player is male]pounds your prostate[otherwise]stretches out your [asshole][end if], [if X < 6]thoroughly ashamed at how much it[otherwise if X < 12]surprised at how much it[otherwise]and how much it totally[end if] turns you on. You [if X < 6]close your eyes in shame[otherwise]close your eyes, embracing the inevitable[end if] as you realize you're going to cum.";
		otherwise if B is patron and V is patron:[bust + vagina]
			say "You [if O is vibe-wand]turn on the [printed name of O] and hold it against your clit[otherwise]reach between your legs, touching yourself[end if] as [NameDesc of B]'s [DickDesc of B] thrusts between your [BreastDesc]. You find yourself thinking about your situation, completely pinned down under a [if lady fetish is 1]total stranger[otherwise]big, strong man[end if] as another one uses your [vagina], [if X < 6]thoroughly ashamed at how much it[otherwise if X < 12]surprised at how much it[otherwise]and how much it totally[end if] turns you on. You [if X < 6]close your eyes in shame[otherwise]close your eyes, embracing the inevitable[end if] as you realize you're going to cum.";
		otherwise if B is patron:[face + bust]
			say "[if X < 6]You try to think about something else[otherwise if X < 12]You tell yourself you should be thinking of something else[otherwise]You don't think of anything else[end if] as you [if O is insertable object]slip the [printed name of O] into your [vagina][otherwise if O is vibe-wand and the player is O]turn on your [printed name of O] and hold the vibrating end against your [ShortDesc of penis][otherwise if the player is female]slip your fingers into your [vagina][otherwise]begin to stroke your [ShortDesc of penis][end if], [if X < 3]but with one [DickDesc of F] in your mouth, another between your [BreastDesc], you don't really have a choice[otherwise if X < 6], but with one [DickDesc of F] in your mouth, and another between your [BreastDesc], you can't help it[otherwise]passionately suckling the [DickDesc of F] in your mouth as the other fucks your [BreastDesc][end if]. You touch yourself to the feeling of being used as nothing but a fucktoy by [if lady fetish is 1]two total strangers[otherwise if the player is female]a pair of big strong men[otherwise if the bimbo of the player < 8]two other men[otherwise]two REAL men[end if], arousal building and building as you realize how soon you're going to cum.";
		otherwise if F is patron:[spitroast]
			if A is patron:[anal spitroast]
				say "You [if O is vibe-wand]switch on the [printed name of O] and hold it against your [genitals][otherwise if O is insertable object]reach between your legs and slide the [printed name of O] into your [vagina][otherwise if the player is female and vagina is not actually occupied]reach between your legs and slip your fingers into your [vagina][otherwise if the player is female]reach between your legs and begin to rub your clit[otherwise]reach between your legs and begin to stroke your [ShortDesc of penis][end if], making eye contact with [NameDesc of F] as you suck [his of F] [DickDesc of F]. [big he of F] gives you a knowing look as you play with yourself, and as your arousal builds, you find yourself bobbing your head and pushing back against [NameDesc of A] with mounting enthusiasm. You [if X < 6]feel a wave of shame[otherwise if X < 12]try to feel ashamed[otherwise]feel your muscles tighten in anticipation[end if] as you realize how soon this is going to make you cum.";
			otherwise:[vaginal spitroast]
				say "You [if O is vibe-wand]switch on the [printed name of O] and hold it against your clit[otherwise]reach between your legs and begin to rub your clit[end if], making eye contact with [NameDesc of F] as you suck [his of F] [DickDesc of F]. [big he of F] gives you a knowing look as you play with yourself, and as your arousal builds, you find yourself bobbing your head and pushing back against [NameDesc of V] with mounting enthusiasm. You [if X < 6]feel a wave of shame[otherwise if X < 12]try to feel ashamed[otherwise]feel your muscles tighten in anticipation[end if] as you realize how soon this is going to make you cum.";
		otherwise:[double p]
			say "You [if O is vibe-wand]turn on your [printed name of O][otherwise]reach between your legs[end if], [if X < 6]accidentally making[otherwise if X < 12]making[otherwise]holding[end if] eye contact with [NameDesc of V] as you [if O is vibe-wand]hold it against your clit[otherwise]begin to touch your clit[end if]. [big he of V] fucks you even harder, forcing you to emit [if face is not actually occupied]breathless[otherwise]muffled[end if] moans as [NameDesc of A] notices what's happening and follows suit. They fuck you in an off rhythm, one [DickDesc of M] in, one [DickDesc of M] out, in, out, in out, and as the pleasure builds, you realize how soon this is going to make you cum.";
	otherwise:
		if F is patron:[blowjob]
			say "You [if X < 12]obediently[otherwise]passionately[end if] suck [NameDesc of F]'s [DickDesc of F], [if X < 6]trying not to make[otherwise if X < 12]accidentally making[otherwise]making[end if] eye contact with [him of F] [if O is insertable object]slide the [printed name of O] into your [vagina][otherwise if O is vibe-wand and the player is male]rub the vibrating head of your [printed name of O] against your hardening [player-penis][otherwise if O is vibe-wand]switch on your [printed name of O] and hold it against your clit[otherwise if vagina is not actually occupied]slide your fingers into your [vagina][otherwise if the player is male]begin to rub your [ShortDesc of penis][otherwise]begin to tenderly rub your clit[end if]. Your arousal builds as you think about how big and hard [his of F] [DickDesc of F] feels in your mouth, and you realize[if X < 6] with shame[end if] that it's actually about to make you cum.";
		otherwise if B is patron:[boobjob]
			say "You [if O is insertable object]slip your [printed name of O] into your [vagina][otherwise if O is vibe-wand]switch on your [printed name of O][otherwise if the player is male]grab your [ShortDesc of penis][otherwise]slip a finger into your [vagina][end if], eyes drawn to [NameDesc of B]'s dick as you begin to [if O is insertable object]fuck yourself[otherwise if O is vibe-wand]grind it against your [genitals][otherwise]masturbate[end if]. You feel yourself getting more and more turned on as you watch [his of B] shiny cockhead thrusting between your [BreastDesc], [if X < 6]and before you even have time to feel ashamed[otherwise if X < 12]and before you have time to think about anything else[otherwise]and before you have time to really enjoy yourself[end if], you realize you're going to cum.";
		otherwise if the player is male:[anal]
			say "You [if O is vibe-wand]switch on your [printed name of O] and hold it under the head of your [player-penis][otherwise]wrap your hand around your tiny 3 inch penis and begin to masturbate[end if]. Little sparks of ecstasy bolt up your shaft as [NameDesc of M]'s [DickDesc of M] hits your prostate, pleasure building and building as you [if X < 6]try, and fail, not to focus on[otherwise]focus[end if] how good it feels to get fucked in the ass by [if lady fetish is 1]a complete stranger[otherwise if the bimbo of the player < 8]another man[otherwise]a REAL man[end if]. You [if X < 6]feel a wave of shame[otherwise if X < 12]tell yourself to be ashamed[otherwise]feel a wave of anticipation[end if] as you realize you're about to cum.";
		otherwise:[vaginal or anal]
			say "You [if O is insertable object]push the [printed name of O] into your [vagina] and eagerly begin to fuck yourself[otherwise if O is vibe-wand]turn on your [printed name of O] and hold the vibrating end against your clit[otherwise if vagina is not actually occupied]reach between your legs and eagerly push your fingers into your [vagina][otherwise]reach between your legs and eagerly to play with your clit[end if]. All you can think about is how good [NameDesc of M] feels inside you, and you find yourself submitting to [him of M] completely as the pleasure builds and builds. It only takes a moment for you realize you're about to cum.".

To say InstantAnalMasturbationFlav of (O - an object) with (M - a patron) in (C - an object):
	let V be a random patron penetrating vagina;
	let F be a random patron penetrating face;
	let A be a random patron penetrating asshole;
	let B be a random patron penetrating breasts;
	let X be the anal sex addiction of the player;
	if the number of patrons penetrating a body part is 3:[gangbang]
		say "You reach back, [if X < 4]cheeks burning with shame[otherwise]heart thumping with excitement[end if] as you [if O is insertable object]ease the [printed name of O] into your [asshole][otherwise]ease your fingers into your [asshole][end if]. You fuck yourself to the feeling of having three [if lady fetish is 1]complete strangers[otherwise]big, strong men[end if] treat you like a cheap piece of meat, and the more you think about it, the more your arousal begins to build. The [DickDesc of B] between your breasts, the [DickDesc of F] in your mouth, the [DickDesc of V] in your [vagina]... all of them could be intense on their own, but together they're completely overwhelming, and you feel your muscles tightening in anticipation as you realize you're going to cum.";
	otherwise if the number of patrons penetrating a body part is 2:
		if B is patron and V is patron:[bust + vagina]
			say "You reach back, easing [if O is insertable object]the [printed name of O] into your [asshole][otherwise]your fingers into your [asshole][end if] as [NameDesc of B]'s [DickDesc of B] thrusts between your [BreastDesc]. You find yourself thinking about your situation, completely pinned down under a [if lady fetish is 1]total stranger[otherwise]big, strong man[end if] as another one uses your [vagina], [if X < 3]thoroughly ashamed at how much it[otherwise if X < 6]surprised at how much it[otherwise]and how much it totally[end if] turns you on. You [if X < 6]close your eyes in shame[otherwise]close your eyes, embracing the inevitable[end if] as you realize you're going to cum.";
		otherwise if B is patron:[face + bust]
			say "[if X < 3]You try to think about something else[otherwise if X < 6]You tell yourself you should be thinking of something else[otherwise]You don't think of anything else[end if] as you slip [if O is insertable object]the [printed name of O] into your [asshole][otherwise]your fingers into your [asshole][end if], [if X < 3]but with one [DickDesc of F] in your mouth, another between your [BreastDesc], you don't really have a choice[otherwise if X < 6], but with one [DickDesc of F] in your mouth, and another between your [BreastDesc], you can't help it[otherwise]passionately suckling the [DickDesc of F] in your mouth as the other fucks your [BreastDesc][end if]. You touch yourself to the feeling of being used as nothing but a fucktoy by [if lady fetish is 1]two total strangers[otherwise if the player is female]a pair of big strong men[otherwise if the bimbo of the player < 8]two other men[otherwise]two REAL men[end if], arousal building and building as you realize how soon you're going to cum.";
		otherwise:[face + vagina]
			say "You [if O is insertable object]ease the [printed name of O] into your [asshole][otherwise]push a finger into your [asshole][end if], making eye contact with [NameDesc of F] as you suck [his of F] [DickDesc of F]. [big he of F] gives you a knowing look as you play with yourself, and as your arousal builds, you find yourself bobbing your head and pushing back against [NameDesc of V] with mounting enthusiasm. You [if X < 3]feel a wave of shame[otherwise if X < 6]try to feel ashamed[otherwise]feel your muscles tighten in anticipation[end if] as you realize how soon this is going to make you cum.";
	otherwise:
		if F is patron:[blowjob]
			say "You [if X < 6]obediently [otherwise]passionately [end if] suck [NameDesc of F]'s [DickDesc of F], [if X < 3]trying not to make[otherwise if X < 6]accidentally making[otherwise]making[end if] eye contact with [him of F] [if O is insertable object]begin to fuck your [asshole] with the [printed name of O][otherwise]begin to finger your asshole[end if]. Your arousal builds as you think about how big and hard [his of F] [DickDesc of F] feels in your mouth, and you realize[if X < 4] with shame[end if] that it's actually about to make you cum.";
		otherwise if B is patron:[boobjob]
			say "You [if O is insertable object]slip your [printed name of O] into your [asshole][otherwise]slip a finger into your [asshole][end if], eyes drawn to [NameDesc of B]'s dick as you begin to [if O is insertable object]fuck yourself[otherwise]masturbate[end if]. You feel yourself getting more and more turned on as you watch [his of B] shiny cockhead thrusting between your [BreastDesc], [if X < 3]and before you even have time to feel ashamed[otherwise if X < 6]and before you have time to think about anything else[otherwise]and before you have time to really enjoy yourself[end if], you realize you're going to cum.";
		otherwise:[vaginal]
			say "You reach back[if O is insertable object], pushing the [printed name of O] into your [asshole] and eagerly beginning to fuck yourself[otherwise]and eagerly push your fingers into your [asshole][end if]. All you can think about is how good [NameDesc of V] feels inside you, and you find yourself submitting to [him of V] completely as the pleasure builds and builds. It only takes a moment for you realize you're about to cum.".

To say StartMasturbationFlav of (O - an object) with (M - a patron) in (C - an object):
	let V be a random patron penetrating vagina;
	let F be a random patron penetrating face;
	let A be a random patron penetrating asshole;
	let B be a random patron penetrating breasts;
	let X be the raw sex addiction of the player;
	if the player is male and auto < 2:
		if O is vibe-wand, say "You switch on the [ShortDesc of O] and hold the larger end against your [ShortDesc of penis], enjoying the gentle vibrations as [run paragraph on]";
		otherwise say "You grab your [ShortDesc of penis], which [if the size of penis > 7]hardens slowly as[otherwise if the size of penis > 4]stiffens quickly[otherwise]stiffens immediately[end if] [run paragraph on]";
		if the number of patrons penetrating a body part is 3:
			say "the patrons fuck your mouth, tits, and [asshole].";
		otherwise if the number of patrons penetrating a body part is 2:
			say "[if B is not patron]the patrons spitroast you[otherwise if A is not patron]as the patrons use your mouth and tits[otherwise]the patrons use your tits and [asshole].";
		otherwise:
			say "[if F is patron]you eagerly suck [NameDesc of M]'s [Dickdesc of M][otherwise if B is patron][NameDesc of B] fucks your [BreastDesc][otherwise][NameDesc of A] fucks your [asshole][end if].";
	otherwise if auto < 2:
		if O is insertable object:
			say "You ease the [ShortDesc of O] into your [vagina], and begin to fuck yourself as [run paragraph on]";
		otherwise if O is vibe-wand:
			say "You turn on the [ShortDesc of O] and ease it up to your clit, enjoying the gentle vibrations as [run paragraph on]";
		otherwise:
			say "You [if vagina is not actually occupied]sink your fingers into your [vagina][otherwise]begin to rub your clit[end if] as [run paragraph on]";
		if the number of patrons penetrating a body part is 4:
			say "the patrons fuck your mouth, [vagina], tits, and [asshole].";
		otherwise if the number of patrons penetrating a body part is 3:
			say "[if B is not patron]the patrons penetrate you in every hole[otherwise if A is not patron]as the patrons use your mouth, tits, and [vagina][otherwise if V is not patron]the patrons use your mouth, tits, and [asshole][otherwise]the patrons use your [vagina], tits, and [asshole][end if].";
		otherwise if the number of patrons penetrating a body part is 2:
			say "[if B is patron and F is patron]the patrons use your mouth and tits[otherwise if B is patron and V is patron]the patrons use your [vagina] and your tits[otherwise if B is patron]the patrons use your [asshole] and your tits[otherwise if F is patron and V is patron]the patrons use your mouth and your [vagina][otherwise if F is patron]the patrons use your mouth and your [asshole][otherwise]the patrons double penetrate your fuckholes";
		otherwise:
			say "[if F is patron]you eagerly suck [NameDesc of M]'s [Dickdesc of M][otherwise if B is patron][NameDesc of B] fucks your [BreastDesc][otherwise if V is patron][NameDesc of V] fucks your [vagina][otherwise][NameDesc of A] fucks your [asshole][end if].".

To say StartAnalMasturbationFlav of (O - an object) with (M - a patron) in (C - an object):
	let V be a random patron penetrating vagina;
	let F be a random patron penetrating face;
	let A be a random patron penetrating asshole;
	let B be a random patron penetrating breasts;
	let X be the raw sex addiction of the player;
	if the player is male and auto < 2:
		if O is insertable object, say "You slide the [printed name of O] into your [asshole] and slowly being to work it in and out as [run paragraph on]";
		otherwise say "You reach between your legs and slip your fingers into your [asshole] as [run paragraph on]";
		if the number of patrons penetrating a body part is 3:
			say "the patrons fuck your mouth, your tits, and your [vagina].";
		otherwise if the number of patrons penetrating a body part is 2:
			say "[if B is patron and F is patron]the patrons use your tits and your mouth[otherwise if B is patron]as the patrons use your [vagina] and your tits[otherwise if F is patron]the patrons use your mouth and your [vagina][end if].";
		otherwise:
			say "[if F is patron]you eagerly suck [NameDesc of M]'s [Dickdesc of M][otherwise if B is patron][NameDesc of B] fucks your [BreastDesc][otherwise][NameDesc of V] fucks your [vagina][end if].".

To say ClimaxMasturbationFlav of (O - an object) with (M - a patron) in (C - an object):[note, this appears even when the player has an instant orgasm]
	let F be a random patron penetrating face;
	let A be a random patron penetrating asshole;
	let B be a random patron penetrating breasts;
	if the player is male:[ejaculation is handled by the orgasm function]
		say "You [if C is clothing or O is vibe-wand]rub[otherwise]stroke[end if] yourself faster and faster, moaning [if F is patron]into [NameDesc of F]s [DickDesc of F][otherwise]with excitement and pleasure[end if] as [if A is patron][NameDesc of A]'s relentless prostate pounding sends you[otherwise]you finally go[end if] over the edge.";
	otherwise:
		let V be a random patron penetrating vagina;
		if O is insertable object:
			say "You [if F is patron]moan around [NameDesc of F]'s [DickDesc of F][otherwise if B is patron]look up at [NameDesc of B], feeling your lips curl into a large, circular 'O'[otherwise]can't help but form your lips into a large, circular 'O', cooing with pleasure[end if] as [if B is patron]the feeling of the [DickDesc of B] between your [Breastdesc], plus[otherwise]the feeling of [end if]the [printed name of O] sliding in and out of your [vagina] pushes you over the edge. Your [if A is patron][asshole] clenches around [NameDesc of A]'s [Dickdesc of A] as your [vagina][otherwise][vagina] clenches around the [ShortDesc of O] as it[end if] [SquirtDesc], powerful waves of pleasure overwhelming your senses as your orgasm crashes through your body.";
		otherwise if O is vibe-wand:
			say "You [if F is patron]moan around [NameDesc of F]'s [DickDesc of F][otherwise if B is patron]look up at [NameDesc of B], feeling your lips form into an unmistakably submissive 'O'[otherwise]can't help but form your lips into a large, circular 'O'[end if] as [if A is patron and V is patron]the patrons' powerful double penetration, plus [otherwise if A is patron][NameDesc of A]'s [DickDesc of A] in your [asshole], plus [otherwise][NameDesc of V]'s [DickDesc of V] in your [vagina], plus [end if]intense clitoral stimulation from your [printed name of O] pushes you over the edge. [if V is patron and A is patron]Your fuckholes simultaneously clamp down around [NameDesc of V] and [NameDesc of A] as your [vagina][otherwise if V is patron]Your [vagina] clamps down around [NameDesc of V] as it[otherwise if A is patron]Your [asshole] clenches around [NameDesc of A] as your [vagina][otherwise]Your jaw goes slack, your muscles tensing and then relaxing as your [vagina][end if] [SquirtDesc], powerful waves of pleasure overwhelming your senses as your orgasm wracks your body.";
		otherwise:
			say "You find yourself moaning as [if V is patron and A is patron]the intense double penetration brings you[otherwise if A is patron][NameDesc of A] brings you[otherwise if V is patron][NameDesc of V] brings you[otherwise]you bring yourself[end if] to climax, inner muscles clenching [if V is patron and A is patron][NameDesc of V] and [NameDesc of A]'s [DickDesc of M]s[otherwise if A is patron]clenching around [his of A] [DickDesc of A][otherwise if V is patron][his of V] [DickDesc of V][otherwise]your fingers[end if] as you go over the edge. [if F is patron]Your moans are muffled by [NameDesc of F]'s [DickDesc of F][otherwise if the humiliation of the player < HUMILIATION-PROUD]You can't even begin to stifle your moans[otherwise]Uncontrolled moans stream out of your mouth[end if] as your body erupts with pleasure, girlcum spraying out between your fingers as shivers of pleasure run up and down your spine.".

To say ClimaxAnalMasturbationFlav of (O - an object) with (M - a patron) in (C - an object):
	let F be a random patron penetrating face;
	let B be a random patron penetrating breasts;
	if the player is male:[ejaculation is handled by the orgasm function]
		if O is insertable object:
			say "You [if F is patron]moan into [NameDesc of F]'s [DickDesc of F][otherwise if B is patron]look up at [NameDesc of B], feeling your lips curl into a big, circular 'O'[otherwise]can't help but form your lips into a large, circular 'O', cooing with pleasure[end if] as the feeling of your [printed name of O] grinding against your prostate pushes you over the edge. You feel your anal muscles rapidly tensing and relaxing as wave of pleasure ripple through your whole body.";
		otherwise:
			say "You find yourself moaning as the build up of pleasure pushes you go over the edge. [if F is patron]Your moans are muffled by [NameDesc of F]'s [DickDesc of F][otherwise if the humiliation of the player < HUMILIATION-PROUD]You can't even begin to stifle your moans[otherwise]Uncontrolled moans stream out of your mouth[end if] as your prostate tightens up, anal muscles rapidly tensing and relaxing as shivers of pleasure run up and down your spine.";
	otherwise:
		let V be a random patron penetrating vagina;
		if O is insertable object:
			say "You [if F is patron]moan into [NameDesc of F]'s [DickDesc of F][otherwise if B is patron]look up at [NameDesc of B], feeling your lips curl a big, circular 'O'[otherwise]can't help but form your lips into a large, circular 'O', moaning with pleasure[end if] as the feeling of [if V is patron][NameDesc of V]'s [DickDesc of V] sliding in and out of your [vagina], coupled with [otherwise if B is patron and F is not patron][his of B] [DickDesc of B] sliding between your [BreastDesc], coupled with [otherwise if B is patron][Namedesc of B]'s [DicKDesc of B] sliding between your [BreastDesc], coupled with [end if]your [printed name of O] moving in and out of your [asshole] pushes you over the edge. Your [vagina] [if V is patron]desperately spasms around [NameDesc of V][otherwise if vagina is actually occupied]around the [printed name of a random thing penetrating vagina][otherwise]around nothing[end if] as it [SquirtDesc], powerful waves of pleasure overwhelming your senses as your orgasm crashes over you.";
		otherwise:
			say "You find yourself moaning as [if V is patron][NameDesc of V] brings you to[otherwise]the buildup of pleasure approaches a[end if] a climax, [asshole] clenching around your fingers[if V is patron], and your [vagina] clamping down around [NameDesc of V]'s [DickDesc of V][end if] as you go over the edge. [if F is patron]Your moans are muffled by [NameDesc of F]'s [DickDesc of F][otherwise if the humiliation of the player < HUMILIATION-PROUD]You can't even begin to stifle your moans[otherwise]Uncontrolled moans stream out of your mouth[end if] as your body erupts with pleasure, girlcum dribbling down your leg as shivers of pleasure run up and down your spine.".

To say OngoingMasturbationFlav of (O - an object) with (M - a patron) in (C - an object):
	let F be a random patron penetrating face;
	let B be a random patron penetrating breasts;
	let V be a random patron penetrating vagina;
	let A be a random patron penetrating asshole;
	if the number of patrons penetrating a body part is 4:
		say "[if O is vibe-wand]You hold the [printed name of O] against your clit[otherwise]You eagerly rub your clit[end if] as [one of]the patrons make use of your body[or]the patrons fuck your [vagina], mouth, [asshole], and even your tits[or]you are gangbanged by four patrons at once[or]as four patrons use your body at the same time[then at random].";
	if the number of patrons penetrating a body part is 3:
		if A is not patron:[face + bust + vagina; no insertables]
			say "[one of]You suck [NameDesc of F]'s [DickDesc of F], [if O is vibe-wand]stimulating[otherwise]touching[end if] yourself to the feeling of the [LongDickDesc of B] between your breasts and the [DickDesc of V] in your [vagina][or]You [if O is vibe-wand]pleasure yourself with the [printed name of O][otherwise]play with your clit[end if] as you allow yourself to be used by three patrons at once.[or]You [if O is vibe-wand]grind the [printed name of O] against your clit[otherwise]rub your clit[end if], eagerly sucking [NameDesc of F] off as you compare and contrast the feeling of [NameDesc of B]'s [DickDesc of B] between your breasts, and [NameDesc of V]'s [DickDesc of V] in your [vagina].[then at random]";
		otherwise if B is not patron:[triple p; no insertables]
			say "[if O is vibe-wand]You hold the [printed name of O] against your clit[otherwise]You eagerly rub your clit[end if], [one of]sucking [NameDesc of F]'s [DickDesc of F] as [his of F] friends pound your fuckholes.[or]not sure which patron to focus on as they take you in all three of your holes[or]trying your best to properly suck the [DickDesc of F] in your mouth as [DickDesc of M]'s slam in and out of your [vagina] and [asshole].[then at random].";
		otherwise if F is not patron:[bust + dp; no insertables]
			say "[one of]You [if O is vibe-wand]pleasure[otherwise]finger[end if] yourself to the feeling of the [LongDickDesc of B] between your breasts and the [DickDesc of M]s pounding your fuckholes.[or]You [if O is vibe-wand]use the [printed name of O] to stimulate yourself[otherwise]touch yourself[end if] as you allow yourself to be used by three patrons at once.[or]You [if O is vibe-wand]pleasure yourself with the [printed name of O][otherwise]play with your [genitals][end if], trying to decide which is best, the feeling of [NameDesc of B]'s [DickDesc of B] between your breasts, the thrusting of [NameDesc of V]'s [DickDesc of V] in your [vagina], or stretching of [NameDesc of A]'s [DickDesc of A] in your [asshole].[then at random]";
		otherwise:[face + bust + asshole]
			say "[if O is insertable object]You fuck yourself with the [printed name of O][otherwise if O is vibe-wand and the player is female]You hold the [printed name of O] against your clit[otherwise if O is vibe-wand]You rub the [printed name of O] along your shaft[otherwise if the player is female]You eagerly rub your clit[otherwise]You eagerly pump your [ShortDesc of penis][end if] as [one of]the patrons make use of your body[or]the patrons fuck your mouth, [asshole], and even your tits[or]you are gangbanged by three patrons at once[or]as three patrons use your body at the same time[then at random].";
	otherwise if the number of patrons penetrating a body part is 2:
		if F is patron and B is patron:[bust +face]
			say "[one of]You [if O is insertable object]fuck[otherwise if O is vibe-wand]stimulate[otherwise]touch[end if] yourself to the feeling of the [LongDickDesc of B] between your [BreastDesc] as you polish [NameDesc of F]'s [DickDesc of F] with your mouth.[or]You [if O is insertable object]fuck your [vagina] with the [printed name of O][otherwise if O is vibe-wand]hold the vibrating [printed name of O] against your sensitive bits[otherwise if the player is male]jerk off[otherwise]tease your clit with your fingertips[end if] as you allow [NameDesc of B] and [NameDesc of F] to use your body.[or]You submit as [NameDesc of B] fucks your [BreastDesc], sucking off [NameDesc of F] as you [if O is insertable object]push the [printed name of O] in and out of your [vagina][otherwise if O is vibe-wand]use the vibrator to stimulate yourself[otherwise if the player is female and vagina is not actually occupied]move your fingers in and out of your[vagina][otherwise]touch yourself[end if].[then at random]";
		otherwise if F is patron and V is patron:[vaginal spitroast; no insertables]
			say "[one of]You [if O is vibe-wand]stimulate yourself[otherwise]stroke your clit[end if] to the feeling of the [LongDickDesc of V] in your [vagina] as you polish [NameDesc of F]'s [DickDesc of F] with your mouth.[or]You [if O is vibe-wand]stimulate your clit with the [printed name of O][otherwise]use your fingers to play with your clit[end if] as you allow yourself to be spit-roasted.[or]You submit as the patrons spitroast you, [if O is vibe-wand]allowing the [printed name of O] to vibrate against[otherwise]tenderly rubbing your sensitive[end if] clit.[then at random]";
		otherwise if F is patron:[anal spitroast]
			say "[one of]You [if O is vibe-wand]stimulate yourself[otherwise if the player is female]stroke your clit[otherwise]jerk off[end if] to the feeling of the [LongDickDesc of A] in your [asshole] as you polish [NameDesc of F]'s [DickDesc of F] with your tongue.[or]You [if O is vibe-wand]stimulate yourself with the [printed name of O][otherwise if O is insertable object]use the [printed name of O] to fuck yourself[otherwise if the player is male]stroke your [ShortDesc of penis][otherwise]use your fingers to play with your clit[end if] as you allow yourself to be spit-roasted.[or]You submit as the patrons spitroast you, [if O is vibe-wand and the player is female]allowing the [printed name of O] to vibrate against your clit[otherwise if O is vibe-wand]allowing the [printed name of O] to vibrate against the tip of your penis[otherwise if O is insertable object]fucking yourself with the [printed name of O][otherwise if the player is female]tenderly rubbing your sensitive clit[otherwise]tenderly playing with the head of your [player-penis][end if].[then at random]";
		otherwise if B is patron:[bust + hole]
			say "[one of]You [if O is insertable object]fuck[otherwise if O is vibe-wand]pleasure[otherwise if the player is female and vagina is not actually occupied]finger[otherwise]stroke[end if] yourself to the feeling of the [LongDickDesc of B] between your breasts and the [DickDesc of M] in your [if V is patron][vagina][otherwise][asshole][end if].[or]You [if O is insertable object]fuck yourself with the [printed name of O][otherwise if O is vibe-wand]use the [printed name of O] to stimulate yourself[otherwise if the player is male]stroke yourself[otherwise]touch yourself[end if] as you allow yourself to be used by two patrons at once.[or]You [if O is insertable object]fuck yourself with deep slow, thrusts[otherwise if O is vibe-wand]pleasure yourself with the [printed name of O][otherwise]play with your [genitals][end if], moaning as you enjoy the feeling of [NameDesc of B]'s [DickDesc of B] between your breasts and [if V is patron][NameDesc of V]'s [DickDesc of V] in your [vagina][otherwise][NameDesc of A]'s [DickDesc of A] in your [asshole][end if].[then at random]";
		otherwise:[dp]
			say "[if O is vibe-wand]You hold the [printed name of O] against your clit[otherwise]You eagerly rub your clit[end if] as [one of]the patrons make use of your body[or]the patrons fuck your [vagina], mouth, [asshole], and even your tits[or]you are gangbanged by four patrons at once[or]as four patrons use your body at the same time[then at random].";
	otherwise:
		if F is patron:
			say "[one of]You [if the oral sex addiction of the player > 4]eagerly [end if]suck [NameDesc of M]'s [DickDesc of M] as you [if O is insertable object]fuck yourself with the [printed name of O][otherwise if O is vibe-wand]stimulate yourself with the [printed name of O][otherwise if the player is male]play with your [ShortDesc of penis][otherwise]play with your clit[end if].[or]You [if O is insertable object]fuck[otherwise if O is vibe-wand]stimulate[otherwise]touch[end if] yourself as you submissively slurp [NameDesc of M]'s [DickDesc of M].[or]You focus on the feeling of [NameDesc of F]'s [DickDesc of F] in your mouth as you [if O is insertable object]plunge the [printed name of O] in and out of your [vagina][otherwise if O is vibe-wand]eagerly stimulate yourself with the [printed name of O][otherwise if the player is male]eagerly stroke your hard [player-penis][otherwise]eagerly diddle your clit[end if].[then at random]";
		otherwise if B is patron:
			say "[one of]You [if O is vibe-wand]stimulate yourself with the [printed name of O][otherwise]play with yourself[end if] as [NameDesc of M] thrusts between your [BreastDesc].[or]You hold your [BreastDesc] together for [NameDesc of M], focusing on [his of B] thrusting as you [if O is insertable object]fuck yourself with the [printed name of O][otherwise if O is vibe-wand]tease yourself with the vibrating end of the [printed name of O][otherwise if the player is male]stroke your [ShortDesc of penis][otherwise]tease your delicate clit[end if].[or]You submit as [NameDesc of B]'s [DickDesc of B] thrusts between your [BreastDesc], [if the titfuck addiction of the player < 5]cheeks burning with shame[otherwise]panting with excitement[end if] as you [if O is insertable object]push the [printed name of O] in and out of your [vagina][otherwise if O is vibe-wand]use the [printed name of O] to stimulate your genitals[otherwise if the player is female and vagina is not actually occupied]plunge your fingers in and out of your [vagina][otherwise]stroke your rock hard [player-penis][end if].[then at random]";
		otherwise if A is patron:
			say "[one of]You [unless O is nothing]stimulate yourself with the [printed name of O][otherwise]play with yourself[end if] as [NameDesc of M] pounds your [asshole].[or]You push back against [NameDesc of M], focusing on the feeling of [his of M] [DickDesc of M] sliding in and out of your [asshole] as you [if O is vibe-wand]hold the vibrating [printed name of O] against your [genitals][otherwise if the player is female]diddle your clit[otherwise if O is insertable object]fuck yourself with the [printed name of O][otherwise]play with your [player-penis][end if].[or]You submit as [NameDesc of V] fucks your [asshole], eagerly [unless O is nothing]pleasuring yourself with the [printed name of O][otherwise]lavishing attention on your genitals[end if].[then at random]";
		otherwise:[vaginal sex; no insertables]
			say "[one of]You [if O is vibe-wand]stimulate yourself with the [printed name of O][otherwise]play with yourself[end if] as [NameDesc of M] pounds your [vagina].[or]You push back against [NameDesc of M], focusing on the feeling of [his of M] [DickDesc of M] sliding in and out of your [vagina] as you [if O is vibe-wand]hold the vibrating [printed name of O] against your clit[otherwise]diddle your clit[end if].[or]You submit as [NameDesc of V] fucks your [vagina], eagerly [if O is vibe-wand]pleasuring yourself with the [printed name of O][otherwise]lavishing attention on your sensitive clit[end if].[then at random]".

To say OngoingAnalMasturbationFlav of (O - an object) with (M - a patron) in (C - an object):
	let F be a random patron penetrating face;
	let B be a random patron penetrating breasts;
	let V be a random patron penetrating vagina;
	if the number of patrons penetrating a body part is 3:
		say "[one of]You suck [NameDesc of F]'s [DickDesc of F], [if O is insertable object]fucking yourself[otherwise]fingering your ass[end if] to the feeling of the [LongDickDesc of B] between your breasts and the [DickDesc of V] in your [vagina][or]You [if O is insertable object]fuck yourself with the [printed name of O][otherwise]finger your [asshole][end if] as you allow yourself to be used by three patrons at once.[or]You [if O is insertable object]fuck yourself with deep slow, thrusts[otherwise]plunge your fingers in and out of your [asshole][end if], eagerly sucking [NameDesc of F] off as you compare and contrast the feeling of [NameDesc of B]'s [DickDesc of B] between your breasts, and [NameDesc of V]'s [DickDesc of V] in your [vagina].[then at random]";
	otherwise if the number of patrons penetrating a body part is 2:
		if F is patron and B is patron:
			say "[one of]You [if O is insertable object]fuck yourself[otherwise]finger yourself[end if] to the feeling of the [LongDickDesc of B] between your [BreastDesc] as you polish [NameDesc of F]'s [DickDesc of F] with your mouth.[or]You [if O is insertable object]fuck your [asshole] with the [printed name of O][otherwise]finger your [asshole][end if] as you allow [NameDesc of B] and [NameDesc of F] to use your body.[or]You submit as [NameDesc of B] fucks your [BreastDesc], sucking off [NameDesc of F] as you [if O is insertable object]push the [printed name of O] in and out of your[otherwise]move your fingers in and out of your[end if] [asshole].[then at random]";
		otherwise if F is patron:
			say "[one of]You [if O is insertable object]fuck yourself[otherwise]finger yourself[end if] to the feeling of the [LongDickDesc of V] in your [vagina] as you polish [NameDesc of F]'s [DickDesc of F] with your mouth.[or]You [if O is insertable object]fuck your [asshole] with the [printed name of O][otherwise]finger your [asshole][end if] as you allow yourself to be spit-roasted.[or]You submit as the patrons spitroast you, [if O is insertable object]pushing the [printed name of O] in and out of your[otherwise]moving your fingers in and out of your[end if] [asshole] in time with their thrusts.[then at random]";
		otherwise:
			say "[one of]You [if O is insertable object]fuck yourself[otherwise]finger yourself[end if] to the feeling of the [LongDickDesc of B] between your breasts and the [DickDesc of V] in your [vagina].[or]You [if O is insertable object]fuck yourself with the [printed name of O][otherwise]finger your [asshole][end if] as you allow yourself to be used by two patrons at once.[or]You [if O is insertable object]fuck yourself with deep slow, thrusts[otherwise]finger yourself with deep, slow movements[end if], moaning as you enjoy the feeling of [NameDesc of B]'s [DickDesc of B] between your breasts and [NameDesc of V]'s [DickDesc of V] in your [vagina].[then at random]";
	otherwise:
		if F is patron:
			say "[one of]You [if the oral sex addiction of the player > 4]eagerly [end if]suck [NameDesc of M]'s [DickDesc of M] as you fuck your [asshole] with [if O is insertable object]the [printed name of O][otherwise]your fingers[end if].[or][if O is insertable object]You fuck yourself with slow, deep thrusts, driving the [printed name of O] against[otherwise]You use your fingers to stroke[end if] your [if the player is male]prostate[otherwise]inner walls[end if], as you submissively slurp [NameDesc of M]'s [DickDesc of M].[or]You focus on the feeling of [NameDesc of F]'s [DickDesc of F] in your mouth as you [if O is insertable object]fuck your [asshole] with the [printed name of O][otherwise]eagerly finger your [asshole][end if].[then at random]";
		otherwise if B is patron:
			say "[one of]You fuck your [asshole] with [if O is insertable object]the [printed name of O][otherwise]your fingers[end if] as [NameDesc of M] thrusts between your [BreastDesc].[or]You hold your [BreastDesc] together for [NameDesc of M], focusing on [his of B] thrusting as you [if O is insertable object]fuck yourself with the [printed name of O][otherwise]finger your [asshole][end if][or]You submit as [NameDesc of B]'s [DickDesc of B] thrusts between your [BreastDesc], [if the titfuck addiction of the player < 5]cheeks burning with shame[otherwise]panting with excitement[end if] as you [if O is insertable object]push the [printed name of O] in and out of your[otherwise]move your fingers in and out of your[end if] [asshole].[then at random]";
		otherwise:
			say "[one of]You fuck your [asshole] with [if O is insertable object]the [printed name of O][otherwise]your fingers[end if] as [NameDesc of M] pounds your [vagina].[or]You push back against [NameDesc of M], focusing on the feeling of [his of M] [DickDesc of M] sliding in and out of your [vagina] as you [if O is insertable object]fuck yourself with the [printed name of O][otherwise]finger your [asshole][end if][or]You submit as [NameDesc of V] fucks your [vagina] [if O is insertable object]pushing the [printed name of O] in and out of your[otherwise]moving your fingers in and out of your[end if] [asshole] in time with [his of M] thrusts.[then at random]".

To store (M - a patron) after tricks:
	dislodge M;
	now M is unconcerned;
	now the boredom of M is 999.

To compute payment of (M - a patron):
	if woman-barbara is in the location of the player:[The scene finishes in a different way.]
		store M after tricks;
		now M is not interested;
	otherwise:
		if M is pissed off:
			say "[speech style of M]'[one of]I'm not paying you after that.'[or]If you want to get paid, you'll behave yourself next time.'[or]I'm not going to pay you. In fact I might complain.'[or]I'll be back, and next time be obedient and you'll actually earn a payment.'[in random order][roman type][line break]";
			decrease the employee-record of senior robobellboy by 1;
		otherwise:
			if free ride tattoo is not worn or a random number between 1 and 2 is 1:
				loot M;
				if dropped-item is a thing, say "[BigNameDesc of M] [one of]drops[or]tosses[or]places[purely at random] a[if dropped-item is emerald plentiful accessory]n[end if] [dropped-item] [one of]at your feet[or]on the ground in front of you[or]onto the bed[purely at random].";
			if diaper quest is 0, say "[speech style of M]'[if M is inexperienced patron][one of]Thanks for the great time!'[or]That was fun, I'll be back again!'[or]You blew my mind, babe.'[or]That was definitely worth the money.'[or]I think that's the hardest I've ever orgasmed, thank you so much.'[or]Here's your payment, as promised!'[in random order][otherwise if M is gross patron][one of]Thanks.'[or]That was good.'[or]Expensive, but worth it.'[or]I'll be back again.'[in random order][otherwise if M is experienced patron][one of]Until next time.'[or]Your performance was acceptable.'[or]You earned it.'[or]Buy yourself something nice.'[in random order][otherwise][one of]Keep the change, you filthy animal.'[or]To be honest I'm impressed that you've survived.'[or]You don't even deserve this much.'[or]Until next time, whore.'[or]Try harder next time.'[in random order][end if][roman type][line break]";
			let C be a random worn wearthing;
			if the class of the player is trained hooker or the class of the player is hotel employment:
				repeat with N running from 1 to 10: [We give the RNG several chances to not look at something boring like a ring.]
					if the initial outrage of C <= 3, now C is a random worn wearthing;
				let O be the initial outrage of C;
				if O > a random number between 8 and 16:
					loot M;
					if dropped-item is a thing:
						say "[BigNameDesc of M] pauses, and then [one of]drops[or]tosses[or]places[purely at random] a[if dropped-item is emerald plentiful accessory]n[end if] [dropped-item] next to it.";
						say "[speech style of M]'[if C is tattoo and the number of worn tattoos is 1]Your tattoo is[otherwise if C is tattoo]Your tattoos are[otherwise]That [ShortDesc of C][line break][speech style of M] you're [one of]wearing[or]sporting[or]showing yourself off in[as decreasingly likely outcomes] is[end if] pretty [if O > a random number between 13 and 16]fucking outrageous[otherwise]damn sexy[end if], [one of]so here's something extra as a tip[or]you deserve extra[or]I think you've earned this much[or]you deserve a reward[or]here's something towards your next sexy purchase[or]and I'm feeling generous[at random].'[roman type][line break]";
				if the class of the player is hotel employment, increase the employee-record of senior robobellboy by 1;[Until you start a training regimen, you can only earn strikes]
		say "[BigNameDesc of M] leaves the way [he of M] came.";
		destroy M.

Section 1 - Attack

To say LandingTaunt of (M - a patron):
	say "[BigNameDesc of M] smirks. [line break][speech style of M]'[one of]Haha, at last![or]I've never seen such a ridiculous sight in my life.[in random order]'[roman type][line break]";
	humiliate 50.

Definition: a body part (called B) is available for rubbing:
	repeat with M running through alive patrons:
		if M is penetrating B or the wanking-target of M is B, decide no;
	if B is vagina and the player is male, decide no;
	if B is penis and the player is female, decide no;
	decide yes.

To compute SelectionWaiting of (M - a patron):
	if woman-barbara is in the location of the player:
		do nothing; [She handles all the ones you can't fit]
	otherwise if the wanking-target of M is nothing:
		now the wanking-target of M is a random available for rubbing body part;
		say "[BigNameDesc of M] walks up to you and begins [if M is inexperienced patron]furiously[otherwise]slowly[end if] [if the bimbo of the player < 8]masturbating[otherwise]wanking[end if]. [big he of M] pushes [his of M] [DickDesc of M] up against your [wanking version of the wanking-target of M], [if the wanking-target of M is arms or the wanking-target of M is belly]forcing you to grip it and begin to stroke [his of M] length[otherwise]wiping [his of M] pre-cum on your skin and making sure you can feel [his of M] every motion[end if].";
	otherwise if the sex-length of M > 0:
		if the wanking-target of M is arms or the wanking-target of M is belly, say "You continue to [if the player is not a pervert or the reaction of the player is 0]reluctantly [end if][one of]stroke[or]pump[or]wank[or]jerk off[at random] [NameDesc of M]'s [DickDesc of M] with your [wanking version of the wanking-target of M].";
		otherwise say "[BigNameDesc of M] continues to [if the player is not a pervert]masturbate[otherwise]get [him of M]self off[end if], rubbing the head of [his of M] [DickDesc of M] up against your [wanking version of the wanking-target of M].";
		decrease the sex-length of M by a random number between 0 and 1;
	otherwise:
		say "Suddenly you hear [NameDesc of M] groaning as [he of M] explodes [if the wanking-target of M is arms or the wanking-target of M is belly]inside your[otherwise]onto your[end if] [wanking version of the wanking-target of M]. ";
		if bukkake fetish is 1:
			if the wanking-target of M is face or the wanking-target of M is hair:
				say "Your face is splattered with [if the semen coating of face > 6]even more [otherwise if the semen coating of face > 0]more [end if][semen].";
				CumFaceUp the semen load of M;
			otherwise if the wanking-target of M is breasts:
				say "Your tits are splattered with [if the semen coating of breasts > 6]even more [otherwise if the semen coating of breasts > 0]more [end if][semen].";
				CumTitsUp the semen load of M;
			otherwise if the wanking-target of M is asshole or the wanking-target of M is vagina or the wanking-target of M is penis:
				say "The [semen] lands on your ass and dribbles down onto your thighs.";
				CumThighsUp the semen load of M;
			otherwise:
				say "The [semen] splatters off your skin, giving you a fine coating on your [wanking version of the wanking-target of M] but mostly landing on the floor.";
				SemenPuddleUp the semen load of M;
		say "[if the semen addiction of the player < 6][line break][variable custom style][one of]Yuck![or]Gross![purely at random][otherwise if the semen addiction of the player < 10][variable custom style]Eww![otherwise][line break][second custom style]Ooh, it's so warm![end if][roman type][line break]";
		let R be a random number between 1 and the number of patrons penetrating a body part;
		say "[speech style of M]'I can't believe I came without getting to actually fuck you[if R is 0]. Why didn't you stop me?![otherwise].[end if]'[roman type][line break]";
		if R is 0, now M is pissed off; [This will never happen if the reason the player couldn't accommodate the patron was because there were other patrons using the player]
		compute payment of M.

To say wanking version of (B - a body part):
	if B is breasts:
		say "[BreastDesc]";
	otherwise if B is face:
		say "cheeks";
	otherwise if B is hair:
		say "forehead";
	otherwise if B is arms:
		say "left hand";
	otherwise if B is belly:
		say "right hand";
	otherwise if B is thighs:
		say "left foot";
	otherwise if B is asshole:
		say "left buttcheek";
	otherwise if B is vagina or B is penis:
		say "right buttcheek";
	otherwise if B is hips:
		say "right foot";

To compute facial dodging of (M - a patron):
	if the number of patrons penetrating a body part is 1:
		say FacialBrokenFree of M;
		if a random number between the semen addiction of the player * -1 and the dexterity of the player > the difficulty of M - 2:[facials are harder to dodge the more you like the feeling of semen]
			compute successful facial dodging of M;
		otherwise:
			compute failed facial dodging of M;
	otherwise:
		say "Due to the other patron[if the number of patrons penetrating a body part > 2]s[end if] using your body, you are completely unable to do anything to stop [NameDesc of M] as [he of M] pulls out and points [his of M] [DickDesc of M] at your [ShortDesc of face].";
		say UnavoidableFacial of M;
		CumFaceUp the semen load of M.

To say UnavoidableFacial of (M - a patron):
	say "[one of][BigNameDesc of M] holds you still as [he of M] ejaculates all over your face.[or]Your face is covered in a thick load of [semen] before you can even think about turning your face away.[or][BigNameDesc of M] groans, having already gone over the edge. You take a full ejaculation all over your face.[or]You're completely unable to get out of the way as [NameDesc of M] jizzes all over your face.[or][if the semen addiction of the player < 9]You struggle in vain as [he of M] unloads all over your face.[otherwise if the semen addiction of the player < 12]You half-heartedly struggle as [he of M] unloads all over your face.[otherwise]You giggle happily as [he of M] unloads all over your face.[end if][or][if the semen addiction of the player < 8]Knowing what's coming, you try to get out of the way. Unfortunately, there's nothing you can do to stop [NameDesc of M] from ejaculating all over your face.[otherwise if the semen addiction of the player < 12]Unfortunately, you find yourself without the will to struggle as [NameDesc of M] grabs you and force you to take a hot, sticky facial.[otherwise]Much to your delight, [NameDesc of M] grabs you and holds you in place for a hot, sticky facial.[end if][or][if the semen addiction of the player < 11]Knowing what's coming, you try to get out of the way. However, there's nothing you can do to stop [NameDesc of M] from ejaculating all over your face.[otherwise]Finding yourself distracted by how yummy [his of M] [DickDesc of M] looks, there's nothing you can do to stop [NameDesc of M] from ejaculating all over your face.[end if][in random order]".

To compute facial climax of (M - a patron):
	if M is unwrapped and woman-barbara is in the location of the player:
		say ResistedOralCreampie of M;
		BlowCount;
		compute post blowjob effect of M;
		compute payment of M; [sets him to a passive state until everyone is finished]
	otherwise:
		compute default facial climax for M;
		let T be mouth-tally tattoo;
		if T is worn:
			say "Taking out [his of M] permanent marker, [NameDesc of M] [if M is pissed off]growls while adding[otherwise]adds[end if] another strike to the tally on your cheek.";
			increase the tallies of T by 1;
		otherwise if there is a worn[ ink-me] tattoo:
			say "Taking out a permanent marker, [NameDesc of M] [if M is pissed off]growls while drawing[otherwise]draws[end if] a permanent tally on your cheek.";
			summon T.

To compute post blowjob effect of (M - a patron):
	if M is unwrapped and woman-barbara is in the location of the player:
		say "[speech style of M][one of]'Good. Now add that to the bowl.'[or]'Spit it into the bowl like a good whore now.'[in random order][roman type][line break][BigNameDesc of M] grabs you by your [ShortDesc of hair] and forces your face over to the bowl, where [he of M] makes sure that [his of M] entire load makes it into the bowl.";
		DoseUp fishbowl by the semen load of M;
		if the fill-colour of fishbowl is golden, now the fill-colour of fishbowl is murky;
		if the fill-colour of fishbowl is not murky, now the fill-colour of fishbowl is creamy;
	otherwise:
		let T be mouth-tally tattoo;
		if T is worn:
			say "Taking out [his of M] permanent marker, [NameDesc of M] [if M is pissed off]growls while adding[otherwise]adds[end if] another strike to the tally on your cheek.";
			increase the tallies of T by 1;
		otherwise if there is a worn[ ink-me] tattoo:
			say "Taking out a permanent marker, [NameDesc of M] [if M is pissed off]growls while drawing[otherwise]draws[end if] a permanent tally on your cheek.";
			summon T.

To say ResistedOralCreampie of (M - a patron):
	say "[one of][BigNameDesc of M] holds you down as [he of M] floods your mouth with a nice big load of [tasted-semen].[or][BigNameDesc of M] continues to fuck your mouth even as [he of M] reaches orgasm and you begin to taste [his of M] salty [semen].[or][BigNameDesc of M] explodes into your mouth, filling it with the [semen-adjective] taste of [semen]. Thin strands of drool still connect [his of M] [DickDesc of M] to your lips as [he of M] pulls out.[or][BigNameDesc of M] groans, tightening [his of M] grip as [he of M] begins to ejaculate, holding you down until your mouth has been thoroughly and completely filled with [tasted-semen].[or][BigNameDesc of M] groans as [he of M] goes over the edge. [if the semen taste addiction of the player < 8]You yelp indignantly as [he of M] paints your tongue with rope after rope of [tasted-semen].[otherwise if the semen taste addiction of the player < 12]You taste every single rope of [tasted-semen] [he of M] fires off into your mouth.[otherwise]You flatten your tongue against [his of M] opening, thoroughly tasting every last drip of [tasted-semen] shot into your mouth.[end if][in random order]".

To say SwallowDemand of (M - a patron):
	say "[speech style of M][one of]'You better swallow that, or I'm not paying.'[or]'Swallow like a good whore now.'[or]'Drink it down, [slut].'[or]'I expect you to swallow that, obviously.'[or]'Yeah, bitch, drink it up like a good girl now.'[in random order][roman type][line break]".

To compute angry punishment of (M - a patron):
	now M is pissed off.

To compute sexBegging of (M - a patron) in (F - a fuckhole):
	let C be 0;
	if M is not dickhead patron and M is not pissed off:
		say (M) mercy sex (a random number between 1 and 7);
		if a random number between 1 and 3 > 1, ruin F;
	otherwise if the sex-length of M is 1:[begging doesn't work on the last turn]
		say sexSubmitNearingClimax of M in F;
		ruin F;
	otherwise:
		say (M) nomercy sex (a random number between 1 and 7);
		ruin F.

To compute post climax effect of (M - a patron) in (F - vagina):
	if woman-barbara is in the location of the player:
		if the semen volume of vagina > 0:
			say "[speech style of M][one of]'That felt great. Now, squat over the bowl, bitch.'[or]'There's a good whore. Now let it all out into the bowl.'[in random order][roman type][line break][BigNameDesc of woman-barbara] is ready with the fishbowl, which is placed underneath your [vagina]. [BigNameDesc of M] spreads your pussy lips with [his of M] fingers, encouraging [his of M] creampie to seep down into the bowl.";
			DoseUp fishbowl by the semen volume of vagina;
			now the semen volume of vagina is 0;
			if the fill-colour of fishbowl is golden, now the fill-colour of fishbowl is murky;
			if the fill-colour of fishbowl is not murky, now the fill-colour of fishbowl is creamy;
	otherwise:
		let T be vagina-tally tattoo;
		if T is worn:
			say "Taking out [his of M] permanent marker, [NameDesc of M] adds another strike to the tally at your crotch.";
			increase the tallies of T by 1;
		otherwise if there is a worn[ ink-me] tattoo:
			say "Taking out a permanent marker, [NameDesc of M] draws a permanent tally next to your [vagina].";
			summon T.

To compute post climax effect of (M - a patron) in (F - asshole):
	if woman-barbara is in the location of the player:
		if (the total squirtable fill of belly - the total egg fill of belly) > 0:
			compute payment of M; [make him not unleashed before the squirt so he doesn't start fucking again]
			say "[speech style of M][one of]'Do you feel nice and full, [honey of M]? Well, time to let it all out into your trophy bowl.'[or]'Time to show us all just how a disgusting whore like you keeps [his of the player] favourite drink for later.'[in random order][roman type][line break][BigNameDesc of woman-barbara] is ready with the fishbowl, which is placed underneath your [asshole]. [BigNameDesc of M] spreads your [AssDesc], forcing you to expel the contents of your belly into the bowl.";
			AssSquirt;
	otherwise:
		let T be asshole-tally tattoo;
		if T is worn:
			say "Taking out [his of M] permanent marker, [NameDesc of M] adds another strike to the tally next to your [asshole].";
			increase the tallies of T by 1;
		otherwise if there is a worn[ ink-me] tattoo:
			say "Taking out a permanent marker, [NameDesc of M] draws a permanent tally next to your [asshole].";
			summon T.

To decide if (M - a patron) is losing wrapper in (F - a fuckhole):
	if a random number between 1 and 5 is 1, decide yes;
	decide no.

To say CondomFailFlav of (M - a patron) in (F - a fuckhole):
	let S be the semen addiction of the player;
	say "[one of][BigNameDesc of M] growls, tightening [his of M] grip as [he of M] fills your [variable F] with [semen]. Wait, what?! Your eyes widen as [he of M] pulls out, the condom bunched up around the base of [his of M] bare [DickDesc of M].[or][BigNameDesc of M] grunts and tightens [his of M] grip. You immediately realize the condom broke, [if S < 8]whimper[otherwise if S < 13]gasp[otherwise]coo[end if]ing as [semen] flows directly into your [variable F].[or][BigNameDesc of M] groans with pleasure, tightening [his of M] grip as [his of M] [DickDesc of M] begins to throb. You feel a flash of warmth near the tip of the condom, which is soon followed by a wet feeling starting just below it. The condom must have broken![or][BigNameDesc of M] grunts, [his of M] [DickDesc of M] throbbing as [he of M] fills the condom with [his of M] load. Something snags as [he of M] pulls out, and you [if S < 8]wince[otherwise if S < 12]gasp[otherwise]chuckle[end if] as you feel [his of M] load dribble out into your unprotected [variable F].[at random]";

To say CondomPieFlav of (M - a patron) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] growls, tightening [his of M] grip as the condom fills with warmth. [big he of M] continues fucking you, making sure that [his of M] balls have been well and truly emptied of every last drop of [semen]. Finally, you feel [his of M] hands leave your hips and [he of M] pulls out.[or][BigNameDesc of M] grunts, [his of M] [DickDesc of M] throbbing as [he of M] unloads [his of M] balls into [his of M] condom. [big he of M] sighs in satisfaction, roughly shoving you off [his of M] [DickDesc of M].[or][if the semen addiction of the player < 7][BigNameDesc of M] tightens [his of M] grip and begins grunting in pleasure. You shudder and look over your shoulder as you feel a flash of warmth near [his of M] tip, spreading quickly into the rest of the condom as [he of M] releases your hips and pulls out.[otherwise if the semen addiction of the player < 11][BigNameDesc of M] tightens [his of M] grip and begins grunting in pleasure. You gasp and look over your shoulder as you feel a flash of warmth near [his of M] tip, spreading quickly into the rest of the condom as [his of M] thrusting comes to a close. [big his of M] hands reluctantly leave your hips as [he of M] pulls out.[otherwise][BigNameDesc of M] tightens [his of M] grip and begins grunting in pleasure. You look over your shoulder and grin as you feel a surge of warmth near [his of M] tip, spreading quickly into the rest of the condom as you milk [his of M] [DickDesc of M] down to the last drop. [big his of M] hands reluctantly leave your hips as [he of M] pulls out.[end if][or][BigNameDesc of M] grunts and tightens [his of M] grip. You [if the semen addiction of the player < 8]whimper[otherwise if the semen addiction of the player < 13]sigh quietly[otherwise]coo[end if] as the condom fills with [his of M] [semen], thin enough that you can still feel it flowing slowly inside it as [he of M] pulls out.[at random]".

To decide if (M - a patron) is willing to creampie (F - a fuckhole):
	if woman-barbara is in the location of the player, decide yes;[so we can force the player to squirt it out into the bowl]
	if F is vagina and M is mating, decide no;
	if (M is not pissed off and M is not dickhead patron):
		if the reaction of the player is 2, decide no;
	decide yes.

To say CreampieFlav of (M - a patron) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] growls, tightening [his of M] grip as warm [semen] begins flowing inside of you. [big he of M] continues fucking you until [his of M] balls have been thoroughly and completely emptied into your [variable F]. You feel [his of M] hands leave your hips as [he of M] pulls out.[or][BigNameDesc of M] grunts, [his of M] [DickDesc of M] throbbing as [he of M] unloads [his of M] balls into your [variable F]. [big he of M] sighs in satisfaction, roughly shoving you off [his of M] [DickDesc of M].[or][if the semen addiction of the player < 7][BigNameDesc of M] tightens [his of M] grip and begins grunting in pleasure. You shudder and look over your shoulder as [semen] flows into your [variable F]. [big he of M] releases your hips, finished with you.[otherwise if the semen addiction of the player < 11][BigNameDesc of M] tightens [his of M] grip and begins grunting in pleasure. You gasp and look over your shoulder as [semen] flows into your [variable F]. [big he of M] releases your hips, thrusting a few more times before pulling out.[otherwise][BigNameDesc of M] tightens [his of M] grip and begins grunting in pleasure. You look over your shoulder and grin as [semen] flows into your [variable F]. [big he of M] releases your hips, allowing you to milk [his of M] [DickDesc of M] down to the last drop before pulling out.[end if][or][if the semen addiction of the player < 8][BigNameDesc of M] grunts and tightens [his of M] grip. You whimper as [his of M] [DickDesc of M] pumps two waves of [semen] directly into your [variable F]. [big his of M] hands leave your hips as [he of M] pulls out.[otherwise if the semen addiction of the player < 13][BigNameDesc of M] grunts and tightens [his of M] grip. You sigh quietly as [his of M] [DickDesc of M] pumps two waves of [semen] directly into your [variable F]. [big his of M] hands leave your hips as [he of M] pulls out.[otherwise][BigNameDesc of M] grunts and tightens [his of M] grip. You coo happily as [his of M] [DickDesc of M] pumps two waves of [semen] directly into your [variable F]. [big his of M] hands leave your hips as [he of M] pulls out.[end if][at random]".

To compute (M - a patron) pulling out of (F - a fuckhole):
	let R be a random number between 1 and the openness of F;
	if M is experienced patron, now R is 99;
	if M is dickhead patron, now R is 1;
	if R is 1, compute M messily pulling out of F;
	otherwise compute M cleanly pulling out of F.

To compute (M - a patron) messily pulling out of (F - a fuckhole):
	get messy pull out image of M in F;
	say MessyPullOutFlav of M in F;
	if F is vagina, PussyFill 1;
	otherwise AssFill 1;
	SemenPuddleUp the semen load of M.

To compute (M - a patron) cleanly pulling out of (F - a fuckhole):
	get clean pull out image of M in F;
	say PullOutFlav of M in F;
	if bukkake fetish is 1, CumFaceUp the semen load of M.

To say PullOutFlav of (M - a patron) in (F - a fuckhole):
	say "[BigNameDesc of M] pulls out, rapidly pumping [his of M] [DickDesc of M] as [he of M] walks round to your face. You [if the semen addiction of the player < 5]wince[otherwise if the semen addiction of the player < 9]try not to look too excited[otherwise]giggle, cupping your hands under your chin[end if] as [he of M] blasts your face with several ropes of [semen].".

To say MessyPullOutFlav of (M - a patron) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] scrambles to pull out, but you both know it's too late. You feel [his of M] [semen] seeping out of your [variable F] as [he of M] finishes [him of M]self off on the floor.[or][BigNameDesc of M] keeps thrusting for a few more seconds before finally pulling out. [big he of M] pretends to finish on the floor, but there's no mistaking the feeling of [his of M] [semen] running out of your [variable F]...[or][BigNameDesc of M] scrambles to pull out, but it's too late. Thin strands of [semen] connect [his of M] [Dickdesc of M] to your [variable F] as the rest of [his of M] load dribbles out on the floor.[at random]".

The latex punishment rule of a patron is usually the no latex punishment rule.

[Handled by the patron sexresistflav function]
To say TitfuckResistFlav of (M - a patron):
	do nothing.

To say BreastsPenetrationFlav of (M - a dickhead patron):
	say "[BigNameDesc of M] slaps your breasts a few times with [his of M] [DickDesc of M] a few times before [unless there is a monster penetrating a body part]flipping you onto your back, straddling your belly and [end if]slamming [his of M] [DickDesc of M] up through your cleavage![line break][speech style of M]'Fine then, let's do this. Get to work, whore.'[roman type][line break]".

To say BreastsPenetrationFlav of (M - an experienced patron):
	say "[BigNameDesc of M] forces you to lie on the bed and holds you still there with [his of M] two strong hands. [big he of M] carefully takes aim with [his of M] [DickDesc of M] and then thrusts it up between your [ShortDesc of breasts].[line break][speech style of M]'Don't make me do all the work now, or this will take a long time.'[roman type][line break]".

To say BreastsPenetrationFlav of (M - an inexperienced patron):
	say "[BigNameDesc of M]'s [DickDesc of M] throbs with anticipation! [big he of M] leaps onto the bed and delicately places [his of M] [DickDesc of M] in between your [ShortDesc of breasts].[line break][speech style of M]'[one of]So, what now? I thrust while you squeeze them around my shaft?'[or]I'll just copy what they do in porn, and I'm sure it'll feel great, right?'[stopping][roman type][line break]".

To say BreastsPenetrationFlav of (M - a gross patron):
	say "As you lie on the bed [if the titfuck addiction of the player < 4]nervously[otherwise if the titfuck addiction of the player < 7]obediently[otherwise]impatiently[end if] and watch as [NameDesc of M] stands over your chest and then gets on [his of M] hands and knees. In this position [his of M] [DickDesc of M] slides right in between your [ShortDesc of breasts] but also [his of M] fat belly [if the largeness of breasts > 15]hovers inches from[otherwise]is pressed right against[end if] your face![line break][variable custom style]Gross[if the humiliation of the player > 35000]! But I deserve it.[otherwise]![end if][roman type][line break][line break][speech style of M]'[one of]So, what now? I thrust while you squeeze them around my shaft?'[or]I'll just copy what they do in porn, and I'm sure it'll feel great, right?'[stopping][roman type][line break]".

To say TwosomePrep of (M - a patron) in (F - asshole):
	let B be a random patron penetrating breasts;
	if B is patron, say "[BigNameDesc of B] doesn't stop thrusting as [NameDesc of M] lifts your legs, [one of]squeezing your ass[or]tapping your cheeks with [his of M] shaft[or]spreading your cheeks[at random] as [he of M] lines up [his of M] tip with your [asshole].";
	otherwise say "[BigNameDesc of M] smiles, shoving you face down onto the bed and pulling your hips up against [his of M] body. [big he of M] squeezes your ass with one hand, placing [his of M] length between your cheeks.".

To say SpitroastPrep of (M - a patron) with (O - a patron) in (F - asshole):
	let B be a random monster penetrating breasts;
	if B is monster, say "[BigNameDesc of O] and [NameDesc of B] continue thrusting as [NameDesc of M] lifts your legs, lining up [his of M] tip with your [asshole].";
	say "[BigNameDesc of O] temporarily stops thrusting, holding you down so [his of O] [DickDesc of O] stays in your mouth as [NameDesc of M] pulls you into [his of M] lap. You can feel [NameDesc of M]'s tip prod your [asshole].".

To say ThreesomePrep of (M - a patron) with (N - a patron) in (F - asshole):
	let B be a random monster penetrating breasts;
	if B is patron, say "[BigNameDesc of M] temporarily stops, lifting your leg for [NameDesc of N] as [he of M] slips underneath you. Unfortunately, [NameDesc of B] don't give you a break, continuing to use your breasts as [NameDesc of N] pushes apart your asscheeks.";
	otherwise say "[BigNameDesc of N] pauses, flipping you over so you're facing [him of M] as [he of N] resumes thrusting. You can feel [NameDesc of M] pushing apart your asscheeks as [he of M] lines up [his of M] tip with your [asshole].".

To say FoursomePrep of (M - a patron) with (N - a monster) and (O - a monster) in (F - asshole):
	let B be a random patron penetrating breasts;
	if B is patron, say "[BigNameDesc of M] temporarily stops, lifting your leg for [NameDesc of N] as [he of M] slips underneath you. Unfortunately, [NameDesc of O] and [NameDesc of B] don't give you a break, continuing to thrust as [NameDesc of N] pushes apart your asscheeks.";
	otherwise say "[BigNameDesc of M] and [NameDesc of O] temporarily stop, helping [NameDesc of N] flip you over and pull you into [his of N] lap. The break is only momentarily, and they go right back to thrusting as [NameDesc of N] lines up [his of N] tip with your [asshole].".

To say FoursomePrep of (M - a patron) with (N - a monster) and (O - a monster) in (F - asshole):
	let B be a random patron penetrating breasts;
	if B is patron, say "[BigNameDesc of N] temporarily stops, lifting your leg for [NameDesc of M] as [he of M] slips underneath you. Unfortunately, [NameDesc of O] and [NameDesc of B] don't give you a break, continuing to thrust as [NameDesc of N] pushes apart your asscheeks.";
	otherwise say "[BigNameDesc of N] and [NameDesc of O] temporarily stop, helping [NameDesc of M] flip you over and pull you into [his of M] lap. The break is only momentary, and they go right back to thrusting as [NameDesc of M] lines up [his of M] tip with your [one of]soon to be filled[or]unfilled[or]still empty[at random] [asshole].".

To say PrepTaunt of (M - an inexperienced patron) in (F - asshole):
	say "[speech style of M]'[one of]I can[']t believe I[']m really going to get to fuck your butthole!'[or]My [DickDesc of M][']s about to go in, I hope you[']re ready!'[or]I[']ve always wanted to try it Greek style!'[in random order][roman type][line break]".

To say PrepTaunt of (M - a gross patron) in (F - asshole):
	say "[speech style of M]'[if the number of lubricants covering asshole is 0]Brace yourself, I[']m going in dry.'[otherwise if M is gross patron]I[']m glad you have used some lube, because I forgot to bring any.'[end if][roman type][line break]".

To say PrepTaunt of (M - an experienced patron) in (F - asshole):
	say "[speech style of M]'[one of]I'm going to assume this isn[']t your first rodeo.'[or]The quality of whores in this establishment is declining. Let me teach you how to take a [DickDesc of M] up here properly.'[or]Look, I don[']t really have all day.'[in random order][roman type][line break]".

To say PrepTaunt of (M - a patron) in (F - asshole):[dickhead patron]
	say "[speech style of M]'[one of]I hope this hurts. It[']s supposed to.'[or]If this hurts going in, that[']s because I want it to.'[or]If you want to stop early, just remember, you won[']t get paid.'[in random order][roman type][line break]".

To say AnalVirginityTaunt of (M - an experienced patron):
	say "[speech style of M]'Ugh, I knew you were an amateur.'[roman type][line break]".

To say VeryTightAssholePenetrationFlav of (M - a patron):
	say "Pulling your [AssDesc] apart, [he of M] pushes forward. You arch your back, groaning in pain as [he of M] forces open your sphincter. [if the anal sex addiction of the player < 7]You don't dare to look at [him of M], staring straight downwards as [he of M] forcefully slides [his of M] throbbing [DickDesc of M] into your [asshole]. [big he of M] pushes in painfully slowly, each inch hurting worse than the last until [his of M] [DickDesc of M] is fully embedded within you.[otherwise]You uncontrollably moan in a mixture of pain and pleasure as your [asshole] slowly parts to receive [his of M] hard length. You push back, silently begging [him of M] to finish entering you, staring straight downwards as [he of M] forcefully slides [his of M] throbbing [DickDesc of M] into your [asshole]. [big he of M] ignores you and pushes in painfully slowly, each inch hurting even more than the last until [his of M] [DickDesc of M] is fully embedded within you. [big he of M] places [his of M] hands on your hips, holding you tightly in preparation for a brutal, rough fucking.[end if]".

[Aika: This seemed to be the wrong flavour for this level of orifice tightness]
[To say LessTightAssholePenetrationFlav of (M - a patron):
	let O be a random monster penetrating face;
	say "[one of]Your sphincter so loose that [his of M] [DickDesc of M] is already in you and thrusting by the time you think to resist. [if O is monster]You sigh and return to servicing the [O],[otherwise]Knowing you weren[']t going to try very hard anyway,[end if] you sit back and try to find a way to enjoy it.[or]You try not to moan as [his of M] penis slides into your [asshole], [if O is monster]shameful noises escaping through the space between your lips and the [O]'s[DickDesc of M][otherwise]cooing shamefully[end if] as [he of M] smacks your [AssDesc] and begins to thrust.[or]You force yourself to resist, but it doesn[']t matter. Your [asshole] is just too loose. [BigNameDesc of M] grabs your waist as [his of M] balls smack your taint, tightening [his of M] grip and beginning to thrust.[at random]".]

To say LessLooseAssholePenetrationFlav of (M - a patron):
	say "Pulling your [AssDesc] apart, [he of M] pushes forward, sliding in easily thanks to the looseness of your sphincter. [if the anal sex addiction of the player < 5]You look back, horrified that [he of M] penetrated you so quickly and easily. [big he of M] grins at you, placing [his of M] hands on your hips to hold you in place.[otherwise]You moan in pleasure as [he of M] pushes inside, pushing back against [him of M] to make sure [he of M] bottoms out in under a second.[end if]".

To say VeryLooseAssholePenetrationFlav of (M - a patron):
	say LessLooseAssholePenetrationFlav of M.

To say TitfuckForceFlav of (M - a patron):
	say "[speech style of M][one of]'This is going to take forever if you don't help me finish!'[or][or]'Why are you being so reluctant?'[or][or]'Come on, help me out here, use your hands to squeeze them together!'[or][or]'[if M is dickhead patron]Come on, isn't this the whole reason you have such big tits?'[otherwise]Calm down honey, I'm not going to hurt you.'[end if][then at random][roman type]".

To say TitfuckForceFlav of (M - an experienced patron):
	say "[speech style of M][one of]'You are aware that I won't pay if you don't make me cum, right?'[or][or]'Will you just do your job already?'[or][or]'Are you forgetting you're on the clock right now, whore?'[then at random][roman type]".

To say TitfuckForceFlav of (M - a gross patron):
	say "[speech style of M][one of]'Don't women with big boobs usually love stuff like this?'[or][or]'You know, it would be hotter if you jiggled your tits for me a little bit.'[or][or]'Come on, help me out here, use your hands to squeeze them together!'[then at random][roman type]".

To say TitfuckReceiveFlav of (M - a patron):
	if the reaction of the player is 2, say M mercy sex 0;
	otherwise say "[speech style of M][one of]'Unf, yes, keep it up!'[or][or]'Oh yes, hold them just like that!'[or][or]'Keep going! Squeeze them even tighter!'[or][or]'Fuck yes, this feels amazing!'[or][or]'[if the number of patrons penetrating a body part > 2 and interracial fetish is 1]This white bitch's[otherwise if the number of patrons penetrating a body part > 2]This slut's[otherwise if the number of patrons penetrating a body part > 1]Dude, this slut's[otherwise]Girl, your[end if] tits are INCREDIBLE!'[or][or]'Oh man, I'm going to shoot the biggest load all over these [if interracial fetish is 1]white titties[otherwise]funbags[end if]!'[then at random][roman type][line break]".

To say TitfuckReceiveFlav of (M - an experienced patron):
	if the reaction of the player is 2, say M mercy sex 0;
	otherwise say "[speech style of M][one of]'Nice job, whore.'[or][or]'I suppose anyone could figure out how to use these [if the largeness of breasts > 14]stupidly [end if][if the largeness of breasts > 8]massive[otherwise]big[end if] fuckpillows!'[or][or]'Keep going like that.'[or][or]'That's right, earn that money.'[then at random][roman type]".

To say TitfuckReceiveFlav of (M - a dickhead patron):
	if the reaction of the player is 2, say M mercy sex 0;
	otherwise say "[speech style of M][one of]'Yeah, keep that up!'[or][or]'Haha, yes, now I understand why [if interracial fetish is 1]this bitch got[otherwise]you have[end if] these [if the largeness of breasts > 14]stupidly [end if][if the largeness of breasts > 8]massive[otherwise]big[end if] fuckpillows!'[or][or]'I bet this would even more fun if I smacked these funbags around a little bit, huh?'[or][or]'Unf, yes, keep [if interracial fetish is 1]that shit UP[otherwise]it up[end if]!'[then at random][roman type]".

To say (M - a patron) submission sex (N - a number):
	let F be a random fuckhole penetrated by M;
	say "[speech style of M][one of]'Damn, this bitch's [if F is vagina][pussy][otherwise]ass[end if] is [if the openness of F < the girth of M]TIGHT[otherwise if interracial fetish is 1]BOMB[otherwise]awesome[end if]!'[or][or]'Yeah, take that [DickDesc of M], [if interracial fetish is 1]ho[otherwise]slut[end if]!'[or][if the number of patrons penetrating a body part > 2 and interracial fetish is 1]Y'all gotta try this [otherwise if the number of patrons penetrating a body part > 2]You guys have got to try this whore's[otherwise if interracial fetish is 1]Damn baby, I'm lovin' this[otherwise]I love this fucking[end if] [if F is vagina][pussy][otherwise]ass[end if]!'[or][or]'Feels like this cunt was fucking made for my [DickDesc of M]!'[then at random][roman type][line break]".

To say (M - a patron) rough sex (N - a number):
	say "[speech style of M][one of]'Maybe that'll teach [if interracial fetish is 1]ya[otherwise]you[end if]!'[or][or]'If you keep acting like that, I'm not paying you.'[or][or]'It's more fun when you play along, you know!'[or][or]'Stop squirming, or I won't pay!'[then at random][roman type][line break]";

To say (M - a dickhead patron) rough sex (N - a number):
	say "[speech style of M][one of]'Come on baby, you know you love this [LongDickDesc of M]!'[or][or]'[if face is not actually occupied]Shut up[otherwise]Stop squirming[end if] and take it, [if interracial fetish is 1]ho[otherwise]slut[end if]!'[or][or]'Stop kidding yourself! [if interracial fetish is 1]White bitches love BBC[otherwise]Sluts like you love this sort of treatment[end if]!'[then at random][roman type][line break]".

To say (M - a patron) mercy sex (N - a number):
	say "[speech style of M][one of]'I guess I don't know my own strength, heh...'[or]'Ok, jeez, I get it.'[or]Come on, I'm not TRYING to hurt you!'[or]Alright, I get it!'[in random order]".

To say (M - an experienced patron) mercy sex (N - a number):
	say "[speech style of M][one of]'Fine.'[or]'If you would stop whining this would go a lot faster.'[or]Fine then, but don't expect a good review.'[in random order][roman type][line break]";

To say (M - a patron) nomercy sex (N - a number):
	say "[speech style of M]'Are you trying to say you're not enjoying this?'[roman type][line break]";

To say (M - an experienced patron) nomercy sex (N - a number):
	say "[speech style of M][one of]'That's pretty unprofessional of you.'[or]'I've heard that one before.'[or]I'm not interested in your little sob story.'[in random order][roman type][line break]";

To say (M - a dickhead patron) nomercy sex (N - a number):
	say "[speech style of M][one of]'Haha! Your suffering is music to my ears.'[or]'I will do nothing of the sort.'[or]'It's funny that you think I care.'[or]'I'm the customer here, I'll do what I want.'[in random order][roman type][line break]";
	say SexSubmissionFlav of M;

To say OralResisting of (M - a monster):[handled by sexresistFlav]
	do nothing.

To say OralResistingResponse of (M - a patron):
	say "[speech style of M][one of]'This would be over way sooner if you'd just do your job. It's only a measly blowjob.'[or][or]'If you keep acting like that, I'm not paying you.'[or][or]'It's more fun when you play along, you know!'[or][or]'Start sucking, or I won't pay!'[then at random][roman type][line break]";

To say OralResistingResponse of (M - a dickhead patron):
	say "[speech style of M][one of]'I can't wait to see you choke on my load!'[or][or]'Fucking gag on it, bitch!'[or][or]'Yeah, gag on it, slut!'[or][or]'Am I going too rough? Oh well, I guess you can tell me when you're done. Hahaha!'[then at random][roman type][line break]";

To say OralSubmissionResponse of (M - a patron):
	say "[speech style of M][one of]'Keep going just like that. It feels amazing!'[or][or]'Ooh, fuck yeah, use your tongue.'[or][or]'[if throatskill is 1]Wow, look at you go! You're a cocksucking pro[otherwise]That's right, keep trying to take the whole thing[end if]!'[or][or]'I'm going to blow the BIGGEST load down your throat, holy shit!'[in random order][roman type][line break]".

To say OralSubmissionResponse of (M - a dickhead patron):
	say "[speech style of M][one of]'Yeah, suck [if interracial fetish is 1]that [DickDesc of M], you nasty ho[otherwise]my [DickDesc of M] you dirty little whore[end if]!'[or][or]'[if interracial fetish is 1]I bet I taste better than the white dick you're used to, right ho[otherwise]I bet my [DickDesc of M] tastes better than the dog food you're used to, right whore[end if]?'[or][or]'Yeah, [if throatskill is 1]deepthroat[otherwise]suck[end if] it! Earn your pay you fucking whore!'[in random order][roman type][line break]";

To say TwosomePrep of (M - a patron) in (F - vagina):
	let B be a random patron penetrating breasts;
	if B is patron, say "[BigNameDesc of B] doesn't stop thrusting as [NameDesc of M] spreads your legs, [one of]grinding [his of M] shaft between your folds[or]thumbing your clit[or]spreading your labia with [his of M] thumbs[at random] as [he of M] lines up [his of M] tip with your [vagina].";
	otherwise say "[BigNameDesc of M] smiles, shoving you face down onto the bed and pulling your hips up against [his of M] body. You can feel the shape of [his of M] shaft against your [vagina] as [he of M] squeezes your [AssDesc] with one hand.".

To say SpitroastPrep of (M - a patron) with (O - a monster) in (F - vagina):
	let B be a random monster penetrating breasts;
	if B is monster, say "[BigNameDesc of O] and [NameDesc of B] continue thrusting as [NameDesc of M] spreads your legs, lining up [his of M] tip with your [vagina].";
	otherwise say "[BigNameDesc of O] temporarily stops thrusting, holding you down so [his of O] [DickDesc of O] stays in your mouth as [NameDesc of M] push you onto your hands and knees. [if O is dickhead patron][BigNameDesc of M] slaps your face a couple times as [NameDesc of M]'s[otherwise][BigNameDesc of M] squeezes your ass as [he of M][end if] tip lines up with your [vagina].".

To say ThreesomePrep of (M - a patron) with (N - a monster) in (F - vagina):
	let B be a random monster penetrating breasts;
	if B is monster, say "[BigNameDesc of N] and [NameDesc of B] continue thrusting as [NameDesc of M] spreads your legs, lining up [his of M] shaft with your [vagina].";
	otherwise say "[BigNameDesc of N] pulls you off the bed and into [his of N] lap, continuing to thrust as [NameDesc of M] positions [his of M] shaft at your entrance.".

To say FoursomePrep of (M - a patron) with (N - a monster) and (O - a monster) in (F - vagina):
	let B be a random patron penetrating breasts;
	if B is patron, say "None of the patrons stop fucking you as [NameDesc of M] spreads your legs, [one of]grinding [his of M] shaft between your folds[or]thumbing your clit[or]spreading your labia with [his of M] thumbs[at random] as [he of M] lines up [his of M] tip with your [one of]unfilled hole[or]final empty hole[or]entrance[at random].";
	otherwise say "[BigNameDesc of N] and [NameDesc of O] don't stop fucking you as [NameDesc of M] spreads your legs, [one of]grinding [his of M] shaft between your folds[or]thumbing your clit[or]spreading your labia with [his of M] thumbs[at random] as [he of M] lines up [his of M] tip with your [one of]unfilled[or]soon to be filled[or]still empty[at random] [vagina].".

To say PrepTaunt of (M - an inexperienced patron) in (F - vagina):
	say "[speech style of M]'[one of][if M is unwrapped]You're on birth control, right?'[otherwise]So this is what a condom is like...'[end if][or]I can't wait any longer! I'm going to go in now.'[or]This is so much cooler than porn!'[in random order][roman type][line break]".

To say PrepTaunt of (M - a gross patron) in (F - vagina):
	if pregnancy fetish is 1:
		if the pregnancy of the player is 0, say "[speech style of M]'There's nothing hotter than fucking a pregnant chick where the baby's going to be coming out soon.[roman type][line break]";
		otherwise say "[speech style of M]'[if M is wrapped]If you think about, it a condom is a lot like a trashbag[otherwise]The risk of getting you pregnant just makes this even hotter[end if].'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[if M is wrapped]It's probably better I wear a condom.'[otherwise]Are you looking forward to feeling me cum inside your sacred spot?'[end if][roman type][line break]".

To say PrepTaunt of (M - an experienced patron) in (F - vagina):
	say "[speech style of M]'[one of][if M is wrapped]I'm not going to make the mistake of going bareback with a whore like you[otherwise]I'm going in bareback but don't worry, I'm clean[end if].'[or]You're not the prettiest whore I've ever seen, but you'll do for tonight.'[or]Are you just going to lie there like a dumb bitch or are you going to actually service me properly?'[in random order][roman type][line break]".

To say PrepTaunt of (M - a patron) in (F - vagina):[dickhead patron]
	say "[speech style of M]'[one of]Don't you dare orgasm before I do.'[or]If you faint before I'm finished, I won't be impressed.'[or]If you want to have any chance of getting paid, you'll take it quietly until I'm done.'[in random order][roman type][line break]".

To say VaginalVirginityTaunt of (M - an inexperienced patron):
	say "[speech style of M]'Wow, it was your first time too? This must be fate!'[roman type][line break]".

To say VaginalVirginityTaunt of (M - an experienced patron):
	say "[speech style of M]'Ugh, you were a virgin? Honestly, you should be paying ME for this.'[roman type][line break]".

To say VaginalVirginityTaunt of (M - a gross patron):
	say "[speech style of M]'Oh, you were a virgin? Well, don't worry, I'm really good at sex.'[roman type][line break]".

To say VaginalVirginityTaunt of (M - a patron):[dickhead patron]
	say "[speech style of M]'So it's my responsibility to break you in, eh?'[roman type][line break]".

To say VeryTightVaginaPenetrationFlav of (M - a patron):[TODO: possibly work on]
	say "Pulling your [AssDesc] apart, [he of M] pushes forward. ";
	if the vaginal sex addiction of the player < 3:
		say "You tremble with humiliation as you feel yourself stretching to accept [his of M] [DickDesc of M]. [if M is dickhead patron]The worst part is that [he of M] doesn't hide the fact that your pain is why it feels so good for [him of M], groaning[otherwise][big he of M] groans[end if] in pleasure as [he of M] sinks inch after inch of [his of M] throbbing [DickDesc of M] into your defenceless hole. [big he of M] places [his of M] hands on your hips as [he of M] bottoms out.";
	otherwise if the vaginal sex addiction of the player < 6:
		say "You tremble with reluctant excitement as you feel yourself stretching to accept [his of M] [DickDesc of M]. [if M is experienced patron][big he of M] grunts quietly to [him of M]self[otherwise][big he of M] makes it quite clear that [he of M]'s enjoying [him of M]self, [his of M]sing and groaning in pleasure[end if] as inch after inch of throbbing [DickDesc of M] sinks into your stiff hole. [big he of M] places [his of M] hands on your hips as [he of M] bottoms out.";
	otherwise:
		say "[big his of M] other hand is used to hold the base of [his of M] shaft as you guide it into your [vagina]. You shiver with excitement as you feel yourself stretching to accept [his of M] [DickDesc of M]. [if M is experienced patron]You find yourself[otherwise][big his of M] every [his of M]s and groan of pleasure just makes you feel more proud,[end if] grinning from ear to ear as inch after inch of [his of M] throbbing member sinks into your waiting hole. [big he of M] places [his of M] hands on your hips as [he of M] bottoms out.".

To say LessTightVaginaPenetrationFlav of (M - a patron):
	say "[if the vaginal sex addiction of the player < 4]You stifle a moan of pleasure as [NameDesc of M]'s [DickDesc of M] slides into your defenceless hole. [big he of M] places [his of M] hands on your hips, driving inch after awful inch of [his of M] [DickDesc of M] through your labia lips. [big his of M] grip tightens as [he of M] bottoms out, assuring you that [he of M] won't let you get away, no matter how much you try.[otherwise if the vaginal sex addiction of the player < 7]You moan in pleasure, fighting the urge to push back against [him of M] as [NameDesc of M]'s [DickDesc of M] slides into your waiting hole. [big he of M] places [his of M] hands on your hips, driving inch after throbbing inch of [his of M] big [DickDesc of M] through your labia lips. [big his of M] grip tightens as [he of M] bottoms out, assuring you that you're in for a good, rough fuck.[otherwise]You moan as loudly as you can, pushing back against [him of M] as [NameDesc of M]'s perfectly sized [DickDesc of M] sinks into your waiting hole. [big he of M] places [his of M] hands on your hips, driving inch after wonderful inch of [his of M] [DickDesc of M] through your labia lips. [big his of M] grip tightens as [he of M] bottoms out, reassuring you that you're in for the good, rough fuck you so desperately want.[end if]".

To say LessLooseVaginaPenetrationFlav of (M - a patron):
	say "[if the vaginal sex addiction of the player < 4]You let out a completely involuntary moan as [NameDesc of M] slides in like a knife through butter, grunting as [he of M] bottoms out. [big he of M] grins as you look over your shoulder, [one of]horrified[or]mortified[purely at random] at the sound that just came out of your mouth. Strong hands grab your hips tightly, removing all hope of escape.[otherwise if the vaginal sex addiction of the player < 7]You let out a somewhat involuntary moan of pleasure as [NameDesc of M] slides in like a knife through butter, grunting as [he of M] bottoms out. [big he of M] grins as you look over your shoulder, embarrassed at how good that felt, but still hungry for more. Strong hands grab your hips tightly, assuring you that your hunger will be sated.[otherwise][big his of M] other hand is used to hold the base of [his of M] shaft as you guide it into your [vagina]. You shamelessly moan in pleasure as [NameDesc of M] slides in like a knife through butter, grunting as [he of M] bottoms out. [big he of M] grins as you look over your shoulder, licking your lips in hopes that [he of M]'ll give you the roughest fucking [he of M] can. Strong hands grab your hips tightly, assuring you that you'll get the sex you so desperately, desperately need.[end if]".

To say VeryLooseVaginaPenetrationFlav of (M - a patron):
	say LessLooseVaginaPenetrationFlav of M.

To set up sex length of (M - a patron) in (F - face):
	now the sex-length of M is a random number between 3 and 4.

To compute (M - a patron) entering mouth:
	if face is not occupied: [The whole 'face is not occupied' stuff is so that we can try and call this from other areas of the code.]
		set up sex length of M in face;
		if there is a patron penetrating breasts, say SpecialMouthPenetrationFlav of M;
		otherwise say MouthPenetrationFlav of M; [If you just want to change the text, replace the Flav function. Otherwise replace the entire compute function.]
		now M is penetrating face;
		get facial penetration image for M;
		say GangAnnounce;
	otherwise:
		say "[BigNameDesc of M] sees that you are already occupied and loses interest.";
		distract M.

To say SpecialMouthPenetrationFlav of (M - a patron):
	say "[BigNameDesc of M] kneels down on the bed, [one of]forcing you to angle your head back towards [him of M][or]forcing you to crane your neck[or]pulling on your chin so the top of your head rests on the mattress[at random]. [if the oral sex addiction of the player < 4]You grunt angrily as [he of M] forces [his of M] [DickDesc of M] into your mouth[otherwise if the oral sex addiction of the player < 7]You sigh quietly as [he of M] slides [his of M] [DickDesc of M] into your mouth[otherwise]You moan submissively [he of M] slides [his of M] [LongDickDesc of M] into your mouth[end if] and begins to thrust.";

To say (M - a patron) sex reaction:
	let F be a random fuckhole penetrated by M;
	if the reaction of the player is 2:
		do nothing;
	otherwise:
		say "[variable custom style]";
		if the player is not able to speak:
			say "[one of][if the relevant sex addiction of M < 8]It's even worse because I can't say no![otherwise if the relevant sex addiction of M < 12]I can't say no, but do I want to?[otherwise]It's so hot when I can't say no![end if][or][if the relevant sex addiction of M < 8]It's even more humiliating because I can't say no.[otherwise if the relevant sex addiction of M < 12][big he of M]'d listen to me if I wasn't wearing this gag. Right?[otherwise]I love it when I can't say no![end if][or][if the relevant sex addiction of M < 8]I can't even call for help...[otherwise if the relevant sex addiction of M < 12]'MMMPH! MMhhmmMMPH!'[otherwise]It's even better because I can't say no![end if][at random]";
		otherwise if the openness of F < the girth of M - (a random number between 1 and 3):
			say "[one of][if the relevant sex addiction of M < 8]'You're too big!'[otherwise if the relevant sex addiction of M < 12][big he of M]'s so big![otherwise]'[big he of M]e hee! You're SO big!'[end if][or][if the relevant sex addiction of M < 8]Why does [he of M] have to be so big?[otherwise if the relevant sex addiction of M < 12]'It[']s too big, I can't handle it.'[otherwise]Mmm! Loosen me up, stud![end if][or][if the relevant sex addiction of M < 8]Why couldn't [he of M] be smaller?[otherwise if the relevant sex addiction of M < 12]I can feel myself getting stretched.[otherwise]'Yeah! TEAR ME UP!'[end if][at random]";
		otherwise if the player is male:
			if the relevant sex addiction of M < 8:
				say "[one of]This feels so weird![or]'I'm not a chick!'[or][big he of M]'s treating me like a chick! What the fuck![or]My [player-penis] feels weird.[in random order]";
			otherwise if the relevant sex addiction of M < 12:
				say "[one of]Is there a difference between me and a woman at this point?[or][if size of penis is less than 3]How can I feel so hard when it's so small?[otherwise]I'm so hard...[end if][or]'Oh! That felt good!'[or][if size of penis is less than 3]I'm so hard... but at least I'm so small, probably no one could even tell![otherwise]Why am I hard at a time like this?[end if][in random order]";
			otherwise:
				say "[one of][big he of M]'s hitting my g-spot! Teehee![or]'Make me jizz all over the floor!'[or]'Harder! I want to hands-free cum!'[in random order]";
		otherwise if the relevant sex addiction of M < 8:
			say "[one of]'Ow ow ow!'[or]'Shit!'[or]'Slow down! I'm not just your fucktoy!'[or]It's like [he of M] doesn't care what I think at all![or][big he of M]'s using me like some sort of cheap whore![or]This is insane![or]This feels so wrong![or]'Stop this! I'm not just a hole!'[or]Please let this be over soon...[in random order]";
		otherwise if the relevant sex addiction of M < 12:
			say "[one of]It feels good. That's not my fault.[or]I know I shouldn't be enjoying this, but...[or]Why does it have to feel so good?[or]If I have to have sex, it might as well be with someone who does it right.[or]I wonder if [he of M]'ll cum a lot.[or]It actually feels kind of good.[or]I never realized sex could feel this good![or]I'm actually not sure if I want this to end.[in random order]";
		otherwise:
			say "[one of]Uh oh, looks like I'm trapped! Teehee![or]I can't get away! Uh ooooh![or]'Oooh!'[or]'Aaah!'[or]'Aah! Aah! Aah!'[or]'I'm having so much fun!'[or]'Oooh Shiiiit!'[or]'Yeah! Fuck me!'[or]'Don't stop! It feels so good!'[or]'Wear me out, stud!'[or]'Fuckme! Fuckme! Fuckme!'[or]I want this to last FOREVER![or]Use me, stud!'[or]'Use me like the dirty slut I am!'[or]'Faster, stud, faster!'[or]'This feels SO right.'[then purely at random]";
	say "[roman type][line break]".

Section 2 - DQ

To satisfy (M - a patron) for (N - a number) seconds:
	if there is a hotel bed in the location of M:
		compute payment of M;
	otherwise:
		if M is in the location of the player, say "[BigNameDesc of M] seems satisfied, and leaves the we [he of M] came.";
		destroy M.

Definition: a patron is willing to donate diapers:
	if there is a worn diaper bag of holding or there is a worn baby diaper bag of holding, decide yes;
	decide no.

Definition: a patron is eager to double diapers:
	if there is a worn diaper bag of holding or there is a worn baby diaper bag of holding, decide yes;
	decide no.


Definition: a patron is willing to spank: decide yes.


Definition: a patron (called M) is willing to spank gently:
	if M is pissed off, decide no;
	decide yes.

Definition: a patron (called M) is willing to masturbate:
	if the health of M is the maxhealth of M and M is not pissed off and a random number between 0 and 10000 < the arousal of the player, decide yes;
	decide no.

To say MasturbationDeclarationFlav of (M - a patron):
	say "[speech style of M]'[one of]Oh, good, I see you're diapered like a baby should be. I guess you deserve a little reward[or]Lie down baby, Daddy is going to make you feel good today[stopping]...'[roman type] ".

To say MasturbationStartFlav of (M - a patron):
	say "[BigNameDesc of M] leads you to lie on the bed on your back, with your head comfortably on the pillow. [big he of M] places one hand lovingly on your [if the largeness of breasts > 2][BreastDesc][otherwise]tummy[end if] and [his of M] other hand over [if there is a worn diaper]the crotch of your diaper[otherwise if the player is female]your [vagina][otherwise]your [ShortDesc of penis][end if]!".

To say DiaperMasturbationFlav of (M - a patron):
	let D be a random worn diaper;
	say "[BigNameDesc of M] [one of]pushes [his of M] fist into the front of your [D], letting you feel the bumps of [his of M] knuckles through the padding[or]swirls two fingers around the the front of your [D], as if it was a vagina[or]lightly spanks your [genitals] through the padding of your [D][or]rubs [his of M] entire hand in circles over the front of your [D][at random]. [if the player is able to get horny][one of]It feels amazing[or]You can feel yourself getting more and more aroused[or]You shiver with shameful pleasure[in random order].".

To say MasturbationAfterFlav of (M - a patron):
	say "[BigNameDesc of M] seems [if refactoryperiod > 0]satisfied[otherwise]to grow tired[end if] and pulls away. [if refactoryperiod <= 0][line break][speech style of M]'[one of]Haha, okay, that's enough fun for now.'[or]That's enough for now I think. And no touching yourself while I'm gone either! Be a good baby for Daddy.'[or]This is taking too long. Don't touch yourself until I return, then maybe next time I'll have more luck.'[in random order][roman type][line break][end if]";
	compute payment of M.

To say SpankingStartFlav of (M - a patron):
	say "[BigNameDesc of M] pushes your face down into the mattress, leaving your butt high in the air.".

To say SpankingDeclarationFlav of (M - a patron):
	say "[speech style of M]'[one of][if M is pissed off]Well well well, it looks like the tables have turned. Do you have any regrets?'[otherwise]I trust you've been trained in how to properly receive a spanking.'[end if][or]Oh yes, you know what time it is!'[cycling][roman type] ".

To say SpankingMercyRejectionFlav of (M - a patron):
	say "[speech style of M]'[if M is pissed off]There's no chance of that, you little brat!'[otherwise]No no baby, I'm determined to get my money's worth today. You'll take what you're given.'[end if][roman type] [BigNameDesc of M] has an evil smile on [his of M] face.".

To say SoftSpankingFlav of (M - a patron):
	say "[BigNameDesc of M]'s resolve weakens, and then [he of M] delivers just a few weak blows to your [buttcheeks] with [his of M] hand. [if there is a worn diaper]Your [random worn diaper] softens the blows even further, so that they just feel like gentle pats. [end if][line break][speech style of M]'Well I guess I'll let you off this time, but that was really boring.'[roman type][line break][BigNameDesc of M] lets you go.";
	now M is pissed off;
	compute payment of M.

To say SpankingFlav of (M - a patron):
	say "[BigNameDesc of M] [one of]clearly knows what [he of M]'s doing, and [or][stopping]delivers [one of]four[or]three[or]five[as decreasingly likely outcomes] well-targeted open-palmed slaps to your [buttcheeks]. [if there is a worn diaper][DiaperSoftenFlav of M][end if]".

To say DiaperSoftenFlav of (M - a patron):
	say "[one of]Your [random worn diaper] softens the blows but [his of M] cold clinical technique is too good to prevent you from still feeling pain! [or][DiaperSoftenShortFlav of M][stopping]".

To say SpankingAfterFlav of (M - a patron):
	say "After this [he of M] seems satisfied, and begins to rub your sore [if asshole is lewdly exposed][buttcheeks][otherwise if there is a worn diaper]bottom through your padding[otherwise]bottom[end if] lovingly and speaks in a soothing voice. [line break][speech style of M]'[if M is pissed off]That's what you get for being disobedient, little baby. Maybe next time you'll listen to Daddy's instructions and obey them properly?'[otherwise][one of]It's okay, Daddy's here, Daddy loves you[or]There there. Daddy only spanks you because [he of M] loves you and wants you to be the perfect baby[or]Wasn't that fun, baby? Daddy had fun[or]Aww, does your bum-bum hurt, little Princess? It's supposed to[in random order].'[end if][roman type][line break]After your heart rate starts to calm down, [he of M] gets up. ";
	compute payment of M.


To say DQSpankResistReactionFlav of (M - patron):
	say "[BigNameDesc of M] [if M is well dressed patron]smiles.[line break][speech style of M]'[one of]Oh, you've done this before have you? Just enough thrashing as to not actually get away. Yes, well done!'[or]Sorry cutie, I guess we forgot to agree on a safeword!'[cycling][otherwise]frowns.[line break][speech style of M]'[one of]Now see here child, I paid extra for NO struggling. I'll be telling your supervisor about this!'[or]Are we crying now? As if that'll get you a better tip!'[cycling][roman type][line break]".


Definition: a patron (called M) is willing to forcefeed:
	if diaper messing >= 3, decide yes;
	decide no.

Definition: a dickhead patron is willing to forcefeed pills: decide yes.

To decide which number is the forcefeed-length of (M - a patron):
	decide on 3.

To decide which number is the forcefeed-length of (M - a dickhead patron):
	decide on 4.

To say ForcefeedDeclarationFlav of (M - a patron):
	say "[speech style of M]'[one of]I like to keep my babies bellies nice and full.'[or]I've brought some stuff for you to eat, so be a good girl and let me feed you, ok?'[in random order][roman type][line break]".

To say ForcefeedPillDeclarationFlav of (M - a patron):
	say "[speech style of M]'[one of]Hehehe... I've got one more trick up my sleeve...'[or]I paid extra on the way in for one of these... I'm gonna make you explode!'[then at random][roman type][line break]".


To say DQFeedingResistReactionFlav of (M - a patron):
	say "[speech style of M]'[one of]I don't care if you dislike formula, I paid premium for realism and I demand compliance!'[or]No no no it's not burping time yet, nor nap time. Now... hold... still!'[or]I'd be fine with the fussy play if I had forked out the cash for the high chair, dear, but these are the cards we're dealt!'[in random order][roman type][line break]".


Section 3 - Damage

To compute damage of (M - a patron):
	now M is pissed off;
	if the health of M > 0:
		say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a patron):
	say "[speech style of M]'Ouch! [one of]You're going to regret that.'[or]If this is meant to be play fighting, you're being too rough.'[or]Stop that right now!'[or]You're really asking for it, aren't you?!'[or]You are SO not getting paid now.'[or]Is this how you treat all your clients?!'[or]I will be complaining to the management!'[or]You can't be expecting to get any payment after this.'[in random order][roman type][line break]".

To compute death of (M - a patron): [Overrides main death function]
	say "[BigNameDesc of M] turns tail and quickly runs out of the room the way [he of M] came!";
	loot M;
	if dropped-item is a thing, say "[BigNameDesc of M] drops a[if dropped-item is emerald plentiful accessory]n[end if] [dropped-item][one of] and in [his of M] haste to leave [he of M] doesn't stop to pick it back up[or][stopping].";
	if a random number between 1 and the difficulty of M < 4:
		repeat with N running through patrons:
			DifficultyUp N by 1; [They slowly get more difficult if you keep beating them]
	destroy M.

dropped-item is a thing that varies.

To decide which number is the sexPaymentBase of (M - a monster):
	decide on 0.
To decide which number is the sexPaymentBase of (M - an experienced patron):
	decide on 1.

To loot (M - a patron):
	let A be a random off-stage plentiful accessory;
	if the class of the player is santa's little helper, now A is a random off-stage christmas gift;
	if A is plentiful accessory:
		now A is sapphire;
		let N be the sexPaymentBase of M;
		let J be a random number between N and whore theme bonus;
		if J is 1:
			now A is emerald;
		otherwise if J is 2:
			now A is ruby;
		otherwise if J is 3:
			now A is pink diamond;
		otherwise if J is 4:
			now A is pure diamond;
		otherwise if J > 4:
			now A is solid gold;
		set shortcut of A;
	now A is in the location of the player;
	now dropped-item is A.

Section 4 - Dominant Sex

To suggestFucker (F - a body part) for (M - a patron):
	if F is penis and M is unleashed:
		if M is dickhead patron or M is inexperienced patron:
			say "Do you want to try fucking [him of M] with your [SexDesc of penis]? It could be challenging...";
			if the player is consenting:
				now player-fucker is F;
				now player-fuckchoice is FUCK-PENETRATION;
		otherwise:
			say "Do you want to try making [him of M] suck your [SexDesc of penis]?";
			if the player is consenting:
				now player-fucker is F;
				now player-fuckchoice is FUCK-BLOWJOB;
	otherwise if F is a fuckhole and M is unleashed:
		say "Do you want to try riding [him of M][if the number of unleashed patrons in the location of the player > 2]? You might have to deal with [his of M] friends afterwards.[otherwise]?[end if]";
		if the player is consenting:
			now player-fucker is F;
			now player-fuckchoice is FUCK-RIDE;
	otherwise:
		if M is unconcerned, say "[BigNameDesc of M] is too tired from your last encounter.[line break]";
		say "You decide against it.".

To replace (M - a patron) after domination:
	do nothing.

To compute successful patron dominance of (M - a patron):
	compute unique dominance reward of M;
	if player-fuckchoice is FUCK-PENETRATION and refactoryperiod > 0, check virginity with M;
	DominateUp M;
	DifficultyUp M by 1.

To compute successful dominance of (M - a patron):
	let X be the number of patrons in the location of the player;
	if the player is male and player-fucker is penis:
		if the number of unleashed patrons in the location of the player is 0:
			repeat with P running through patrons in the location of the player:
				DifficultyUp P by 1;
				destroy P;
			say "[if X is 1][BigNameDesc of M] slinks away as soon as [he of M] has the strength[otherwise][BigNameDesc of M] and the rest of the patrons take awhile to collect themselves before leaving[end if].";
	otherwise:
		if the number of unleashed patrons in the location of the player is 0:
			repeat with P running through patrons in the location of the player:
				destroy P;
			unless woman-barbara is in the location of the player, say "[if X is 1][BigNameDesc of M] takes a moment to recover before [he of M] leaves[otherwise][BigNameDesc of M] and the rest of the patrons take a minute to recover before leaving[end if].";
		otherwise:
			let N be the number of unleashed patrons in the location of the player;[at least 1]
			let T be 3;
			if the player is female, increase T by 1;[how many patrons needed for the super humiliating scene]
			let WB be 0;
			if woman-barbara is in the location of the player, now WB is 1;[If barbara is around, we need the patrons to do the bowl scene]
			if WB is 0, say "[if X is 1][BigNameDesc of M] waves goodbye as [he of M] leaves.[otherwise if X is 2][NameDesc of M] high fives [his of M] friend as [he of M] leaves.[otherwise if X > 2]The patrons high five and pat each other on the back as they leave[end if]. ";
			say "[if X is 1]That went badly[otherwise if X > 2 and N is 1]Things were going so well[otherwise if X - N > 2]At least you were in charge for a little while[otherwise if N < T]That went well. Until you got shown your place[otherwise]They definitely showed you your place[end if]...";
			repeat with P running through patrons in the location of the player:
				if P is unleashed:
					TimesSubmittedUp P;
					store P after tricks;
				if WB is 0, destroy P.


To say DominanceIntro of (M - a patron):
	let P be the number of patrons in the location of the player;
	say "You strip [NameDesc of M], putting your foot on [his of M] chest as you yank off [his of M] shirt[if P > 2]. The other patrons exchange looks as you order them to strip, but none of them disobey[otherwise if P is 2]. The other patron makes a face when you order [him of M] to strip, but [he of M] doesn't disobey[end if]. [PowerBottomComment of M] [line break][speech style of M][if M is dickhead patron]'Ha, this was a fun joke. Now get on your knees, bitch.'[otherwise if M is gross patron]'A dominatrix? I don't know, I'd rather be on top...'[otherwise if M is experienced patron]'You? A dominatrix? Don't make me laugh. Stop this charade.'[otherwise]'Y-you're a dominatrix?! B-but I didn't pay for this!'[end if][roman type][line break]";
	if there is a held condom-providing thing:
		say "Would you like to have [if P is 1][him of M] wear a condom[otherwise]them wear protection[end if]?";
		if the player is consenting:
			if woman-barbara is in the location of the player:
				say "[BigNameDesc of M] smacks your hand away when you try to put the condom on. Looks like you're going to have to do this protection free.";
			otherwise:
				repeat with N running through patrons in the location of the player:
					say CondomManualFlav of N;
					now N is wrapped.

To say PowerBottomComment of (M - a patron):
	let P be the number of patrons in the location of the player;
	if the player is not able to speak:
		say "You gesture for [if P is 1][him of M] to get [him of M]self[otherwise]them to get themselves[end if] hard.";
	otherwise if the bimbo of the player < 6:
		if the player is male and transGender is 0:
			say "[first custom style]'[one of]Get yoursel[if P is 1]f[otherwise]ves[end if] hard. And don't make it gay by thinking about me when you're doing it.'[or]You [if P is 1]know how to jack off, right? Get started[otherwise]guys know how to jack off, right? Get yourselves started[end if].'[at random][roman type]";
		otherwise:
			say "[first custom style]'[one of]I want to see your erection[if P > 1]s[end if]. Now.'[or]Now that you're naked, why don't you get [if P > 1]yourselves hard[otherwise]hard[end if]?'[at random][roman type]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style][one of]Get nice and hard for me. [if P > 1]Show me those [DickDesc of M]s[otherwise]Show me that [LongDickDesc of M][end if].'[or]We're going to have sex[if P > 1], everyone[end if]. Now get nice and hard.'[at random][roman type]";
	otherwise:
		say "[second custom style]'[one of]I want to see [if P > 1]some hard-ons[otherwise]a hard-on[end if]! Show me how horny I'm making you!'[or]Are you ready[if P > 1 and lady fetish is 1]girls[otherwise if P > 1]boys[end if]? Show me with [if P > 1]some nice, big boners[otherwise]a nice big boner[end if].'[at random][roman type]";

To say DominanceFailure of (M - a patron):
	let P be the number of patrons in the location of the player;
	if M is wrapped:
		say "You try to force [NameDesc of M] to the ground, but [he of M]'s prepared after last time, and within moments has you pinned down on the bed.";
	if player-fucker is penis:
		say "You try to force [NameDesc of M] to the ground, but [if P > 2]you're surrounded by other [men of M], and they gang up on you to easily force you to your knees[otherwise if P is 1][he of M] isn't alone, and before long the patrons have successfully forced you onto your hands and knees[otherwise][he of M]'s too strong, and eventually [he of M] overpowers you, forcing you down onto your hands and knees[end if].";
	otherwise:
		say DominanceIntro of M;
		unless M is wrapped:
			say "[if P is 1][BigNameDesc of M] strokes [him of M]self to hardness[otherwise]The patrons stroke themselves to full hardness[end if].";

[One article of clothing stripped/stolen per patron. ###MG: Was too brutal, just one thing gets stolen][###Selkie: Actually, what about allowing that in that as another 'Game Hates You' consequence? Easily coded by setting number-to-lose to either no. of patrons or 1 accordingly.]
To compute failed dominance punishment of (M - a patron):
	if player-fucker is penis:
		compute sissy punishment of M;
		now another-turn is 1;
	otherwise:
		now the health of M is the maxhealth of M;[make sure the player loses]
		bottom dominate M at 99;
		dislodge M;
		if woman-barbara is in the location of the player, now fishbowl is in the location of the player;
		compute post climax effect of M in player-fucker;
		toppled dominate M;
		repeat with P running through unleashed patrons in the location of the player:
			TimesSubmittedUp M;
			store M after tricks;
			unless woman-barbara is in the location of the player, destroy P.

To compute domination interference of (M - a patron) for (N - a patron):
	say "[BigNameDesc of M] moves out of the way, waiting to see what happens next.".

To say DominanceSuccess of (M - a patron):
	let P be the number of patrons in the location of the player;
	let REA be the number of unleashed patrons in the location of the player;
	if player-fucker is penis:
		weiner dominate M;
		now REA is the number of unleashed patrons in the location of the player;
		let bonus be 1;
		if M is unconcerned and REA > 0:
			say "You [if P > 1]scan the patrons['] faces[otherwise]scan [his of M] face[end if], looking for potential signs of weakness.";
			repeat with N running through unleashed patrons in the location of the player:
				decrease the health of N by 3 + (bonus * 2);[bonus from defeating the first one]
				say "You [one of]look toward[or]make eye contact with[or]glance at[at random] [NameDesc of N]. Do you [if N is gross patron or N is experienced patron]make [him of M] suck your [sexual-player-penis][otherwise]try to fuck [him of M][end if]?";
				if the player is consenting:
					weiner dominate N;
					if N is unleashed:
						break;[Once you fail to dominate one of them, or you get tired, you're done.]
					otherwise:
						increase bonus by 1;
						say "[line break][if REA is 2]The remaining patron looks intimidated![otherwise if REA > 2]The remaining patrons look intimidated![end if]";
		ending dominate M;
	otherwise:
		say DominanceIntro of M;
		now refactoryperiod is 1;[Ensures the player does not orgasm too early during the scene]
		unless M is wrapped, say "[if P is 1][NameDesc of M] strokes [him of M]self to a full, throbbing hardness[otherwise]The patrons stroke themselves to full hardness[end if].";
		bottom dominate M at 0;
		let overpowered be 0;
		if M is not unconcerned:
			compute post climax effect of M in player-fucker;
			now overpowered is 1;
			now player-fucking is DOMINANT-SHAMEFUL;
		now REA is the number of unleashed patrons in the location of the player;
		if REA > 1, say "[if REA > 2]The remaining patrons form a loose circle around the bed. Looks like all of them need to be taught a lesson[otherwise]The remaining patron moves up to the bed. Looks like [he of M] needs a lesson too[end if]![line break]";
		let debuff be 0;
		while the number of unleashed patrons in the location of the player > 0 and overpowered is 0:
			say "You [if P > 1]scan the patrons['] faces[otherwise]scan [his of M] face[end if], looking for potential signs of weakness.[line break]";
			repeat with N running through unleashed patrons in the location of the player:
				if overpowered is 0:
					say "You [one of]look toward[or]make eye contact with[or]glance at[at random] [NameDesc of N]. Ride [him of M] next?";
					if the player is bimbo consenting:
						bottom dominate N at debuff;
						if N is unleashed:
							now overpowered is 1;
							if woman-barbara is in the location of the player, now fishbowl is in the location of the player;
							compute post climax effect of N in player-fucker;
							now player-fucking is DOMINANT-SHAMEFUL;
					otherwise:
						say "Do you want to see if you can soften [him of M] up a bit instead? It probably wouldn't be dominant...[line break]";
						if the player is consenting, mercy dominate N;
						if N is unleashed, increase debuff by 1;
		if overpowered is 1:
			let NM be a random patron penetrating a body part;
			dislodge NM;
			now the stance of the player is 1;
			toppled dominate NM;
		otherwise:
			now P is the number of patrons in the location of the player.[We need to regenerate this number because it's possible the player told some/one of the patrons to leave]

[blowjob/boobjob]
To weiner dominate (M - a gross patron):
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	if debugmode > 0, say "[line break][input style]Player dominance = [N], monster submissiveness = [D]. Is N >= D?[roman type]";
	if N >= D:
		if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
		let C be a random bottom level protection clothing;
		if sexual-penis-length > 3:
			say "You push [NameDesc of M] onto the bed and straddle [his of M] torso. [line break][speech style of M]'This is just like my Japanese animes!'[roman type][line break]You rip open [his of M] shirt as [he of M] [if C is clothing]pulls out your[otherwise]strokes your[end if] hardening [sexual-player-penis], [if sexual-penis-length > 8]obviously trying not to look intimidated[otherwise]glancing up at you seductively[end if] as [he of M] wraps [his of M] [if lady fetish is 1]breasts[otherwise]lips[end if] around your [SexShaft]. [big he of M][one of]'s clearly never done it before[or] clearly still doesn't know what [he of M]'s doing[stopping], but [he of M] makes up for it with raw enthusiasm, [if lady fetish is 1 and sexual-penis-length > 8]noisily suckling the tip and pumping your length with her tits until you fill your mouth with [semen][otherwise if lady fetish is 1 and bukkake fetish is 1]licking her lips and massaging your length with her tits until you cum all over her face[otherwise if lady fetish is 1]licking her lips and massaging your length with her tits until you cum[otherwise]slurping noisily until you finally fill his mouth with [semen][end if]";
			moderateDignify;
			orgasm;
			say AfterDominationComment 10 of M;
			BlowGet;
		otherwise:
			say "You push [NameDesc of M] onto the bed and straddle [his of M] torso. [line break][speech style of M]'Oh, I think I read about this in the brochure. If I pay you, I don't have to do what you say, right?'[roman type][line break][big he of M] picks you up and sets you down on the bed, fishing a jewel out of [his of M] shirt and tossing it your way. At least you got paid.";
			loot M;
			say AfterDominationComment 9 of M;
			now player-fucking is DOMINANT-NEUTRAL;
		store M after tricks;
		compute successful patron dominance of M;
	otherwise:
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		say "You try to push [NameDesc of M] onto the bed, but [he of M] won't budge! [line break][speech style of M]'No way! Just let me fuck you already!'[roman type][line break]";

[blowjob]
To weiner dominate (M - an experienced patron):
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	if debugmode > 0, say "[line break][input style]Player dominance = [N], monster submissiveness = [D]. Is N >= D?[roman type]";
	if N >= D:
		if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
		let C be a random bottom level protection clothing;
		if sexual-penis-length > 3:
			say "You push [NameDesc of M] to [his of M] knees, [one of]and are surprised when [he of M] takes[or]allowing [him of M] to take[stopping] the initiative and [if C is clothing]pull your [sexual-player-penis] out of your [printed name of C][otherwise]wrap one hand around your hardening [sexual-player-penis][end if]. [big he of M] maintains [his of M] business-like demeanour as [he of M] strokes your [SexShaft], not even bothering to look up at you as uses [his of M] tongue to coat your length with saliva. [big he of M] clearly knows what [he of M]'s doing, and [one of]the moment[or]when[stopping] your [SexDesc of penis] finally enters [his of M] mouth, [one of]you know a rookie like you could never stand up to someone like [him of M][or]you are once again reminded of the fact that you're just a rookie[stopping]. [big his of M] lips hold on tightly as you groan with pleasure, pumping your load straight down [his of M] throat.";
			moderateDignify;
			orgasm;
		otherwise:
			say "You push [NameDesc of M] to [his of M] knees, [one of]and are surprised when [he of M] takes[or]allowing [him of M] to take[stopping] the initiative and [if C is clothing]pull down your [printed name of C][otherwise]shrug out of [his of M] suit[end if]. [line break][speech style of M]'Ok, miss dominatrix. What now?'[roman type][line break][big he of M] looks up at you expectantly. You never expected to get this far. You're not really sure what to do next. A moment of silence passes, and [he of M] finally leans forward, lolling out [his of M] tongue as [he of M] gingerly strokes your [SexDesc of penis] with two fingers. You immediately shoot your load, causing [him of M] to roll [his of M] eyes as a few tiny ropes of [semen] spurt into [his of M] mouth.";
			now player-fucking is DOMINANT-NEUTRAL;
			orgasm;
		store M after tricks;
		BlowGet;
		say AfterDominationComment 10 of M;
		compute successful patron dominance of M;
	otherwise:
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		say "You gesture for [NameDesc of M] to get on [his of M] knees, but [he of M] refuses! [line break][speech style of M]'You're in no position to ask things of me, whore. [if M is pissed off]You're already not getting paid[otherwise]Get on the bed, [please][end if].'[roman type][line break]";

[You go for the main hole (whichever that is)]
To weiner dominate (M - an inexperienced patron):
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	if debugmode > 0, say "[line break][input style]Player dominance = [N], monster submissiveness = [D]. Is N >= D?[roman type]";
	if N >= D:
		if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
		let C be a random bottom level protection clothing;
		if sexual-penis-length >= 4:
			say "You [if C is clothing]pull out your [sexual-player-penis][otherwise]prod your [sexual-player-penis] to hardness[end if] as you push [NameDesc of M] onto the bed. [line break][speech style of M]'[one of]This is going to be by first time. Be gentle, ok?'[or]Be gentle, I'm still not very experienced!'[stopping][roman type][line break]You nod, [if lady fetish is 1]spread[otherwise]lift[end if]ing [his of M] legs as you [if sexual-penis-length > 8]slowly, slowly slide the first few inches of your[otherwise if sexual-penis-length < 6]ease[otherwise]push[end if] your [SexDesc of penis] into [his of M] [HoleDesc of M]. [one of][big he of M] wasn't kidding about being a virgin,[or][big he of M]'s still vice tight, and[at random] the feeling of [his of M] inner walls gripping your [SexShaft] is too intense for you to endure very long. No matter how much you try to pace yourself, it's too much, and within moments you lose control[if sexual-penis-length > 7] and flood [his of M] [HoleDesc of M] with a massive load[otherwise if sexual-penis-length > 5] and fill [his of M] [HoleDesc of M] with your load[otherwise], pulling out and shooting a few short ropes of [semen] across [his of M] belly[end if].";
			strongDignify;
			orgasm;
			say AfterDominationComment 10 of M;
			FuckGet;
		otherwise:
			say "You [if C is clothing]pull out your [sexual-player-penis][otherwise]poke your [sexual-player-penis] to hardness[end if] as you push [NameDesc of M] onto the bed. [line break][speech style of M]'Wait. Isn't that too small? Why don't I just pay you and then we'll call it even.'[roman type][line break][big he of M] reaches into [his of M] shirt pocket and tosses a jewel your way."; [###Selkie: I think this deserves a humiliation increase]
			loot M;
			now player-fucking is DOMINANT-NEUTRAL;
			say AfterDominationComment 9 of M;
		store M after tricks;
		compute successful patron dominance of M;
	otherwise:
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		say "You try to push [NameDesc of M] onto the bed, but [he of M] doesn't seem interested. [line break][speech style of M]'I don't think I'm ready for a dominatrix yet. I'd rather just fuck you.'[roman type][line break]";

[You go for the ass]
To weiner dominate (M - a patron):[dickhead patron]
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	if debugmode > 0, say "[line break][input style]Player dominance = [N], monster submissiveness = [D]. Is N >= D?[roman type]";
	if N >= D:
		if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
		if sexual-penis-length >= 4:
			say "You make [NameDesc of M] kneel down on the bed, grinding your [sexual-player-penis] between [his of M] cheeks as you rip off [his of M] shirt. [line break][speech style of M]'Last chance to back out. I won't go easy on you, bitch.'[roman type][line break]You decide to 'back in' instead, [if sexual-penis-length > 8]forcing [him of M] to groan as you cram[otherwise]making [him of M] gasp as you slide[end if] your [SexDesc of penis] into [his of M] [HoleDesc of M]. For a moment, [he of M] seems like [he of M]'s prepared to handle it, but then [his of M] facade completely breaks, and [he of M] begs you not to be rough. [if the times-submitted of M > 1][big he of M] doesn't really deserve it, after everything [he of M]'s done to you, but[otherwise]Its pretty pitiful, so[end if] you decide to oblige, 'gently' railing [his of M] tight little [HoleDesc of M] until you fill [him of M] with a [if sexual-penis-length > 8]huge[otherwise]nice, big[end if] load.";
			strongDignify;
			orgasm;
			now player-fucking is DOMINANT-NEUTRAL;
			say AfterDominationComment 10 of M;
			FuckGet;
		otherwise:
			say "You make [NameDesc of M] kneel down on the bed, excitedly grinding your [SexDesc of penis] between [his of M] cheeks. [line break][speech style of M]'OK, ok, you're going to punish me if I don't pay. I read the brochure, I know all about it. Greedy bitch...'[roman type][line break][big he of M] reaches into [his of M] shirt pocket and tosses a jewel your way. You were actually serious about fucking [him of M], but you decide to just cut your losses and roll with it.";
			loot M;[###Selkie: Note to self - there are some obvious fun humiliation scene ideas I'd like to add here.]
			say AfterDominationComment 9 of M;
		store M after tricks;
		compute successful patron dominance of M;
	otherwise:
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		say "You try to push [NameDesc of M] onto the bed, but [he of M] won't have it! [line break][speech style of M]'If anyone's about to get fucked like a slut, it's YOU, bitch!'[roman type]".

To ending dominate (M - a patron):
	let X be the number of unconcerned patrons in the location of the player;
	if X is the number of patrons in the location of the player:
		say "You look [if X is 1]down at [NameDesc of M][otherwise if X is 2]down at [NameDesc of M] and [his of M] friend[otherwise]down at all the patrons[end if], [if watersports fetish is 1 and the player is desperate to pee]and get an idea for how to top things off. Go for a golden shower?[otherwise]feeling thoroughly empowered.[end if]";
		if watersports fetish is 1 and the player is desperate to pee and the player is consenting:
			now player-fuckchoice is FUCK-WATERSPORTS;
			say "You make [if X is 1][him of M] cup [his of M] hands under [his of M] chin[otherwise]the patrons crowd in in front of you[end if] as you piss all over [if X is 1][his of M] face, thoroughly drenching [him of M][otherwise]their faces, thoroughly drenching them all[end if] in fresh [urine].";
			Dignify 50 + (X * 30);
			SportsGet;
		otherwise:
			Dignify 50 + (X * 10);
	otherwise:
		let P be a random unleashed patron in the location of the player;
		say "You catch your breath, making eye contact with [NameDesc of P]. Looks like you still have to deal with [him of P]!";
		FatigueDown 10;
		now another-turn is 1.

To mercy dominate (M - a patron):
	now player-fucking is DOMINANT-SHAMEFUL;
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M * 2;
	say "You beckon [NameDesc of M] into bed with you, allowing [him of M] to climb on top of you as you wrap your hands around [his of M] [DickDesc of M]. [big his of M] hands confidently rove your body as you begin to jerk [him of M] off, and gradually you feel your composure begin to slip. [run paragraph on]";
	if debugmode > 0, say "[line break][input style]Player dominance = [N], monster modified submissiveness = [D]. Is N >= D?[roman type]";
	if N >= D:[You satisfy him with a handjob]
		if debugmode > 0, say "[bold type]PASSED[roman type]";
		let F be player-fucker;
		let X be the number of unleashed patrons in the location of the player;
		say "Your heart beats faster as [he of M] starts pushing your boundaries, groping your [BreastDesc][if face is not actually occupied], sticking [his of M] fingers in your mouth[otherwise]slapping your face[end if], and [if F is asshole]grinding [his of M] [DickDesc of M] between your cheeks[otherwise]grinding [his of M] [DickDesc of M] against your clit[end if]. [big he of M] almost enters you a couple times, but luckily [he of M]'s more concerned with [if X > 2]putting on a good show for [his of M] friends[otherwise if X > 1]putting on a good show for [his of M] friend[otherwise]making a point[end if], and after thoroughly humiliating you for awhile, [he of M] climbs off you with a smirk.";
		decrease the health of M by 5;
		strongHumiliate;
	otherwise:[You don't satisfy him, and he might dominate you]
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		let F be player-fucker;
		let X be the number of unleashed patrons in the location of the player;
		say "Your heart beats faster as [he of M] starts pushing your boundaries, groping your [BreastDesc][if face is not actually occupied], sticking [his of M] fingers in your mouth[otherwise]slapping your face[end if], and [if F is asshole]grinding [his of M] [DickDesc of M] between your cheeks[otherwise]grinding [his of M] [DickDesc of M] against your clit[end if]. [big he of M] keeps getting closer and closer to entering you, torturing you with anticipation, until finally, you feel [his of M] tip slip into your [variable F]. [line break][speech style of M]'FUCK!'[roman type][line break][big his of M] jizzes immediately, growling in frustration as [he of M] fills [if M is unwrapped]you[otherwise]the condom[end if] with [semen].[line break][variable custom style]That was close![roman type][line break]";
		if M is unwrapped:
			if F is asshole, AssFill the semen load of M;
			otherwise PussyFill the semen load of M;
		store M after tricks;
		say AfterDominationComment 7 of M.

To bottom dominate (M - an inexperienced patron) at (debuff - a number):
	let F be player-fucker;
	let Ofit be the openness of F - the girth of M;
	say "You look [NameDesc of M] dead in the eye as you sit down in [his of M] lap, and [he of M] looks so intimidated that you can't help but torture [him of M] a little bit. [big he of M] grits [his of M] teeth as you grind your [if F is vagina]naked [vagina] on[otherwise]ass on[end if] [his of M] throbbing [DickDesc of M], teasing [him of M] with the prospect of penetration[if the player is not able to speak], intentionally making [him of M] frustrated. It seems to work,[otherwise].[line break][variable custom style]' I'm not making you frustrated, am I?'[roman type][line break]The answer is clearly yes,[end if] and [he of M] growls angrily as [he of M] shifts [his of M] weight. [run paragraph on]";
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	increase D by debuff;
	if debugmode > 0, say "[line break][input style]Player dominance = [N], modified monster submissiveness = [D]. Is N >= D?[roman type]";
	now M is penetrating F;
	if N >= D:[player wins]
		if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
		say "You hold onto your composure as [he of M] grabs your waist, staring daggers at [him of M] as [he of M] awkwardly tries to hold you down. It only takes a moment for [him of M] to let go you and beg you to let [him of M] cum. [big he of M] definitely doesn't deserve it after [his of M] little outburst, but you decide you've tortured [him of M] enough, [if Ofit > 1]moaning as you finally allow [his of M] [DickDesc of M] to slip[otherwise if Ofit > -2]hissing as you finally push [his of M] [DickDesc of M][otherwise]grunting as you gently push [his of M] [DickDesc of M][end if] into your [variable F]. [big he of M] doesn't last long after all the teasing, and after a couple seconds [if M is wrapped]you can feel the condom filling up with [semen][otherwise]you pull [him of M] out and finish [him of M] off[end if].";
		ruin F;[no creampie]
		orgasm M;
		store M after tricks;
		strongDignify;
		say AfterDominationComment 8 of M;
		compute successful patron dominance of M;
	otherwise:[patron wins]
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		say "You lose your composure immediately as [he of M] grabs your waist, reaching between your legs and [if Ofit > 1]guiding[otherwise if Ofit > -2]easing[otherwise]force[end if] [him of M] into your [variable F] as quickly as you can manage. [line break][speech style of M]'Good. Now ride it until I cum, baby.'[roman type][line break]You're too intimidated not to obey, trying not to look [him of M] in the eye as you begin to bounce on [his of M] [DickDesc of M]. It doesn't take long for [him of M] to finish, but as [if M is wrapped]you feel the condom fill with warmth[otherwise]you feel [his of M] load flood into your [variable F][end if], you realize [his of M] grip is still as tight as ever.";
		ruin F;
		orgasm M;
		if F is vagina, PussyFill the semen load of M;
		otherwise AssFill the semen load of M.

To bottom dominate (M - an experienced patron) at (debuff - a number):
	let F be player-fucker;
	let Ofit be the openness of F - the girth of M;
	now M is penetrating F;
	say "You kneel in front of [NameDesc of M], looking over your shoulder and spreading your [if F is vagina]nether lips[otherwise]cheeks[end if] to make it clear you want [him of M] to fuck you. [big he of M] scoffs, but doesn't object, gently placing [his of M] hands around your waist as [he of M] [if Ofit > 1]slides[otherwise if Ofit > -2]pushes[otherwise]eases[end if] [his of M] [DickDesc of M] into your [variable F]. You nestle your head into the pillows as [he of M] begins to thrust, fully content to simply enjoy yourself and let [him of M] do all the work. Unfortunately, [he of M] doesn't seem to have your pleasure in mind, picking up speed with no regard for the fact that you're nowhere near finishing. [run paragraph on]";
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	increase D by debuff;
	if debugmode > 0, say "[line break][input style]Player dominance = [N], modified monster submissiveness = [D]. Is N >= D?[roman type]";
	if N >= D:
		if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
		say "You sit up sharply, stopping [him of M] in [his of M] tracks. [if the player is able to speak][line break][variable custom style]'Are you in a fucking hurry?'[roman type][line break][otherwise]You can't tell [him of M] off verbally, but the gesture you throw over your shoulder is more than adequate.[end if] You relax again as [he of M] starts thrusting at a much calmer page, and you find yourself moaning as the pleasure slowly builds. [big he of M] loses control when [he of M] nears [his of M] peak, but luckily for [him of M], you're close too, and you eagerly push back against [him of M], [if the size of penis > 0]shooting your own load across the sheets[otherwise]riding though an explosive climax[end if] as [if M is wrapped][he of M] fills the condom with [his of M] load[otherwise][he of M] fills your [variable F] with [semen][end if].";
		ruin F;
		orgasm M;
		if M is unwrapped:
			if F is vagina, PussyFill the semen load of M;
			otherwise AssFill the semen load of M;
		orgasm;
		store M after tricks;
		severeDignify;
		say AfterDominationComment 8 of M;
		compute successful patron dominance of M;
	otherwise:
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		say "[if the player is able to speak][line break][variable custom style]'Hey, aren't you forgetting something?'[roman type][line break][big he of M] ignores you completely[otherwise]You can't tell [him of M] off verbally, so you try to use gestures instead. [big he of M] seems not to notice[end if], and with [his of M] firm grip on your waist, there's nothing you can do to make [him of M] slow down. Your only choice is to just lie there and take it, contemplating what [if the number of patrons in the location of the player > 2][his of M] friends are going to do to you[otherwise][he of M] will do to your next[end if] as [if M is wrapped]the condom floods with [his of M] load[otherwise][he of M] shoots several spurts of [semen] into your [variable F][end if]";
		ruin F;
		orgasm M;
		if F is vagina, PussyFill the semen load of M;
		otherwise AssFill the semen load of M;
	if F is vagina, FuckCount;
	otherwise AnalCount.

To bottom dominate (M - a gross patron) at (debuff - a number):
	let F be player-fucker;
	let Ofit be the openness of F - the girth of M;
	now M is penetrating F;
	say "You push [NameDesc of M] down onto the bed, resting a hand on [his of M] belly for support as you [if Ofit > 1]slip[otherwise if Ofit > -2]push[otherwise]ease[end if] [his of M] [DickDesc of M] into your [variable F]. [big he of M]'s submits eagerly, leaving you all the time in the world to focus on bringing yourself to a really satisfying orgasm. Unfortunately, nice and slow is too fast for [him of M], and you keep stopping and starting to make sure [he of M] doesn't cum too early. [BigNameDesc of M] looks pretty pissed off after the fourth time, and just when you think you'll be able to ride [him of M] to the finish line, [he of M] violently shifts [his of M] weight![run paragraph on]";
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	increase D by debuff;
	if debugmode > 0, say "[line break][input style]Player dominance = [N], modified monster submissiveness = [D]. Is N >= D?[roman type]";
	if N >= D:
		if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
		say "You aren't ready for it at all, and you barely manage a yelp as your world flips upside down, leaving you completely pinned down under [his of M] weight. [line break][speech style of M]'Don't worry, baby, I'll- uhh...n- nevermind, sorry!'[roman type][line break][BigNameDesc of M] rolls off you immediately after seeing the look on your face, looking away from you in silence as you climb back on top of [him of M]. After a stunt like that, [he of M] doesn't deserve to cum, but since you're so close, you decide [he of M] can at least help YOU. You ride [him of M] fast and hard until you [if the size of penis > 0]shoot your load across the sheets[otherwise]shower the sheets in girlcum[end if].";
		orgasm;
		ruin F;
		strongDignify;
		store M after tricks;
		say AfterDominationComment 8 of M;
		compute successful patron dominance of M;
	otherwise:
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		say "You aren't ready for it at all, and you barely manage a yelp as your world flips upside down, leaving you completely pinned down under [his of M] weight. [line break][speech style of M]'Don't worry, baby, I'll make you cum with my special rabbit humping technique!'[roman type][line break]With [him of M] on top, control goes out the window, and within moments you feel [if M is wrapped]the condom flooding with warmth. [big he of M] pulls out just long enough to peel off the condom before slamming back in[otherwise][semen] spurting into your [variable F]. [big he of M] doesn't stop even for a moment[end if], clearly serious about making you cum! You [if the relevant sex addiction of M < 4]squirm desperately as [he of M] ejaculates a second time, gritting your teeth[otherwise if the relevant sex addiction of M < 7]wiggle halfheartedly as [he of M] ejaculates a second time, trying not to moan[otherwise]wrap your legs around [his of M] waist as [he of M] ejaculates a second time, rolling your eyes back in your head[end if] as [NameDesc of M] [if M is wrapped]fills your unprotected [variable F] with a fresh load[otherwise]fills you with a second load[end if]!";
		ruin F;
		if F is asshole:
			if M is wrapped:
				now M is unwrapped;
				AssFill the semen load of M;
			otherwise:
				AssFill (the semen load of M * 2);
			anally orgasm shamefully;
			if the size of penis > 0, say "You shoot your load into the sheets!";
		otherwise:
			if M is wrapped:
				now M is unwrapped;
				PussyFill the semen load of M;
			otherwise:
				PussyFill (the semen load of M * 2);
			vaginally orgasm shamefully;
	if F is vagina, FuckCount;
	otherwise AnalCount.

To bottom dominate (M - a patron) at (debuff - a number):[dickhead patron]
	let F be player-fucker;
	let Ofit be the openness of F - the girth of M;
	now M is penetrating F;
	say "You lean over the bed, spreading your [if F is vagina]labia[otherwise]cheeks[end if] as you waggle your butt at [NameDesc of M]. [big he of M] chuckles, slapping your ass as [he of M] [if Ofit > 1]slides[otherwise if Ofit > -2]pushes[otherwise]eases[end if] [his of M] [DickDesc of M] into your [variable F] and begins to thrust. You immediately let [him of M] know [he of M]'s being too rough, which works for a while, but soon [he of M] goes right back to the way [he of M] started. There's a constant push and pull between the two of you, and it continues to intensify until you're literally wrestling each other for control! [run paragraph on]";
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	increase D by debuff;
	if debugmode > 0, say "[line break][input style]Player dominance = [N], modified monster submissiveness = [D]. Is N >= D?[roman type]";
	if N >= D:[player wins]
		if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
		say "Eventually you manage to catch both [his of M] wrists and pin them to the bed, fiercely pushing back against [him of M] as [he of M] angrily jackhammers your [variable F]. Both of your voices run ragged as you fuck each other to exhaustion, but the rush of dancing so close to the edge keeps you going strong. [BigNameDesc of M] grits [his of M] teeth as [his of M] [DickDesc of M] begins to throb, and you practically scream with pleasure as you clamp down around [him of M], [if the size of penis > 0]shooting [semen] onto the bed with every[otherwise]muscles clenching with every[end if] [if M is wrapped]blast of warmth in the condom[otherwise]shot [he of M] sends into your [variable F][end if].";
		ruin F;
		orgasm M;
		if M is unwrapped:
			if F is vagina:
				PussyFill the semen load of M;
			otherwise:
				AssFill the semen load of M;
		orgasm;
		store M after tricks;
		obsceneDignify;
		say AfterDominationComment 8 of M;
		compute successful patron dominance of M;
	otherwise:
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		let X be the number of unleashed patrons in the location of the player;
		say "Eventually [he of M] manages to pin both of your hands behind your back, grinding your face into the pillows as [he of M] brutally drills away at your [variable F]. [line break][speech style of M]'Shouldn't have been so uppity, bitch. [if X > 2]Now my friends and I aren't to go easy on you[otherwise if X is 2]My buddy and I aren't going to go easy on you[otherwise]Now you're working overtime[end if].'[roman type][line break][big he of M] slaps your ass as [he of M] slams [his of M] [DickDesc of M] home, roaring with pleasure as [he of M] fills [if M is wrapped]the condom with [his of M] load[otherwise]you with [semen][end if].";
		ruin F times 2;
		orgasm M;
		if F is vagina:
			PussyFill the semen load of M;
		otherwise:
			AssFill the semen load of M;
		moderateHumiliate;
	if F is vagina, FuckCount;
	otherwise AnalCount.

To toppled dominate (M - a patron):[you get gangbanged by all unleashed patrons in the room; The patron that dominated you will always go for your mouth. This scene should be very messy]
	let F be player-fucker;
	let G be a random worn ballgag;
	say "[BigNameDesc of M] [if G is worn]removes your [printed name of G] and tosses it on the ground[otherwise]grins[end if] as [he of M] presents you with [his of M] softening [DickDesc of M]. You [if the semen addiction of the player < 8]hesitate for several seconds before taking[otherwise if the semen addiction of the player < 14]hesitate for a second before taking[otherwise]don't hesitate to take[end if] it into your mouth, knowing you're tasting [if M is wrapped]leftover condom residue[otherwise if F is asshole]your own ass residue[otherwise]your own pussy juices[end if] in addition to [his of M] leftover [semen].[line break]";
	if G is clothing, now G is in the location of the player;
	now M is penetrating face;
	now M is unwrapped;
	strongHumiliate;
	let X be 1;
	repeat with P running through unleashed patrons in the location of the player:
		if M is P:
			do nothing;
		otherwise:
			if the number of patrons penetrating F is 0:
				say "[BigNameDesc of P] eagerly takes [NameDesc of M]'s place, [if F is asshole]pulling you into [his of P] lap[otherwise]spreading your legs[end if] as [he of P] slides [his of P] [LongDickDesc of P] into your [variable F].[line break]";
				increase X by 1;
				now P is penetrating F;
			otherwise if the number of patrons penetrating asshole is 0:
				now G is a random worn ass plugging clothing;
				say "[if G is clothing][BigNameDesc of P] pulls out your [printed name of G] and tosses it on the floor[otherwise][BigNameDesc of P] takes [his of P] place behind you[end if], pausing to spit in your [asshole] before filling it with [his of P] [DickDesc of P].[line break]";
				if G is clothing, now G is in the location of the player;
				increase X by 1;
				now P is penetrating asshole;
				ruin asshole;
			otherwise:
				let REM be the remainder after dividing X by 2;
				if REM is 0 or the player is male:
					let N be a random patron penetrating F;
					say "[BigNameDesc of N]'s [DickDesc of N] throbs as it [if N is wrapped]floods the condom with warmth[otherwise]floods your [variable F] with another load. [BigNameDesc of P] takes [his of N] place as soon as [he of N] pulls out.";
					if F is asshole:
						AssFill 2;
						AnalCount;
					otherwise:
						PussyFill 2;
						FuckCount;
					dislodge N;
					compute post climax effect of N in F;
					now P is penetrating F;
				otherwise:
					let N be a random patron penetrating asshole;
					say "[BigNameDesc of N] tightens [his of N] grip as [he of N] jizzes, filling [if N is wrapped][his of M] condom with [his of M][otherwise if the semen volume of belly > 0]your [asshole] with yet another[otherwise]your [asshole] with [his of M][end if] load. [BigNameDesc of P] immediately takes [his of P] place.";
					AssFill 2;
					dislodge N;
					compute post climax effect of N in asshole;
					AnalCount;
					now P is penetrating asshole;
				increase X by 1;
	let A be the number of patrons penetrating a body part;
	let V be a random patron penetrating vagina;
	let L be a random patron penetrating asshole;
	if A is 1:
		say "Having given up completely on acting dominant, you continue to polish [his of M] [DickDesc of M] long after its completely clean, keeping your lips sealed around [his of M] shaft until [he of M] fills your mouth with a fresh load.";
		StomachSemenUp the semen load of M;
		say AfterDominationComment 1 of M;
		compute post blowjob effect of M;
		BlowCount;
	otherwise if (A is 2 or A is 3 and the player is female) and X is A:
		if (L is patron and L is wrapped) or (V is patron and V is wrapped), say "[if V is patron and L is patron][BigNameDesc of V] and [NameDesc of L] finish at the same time, and you feel their loads shifting around inside the condoms as they pull out[otherwise if V is patron][BigNameDesc of V] is already pretty close from watching your 'battle' with [his of M] friend, and a couple pumps later, you feel the condom bulging with [his of M] load as [he of M] pulls out[otherwise][BigNameDesc of L] pounds you like there's no tomorrow, and a couple moments later, you feel the condom bulging with [his of M] load as [he of M] pulls out[end if]. By then, [NameDesc of M]'s [DickDesc of M] is already hard again, and now that you've been shown your place, you continue to polish [his of M] shaft with all the gusto a proper whore should. And when you get that final mouthful of [semen], you know [bold type]you're going be more submissive from now on.[roman type][line break]";
		otherwise say "[if V is patron and L is patron][BigNameDesc of V] and [NameDesc of L] finish at the same time, filling your holes with their loads[otherwise if V is patron][BigNameDesc of V] doesn't seem bothered by the fact that [he of V]'s getting sloppy seconds, and a couple thrusts later, you feel [him of V] erupting inside of you, filling you with another load[otherwise][BigNameDesc of L] is really eager to add to your anal creampie, and a couple pumps later, you feel [him of M] filling your hole with another load[end if]. By then, [NameDesc of M]'s [DickDesc of M] is already hard again, and now that you've been shown your place, you continue to polish [his of M] shaft with all the gusto a proper whore should. And when you get that final mouthful of [semen], you know [bold type]you're going to be more submissive from now on.[roman type][line break]";
		if L is patron:
			AssFill 2;
			[store L after tricks;]
			compute post climax effect of L in asshole;
			AnalCount;
			dislodge L;
		if V is patron:
			PussyFill 2;
			[store V after tricks;]
			compute post climax effect of V in vagina;
			FuckCount;
			dislodge V;
		StomachSemenUp the semen load of M;
		say AfterDominationComment 2 of M;
		compute post blowjob effect of M;
		SilentlyDelicateUp 1;[This increases submissiveness]
	otherwise:
		say "You feel [NameDesc of M]'s [DickDesc of M] twitch a little as the last [if V is patron]two patrons empty out their loads[otherwise]patron empties out [his of M] load[end if] inside you. By now, you've been thoroughly shown your place, and you suck [him of M] off with all the gusto a worthless cumdumpster should. And with that final mouthful of [semen], you know [bold type]you're going be a lot more submissive from now on.[roman type]";
		AssFill 2;
		AnalCount;
		[store L after tricks;]
		compute post climax effect of L in asshole;
		dislodge L;
		if V is patron:
			PussyFill 2;
			[store V after tricks;]
			compute post climax effect of V in vagina;
			FuckCount;
			dislodge V;
		StomachSemenUp the semen load of M;
		compute post blowjob effect of M;
		BlowCount;
		SilentlyDelicateUp 3;
		say AfterDominationComment 3 of M.
	[store M after tricks.]

To say AfterDominationComment (N - a number) of (M - an inexperienced patron):
	let X be the number of unleashed patrons in the location of the player;
	if N is 1:
		say "[line break][speech style of M]'I can't believe you [if player-fucker is asshole]let me go ass to mouth[otherwise]made me cum that hard[end if]! Here, take this!'[roman type][line break][big he of M] pulls out a piece of jewelry and drops it at your feet.";
		loot M;
		now M is not pissed off;
	otherwise if N < 4:
		say "[line break][speech style of M]'Sorry the whole dominatrix thing didn't work out for you. Still, you really earned your pay!'[roman type][line break][big he of M] pulls out a piece of jewelry and drops it at your feet.";
		loot M;
		now M is not pissed off;
	otherwise if N is 7:
		say "[line break][speech style of M]'Shoot. I can't believe I came already...'[roman type][line break]";
	otherwise if N is 8:
		say "[line break][speech style of M]'T-thank you!'[roman type][line break][big he of M] stutters, pulling out a piece of jewellery and dropping it on the bed.";
		loot M;
		now M is not pissed off;
	otherwise if N is 9:
		if X > 0:
			say "[line break][speech style of M]'I guess you have other things to worry about.'[roman type][line break]";
		otherwise:
			say "[line break][speech style of M]'Um, I guess that's it then.'[roman type][line break]";
	otherwise:
		say "[line break][speech style of M]'[one of]Wow.'[or]You really filled me up.'[stopping][roman type][line break][big he of M] looks down as you pull out, watching your [semen] run out of [his of M] hole.";
		now M is not pissed off.

To say AfterDominationComment (N - a number) of (M - an experienced patron):
	let X be the number of unleashed patrons in the location of the player;
	if N is 1:
		say "[line break][speech style of M]'Fair performance, but it doesn't change a thing. You still won't be paid.'[roman type][line break]";
	otherwise if N < 4:
		say "[line break][speech style of M]'This is what happens to disobedient whores. If you want to get paid, next time you'll complete the task asked of you without complaining.'[roman type][line break]";
	otherwise if N is 7:
		say "[line break][speech style of M]'I normally don't cum this fast...A-ahem. I'm not paying you for that.'[roman type][line break]";
	otherwise if N is 8:
		say "[line break][speech style of M]'I enjoyed that, but don't expect me to pay you.'[roman type][line break]";
	otherwise if N is 9:[shouldn't happen]
		say "[line break][speech style of M]'No work, no pay. Congratulations.'[roman type][line break]";
	otherwise:
		say "[line break][speech style of M]'I hope you enjoyed that, because I plan to complain.'[roman type][line break]".

To say AfterDominationComment (N - a number) of (M - a gross patron):
	let X be the number of unleashed patrons in the location of the player;
	if N < 4:
		say "[line break][speech style of M]'I can't believe you [if player-fucker is asshole]let me go ass to mouth[otherwise]let me creampie your special hole[end if]! Here, take this!'[roman type][line break][big he of M] pulls out a piece of jewelry and drops it at your feet.";
		loot M;
		now M is not pissed off;
	otherwise if N is 7:
		say "[line break][speech style of M]'I didn't mean to cum, so I'm not paying!'[roman type][line break]";
	otherwise if N is 8:
		say "[line break][speech style of M]'What about me!'[roman type][line break][big he of M] frowns, looking rather cross.";
		FavourDown M;
	otherwise if N is 9:
		if X > 0:
			say "[line break][speech style of M]'Don't go easy on her!'[roman type][line break]";
		otherwise:
			say "[line break][speech style of M]'You're lucky I paid!'[roman type][line break]";
	otherwise:
		say "[line break][speech style of M]'Now's the part where you pay me, right? No? Ok.'[roman type][line break]";
		now M is not pissed off.

To say AfterDominationComment (N - a number) of (M - a patron):
	let X be the number of unleashed patrons in the location of the player;
	if N is 1:
		say "[line break][speech style of M]'Nice job, whore. Maybe I'll pay you next time if you do that from the beginning.'[roman type][line break]";
		now M is not pissed off;
	otherwise if N < 4:
		say "[line break][speech style of M]'That's right. You're nothing but a dirty little whore.'[roman type][line break]";
		now M is not pissed off;
		moderateHumiliate;
	otherwise if N is 7:
		say "[line break][speech style of M]'You planned that, you fucking bitch! I'll remember this bullshit...'[roman type][line break][big he of M] looks pissed.";
		FavourDown M;
	otherwise if N is 8:
		say "[line break][speech style of M]'You better watch your ass, whore.'[roman type][line break]";
		FavourDown M;
	otherwise if N is 9:
		if X > 0:
			say "[line break][speech style of M]'I can't wait to see who takes you down a peg.'[roman type][line break]";
		otherwise:
			say "[line break][speech style of M]'This isn't over. I'll be back.'[roman type][line break]";
	otherwise:
		say "[line break][speech style of M]'I lost...'[roman type][line break][big he of M] [if X > 1]glances around the room as you pull out[otherwise]looks over [his of M] shoulder as you pull out[end if], completely red in the face.";
		now M is not pissed off.

Part 5 - Conversation

[It felt like making patrons interested via greetings would cause some bugs, so I decided to avoid it]
To compute talk option (N - 1) to (M - a patron):
	increase the greeted-count of M by 1;[this is a failsafe to make sure the first time greeting never displays twice.]
	if M is a friendly interested human monster and breasts is exposed, progress quest of chest-exposing-quest from M;
	compute basic greeting to M;
	if the greet-window of M > 0, now the greet-window of M is -1.

To compute basic greeting to (M - a patron):
	if the greet-window of M < 1 or M is unconcerned or M is penetrating a body part:
		compute vanity greeting of M;
	otherwise:
		compute conventional greeting of M.

To say AttentionAccepted of (M - a patron) with (N - a monster):
	say "[speech style of M]'[one of]This is quite the show!'[or]Yeah, ruin that bitch!'[or]Yeah, tear her up!'[at random][roman type][line break]".

To say InvitationRejected of (M - a patron) with (N - a monster):
	say "[speech style of M]'I'll pass.'[roman type][line break]".

To say AssistanceRejected of (M - a patron) with (N - a monster):
	if M is unconcerned:
		say "[speech style of M]'[one of]Shut up and do your job!'[or]Do you always complain this much?'[or]Can't you just do your job?'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I'll think about that after I've had a turn!'[or]What are you talking about? I want a turn too!'[or]If you'd just do your job properly, this would be over already.'[at random][roman type][line break]".

To compute taunt acceptance effect of (M - a patron):
	if the health of M > 5, decrease the health of M by 5.

[monster runs away]
To say TauntAccepted of (M - a patron):
	say "[speech style of M]'H-hey, there's no need for that.'[roman type][line break][BigNameDesc of M] looks intimidated!".

[monster gets stronger]
To say TauntRejected of (M - a patron):
	say "[speech style of M]'Don't talk to me like that, whore!'[roman type][line break][BigNameDesc of M] seems even more determined to beat you!".

To say VanityGreeting to (M - a patron):
	if the player is a masochist:
		say "[second custom style]'[one of]So, are you waiting around for another round, babe?'[or]What are you waiting around for, babe?'[at random][roman type][line break]";
	otherwise:
		say "[variable custom style]'[one of]What exactly are you waiting for?'[or]Don't you have somewhere else to be?'[at random][roman type][line break]";
	say VanityResponse of M;

To say VanityResponse of (M - a patron):
	say "[speech style of M]'I'm just waiting for the end.'[roman type][line break]";

To say FirstGreeting to (M - a patron):
	let N be the number of patrons in the location of the player;
	if there is a hotel bed in the location of the player:
		if the class of the player is princess:
			say "You compulsively straighten your back as your words come out in a measured tone.[line break][first custom style]'[one of]What is the meaning of this, peasant[if N > 1]s[end if]? Why are you in my bedchamber?'[or]Why are you in my bedchamber, peasant[if N > 1]s[end if]. Explain at once!'[or]Peasant[if N > 1]s[end if]? In my bedchamber? Guards!'[at random][roman type][line break]";
			slightDignify;
		otherwise if the class of the player is santa's little helper:
			say "[variable custom style]'Merry Christmas[if N > 1], everyone[end if]!'[roman type][line break]";
	otherwise:
		say "[variable custom style]Hel-'[roman type][line break]";
		say FirstResponse of M.

To say RepeatGreeting to (M - a patron):
	say FirstGreeting to M.

To say FirstResponse of (M - a patron):
	say "[speech style of M]'[if there is a hotel bed in the location of M]Less talking, more sex.'[otherwise]Shut up.'[end if][roman type][line break]";

To compute answer of (M - a patron) to (Q - a number):
	say "[speech style of M]'[if there is a hotel bed in the location of M]Less talking, more sex.'[otherwise]Shut up.'[end if][roman type][line break]";
	unless there is a hotel bed in the location of M, bore M.

To compute unfriendly drink of (M - a patron):
	say "[speech style of M]'[if there is a hotel bed in the location of M]Less talking, more sex.'[otherwise]Shut up.'[end if][roman type][line break]";
	unless there is a hotel bed in the location of M, bore M.

Part 6 - Trading

To decide which number is the bartering value of (T - a thing) for (M - a patron):
	decide on 0.

To say MonsterOfferRejectFlav of (M - a patron) to (T - a thing):
	say "[speech style of M]'Why the fuck would I want that?'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a patron) to (T - a plentiful accessory):
	say "[speech style of M]'I think you're confused. I'm the one who pays you.'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a patron) to (T - a condom of kings):
	say "[speech style of M]'[one of]Sorry babe, but I don[']t actually fit in condoms.'[or]No way, I like to fuck bareback!'[at random][roman type][line break]".


Patron ends here.

