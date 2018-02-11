Thighs by Body Parts begins here.

Part 1 - Definitions

[!<Thighs>@

REQUIRES COMMENTING

@inherits <Limb>

@!]
thighs is a limb. thighs is everywhere. The description of thighs is "[if weight gain fetish is 1 or the semen coating of thighs > 0][TotalDesc of thighs][otherwise]There's nothing interesting to note about your thighs.[end if]".

[!<Thighs>@<fleshVolume:Integer>*

REQUIRES COMMENTING

*@!]
thighs has a number called flesh volume. the flesh volume of thighs is 0.

Understand "thigh", "leg", "legs" as thighs.

[!<DecideWhichNumberIsTheWeightOfThighs>+

REQUIRES COMMENTING

+!]
To decide which number is the weight of (XXX - thighs):
	let S be the flesh volume of thighs;
	if the latex-transformation of the player > 1 and  S > 0, now S is 0;
	decide on S.

Definition: thighs (called B) is exposed:
	if there is a worn actually dense leg covering clothing, decide no;
	decide yes.


Part 2 - Description

[!<SayShortDescOfThighs>+

REQUIRES COMMENTING

+!]
To say ShortDesc of (T - thighs):
	say "[if the semen coating of thighs > 6]cum-coated [otherwise if the semen coating of thighs > 0]cum-splashed [end if]thighs".

[!<SayLongDescOfThighs>+

REQUIRES COMMENTING

+!]
To say LongDesc of thighs:
	if weight gain fetish is 1:
		if the flesh volume of thighs > 9:
			say "giant thundering thighs that constantly shudder and wobble as you move around";
		otherwise if the flesh volume of thighs > 7:
			say "very fat thighs that wobble embarrassingly as you move";
		otherwise if the flesh volume of thighs > 5:
			say "relatively stocky thighs[if the flat strength of the player > 10] that hide any muscles you have[end if]";
		otherwise if the flesh volume of thighs > 3:
			say "[if the flat strength of the player > 20]incredibly muscly[otherwise if the flat strength of the player > 15]very muscly[otherwise if the flat strength of the player > 10]well toned[otherwise if the flat strength of the player > 6]slim[otherwise]very small and weak looking[end if] chubby thighs";
		otherwise if the flesh volume of thighs > 1:
			say "[if the flat strength of the player > 20]incredibly muscly[otherwise if the flat strength of the player > 15]very muscly[otherwise if the flat strength of the player > 10]well toned[otherwise if the flat strength of the player > 6]slim[otherwise]very small and weak looking[end if] and slightly chubby thighs";
		otherwise if weight gain fetish is 1:
			say "[if the flat strength of the player > 20]incredibly muscly[otherwise if the flat strength of the player > 15]very muscly[otherwise if the flat strength of the player > 10]well toned[otherwise if the flat strength of the player > 6]slim[otherwise]very small and weak looking[end if] thighs";
	otherwise:
		say "thighs".

[!<SayTotalDescOfThighs>+

REQUIRES COMMENTING

+!]
To say TotalDesc of thighs:
	if weight gain fetish is 1 or the semen coating of thighs > 0, say "Supporting your body you have [LongDesc of thighs][if the semen coating of thighs is 0]. [end if]";
	if the semen coating of thighs > 7:
		say " that are completely caked in [if the semen addiction of the player < 6]nasty, [end if]slimy [semen]. ";
	otherwise if the semen coating of thighs > 4:
		say " that squelch together [if the semen addiction of the player < 6]horribly [end if]as you [if the player is upright]walk[otherwise]crawl[end if]. ";
	otherwise if the semen coating of thighs > 0:
		say " that have [semen] slowly trickling down them as you [if the player is upright]walk[otherwise]crawl[end if]. ".

Part 3 - Modify Thighs Stats


[!<FatThighsUpX>+

REQUIRES COMMENTING

+1]
To FatThighsUp (X - a number):
	while X > 0 and weight gain fetish is 1:
		if the flesh volume of thighs < 10, increase the flesh volume of thighs by 1;
		decrease X by 1;
		if newbie tips is 1 and the flesh volume of thighs > 2, say "[one of][item style]Newbie tip: Your thighs are getting quite thick!  That's making you heavier and therefore you'll tire out faster. However, it is fully reversible!  Lots of things exercise fat away from your thighs, including fighting enemies and drinking milk.[roman type][line break][or][stopping]".

[!<FatThighsDownX>+

REQUIRES COMMENTING

+!]
To FatThighsDown (X - a number):
	while X > 0:
		if the flesh volume of thighs > 0, decrease the flesh volume of thighs by 1;
		decrease X by 1.

Thighs ends here.

