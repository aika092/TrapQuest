Elixirs by Crafting begins here.

An elixir is a kind of alchemy product.  Understand "elixirs" as an elixir.

Section 1 Elixir of Magnetism

An elixir of magnetism is a kind of elixir.  The printed name of elixir of magnetism is "[TQlink of item described]elixir of magnetism[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The printed plural name of elixir of magnetism is "[TQlink of item described]elixirs of magnetism[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of elixir of magnetism is "em".  The description of elixir of magnetism is "A small glass flask filled with a small dose of shimmering purple liquid.  It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".  There are 3 elixir of magnetism.

To decide which number is the alchemy key of (A - an elixir of magnetism):
	decide on 3.

magnetism-elixir-timer is a number that varies.  magnetism-elixir-timer is 0.

Carry out quaffing elixir of magnetism:
	say "You pull out the tiny stopper and down the glowing liquid.  You feel more... present[one of], even though you can't really put a finger on what that means[or][stopping].";
	let R be a random number between 20 and 25;
	if the noun is blessed, increase R by 6;
	now magnetism-elixir-timer is R * 6;
	repeat with M running through alive monsters:
		now the scared of M is 0;
	if the noun is not cursed and the player is in danger:
		repeat with M running through unfriendly interested monsters in the location of the player:
			if M is penetrating a body part or M is grabbing the player:
				say "The [M]'s eyes open wide for a moment, but then it passes.";
			otherwise:
				now the scared of M is magnetism-elixir-timer;
				say "[one of]As if mind controlled, the[or]The[stopping] [M] turns tail and starts fleeing away from you!".


A time based rule (this is the magnetism elixir decay rule):
	if magnetism-elixir-timer > 0:
		decrease magnetism-elixir-timer by time-seconds;
		if magnetism-elixir-timer < 0, now magnetism-elixir-timer is 0.



Section 2 Elixir of Life

An elixir of life is a kind of elixir.  The printed name of elixir of life is "[TQlink of item described]elixir of life[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The printed plural name of elixir of life is "[TQlink of item described]elixirs of life[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of elixir of life is "el".  The description of elixir of life is "A small glass flask filled with a small dose of shimmering green liquid.  It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".  There are 3 elixir of life.

To decide which number is the alchemy key of (A - an elixir of life):
	decide on 4.

[Bonus is the amount of strength to add.  Timer is the amount of seconds it lasts for.]
life-elixir-timer is a number that varies.  life-elixir-timer is 0.

Carry out quaffing elixir of life:
	say "You pull out the tiny stopper and down the glowing liquid.  [if the body soreness of the player > 0 or the soreness of asshole > 0 or the soreness of vagina > 0 and the noun is not cursed]You start to feel... healthier, as if some kind of magic particle is running around your body, healing your wounds.  The particle gets to your belly.  ";
	if the player is male:
		say "[DefaultSexchangeFlav]";
		SexChange the player;
		say "But the elixir hasn't finished yet!  ";
	if the pregnancy of the player is 0, say "Your [BellyDesc] rumbles[if the largeness of belly < 4] and slightly expands[end if].  You feel a small kick coming from within.  [if the children of the player is 0][variable custom style]No way...  [roman type][end if]It looks like you're pregnant[if the children of the player > 0] again[end if]!";
	otherwise say "Your [BellyDesc] rumbles, and energy rushes to your womb.  For a brief moment you can feel your womb perfectly - you can feel exactly where it is, how swollen and expanded it is, and you can feel your baby inside with as if the inside lining of your womb had all the sensitive nerve endings of your hand.  As you [if the player is upright]stand[otherwise]lie[end if] there stunned, the feeling disappears and your [vagina] is left with a dull, throbbing ache as if it can't wait to feel the sensation of being stretched beyond its limits and giving birth[if the children of the player > 0] again[end if].";
	now seconds is 6;
	if the pregnancy of the player > 0:
		increase the pregnancy rate of the player by 1;
	otherwise:
		now the pregnancy of the player is 1;
		let M be a random fairy;
		set up M;	
		now the father is M;
		now M is in Woods10;
		if the semen volume of vagina < 10, now the semen volume of vagina is 1;
	if the noun is not cursed:
		let R be a random number between 20 and 25;
		if the noun is blessed, increase R by 6;
		now life-elixir-timer is R * 6.


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
				AssHeal 1;
			otherwise if the soreness of vagina > 0:
				say "Your [vagina] feels [if the openness of vagina < 6]a bit less sore[otherwise][second custom style]ready for more[roman type][end if]!";
				PussyHeal 1;
			otherwise if the pregnancy of the player > 0:
				say "You feel life force rushing through your body, as if trying to find something to heal.  After rushing through your torso, your [vagina] and your [asshole], it flows through your cervix into your womb.";
				let B be the largeness of belly;
				increase the semen volume of vagina by 1;
				if the largeness of belly > B, say PregGrowth.
	
Section 3 Elixir of Invigoration

An elixir of invigoration is a kind of elixir.  The printed name of elixir of invigoration is "[TQlink of item described]elixir of invigoration[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The printed plural name of elixir of invigoration is "[TQlink of item described]elixirs of invigoration[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of elixir of invigoration is "ei".  The description of elixir of invigoration is "A small glass flask filled with a small dose of shimmering [if the bimbo of the player < 6]creamy[otherwise][second custom style][semen]-like[roman type][end if] liquid.  It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".  There are 3 elixir of invigoration.

To decide which number is the alchemy key of (A - an elixir of invigoration):
	decide on 5.

invigoration-elixir-timer is a number that varies.  invigoration-elixir-timer is 0.

Carry out quaffing elixir of invigoration:
	say "You pull out the small stopper and drink the creamy liquid.  You feel your [fuckholes] pulse gently.";
	let R be a random number between 20 and 25;
	if the noun is blessed, increase R by 6;
	if the noun is cursed, decrease R by 19;
	now invigoration-elixir-timer is R * 6.


A time based rule (this is the invigoration elixir decay rule):
	if invigoration-elixir-timer > 0:
		decrease invigoration-elixir-timer by time-seconds;
		if invigoration-elixir-timer < 0, now invigoration-elixir-timer is 0.



Elixirs ends here.
