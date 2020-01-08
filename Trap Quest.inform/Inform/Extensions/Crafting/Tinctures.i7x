Tinctures by Crafting begins here.

A tincture is a kind of alchemy product.

Definition: a tincture is drink themed: decide yes.

Figure of tincture is the file "Items/Collectibles/tincture1.png".
To decide which figure-name is the examine-image of (V - a tincture):
	decide on the figure of tincture.


Section 1 Tincture of Strength

A tincture of strength is a kind of tincture. The printed name of tincture of strength is "[TQlink of item described][if item described is blessed]blessed [end if]tincture of strength[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of tincture of strength is "[TQlink of item described][if item described is blessed]blessed [end if]tinctures of strength[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of tincture of strength is "tis". There are 3 tincture of strength.
To say ExamineDesc of (C - a tincture of strength):
	say "A tiny glass vial filled with a small dose of glowing [appearance corresponding to an Magic of 2 in the Table of Drinks] liquid. It looks like it would do something extremely powerful if you drank it, but who knows for how long, and if there are any side effects...".

To BackgroundRender (T - a tincture of strength) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	let A be appearance corresponding to an Magic of 2 in the Table of Drinks;
	draw a rectangle TQcolour of A in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a tincture of strength):
	decide on 1.

[Bonus is the amount of strength to add. Timer is the amount of seconds it lasts for.]
strength-tincture-bonus is a number that varies. strength-tincture-bonus is 0.
strength-tincture-timer is a number that varies. strength-tincture-timer is 0.

Carry out quaffing tincture of strength:
	say "You pull out the tiny stopper and down the glowing liquid.[unless saved-flat-strength > 26]You feel much, much stronger! [one of][line break][variable custom style]Wooow![roman type][line break][or][stopping]Time to go kick some ass![end if]";
	let T be a random number between 10 and 15;
	now strength-tincture-timer is T * 6;
	while saved-flat-strength < 30 and T > 0:
		decrease T by 1;
		increase strength-tincture-bonus by 1;
		now saved-flat-strength is the flat strength of the player;
	if the noun is cursed, now strength-tincture-timer is 7;
	if the noun is blessed, increase strength-tincture-timer by 20.


A time based rule (this is the strength tincture decay rule):
	if strength-tincture-timer > 0:
		decrease strength-tincture-timer by time-seconds;
		if strength-tincture-timer <= 0:
			now strength-tincture-timer is 0;
			if strength-tincture-bonus > 0, say "[bold type]Your magical superhuman strength fades. As the energy disperses from your muscles, you feel your body expand rapidly![line break][variable custom style]Oh no...![roman type]";
			while strength-tincture-bonus > 0:
				let R be a random number between 1 and 5;
				if R is 1 and the player is not top heavy:
					BustUp 1;
				if R is 2 and the player is not bottom heavy:
					HipUp 1;
				if R is 3 and weight gain fetish is 1 and strength-tincture-bonus > 2:
					FatUp 4;
				decrease strength-tincture-bonus by 1.

Section 2 Tincture of Acceleration

A tincture of acceleration is a kind of tincture. The printed name of tincture of acceleration is "[TQlink of item described][if item described is blessed]blessed [end if]tincture of acceleration[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of tincture of acceleration is "[TQlink of item described][if item described is blessed]blessed [end if]tinctures of acceleration[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of tincture of acceleration is "tia". There are 3 tincture of acceleration.
To say ExamineDesc of (C - a tincture of acceleration):
	say "A tiny glass vial filled with a small dose of glowing [appearance corresponding to an Magic of 1 in the Table of Drinks] liquid. It looks like it would do something extremely powerful if you drank it, but who knows for how long, and if there are any side effects...".

To BackgroundRender (T - a tincture of acceleration) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	let A be appearance corresponding to an Magic of 1 in the Table of Drinks;
	draw a rectangle TQcolour of A in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a tincture of acceleration):
	decide on 2.

acceleration-tincture-bonus is a number that varies. strength-tincture-bonus is 0.
acceleration-tincture-timer is a number that varies. strength-tincture-timer is 0.

Carry out quaffing tincture of acceleration:
	say "You pull out the tiny stopper and down the glowing liquid. [unless saved-flat-dexterity > 26 or the noun is cursed]Time seems to noticeably slow down around you, giving you loads of time to react to things. [one of][line break][variable custom style]Wooow![roman type][line break][or][stopping]You feel like running a marathon![end if][line break]Your [BellyDesc] rumbles worryingly...";
	let T be a random number between 10 and 15;
	now acceleration-tincture-timer is T * 6;
	while saved-flat-dexterity < 30 and T > 0:
		decrease T by 1;
		increase acceleration-tincture-bonus by 1;
	if the noun is cursed, now acceleration-tincture-bonus is 0;
	if the noun is blessed, increase acceleration-tincture-timer by 20.


A time based rule (this is the acceleration tincture decay rule):
	if acceleration-tincture-timer > 0:
		decrease acceleration-tincture-timer by time-seconds;
		if acceleration-tincture-timer <= 0:
			now acceleration-tincture-timer is 0;
			if acceleration-tincture-bonus > 0:
				now acceleration-tincture-bonus is 0;
				say "Time speeds back up to its normal speed.";
		otherwise:
			if the pregnancy of the player > 0 and the largeness of belly < 10:
				increase the womb volume of vagina by 1;
			if the stomach of the player > 1 and the thirst of the player < 5:
				stomachdown 1;
				if watersports mechanics is 1, increase the delayed bladder of the player by 1;
			if the lactation rate of the player > 1:
				MilkUp 1;
			if the lactation rate of the player is 1 and a random number between 1 and 2 is 1:
				MilkUp 1;
			if the womb volume of vagina > 1 and the pregnancy of the player is 0 and pregnancy fetish is 1 and acceleration-tincture-timer < 48 and the number of family things > 0:
				say ConceptionFlav;
				now the pregnancy of the player is 1;
				check sudden pregnancy;
			if the player is upright and acceleration-tincture-bonus > 0, increase the fat-burning of the player by 20.


Tinctures ends here.
