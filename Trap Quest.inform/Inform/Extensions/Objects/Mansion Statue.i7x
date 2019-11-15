Mansion Statue by Objects begins here.


MansionScenery01 is a thing. MansionScenery01 is in Mansion36. MansionScenery01 is not portable. Understand "statue", "womman", "statue's", "back", "butt", "leg", "legs" as MansionScenery01. Figure of MansionScenery01 is the file "Env/Mansion/statue1.jpg".
The printed name of MansionScenery01 is "[TQlink of item described]statue[TQxlink of item described][shortcut-desc][verb-desc of item described]".
MansionScenery01 has a number called charge.
The text-shortcut of MansionScenery01 is "sta".

To decide which figure-name is the examine-image of (C - MansionScenery01):
	decide on figure of MansionScenery01.

To say ExamineDesc of (C - MansionScenery01):
	say "The torso and lower half of a face-down, ass-up woman has been carved out of a giant block of quartz in the centre of this room. A shining gem-encrusted thong sits between her rock-hard ass-cheeks. You can feel it faintly pulsing with magic energy. You could try to [bold type]touch the statue's back[roman type], [bold type]touch the statue's butt[roman type], or [bold type]touch the statue's legs[roman type].".

A time based rule (this is the mansion statue charge decay rule):
	if the charge of MansionScenery01 > 0, decrease the charge of MansionScenery01 by time-seconds.

Check touching MansionScenery01:
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the charge of the noun > 0:
		allocate 2 seconds;
		say "Nothing happens. Maybe the magic needs to recharge." instead;
	if the player's command includes "back":
		say "As your hand touches the statue's back, magic energy ripples through your fingers and into your heart. Wow, you feel more magical!";
		MagicPowerUp 1;
		now the charge of the noun is 450;
		allocate 2 seconds instead;
	otherwise if the player's command includes "butt":
		say "As your hand touches the statue's butt, her thong shines brightly, blinding you! In the next moment, when you can see again, ";
		let K be a random worn knickers;
		if a random number between 1 and 3 is 1:
			let D be a random off-stage ring;
			if D is ring:
				now D is pure diamond;
				set shortcut of D;
				now D is in the location of the player;
				say "there is a shining diamond ring at your feet. Wow!";
				compute autotaking D;
			otherwise:
				say "nothing is different. Strange...";
		otherwise:
			let D be tongue-panties;
			if diaper quest is 1, now D is a random eligible diaper;
			if K is not knickers:
				now K is D;
				summon K;
				say "you find that you are wearing a [K]... ";
			if K is not diaper and K is not tongue-panties and K is transformable:
				silently transform K into D;
				say "you find that your [MediumDesc of K] has been transformed into a [D]... ";
				now K is D;
			if K is not cursed:
				say "your [K] is surrounded by a dark glow! ";
				curse K;
			otherwise:
				say "your [K] is surrounded by a dark glow and turn into ";
				decrease the raw-magic-modifier of K by 2;
				say "[K]...";
		compute summoned quest of K;
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

Mansion Statue ends here.

