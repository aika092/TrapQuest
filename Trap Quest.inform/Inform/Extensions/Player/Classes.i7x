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

[!<TheTrickOrTreaterClassRule>+

REQUIRES COMMENTING

+!]
This is the trick-or-treater class rule:
	if there is worn halloween headgear:
		now player-class is "trick or treater";
		rule succeeds.
The trick-or-treater class rule is listed in the player class rules.
trick-or-treater is a text that varies. trick-or-treater is "trick or treater".

[!<ThePrincessClassRule>+

REQUIRES COMMENTING

+!]
This is the princess class rule:
	if there is a worn royalty themed wearthing:
		if the training-progress of senior robobellboy is -1 and there is a worn tiara:
			now player-class is "trained fuck princess";
			rule succeeds;
		otherwise if there is a worn tiara:
			now player-class is "princess";
			rule succeeds.
The princess class rule is listed in the player class rules.
[princess is a text that varies. princess is "princess".]

Definition: a text (called T) is princess:
	if T is "princess" or T is "trained fuck princess", decide yes;
	decide no.

[!<TheMaidClassRule>+

REQUIRES COMMENTING

+!]
This is the maid class rule:
	if there is a worn maid headdress and (there is a worn maid outfit or there is a worn black fetish hobble dress):
		if the training-progress of senior robobellboy is -1:
			now player-class is "fully trained maid";
		otherwise:
			now player-class is "maid";
		rule succeeds.
The maid class rule is listed in the player class rules.
[!<TextIsMaid>+

Thanks to the magical maid multi-class, we have multiple different texts that need to be able to return true for the class of the player being maid.

+!]
Definition: a text (called T) is maid:
	if T is "maid" or T is "fully trained maid" or T is "magical maid" or T is "cafe maid", decide yes;
	decide no.

[!<TheCowgirlClassRule>+

REQUIRES COMMENTING

+!]
This is the cowgirl class rule:
	if cow-horns is worn:
		now player-class is "breeding cow";
		rule succeeds;
	otherwise if cow-ears is worn and the number of worn cow themed wearthings > 1:
		now player-class is "cowgirl";
		rule succeeds.
The cowgirl class rule is listed in the player class rules.

[!<TextIsCowgirl>+

Thanks to the cow slave multi-class, we have multiple different texts that need to be able to return true for the class of the player being cowgirl.

+!]
Definition: a text (called T) is cowgirl:
	if T is "cowgirl" or T is "cow slave" or T is "breeding cow", decide yes;
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
	if runic headband is worn:
		if the total condoms of runic headband > 0:
			now player-class is "cumdumpster priestess";
			rule succeeds;
		if there is a worn priestess outfit:
			now player-class is "priestess";
			if abyssal tattoo is worn, now player-class is "dark priestess";
			if runic headband is not purity, now player-class is "sinful priestess";
			rule succeeds.
The priestess class rule is listed in the player class rules.

Definition: a text (called T) is priestess:
	if T matches the text "priestess", decide yes;
	decide no.

[!<TheVirginWarriorClassRule>+

REQUIRES COMMENTING

+!]
This is the virgin warrior class rule:
	if flower hairclip is worn and there is a worn warrior chestpiece:
		now player-class is "virgin warrior";
		rule succeeds.
The virgin warrior class rule is listed in the player class rules.
Definition: a text (called T) is virgin warrior:
	if T is "virgin warrior" or T is "virgin symbiote warrior" or T is "virgin warrior priestess" or T is "virgin magical girl", decide yes;
	decide no.

[!<TheSchoolgirlClassRule>+

REQUIRES COMMENTING

+!]
This is the schoolgirl class rule:
	if there is a worn scrunchie:
		if there is a worn schoolgirl-enabling wearthing or there is a worn tartan themed skirted clothing or (there is a worn tartan themed dress and there is a worn necktie):
			now player-class is "schoolgirl";
			if there is a worn pigtail-scrunchie, now player-class is "fraternity's bicycle";
			rule succeeds.
The schoolgirl class rule is listed in the player class rules.
[!<TextIsSchoolgirl>+

Thanks to the various schoolgirl multi-classes, we have multiple different texts that need to be able to return true for the class of the player being schoolgirl.

+!]
Definition: a text is schoolgirl if it is "schoolgirl" or it is "magical schoolgirl" or it is "fraternity's bicycle".

Definition: a wearthing is schoolgirl-enabling: decide no.

[!<TheCheerleaderClassRule>+

REQUIRES COMMENTING

+!]
This is the cheerleader class rule:
	if there is a worn pigtail-scrunchie:
		now player-class is "locker room fucktoy";
		rule succeeds;
	if there is a worn pink scrunchie and there is a worn cheerleader outfit:
		if the silicone volume of breasts > 0, now player-class is "plastic cheerleader";
		otherwise now player-class is "cheerleader";
		rule succeeds.
The cheerleader class rule is listed in the player class rules.
Definition: a text (called T) is cheerleader:
	if T is "cheerleader" or T is "plastic cheerleader" or T is "fraternity's bicycle" or T is "locker room fucktoy" or T is "football team's plastic cumdump", decide yes;
	decide no.

[!<TheFertilityGoddessClassRule>+

REQUIRES COMMENTING

+!]
This is the fertility goddess class rule:
	if laurel wreath is worn and there is a worn fertility outfit:
		now player-class is "fertility goddess";
		rule succeeds.
The fertility goddess class rule is listed in the player class rules.

[!<TextIsFertilityGoddess>+

There are multiple different texts that need to be able to return true for the class of the player being fertility goddess.

+!]
Definition: a text (called T) is fertility goddess:
	if T is "fertility goddess" or T is "fertile bunny" or T is "fairy godmother" or T is "breeding cow", decide yes;
	decide no.

[!<TheFertilityGoddessPussySlutRule>+

If the player is the fertility goddess, the more desirable it gets for NPCs to penetrate you vaginally.

+!]
This is the fertility goddess pussy slut rule:
	if the class of the player is fertility goddess, increase the desirability of vagina by 5.
The fertility goddess pussy slut rule is listed in the pussy slut eligibility rules.

[!<TheRoyalSlaveClassRule>+

REQUIRES COMMENTING

+!]
This is the royal slave class rule:
	if royal circlet is worn and (there is a worn milking basque or there is a worn milking harness):
		now player-class is "royal slave";
		rule succeeds.
The royal slave class rule is listed in the player class rules.

[!<TextIsRoyalSlave>+

Thanks to the cow slave multi-class, we have multiple different texts that need to be able to return true for the class of the player being royal slave.

+!]
Definition: a text (called T) is royal slave:
	if T is "royal slave" or T is "cow slave" or T is "demon slave", decide yes;
	decide no.

[!<TheRoyalSlavesCannotMasturbateRule>+

Royal slaves can't masturbate

+!]
This is the royal slaves can't masturbate rule:
	if the class of the player is royal slave:
		if auto is 0, say "You try, but it's like your [printed name of a random worn headgear] is somehow preventing you!";
		rule fails.
The royal slaves can't masturbate rule is listed last in the global masturbation restriction rules.

[!<TheSiliconeQueenClassRule>+

REQUIRES COMMENTING

+!]
This is the silicone queen class rule:
	if rubber top hat is worn and there is a worn pink rubber dress:
		now player-class is "silicone queen";
		rule succeeds.
The silicone queen class rule is listed in the player class rules.

[!<TextIsSiliconeQueen>+

Thanks to the walking condom multi-class, we have multiple different texts that need to be able to return true for the class of the player being silicone queen.

+!]
Definition: a text (called T) is silicone queen:
	if T is "silicone queen" or T is "plastic cheerleader" or T is "walking condom" or T is "football team's plastic cumdump", decide yes;
	decide no.

[!<TheLatexFetishModelClassRule>+

REQUIRES COMMENTING

+!]
This is the latex fetish model class rule:
	if black hood is worn:
		now player-class is "latex fetish model";
		rule succeeds.
The latex fetish model class rule is listed in the player class rules.
latex fetish model is a text that varies. latex fetish model is "latex fetish model".

[!<TheHumanToiletClassRule>+

REQUIRES COMMENTING

+!]
This is the human toilet class rule:
	if WC hood is worn and there is a worn WC catsuit:
		now player-class is "toilet";
		rule succeeds.
The human toilet class rule is listed in the player class rules.
human toilet is a text that varies. human toilet is "toilet".

[!<TheCatgirlClassRule>+

REQUIRES COMMENTING

+!]
This is the catgirl class rule:
	if cat-ears is worn and there is a worn kitty claws:
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
puppygirl is a text that varies. puppygirl is "puppygirl".
puppy is a text that varies. puppy is "puppygirl".

[!<TheSymbioteClassRule>+

REQUIRES COMMENTING

+!]
This is the symbiote class rule:
	if spiked-tiara is worn:
		if the vaginalvirgin of the player is 1 and the quest of spiked-tiara is virginity-retention-quest, now player-class is "virgin symbiote warrior";
		otherwise now player-class is "symbiote";
		rule succeeds.
The symbiote class rule is listed in the player class rules.

[!<TextIsSymbiote>+

Thanks to the virgin symbiote warrior multi-class, we have multiple different texts that need to be able to return true for the class of the player being a symbiote.

+!]
Definition: a text (called T) is symbiote:
	if T is "symbiote" or T is "virgin symbiote warrior", decide yes;
	decide no.

[!<TheSantaClassRule>+

REQUIRES COMMENTING

+!]
This is the santa class rule:
	if there is a worn christmas headgear and christmas content is 1:
		if there is a worn christmas dress and naughty-or-nice outfit is not worn, now player-class is "christmas tree";
		otherwise now player-class is "santa's little helper";
		if present outfit is worn or christmas strap monokini is worn, now player-class is "christmas present";
		if candy cane outfit is worn, now player-class is "candy cane";
		rule succeeds.
The santa class rule is listed in the player class rules.
Definition: a text (called T) is santa's little helper:
	if T is "santa's little helper" or T is "candy cane" or T matches the text "christmas", decide yes;
	decide no.

[!<TheWenchedClassRule>+

REQUIRES COMMENTING

+!]
This is the wenched class rule:
	if property-tattoo is worn:
		now the player-class is "wench".
The wenched class rule is listed last in the player class rules.
wenched is a text that varies. wenched is "wench".

[!<TheThrallClassRule>+

REQUIRES COMMENTING

+!]
This is the thrall class rule:
	if severed-tentacle is worn or there is a worn throbbing-tentacle:
		now the player-class is "thrall".
The thrall class rule is listed last in the player class rules.
thrall is a text that varies. thrall is "thrall".

[To avoid conflict with the demoness monster type, we'll refer to the actual class as 'succubus' plus it's about 37% hotter in strict engineering terms]
[!<TheSuccubusClassRule>+

REQUIRES COMMENTING

+!]
This is the succubus class rule:
	if demon horns is worn and there is a worn soulstone:
		now the player-class is "succubus";
		if demon lord is mating, now player-class is "demon concubine";
		if abyssal tattoo is worn, now player-class is "abyssal succubus";
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
	if wasp-antennae is worn and (there is a worn striped top or there is a worn black-and-yellow striped stockings):
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
		if E is laid medium egg:
			MagicPowerUp 2;
			if the number of alive giant wasps < 1 and there is an off-stage giant wasp:
				say "You watch in amazement as a white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiarly looking larva has emerged from the egg. The giant maggot, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds.";
				let M be a random off-stage giant wasp;
				now M is in the location of the player;
				set up M;
				destroy E;
			otherwise if there is an off-stage giant wasp and a random number between 1 and 16 is 1:
				say "You watch in amazement as a white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiarly looking larva has emerged from the egg. The giant maggot, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds.";
				let M be a random off-stage giant wasp;
				now M is in the location of the player;
				set up M;
				destroy E;
			otherwise if there is a worn wasp-cloud:
				let W be a random worn wasp-cloud;
				say "You watch as once again one of your eggs hatches into a buzzing swarm of wasps, which join the rest of your brood in buzzing around you.";
				let S be a random number between 2 and 4;
				increase the swarm of W by S;
				increase total-wasps by S;
				destroy E;
			otherwise:
				let W be a random off-stage wasp-cloud;
				say "You watch in amazement as a white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds a cloud of normal-sized wasps appears and begins buzzing around you. It seems like they recognise you as their mother!";
				summon W;
				now the swarm of W is 3;
				now total-wasps is 3;
				destroy E;
		if total-wasps > 49 and old-wasps < 50:
			say "[bold type]You feel terribly strange, and sudden pain bores through your head. You suddenly find you can feel the antennae coming out of your head as though they were a part of your body, and they begin to twitch on their own! [if there is a worn striped top]You see the fuzzy top on your chest meld with your skin, which has become black and shiny in the area around it![end if] [if there is a worn black-and-yellow striped stockings]You see the fuzzy stockings on your legs meld with your skin, which has become black and shiny in the area around them![end if][roman type][line break]";
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
	if vampiric fangs is worn:
		now the player-class is "vampire spawn";
		rule succeeds.
The vampire spawn class rule is listed in the player class rules.
vampire spawn is a text that varies. vampire spawn is "vampire spawn".

[!<TheCultistClassRule>+

REQUIRES COMMENTING

+!]
This is the cultist class rule:
	if cultist veil is worn and there is a worn cultist robe:
		now the player-class is "cultist";
		if abyssal tattoo is worn, now player-class is "cultist seer";
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
				say "You hear a strange voice whispered in your ear! [line break][first custom style]'serve your gods. present yourself at our altar and be blessed.'[roman type][line break]That was peculiar. Should you do it?";
				now whisper-type is 1;
				now whispered is 200;
				now whisper-tracking is 0;
			if W is 2:
				say "You hear a strange voice whispered in your ear! [line break][first custom style]'serve your gods. feed us with curses.'[roman type][line break]That was odd. Should you do it?";
				now whisper-type is 2;
				now whispered is 200;
				now whisper-tracking is 0;
			if W is 3:
				say "You hear a strange voice whispered in your ear! [line break][first custom style]'serve your gods. gorge yourself upon [semen].'[roman type][line break]That was strange. Should you do it?";
				now whisper-type is 3;
				now whispered is 200;
				now whisper-semen-old is the stomach-semen of the player;
				now whisper-semen-tracker is 0;
				now whisper-tracking is 0;
			if W is 4:
				say "You hear a strange voice whispered in your ear! [line break][first custom style]'serve your gods. let your ass be a vessel for their [semen].'[roman type][line break]That was creepy. Should you do it?";
				now whisper-type is 4;
				now whispered is 200;
				now whisper-semen-old is the semen volume of belly;
				now whisper-semen-tracker is 0;
				now whisper-tracking is 0;
		if whispered < 0 and whisper-type is not 0 and whisper-tracking is 0:
			say "You hear a strange voice echoing through you! [line break][first custom style]'YOU HAVE FAILED US'[roman type][line break]You feel an ominous sensation, but you can't quite place it.";
			SexAddictUp 2;
			SemenAddictUp 2;
			now whisper-type is 0;
		if whispered > -1 and whisper-tracking is 1 and whisper-type is not 0:
			say "You hear a strange voice whispered in your ear! [line break][first custom style]'you have [please]d us. be rewarded.'[roman type][line break]";
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
	if fox ears is worn:
		now the player-class is "vixen";
		rule succeeds.
The vixen class rule is listed in the player class rules.
vixen is a text that varies. vixen is "vixen".

[!<TheFaerieClassrule>+

REQUIRES COMMENTING

+!]
This is the faerie class rule:
	if glittering rose is worn:
		if the vaginalvirgin of the player is 1:
			now the player-class is "fairy godmother";
			rule succeeds;
		otherwise if butterfly wings is worn:
			now the player-class is "faerie";
			rule succeeds.
The faerie class rule is listed in the player class rules.
Definition: a text is faerie if it is "faerie" or it is "fairy godmother".

[!<TheBunnyClassrule>+

REQUIRES COMMENTING

+!]
This is the bunny class rule:
	if there is a worn bunny ears and there is a worn bunny outfit:
		now the player-class is "bunny";
		rule succeeds.
The bunny class rule is listed in the player class rules.

[!<TextIsBunny>+

Thanks to the fertile bunny multi-class, we have multiple different texts that need to be able to return true for the class of the player being bunny.

+!]
Definition: a text (called T) is bunny:
	if T is "bunny" or T is "fertile bunny", decide yes;
	decide no.

bunny-reminder is a number that varies.
An all time based rule (this is the bunny reminder rule):
	if the class of the player is bunny:
		if bunny-reminder is 0 and playerRegion is Woods:
			say "[bold type]You feel your bunny reflexes improve while you are in the woods![roman type][line break]";
			now bunny-reminder is 1;
		otherwise if bunny-reminder is 1 and playerRegion is not Woods:
			say "[bold type]You feel your bunny reflexes disappear as you are no longer in the woods.[roman type][line break]";
			now bunny-reminder is 0;
	otherwise:
		now bunny-reminder is 0.

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
	if T matches the text "cumdumpster" or T is "walking condom" or T is "locker room fucktoy" or T is "football team's plastic cumdump" or T is "fraternity's bicycle", decide yes;
	decide no.

[!<TheMagicalGirlClassRule>+

The magical girl class (revolving around destroying tentacle breeders) only requires the hairpin.

+!]
This is the magical girl class rule:
	if heart hairpin is worn:
		now the player-class is "magical girl";
		rule succeeds.
The magical girl class rule is listed in the player class rules.

[!<TextIsMagicalGirl>+

Thanks to the various magical girl multi-classes, we have multiple different texts that need to be able to return true for the class of the player being magical girl.

+!]
Definition: a text (called T) is magical girl:
	if T is "magical girl" or T is "magical neko" or T is "virgin magical girl" or T is "magical maid" or T is "magical schoolgirl", decide yes;
	decide no.

[!<TheLatexClownClassRule>+

The latex clown class requires the clown mask.

+!]
This is the latex clown class rule:
	if clown mask is worn:
		now the player-class is "clown";
		if the player is actually an adult baby, now the player-class is "baby clown";
		rule succeeds.
The latex clown class rule is listed in the player class rules.

[!<TextIsLatexClown>+

Thanks to the various magical girl multi-classes, we have multiple different texts that need to be able to return true for the class of the player being magical girl.

+!]
Definition: a text (called T) is latex clown:
	if T matches the text "clown", decide yes;
	decide no.

[!<TheCowSlaveClassRule>+

The cow slave is a combination class of the cowgirl and royal slave. It can have either headgear.

+!]
This is the cow slave class rule:
	if there is a worn cow print milking basque and (royal circlet is worn or cow-ears is worn):
		now the player-class is "cow slave";
		rule succeeds.
The cow slave class rule is listed first in the player class rules.

[!<TheWalkingCondomClassRule>+

The walking condom is a combination class of the silicone queen and cumdumpster. It needs the plastic dress with pinned condoms.

+!]
This is the walking condom class rule:
	if rubber top hat is worn or there is a worn cumdumpster hat or there is a worn pigtail-scrunchie:
		let C be a random worn rubber cheerleader outfit;
		if C is nothing, let C be a random pink rubber dress;
		if C is worn and the total condoms of C > 0:
			if there is a worn pigtail-scrunchie or C is rubber cheerleader outfit, now the player-class is "football team's plastic cumdump";
			otherwise now the player-class is "walking condom";
			rule succeeds.
The walking condom class rule is listed first in the player class rules.

[!<TheMagicalNekoClassRule>+

The magical neko is a combination class of the catgirl and magical girl. It needs the cat ears and magical girl dress.

+!]
This is the magical neko class rule:
	if cat-ears is worn and there is a worn magical dress:
		now the player-class is "magical neko";
		rule succeeds.
The magical neko class rule is listed first in the player class rules.

[!<TheFertileBunnyClassRule>+

The fertile bunny is a combination class of the fertility goddess and bunny. It needs the bunny ears and the bunny tail plug.

+!]
This is the fertile bunny class rule:
	if there is a worn bunny ears and bunny tail plug is worn:
		now the player-class is "fertile bunny";
		rule succeeds.
The fertile bunny class rule is listed first in the player class rules.

[!<TheFertileBunnyPussySlutRule>+

If the player is the fertile bunny, the even more desirable it gets for NPCs to penetrate you vaginally.

+!]
This is the fertile bunny pussy slut rule:
	if the player-class is "fertile bunny", increase the desirability of vagina by 5.
The fertile bunny pussy slut rule is listed in the pussy slut eligibility rules.

[!<TheFertileBunnyButtSlutRule>+

If the player is the fertile bunny, the less desirable it gets for NPCs to penetrate you anally.

+!]
This is the fertile bunny butt slut rule:
	if the player-class is "fertile bunny", decrease the desirability of asshole by 5.
The fertile bunny butt slut rule is listed in the butt slut eligibility rules.

[!<TheVirginWarriorPriestessClassRule>+

The virgin warrior priestess is a combination class of the virgin warrior and priestess. It needs the flower hairclip and golden warrior priestess outfit.

+!]
This is the virgin warrior priestess class rule:
	if flower hairclip is worn and there is a worn golden warrior priestess outfit:
		now the player-class is "virgin warrior priestess";
		rule succeeds.
The virgin warrior priestess class rule is listed first in the player class rules.

[!<TheMagicalMaidClassRule>+

The magical maid is a combination class of the maid and magical girl. It needs a maid headdress and magical maid outfit.

+!]
This is the magical maid class rule:
	if there is a worn maid headdress and magical-maid-outfit is worn:
		now the player-class is "magical maid";
		rule succeeds.
The magical maid class rule is listed first in the player class rules.

[!<TheCafeMaidClassRule>+

The cafe maid is a combination class of the maid and waitress bunny. It needs a maid headdress and cafe maid outfit.

+!]
This is the cafe maid class rule:
	if there is a worn maid headdress and there is a worn cafe maid outfit:
		now the player-class is "cafe maid";
		rule succeeds.
The cafe maid class rule is listed first in the player class rules.

Check dropping waitress vessel:
	if the class of the player is "cafe maid", say "[BigNameDesc of a random worn maid headdress] won't allow you to drop [NameDesc of the noun]!" instead.

[!<TheMagicalSchoolgirlClassRule>+

The magical schoolgirl is a combination class of the schoolgirl and magical girl. It needs the heart hairpin and any school outfit, or vice versa.

+!]
This is the magical schoolgirl class rule:
	if heart hairpin is worn:
		if there is a worn schoolgirl-enabling wearthing or there is a worn tartan themed skirted clothing or (there is a worn tartan themed dress and there is a worn necktie):
			now player-class is "magical schoolgirl";
			rule succeeds;
	if there is a worn scrunchie and there is a worn magical dress:
		now the player-class is "magical schoolgirl";
		rule succeeds.
The magical schoolgirl class rule is listed first in the player class rules.

[!<TheVirginMagicalGirlClassRule>+

The virgin magical girl is a combination class of the virgin warrior and magical girl. It needs the flower hairclip and virgin magical girl outfit.

+!]
This is the virgin magical girl class rule:
	if flower hairclip is worn and virgin magical girl outfit is worn:
		now the player-class is "virgin magical girl";
		rule succeeds.
The virgin magical girl class rule is listed first in the player class rules.

This is the barbarian class rule:
	if rugged-headband is worn:
		if heavy-club is worn:
			now the player-class is "barbarian";
			rule succeeds.
The barbarian class rule is listed first in the player class rules.
barbarian is a text that varies. barbarian is "barbarian".

This is the worshipper class rule:
	if gold-tiara is worn:
		if there is a worn demonic-milking basque:
			now the player-class is "demon slave";
			rule succeeds;
		otherwise if the number of worn demonic wearthings > 1:
			now the player-class is "demon worshipper";
			rule succeeds.
The worshipper class rule is listed first in the player class rules.

Definition: a text (called T) is worshipper:
	if T is "demon slave" or T is "demon worshipper" or T is "demon concubine", decide yes;
	decide no.

[!<TheLivingSexDollClassRule>+

REQUIRES COMMENTING

+!]
This is the living sex doll class rule:
	if the latex-transformation of the player is 8:
		if the player is a trained hooker, now player-class is "rentable doll";
		otherwise now player-class is "living sex doll";
		rule succeeds.
The living sex doll class rule is listed first in the player class rules. [Overrides all other rules]
living sex doll is a text that varies. living sex doll is "living sex doll".

[!<TheAdultBabyClassRule>+

Goes last because it is purely cosmetic and doesn't necessarily use headgear so it can and should be overridden by any other classes.

+!]
This is the adult baby class rule:
	if the player is actually an adult baby, now the player-class is "adult baby".
The adult baby class rule is listed first in the player class rules.

[!<TheHookerInTrainingClassRule>+

Hooker in training is not a class, so if another title is suitable, it will be overriden

+!]
This is the hooker in training class rule:
	if the player is a hooker in training:
		if the player is a trained hooker, now the player-class is "professional prostitute";
		otherwise now the player-class is "prostitute in training".
The hooker in training class rule is listed first in the player class rules.

Definition: yourself is a hooker in training:
	if trainee hood is worn or there is a worn trainee bra or there is a worn trainee thigh highs, decide yes.

[!<TheTrainedHookerClassRule>+

Trained hooker is not a class, so if another title is suitable, it will be overridden

+!]
This is the trained hooker class rule:
	if the player is a trained hooker, now player-class is "prostitute".
The trained hooker class rule is listed first in the player class rules.

Definition: yourself is a trained hooker:
	if the training-progress of senior robobellboy is -1, decide yes.

Definition: yourself is hotel employed:
	if the player is a hooker in training, decide yes;
	if the player is a trained hooker, decide yes;
	if the class of the player is succubus, decide yes;
	if the class of the player is maid, decide yes;
	decide no.

[!<TheAdventurerClassRule>+

Defined last and places itself first. This makes it the catch-all if nothing else gets triggered.

+!]
This is the adventurer class rule:
	now player-class is "adventurer".
The adventurer class rule is listed first in the player class rules. [Catch-all]
adventurer is a text that varies. adventurer is "adventurer".

Classes ends here.
