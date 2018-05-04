Heart Wand by Equippables begins here.

A heart wand is a kind of equippable. A heart wand is usually slap ready. A heart wand is usually unique. A heart wand is usually metal. There is 1 heart wand. The printed name of heart wand is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]heart wand[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of heart wand is "hw". A heart wand is usually projectile.

Figure of heart wand is the file "Items\Accessories\Equippables\heartwand1.png".

To decide which figure-name is the clothing-image of (W - a heart wand):
	decide on figure of heart wand.

To say ClothingDesc of (W - a heart wand):
	say "A rigid pink wand with a pink heart at the end and white wings underneath. Even slightly flicking it around causes a trail of hearts to follow it. It's pretty silly, but undeniably magical.".

To say ShortDesc of (W - a heart wand):
	say "heart wand".

To decide which number is the initial outrage of (C - a heart wand):
	decide on 3.

To decide which number is the damage improvement of (W - a heart wand):
	let X be 4;
	increase X by the magic-power of the player / 3;
	decide on X.

To compute attack of (W - a heart wand) at (M - a monster):
	say "[one of]You slash at [NameDesc of M] with a blast of gaudy hearts.[or]You strike [NameDesc of M] with magical hearts.[or]You flail at [NameDesc of M] with a vicious arc of pretty hearts.[or]A stream of darling hearts lashes [NameDesc of M].[at random][if a random number between 1 and 30 is 1][line break][variable custom style]  I suppose it could be worse: they could be floating kisses.[roman type][line break][end if]".

Heart Wand ends here.

