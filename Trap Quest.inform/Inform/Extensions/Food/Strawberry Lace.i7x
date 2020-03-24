Strawberry Lace by Food begins here.

A strawberry lace is a kind of candy. The printed name of strawberry lace is "[TQlink of item described]strawberry lace[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of strawberry lace is "[TQlink of item described]strawberry laces[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of strawberry lace is "sl". There are 2 strawberry laces.

To say ExamineDesc of (C - a strawberry lace):
	say "This long and thin piece of candy consists of a sour lace coated with sweet sugar.".

Figure of strawberry lace is the file "Items/Collectibles/lace1.jpg".

To decide which figure-name is the examine-image of (F - strawberry lace):
	decide on figure of strawberry lace.

strawberry-lace-timer is a number that varies.

To decide which number is the crafting key of (C - a strawberry lace):
	decide on 42.

To say ShortDesc of (C - a strawberry lace):
	say "strawberry lace".

To say DevourFlav of (C - a strawberry lace):
	say "You chew the [C] from one end to the other, swallowing as you go. ".

Carry out TQeating strawberry lace:
	say "[DevourFlav of the noun] As you finish eating it, you shiver and ";
	if a random number between 1 and 4 is 1 and (diaper quest is 0 or diaper messing < 3):
		say "suddenly feel a strike on your [buttcheeks]! Whirling your head around, you see a giant strawberry lace hovering in the air behind you, flicking back and forth as it whips your ass fast and hard. You yelp [unless the player is wrist bound in front]and try to block the strokes with your hands but the magic lace somehow[otherwise]as it[end if] manages to find its mark past your hands each time, with surgical precision! Ten speedy swats later the lace stops whipping, leaving the welts burning. You [if the delicateness of the player < 7]struggle to avoid bursting into tears[otherwise if the delicateness of the player < 12]gently sob to yourself[otherwise]wail like a pathetic little girl[end if] as the stinging feeling grows worse over the next few seconds. The magic lace flies away into the distance.";
		PainUp 1;
		BodyRuin 3;
	otherwise:
		say "find your mind sparkling with brilliance. You feel yourself getting [if strawberry-lace-timer > 0]even [end if]smarter!";
		increase strawberry-lace-timer by default-candy-duration.

a time based rule (this is the strawberry lace decay rule):
	if strawberry-lace-timer > default-candy-duration:
		decrease strawberry-lace-timer by time-seconds;
		if strawberry-lace-timer <= default-candy-duration:
			say "[bold type]The intelligence improving effects of the strawberry lace have decreased.[roman type][line break]";
	otherwise if strawberry-lace-timer > 0:
		decrease strawberry-lace-timer by time-seconds;
		if strawberry-lace-timer <= 0:
			say "[bold type]The intelligence improving effects of the strawberry lace have ended.[roman type][line break]";
			now strawberry-lace-timer is 0.

To compute (M - a robochef) cooking (I - a strawberry lace):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 2 and -2;
		now the fat of D is 2;
		now D is retained by M.

Strawberry Lace ends here.
