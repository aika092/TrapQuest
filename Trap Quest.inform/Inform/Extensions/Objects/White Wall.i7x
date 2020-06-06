White Wall by Objects begins here.

WoodsScenery03 is a thing. WoodsScenery03 is not portable. WoodsScenery03 is in Woods21. The printed name of WoodsScenery03 is "[TQlink of item described]wall statue[TQxlink of item described][verb-desc of item described]". Understand "wall", "statue", "wall statue", "white wall statue", "ladder", "statue ladder", "white wall" as WoodsScenery03. Figure of WoodsScenery03 is the file "Env/Forest/statue3.png". WoodsScenery03 has a number called uses. The uses of WoodsScenery03 is usually 1. The text-shortcut of WoodsScenery03 is "wst".

To decide which figure-name is the examine-image of (C - WoodsScenery03):
	decide on figure of WoodsScenery03.

To say ExamineDesc of (C - WoodsScenery03):
	say "This giant white stone statue is of the bottom half of a human female, up to her waist, as if she is stuck in the wall. A ladder allows you to climb up to her buttocks, where instead of a vagina is a gaping hole that you could fit your head into. You could [bold type]climb[roman type] the ladder to look in the hole if you wanted.".

Definition: WoodsScenery03 is immune to change: decide yes.

The block climbing rule is not listed in the check climbing rulebook.

[!<CheckDrinkingWoodsScenery03>+

REQUIRES COMMENTING

+!]
Check drinking WoodsScenery03:
	try climbing the noun instead.

[!<CheckClimbingSomething>+

REQUIRES COMMENTING

+!]
Check climbing something:
	if the noun is not WoodsScenery03, say "How would that work?" instead;
	if the player is prone, say "You need to be standing up to climb a ladder." instead;
	if the player is ankle bound, say "You can't climb the ladder with your ankles bound." instead;
	if the player is immobile or there is a thing wrangling the player, say "Aren't you a bit busy?" instead;
	if the uses of WoodsScenery03 is 0, say "You've already seen what's through there, no need to look again." instead.

[!<CarryOutClimbingWoodsScenery03>+

REQUIRES COMMENTING

+!]
Carry out climbing WoodsScenery03:
	allocate 6 seconds;
	say "You climb the ladder and put your face through the statue's hole.";
	if the player is getting lucky:
		say "You can't believe what you see - beyond the wall is a beautiful green field meadow, with the sun shining onto a glittering lake. Fluffy rabbits roam the grass and graceful swans drift freely on the lake. You desire for nothing more than to find a way to the other side of the wall. The sight is so uplifting that you feel more wholesome inside.";
		SemenAddictDown 2;
		IntUp 1;
		Dignify 5000;
		say GotLuckyFlav;
	otherwise if diaper quest is 0 and ungape is 0 and a random number between 1 and 2 is 1:
		say "The statue appears to continue on the other side of the wall - you can't see what's inside.[if the openness of asshole < 10][line break]While your head is in the statue's asshole, you feel your own sphincter suddenly stretch![end if]";
		gape asshole times 5;
	otherwise:
		say "The statue appears to continue on the other side of the wall - the belly of the statue is filled with [if diaper quest is 0][semen][otherwise if diaper messing >= 4 and there are worn knickers]food[otherwise]water[end if]![if the largeness of belly < 10][line break]While your head is in there, you feel your own belly suddenly fill from the inside![end if]";
		if diaper quest is 1:
			if diaper messing >= 4 and there are worn knickers:
				increase rectum by 12;
			otherwise:
				increase the water volume of belly by belly limit - the total fill of belly;
		otherwise:
			AssFill 8;
	decrease the uses of WoodsScenery03 by 1.

White Wall ends here.
