Elixirs by Crafting begins here.

An elixir is a kind of alchemy product. Understand "elixirs" as an elixir.

Definition: an elixir is drink themed: decide yes.

Figure of elixir is the file "Items/Collectibles/elixir1.png".
To decide which figure-name is the examine-image of (V - an elixir):
	decide on the figure of elixir.


Section 1 Elixir of Magnetism

An elixir of magnetism is a kind of elixir. The printed name of elixir of magnetism is "[TQlink of item described]elixir of magnetism[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of elixir of magnetism is "[TQlink of item described]elixirs of magnetism[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of elixir of magnetism is "em". There are 3 elixir of magnetism.

To say ExamineDesc of (B - an elixir of magnetism):
	say "A small glass flask filled with a small dose of shimmering purple liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - an elixir of magnetism) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of violet in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - an elixir of magnetism):
	decide on 3.

magnetism-elixir-timer is a number that varies. magnetism-elixir-timer is 0.

Carry out quaffing elixir of magnetism:
	say "You pull out the tiny stopper and down the glowing liquid. You feel more... present[one of], even though you can't really put a finger on what that means[or][stopping].";
	let R be a random number between 20 and 25;
	if the noun is blessed, increase R by 6;
	now magnetism-elixir-timer is R * 6;
	repeat with M running through alive monsters:
		now the scared of M is 0;
	if the noun is not cursed and the player is in danger:
		repeat with M running through unfriendly interested monsters in the location of the player:
			if M is penetrating a body part or M is grabbing the player:
				say "[BigNameDesc of M]'s eyes open wide for a moment, but then it passes.";
			otherwise:
				now the scared of M is magnetism-elixir-timer;
				say "[one of]As if mind controlled, the[or]The[stopping] [M] turns tail and starts fleeing away from you!".


A time based rule (this is the magnetism elixir decay rule):
	if magnetism-elixir-timer > 0:
		decrease magnetism-elixir-timer by time-seconds;
		if magnetism-elixir-timer < 0, now magnetism-elixir-timer is 0.



Section 2 Elixir of Life

An elixir of life is a kind of elixir. The printed name of elixir of life is "[TQlink of item described]elixir of life[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of elixir of life is "[TQlink of item described]elixirs of life[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of elixir of life is "el".  There are 3 elixir of life.

To say ExamineDesc of (B - an elixir of life):
	say "A small glass flask filled with a small dose of shimmering green liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - an elixir of life) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of green in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - an elixir of life):
	decide on 4.

[Bonus is the amount of strength to add. Timer is the amount of seconds it lasts for.]
life-elixir-timer is a number that varies. life-elixir-timer is 0.

Carry out quaffing elixir of life:
	say "You pull out the tiny stopper and down the glowing liquid. [if the body soreness of the player > 0 or the soreness of asshole > 0 or the soreness of vagina > 0 and the noun is not cursed]You start to feel... healthier, as if some kind of magic particle is running around your body, healing your wounds. The particle gets to your belly. ";
	if the player is male:
		say DefaultSexchangeFlav;
		SexChange the player;
		say "But the elixir hasn't finished yet!  ";
	if the pregnancy of the player is 0, say "Your [BellyDesc] rumbles[if the largeness of belly < 4] and slightly expands[end if]. You feel a small kick coming from within. [if the children of the player is 0][line break][variable custom style]No way... [roman type][line break][end if]It looks like you're pregnant[if the children of the player > 0] again[end if]!";
	otherwise say "Your [BellyDesc] rumbles, and energy rushes to your womb. For a brief moment you can feel your womb perfectly - you can feel exactly where it is, how swollen and expanded it is, and you can feel your baby inside with as if the inside lining of your womb had all the sensitive nerve endings of your hand. As you [if the player is upright]stand[otherwise]lie[end if] there stunned, the feeling disappears and your [vagina] is left with a dull, throbbing ache as if it can't wait to feel the sensation of being stretched beyond its limits and giving birth[if the children of the player > 0] again[end if].";
	allocate 6 seconds;
	if the pregnancy of the player > 0:
		increase the pregnancy rate of the player by 1;
	otherwise:
		now the pregnancy of the player is 1;
		let M be a random fairy;
		set up M;
		now the father is M;
		now M is in Woods10;
		if the womb volume of vagina < 10, now the womb volume of vagina is 1;
		check sudden pregnancy;
	if the noun is not cursed:
		let R be a random number between 20 and 25;
		if the noun is blessed, increase R by 20;
		now life-elixir-timer is R * 20.


A time based rule (this is the life elixir decay rule):
	if life-elixir-timer > 0:
		decrease life-elixir-timer by time-seconds;
		if life-elixir-timer < 0, now life-elixir-timer is 0;
		if the remainder after dividing time-earnings by 12 < time-seconds:
			if the body soreness of the player > the soreness of asshole:
				say "Your body feels slightly less sore!";
				BodyHeal 1;
			otherwise if the soreness of asshole > the soreness of vagina:
				say "Your [asshole] feels [if the openness of asshole < 6]a bit less sore[otherwise][second custom style]ready for more[roman type][end if]!";
				heal asshole times 1;
			otherwise if the soreness of vagina > 0:
				say "Your [vagina] feels [if the openness of vagina < 6]a bit less sore[otherwise][second custom style]ready for more[roman type][end if]!";
				heal vagina times 1;
			otherwise if the pregnancy of the player > 0:
				say "You feel life force rushing through your body, as if trying to find something to heal. After rushing through your torso, your [vagina] and your [asshole], it flows through your cervix into your womb.";
				let B be the largeness of belly;
				unless the womb volume of vagina is 30, increase the womb volume of vagina by 1;
				if the largeness of belly > B, say PregGrowth.

Section 3 Elixir of Invigoration

An elixir of invigoration is a kind of elixir. The printed name of elixir of invigoration is "[TQlink of item described]elixir of invigoration[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of elixir of invigoration is "[TQlink of item described]elixirs of invigoration[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of elixir of invigoration is "ei". There are 3 elixir of invigoration.

To say ExamineDesc of (B - an elixir of invigoration):
	say "A small glass flask filled with a small dose of shimmering [if the bimbo of the player < 6]creamy[otherwise][second custom style][semen]-like[roman type][end if] liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - an elixir of invigoration) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of creamy in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - an elixir of invigoration):
	decide on 5.

invigoration-elixir-timer is a number that varies. invigoration-elixir-timer is 0.

Carry out quaffing elixir of invigoration:
	say "You pull out the small stopper and drink the creamy liquid. You feel your [fuckholes] pulse gently.";
	let R be a random number between 20 and 25;
	if the noun is blessed, increase R by 6;
	if the noun is cursed, decrease R by 19;
	now invigoration-elixir-timer is R * 6.


A time based rule (this is the invigoration elixir decay rule):
	if invigoration-elixir-timer > 0:
		decrease invigoration-elixir-timer by time-seconds;
		if invigoration-elixir-timer < 0, now invigoration-elixir-timer is 0.

[Section 4 Elixir of Siphoning

A elixir of siphoning is a kind of elixir. The printed name of elixir of siphoning is "[TQlink of item described]elixir of siphoning[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of elixir of siphoning is "[TQlink of item described]elixirs of siphoning[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of elixir of siphoning is "esp". There are 2 elixir of siphoning.

To say ExamineDesc of (B - a elixir of siphoning):
	say "A round clear hip flask filled with a dose of shimmering red liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - a elixir of siphoning) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of red in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a elixir of siphoning):
	decide on 34.

siphoning-elixir-timer is a number that varies. siphoning-elixir-timer is usually 0.
siphoning-elixir-charge is a number that varies. siphoning-elixir-charge is usually 0.

Carry out quaffing elixir of siphoning:
	say "You pull out the small stopper and drink the shimmering liquid. You feel... hungry. You're not sure what that means";
	let R be a random number between 20 and 25;
	if the noun is blessed, now siphoning-elixir-charge is 100;
	if the noun is cursed, now siphoning-elixir-charge is -1;
	if the noun is not blessed and the noun is not cursed, now siphoning-elixir-charge is 1;
	now siphoning-elixir-timer is R.

A time based rule (this is the siphoning elixir decay rule):
	if siphoning-elixir-timer > 0:
		decrease siphoning-elixir-timer by time-seconds;
		if siphoning-elixir-timer < 0:
			say "You feel a wave of pleasure as your stored energy is fully absorbed into your body.";
			if siphoning-elixir-charge > 100:
				decrease siphoning-elixir-charge by 100;
				let X be siphoning-elixir-charge;
				if the player is female or the size of penis is 10:
					if the virgin of the player is 1 and the player is not originally female and sex-changed < 2 and the player is female:[if you haven't seen your real body since changing into a woman, AND you're a virgin, then you can change back]
						say "Suddenly you feel your insides behind your crotch twisting and turning and rearranging themselves, and you yelp in surprise as you realize your [vagina] has been replaced by your original [player-penis]!";
						ReverseSexChange the player;
					otherwise:
						say "You feel smarter!";
						IntUp X / 2;
				otherwise:
					say "Your [player-penis] grows!";
					PenisUp X / 2;
				say "You feel stronger!";
				StrengthUp X / 2;
			otherwise if siphoning-elixir-charge > 0:
				let X be siphoning-elixir-charge;
				if the player is female or the size of penis is 10:
					say "You feel smarter!";
					IntUp X / 3;
				otherwise:
					say "Your [player-penis] grows!";
					PenisUp X / 3;
				say "You feel stronger!";
				StrengthUp X / 3;
			otherwise:
				let X be siphoning-elixir-charge * -1;
				if the size of penis > 0:
					say "Your [player-penis] shrinks!";
					PenisDown (X / 2) + 1;
				otherwise:
					say "You feel dumber.";
					IntDown (X / 2) + 1;
				say "You feel weaker.";
				StrengthDown X / 2;
			say "You feel like your magical power has increased.";
			MagicPowerUp (X / 2) + 1;[you always get a little bit of power out of it]
			now siphoning-elixir-charge is 0;
			now siphoning-elixir-timer is 0.]

Elixirs ends here.

