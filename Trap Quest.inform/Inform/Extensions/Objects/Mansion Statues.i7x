Mansion Statues by Objects begins here.

A mansion statue is a kind of thing. A mansion statue is not portable.
The printed name of mansion statue is "[TQlink of item described]statue[TQxlink of item described][if the charge of item described <= 0] (glowing)[otherwise] (not glowing)[end if][shortcut-desc][verb-desc of item described]".
mansion statue has a number called charge.
The text-shortcut of mansion statue is "sta".

Definition: a mansion statue is immune to change: decide yes.

MansionScenery01 is a mansion statue. MansionScenery01 is in Mansion36. Understand "statue", "woman", "statue's", "back", "butt", "leg", "legs" as MansionScenery01.
Figure of MansionScenery01 is the file "Env/Mansion/statue1.jpg".
To decide which figure-name is the examine-image of (C - MansionScenery01):
	decide on figure of MansionScenery01.

To say ExamineDesc of (C - MansionScenery01):
	say "The torso and lower half of a face-down, ass-up woman has been carved out of a giant block of quartz in the centre of this room. A shining gem-encrusted thong sits between her rock-hard ass-cheeks. You can feel it faintly pulsing with magic energy. You could try to [bold type]touch the statue's back[roman type], [bold type]touch the statue's butt[roman type], or [bold type]touch the statue's legs[roman type].".

Check touching MansionScenery01:
	if the player is at least partially immobile, say "Aren't you a bit busy?" instead;
	if the charge of the noun > 0:
		allocate 2 seconds;
		say "Nothing happens. Maybe the magic needs to recharge." instead;
	if the player's command includes "back":
		say "As your hand touches the statue's back, magic energy ripples through your fingers and into your heart.";
		MagicPowerUp 1;
		MagicPowerRefresh 10;
		let S be a random costable uncastable fetish appropriate magic-spell;
		if S is nothing, let S be a random uncastable fetish appropriate magic-spell;
		if S is magic-spell and the player is getting lucky:
			say "[bold type]New arcane knowledge appears in your mind! You've learned a new spell![NewbieSpellFlav]";
			compute learning of S;
			say GotLuckyFlav;
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise if the player's command includes "butt":
		say "As your hand touches the statue's butt, her thong shines brightly, blinding you! In the next moment, when you can see again, ";
		let K be a random worn knickers;
		if the player is getting lucky:
			let D be a random off-stage plentiful ring;
			if D is ring:
				now D is pure diamond;
				set shortcut of D;
				now D is in the location of the player;
				say "there is a shining diamond ring at your feet. Wow![line break][GotLuckyFlav]";
				compute autotaking D;
			otherwise:
				say "nothing is different. Strange...";
		otherwise if there is worn soiled knickers and the player is not getting unlucky:
			let K be a random worn knickers;
			clean K;
			WaterEmpty K;
			say "your [ShortDesc of K] is completely clean and dry!";
		otherwise if the number of nonstalking wisps is 0 or the player is getting unlucky:
			let D be tongue-panties;
			if diaper quest is 1, now D is the chosen trap diaper;
			if K is not knickers:
				now K is D;
				summon K cursed;
				say "you find that you are wearing a [K]... ";
			otherwise if K is transformable diaper:
				let K2 be the chosen bulkier diaper;
				transform K into K2;
				now K is K2;
			if K is not diaper and K is not tongue-panties and K is transformable:
				silently transform K into D;
				say "you find that your [MediumDesc of K] has been transformed into a [D]... ";
				now K is D;
			if K is not cursed:
				say "your [K] is surrounded by a dark glow! ";
				curse K;
			otherwise:
				say "your [K] is surrounded by a dark glow and turns into a ";
				decrease the raw-magic-modifier of K by 2;
				say "[K]...";
			if K is knickers, compute summoned quest of K;
			say GotUnluckyFlav;
		otherwise:
			deploy a wisp;
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise if the player's command includes "leg" or the player's command includes "legs":
		say "As you touch her leg, you feel a ghostly hand stroking the back of your own thigh. How creepy! And yet it turns you on.";
		passively stimulate thighs from MansionScenery01;
		let E be a random off-stage ectoplasm;
		if E is ectoplasm:
			say "Something slimy starts to trickle down the statue's legs from behind her glittering thong, collecting on the ground where it forms a single sticky wad. It's glowing. Perhaps you can find some use for it?";
			now E is in the location of the player;
			compute autotaking E;
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise:
		say "You should specify if you're touching the statue's [bold type]back[roman type], [bold type]butt[roman type], or [bold type]leg[roman type]." instead.

To decide which number is the stimulation of (T - MansionScenery01) on (F - a body part):
	decide on 5.



MansionScenery02 is a mansion statue. MansionScenery02 is in Mansion38. Understand "statue", "woman", "statue's", "golden", "rope", "ropes", "body", "headband" as MansionScenery02.
Figure of MansionScenery02 is the file "Env/Mansion/statue2.jpg".

To decide which figure-name is the examine-image of (C - MansionScenery02):
	decide on figure of MansionScenery02.

To say ExamineDesc of (C - MansionScenery02):
	let W be witch;
	say "A statue of a [man of W] on [his of W] hands and knees rests upon a stone pedestal in this room. [big he of W] is naked, with beatiful golden ropes binding [his of W] neck to [his of W] wrists, [his of W] thighs to [his of W] calves, and [his of W] hair to [his of W] asshole. [if bondage-stone is in the location of C]A pink diamond ring is on one of [his of W] fingers, and a[otherwise]A[end if] golden headband is fixed to the front of her hair. The headband seems to be pulsing with magic energy. You could try to [bold type]touch the statue's ropes[roman type], [bold type]touch the statue's body[roman type], or [bold type]touch the statue's headband[roman type].";
	if newbie tips is 1, say "[newbie style]This statue lets you remove annoying things - specifically, touching the body lets you remove a wisp, and touching the headband lets you remove your headgear, or perhaps gain a new one. Touch the golden ropes to upgrade your jewellery... Probably.[roman type][line break]";

A time based rule (this is the mansion statue charge decay rule):
	if the charge of MansionScenery01 > 0, decrease the charge of MansionScenery01 by time-seconds;
	if the charge of MansionScenery02 > 0, decrease the charge of MansionScenery02 by time-seconds.

Check touching MansionScenery02:
	if the player is at least partially immobile, say "Aren't you a bit busy?" instead;
	if the charge of the noun > 0:
		allocate 2 seconds;
		say "Nothing happens. Maybe the magic needs to recharge." instead;
	if the player's command includes "ropes":
		say "You touch the statue's ropes. ";
		if the player is getting unlucky:
			if rope harness is unclash summonable:
				unclash class summon rope harness;
				say "It's not only binding your body, but also holding your wrists behind your back!";
				now rope harness is wrist-bound-behind;
				now rope harness is cursed;
				now the quest of rope harness is orgasm-quest;
				say QuestFlav of rope harness;
				say GotUnluckyFlav;
			otherwise if the player is wrist bound:
				say "Nothing seems to happen, other than the strength of the magic fizzling away.";
			otherwise:
				summon pair of wristcuffs locked;
				say "A [pair of wristcuffs] appears around your wrists! [GotUnluckyFlav]";
		otherwise:
			let LJ be the list of worn plentiful accessories;
			if the number of entries in LJ > 0:
				let appropriateAccessory be nothing;
				sort LJ in random order;
				repeat with J running through LJ:
					if appropriateAccessory is nothing and J is not solid gold, now appropriateAccessory is J;
				if appropriateAccessory is a thing:
					say "Your [ShortDesc of appropriateAccessory] turns into a ";
					accessoryUpgrade appropriateAccessory;
					say "[ShortDesc of appropriateAccessory]!";
				otherwise:
					say "Nothing seems to happen, other than the strength of the magic fizzling away.";
			otherwise:
				say "Nothing seems to happen, other than the strength of the magic fizzling away.";
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise if the player's command includes "body":
		say "You touch the statue's body. ";
		if there is a stalking wisp:
			if the player is getting lucky:
				repeat with W running through stalking evil-wisps:
					destroy W;
				say GotLuckyFlav;
			otherwise:
				let W be a random stalking wisp;
				destroy W;
		otherwise:
			say "Nothing seems to happen, other than the strength of the magic fizzling away.";
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise if the player's command includes "headband":
		say "You touch the statue's headband. ";
		let H be a random worn headgear;
		if H is headgear:
			say "[BigNameDesc of H] fizzles from existence!";
			destroy H;
		otherwise:
			let LH be a list of things;
			if diaper quest is 0:
				if gold-tiara is off-stage, add gold-tiara to LH;
				if spiked-tiara is off-stage, add spiked-tiara to LH;
			otherwise:
				if clown mask is off-stage, add clown mask to LH;
				if rubber-baby-bonnet is off-stage, add rubber-baby-bonnet to LH;
			if watersports fetish is 1 and WC hood is off-stage, add WC hood to LH;
			if domino-mask is off-stage, add domino-mask to LH;
			if the number of entries in LH > 0:
				sort LH in random order;
				let H be entry 1 in LH;
				say "A [H] appears on your head!";
				if H is domino-mask, summon H uncursed;
				otherwise summon H cursed;
			otherwise:
				say "Nothing seems to happen, other than the strength of the magic fizzling away.";
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise:
		say "You should specify if you're touching the statue's [bold type]ropes[roman type], [bold type]body[roman type], or [bold type]headband[roman type]." instead.

To decide which number is the stimulation of (T - MansionScenery02) on (F - a body part):
	decide on 5.

Mansion Statues ends here.
