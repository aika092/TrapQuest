Heart Wand by Equippables begins here.

A heart wand is a kind of vibe-wand. A heart wand is usually unique. A heart wand is womanly. A heart wand is usually metal. There is 1 heart wand. The printed name of heart wand is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]heart wand[clothing-title-after]". The text-shortcut of heart wand is "hw".

A heart wand has a number called disappearTimer.

Figure of heart wand is the file "Items/Accessories/Equippables/heartwand1.png".

To decide which figure-name is the clothing-image of (W - a heart wand):
	decide on figure of heart wand.

To say ClothingDesc of (W - a heart wand):
	say "A pink wand vibrator with a pink heart at the end and white wings underneath. Even slightly flicking it around causes a trail of hearts to follow it. It's pretty silly, but undeniably magical. You sense that [bold type]it doesn't cost you any of your magic power to use this wand.[roman type][line break]".

To say ShortDesc of (W - a heart wand):
	say "heart wand".

To decide which number is the initial outrage of (C - a heart wand):
	decide on 2.

To decide which number is the raw-masturbation-bonus of (C - a heart wand):
	let X be 0;
	increase X by the square root of the magic power of the player;
	decide on X.

An all later time based rule (this is the heart wand disappear rule):
	let C be a random worn heart wand;
	if C is heart wand:
		increase the disappearTimer of C by 1;
		if the disappearTimer of C >= a random number between 20 and 40 and the player is not in danger:
			now the disappearTimer of C is 0;
			if C is held or C is in the location of the player, say "[bold type][BigNameDesc of C] [bold type]fizzles into nothingness.[roman type][line break]You'll have to summon it if you want it again.";
			only destroy C.

To compute spell consequences of (Z - a heart wand):
	do nothing.

To say magicHearts:
	let M be the magic power of the player;
	if M < 1, now M is 1;
	now M is (M * 3) - a random number between 0 and 2;
	say "[if M is 1]a single[otherwise][M][end if] [if the magic power of the player > 5][one of]blindingly bright[or]giant[or]powerfully radiant[at random][otherwise if the magic power of the player > 0][one of]gaudy[or]magical[or]pretty[or]darling[at random][otherwise][one of]pale[or]weak[or]grey[at random][end if] heart[if M > 1]s[end if]".

To compute attack of (W - a heart wand) at (M - a monster):
	say "[one of]You slash at [NameDesc of M] with a blast of [magicHearts].[or]You strike [NameDesc of M] with [magicHearts].[or]You flail at [NameDesc of M] with a vicious arc of [magicHearts].[or]A stream of [magicHearts] lashes [NameDesc of M].[at random][if the player is not a pervert][line break][one of][variable custom style]I suppose it could be worse: they could be floating kisses.[roman type][line break][or][stopping][end if]".

Definition: a heart wand is heart themed: decide yes.
Definition: a heart wand is magic themed: decide yes.
Definition: a heart wand is pink themed: decide yes.

Heart Wand ends here.
