Classes by Player begins here.


[!<playerClass:String>*

REQUIRES COMMENTING

*!]
player-class is a text that varies.

[!<DecideWhichTextIsTheClassOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which text is the class of the player:
	decide on player-class.

[!<playerClassRules:Rulebook>+

REQUIRES COMMENTING

+!]
The player class rules is a rulebook.

[!<ThePrincessClassRule>+

REQUIRES COMMENTING

+!]
This is the princess class rule:
	if there is a worn tiara and there is a worn royal attire clothing:
		now player-class is "princess";
		rule succeeds.
The princess class rule is listed in the player class rules.
princess is a text that varies.  princess is "princess".

[!<TheMaidClassRule>+

REQUIRES COMMENTING

+!]
This is the maid class rule:
	if there is a worn maid headdress and (there is a worn maid outfit or there is a worn black fetish hobble dress):
		now player-class is "maid";
		rule succeeds.
The maid class rule is listed in the player class rules.
maid is a text that varies.  maid is "maid".

[!<TheCheerleaderClassRule>+

REQUIRES COMMENTING

+!]
This is the cheerleader class rule:
	if there is a worn pink scrunchie and there is a worn cheerleader outfit:
		now player-class is "cheerleader";
		rule succeeds.
The cheerleader class rule is listed in the player class rules.
cheerleader is a text that varies.  cheerleader is "cheerleader".

[!<TheCowgirlClassRule>+

REQUIRES COMMENTING

+!]
This is the cowgirl class rule:
	if there is a worn cow ears and (there is a worn cow print bikini top or there is a worn nintendolls-brand tattoo or there is a worn cow piercing):
		now player-class is "cowgirl";
		rule succeeds.
The cowgirl class rule is listed in the player class rules.

[!<TextIsCowgirl>+

Thanks to the cow slave multi-class, we have multiple different texts that need to be able to return true for the class of the player being cowgirl.

+!]
Definition: a text (called T) is cowgirl:
	if T is "cowgirl" or T is "cow slave", decide yes;
	decide no.

[!<TheCowSlutRule>+

Cowgirl class increases the chance of titfucks.

+!]
This is the cow slut rule:
	if the class of the player is cowgirl, increase the desirability of breasts by 5.
The cow slut rule is listed in the tit slut eligibility rules.

[!<ThePriestessClassRule>+

REQUIRES COMMENTING

+!]
This is the priestess class rule:
	if there is a worn runic headband and there is a worn priestess outfit:
		now player-class is "priestess";
		if there is a worn abyssal tattoo, now player-class is "dark priestess";
		rule succeeds.
The priestess class rule is listed in the player class rules.

Definition: a text (called T) is priestess:
	if T is "priestess" or T is "dark priestess" or T is "virgin warrior priestess", decide yes;
	decide no.

[!<TheVirginWarriorClassRule>+

REQUIRES COMMENTING

+!]
This is the virgin warrior class rule:
	if there is a worn flower hairclip and there is a worn warrior chestpiece:
		now player-class is "virgin warrior";
		rule succeeds.
The virgin warrior class rule is listed in the player class rules.
Definition: a text (called T) is virgin warrior:
	if T is "virgin warrior" or T is "virgin warrior priestess", decide yes;
	decide no.

[!<TheSchoolgirlClassRule>+

REQUIRES COMMENTING

+!]
This is the schoolgirl class rule:
	if there is a worn schoolgirl-enabling wearthing:
		now player-class is "schoolgirl";
		rule succeeds;
	if there is a worn blue scrunchie:
		let O be a random worn overdress;
		if O is tartan tube top:
			let S be a random worn skirt;
			if S is tartan miniskirt or S is tartan microskirt or there is a worn necktie:
				now player-class is "schoolgirl";
				rule succeeds.
The schoolgirl class rule is listed in the player class rules.
schoolgirl is a text that varies.  schoolgirl is "schoolgirl".

Definition: a wearthing (called C) is schoolgirl-enabling:
	decide no.

[!<TheFertilityGoddessClassRule>+

REQUIRES COMMENTING

+!]
This is the fertility goddess class rule:
	if there is a worn laurel wreath and there is a worn fertility outfit:
		now player-class is "fertility goddess";
		rule succeeds.
The fertility goddess class rule is listed in the player class rules.
fertility goddess is a text that varies.  fertility goddess is "fertility goddess".

[!<TheRoyalSlaveClassRule>+

REQUIRES COMMENTING

+!]
This is the royal slave class rule:
	if there is a worn royal circlet and there is a worn milking basque:
		now player-class is "royal slave";
		rule succeeds.
The royal slave class rule is listed in the player class rules.

[!<TextIsRoyalSlave>+

Thanks to the cow slave multi-class, we have multiple different texts that need to be able to return true for the class of the player being royal slave.

+!]
Definition: a text (called T) is royal slave:
	if T is "royal slave" or T is "cow slave", decide yes;
	decide no.


[!<TheRoyalSlavesCannotMasturbateRule>+

Royal slaves can't masturbate

+!]
This is the royal slaves can't masturbate rule:
	if the class of the player is royal slave:
		if auto is 0, say "You try, but it's like your [printed name of a random worn headgear] is somehow preventing you!";
		rule fails.
The royal slaves can't masturbate rule is listed last in the masturbation restriction rules.	

[!<TheSiliconeQueenClassRule>+

REQUIRES COMMENTING

+!]
This is the silicone queen class rule:
	if there is a worn rubber top hat and there is a worn pink rubber dress:
		now player-class is "silicone queen";
		rule succeeds.
The silicone queen class rule is listed in the player class rules.

[!<TextIsSiliconeQueen>+

Thanks to the walking condom multi-class, we have multiple different texts that need to be able to return true for the class of the player being silicone queen.

+!]
Definition: a text (called T) is silicone queen:
	if T is "silicone queen" or T is "walking condom", decide yes;
	decide no.

[!<TheLatexFetishModelClassRule>+

REQUIRES COMMENTING

+!]
This is the latex fetish model class rule:
	if there is a worn cursed black hood:
		now player-class is "latex fetish model";
		rule succeeds.
The latex fetish model class rule is listed in the player class rules.
latex fetish model is a text that varies.  latex fetish model is "latex fetish model".

[!<TheHumanToiletClassRule>+

REQUIRES COMMENTING

+!]
This is the human toilet class rule:
	if there is a worn white hood and there is a worn WC catsuit:
		now player-class is "toilet";
		rule succeeds.
The human toilet class rule is listed in the player class rules.
human toilet is a text that varies.  human toilet is "toilet".

[!<TheCatgirlClassRule>+

REQUIRES COMMENTING

+!]
This is the catgirl class rule:
	if there is a worn cat ears and there is a worn kitty claws:
		now player-class is "catgirl";
		rule succeeds.
The catgirl class rule is listed in the player class rules.

[!<TextIsCatgirl>+

Thanks to the magical neko multi-class, we have multiple different texts that need to be able to return true for the class of the player being catgirl.

+!]
Definition: a text (called T) is catgirl:
	if T is "catgirl" or T is "magical neko", decide yes;
	decide no.

[!<ThePuppygirlClassRule>+

REQUIRES COMMENTING

+!]
This is the puppygirl class rule:
	if there is a worn puppy ears and there is a worn puppy mittens:
		now player-class is "puppygirl";
		rule succeeds.
The puppygirl class rule is listed in the player class rules.
puppygirl is a text that varies.  puppygirl is "puppygirl".

[!<TheSantaClassRule>+

REQUIRES COMMENTING

+!]
This is the santa class rule:
	if there is a worn santa hat:
		now player-class is "santa's little helper";
		rule succeeds.
The santa class rule is listed in the player class rules.
santa's little helper is a text that varies.  santa's little helper is "santa's little helper".

[!<TheAdultBabyClassRule>+

REQUIRES COMMENTING

+!]
This is the adult baby class rule:
	if there is a worn baby bonnet and (there is a worn onesie or there is a worn baby-dress):
		now player-class is "little one";
		if the intelligence of the player > 10, now player-class is "big baby";
		if the sex addiction of the player > 14, now player-class is "diaper slut";
		if the player is a flatchested trap and the number of worn sissifying clothing > 0, now player-class is "sissy baby";
		if the incontinence of the player > 7 and diaper lover >= 4, now player-class is "messy baby";
		rule succeeds.
The adult baby class rule is listed in the player class rules.

[!<TextIsAdultBaby>+

We have a lot of different texts that need to be able to return true for the class of the player being adult baby.

+!]
Definition: a text (called T) is adult baby:
	if T is "little one" or T is "diaper slut" or T is "big baby" or T is "sissy baby" or T is "messy baby", decide yes;
	decide no.

[!<TheWenchedClassRule>+

REQUIRES COMMENTING

+!]
This is the wenched class rule:
	if there is a worn property-tattoo:
		now the player-class is "wench".
The wenched class rule is listed last in the player class rules.
wenched is a text that varies. wenched is "wench".

[!<TheThrallClassRule>+

REQUIRES COMMENTING

+!]
This is the thrall class rule:
	if there is a worn severed-tentacle or there is a worn throbbing-tentacle:
		now the player-class is "thrall".
The thrall class rule is listed last in the player class rules.
thrall is a text that varies. thrall is "thrall".

[To avoid conflict with the demoness monster type, we'll refer to the actual class as 'succubus' plus it's about 37% hotter in strict engineering terms]
[!<TheSuccubusClassRule>+

REQUIRES COMMENTING

+!]
This is the succubus class rule:
	if there is a worn demon horns and there is a worn soulstone:
		now the player-class is "succubus";
		let M be a random demon lord;
		if M is mating, now player-class is "demon concubine";
		if there is a worn abyssal tattoo, now player-class is "abyssal succubus";
		rule succeeds.
The succubus class rule is listed in the player class rules.

[!<TextIsSuccubus>+

REQUIRES COMMENTING

+!]
Definition: a text (called T) is succubus:
	if T is "succubus" or T is "demon concubine" or T is "abyssal succubus", decide yes;
	decide no.

[!<TheBroodmotherClassRule>+

REQUIRES COMMENTING

+!]
This is the broodmother class rule:
	if there is a worn wasp-antennae and (there is a worn striped top or there is a worn striped stockings):
		now the player-class is "broodmother";
		rule succeeds.
The broodmother class rule is listed in the player class rules.
broodmother is a text that varies. broodmother is "broodmother".


[!<oldWasps:Integer>*

REQUIRES COMMENTING

*!]
old-wasps is a number that varies. old-wasps is 0.

[!<ComputeBrood>+

REQUIRES COMMENTING

+!]
A time based rule (this is the compute brood rule):
	if the class of the player is broodmother:
		let E be a random medium egg in the location of the player;
		let old-wasps be total-wasps;
		if E is laid:
			MagicPowerUp 2;
			if the number of alive giant wasps < 0 and there is an off-stage giant wasp:
				say "You watch in amazement as a white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack.  Within seconds, a familiarly looking larva has emerged from the egg.  The giant maggot, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds.";
				let M be a random off-stage giant wasp;
				now M is in the location of the player;
				set up M;
				destroy E;
			otherwise if there is an off-stage giant wasp and a random number between 1 and 16 is 1:
				say "You watch in amazement as a white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack.  Within seconds, a familiarly looking larva has emerged from the egg.  The giant maggot, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds.";
				let M be a random off-stage giant wasp;
				now M is in the location of the player;
				set up M;
				destroy E;
			otherwise if there is a worn wasp-cloud:
				let W be a random worn wasp-cloud;
				say "You watch as once again one of your eggs hatches into a a buzzing swarm of wasps, which join the rest of your brood in buzzing around you.";
				let S be a random number between 2 and 4;
				increase the swarm of W by S;
				increase total-wasps by S;
				destroy E;
			otherwise:
				let W be a random off-stage wasp-cloud;
				say "You watch in amazement as a white egg changes color to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds a cloud of normal-sized wasps appears and begins buzzing around you. It seems like they recognize you as their mother!";
				summon W;
				now the swarm of W is 3;
				now total-wasps is 3;
				destroy E;
		if total-wasps > 49 and old-wasps < 50:
			say "[bold type]You feel terribly strange, and sudden pain bores through your head. You suddenly find you can feel the antennae coming out of your head as though they were a part of your body, and they begin to twitch on their own! [if there is a worn striped top]You see the fuzzy top on your chest meld with your skin, which has become black and shiny in the area around it![end if] [if there is a worn striped stockings]You see the fuzzy stockings on your legs meld with your skin, which has become black and shiny in the area around them![end if][roman type][line break]";
		otherwise if total-wasps > 99 and old-wasps < 100 and there is a worn striped top:
			say "[bold type]You feel a sudden heat from your chest as a pair of stingers pushes themselves from your nipples![roman type][line break]";
		let W be a random worn wasp-cloud;
		if total-wasps > 49 and the swarm of W < (total-wasps / 10) and a random number between 1 and 3 is 1:
			say "A small swarm of wasps that was resting on your fur seems to be ready for more action!";
			increase the swarm of W by 1. [The idea is that your weapon's equilibrium strength will slowly increase once you get past the 50 wasps birthed cut-off, though swarm will tend to be very hard to raise above 20 because it always wants to decay to that point. Also these wasps are technically ones you 'lost' earlier so they don't increase your total]
			


[!<TheVampireSpawnClassRule>+

REQUIRES COMMENTING

+!]
This is the vampire spawn class rule:
	if there is a worn vampiric fangs:
		now the player-class is "vampire spawn";
		rule succeeds.
The vampire spawn class rule is listed in the player class rules.
vampire spawn is a text that varies. vampire spawn is "vampire spawn".

[!<TheCultistClassRule>+

REQUIRES COMMENTING

+!]
This is the cultist class rule:
	if there is a worn cultist veil[ and there is a worn cultist robe]:[Testing this out to see if it would be overpowered]
		now the player-class is "cultist";
		if there is a worn abyssal tattoo, now player-class is "cultist seer";
		rule succeeds.
The cultist class rule is listed in the player class rules.

Definition: a text (called T) is cultist:
	if T is "cultist" or T is "cultist seer" or T is "dark priestess", decide yes;
	decide no.


[!<whispered:Integer>*

REQUIRES COMMENTING

*!]
whispered is a number that varies. whispered is 0.

[!<whisperType:Integer>*

REQUIRES COMMENTING

*!]
whisper-type is a number that varies. whisper-type is 0.

[!<whisperSemenTracker:Integer>*

REQUIRES COMMENTING

*!]
whisper-semen-tracker is a number that varies. whisper-semen-tracker is 0.

[!<whisperSemenOld:Integer>*

REQUIRES COMMENTING

*!]
whisper-semen-old is a number that varies. whisper-semen-old is 0.

[!<whisperTracking:Integer>*

REQUIRES COMMENTING

*!]
whisper-tracking is a number that varies. whisper-tracking is 0.

[!<ComputeWhispers>+

REQUIRES COMMENTING

+!]
A time based rule (this is the compute whispers rule):
	if the class of the player is cultist:
		decrease whispered by 1;
		if whisper-type is 3:
			let S be the stomach-semen of the player - whisper-semen-old;
			if S > 0:
				increase whisper-semen-tracker by S;
			now whisper-semen-old is the stomach-semen of the player;
			if whisper-semen-tracker > 4:
				now whisper-tracking is 1;
		if whisper-type is 4:
			let S be the semen volume of belly - whisper-semen-old;
			if S > 0:
				increase whisper-semen-tracker by S;
			now whisper-semen-old is the semen volume of belly;
			if whisper-semen-tracker > 4:
				now whisper-tracking is 1;
		if whispered is less than -50 and a random number between 1 and 45000 is less than the humiliation of the player:
			let W be a random number between 1 and 4;
			if W is 1:
				say "You hear a strange voice whispered in your ear! [first custom style]'serve your gods. present yourself at our altar and be blessed.'[roman type] That was peculiar. Should you do it?";
				now whisper-type is 1;
				now whispered is 200;
				now whisper-tracking is 0;
			if W is 2:
				say "You hear a strange voice whispered in your ear! [first custom style]'serve your gods. feed us with curses.'[roman type] That was odd. Should you do it?";
				now whisper-type is 2;
				now whispered is 200;
				now whisper-tracking is 0;
			if W is 3:
				say "You hear a strange voice whispered in your ear! [first custom style]'serve your gods. gorge yourself upon [semen].'[roman type] That was strange. Should you do it?";
				now whisper-type is 3;
				now whispered is 200;
				now whisper-semen-old is the stomach-semen of the player;
				now whisper-semen-tracker is 0;
				now whisper-tracking is 0;
			if W is 4:
				say "You hear a strange voice whispered in your ear! [first custom style]'serve your gods. let your ass be a vessel for their [semen].'[roman type] That was creepy. Should you do it?";
				now whisper-type is 4;
				now whispered is 200;
				now whisper-semen-old is the semen volume of belly;
				now whisper-semen-tracker is 0;
				now whisper-tracking is 0;
		if whispered < 0 and whisper-type is not 0 and whisper-tracking is 0:
			say "You hear a strange voice echoing through you! [first custom style]'YOU HAVE FAILED US'[roman type] You feel an ominous sensation, but you can[']t quite place it.";
			SexAddictUp 2;
			SemenAddictUp 2;
			now whisper-type is 0;
		if whispered > -1 and whisper-tracking is 1 and whisper-type is not 0:
			say "You hear a strange voice whispered in your ear! [first custom style]'you have pleased us. be rewarded.'[roman type]";
			MagicPowerUp 1;
			if whisper-type is 1:
				now the body soreness of the player is 0;
			otherwise if whisper-type is 2:
				Intup 1;
			otherwise if whisper-type is 3:
				Strengthup 1;
			otherwise if whisper-type is 4:
				Dexup 1;
			now whisper-type is 0.



[!<TheVixenClassRule>+

REQUIRES COMMENTING

+!]
This is the vixen class rule:
	if there is a worn fox ears:
		now the player-class is "vixen";
		rule succeeds.
The vixen class rule is listed in the player class rules.
vixen is a text that varies. vixen is "vixen".

[!<TheFaerieClassrule>+

REQUIRES COMMENTING

+!]
This is the faerie class rule:
	if there is a worn glittering rose and there is a worn butterfly wings:
		now the player-class is "faerie";
		rule succeeds.
The faerie class rule is listed in the player class rules.
faerie is a text that varies. faerie is "faerie".

[!<TheHookerInTrainingClassRule>+

REQUIRES COMMENTING

+!]
This is the hooker in training class rule:
	if there is a worn trainee hood or there is a worn trainee bra or there is a worn trainee thigh highs:
		now the player-class is "hooker in training";
		rule succeeds.
The hooker in training class rule is listed in the player class rules.
hooker in training is a text that varies. hooker in training is "hooker in training".

[!<TheCumdumpsterClassRule>+

The cumdumpster class (revolving around condoms pinned on clothes) only requires the cumdumpster hat.

+!]
This is the cumdumpster class rule:
	if there is a worn cumdumpster hat:
		now the player-class is "cumdumpster";
		rule succeeds.
The cumdumpster class rule is listed in the player class rules.

[!<TextIsCumdumpster>+

Thanks to the walking condom multi-class, we have multiple different texts that need to be able to return true for the class of the player being cumdumpster.

+!]
Definition: a text (called T) is cumdumpster:
	if T is "cumdumpster" or T is "walking condom", decide yes;
	decide no.

[!<TheMagicalGirlClassRule>+

The magical girl class (revolving around destroying tentacle breeders) only requires the hairpin.

+!]
This is the magical girl class rule:
	if there is a worn heart hairpin:
		now the player-class is "magical girl";
		rule succeeds.
The magical girl class rule is listed in the player class rules.

[!<TextIsMagicalGirl>+

Thanks to the magical neko multi-class, we have multiple different texts that need to be able to return true for the class of the player being magical girl.

+!]
Definition: a text (called T) is magical girl:
	if T is "magical girl" or T is "magical neko", decide yes;
	decide no.

[!<TheCowSlaveClassRule>+

The cow slave is a combination class of the cowgirl and royal slave.  It can have either headgear.

+!]
This is the cow slave class rule:
	if there is a worn cow print milking basque and (there is a worn royal circlet or there is a worn cow ears):
		now the player-class is "cow slave";
		rule succeeds.
The cow slave class rule is listed first in the player class rules.

[!<TheWalkingCondomClassRule>+

The walking condom is a combination class of the silicone queen and cumdumpster.  It needs the plastic dress with pinned condoms.

+!]
This is the walking condom class rule:
	if there is a worn rubber top hat or there is a worn cumdumpster hat:
		let C be a random pink rubber dress;
		if C is worn and the total condoms of C > 0:
			now the player-class is "walking condom";
			rule succeeds.
The walking condom class rule is listed first in the player class rules.

[!<TheMagicalNekoClassRule>+

The magical neko is a combination class of the catgirl and magical girl.  It needs the cat ears and magical girl dress.

+!]
This is the magical neko class rule:
	if there is a worn cat ears and there is a worn magical dress:
		now the player-class is "magical neko";
		rule succeeds.
The magical neko class rule is listed first in the player class rules.

[!<TheVirginWarriorPriestessClassRule>+

The virgin warrior priestess is a combination class of the virgin warrior and priestess.  It needs the flower hairclip and golden warrior priestess outfit.

+!]
This is the virgin warrior priestess class rule:
	if there is a worn flower hairclip and there is a worn golden warrior priestess outfit:
		now the player-class is "virgin warrior priestess";
		rule succeeds.
The virgin warrior priestess class rule is listed first in the player class rules.

[!<TheLivingSexDollClassRule>+

REQUIRES COMMENTING

+!]
This is the living sex doll class rule:
	if the latex-transformation of the player is 8:
		now player-class is "living sex doll";
		rule succeeds.
The living sex doll class rule is listed first in the player class rules. [Overrides all other rules]
living sex doll is a text that varies.  living sex doll is "living sex doll".

[!<TheAdventurerClassRule>+

REQUIRES COMMENTING

+!]
This is the adventurer class rule:
	if there is a worn property-tattoo:
		decide no;
	otherwise:
		now player-class is "adventurer".
The adventurer class rule is listed last in the player class rules. [Catch-all]
adventurer is a text that varies.  adventurer is "adventurer".



Classes ends here.
