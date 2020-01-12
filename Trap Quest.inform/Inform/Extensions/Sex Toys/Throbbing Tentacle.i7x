Throbbing Tentacle by Sex Toys begins here.

A throbbing-tentacle is a kind of dong. There is 1 unique throbbing-tentacle. A throbbing-tentacle is ass plugging. A throbbing-tentacle is vagina plugging. The size of a throbbing-tentacle is usually 8. Understand "throbbing" as throbbing-tentacle. The printed name of throbbing-tentacle is "[TQlink of item described][item style]The Master[clothing-title-after]". The text-shortcut of throbbing tentacle is "tt". Understand "throbbing", "tentacle", "master" as throbbing-tentacle. A throbbing-tentacle is usually biological.

To say NameDesc of (C - a throbbing-tentacle):
	say "[input-style][FuckerDesc of C][roman type]".
To say BigNameDesc of (C - a throbbing-tentacle):
	say "[input-style][BigFuckerDesc of C][roman type]".
To say FuckerDesc of (C - a throbbing-tentacle):
	say "the Master".
To say BigFuckerDesc of (C - a throbbing-tentacle):
	say "The Master".

To say ClothingDesc of (C - a throbbing-tentacle):
	say "[if C is worn]You can barely see the end of the Master sticking out of you, slowly waving.[otherwise]Your Master, presently no longer in his home. You feel empty without him in your hole.[end if]".

To say ShortDesc of (C - a throbbing-tentacle):
	say "Master".

To compute SelfExamineDesc of (H - a throbbing-tentacle):
	say "The end of your Master barely sticks out of your [if H is penetrating asshole][asshole][otherwise if H is penetrating vagina][vagina][otherwise]tail-bone. Please report this bug[end if].".

Check taking off throbbing-tentacle:
	say "You can feel the Master is comfortable where he is, and have no desire to remove him." instead.

This is the master head exclusivity rule:
	if throbbing-tentacle is worn:
		if summoning is 0 and autowear is false, say "There is no point in equipping the [printed name of wearing-target]. Your head already belongs to The Master.";
		rule fails.
The master head exclusivity rule is listed last in the headgear wearability rules.

Definition: a throbbing-tentacle is removable: decide no.

To decide which number is the raw-masturbation-bonus of (C - a throbbing-tentacle):
	decide on 4.[The best masturbation aid]

To compute climax effect of (C - a throbbing-tentacle):
	now the toy-charge of C is 0;

To compute periodic effect of (P - a throbbing-tentacle):
	increase the toy-charge of P by 1;
	if the toy-charge of P > 30:
		now the toy-charge of P is 0;
		if the player is able to get horny:
			say "The tentacle inside you once again pushes itself to its limits and begins to vibrate. [line break][first custom style]'I will reward you once again, [whore].'[roman type][line break]What little mind you have left is quickly blown aside by the sensations coming from the tentacle! [line break][first custom style]'Come, [slut]. Now.'[roman type][line break]You find yourself gleefully obeying!";
			if the player is male:
				anally orgasm shamefully;
			otherwise:
				vaginally orgasm shamefully;
	if the pregnancy of the player is 1 and P is penetrating vagina and asshole is not actually occupied:
		say "[BigNameDesc of P], sensing your pregnancy, slithers out of your [vagina] and pushes [his of P] way into your [asshole] instead.";
		ruin vagina;
		dislodge P;
		now P is penetrating asshole;
		ruin asshole.

To set up magic state of (P - a throbbing-tentacle):
	do nothing.[Currently redundant, but just in case we end up making a default dong / sex toy rule and forget about this edge case]

To uniquely set up (P - a throbbing-tentacle):
	do nothing.[No enchantments here!]

Throbbing Tentacle ends here.

