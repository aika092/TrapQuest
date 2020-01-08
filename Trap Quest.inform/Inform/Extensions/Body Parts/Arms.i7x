Arms by Body Parts begins here.

Part 1 - Definitions

[!<Arms>@

REQUIRES COMMENTING

@inherits <Limb>

@!]
arms is a limb. arms is everywhere.


To say FullExamineDesc of (B - arms):
	say "[if weight gain fetish is 1][TotalDesc of arms][otherwise]There's nothing interesting to note about your arms.[end if]".

[!<Arms>@<fatBurning:Integer>*

REQUIRES COMMENTING

*@!]
arms has a number called fat-burning.

[!<Arms>@<fleshVolume:Integer>*

REQUIRES COMMENTING

*@!]
arms has a number called flesh volume. the flesh volume of arms is 0.
Understand "finger", "fingers", "hand", "hands", "arm" as arms.

[!<DecideWhichNumberIsTheWeightOfArms>+

REQUIRES COMMENTING

+!]
To decide which number is the weight of (XXX - arms):
	let S be the flesh volume of arms;
	if the latex-transformation of the player > 1 and S > 0, now S is 0;
	decide on S.

[!<ReportSlapping>+

REQUIRES COMMENTING

+!]
Report slapping:
	compute arm fat burning.

To compute arm fat burning:
	if the flesh volume of arms > 0:
		let F be (200 - (exercise theme bonus * 40)) - (the flesh volume of arms * 10);
		let R be (a random number between 20 and F) + a random number between 20 and F;
		if debuginfo > 0, say "[input-style]Arm weight loss check: arm exercise count ([fat-burning of arms].5) | [R] = 2d[F - 19]+19 <= [F] = 200 - ([flesh volume of arms * 10]) arm fat[roman type][line break]";
		if R <= the fat-burning of arms:
			say "Your recent exercise has burned some fat from your arms!";
			if debuginfo > 0, say "[input-style]Exercise result: arm fatness [flesh volume of arms] -> ";
			FatArmsDown 1;
			if debuginfo > 0, say "[flesh volume of arms][roman type][line break]";
			now the fat-burning of arms is 0.

Part 2 - Description

[!<SayShortDescOfArms>+

REQUIRES COMMENTING

+!]
To say ShortDesc of arms:
	say "arms".

[!<SayTotalDescOfArms>+

REQUIRES COMMENTING

+!]
To say TotalDesc of arms:
	if weight gain fetish is 1 and the latex-transformation of the player < 4:
		say "You have ";
		if the flesh volume of arms > 9:
			say "obese, blubbery arms that constantly shudder and wobble as you move about. ";
		otherwise if the flesh volume of arms > 7:
			say "very fat arms that wobble embarrassingly as you move. ";
		otherwise if the flesh volume of arms > 5:
			say "relatively fat arms[if saved-flat-strength > 10] that hide any muscles you have. [otherwise]. [end if]";
		otherwise if the flesh volume of arms > 3:
			say "[if saved-flat-strength > 20]incredibly muscly[otherwise if saved-flat-strength > 15]very muscly[otherwise if saved-flat-strength > 10]well toned[otherwise if saved-flat-strength > 6]slim[otherwise]very small and weak looking[end if] chubby arms. ";
		otherwise if the flesh volume of arms > 1:
			say "[if saved-flat-strength > 20]incredibly muscly[otherwise if saved-flat-strength > 15]very muscly[otherwise if saved-flat-strength > 10]well toned[otherwise if saved-flat-strength > 6]slim[otherwise]very small and weak looking[end if] and slightly chubby arms. ";
		otherwise:
			say "[if saved-flat-strength > 20]incredibly muscly[otherwise if saved-flat-strength > 15]very muscly[otherwise if saved-flat-strength > 10]well toned[otherwise if saved-flat-strength > 6]slim[otherwise]very small and weak looking[end if] arms. ".

Part 3 - Modify Arms Stats


[!<FatArmsUpX>+

REQUIRES COMMENTING

+!]
To FatArmsUp (X - a number):
	while X > 0 and weight gain fetish is 1:
		if the flesh volume of arms < 10, increase the flesh volume of arms by 1;
		decrease X by 1;
		if newbie tips is 1 and the flesh volume of arms > 2, say "[one of][newbie style]Newbie tip: Your arms are getting a bit chubby! That's making you heavier and therefore you'll tire out faster. However, it is fully reversible! Every time you slap an NPC, you'll exercise your arm muscles a bit, and help you lose that fat.[roman type][line break][or][stopping]".

[!<FatArmsDownX>+

REQUIRES COMMENTING

+!]
To FatArmsDown (X - a number):
	while X > 0:
		if the flesh volume of arms > 0, decrease the flesh volume of arms by 1;
		decrease X by 1.


Arms ends here.
