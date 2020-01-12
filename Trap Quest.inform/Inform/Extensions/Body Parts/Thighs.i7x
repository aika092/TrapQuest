Thighs by Body Parts begins here.

Part 1 - Definitions

[!<Thighs>@

REQUIRES COMMENTING

@inherits <Limb>

@!]
thighs is a limb. thighs is everywhere.
To say FullExamineDesc of (B - thighs):
	say "[if weight gain fetish is 1 or the semen coating of thighs > 0][TotalDesc of thighs][otherwise]There's nothing interesting to note about your thighs.[end if]".

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

Definition: thighs is exposed if the concealer of thighs is nothing.

To decide which object is the concealer of (T - thighs):
	let C be a random worn leg covering crotch-in-place actually dense clothing;
	if C is clothing, decide on C;
	now C is a random worn knee-length or longer crotch-in-place actually dense clothing;
	if C is clothing, decide on C;
	decide on nothing.

Definition: thighs (called B) is spread:
	if diaper lover <= 0, decide no;
	if there is worn thigh-spreading clothing, decide yes;
	decide no.


Part 2 - Description

[!<SayShortDescOfThighs>+

REQUIRES COMMENTING

+!]
To say ShortDesc of (T - thighs):
	say "[if the semen coating of thighs > 6]cum-coated [otherwise if the semen coating of thighs > 0]cum-splashed [end if]thighs".

[!<SayLongDescOfThighs>+

REQUIRES COMMENTING

+!]
To say LongDesc of (T - thighs):
	if weight gain fetish is 1:
		if the flesh volume of thighs > 9:
			say "giant thundering thighs that constantly shudder and wobble as you move around";
		otherwise if the flesh volume of thighs > 7:
			say "very fat thighs that wobble embarrassingly as you move";
		otherwise if the flesh volume of thighs > 5:
			say "relatively stocky thighs[if saved-flat-strength > 10] that hide any muscles you have[end if]";
		otherwise if the flesh volume of thighs > 3:
			say "[if saved-flat-strength > 20]incredibly muscly[otherwise if saved-flat-strength > 15]very muscly[otherwise if saved-flat-strength > 10]well toned[otherwise if saved-flat-strength > 6]slim[otherwise]very small and weak looking[end if] chubby thighs";
		otherwise if the flesh volume of thighs > 1:
			say "[if saved-flat-strength > 20]incredibly muscly[otherwise if saved-flat-strength > 15]very muscly[otherwise if saved-flat-strength > 10]well toned[otherwise if saved-flat-strength > 6]slim[otherwise]very small and weak looking[end if] and slightly chubby thighs";
		otherwise if weight gain fetish is 1:
			say "[if saved-flat-strength > 20]incredibly muscly[otherwise if saved-flat-strength > 15]very muscly[otherwise if saved-flat-strength > 10]well toned[otherwise if saved-flat-strength > 6]slim[otherwise]very small and weak looking[end if] thighs";
	otherwise:
		say "thighs".

[!<SayTotalDescOfThighs>+

REQUIRES COMMENTING

+!]
To say TotalDesc of (T - thighs):
	if weight gain fetish is 1 or the semen coating of thighs > 0, say "Supporting your body you have [LongDesc of T][if the semen coating of thighs is 0]. [end if]";
	if the semen coating of thighs > 7:
		say " that are completely caked in [if the semen addiction of the player < 6]nasty, [end if]slimy [semen]. ";
	otherwise if the semen coating of thighs > 4:
		say " that squelch together [if the semen addiction of the player < 6]horribly [end if]as you [if the player is upright]walk[otherwise]crawl[end if]. ";
	otherwise if the semen coating of thighs > 0:
		say " that have [semen] slowly trickling down them as you [if the player is upright]walk[otherwise]crawl[end if]. ";
	if T is spread, say "They are forced wide apart thanks to your [ShortDesc of random worn thigh-spreading clothing].".

Part 3 - Modify Thighs Stats


[!<FatThighsUpX>+

REQUIRES COMMENTING

+1]
To FatThighsUp (X - a number):
	while X > 0 and weight gain fetish is 1:
		if the flesh volume of thighs < 10, increase the flesh volume of thighs by 1;
		decrease X by 1;
		if newbie tips is 1 and the flesh volume of thighs > 2, say "[one of][newbie style]Newbie tip: Your thighs are getting quite thick! That's making you heavier and therefore you'll tire out faster. However, it is fully reversible! Lots of things exercise fat away from your thighs, including fighting enemies and drinking milk.[roman type][line break][or][stopping]".

[!<FatThighsDownX>+

REQUIRES COMMENTING

+!]
To FatThighsDown (X - a number):
	while X > 0:
		if the flesh volume of thighs > 0, decrease the flesh volume of thighs by 1;
		decrease X by 1.

Section - Image for graphics window

The text-shortcut of thighs is "thighs".
Figure of CumThighsButton is the file "Special/Buttons/cumthighs.png".

To decide which figure-name is the examine-image of (T - thighs):
	if T is overglazed, decide on Figure of CumThighsButton;
	decide on figure of no-image-yet.

Thighs ends here.

