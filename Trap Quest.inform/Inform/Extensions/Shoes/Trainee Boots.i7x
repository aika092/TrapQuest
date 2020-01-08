Trainee Boots by Shoes begins here.


A trainee thigh highs is a kind of stiletto heels. A trainee thigh highs is usually latex. There is 1 trainee thigh highs. The printed name of trainee thigh highs is usually "[clothing-title-before][heel-height of item described] inch trainee thigh highs[clothing-title-after]". A trainee thigh highs is usually totally-exclusive. The heel-height of a trainee thigh highs is usually 2. A trainee thigh highs is unique. A trainee thigh highs has a number called training-progress. The training-progress of a trainee thigh highs is usually 0. A trainee thigh highs can be magnetized. A trainee thigh highs has a number called train-charge.

To set up magic state of (C - trainee thigh highs):
	do nothing.

Figure of trainee thigh highs is the file "Items/Clothes/Lower/Feet/Boots/thighhighs1.png".

To decide which figure-name is the clothing-image of (C - a trainee thigh highs):
	decide on figure of trainee thigh highs.

To say ClothingDesc of (C - a trainee thigh highs):
	say "These silicon socks fit perfectly to the contours of your legs, metal accents giving the socks a futuristic high-tech appearance[if C is worn]. Your ankle is held up by a metal stiletto, and the way it pinches your thigh makes your butt look big[end if].".

To say UniqueShortDesc of (C - a trainee thigh highs):
	say "trainee thigh high socks".

To decide which number is the perceived-bimbo-influence of (C - a trainee thigh highs):
	decide on 1.
Definition: a trainee thigh highs is transformation-protected: decide yes.
Definition: a trainee thigh highs is whore themed: decide yes.
Definition: a trainee thigh highs is removable if it is not magnetized.

Check taking off trainee thigh highs:
	if the noun is magnetized, say "The edges of your [printed name of the noun] are all but immobile. You[']ll need to find some way of loosening them before you can try getting them off." instead.[TODO: first person with intelligence variance.]

Report wearing trainee thigh highs:
	say "The rim of the socks snap decisively when you finish pulling it on, and you realise you're going to have a lot of trouble getting it off.";
	now the noun is magnetized.

To compute periodic effect of (C - a trainee thigh highs):
	increase the train-charge of C by 1;
	if the train-charge of C > 40:
		now the train-charge of C is 0;
		if the training-progress of C is 5:
			say "Your [printed name of C] emit five synchronised tones, and a tiny needle pierces the sole of your foot as the stockings suddenly loosen and fall away. A weird feeling passes through your whole body.";
			BustUp 1;
			HipUp 1;
			RandomAddictUp 3;
			HeelUp 2;
			if artificial enhancements fetish is 1, SexAddictUp 3;
			now the training-progress of C is 0;
			destroy C;
			ProgressUp senior robobellboy;
		otherwise:[training-progress will sometimes be negative, so the if-statement is important here]
			say "Your [printed name of C] [if the training-progress of C < 1]emit a synchronised tone[otherwise]emit [the training-progress of C + 1] synchronised tones[end if] and [if the player is prone]your ankles are forced forward[otherwise]you lurch forward[end if] as the metal stiletto shoots upward.[line break]";
			increase the heel-height of C by 1;
			increase the training-progress of C by 1.


Trainee Boots ends here.
