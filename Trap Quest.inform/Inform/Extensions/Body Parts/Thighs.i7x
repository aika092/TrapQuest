Thighs by Body Parts begins here.

Part 1 - Definitions

thighs is a limb. thighs is everywhere.
To say FullExamineDesc of (B - thighs):
	say "[if weight gain fetish is 1 or the semen coating of thighs > 0][TotalDesc of thighs][otherwise]There's nothing interesting to note about your thighs.[end if]".

thighs has a number called flesh volume. the flesh volume of thighs is 0.

Understand "thigh", "leg", "legs" as thighs.

To decide which number is the weight of (XXX - thighs):
	let S be the flesh volume of thighs;
	if the latex-transformation of the player > 1 and S > 0, now S is 0;
	decide on S.

To decide which object is the concealer of (T - thighs):
	decide on a random worn leg covering actually dense clothing.

To decide which object is the at least partial concealer of (T - thighs):
	if thighs is listed in the armUses of arms, decide on arms;
	decide on a random worn leg covering not-see-through clothing.

Definition: thighs (called B) is spread:
	if diaper lover <= 0, decide no;
	if there is worn thigh-spreading clothing, decide yes;
	decide no.

Part 2 - Description

To say ShortDesc of (T - thighs):
	say "[if the semen coating of thighs > 6]cum-coated [otherwise if the semen coating of thighs > 0]cum-splashed [end if]thighs".

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

To say TotalDesc of (T - thighs):
	let O be the outrage of T;
	if weight gain fetish is 1 or the semen coating of thighs > 0, say "Supporting your body you have [LongDesc of T][if the semen coating of thighs is 0]. [end if]";
	if the semen coating of thighs > 7:
		say " that are completely caked in [if the semen addiction of the player < 6]nasty, [end if]slimy [semen]. ";
	otherwise if the semen coating of thighs > 4:
		say " that [if the semen addiction of the player < 6]horribly [end if]squelch together with sticky [semen] as you [if the player is upright]walk[otherwise]crawl[end if]. ";
	otherwise if the semen coating of thighs > 0:
		say " that have [semen] slowly trickling down them as you [if the player is upright]walk[otherwise]crawl[end if]. ";
	if T is spread, say "They are forced wide apart thanks to your [ShortDesc of random worn thigh-spreading clothing].";
	if T is exposed:
		say "They are fully exposed[if O >= 14], and look extremely lewd[otherwise if O >= 7], and are making you look like a slut[otherwise if O >= 3], and a little humiliating in their current state[end if].";
	otherwise if T is at least partially exposed:
		say "They are only partially exposed[if T is glazed], which is thankfully making the [semen] on them difficult to spot[end if].";
	otherwise:
		say "They are concealed at the moment[if O >= 14], which is preventing then from looking extremely lewd[otherwise if O >= 7], which is preventing them from appearing nasty to anyone who looks at you[otherwise if O >= 3], which is preventing then from being a little humiliating in their current state[end if].".

Part 3 - Modify Thighs Stats

To FatThighsUp (X - a number):
	while X > 0 and weight gain fetish is 1:
		if the flesh volume of thighs < 10, increase the flesh volume of thighs by 1;
		decrease X by 1;
		if newbie tips is 1 and the flesh volume of thighs > 2, say "[one of][newbie style]Newbie tip: Your thighs are getting quite thick! That's making you heavier and therefore you'll tire out faster. However, it is fully reversible! Lots of things exercise fat away from your thighs, including fighting enemies and drinking milk.[roman type][line break][or][stopping]".

To FatThighsDown (X - a number):
	if heavyweight tattoo is worn and a random number between 0 and X > 0, decrease X by 1;
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
