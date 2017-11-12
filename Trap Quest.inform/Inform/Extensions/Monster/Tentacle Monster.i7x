Tentacle Monster by Monster begins here.

Tentacle monster is a kind of monster.  A tentacle monster is usually male.  A tentacle monster is usually father material.  A tentacle monster is usually willing to do anal.  A tentacle monster is usually willing to do vaginal.  A tentacle monster is usually willing to do oral.

Figure of Tentacle monster is the file "TQ Tentacle 1.png".  The printed name of tentacle monster is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style][monster-adjective of item described][if the variety of the item described is 3] evolved[end if] tentacle monster[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The description of tentacle monster is usually "[TentacleMonsterDesc]".  There are 12 tentacle monsters.  The text-shortcut of tentacle monster is "tnm".

To say TentacleMonsterDesc:
	if images visible is 1, display the Figure of Tentacle Monster;
	if item described is newborn:
		say NewTentacleDesc;
	otherwise if item described is large:
		say LargeTentacleDesc;
	otherwise:
		say MassiveTentacleDesc.

To say TentacleColour of (M - a tentacle monster):
	say "[if the variety of M is 3]pure white[otherwise]dark red armoured[end if]".

To decide which number is the girth of (M - a tentacle monster):
	if M is massive, decide on 9;
	if M is large, decide on 6;
	decide on 4.

To decide which number is the semen load of (M - a tentacle monster):
	let C be 2;
	if M is large, increase C by 2;
	if M is massive, increase C by 5;
	decide on C.

[This monster has no normal setup function as it only gets set up when born]
To set up (M - a tentacle monster):
	now the monstersetup of M is 1;
	if M is newborn:
		now the difficulty of M is 6;
		now the health of M is the maxhealth of M;
		now the variety of M is 4;[This will be used to flag the TM as not one of your children]
		now the text-shortcut of M is "ntm";
	otherwise if M is large:
		now the difficulty of M is 9;
		now the health of M is the maxhealth of M;
		now the variety of M is 4;
		now the text-shortcut of M is "ltm";
	otherwise if M is massive:
		now the difficulty of M is 12;
		now the health of M is the maxhealth of M;
		now the variety of M is 4;
		now the text-shortcut of M is "mtm".

Definition: a tentacle monster (called M) is blocker:
	if M is newborn and the player is not prone, decide no;
	decide yes.

To compute set up (M - a tentacle monster):
	now M is newborn;
	now the text-shortcut of M is "ntm";
	now the difficulty of M is 6;
	now the health of M is the maxhealth of M;
	now the variety of M is 0;
	regionally place M.

Definition: A tentacle monster (called M) is willing to shag:
	if the sleep of M is 0 and the scared of M is 0 and the boredom of M < 120 and M is released, decide yes;
	decide no.

To say PregGrowth of (M - a tentacle monster):
	say "[one of]the tentacle monster's spawn[or]the tentacle monster's [child][or]your own tentacle spawn's further brood[as decreasingly likely outcomes]".

To compute labour to (M - a tentacle monster):
	compute tentacle birth. [Possibly this can be changed so tentacle monster daddy is different from lake monster, vine, and belt daddy.]
	
To compute fatherhood to (M - a tentacle monster):
	now the father is not interested;
	now the father is not penetrating asshole;
	now the father is not penetrating vagina;
	now the father is not grabbing the player.

Definition: a tentacle monster (called M) is butt slut immune:
	decide yes.

Part 1 - Perception

To compute perception of (M - a tentacle monster):
	say "The [M] notices you!";
	if the pregnancy of the player > 0:
		say "It doesn't seem aggressive.";
		calm M;
	otherwise:
		say "It looks like [if M is newborn]it's coming straight for you![otherwise]it wants to breed again![end if]";
		anger M;

To compute (M - a monster) stomping (N - a tentacle monster):
	if M is in the location of the player, say "The [M] roars at the [N], which takes one wide eyed look at the him and then runs away.";
	regionally place N;
	bore N.

Part 2 - Combat

Section 1 - Protect and Attack

To compute (M - a tentacle monster) protecting against (X - a monster): 
	if the pregnancy of the player > 0:
		if M is massive:
			compute X receiving 3 damage from M;
		otherwise if M is large:
			compute X receiving 2 damage from M;
		otherwise:
			compute X receiving 1 damage from M;
	otherwise:
		say "The [M] seems to lose its friendly demeanour and becomes aggressive!";
		anger M;

To say AllyDamageFlav of (M - a tentacle monster) on (X - a monster):
	say "The [M] [one of]charges in to protect you and your pregnancy.  It [or][stopping][if M is newborn]weakly slaps[otherwise if M is large]heavily strikes[otherwise]brutally slams[end if] the [X] with its tentacles!";

To compute the flying player taunting of (M - a tentacle monster):
	say "[one of]The [M] clearly refuses to move from your location until you stop floating.[or][stopping]".

The latex punishment rule of a tentacle monster is usually the no latex punishment rule.

The tentacle monster continue sex rules is a rulebook.  The continue sex rules of tentacle monster is usually the tentacle monster continue sex rules.

The default check for sex rule is listed first in the tentacle monster continue sex rules.
The default finish sex rule is listed last in the tentacle monster continue sex rules.

This is the tentacle monster continues sex rule:[TODO: update for evolved tentacle monsters]
	let M be current-monster;
	if the number of orifices penetrated by M is 1, say "The [M]'s tentacle [if M is massive]plows[otherwise]thrusts[end if] into your [variable random orifice penetrated by M] ";
	otherwise say "The [M]'s tentacles [if M is massive]plow[otherwise]thrust[end if] into you ";
	if M is newborn, say "steadily.";
	otherwise say "powerfully.";
	decrease the sex-length of M by 1;
	if M is penetrating asshole:
		AssRuin 1;
	if M is penetrating vagina:
		PussyRuin 1;
	if the reaction of the player > 0 and M is penetrating a fuckhole:
		if M is not massive, say "Your lack of resistance against the monster is preventing you from getting more sore, [if the variety of M is not 3 and the variety of M is not 4]but it is extremely humiliating to submit to being bred by your own hellish tentacle spawn[otherwise]but you can feel your thoughts clouding as you are bred by the freakish tentacle spawn[end if].";
	if M is penetrating breasts, compute titfuck of M;
	let spare-tentacle be 0;
	let NB be the number of body parts penetrated by M;
	if the number of body parts penetrated by M < 2, now spare-tentacle is 1;
	if M is large and the number of body parts penetrated by M < 3, now spare-tentacle is 1;
	if M is massive and the number of body parts penetrated by M < 4, now spare-tentacle is 1;
	if spare-tentacle is 1 and (a random number between 1 and 4 > 1 or the class of the player is schoolgirl or the class of the player is magical girl):
		choose a sex method;
		if targeted-body-part is face:
			say "The [M] decides to escalate things and before you can react it has forced another of its warm, thick appendages into your open mouth!  It thrusts away at the same pace as the other[if the number of orifices penetrated by M is 2]s[end if].  [if M is massive]The tentacle is so large that your jaw is forced into a painfully open position.[otherwise]The tentacle keeps hitting the back of your throat, causing you to make loud gagging noises.[end if]";
			now M is penetrating face;
		otherwise if targeted-body-part is asshole:
			if the player is not ass protected:
				say "You feel the tip of another tentacle push against your anal sphincter, and before you can [if the bimbo of the player > 13]express your enthusiasm[otherwise if M is penetrating face]scream [variable custom style]'MMMMFF'[roman type][otherwise]yell in shock[end if] the [M] has buried its appendage deep inside your [asshole].  It joins the fucking pace of the other[if the number of orifices penetrated by M is 2]s[end if].";
				if the variety of M is not 3 and the variety of M is not 4:
					say "[if M is massive]The tentacle is so large that you can feel your [asshole] being permanently gaped.[otherwise if M is penetrating face and M is penetrating vagina]You're being triple penetrated by your own tentacle offspring![otherwise if M is penetrating vagina]You're being double penetrated by your own tentacle offspring![otherwise]You're being spit-roasted by your own tentacled offspring![end if]";
				now M is penetrating asshole;
				AssRuin 1;
			otherwise:
				let C be a random worn top level ass protection clothing;
				if M is newborn:
					if C is displacable:
						say "You feel a tentacle pull your [ShortDesc of C] out of the way!";
						displace C;
					otherwise:
						say "You feel a tentacle try to pull your [ShortDesc of C] out of the way, but it [one of][or]still [stopping]doesn't have the strength!";
				otherwise:
					say "You feel a tentacle rip your [ShortDesc of C] away!";
					destroy C;
		otherwise if targeted-body-part is vagina:
			if the player is not pussy protected:
				say "Another tentacle purposefully glides straight into your [vagina][if the openness of vagina < 4], stretching it painfully as it forces its way in[end if].  It joins the fucking pace of the other[if the number of orifices penetrated by M is 2]s[end if]. "; 
				if the variety of M is not 3 and the variety of M is not 4:
					say "[if M is massive]The tentacle is so large that you can feel your [vagina] being permanently widened.[otherwise if M is penetrating face and M is penetrating asshole]You're being triple penetrated by your own tentacle offspring![otherwise if M is penetrating asshole]You're being double penetrated by your own tentacle offspring![otherwise]You're being spit-roasted by your own tentacled offspring![end if]";
				now M is penetrating vagina;
				PussyRuin 1;
			otherwise:
				let C be a random worn top level protection clothing;
				if M is newborn:
					if C is displacable:
						say "You feel a tentacle pull your [ShortDesc of C] out of the way!";
						displace C;
					otherwise:
						say "You feel a tentacle try to pull your [ShortDesc of C] out of the way, but it [one of][or]still [stopping]doesn't have the strength!";
				otherwise:
					say "You feel a tentacle rip your [ShortDesc of C] away!";
					destroy C;
		otherwise if targeted-body-part is breasts:
			say "Another tentacle purposefully glides straight [if there is worn breast covering clothing]up underneath your [random worn breast covering clothing] and [end if]between your breasts!";
			now M is penetrating breasts;
	rule succeeds.
The tentacle monster continues sex rule is listed last in the tentacle monster continue sex rules.

To set up sex length of (M - a tentacle monster):
	now the sex-length of M is a random number between 3 and 4;
	if M is large, increase the sex-length of M by a random number between 0 and 1;
	if M is massive, increase the sex-length of M by a random number between 0 and 1.

The tentacle monster end of sex rules is a rulebook.  The end of sex rules of tentacle monster is usually the tentacle monster end of sex rules.

This is the tentacle monster climaxes rule:
	let M be current-monster;
	TimesFuckedUp M by 1;
	say "The [M] climaxes.  You can tell because its tentacles pulse and spasm, and you can see several of its other tentacles spurting [if M is newborn]small amounts[otherwise if M is large]generous amounts[otherwise]litres if not gallons[end if] of [semen] onto your body, clothes and the ground.";
	let cum-amount be the semen load of M;
	SemenPuddleUp cum-amount;
	if bukkake fetish is 1, CumFaceUp cum-amount * 5;
	if M is penetrating face:
		say "The tentacle in your mouth forces you to gulp down the salty [semen].";
		StomachSemenUp cum-amount;
		now M is not penetrating face;
	if M is penetrating asshole:
		if egg laying fetish is 1:
			say "A warm, hard lumpy feeling lets you know that you are feeling the tentacle in your [asshole] filling you up with several alien eggs before pulling out.";
			if M is newborn:
				AssFill cum-amount small eggs;
			otherwise if M is large:
				AssFill cum-amount medium eggs;
			otherwise:
				AssFill (cum-amount / 2) - 1 large eggs;
		otherwise:
			say "You feel the tentacle in your [asshole] filling you up with its load before pulling out.";
			AssFill cum-amount;
		now M is not penetrating asshole;
	if M is penetrating vagina:
		say "The tentacle in your [vagina] pumps its potent load into the deepest recesses of your womb, in a clear attempt to use your body as an incubator for further monsters.[one of][line break][if the bimbo of the player < 8][first custom style]Oh no, please please please don't let me get pregnant with another one of these horrible creatures![otherwise][variable custom style]It looks like this is the circle of life as I'm going to know it from now on...[end if][roman type][line break][or][stopping]";
		WombFill cum-amount;
		now M is not penetrating vagina;
	if M is penetrating breasts:
		increase the raw sensitivity of breasts by 1;
		now M is not penetrating breasts;
	if the magic-power of the player > 0:
		say "You feel something draining from your body...[line break]";
		MagicPowerDown 1;
	say "The [M] [one of]seems to stop[or]once again stops[stopping] moving as its tentacles rest peacefully on the ground and its single eye closes.[unless M is massive][line break][one of]It appears to have entered some kind of dormant state. You watch with silent awe as it[or]The monster[stopping] smoothly but rapidly grows in size until its main body is [end if][if M is newborn]as big as yours, and its many tentacles have thickened to the width of a small bottle.[otherwise if M is large]as big as a car, and its multitude of tentacles have thickened to the width of your forearm.[otherwise][one of]Much to your relief it doesn't seem to grow any larger.[or][stopping][end if][if the bimbo of the player < 11 and M is large and the openness of asshole < 9 and the openness of vagina < 9][first custom style]'Holy shit.  I am getting the fuck out of here while this thing is sleeping.  I could never take that...'[roman type][line break][end if]";
	if M is not massive:
		DifficultyUp M by 3;
	if M is large:
		now M is massive;
		now the text-shortcut of M is "mtm";
	if M is newborn:
		now M is large;
		now the text-shortcut of M is "ltm";
	now the sleep of M is 250;
	if the class of the player is schoolgirl, decrease the sleep of M by 100;
	if the variety of M is 3, decrease the sleep of M by 100;
	deinterest M;
	rule succeeds.
The tentacle monster climaxes rule is listed in the tentacle monster end of sex rules.

To say StrikingSuccessFlav of (M - a tentacle monster) on (B - a body part):
	say "The [M] bashes you [TargetName of B] with its tentacles, causing you huge amounts of pain!";
	if M is massive, BodyRuin 1.

To say StrikingFailureFlav of (M - a tentacle monster) on (B - a body part):
	say "You manage to narrowly dodge the [M]'s tentacle as it comes flying towards your [printed name of B].".

This is the tentacle monster convinced rule:
	if presented-orifice is a potential target:
		say "[PresentAcceptanceFlav of current-monster]";
		now the chosen-orifice of current-monster is presented-orifice;
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentRejectionFlav of current-monster]".
The monster convinced rule of a tentacle monster is usually the tentacle monster convinced rule.

To compute the orifice choosing of (M - a tentacle monster):
	now the chosen-orifice of current-monster is a random actual target body part.

To say PullAttempt of (M - a tentacle monster) at (C - a clothing):
	say "The [M] stabs at your [printed name of C] with a tentacle!".

To compute (M - a tentacle monster) ripping (C - a clothing):
	say "It pushes straight through your [printed name of C], ripping it!";
	now C is crotch-ripped.

To compute (M - a tentacle monster) destroying (C - a clothing):
	say "It pushes straight through your [printed name of C], destroying it!";
	destroy C.

To compute (M - a tentacle monster) entering mouth:		
	say "The [M] [if presented-orifice is face]gently but firmly sends a single tentacle into your waiting mouth.[otherwise]grips your wrists with two of its tentacles to hold you in place, then forces a third into your mouth.[end if]";
	now M is penetrating face;
	set up sex length of M.

To compute (M - a tentacle monster) entering asshole:
	say "Without hesitation the [M] buries a [if M is not newborn]thick [end if]tentacle deep inside your [asshole].[if M is massive][line break]The tentacle is so large that you can feel your [asshole] being permanently gaped.[end if]";
	now M is penetrating asshole;
	AssRuin 1;
	set up sex length of M.

To compute (M - a tentacle monster) entering vagina:
	say "Without hesitation the [M] forces a [if M is not newborn]thick [end if]tentacle deep inside your [vagina].[if M is massive][line break]The tentacle is so large that you can feel your [vagina] being permanently gaped.[end if]";
	now M is penetrating vagina;
	PussyRuin 1;
	set up sex length of M.

To say SelectionFrustrated of (M - a tentacle monster):
	say "The [M]'s one eye stares at you with visible frustration but then seems to decide to leave you alone.";
	bore M.

Section 2 - Damage

To compute damage of (M - a tentacle monster):
	if the health of M > 0:
		if the sleep of M is 0:
			if M is uninterested:
				say "The monster turns to fight!";
				now M is interested;
				anger M;
			otherwise:
				if M is friendly:
					say "The [M]'s single eye widens with surprise, but it raises its appendages and takes an offensive stance!";
					anger M;
					if a random number between 1 and 3 is 1, increase the sex-length of M by 1;
		otherwise:
			anger M;
			now M is interested;
			now the sleep of M is 0;
			say "It wakes up, and looks around for the cause of this rude awakening!  It looks like you might be in trouble...";
	otherwise:
		compute death of M.

To compute unique death of (M - a tentacle monster):
	say "[if the variety of M is 3]The [M] has lost the last of its energy, and its powerful limbs fall to the ground with a thud. Its white color fades to black, and the body slowly melts away into nothingness[otherwise]The [M] has lost the last of its energy, and its powerful limbs fall to the ground with a thud.  Its single eye closes and then the body slowly melts away into nothingness[end if].";
	if M is massive, loot M;
	if M is newborn:
		MagicPowerUp 1;
	otherwise if M is large:
		MagicPowerUp 2;
	otherwise if M is massive:
		MagicPowerUp 4;
	if the magic-power of the player > 1:
		let H be a random off-stage heart hairpin;
		if H is actually summonable:
			say "[bold type]Suddenly, you feel a small weight in your hair. A hair clip in the shape of a heart has appeared! You feel a sudden rush, which almost takes you to your knees.[roman type][line break]";
			summon H cursed;
			if the player is male and tg fetish >= 1:
				say "Your whole body suddenly goes numb, then is filled with an almost electric tingle. You feel terrible wrenching from your insides that you're sure should hurt, but you just don't seem to be able to feel much of anything right now. The tingling comes to a focus in your crotch, filling you with a sense of terrible foreboding. [if the size of penis > 0]As feeling comes back to you, you reach down and can immediately tell you're missing something kind of notable: your [player-penis]![otherwise]As feeling comes back to you, you reach down with a sense of foreboding.[end if] It seems whatever magic made that hair clip appear has decided you'd be better off as a girl...";
				SexChange the player;
	if the variety of M is 3 and there is an off-stage ghostly tentacle and the player is in the mansion:
		let T be a random off-stage ghostly tentacle;
		set up T;
		now T is in the location of the player;
		say "A translucent tentacle floats up from its lifeless body, unfurling to reveal an underside full of giant, octopus-like suckers.";
		anger T.

To loot (M - a tentacle monster):
	let X be a random off-stage plentiful ring;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		unless M is massive, now X is ruby;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.

Part 3 - Variants

To say NewTentacleDesc:
	say "[one of]A mass of [TentacleColour of the item described] tentacles, about the size of a [if extreme proportions fetish is 1]beachball[otherwise]basketball[end if]. Each 'arm' is about as thick around as a normal human penis, and looks just like one too. [or]A [if extreme proportions fetish is 1]beach[otherwise]basket[end if]ball-sized heap of [TentacleColour of the item described] tentacles. Each one is looks almost identical to a normal human penis in shape and thickness, although alien in colour. [in random order]";
	say "[if the variety of the item described is 3]A single eye is visible inside the main mass, no larger than a plum and as black as the void itself.[otherwise if the sleep of item described > 0]A single eye no larger than a plum rests on the ground before it, attached to the main body by a fleshy stalk. It's closed, and the tentacles surrounding it are completely motionless.[otherwise]A single eye no larger than a plum is raised above the main body on a fleshy stalk, scanning the surrounding objects and area with primitive curiosity.[end if]";
	if the variety of the item described is 3 or the variety of the item described is 4:
		do nothing;
	otherwise:
		say "[if the bimbo of the player < 7][first custom style][one of]That thing, it...it really came out of me?[or]It's a fucking demon-spawn. I'm killing it.[or]I have to kill this thing before it decides it wants to breed with me.[or]That thing is disgusting. I can't believe it came out of me.[or]Just as disgusting as its father was. I should kill it.[in random order][otherwise if the bimbo of the player < 12][variable custom style][one of]That really came out of me. Wow.[or]Is it weird that I feel kind of... proud of it?[or]It's kind of cute.[or]It's disgusting, but in an endearing way.[or]If I don't kill it, it might want to breed with me. But it just looks so helpless...[in random order][otherwise][second custom style][one of]He's adorable![or]How cute![or]I love my baby![or]Mmm, he looks hor~ny![or]I want to take *good care* of my baby boy.[or]He looks like he wants to breed with me. Anything for my baby boy![in random order][end if][roman type][line break]".

To say LargeTentacleDesc:
	say "[one of]A large mass of [TentacleColour of the item described] tentacles, about the size of a person. Each of its arms is as thick around as a soda bottle and ends in a soft, penis-like tip. [or]A person-sized mass of [TentacleColour of the item described] tentacles. Each one is about as thick around as a soda bottle and ends in a shiny, phallic tip.[in random order]";
	say "[if the variety of the item described is 3]At least a dozen eyes are visible inside the main mass, each about the size of a grapefruit and as black as the void itself.[otherwise if the sleep of item described > 0]A single eye the size of a grapefruit is resting on the ground before it, connected to the main body by a fleshy stalk. It is closed, and the surrounding tentacles are completely motionless.[otherwise]A single eye the size of a grapefruit is raised above the main body on a fleshy stalk, scanning the surrounding objects and area with primitive intelligence.[end if]";
	if the variety of the item described is 3 or the variety of the item described is 4:
		do nothing;
	otherwise:
		say "[if the bimbo of the player < 8][first custom style][one of]It's growing! I have to deal with it now or I may never get another chance![or]I can't believe what this thing did to me. I have to destroy it.[or]It fucked me...even though I'm its mother.[or]I can't be responsible for something this evil.[in random order][otherwise if the bimbo of the player < 13][variable custom style][one of]Seeing him grow like that was actually a little fulfilling.[or]He had sex with me even though I'm his mother.[or]He's getting big. Could he grow like that again?[or]I probably could have fought more, but...he was just so cute.[or]His tentacles are getting big. Thick. Juicy. Oh no...[in random order][otherwise][second custom style][one of]He had a growth spurt![or]I let him breed me like any good mommy would![or]He's growing up so fast. Especially where it counts...[or]I want to let him breed me again. He might grow even bigger![or]Who wants to fuck mommy? You do! You do![or]He's going to grow up big and horny, just like his daddy.[then at random][end if][roman type][line break]".

To say MassiveTentacleDesc:
	let V be the variety of the item described;
	say "[one of]A massive heap of [TentacleColour of the item described] tentacles, big enough to dwarf most humans and even some cars. Each arm is as about as thick around as *your* forearm and ends in a soft, penis-like tip. [or]A car-sized mass of [TentacleColour of the item described] tentacles. Each one, about as thick around as your forearm, has a natural sheen and a lightly coloured penis-like head. [in random order]";
	say "[if the variety of the item described is 3]Dozens of eyes are visible inside the main mass, each about the size of a softball and as black as the void itself.[otherwise if the sleep of item described > 0]It is completely motionless, and its single, softball sized eye is closed and resting on the ground before it.[otherwise]A single eye about the size of a softball is raised above the main body on a fleshy stalk, scanning the surrounding objects and area with an unnervingly human measure of intelligence.[end if]";
	if the variety of the item described is 3 or the variety of the item described is 4:
		do nothing;
	otherwise:
		say "[if the bimbo of the player < 9][variable custom style][one of]It keeps overpowering me like it's nothing. I have to get out of here.[or]Those tentacles are enormous! I'm not giving it another chance to put them in me![or]How could I let it get so big? Now I'll never get rid of it.[or]It keeps trying to breed with me. I'm your mother you disgusting beast![in random order][otherwise if the bimbo of the player < 14][variable custom style][one of]He's so strong now. There's no way I can fight him, let alone keep him from fucking me.[or]He's all grown-up now. What's this wistful feeling?[or]I'm so proud. I wish he were more obedient, but still...[or]His tentacles are so big. I don't think he'll grow much more than that.[in random order][otherwise][second custom style][one of]Look who grew up all big and hung![or]I want to make another.[or]They grow up so fast. And big too, teehee![or]He knows just how to please his mommy.[or]Those [manly-penis]s are so big! He gets it from his daddy.[or]I wonder when he'll be ready to breed me again?[in random order][end if][roman type][line break]".

Tentacle Monster ends here.
