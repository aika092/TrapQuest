Digestive Biscuit by Food begins here.

A digestive biscuit is a kind of candy. The printed name of digestive biscuit is "[TQlink of item described]digestive biscuit[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of digestive biscuit is "[TQlink of item described]digestive biscuits[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of digestive biscuit is "db". The description of digestive biscuit is "A small boring digestive biscuit. You don't understand why these are so popular!'". There are 3 digestive biscuits.

Definition: a digestive biscuit (called C) is low tier:
	decide yes.

To say ShortDesc of (C - a digestive biscuit):
	say "digestive biscuit".

To say DevourFlav of (C - a digestive biscuit):
	say "You [if the player is hungry or the fat-weight of the player > 25]devour the entire [C] whole[otherwise]bite off half of the [C] before swallowing it, and then you munch on the other half until it has all gone[end if]. ".

To decide which number is the crafting key of (C - a digestive biscuit):
	decide on 43.

Carry out TQeating digestive biscuit:
	say "[DevourFlav of the noun]";
	if a random number between 1 and 4 > 1:
		say "You don't feel any different.";
	otherwise:
		say "[variable custom style]Oh no...[roman type]  You feel all your energy drain from your muscles, and your body suddenly feels very heavy. You need a rest!";
		now the fatigue of the player is the buckle threshold of the player.

To compute (M - a robochef) cooking (I - a digestive biscuit):
	let D be a random off-stage cookie;
	if D is food:
		now the quality of D is a random number between 1 and -2;
		now the fat of D is 2;
		now D is retained by M.


Digestive Biscuit ends here.

