Belly by Body Parts begins here.

Part 1 - Definitions

belly is a flesh. Belly is everywhere. The text-shortcut of belly is "belly".
To say FullExamineDesc of (B - belly):
	say "[ImageDesc of belly][TotalDesc of belly]".
Understand "torso", "waist", "tummy", "stomach" as belly.

belly has a number called flesh volume.
belly has a number called water volume.
belly has a number called semen volume.
belly has a number called urine volume.
belly has a number called milk volume.
belly has a number called air volume.
belly has a number called small egg count.
belly has a list of things called small-egg-origins.
belly has a number called medium egg count.
belly has a list of things called medium-egg-origins.
belly has a number called large egg count.
belly has a list of things called large-egg-origins.

The player has a number called stomach-water. The stomach-water of the player is 5.
The player has a number called stomach-semen.
The player has a number called stomach-urine.
The player has a number called stomach-milk.
The player has a number called stomach-food. The stomach-food of the player is 2.

belly has a number called previous largeness.
belly has a number called holding strain.
belly has a number called squirt timer.

To decide which number is the total fill of belly:
	let B be the total squirtable fill of belly;
	increase B by the air volume of belly;
	if slimegirl is worn, increase B by 10;
	decide on B.

To decide which number is the total egg fill of belly:
	let E be 0;
	increase E by the small egg count of belly;
	increase E by 2 * the medium egg count of belly;
	increase E by 5 * the large egg count of belly;
	decide on E.

To decide which number is the total squirtable fill of belly:
	let B be the total fluid fill of belly;
	increase B by the total egg fill of belly;
	decide on B.

To decide which number is the total fluid fill of belly:
	let B be the semen volume of belly;
	increase B by the urine volume of belly;
	increase B by the milk volume of belly;
	increase B by the water volume of belly;
	decide on B.

To decide which number is the largeness of belly:
	if the pregnancy of the player > 0 and womb volume of vagina > 30: [Monster pregnancy = we only care about womb fill]
		let B be womb volume of vagina;
		if the air volume of belly > B, now B is the air volume of belly;
		decide on belly magnitude of B;
	let B be the largeness fill of belly;
	repeat with C running through worn corsets:
		decrease B by (the magic-modifier of C + 5);
		if C is constriction, decrease B by 4;
	let F be belly magnitude of B;
	if F > max belly size: [we only override max belly size if pregnancy + fat or air is higher on its own.]
		now B is the flesh volume of belly;
		if the pregnancy of the player > 0, increase B by the womb volume of vagina + the total egg volume of vagina;
		let B2 be belly magnitude of B;
		if B2 > max belly size, decide on B2;
		let B2 be belly magnitude of the air volume of belly;
		if B2 > max belly size, decide on B2;
		decide on max belly size;
	decide on F.

To decide which number is the largeness fill of belly:
	let B be the total fill of belly;
	increase B by (the stomach of the player + rectum) / 3;
	if the bladder of the player > 10, increase B by (the bladder of the player - 10) / 3;
	if the semen volume of vagina > 6, increase B by the semen volume of vagina - 6;
	increase B by the womb volume of vagina + the total egg volume of vagina;
	increase B by the flesh volume of belly;
	decide on B.

To decide which number is belly magnitude of (B - a number):
	let S be 0;
	if B < 4:
		now S is 1;
	otherwise if B < 5:
		now S is 2;
	otherwise if B < 7:
		now S is 3;
	otherwise if B < 10:
		now S is 4;
	otherwise if B < 13:
		now S is 5;
	otherwise if B < 16:
		now S is 6;
	otherwise if B < 20:
		now S is 7;
	otherwise if B < 23:
		now S is 8;
	otherwise if B < 28:
		now S is 9;
	otherwise:
		now S is 10;
	[Super pregnancy sizes and super inflation sizes]
	if the womb volume of vagina + the total egg volume of vagina > 45 or the air volume of belly > 45, decide on 13;
	if the womb volume of vagina + the total egg volume of vagina > 37 or the air volume of belly > 37, decide on 12;
	if the womb volume of vagina + the total egg volume of vagina > 30 or the air volume of belly > 30, decide on 11;
	[Normal sizes]
	if S > 10, decide on 10;
	otherwise decide on S.

To decide which number is the weight of (XXX - belly):
	let B be the total fill of belly;
	decrease B by the air volume of belly; [this one is to counteract the total belly fill count]
	decrease B by the air volume of belly * 2; [this one is because the air is lighter than air]
	increase B by the stomach of the player / 2;
	increase B by (the womb volume of vagina * 3) + the total egg volume of vagina;
	increase B by the flesh volume of belly;
	if there is a worn buoyant salve covering belly:
		let S be a random worn buoyant salve covering belly;
		if S is cursed, increase B by 4;
		if S is bland, decrease B by 3;
		if S is blessed, decrease B by 6;
	if B > 0:
		let bellymod be 100;
		if the bellyskill of the player is 1, decrease bellymod by 66;
		if there is a worn maternity dress or the class of the player is fertility goddess:
			let M be a random worn overdress;
			if M is cursed overdress:
				if the pregnancy of the player is 0:
					increase bellymod by 25;
				otherwise:
					increase bellymod by 10;
			otherwise:
				if the pregnancy of the player is 0:
					decrease bellymod by 10;
				otherwise:
					decrease bellymod by 25;
		decide on (B * bellymod) / 100;
	if the latex-transformation of the player > 1 and B > 8, now B is 8;
	if the latex-transformation of the player > 5 and B > 0, now B is 0;
	decide on B.

Definition: belly is heavy:
	if the weight of belly >= 18, decide yes;
	decide no.

Definition: belly is exposed:
	if there is a worn actually dense belly covering clothing, decide no;
	decide yes.

To decide which object is the concealer of (T - belly):
	decide on a random mid-layer-concealing belly covering actually dense clothing.

To decide which object is the at least partial concealer of (T - belly):
	if thighs is listed in the armUses of arms, decide on arms;
	decide on a random partially-mid-layer-concealing belly covering not-see-through clothing.

Part 2 - Description

To say ShortDesc of belly:
	say BellyDesc.

To say TotalDesc of belly:
	say "you have a [BellyDesc][if the semen coating of belly > 7] which is plastered in [semen]. [otherwise if the semen coating of belly > 4] which is covered in [semen]. [otherwise if the semen coating of belly > 0] which has a splattering of [semen] on it. [otherwise]. [end if][BellyContents][BellyWeight][StomachContents]";
	if there is a worn corset, compute SelfExamineDesc of a random worn corset.

To say BellyDesc:
	let X be the largeness of belly;
	if weight gain fetish is 1 and belly egg count < 3 and total squirtable fill of belly < the flesh volume of belly + 2 and X < 7 and flesh volume of belly > 2:
		if X < 3, say "flat belly";
		if X is 3, say "slightly chubby belly";
		if X is 4, say "round, chubby belly";
		if X is 5, say "fat potbelly";
		if X is 6, say "bulging, obese belly";
	otherwise:
		if X < 3, say "flat belly";
		if X is 3, say "slightly curvy belly";
		if X is 4, say "curvy belly";
		if X is 5, say "mostly full belly";
		if X is 6, say "full belly";
		if X is 7, say "completely full belly";
		if X is 8, say "overly full belly";
		if X is 9, say "[if pregnancy fetish is 1]7 months pregnant looking[otherwise]bulging[end if], stretched belly";
		if X is 10, say "[if pregnancy fetish is 1]9 months pregnant looking[otherwise]bulging[end if], very stretched belly";
		if X is 11, say "extremely stretched, [if pregnancy fetish is 1]pregnant and overdue looking[otherwise]beach ball sized[end if] belly";
		if X is 12, say "[if pregnancy fetish is 1]pregnant with twins looking[otherwise]cartoonish looking[end if], overly stretched belly";
		if X is 13, say "[if pregnancy fetish is 1]pregnant with octuplets looking[otherwise]cartoonish looking[end if], impossibly huge belly";

To say BellyContents:
	if the flesh volume of belly > 0, say "It has a [if the flesh volume of belly > 6]large[otherwise if the flesh volume of belly > 3]medium[otherwise]small[end if] amount of fat. ";
	if the semen volume of belly > 0, say "It is currently [if the semen addiction of the player < 9]a reluctant [otherwise if the semen addiction of the player > 14]a welcoming [end if]home to a [if the semen volume of belly > 20]ridiculously huge[otherwise if the semen volume of belly > 15]huge[otherwise if the semen volume of belly > 10]large[otherwise if the semen volume of belly > 5]decent[otherwise]small[end if] amount of [semen][if the number of things inseminating asshole > 0] from [inseminators of asshole][end if]. ";
	if the urine volume of belly > 0, say "It is currently [if the humiliation of the player < HUMILIATION-DISGRACED + 1000]a reluctant [otherwise if the humiliation of the player > HUMILIATION-SHAMELESS + 1000]a welcoming [end if]home to a [if the urine volume of belly > 20]ridiculously huge[otherwise if the urine volume of belly > 15]huge[otherwise if the urine volume of belly > 10]large[otherwise if the urine volume of belly > 5]decent[otherwise]small[end if] amount of [urine]. ";
	if the milk volume of belly > 0, say "It is currently [if the humiliation of the player < HUMILIATION-DISGRACED + 1000]a reluctant [otherwise if the humiliation of the player > HUMILIATION-SHAMELESS + 1000]a welcoming [end if]home to a [if the milk volume of belly > 20]ridiculously huge[otherwise if the milk volume of belly > 15]huge[otherwise if the milk volume of belly > 10]large[otherwise if the milk volume of belly > 5]decent[otherwise]small[end if] amount of [milk]. ";
	if the air volume of belly > 0, say "It is currently inflated by a [if the air volume of belly > 20]ridiculously huge[otherwise if the air volume of belly > 15]huge[otherwise if the air volume of belly > 10]large[otherwise if the air volume of belly > 5]decent[otherwise]small[end if] amount of air. ";
	if the small egg count of belly > 0, say "It is currently inflated by a [if the small egg count of belly > 20]ridiculously huge[otherwise if the small egg count of belly > 15]huge[otherwise if the small egg count of belly > 10]large[otherwise if the small egg count of belly > 5]decent[otherwise]small[end if] number of [ShortDesc of a random small egg]s. ";
	if the medium egg count of belly > 0, say "It is currently inflated by a [if the medium egg count of belly > 10]ridiculously huge[otherwise if the medium egg count of belly > 7]huge[otherwise if the medium egg count of belly > 5]high[otherwise if the medium egg count of belly > 2]notable[otherwise]low[end if] number of average sized eggs. ";
	if the large egg count of belly > 0, say "It is currently inflated by [if the large egg count of belly > 4]a ridiculously huge number of giant eggs[otherwise if the large egg count of belly > 3]a big number of giant eggs[otherwise if the large egg count of belly > 2]three giant eggs[otherwise if the large egg count of belly > 1]two giant eggs[otherwise]a single giant egg[end if]. ".

[!<SayBellyContentsAlone>+

If we just want to describe the contents of the belly.
This is OTT, but was kind of fun.
Who says inform doesn't support bitmaps? :-)
I'm ignoring air content.

+!]
To say BellyContentsAlone:
	let XM be the milk volume of belly;
	let XS be the semen volume of belly;
	let XU be the urine volume of belly;
	let XES be the small egg count of belly;
	let XEM be the medium egg count of belly * 2;
	let XEL be the large egg count of belly * 4;
	let XMN be 0;
	let XSN be 0;
	let XUN be 0;
	let XEN be 0;
	if XS > 0, now XSN is 1;
	if XM > 0, now XMN is 2;
	if XU > 0, now XUN is 4;
	if XES + XEM + XEL > 0, now XEN is 8;
	if XSN + XMN + XUN + XEN is:
		--  0: say "empty";
		--  1: say "[semen]";
		--  2: say "[urine]";
		--  3: say "a mix of [semen] and [urine]";
		--  4: say "[milk]";
		--  5: say "a mix of [semen] and [milk]";
		--  6: say "a mix of [urine] and [milk]";
		--  7: say "a mix of [semen], [urine], and [milk]";
		--  8: say eggsOnly XES with XEM and XEL;
		--  9: say "a mix of [semen] and eggs";
		-- 10: say "a mix of [urine] and eggs";
		-- 12: say "a mix of [milk] and eggs";
		-- 11: say "a mix of [semen], [urine], and eggs";
		-- 13: say "a mix of [semen], [milk], and eggs";
		-- 14: say "a mix of [semen], [milk], and eggs";
		-- 15: say "an astonishing melange of [semen], [milk], [urine], and eggs".

To say eggsOnly (S - a number) with (M - a number) and (L - a number):
	if S + M + L < 5, say "eggs";
	otherwise say "a mass of eggs";

To say BellyWeight:
	if the weight of belly < -6:
		say "It weighs significantly less than air and is trying to pull you up off the ground.";
	otherwise if the weight of belly < 3:
		say "It is essentially weightless.";
	otherwise if the weight of belly < 10:
		say "It is a bit heavy.";
	otherwise if the weight of belly < 17:
		say "It is weighing you down a lot.";
	otherwise if the weight of belly < 24:
		say "It is very heavy and cumbersome.";
	otherwise if the weight of belly < 31:
		say "It is extremely heavy and unwieldy, making it a huge challenge for you to move around.";
	otherwise if the weight of belly < 40:
		say "It is impossibly heavy and unwieldy, making each step a very challenging task.";
	otherwise:
		say "It is heavier than the rest of your body combined and means you can literally only take a few steps before you buckle with exhaustion.".

To say StomachContents:
	say "Your stomach is overall [if the stomach of the player <= 2]quite empty[otherwise if the stomach of the player <= 4]a little bit full[otherwise if the stomach of the player <= 6]quite full[otherwise]very full[end if]. ";
	if the stomach-semen of the player > 0, say "It is currently [if the stomach-semen of the player > 6]almost completely full of[otherwise if the stomach-semen of the player > 4]quite full of[otherwise if the stomach-semen of the player > 2]digesting a decent amount of[otherwise]digesting a small amount of[end if] [semen]. ";
	if the stomach-milk of the player > 0, say "It is currently [if the stomach-milk of the player > 6]almost completely full of[otherwise if the stomach-milk of the player > 4]quite full of[otherwise if the stomach-milk of the player > 2]digesting a decent amount of[otherwise]digesting a small amount of[end if] [milk]. ";
	if the stomach-urine of the player > 0, say "It is currently [if the stomach-urine of the player > 6]almost completely full of[otherwise if the stomach-urine of the player > 4]quite full of[otherwise if the stomach-urine of the player > 2]digesting a decent amount of[otherwise]digesting a small amount of[end if] [urine]. ";
	if the stomach-food of the player > 0, say "It is currently [if the stomach-food of the player > 6]almost completely full of[otherwise if the stomach-food of the player > 4]quite full of[otherwise if the stomach-food of the player > 2]digesting a decent amount of[otherwise]digesting a small amount of[end if] food. ".

To say PermanentBelly:
	say "[if the total squirtable fill of belly is 0] permanent[end if]".

Part 3 - Modify Belly Stats

To decide which number is belly limit:
	if the player is female, decide on 20;
	decide on 30.

To decide which number is belly liquid types:
	let X be 0;
	if the semen volume of belly > 0, increase X by 1;
	if the milk volume of belly > 0, increase X by 1;
	if the urine volume of belly > 0, increase X by 1;
	decide on X.

To empty belly:
	egg-held empty belly;
	truncate the small-egg-origins of belly to 0 entries;
	truncate the medium-egg-origins of belly to 0 entries;
	truncate the large-egg-origins of belly to 0 entries.

To egg-held empty belly:
	empty belly liquids;
	now the small egg count of belly is 0;
	now the medium egg count of belly is 0;
	now the large egg count of belly is 0.

To egg-fix belly:
	now the small egg count of belly is the number of entries in the small-egg-origins of belly;
	now the medium egg count of belly is the number of entries in the medium-egg-origins of belly;
	now the large egg count of belly is the number of entries in the large-egg-origins of belly;
	let E be the small egg count of belly + the medium egg count of belly + the large egg count of belly;
	if E > 0, say "You feel the egg[if E > 1]s[end if] that were in your belly magically reappearing inside you![line break][variable custom style]Oof![roman type][line break]".

To empty belly liquids:
	now the water volume of belly is 0;
	now the semen volume of belly is 0;
	now the urine volume of belly is 0;
	now the milk volume of belly is 0.

To decide which number is belly egg count:
	let X be 0;
	increase X by the small egg count of belly;
	increase X by the medium egg count of belly;
	increase X by the large egg count of belly;
	decide on X.

Chapter 1 - Fat

To FatBellyUp (X - a number):
	while X > 0 and weight gain fetish is 1:
		if the flesh volume of belly < 10 and the number of restricting salve covering belly is 0, increase the flesh volume of belly by 1;
		decrease X by 1;
		if the flesh volume of belly is 7 and the flesh volume of thighs > 3 and the largeness of breasts > 8:
			say "[variable custom style]When did I get this fat?![roman type][line break]";
			cutshow figure of body reaction 13 for belly;
		if newbie tips is 1 and the flesh volume of belly > 3, say "[one of][newbie style]Newbie tip: Your belly getting a bit fat! That's making you heavier and therefore you'll tire out faster. However, it is fully reversible! Lots of things exercise fat away from your belly, including fighting enemies and drinking milk.[roman type][line break][or][stopping]".

To FatBellyDown (X - a number):
	if heavyweight tattoo is worn and a random number between 0 and X > 0, decrease X by 1;
	while X > 0:
		if the flesh volume of belly > 0, decrease the flesh volume of belly by 1;
		decrease X by 1.

Chapter 2 - Overflow

To Overflow:
	if currently-squirting is 0 and the player is able to expel and belly liquid types + belly egg count > 0 and the total squirtable fill of belly > belly limit and the latex-transformation of the player <= 4:
		AssSquirt;
	otherwise if diaper quest is 1:
		while the total squirtable fill of belly > belly limit and the water volume of belly > 0:
			decrease the water volume of belly by 1;
		while the total squirtable fill of belly > belly limit and the urine volume of belly > 0:
			decrease the urine volume of belly by 1;
	otherwise if the total squirtable fill of belly > belly limit + 20 and the latex-transformation of the player > 4:
		say "Your belly maxes out and just can't physically inflate any further. Suddenly there is a loud [bold type]POP[roman type], and then everything goes black.";
		now delayed fainting is 1;
		now the fainting reason of the player is 19;
	otherwise if the total squirtable fill of belly > belly limit and the latex-transformation of the player <= 4:
		let semen-flav-said be 0;
		let milk-flav-said be 0;
		let urine-flav-said be 0;
		let water-flav-said be 0;
		let flav-said be 0;
		let small-egg-flav-said be 0;
		while total squirtable fill of belly - belly limit > 0 and delayed fainting is 0:
			if the water volume of belly > 0 and the water volume of belly > the urine volume of belly and the water volume of belly > the semen volume of belly:
				if water-flav-said is 0:
					say "Your stomach audibly gurgles as [water] flows upwards through your body.[if flav-said is 0][one of][line break][variable custom style]Now that is a pretty unique feeling...[roman type][line break][or][stopping][end if]";
					now water-flav-said is 1;
					now flav-said is 1;
				increase the stomach-water of the player by 1;
				decrease the water volume of belly by 1;
			otherwise if the milk volume of belly > 0 and the milk volume of belly > the urine volume of belly and the milk volume of belly > the semen volume of belly:
				if milk-flav-said is 0:
					say "Your stomach audibly gurgles as [milk] flows upwards through your body.[if flav-said is 0][one of][line break][variable custom style]Now that is a pretty unique feeling...[roman type][line break][or][stopping][end if]";
					now milk-flav-said is 1;
					now flav-said is 1;
				increase the stomach-milk of the player by 1;
				decrease the milk volume of belly by 1;
			otherwise if the semen volume of belly > 0 and the semen volume of belly > the urine volume of belly:
				if semen-flav-said is 0:
					say "Your stomach audibly gurgles as [semen] flows upwards through your body.[if flav-said is 0][one of][line break][variable custom style]Now that is a pretty unique feeling...[roman type][line break][or][stopping][end if]";
					now semen-flav-said is 1;
					now flav-said is 1;
				increase the stomach-semen of the player by 1;
				decrease the semen volume of belly by 1;
			otherwise if the urine volume of belly > 0:
				if urine-flav-said is 0:
					say "Your stomach audibly gurgles as [urine] flows upwards through your body.[if flav-said is 0][one of][line break][variable custom style]Now that is a pretty unique feeling...[roman type][line break][or][stopping][end if]";
					now urine-flav-said is 1;
					now flav-said is 1;
				increase the stomach-urine of the player by 1;
				decrease the urine volume of belly by 1;
			otherwise if the small egg count of belly > 0:
				if the stomach of the player < 15:
					say "[if small-egg-flav-said is 0]Your stomach audibly gurgles and you wince in pain as a solid [ShortDesc of a random small egg] is forced upwards through your body into your stomach.[line break][one of][line break][variable custom style]What the fuck is happening to me![or]Not again![stopping][roman type][line break][otherwise]Another egg is forced up from your belly into your stomach.[end if]";
					now small-egg-flav-said is 1;
					StomachFoodUp 2;
					decrease the small egg count of belly by 1;
				otherwise:
					if delayed fainting is 0, say "Your body's insides are now just completely full of [ShortDesc of a random small egg]s, but they don't stop coming. As a [ShortDesc of a random small egg] is forced up towards your mouth, it cuts off your ability to breathe. You quickly black out.";
					now delayed fainting is 1;
					now the fainting reason of the player is 10;
			otherwise if the medium egg count of belly > 0:
				if the stomach of the player < 15:
					say "[if small-egg-flav-said is 0]Your stomach audibly gurgles and you wince in pain as a solid egg is forced upwards through your body into your stomach.[line break][one of][line break][variable custom style]What the fuck is happening to me![or]Not again![stopping][roman type][line break][otherwise]Another egg is forced up from your belly into your stomach.[end if]";
					now small-egg-flav-said is 1;
					StomachFoodUp 2;
					decrease the medium egg count of belly by 1;
				otherwise:
					if delayed fainting is 0, say "Your body's insides are now just completely full of eggs, but they don't stop coming. As an egg is forced up towards your mouth, it cuts off your ability to breathe. You quickly black out.";
					now delayed fainting is 1;
					now the fainting reason of the player is 10;
			otherwise if the large egg count of belly > 0:
				if the stomach of the player < 15:
					say "[if small-egg-flav-said is 0]Your stomach audibly gurgles and you wince in pain as a giant egg is forced upwards through your body into your stomach.[line break][one of][line break][variable custom style]What the fuck is happening to me![or]Not again![stopping][roman type][line break][otherwise]Another egg is forced up from your belly into your stomach.[end if]";
					now small-egg-flav-said is 1;
					StomachFoodUp 4;
					decrease the large egg count of belly by 1;
				otherwise:
					if delayed fainting is 0, say "Your body's insides are now just completely full of eggs, but they don't stop coming. As an egg is forced up towards your mouth, it cuts off your ability to breathe. You quickly black out.";
					now delayed fainting is 1;
					now the fainting reason of the player is 10;
			otherwise:
				say "Your belly maxes out and just can't physically inflate any further. Suddenly there is a loud [bold type]POP[roman type], and then everything goes black.";
				now delayed fainting is 1;
				now the fainting reason of the player is 19;
		if the stomach-liquid of the player > 15 and super gag reflex < 2, follow the player pukes rule.

Chapter 3 - Ass Filling

assfilled is initially false. [has the player ever had cum in their butt?]

To Assfill (X - a number):
	if diaper quest is 1:
		if enema fetish is 0, say "BUG - player's butt just got filled with water (via AssFill) even though enemas were disabled. Please report this bug!";
		AssFill X water;
	otherwise:
		if lipstick collar is worn, increase X by 1;
		let M be a random wrapped monster penetrating asshole;
		if M is monster:
			now X is 0;
			compute condom filling of M;
		otherwise:
			compute father material of asshole;
			now assfilled is true;
		if invigoration-timer of invigoration-elixir > 0 and the soreness of asshole > 0 and X > 0:
			say "As the [semen] rushes through your system into your [BellyDesc], the lining of your [asshole] is somehow healed!";
			if the soreness of asshole > X, decrease the soreness of asshole by X;
			otherwise now the soreness of asshole is 0;
			now the tolerated of asshole is 0;
		if cum dump's undergarment is worn and the body soreness of the player > 0 and X > 1:
			say "As the [semen] rushes through your system into your [BellyDesc], you feel your body somehow being healed!";
			if the body soreness of the player > X / 2, decrease the body soreness of the player by X / 2;
			otherwise now the body soreness of the player is 0;
		if slimegirl is worn:
			say "The [semen] flowing into your [asshole] is consumed by [NameDesc of slimegirl]! [big he of slimegirl] communicates with you telepathically.";
			say "[second custom style]'[one of]Yum[or]Ooh, hooray[or]Yippee[or]Ooh, goodie[at random][if the hunger of slimegirl > 2]! I feel better now...'[otherwise]!'[end if][roman type][line break]";
			now the hunger of slimegirl is 0;
			if the intensity of slimegirl > 0:
				say "You feel the negative effects of [NameDesc of slimegirl] on your mental state fade away.";
				now the intensity of slimegirl is 0;
			now the timetaken of slimegirl is 0;
			now X is 0;
		SlowSemenAddictUp 1;
		while X > 0:
			increase the semen volume of belly by 1;
			decrease X by 1;
		now M is a random thing penetrating asshole;
		if M is a thing, progress quest of anal-creampie-quest from M;
		overflow.

To Assfill (X - a number) with (L - semen):
	Assfill X.

To assfill (X - a number) small eggs:
	while X > 0:
		decrease X by 1;
		increase the small egg count of belly by 1;
		let M be a random egg-fathering thing penetrating asshole;
		if M is a thing, add M to the small-egg-origins of belly;
	overflow;

To assfill (X - a number) medium eggs:
	while X > 0:
		decrease X by 1;
		increase the medium egg count of belly by 1;
		let M be a random egg-fathering thing penetrating asshole;
		if M is a thing, add M to the medium-egg-origins of belly;
	if carrot daggers is worn and carrot daggers is not blessed and there is a live thing penetrating asshole:
		bless carrot daggers;
		say "You sense that your [ShortDesc of carrot daggers] have become more powerful!";
	overflow;

To assfill (X - a number) large eggs:
	while X > 0:
		decrease X by 1;
		increase the large egg count of belly by 1;
		let M be a random egg-fathering thing penetrating asshole;
		if M is a thing, add M to the large-egg-origins of belly;
	overflow;

To Assfill (X - a number) urine:
	if enema fetish is 0 and X > 0, say "BUG - player's butt just got filled with urine even though enemas were disabled. Please report this bug!";
	while X > 0:
		decrease X by 1;
		increase the urine volume of belly by 1;
	overflow.

To Assfill (X - a number) with (L - urine):
	Assfill X urine.

To Assfill (X - a number) milk:
	if enema fetish is 0 and X > 0, say "BUG - player's butt just got filled with milk even though enemas were disabled. Please report this bug!";
	while X > 0:
		decrease X by 1;
		increase the milk volume of belly by 1;
	overflow.

To Assfill (X - a number) with (L - milk):
	Assfill X milk.

To Assfill (X - a number) air:
	if the number of worn research airhancers > 0, increase X by 1;
	while X > 0:
		decrease X by 1;
		if the air volume of belly < 50, increase the air volume of belly by 1.

To Assfill (X - a number) water:
	if enema fetish is 0 and X > 0, say "BUG - player's butt just got filled with water even though enemas were disabled. Please report this bug!";
	while X > 0:
		decrease X by 1;
		increase the water volume of belly by 1;
	overflow.

To Assfill (X - a number) with (L - water):
	Assfill X water.

Chapter 4 - Enema / Creampie Squirting

[These count values are the totals of how many of each element are going to come out. They're here because the function had hit the maximum number of temporary variables]
small-egg-count is a number that varies.

medium-egg-count is a number that varies.

large-egg-count is a number that varies.

milk-count is a number that varies.

urine-count is a number that varies.

air-count is a number that varies.

semen-count is a number that varies.

water-count is a number that varies.

currently-squirting is a number that varies.

same-turn-squirting is initially false. [sometimes we need to tell the below function not to trigger extra turns, because we're in a big loop]

Definition: a room is partial squirt: [some rooms, e.g. predicament rooms, have the player squirt out 6 units of enema each time, rather than all of it at once]
	if it is nonstandard, decide yes;
	decide no.

To AssSquirt:
	[This makes sure that the game doesn't start counting down to another expulsion whilst one is still happening]
	reset all monster reactions;
	now currently-squirting is 1;
	now player-just-enema-leaked is true;
	now the squirt timer of belly is -1;
	now small-egg-count is 0;
	now medium-egg-count is 0;
	now large-egg-count is 0;
	now milk-count is 0;
	now urine-count is 0;
	now semen-count is 0;
	now water-count is 0;
	[total-count is the total count of all elements currently inside.]
	let total-count be 0;
	[target-count is the decided amount of how much stuff is coming out.]
	let target-count be 0;
	[liquid-total is the decided amount of liquid that is coming out.]
	let liquid-total be 0;
	[liquid-count is used to keep track of how much liquid has been squirted this round.]
	let liquid-count be 0;
	[We use doses-count to track the about of liquid compared to number of doses (2 units of liquid = 1 dose)]
	let doses-count be 0;
	[collecting is used to keep track of what vessel if any the player is using to capture some liquid.]
	let collecting be nothing;
	if woman-player is in the location of the player and fishbowl is in the location of the player and there is a patron in the location of the player, now collecting is fishbowl;
	[element-count lets us count how many different things we've expelled (or at least tried to). The idea is that we can now use a while loop in between expulsions, which in turn allows us to break the while loop if the player ever becomes ass plugged during expulsion.]
	let element-count be 0;
	[turn-count keeps track of how many turns we've been squirting liquid for, mainly so we know if it's the first turn or not for text flavour purposes.]
	let turn-count be 0;
	[flav-said is used to stop the soak flavour text being repeated in the same turn.]
	let flav-said be 0;
	[Here we decide just how much stuff is coming out.]
	let R be 0;
	[if a random number between 1 and 8 is 8, now target-count is the total squirtable fill of belly;
	otherwise now R is a random number between 2 and the total squirtable fill of belly;
	if R is the total squirtable fill of belly:
		now target-count is the total squirtable fill of belly;
	otherwise if R > the total squirtable fill of belly / 2:
		now target-count is the total squirtable fill of belly / 2;
	otherwise if R > the total squirtable fill of belly / 3:
		now target-count is the total squirtable fill of belly / 3;
	if target-count < 4:
		now target-count is 3;]
	if the total squirtable fill of belly < 6 or voluntarySquatting is 1:
		now target-count is the total squirtable fill of belly;
	otherwise if the player is in a partial squirt room:
		now target-count is 6;
	otherwise: [Usually, everything comes out. Except in a predicament world without squatting]
		now target-count is the total squirtable fill of belly;
	[The simple option: if everything is coming out!]
	if the total squirtable fill of belly is target-count:
		now small-egg-count is the small egg count of belly;
		now medium-egg-count is the medium egg count of belly;
		now large-egg-count is the large egg count of belly;
		now milk-count is the milk volume of belly;
		now urine-count is the urine volume of belly;
		now semen-count is the semen volume of belly;
		now water-count is the water volume of belly;
		now liquid-total is milk-count + urine-count + semen-count + water-count;
	otherwise: [always at least one egg if possible]
		if small egg count of belly > 0:
			now small-egg-count is 1;
			now total-count is 1;
		otherwise if medium egg count of belly > 0:
			now medium-egg-count is 1;
			now total-count is 2;
		otherwise if large egg count of belly > 0:
			now large-egg-count is 1;
			now total-count is 5;
		while total-count < target-count:
			let R be a random number between 1 and 7;
			if R is 1 and small-egg-count < the small egg count of belly:
				increase small-egg-count by 1;
				increase total-count by 1;
			otherwise if R is 2 and medium-egg-count < the medium egg count of belly:
				increase medium-egg-count by 1;
				increase total-count by 2;
			otherwise if R is 3 and large-egg-count < the large egg count of belly:
				increase large-egg-count by 1;
				increase total-count by 5;
			otherwise if R is 4 and urine-count < the urine volume of belly:
				increase urine-count by 1;
				increase liquid-total by 1;
				increase total-count by 1;
			otherwise if R is 5 and milk-count < the milk volume of belly:
				increase milk-count by 1;
				increase liquid-total by 1;
				increase total-count by 1;
			otherwise if R is 6 and semen-count < the semen volume of belly:
				increase semen-count by 1;
				increase liquid-total by 1;
				increase total-count by 1;
			otherwise if R is 7 and water-count < the water volume of belly:
				increase water-count by 1;
				increase liquid-total by 1;
				increase total-count by 1;
	[If it's a large amount or includes any eggs, the player falls to their knees.]
	if the latex-transformation of the player < 3 and voluntarySquatting is 0 and (belly egg count > 0 or total-count > 8):
		say "[bold type]Your strength crumbles [if the player is upright]and you fall to your knees [end if]as your [asshole]'s sphincter starts to loosen involuntarily.[roman type][line break]";
		let seconds-saved be seconds;
		allocate 0 seconds; [This stops the monsters taking a turn here]
		now auto is 1; [This prevents the player being offered whether they want to kneel or not, when seconds is 0]
		if the player is upright, try kneeling;
		now auto is 0;
		now seconds is seconds-saved;
	let ST be a random sex toy penetrating asshole;
	if ST is sex toy:
		say "Your [ST] bursts out of your [asshole]";
		if diaper quest is 1:
			let BL be a random bottom level ass protection clothing;
			if BL is clothing, say ", shoots out of the leghole of your [BL]";
		otherwise:
			repeat with BL running through bottom level ass protection clothing:
				if BL is portal-hotpants:
					say ", presumably causing quite the surprising scene in the [location of pimp-pedestal-1],";
					now ST is in the location of pimp-pedestal-1;
				otherwise if BL is possession:
					say ", passing seamlessly through your [BL]";
				otherwise if BL is rippable and BL is crotch-intact:
					say ", rips through your [BL]";
					now BL is crotch-ripped;
				otherwise:
					say ", destroys your [BL]";
					delayed imprint destroy BL;
		say " and falls to the ground.";
		resolve delayed imprints;
		ruin asshole;
		if ST is worn, now ST is in the location of the player;
		dislodge ST;
	[Now we set up an expulsion poster, if appropriate]
	if (there is a camera trap in the location of the player or there is a camera-bystander in the location of the player) and there is an off-stage expulsion poster and the number of worn total protection diapers is 0:
		now target-poster is a random off-stage expulsion poster;
		compute uniquest variables of target-poster;
	[Now we have our big while loop that can get exited early by the player's ass getting plugged.]
	while the player is able to expel and element-count < 5:
		if element-count is 0:
			if small-egg-count > 0:
				say EggBeginsFlav;
				lay small-egg-count small eggs;
				progress quest of egg-laying-quest;
				if voluntarySquatting is 0, progress quest of egg-holding-quest;
				let Y be a random camera trap in the location of the player;
				if Y is not a thing, now Y is a random camera-bystander in the location of the player;
				if target-poster is an expulsion poster and target-poster is off-stage and Y is a thing and (Y is not a camera trap or the reset-timer of Y < 99900):
					say "[FlashFlav of Y][if Y is camera trap][ExpulsionFlashFlav of Y][end if]";
					set up target-poster;
				if same-turn-squirting is false:
					allocate 6 seconds;
					compute extra turn; [After each type of egg comes out, the game world gets a turn to act.]
			increase element-count by 1;
		otherwise if element-count is 1:
			if medium-egg-count > 0:
				if small-egg-count > 0:
					if the latex-transformation of the player < 3, say "You are left panting from your initial egg laying session, and you hope it's all over now, but it's not. You yelp in extreme discomfort as ";
					otherwise say "You coo softly as ";
				otherwise:
					say "[EggBeginsFlav]";
				lay medium-egg-count medium eggs;
				progress quest of egg-laying-quest;
				if voluntarySquatting is 0, progress quest of egg-holding-quest;
				let Y be a random camera trap in the location of the player;
				if Y is not a thing, now Y is a random camera-bystander in the location of the player;
				if target-poster is an expulsion poster and target-poster is off-stage and Y is a thing and (Y is not a camera trap or the reset-timer of Y < 99900):
					say "[FlashFlav of Y][if Y is camera trap][ExpulsionFlashFlav of Y][end if]";
					set up target-poster;
				if same-turn-squirting is false:
					allocate 6 seconds;
					compute extra turn;
			increase element-count by 1;
		otherwise if element-count is 2:
			if large-egg-count > 0:
				if small-egg-count > 0 and medium-egg-count > 0:
					say "[variable custom style]Surely the eggs must be all out now?![roman type][line break]Your optimistic thought is interrupted by the feeling of your [asshole] being stretched to what feels like a diameter as ";
				otherwise if small-egg-count > 0 or medium-egg-count > 0:
					if the latex-transformation of the player < 3, say "You are left panting from your initial egg laying session, and you hope it's all over now, but it's not. You yelp in extreme discomfort as ";
					otherwise say "You coo softly as ";
				otherwise:
					say "[EggBeginsFlav]";
				lay large-egg-count large eggs;
				progress quest of egg-laying-quest;
				if voluntarySquatting is 0, progress quest of egg-holding-quest;
				let Y be a random camera trap in the location of the player;
				if Y is not a thing, now Y is a random camera-bystander in the location of the player;
				if target-poster is an expulsion poster and target-poster is off-stage and Y is a thing and (Y is not a camera trap or the reset-timer of Y < 99900):
					say "[FlashFlav of Y][if Y is camera trap][ExpulsionFlashFlav of Y][end if]";
					set up target-poster;
				if same-turn-squirting is false:
					allocate 6 seconds;
					compute extra turn;
			increase element-count by 1;
		otherwise if element-count is 3:
			if liquid-total > 0:
				[If the player is wearing underwear we'll need to keep track of that item of clothing to see how soaked it's getting.]
				let C be a random worn bottom level ass protection clothing;
				let squirt-target be nothing;
				if C is clothing:
					now squirt-target is C;
				otherwise if current-predicament is joint-fuckhole-predicament and the player is in Predicament01:
					now squirt-target is torn-shirt;
				otherwise if voluntarySquatting is 0 and (a random number between 1 and the dexterity of the player) < (a random number between 1 and 6):
					now squirt-target is thighs;
				[On the first round, we check if the player wants to collect some in a vessel, and output some unique flavour text.]
				if turn-count is 0 or collecting is a thing:
					if debugmode is 1, say "there are [number of carried open topped vessels] open topped vessels and [number of carried lid topped vessels] lid topped vessels carried by the player.";
					if the player is not flying and the player is not in a nonstandard room and collecting is nothing and the player is not ass protected and the player is not immobile and the player is not in danger and (water-count < liquid-total):
						let LV be a list of things;
						if voluntarySquatting is 1:
							repeat with V running through carried lid topped vessels:
								add V to LV;
						repeat with V running through carried open topped vessels:
							add V to LV;
						[if the number of entries in LV > 1:
							say "You have the following open topped vessels:[line break]";
							repeat with V running through LV:
								say "[V][line break]";]
						if the player is upright:
							repeat with P running through closed pedestals in the location of the player:
								if P is fertile or P is chilled or P is parched, add P to LV;
						if the number of entries in LV > 0:
							reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
							truncate LV to 9 entries;
							say "Where do you want to collect the liquid you're about to expel?[line break]";
							repeat with V running through LV:
								if V is bottle:
									set next numerical response to "The [ShortDesc of V][if the doses of V > 0] (You'll lose its current contents of [PotionType of V])[end if]";
								otherwise if V is pedestal:
									set next numerical response to "The [V]";
								otherwise:
									set next numerical response to "[BigNameDesc of V]";
							set numerical response 0 to "don't collect";
							compute multiple choice question;
							if player-numerical-response > 0, now collecting is entry player-numerical-response in LV;
					if collecting is a bottle:
						if collecting is fishbowl:
							say "[BigNameDesc of woman-player] holds the bowl under your [asshole] as you begin to expel ";
						otherwise:
							if the doses of collecting > 0:
								say "You tip the contents of the [ShortDesc of collecting] onto the floor.";
								dump collecting;
							say "You position the [printed name of collecting] below your [asshole] just in time, as you begin to expel ";
					otherwise if small-egg-count > 0 or medium-egg-count > 0 or large-egg-count > 0:
						say "The eggs are immediately followed by ";
					otherwise:
						say "You [if voluntarySquatting is 1]close your eyes[otherwise]freeze still on the spot[end if] as you expel ";
					say "a [if liquid-total > 6]huge [cascade][otherwise]few squirts[end if] of ";
					if urine-count is 0 and semen-count is 0 and milk-count is 0, say "[if diaper messing >= 3 and rectum > 1 and there is worn total protection soilable clothing][one of]murky[or]lumpy[in random order] brown water[otherwise if diaper messing >= 3]enema water[otherwise]clear water[end if] ";
					otherwise say "[if urine-count > 0 and semen-count > 0 and milk-count > 0]what must be a disgraceful mix of [urine], [milk] and [semen][otherwise if urine-count > 0 and semen-count > 0]what seems like a mix of [urine] and [semen][otherwise if urine-count > 0 and milk-count > 0]what seems like a mix of [urine] and [milk][otherwise if milk-count > 0 and semen-count > 0]what seems like a mix of [milk] and [semen][otherwise if urine-count > 0][urine][otherwise if semen-count > 0][semen][otherwise if milk-count > 0][milk][otherwise]BUG - can't find any liquid. Report this bug please[end if], directly from your [asshole] ";
					say "[if the player is ass protected]into [NameDesc of random worn bottom level ass protection clothing][otherwise if collecting is a thing and collecting is not yourself]into [NameDesc of collecting][otherwise if squirt-target is thighs]onto your [ShortDesc of thighs][otherwise]onto the ground[end if].";
					if diaper messing >= 3 and rectum > 1 and there is worn total protection soilable clothing:
						say "It is accompanied by [if rectum < 8]a large amount of squishy brown mush[otherwise if rectum < 10]a huge log of mess[otherwise]an ungodly amount of squishy, smelly goop[end if] as your bowels are completely excavated.";
				if collecting is pedestal:
					let L be water;
					if urine-count > 0:
						if semen-count > 0 or milk-count > 0, now L is murkwater;
						otherwise now L is urine;
					otherwise if milk-count > 0:
						if semen-count > 0, now L is murkwater;
						otherwise now L is milk;
					otherwise:
						now L is semen;
					if semen-count > 0:
						ExpelDisplay;
					otherwise if the examine-image of asshole is Figure of AssholeObject0 or the examine-image of asshole is Figure of AssholeObject1:
						cutshow Figure of AssholeObject2 for asshole; [show asshole as partially gaped for one turn]
					compute PedestalFilling collecting with L by (urine-count + semen-count + milk-count);
					now urine-count is 0;
					now semen-count is 0;
					now milk-count is 0;
					now water-count is 0;
				otherwise if collecting is bottle:
					now collecting is anal-origin;
					[In the first turn we decide what type of liquid the bottle is being filled with]
					if turn-count is 0:
						if urine-count > 0:
							if semen-count > 0 or milk-count > 0 or (collecting is non-empty and the fill-colour of collecting is creamy):
								now the fill-colour of collecting is murky;
							otherwise:
								now the fill-colour of collecting is golden;
						otherwise if milk-count > 0:
							if semen-count > 0 or ((the fill-colour of collecting is creamy or the fill-colour of collecting is golden) and collecting is non-empty):
								now the fill-colour of collecting is murky;
							otherwise:
								now the fill-colour of collecting is white;
						otherwise if semen-count > 0:
							if collecting is non-empty and the fill-colour of collecting is golden, now the fill-colour of collecting is murky;
							otherwise now the fill-colour of collecting is creamy;
							compute father material of asshole into collecting;
						otherwise:
							[Shouldn't be able to happen]
							now the fill-colour of collecting is murky;
					if semen-count > 0:
						ExpelDisplay;
					otherwise if the examine-image of asshole is Figure of AssholeObject0 or the examine-image of asshole is Figure of AssholeObject1:
						cutshow Figure of AssholeObject2 for asshole; [show asshole as partially gaped for one turn]
					[Now we fill the bottle]
					if debugmode is 1, say "liquid-count: [liquid-count], liquid-total: [liquid-total], milk-count: [milk-count], semen-count: [semen-count], urine-count: [urine-count], doses: [doses of collecting] / [max-doses of collecting].";
					while liquid-count < liquid-total and liquid-total > 0 and the doses of collecting < the max-doses of collecting:
						if milk-count > 0:
							decrease milk-count by 1;
							decrease the milk volume of belly by 1;
							increase liquid-count by 1;
							increase doses-count by 1;
						if semen-count > 0:
							decrease semen-count by 1;
							decrease the semen volume of belly by 1;
							increase liquid-count by 1;
							increase doses-count by 1;
						if urine-count > 0:
							decrease urine-count by 1;
							decrease the urine volume of belly by 1;
							increase liquid-count by 1;
							increase doses-count by 1;
						[Here we transfer doses-count into actual doses]
						while doses-count > 0 and the doses of collecting < the max-doses of collecting:
							DoseUp collecting;
							decrease doses-count by a random number between 1 and 2;
					[If it's full, change the noun so that we stop using it.]
					if the doses of collecting >= the max-doses of collecting:
						say "The [printed name of collecting] is now full[if liquid-count < liquid-total], but it keeps coming[end if]!";
						now collecting is the player;
				[One the bottle is full (or never existed), we start soaking clothing or the floor]
				if semen-count > 0:
					ExpelDisplay;
				otherwise if the examine-image of asshole is Figure of AssholeObject0 or the examine-image of asshole is Figure of AssholeObject1:
					cutshow Figure of AssholeObject2 for asshole; [show asshole as partially gaped for one turn]
				if turn-count is 0, compute squirt declarations into C;
				let temp-milk-count be 0;
				let temp-semen-count be 0;
				let temp-urine-count be 0;
				let temp-water-count be 0;
				while liquid-count < 6 and liquid-count < liquid-total:
					if milk-count > 0:
						increase temp-milk-count by 1;
						decrease the milk volume of belly by 1;
						decrease milk-count by 1;
						increase liquid-count by 1;
					if semen-count > 0:
						increase temp-semen-count by 1;
						decrease the semen volume of belly by 1;
						decrease semen-count by 1;
						increase liquid-count by 1;
					if urine-count > 0:
						increase temp-urine-count by 1;
						decrease the urine volume of belly by 1;
						decrease urine-count by 1;
						increase liquid-count by 1;
					if water-count > 0:
						let W be water-count;
						if W > 6 - liquid-count, now W is 6 - liquid-count;
						if W > 0:
							increase temp-water-count by 1;
							decrease the water volume of belly by W;
							decrease water-count by W;
							increase liquid-count by W;
					if semen-count is 0 and urine-count is 0 and milk-count is 0 and water-count is 0, now liquid-count is 6; [In case of glitches and we somehow run out of liquid, we don't break the game.]
				if temp-milk-count > 0:
					AnnouncedExpel milk on squirt-target by temp-milk-count;
				if temp-urine-count > 0:
					AnnouncedExpel urine on squirt-target by temp-urine-count;
				if temp-water-count > 0:
					AnnouncedExpel water on squirt-target by temp-water-count;
				if temp-semen-count > 0:
					AnnouncedExpel semen on squirt-target by temp-semen-count; [semen is last so it's not washed off]
				compute enema reactions;
				[Now we deal with if there's much left and therefore we need to keep going. In total, no more than 6 liquid should have been released]
				if liquid-total > 6 and liquid-total < 1000:
					decrease liquid-total by 6;
					say "The [cascade] [one of]shows no signs of slowing down[or]is still spurting just as powerfully[or]continues[at random]!";
					ruin asshole;
					if liquid-total < 7, now liquid-total is 9999;
				otherwise if liquid-total is 9999:
					say "The [flow] now slows down, until there's only a tiny trickle leaving your [asshole].";
					now liquid-total is 0;
				otherwise:
					now liquid-total is 0;
				now liquid-count is 0;
				let Y be a random camera trap in the location of the player;
				if Y is not a thing, now Y is a random camera-bystander in the location of the player;
				if target-poster is an expulsion poster and target-poster is off-stage and Y is a thing and (Y is not a camera trap or the reset-timer of Y < 99900):
					say "[FlashFlav of Y][if Y is camera trap][ExpulsionFlashFlav of Y][end if]";
					set up target-poster;
				if same-turn-squirting is false:
					allocate 6 seconds;
					compute extra turn;
				increase turn-count by 1;
			otherwise:
				increase element-count by 1;
		otherwise if element-count is 4:
			let D be a random worn total protection soilable clothing;
			if D is clothing and diaper messing >= 3 and rectum > 1:
				MessUp D by rectum - 1;
				reset rectum after messing;
			increase element-count by 1;
		otherwise:
			[Prevents an infinite loop in case of a glitch]
			now element-count is 5;
	now the squirt timer of belly is 0;
	if asshole is actually occupied:
		say "The [cascade] stops since your [asshole] is now occupied.";
	otherwise:
		if voluntarySquatting is 0:
			do nothing;
		otherwise if the class of the player is royal slave:
			let A be a random off-stage pair of anklecuffs;
			if A is actually summonable:
				say "[bold type]Your [ShortDesc of royal circlet] [bold type]shakes angrily at you expelling the milk before it has finished brewing, and anklecuffs materialise around your feet![roman type][line break]";
				summon A locked;
			otherwise:
				say "[bold type]Your [ShortDesc of royal circlet] [bold type]shakes angrily at you expelling the milk before it has finished brewing, and you feel more stiff.[roman type][line break]";
				DexDown 1;
	now currently-squirting is 0;
	now voluntarySquatting is 0;
	now same-turn-squirting is false;
	if the semen volume of belly is 0, cancel father material of asshole.

To say EggBeginsFlav:
	say "You shudder [if the humiliation of the player < HUMILIATION-PROUD + 4000]in shame[otherwise if the bimbo of the player < HUMILIATION-DISGRACED + 3000]in a mixture of arousal and shame[otherwise]with pure arousal[end if] as ".

To lay (X - a number) small eggs:
	if X < 10, say "[if X is 1]one[otherwise]one, then another[end if][if X > 2], then a third[end if][if X > 3], then a fourth[line break][variable custom style](woah!)[roman type][line break][end if][if X > 4], then a fifth[end if][if X > 5], then a sixth[line break][variable custom style](how many?!)[roman type][line break][end if][if X > 6], then a seventh[end if][if X > 7], then an eighth[line break][variable custom style](holy shit...)[roman type][line break][end if][if X > 8], then a ninth[end if] [MediumDesc of a random small egg] slowly emerges from your ever loosening [asshole], making a quiet 'plop' sound as [if X is 1]it[otherwise]each[end if] comes out.";
	otherwise say "smallish [ShortDesc of a random small egg]s one by one plop from your [asshole]. By the time it's finished, [X] have popped out.";
	if the latex-transformation of the player < 3:
		say "The movement [if X > 1]of each one [end if]forcefully stimulates the inside of your ass.";
		let E be a random small egg;
		now E is penetrating asshole; [For size calculations]
		ruin asshole times the square root of X;
		now E is not penetrating asshole;
	let M be nothing;
	let D be a random worn total protection diaper;
	if D is diaper and the player is not in a predicament room:
		say "The [ShortDesc of a random small egg][if X > 1]s crack[otherwise] cracks[end if] inside your diaper, leaving a nasty slimy, soggy feeling! The pieces of shell seem to somehow dissolve away.";
		while X > 0:
			decrease the small egg count of belly by 1;
			decrease X by 1;
			WaterSoak 1 on D;
	otherwise:
		let L be the location of the player;
		if portal-hotpants is worn:
			say "The [ShortDesc of a random small egg][if X > 1]s disappear[otherwise] disappears[end if] through the portal.";
			now L is Hotel44;
		otherwise:
			while the player is ass protected:
				egg rip a random bottom level ass protection clothing worn by the player;
		while X > 0:
			decrease the small egg count of belly by 1;
			decrease X by 1;
			let S be a random available small egg;
			now S is in L;
			now S is laid;
			let EO be the number of entries in the small-egg-origins of belly;
			if EO > 0:
				now M is entry EO in the small-egg-origins of belly;
				truncate the small-egg-origins of belly to EO - 1 entries;
			now the egg-origin of S is M;
			if a random number between 1 and 4 is 1, now the hatching of S is 1;
			if the egg-origin of S is ghost or the egg-origin of S is ghostly dildo pole trap or the egg-origin of S is the throne, now the hatching of S is 1;
		if egg laying fetish is 0:
			appropriate-cutscene-display figure of egg laying 8;
		otherwise if the semen volume of belly > 6:
			appropriate-cutscene-display figure of egg laying 1;
		otherwise:
			appropriate-cutscene-display figure of egg laying 2.

To lay (X - a number) medium eggs:
	if X < 10, say "[if X is 1]one[otherwise]one, then another[end if][if X > 2], then a third [variable custom style](owww!)[roman type][end if][if X > 3], then a fourth[end if][if X > 4], then a fifth[end if][if X > 5], then a sixth[line break][variable custom style](my poor [asshole] can't survive much more of this...)[roman type][line break][end if][if X > 6], then a seventh[end if][if X > 7], then an eighth[line break][variable custom style](there's no way this was all inside me...)[roman type][line break][end if][if X > 8], then a ninth[end if] full sized egg slowly emerges from your ever loosening [asshole], making a quiet 'plop' sound as [if X is 1]it[otherwise]each[end if] comes out.";
	otherwise say "Full sized chicken-like eggs one by one force their way from your [asshole]. There are so many that you quickly lose count, it's at least ten but you really have no idea.";
	if the latex-transformation of the player < 3:
		say "The [if X > 1]eggs are[otherwise]egg is[end if] much too big to be passed comfortably, and the ordeal inevitably stimulates your ass just as much as anal sex would.";
		let E be a random medium egg;
		now E is penetrating asshole; [For size calculations]
		ruin asshole times the square root of X;
		now E is not penetrating asshole;
	let M be nothing;
	let D be a random worn total protection diaper;
	if D is diaper:
		say "The egg[if X > 1]s crack[otherwise] cracks[end if] inside your diaper, leaving a nasty slimy, soggy feeling! The pieces of shell seem to somehow dissolve away.";
		while X > 0:
			decrease the medium egg count of belly by 1;
			decrease X by 1;
			WaterSoak 2 on D;
	otherwise:
		let L be the location of the player;
		if portal-hotpants is worn:
			say "The [ShortDesc of a random medium egg][if X > 1]s disappear[otherwise] disappears[end if] through the portal.";
			now L is Hotel44;
		otherwise:
			while the player is ass protected:
				egg rip a random bottom level ass protection clothing worn by the player;
		while X > 0:
			decrease the medium egg count of belly by 1;
			decrease X by 1;
			let S be a random available medium egg;
			now S is in L;
			now S is laid;
			let EO be the number of entries in the medium-egg-origins of belly;
			if EO > 0:
				now M is entry EO in the medium-egg-origins of belly;
				truncate the medium-egg-origins of belly to EO - 1 entries;
			now the egg-origin of S is M;
			if a random number between 1 and 4 is 1, now the hatching of S is 1;
		if the semen volume of belly > 6:
			appropriate-cutscene-display figure of egg laying 5;
		otherwise if the soreness of asshole > 7:
			appropriate-cutscene-display figure of egg laying 4;
		otherwise:
			appropriate-cutscene-display figure of egg laying 3;
	if carrot daggers is worn and carrot daggers is not cursed:
		curse carrot daggers;
		say "You sense that your [ShortDesc of carrot daggers] [if carrot daggers is cursed]are now stuck to your hands[otherwise]have lost their sharp tips[end if]!".

To lay (X - a number) large eggs:
	say "the largest egg you've ever seen exits your [asshole] at an excruciatingly slow speed, keeping your [asshole] stretched for several seconds as it eases its way out. It's as wide as your forearm.";
	appropriate-cutscene-display figure of egg laying 7;
	if X > 1 and the latex-transformation of the player < 3:
		say "You breathe a sigh of relief as it finally passes, but your sigh immediately turns into a scream of [if the bimbo of the player < 12]despair[otherwise]unexpected pleasure[end if] as [if X is 2]another egg[otherwise]one by one, [X - 1] more eggs[end if] of the same size make their way through just as slowly and with just as intense sensations.[line break][variable custom style][if the player is gagged]'MMMMMMMMMPH MMMMMMMMPH!!'[roman type][line break]The feelings are so intense that you can't help but scream out loud through your [ShortDesc of random thing penetrating face].[otherwise]'Fuuuuuuuuuuck Meeeeeeeeeeee!'[roman type][line break]The feelings are so intense that you can't help but scream out loud.[end if]";
		appropriate-cutscene-display figure of egg laying 6;
	otherwise if X > 1:
		say "You moan softly as [if X is 2]another egg[otherwise]one by one, [X - 1] more eggs[end if] of the same size make their way through just as slowly and with just as intense sensations.[line break]";
	let E be a random large egg;
	now E is penetrating asshole; [For size calculations]
	ruin asshole times X;
	now E is not penetrating asshole;
	let M be nothing;
	let D be a random worn total protection diaper;
	if D is diaper:
		say "The egg[if X > 1]s crack[otherwise] cracks[end if] inside your diaper, leaving a nasty slimy, soggy feeling! The pieces of shell seem to somehow dissolve away.";
		while X > 0:
			decrease the large egg count of belly by 1;
			decrease X by 1;
			WaterSoak 4 on D;
	otherwise:
		let L be the location of the player;
		if portal-hotpants is worn:
			say "The [ShortDesc of a random large egg][if X > 1]s disappear[otherwise] disappears[end if] through the portal.";
			now L is Hotel44;
		otherwise:
			while the player is ass protected:
				egg rip a random bottom level ass protection clothing worn by the player;
		while X > 0:
			decrease the large egg count of belly by 1;
			decrease X by 1;
			let S be a random available large egg;
			now S is in L;
			now S is laid;
			let EO be the number of entries in the large-egg-origins of belly;
			if EO > 0:
				now M is entry EO in the large-egg-origins of belly;
				truncate the large-egg-origins of belly to EO - 1 entries;
			now the egg-origin of S is M;
			if a random number between 1 and 4 is 1, now the hatching of S is 1.

To Egg Rip (C - a clothing):
	if C is knickers:
		if C is displacable:
			say "The force with which the egg shoots out makes it go straight through the leg holes of your [printed name of C]. [bold type]Your underwear is now displaced![roman type][line break]";
			displace C;
		otherwise if C is possession:
			say "The force with which the egg shoots out makes it go straight through your [printed name of C], which allow[if the armour of C >= 7]s[end if] it to pass right through![roman type][line break]";
		otherwise:
			say "The force with which the egg shoots out makes it go straight through your [printed name of C], ruining [if the armour of C < 7]it[otherwise]them[end if]. [bold type]Your clothing has been destroyed![roman type][line break]";
			destroy C;
	otherwise if C is possession:
		say "The force with which the egg shoots out makes it go straight through your [printed name of C], which allow it to pass right through![roman type][line break]";
	otherwise if C is rippable:
		say "The force with which the egg shoots out makes it go straight through your [printed name of C]. [bold type]Your outfit is now ripped![roman type][line break]";
		now C is crotch-ripped;
	otherwise:
		say "The force with which the egg shoots out makes it go straight through your [printed name of C], ruining them. [bold type]Your clothing has been destroyed![roman type][line break]";
		destroy C.

To compute squirt declarations into (C - an object):
	if there is an intelligent awake monster in the location of the player and the player is able to speak:
		let M be a random intelligent awake monster in the location of the player;
		if there is a worn total protection diaper and diaper messing >= 3 and the player is full:
			say "[diaper mess declaration of M]";
		otherwise if C is worn clothing:
			say "[enema declaration of M into C]";
		otherwise:
			say "[enema floor declaration of M]".

A person can be reacted-already. [This is used in ass squirting function which occurs over several turns to track which NPCs have already reacted to this particular episode]
To reset all monster reactions:
	repeat with M running through reacted-already people:
		now M is not reacted-already.

To say enema floor declaration of (M - a monster):
	say "[variable custom style]'[if voluntarySquatting is 1 and the humiliation of the player < HUMILIATION-MODEST + 4000][purposeful shameful enema floor declaration of M][otherwise if the humiliation of the player < HUMILIATION-MODEST + 4000][shameful enema floor declaration of M][otherwise if voluntarySquatting is 1 and humiliation of the player < HUMILIATION-SHAMELESS - 2000][purposeful apathetic enema floor declaration of M][otherwise if the humiliation of the player < HUMILIATION-SHAMELESS - 2000][apathetic enema floor declaration of M][otherwise if voluntarySquatting is 1][purposeful shameless enema floor declaration of M][otherwise][shameless enema floor declaration of M][end if][roman type][line break]".

To say purposeful shameful enema floor declaration of (M - a monster):
	say "[one of]Please don't watch...'[or]I'm sorry, please forgive me, I couldn't find a toilet in time...'[or]Please look away, I don't usually do this in front of people...'[in random order]".

To say shameful enema floor declaration of (M - a monster):
	say "[one of]Oh no, quickly, look away, please!'[or]Oh no, I can't make it to the toilet in time... please don't watch!'[or]Oh no, not here, please not right in front of [him of M]! I'm so sorry...'[in random order]".

To say purposeful apathetic enema floor declaration of (M - a monster):
	say "[one of]You can watch if you really want, I guess...'[or]You should look away unless you enjoy watching this sort of thing.'[or]Don't judge me, okay, I just can't be bothered to find a toilet.'[in random order]".

To say apathetic enema floor declaration of (M - a monster):
	say "[one of]Oops, haha, that's pretty bad timing, but I can't stop it now.'[or]Awkward... No this isn't on purpose, I promise.'[or]I'm not enjoying the fact you're watching me, you know.'[in random order]".

To say purposeful shameless enema floor declaration of (M - a monster):
	say "[one of]Please watch me disgrace myself!'[or]Don't look away! I want you to watch as I squirt it all out!'[or]Are you going to punish me for messing up the floor?'[in random order]".

To say shameless enema floor declaration of (M - a monster):
	say "[one of]It's all coming out! It's all coming out of my [asshole]!'[or]Omigod it's coming out! It's all coming out! Please watch my [asshole] as I disgrace myself!'[in random order]".

To say enema declaration of (M - a monster) into (C - a clothing):
	say "[variable custom style]'[if voluntarySquatting is 1 and the humiliation of the player < HUMILIATION-MODEST + 4000][purposeful shameful enema declaration of M into C][otherwise if the humiliation of the player < HUMILIATION-MODEST + 4000][shameful enema declaration of M into C][otherwise if voluntarySquatting is 1 and the humiliation of the player < HUMILIATION-SHAMELESS - 2000][purposeful apathetic enema declaration of M into C][otherwise if the humiliation of the player < HUMILIATION-SHAMELESS - 2000][apathetic enema declaration of M into C][otherwise if voluntarySquatting is 1][purposeful shameless enema declaration of M into C][otherwise][shameless enema declaration of M into C][end if][roman type][line break]".

To say purposeful shameful enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]It's... it's not what it looks like... Oh okay yes it is, but please don't look!'[or]I'm sorry, please forgive me, I couldn't find a private place in time...'[or]Oh god, how gross. I'm not enjoying this, you know...'[in random order]".

To say shameful enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]Oh crap, not in my clothes! Not now, in front of [him of M]!'[or]Oh no, I can't [if C is cursed]take these stupid clothes off[otherwise]make it to the toilet in time[end if]... please don't watch!'[or]Oh no, not here, please not right in front of [him of M]!'[in random order]".

To say purposeful apathetic enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]You can watch if you really want, I guess...'[or]You should look away unless you enjoy watching this sort of thing.'[or]Don't judge me, okay, I just can't [if C is cursed]actually take off these clothes right now[otherwise]be bothered to find a toilet[end if].'[in random order]".

To say apathetic enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]Oops, haha, that's pretty bad timing, but I can't stop it now.'[or]Awkward... No this isn't on purpose, I promise.'[or]I'm not enjoying the fact you're watching me, you know.'[in random order]".

To say purposeful shameless enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]Please watch me soil my clothes!'[or]Don't look away! I want you to watch as I squirt it all into my clothes!'[or]Are you enjoying watching me defile my own clothes? Tee-hee...'[in random order]".

To say shameless enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]It's all coming out! It's all coming out of my [asshole]!'[or]Omigod it's coming out! It's all coming out! Please watch my butt as I defile my clothes!'[in random order]".

To say purposeful shameful enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]It's... it's not what it sounds like... Oh okay yes it is, but please don't look!'[or]Those sounds aren't what you think they are! I promise!'[or]Oh no, I can't make it to the toilet in time... please don't judge me!'[or]Oh god, how gross. Why aren't you looking away?'[in random order]".

To say shameful enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]Oh crap, not in my diaper! I wanted to make it to the toilet!'[or]Oh no, not here please don't tell me you can hear that!'[or]Oops... that wasn't supposed to happen in front of you...'[in random order]".

To say purposeful apathetic enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]Ugh, I'm just using my diaper [if diaper quest is 1]like I'm told[otherwise]for its intended purpose[end if], it's not a big deal.'[or]You should leave unless you enjoy witnessing this sort of thing.'[or]Don't judge me okay, I just can't [if C is cursed]actually take off this diaper right now[otherwise]be bothered to find a toilet[end if].'[in random order]".

To say purposeful shameless enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]Please watch me squirt [if diaper quest is 1]my enema[otherwise]stuff from my [asshole][end if] into my diaper!'[or]Don't look away! I want you to watch as I squirt [if diaper quest is 1]my enema[otherwise]stuff from my [asshole][end if] all into my diaper!'[or]Are you enjoying watching me use my diaper as a toilet for my [asshole]?'[in random order]".

To say shameless enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]It's all coming out! It's all coming out of my [asshole] into my diaper!'[or]Omigod it's coming out! It's all coming out! Please watch my diaper as I fill it from my [asshole]!'[in random order]".

To compute enema reactions:
	let C be nothing;
	if the player is ass protected, now C is a random bottom level ass protection clothing worn by the player;
	repeat with M running through reactive people:
		unless M is reacted-already:
			if C is diaper:
				if M is monster and M is not diaperMessReacted:
					compute diaper mess reaction of M;
					now M is diaperMessReacted;
			otherwise if C is clothing:
				say EnemaReactionFlav of M into C;
				compute enema reaction of M into C;
			otherwise:
				say EnemaFloorReactionFlav of M;
				compute enema floor reaction of M;
			now M is reacted-already.

To compute enema floor reaction of (M - a person):
	if voluntarySquatting is 1, ultraHumiliate;
	if M is monster:
		FavourDown M with consequences;
		if M is interested and M is friendly:
			say "[BigNameDesc of M] turns to leave you alone.";
			distract M.

To say EnemaFloorReactionFlav of (M - a person):
	if M is intelligent, say "[BigNameDesc of M] [if M is interested]seems unimpressed[otherwise]turns to look at you[end if].[line break][speech style of M]'Disgusting[if M is unfriendly monster and diaper quest is 1]. You need further punishment[end if].'[roman type][line break][moderateHumiliateReflect]".

To compute enema reaction of (M - a person) into (C - a clothing):
	compute enema floor reaction of M.

To say EnemaReactionFlav of (M - a person) into (C - a clothing):
	say EnemaFloorReactionFlav of M.

Section - Image for graphics window

Figure of BellyObject1 is the file "CharWins/FocusWin/Belly/belly1.jpg".
Figure of BellyObject2 is the file "CharWins/FocusWin/Belly/belly2.jpg".
Figure of BellyObject3 is the file "CharWins/FocusWin/Belly/belly3.jpg".
Figure of BellyObject4 is the file "CharWins/FocusWin/Belly/belly4.jpg".
Figure of BellyObject5 is the file "CharWins/FocusWin/Belly/belly5.jpg".
Figure of BellyObject6 is the file "CharWins/FocusWin/Belly/belly6.jpg".
Figure of BellyObject7 is the file "CharWins/FocusWin/Belly/belly7.jpg".
Figure of BellyObject8 is the file "CharWins/FocusWin/Belly/belly8.jpg".
Figure of BellyObject9 is the file "CharWins/FocusWin/Belly/belly9.jpg".
Figure of BellyObject10 is the file "CharWins/FocusWin/Belly/belly10.jpg".
[Figure of BellyObject11 is the file "CharWins/FocusWin/Belly/belly11.jpg".]
Figure of BellyObject12 is the file "CharWins/FocusWin/Belly/belly12.jpg".
[Figure of BellyObject13 is the file "CharWins/FocusWin/Belly/belly13.jpg".]
Figure of BellyObject14 is the file "CharWins/FocusWin/Belly/belly14.jpg".
[Figure of BellyObject15 is the file "CharWins/FocusWin/Belly/belly15.jpg".]
Figure of BellyObject16 is the file "CharWins/FocusWin/Belly/belly16.jpg".

Figure of BellyObjectGlazed1 is the file "CharWins/FocusWin/Belly/belly1c.jpg".
Figure of BellyObjectGlazed2 is the file "CharWins/FocusWin/Belly/belly2c.jpg".
Figure of BellyObjectGlazed3 is the file "CharWins/FocusWin/Belly/belly3c.jpg".
Figure of BellyObjectGlazed4 is the file "CharWins/FocusWin/Belly/belly4c.jpg".
Figure of BellyObjectGlazed5 is the file "CharWins/FocusWin/Belly/belly5c.jpg".
Figure of BellyObjectGlazed6 is the file "CharWins/FocusWin/Belly/belly6c.jpg".
Figure of BellyObjectGlazed7 is the file "CharWins/FocusWin/Belly/belly7c.jpg".
Figure of BellyObjectGlazed8 is the file "CharWins/FocusWin/Belly/belly8c.jpg".
Figure of BellyObjectGlazed9 is the file "CharWins/FocusWin/Belly/belly9c.jpg".
Figure of BellyObjectGlazed10 is the file "CharWins/FocusWin/Belly/belly10c.jpg".
[Figure of BellyObjectGlazed11 is the file "CharWins/FocusWin/Belly/belly11c.jpg".]
Figure of BellyObjectGlazed12 is the file "CharWins/FocusWin/Belly/belly12c.jpg".
[Figure of BellyObjectGlazed13 is the file "CharWins/FocusWin/Belly/belly13c.jpg".]
Figure of BellyObjectGlazed14 is the file "CharWins/FocusWin/Belly/belly14c.jpg".
[Figure of BellyObjectGlazed15 is the file "CharWins/FocusWin/Belly/belly15c.jpg".]
Figure of BellyObjectGlazed16 is the file "CharWins/FocusWin/Belly/belly16c.jpg".

To decide which figure-name is the examine-image of (T - belly):
	if T is overglazed:
		if the largeness of belly < 2, decide on figure of BellyObjectGlazed1;
		if the largeness of belly is 2, decide on figure of BellyObjectGlazed2;
		if the largeness of belly is 3, decide on figure of BellyObjectGlazed3;
		if the largeness of belly is 4, decide on figure of BellyObjectGlazed4;
		if the largeness of belly is 5, decide on figure of BellyObjectGlazed5;
		if the largeness of belly is 6, decide on figure of BellyObjectGlazed6;
		if the largeness of belly is 7, decide on figure of BellyObjectGlazed7;
		if the largeness of belly is 8, decide on figure of BellyObjectGlazed8;
		if the largeness of belly is 9, decide on figure of BellyObjectGlazed9;
		if the largeness of belly is 10, decide on figure of BellyObjectGlazed10;
		if the largeness of belly is 11, decide on figure of BellyObjectGlazed12;
		if the largeness of belly is 12, decide on figure of BellyObjectGlazed14;
		decide on figure of BellyObjectGlazed16;
	otherwise:
		if the largeness of belly < 2, decide on figure of BellyObject1;
		if the largeness of belly is 2, decide on figure of BellyObject2;
		if the largeness of belly is 3, decide on figure of BellyObject3;
		if the largeness of belly is 4, decide on figure of BellyObject4;
		if the largeness of belly is 5, decide on figure of BellyObject5;
		if the largeness of belly is 6, decide on figure of BellyObject6;
		if the largeness of belly is 7, decide on figure of BellyObject7;
		if the largeness of belly is 8, decide on figure of BellyObject8;
		if the largeness of belly is 9, decide on figure of BellyObject9;
		if the largeness of belly is 10, decide on figure of BellyObject10;
		if the largeness of belly is 11, decide on figure of BellyObject12;
		if the largeness of belly is 12, decide on figure of BellyObject14;
		decide on figure of BellyObject16.

Belly ends here.
