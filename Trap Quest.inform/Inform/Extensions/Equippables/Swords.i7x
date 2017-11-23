Swords by Equippables begins here.

A sword is a kind of equippable. A sword is usually slap ready. A sword is usually metal.  Understand "sword" as sword. Understand "statue", "stone" as sword when item described is in Woods26 and item described is not held. Figure of sword is the file "sword1.png".

To decide which figure-name is clothing-image of (C - a sword):
	decide on figure of sword.

To say ClothingDesc of (S - a sword):
	say "[if S is in Woods26][StoneDesc of the item described][otherwise][SwordDesc of the item described][end if]".

To say ShortDesc of (S - a sword):
	say "sword".

To say StoneDesc of (S - a sword):
	say "A sword stuck in a stone, just like in the fairy tales you've heard.  There's probably some criteria you need to have in order to be able to [bold type]pull[roman type] it out.".

To say SwordDesc of (S - a sword):
	say "A metal blade, perfect for cutting things.".

To set up sword in the stone:
	let S be a random off-stage dildo sword;
	let R be a random number between 1 and 4;
	if background-pure is 1, now R is 1;
	if diaper quest is 1, now R is 4;
	if R is 1 and ((the player is female and the virgin of the player is 1) or (the player is male and tg fetish >= 1)):
		now S is a random off-stage sword of purity;
	if R is 2:
		now S is a random off-stage gladiator sword;
	if R is 3:
		now S is a random off-stage demon broadsword;
	if (R is 4 and diaper lover > 0) or diaper quest is 1:
		now R is 4;
		now S is a random off-stage giant rattle;
	if debugmode > 0, say "summoning sword [R] in the woods.";
	now S is in Woods26.

Definition: A sword (called S) is immune to change:
	decide yes.

Check pulling a sword:
	try taking the noun instead.

Check taking a sword:
	if there is a worn slap ready equippable, say "You try, but the hilt resists your touch. Maybe you need an open hand?" instead.

Section 1 - Sword of Purity

A sword of purity is a kind of sword. A sword of purity is usually unique. A sword of purity is usually purity. There is 1 sword of purity.

The printed name of sword of purity is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc][if the item described is not held and the item described is in Woods26]sword in the stone[otherwise]sword of purity[end if][clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of sword of purity is "sw".

To say SwordDesc of (S - a sword of purity):
	say "A gleaming silver sword, instilled with the power of purity. Holy energy emanates from the blade, as if the sword itself were comprised of pure, holy power. [if S is worn]Just holding it in your hand makes you feel incredibly powerful, but no matter the angle, the light reflecting off the blade seems to cast a spotlight on your [vagina], as if to remind monsters where the power comes from...and how to defeat it.[otherwise]It's clearly quite powerful, but something tells you that if you ever lose while wielding this sword...[end if]".
To say ShortDesc of (S - a sword of purity):
	say "gleaming silver sword".

To decide which number is the initial outrage of (C - a sword of purity):
	decide on 0.

[!<TheSwordOfPurityPussySlutRule>+

Equipping the sword of purity makes vaginal sex much more likely.

+!]
This is the sword of purity pussy slut rule:
	let S be a random sword of purity;
	if S is worn, increase the desirability of vagina by 10.
The sword of purity pussy slut rule is listed in the pussy slut eligibility rules.

To decide which number is the damage improvement of (W - a sword of purity):
	let X be 4;
	increase X by the magic-modifier of W;
	decide on X.

To uniquely set up (W - a sword of purity):
	do nothing. 

To decide which number is the vaginal-sex-influence of (W - a sword of purity):
	decide on 3.

To compute attack of (W - a sword of purity) at (M - a monster):
	say "[one of]You slash at the [M] with your [W].[or]You scratch the [M] with the tip of your [W].[or]You can hear a holy orchestra in the background as you fiercely slash at the [M] with your [W].[or]You leave a trail of golden light as you slice the [M] with your [W].[at random]".

To compute attack effect of (W - a sword of purity):
	do nothing.

Carry out taking a sword of purity:
	now the noun is identified;
	if the noun is in Woods26, say "The sword slides out without any resistance. You have been deemed pure and worthy!  You feel its power flowing through you.  You should try using your [bold type]slap[roman type] attack on enemies!";
	if the player is male and tg fetish >= 1:
		say "[DefaultSexchangeFlav]";
		now the virgin bonus of the player is 1;
		SexChange the player.

Report taking a sword of purity:
	if diaper focus is 1 and the player is diapered and the noun is in Woods26:
		let R be a random giant rattle;
		summon R cursed;
		say "As you pull the sword free, it turns into a [R], stuck to your hand!  [variable custom style][if the bimbo of the player < 7]You can't be serious...[otherwise if the bimbo of the player < 14]Hmm, this actually feels like it could so some real damage![otherwise]Ooh, this is much more appropriate for a diapered baby like me![end if][roman type][line break]";
		only destroy the noun instead;
		do nothing instead;
	otherwise if the virgin of the player is 0 and the player is female:
		let R be a random dildo sword;
		summon R cursed;
		say "As your hands close around the hilt, it turns into a [R], which sticks to your hand!  [variable custom style][if the bimbo of the player < 7]You can't be serious...[otherwise if the bimbo of the player < 14]Hmm, there must be a way to give this some power...[otherwise]Ooh, I can't wait to shove this massive thing inside my greedy cunt![end if][roman type][line break]";
		only destroy the noun instead;
		do nothing instead;
	if the player-class is succubus, say "The sword heats up to almost searing at your touch! Clearly it wants nothing to do with you." instead;
	try wearing the noun.[if it doesn't transform and the player can pick it up, wear automatically.]

Report wearing a sword of purity:
	if the noun is cursed:
		say "Your grip tightens involuntarily as your fingers close around the handle. The sword must be cursed!";
	otherwise if the player-class is succubus:
		say "The sword heats to almost absurd levels in your grasp! You are badly burned as you desperately drop it!";
		BodyRuin 2;
		DelicateUp 1;
		try silently dropping a random worn sword of purity;
	otherwise:
		say "Pure energy courses through your arm as your finger close around the handle. You can hear the singing of a holy orchestra as a golden spotlight lowers down from above, settling over your [vagina].".

To compute virginity-loss of (H - a sword of purity):
	if H is worn, say "Your [printed name of H] transforms in your hand, turning from a shiny metal sword into a giant flesh coloured dildo.";
	now the raw-magic-modifier of H is 0;
	now H is cursed;
	transform H into a random dildo sword.

To curse (B - a sword of purity):
	if B is not blessed:
		compute virginity-loss of B;
	otherwise:
		now B is bland.

Section 2 - Dildo Sword

A dildo sword is a kind of sword. There is 1 dildo sword. A dildo sword is usually unique.  A dildo sword is usually plastic. A dildo sword has a number called dildo girth.  The dildo girth of a dildo sword is usually 5. The text-shortcut of dildo sword is "ds". The printed name of dildo sword is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc][if the item described is not held and the item described is in Woods26]dildo in the statue[otherwise]dildo sword[end if][clothing-title-after][TQxlink of item described][verb-desc of item described]".  

Figure of dildo sword is the file "sword2.png".

To decide which figure-name is clothing-image of (C - a dildo sword):
	decide on figure of dildo sword.

To say StoneDesc of (S - a dildo sword):
	say "A stone statue of a naked woman on all fours, with a faceless man behind her. There is a thick, floppy dildo hanging from where his penis has presumably just been. It isn't attached to anything, you could probably [bold type]pull[roman type] it out.".

To say SwordDesc of (S - a dildo sword):
	say "[if the item described is worn]You are wielding a[otherwise]A[end if] [if the girth of item described < 7]large[otherwise if the girth of item described < 9]giant[otherwise]absolutely massive[end if] floppy dildo[if the raw-magic-modifier of item described is 0], which is absolutely useless for real combat![otherwise], which has some slight power in combat thanks to its magic glow.[end if]  [variable custom style][if the virgin of the player is 0 and the player is female]It serves as a permanent reminder of the shameful way I lost my cherry.[otherwise if the raw-magic-modifier of item described <= 0]I could barely win a cat-fight using a weapon like this![otherwise]A weapon that gains its power from fucking me.  How appropriate.[end if][roman type][line break]".

To decide which number is the initial outrage of (C - a dildo sword):
	decide on 8.

To decide which number is the damage improvement of (W - a dildo sword):
	let X be -1;
	increase X by the magic-modifier of W;
	decide on X.

To compute attack of (W - a dildo sword) at (M - a monster):
	say "The floppy [W] makes a [if the magic-modifier of W > 3]dull thud[otherwise]loud slapping sound[end if] as it hits the [M].".

Definition: a dildo sword (called S) is insertable:
	decide yes.

To decide which number is the girth of (S - a dildo sword):
	decide on the dildo girth of S.

Report plugging something with dildo sword:
	if the raw-magic-modifier of the second noun < 5:
		let N be 5 - the raw-magic-modifier of the second noun;
		say "[bold type]As the dildo bottoms out inside of you, ";
		let R be a random number between 1 and 3;
		if R is 1:
			say "it starts wriggling around, stimulating your insides all the way from the deepest point inside to your entrance![roman type]  [if N is 5]The tentacle-like movement is extremely powerful and fast, causing your whole body to shudder.  It lasts for several seconds!  [otherwise if N > 2]It lasts for a few seconds, enough to make you weak at the knees.  [otherwise]It only lasts for a couple of seconds but it still felt intense.  [end if]You can't help but become [if the player is a bit horny]further [end if]aroused.";
			arouse 500 * N;
		otherwise if R is 2:
			say "you feel a strange pressure inside of you, which you quickly realise is the dildo sword filling you with [if inflation fetish is 1]air[otherwise]some kind of magic serum[end if]![roman type]  Before you know it, your [if inflation fetish is 1]belly is[otherwise]hips are[end if] rumbling and growing...";
			if inflation fetish is 1, Assfill N * 2 air;
			otherwise HipUp (N + 1) / 2;
		otherwise:
			let F be a random fuckhole penetrated by the second noun;
			say "it grows, trying to stretch you even further.[roman type]  Your [variable F] [if the openness of F < 10]is forced to gape even further[otherwise]relaxes, easily accepting the largest size that the dildo sword can grow to[end if].  ";
			now the dildo girth of the second noun is the openness of F + 2;
			if the dildo girth of the second noun > 10, now the dildo girth of the second noun is 10;
			ruin F;
	say "[if the second noun is cursed]Since you can't let go of the handle,[otherwise]Since the large dildo is so heavy, it can't stay inside on its own and[end if] you are forced to pull it back out.  [if the raw-magic-modifier of the second noun < 5]As it comes out, you find that it is glistening with newly recharged magic power![end if]";
	now the raw-magic-modifier of the second noun is 5;
	try unplugging the second noun.

To compute attack effect of (H - a dildo sword):
	if the raw-magic-modifier of H > 0 and attack-type is 1:
		if a random number between 1 and 3 is 1:
			say "[bold type]The glow of your [H][bold type] [if the raw-magic-modifier of H <= 1]disappears[otherwise]fades[end if].[roman type][line break]";
			decrease the raw-magic-modifier of H by 1.

Carry out taking a dildo sword:
	now the noun is identified;
	if the noun is in Woods26, say "The dildo slides out without any resistance, followed by a trickle of what looks like [semen].".

Report taking a dildo sword:
	try wearing the noun.

Report wearing a dildo sword:
	say "You equip the dildo sword. You wince as your fingers involuntarily tighten around the handle. It must be cursed!";
	curse the noun.

Section 3 - Blade of Womanhood

[Gladiator sword weighs more or less based on the player's "honour". Running away will make the sword progressively heavier until the player can't even stand up.]

A gladiator sword is a kind of sword. There is 1 gladiator sword. A gladiator sword is usually unique. A gladiator sword has a number called burden. The burden of a gladiator sword is usually 0.

The printed name of gladiator sword is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc][if the item described is not held and the item described is in Woods26]sword in the stone[otherwise]blade of womanhood[end if][clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of gladiator sword is "tws".

To say SwordDesc of (S - a gladiator sword):
	say "A giant, dull-edged sword made of pure iron. Just swinging its weight around [if the burden of S < the strength of the player / 2]should take an enormous amount of strength, but somehow you have no trouble lifting it[otherwise if the burden of S > the strength of the player * 2]feels impossible[otherwise]takes a massive amount of strength[end if]. [if S is worn and S is unremovable]A magical chain is attached to the hilt, securely tethering it to your arm. There is a glowing message engraved on the hilt[otherwise]The hilt is engraved with a short message[end if]: 'May Honour Disarm You.'".

To say ShortDesc of (S - a gladiator sword):
	say "giant dull-edged sword".

Definition: a gladiator sword (called C) is unremovable:
	if the burden of C + 10 > the strength of the player, decide yes;
	decide no.

To compute attack effect of (W - a gladiator sword):[The gladiator sword becomes lighter the more you use it in combat. Don't be cowardly!]
	if attack-type is 1:
		if the burden of W > 0, decrease the burden of W by 1;
		if the burden of W < 0, now the burden of W is 0.

To compute attack of (W - a gladiator sword) at (M - a monster):
	say "You [one of]slash at the [M] with[or]scratch the [M] with the tip of[at random] your [W].".

To decide which number is the damage improvement of (W - a gladiator sword):
	let X be 3;
	increase X by the magic-modifier of W;
	if the largeness of breasts > 15, increase X by 2;
	decide on X.

To decide which number is the weight of (C - a gladiator sword):
	decide on the burden of C.

Check taking a gladiator sword:
	let R be 1;
	let B be a random worn breast covering clothing;
	if B is clothing:
		if B is ridiculously low cut or higher, now R is 0;
		if B is nipple covering, now R is 0;
	if the player is male and the largeness of breasts < 12, now R is 0;
	if gladiatorcurse < 0, now R is 1;[finishing the gladiator quest makes you worthy]
	if R is 0, say "The sword resists your touch. Maybe you[']re not worthy?" instead.

Carry out taking a gladiator sword:
	now the noun is identified;
	if the noun is in Woods26, say "The sword slides out without any resistance. You feel a swell of pride inside of you as you lift the weightless blade over your head! You should try using your [bold type]slap[roman type] attack on enemies!".

Report taking a gladiator sword:
	try wearing the noun.

To compute survival reward of (C - a gladiator sword):
	say "The [printed name of C] suddenly gains several pounds of extra weight, significantly weighing you down.";
	increase the burden of C by 5.

Section 4 - Demon Broadsword

[The more you attack with the demon broadsword the hornier it will get. Let its arousal reach 10 and it will transform into a giant dildo that likes to fuck you every so often.]

A demon broadsword is a kind of sword. There is 1 demon broadsword. A demon broadsword is usually unique. A demon broadsword has a number called arousal. The arousal of a demon broadsword is usually 0. A demon broadsword can be dildoed. A demon broadsword is usually not dildoed. A demon broadsword has a number called dildo girth.  The dildo girth of a demon broadsword is usually 5.

The printed name of demon broadsword is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc][if the item described is not held and the item described is in Woods26]sword in the stone[otherwise if the item described is dildoed]Demon Lord[']s 'Broadsword'[otherwise]Demon Lord's Living Broadsword[ArousalDesc of item described][end if][clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of demon broadsword is "dlb". Understand "lord's", "lords", "broad", "lord" as demon broadsword.

To say SwordDesc of (S - a demon broadsword):
	if S is dildoed:
		say "What was once a sword hilt is now a leather handle attached to an onyx portal. A giant red [manly-penis] is poking through it, fully erect and emanating unholy energy.";
	otherwise:
		say "A giant, gem encrusted sword with a jagged cutting edge. [if S is worn]The hilt is made of special treated leather, which makes it feel like your hand is wrapped around a hard [manly-penis][otherwise]The hilt is made of a special treated leather, always warm to the touch[end if].".

To say ShortDesc of (S - a demon broadsword):
	if the item described is dildoed:
		say "giant red [manly-penis] sword";
	otherwise:
		say "giant gem encrusted sword".

To say ArousalDesc of (S - a demon broadsword):
	if the arousal of S > 5:
		say " (dangerously aroused)";
	otherwise if the arousal of S > 2:
		say " (aroused)".

To decide which number is the initial outrage of (C - a demon broadsword):
	if C is dildoed, decide on 8;
	decide on 1.

To compute attack of (W - a demon broadsword) at (M - a monster):
	if W is dildoed:
		say "The stiff [W] makes a [if the arousal of W > 5]satisfying thud[otherwise]loud slapping sound[end if] as it hits the [M].";
	otherwise:
		say "The [printed name of W] shrieks as it slices through the air, towards the [M]!".

To compute attack effect of (W - a demon broadsword):
	if attack-type is 1:
		if W is not dildoed and the arousal of W < 7:
			increase the arousal of W by a random number between 1 and 2;
			say "The hilt pulses, hardening in your hand as you pull back from your attack[one of]! It's almost like it's getting excited by having somebody swing it around[or][stopping]!";
			if the bimbo of the player < 13 and the relevant sex addiction of the player < 15:
				say "[one of]Ugh. That's disgusting.[or][or]Ohh... this feels disturbingly like holding an actual, stiffening penis.[or][or]Stop that, you disgusting sword! I'm not doing this for [i]your[/i] pleasure! What sort of pervert makes a hilt that looks like a penis?[or][or]Dammit! The more I use this, the more it feels like an actual penis.[or][or]Good grief! I hope my friends can't see this penis-hilt, and think I'm enjoying groping it![then at random]";
			otherwise:
				say "[one of]Ohh, actually, that's kind of [i]nice[/i] to squeeze![or][or]I wish this was a real [penis] I was holding[or][or]Yeah, baby, get thicker, maybe I'll find [i]another[/i] use for you.[or][or]I love the way it feels, swelling up while I grip it![or][or][if tg fetish >= 1]I wonder if this is what they do with the left-over penises? This might be some former player's penis, tee he![otherwise]I wonder if this penis actually belongs to somebody. Maybe if I return it, the owner will fuck me as a reward![end if][or][or]I [if tg fetish >= 1]wonder if [i]my[/i] penis[otherwise]hope every penis[end if] might one day be used like this.[or][or]I wouldn't mind using the handle for something [i]else[/i] if I win this fight![then at random]";
		otherwise if W is not dildoed:
			compute demon punishment of W;
		otherwise:
			increase the arousal of W by a random number between 1 and 2;
			if a random number between 1 and 2 is 1, say "[one of]The [printed name of W] flexes. It's definitely getting excited by having you swing it around like a weapon![or][or][cycling]".

To decide which number is the damage improvement of (W - a demon broadsword):
	if W is dildoed:
		if the number of on-stage demon lords > 0, decide on the favour of a random demon lord;
		decide on the arousal of W;
	otherwise:
		decide on 2 + the arousal of W / 2.[This damage sounds really good, but remember that some late-game enemies have upwards of 70 health, and you need to be careful about how much you use this weapon to fight.]

To compute periodic effect of (H - a demon broadsword):
	if the arousal of H > 0:
		let N be 30;
		if the player is a priestess, decrease N by 10;
		if a random number between 1 and N is 1 and H is not dildoed:
			decrease the arousal of H by 1;
			say "Your [H] seems to calm down a bit.";
		otherwise if H is dildoed and (a random number between the arousal of H and (N + 10)) > N + 8:
			if face is not actually occupied:
				let S be (the strength of the player / 2) - the semen taste addiction of the player - the thirst of the player * 2;
				say "The [printed name of H] suddenly jams itself down your throat, throatfucking you aggressively [if S > the arousal of H]until you force it out of your mouth[otherwise if S >= the arousal of H]until you muster the strength to wrench it out of your mouth[otherwise if the semen taste addiction of the player > the arousal of H]as you half-heartedly try to tug it out of your mouth[otherwise]as you desperately try to wrench it out of your mouth[end if].";
				if S < the arousal of H:
					PukeUp the arousal of H / 2;
					say "It's far stronger than you are, and you're forced to endure being its cocksleeve until it finally fires a massive load straight down your throat!";
					OralSexAddictUp 1;
					StomachSemenUp the arousal of H;
					decrease the arousal of H by 8;
				otherwise:
					say "Its red surface glistens with a mixture of your spit and its own masculine juices, causing your head to swim as you breathe in its incredibly potent masculine musk.";
					IntDown 1;
					SemenTasteAddictUp 1;
					Arouse 200 + the sex addiction of the player * 10;
					decrease the arousal of H by 2;
				FatigueUp 30 - S;[the lower S is, the more fatigued you get]
			otherwise:
				if bukkake fetish is 1:
					say "The [printed name of H] stiffens, blasting your face with several hot ropes of [semen]. Your head swims as you breathe in its masculine musk.";
					if a random number between 1 and 2 is 1, SemenAddictUp 1;
					otherwise IntDown 1;
					Arouse 200 + the semen addiction of the player * 10;
				otherwise:
					say "The [printed name of H] bends back and strikes you in the face, disorienting you and [if the player is male]emasculating[otherwise]dehumanizing[end if] you with its display of male power. You shiver as the pulsating length hovers above your head, causing your head to swim with its incredibly potent masculine musk.";
					if a random number between 1 and 3 is 1, DelicateUp 1;
					otherwise SexAddictUp 1;
					humiliate 50;
					Arouse 200 + (the bimbo of the player * 10) + (the arousal of H * 5) ;
				decrease the arousal of H by 2.
				

Check taking a demon broadsword:
	if the player is a priestess, say "The sword shrinks away from your touch. Somehow." instead.

Carry out taking a demon broadsword:
	now the noun is identified;
	if the noun is in Woods26, say "The sword slides out without any resistance, emitting a piercing shriek as it slices through the air!";

Report taking a demon broadsword:
	try wearing the noun;

Report wearing a demon broadsword:
	if the player is a sissy or the player is a princess or the player is a royal slave or a random demon lord is alive or there is a worn demonic clothing:
		say "It shivers visibly as your fingers close around the hilt![line break]";
		compute demon punishment of the noun;
	otherwise:
		say "You feel a swell of overwhelming power![one of] You should [bold type]wield[roman type] it, and then try using your [bold type]slap[roman type] attack on enemies![or][stopping]".

To compute demon punishment of (S - a demon broadsword):
	if bukkake fetish is 1 and a random number between 1 and 5 < 4:
		say "The [printed name of S] transforms into a giant red [manly-penis], which immediately douses your body in several gallons of [semen]!";
		CumFaceUp 3;
		CumTitsUp 3;
		CumBellyUp 3;
		CumThighsUp 3;
	otherwise:
		say "The [printed name of S] transforms into a giant red [manly-penis], which falls on top of you as the sudden shift in your weight throws you off balance. Your head swims as you breathe in its incredibly potent masculine musk.";
		SemenAddictUp 3;
		SexAddictUp 3;
		IntDown 3;
	now the arousal of S is 0;
	now S is dildoed;
	now S is biological;
	now S is cursed.

Section 5 - Giant Rattle

A giant rattle is a kind of equippable.  A giant rattle is usually slap ready.  A giant rattle is usually unique.  A giant rattle is usually plastic.  There is 1 giant rattle.  

Definition: A giant rattle (called S) is immune to change:
	decide yes.

The printed name of giant rattle is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]giant rattle[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of giant rattle is "rat".

Figure of giant rattle is the file "rattle1.png".

To decide which figure-name is clothing-image of (C - a giant rattle):
	decide on figure of giant rattle.

To say ClothingDesc of (C - a giant rattle):
	say "An extremely large plastic rattle, with baby blue and yellow colours, and a rubber duck pattern.  Its hard exterior, size and weight make it a wield-able weapon.".
To say ShortDesc of (C - a giant rattle):
	say "large plastic rattle".

To decide which number is the initial outrage of (C - a giant rattle):
	if diaper quest is 1, decide on 0;
	decide on 7.
To decide which number is the initial cringe of (C - a giant rattle):
	decide on 10.

To decide which number is the damage improvement of (W - a giant rattle):
	let X be 0;
	increase X by the magic-modifier of W;
	decide on X.

To uniquely set up (W - a giant rattle):
	do nothing. 

To compute attack of (W - a giant rattle) at (M - a monster):
	say "The [W] rattles as it hits the [M] with a loud smack.".

To compute attack effect of (W - a giant rattle):
	if the raw-magic-modifier of W > -2 and attack-type is 1:
		say "Your [W] glows black for a moment, and loses some of its power!";
		decrease the raw-magic-modifier of W by 1.

Carry out taking a giant rattle:
	if the player is in Woods26, now the noun is cursed.

Report taking a giant rattle:
	if the noun is cursed:
		say "Your grip tightens involuntarily as your fingers close around the handle. [variable custom style]I guess the decision's been made for me then, it's my weapon of choice for now...[roman type][line break]";
		now the noun is worn by the player.

Swords ends here.
