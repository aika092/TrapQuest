Arms by Body Parts begins here.

Part 1 - Definitions

[!<Arms>@

REQUIRES COMMENTING

@inherits <Limb>

@!]
arms is a limb. arms is everywhere.

To say FullExamineDesc of (B - arms):
	say "[if weight gain fetish is 1][TotalDesc of arms][otherwise if realisticArms is 0 or (entry 1 of the armUses of arms is arms and entry 2 of the armUses of arms is arms)]There's nothing interesting to note about your arms. [end if][if entry 2 of the armUses of arms is not arms]Your left hand is covering [NameDesc of entry 2 of the armUses of arms]. [end if][if entry 1 of the armUses of arms is not arms]Your right hand is covering [NameDesc of entry 1 of the armUses of arms]. [end if][if realisticArms is 1 and the player is not shameless]You can decide what you cover with your arms using the command [bold type][']adjust arms['][roman type]. [end if][if debuginfo > 0 and the number of entries in the armUses of arms > 2]BUG - too many entries in arm positions: [armUses of arms].[otherwise if debugmode > 0](Arm positions list: [armUses of arms])[line break][end if]".

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

To say NameDesc of (C - arms):
	say "your [ShortDesc of arms]".
To say BigNameDesc of (C - arms):
	say "Your [ShortDesc of arms]".

To say ShortDesc of arms:
	say "arm[if entry 1 in the armUses of arms is entry 2 in the armUses of arms]s[end if]".

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
	if heavyweight tattoo is worn and a random number between 0 and X > 0, decrease X by 1;
	while X > 0:
		if the flesh volume of arms > 0, decrease the flesh volume of arms by 1;
		decrease X by 1.

Part 4 - Realistic Hands

arms has a list of objects called temporaryArmUses. [Things the arms have already been used for this turn]
To decide which number is the available arms of the player:
	let A be 2 - the number of entries in the temporaryArmUses of arms;
	if A < 0, decide on 0;
	decide on A.
[This is the arms already in use rule:
	if realisticArms is 1 and the available arms of the player < 2:
		if manual hands attempt is 1, say "Your [if entry 1 in the temporaryArmUses of arms is entry 2 in the temporaryArmUses of arms]arms are[otherwise]arm is[end if] already busy with [NameDesc of entry 1 in the temporaryArmUses of arms]!";
		rule fails.
The arms already in use rule is listed in the hands restriction rules.]
arms has a list of objects called armUses.
arms has a thing called defaultLeftTarget.
arms has a thing called defaultRightTarget.

To decide which number is the wornArmsRequired of (C - a thing):
	decide on 0.
To decide which number is the wornArmsRequired of (C - a clothing):
	if C is wrist locked, decide on 2;
	decide on 0.
To decide which number is the carriedArmsRequired of (C - a thing):
	decide on 0.

To allocate arm use:
	allocate arm use to arms. [The default "we're using our hands but not to interact with anything specific" OR "using our hands on clothing but NOT concealing the clothing"]
To allocate dual arm use:
	allocate dual arm use to arms.
To allocate arm use to (T - a thing):
	if realisticArms is 1:
		add T to the temporaryArmUses of arms;
		update arms.
To allocate dual arm use to (T - a thing):
	if realisticArms is 1:
		add T to the temporaryArmUses of arms;
		add T to the temporaryArmUses of arms;
		update arms.

An all later time based rule (this is the update arms rule):
	if realisticArms is 1:
		follow the update compulsory arm uses rule; [Rebuild the 'temporaryArmUses' list]
		update arms;
	otherwise:
		truncate the armUses of arms to 0 entries;
		truncate the temporaryArmUses of arms to 0 entries;
		while the number of entries in the armUses of arms < 2:
			add arms to the armUses of arms. [It MUST actually have 2 entries or bad things can happen]

To update arms:
	let gSnogged be 0;
	if girlfriend-partner is snogged, now gSnogged is 1;
	let A1 be entry 1 in the armUses of arms;
	let A2 be entry 2 in the armUses of arms;
	truncate the armUses of arms to 0 entries; [Rebuild the arm uses list starting here]
	repeat with TA running through the temporaryArmUses of arms: [Firstly anything compulsory]
		add TA to the armUses of arms;
	follow the update optional arm uses rule;
	truncate armUses of arms to 2 entries; [failsafe]
	while the number of entries in the armUses of arms < 2:
		add arms to the armUses of arms; [It MUST actually have 2 entries or bad things can happen]
	let UAL be 0;
	let UI be 0;
	let UC be 0;
	let A1R be A1;
	let A2R be A2;
	if the player is male: [Redirect vagina to penis]
		if A1R is vagina, now A1R is penis;
		if A2R is vagina, now A2R is penis;
	if A1 is A2:
		if A1 is body part and A1 is not arms and A1 is not entry 1 in the armUses of arms:
			if the number of reactive people > 0 and the lewdly exposed outrage of A1R > 0:
				if A1 is not entry 2 in the armUses of arms, say "[if the number of entries in temporaryArmUses of arms > 0]You have to briefly remove both of your arms from[otherwise]Both of your arms are no longer[end if] covering your [ShortDesc of A1R] in front of the [list of reactive people].";
				otherwise say "[if the number of entries in temporaryArmUses of arms > 0]You have to briefly remove one of your arms from[otherwise]Now only one of your arms is[end if] covering your [ShortDesc of A1R] in front of the [list of reactive people].";
			now UAL is 1;
	otherwise:
		if A1 is body part and A1 is not arms and A1 is not listed in the armUses of arms:
			if the number of reactive people > 0 and the lewdly exposed outrage of A1R > 0, say "[if the number of entries in temporaryArmUses of arms > 0]You have to briefly remove your arm from[otherwise]Your arm is no longer[end if] covering your [ShortDesc of A1R] in front of the [list of reactive people].";
			now UAL is 1;
		if A2 is body part and A2 is not arms and A2 is not listed in the armUses of arms:
			if the number of reactive people > 0 and the lewdly exposed outrage of A2R > 0, say "[if the number of entries in temporaryArmUses of arms > 0]You have to briefly remove your arm from[otherwise]Your arm is no longer[end if] covering your [ShortDesc of A2R] in front of the [list of reactive people].";
			now UAL is 1;
	if A1 is not entry 1 of the armUses of arms:
		if A1 is worn or entry 1 of the armUses of arms is worn, now UC is 1;
		if A1 is carried or entry 1 of the armUses of arms is carried, now UI is 1;
	if A2 is not entry 2 of the armUses of arms:
		if A2 is worn or entry 2 of the armUses of arms is worn, now UC is 1;
		if A2 is carried or entry 2 of the armUses of arms is carried, now UI is 1;
	if UC is 1, force clothing-focus redraw;
	if UI is 1, force inventory-focus redraw;
	if current-predicament is team-girlfriends-predicament and the player is in a predicament room:
		if gSnogged is 0 and girlfriend-partner is snogged:
			say "You push your body up against [NameDesc of team-predicament-partner][']s, pushing your ring gags together and connecting tongues. You move your free hand to the vibrator between [his of team-predicament-partner] legs, and [he of team-predicament-partner] does the same to you. Your crotch vibrators turn off, and your nipple vibrators turn on. It now looks to any on-lookers like two women are engaged in a deep kiss with some light fingering.";
		otherwise if gSnogged is 1 and girlfriend-partner is not snogged:
			say "You pull away from [NameDesc of team-predicament-partner]. Your crotch vibrators turn off, and your nipple vibrators turn on. [bold type]Anyone who looks will now be able to clearly see what's under your skirts.[roman type][line break]";
	if UAL is 1:
		update appearance level;
		repeat with P running through reactive people:
			check disapproval of P.

This is the update compulsory arm uses rule:
	if realisticArms is 1:
		truncate the temporaryArmUses of arms to 0 entries;
		repeat with C running through worn things:
			if the wornArmsRequired of C > 0:
				if debugmode > 0, say "[BigNameDesc of C] requires the use of [if the wornArmsRequired of C is 1]one arm[otherwise]both arms[end if] next turn.";
				repeat with N running from 1 to the wornArmsRequired of C:
					add C to the temporaryArmUses of arms.

This is the update optional arm uses rule:
	if realisticArms is 1:
		if the player is prone:
			let N be 2 - the number of entries in armUses of arms;
			if N > 0:
				say "[one of][bold type]You [if the player is not shameless]can't shield your appearance with your arms because you [end if]have to use [if N is 1]your arm[otherwise]both of your arms[end if] to keep yourself on your hands and knees.[roman type][line break][or][stopping]";
				while the number of entries in the armUses of arms < 2:
					add arms to the armUses of arms;
		repeat with C running through carried things:
			if the carriedArmsRequired of C > 0:
				repeat with N running from 1 to the carriedArmsRequired of C:
					add C to the armUses of arms;
				if the number of entries in the armUses of arms > 2:
					say "You don't have enough arms to carry [NameDesc of C] and are forced to drop [him of C].";
					now C is in the location of the player;
					truncate the armUses of arms to 2 entries;
		if the player is not shameless: [Arms covering body parts]
			repeat with XX running from 1 to 2:
				if the number of entries in armUses of arms < 2:
					if (XX is 1 and defaultLeftTarget of arms is yourself) or (XX is 2 and defaultRightTarget of arms is yourself):
						while the number of entries in the armUses of arms < 2:
							add the throne to the armUses of arms; [There need to be two entries when we check appearance, or we get lots of errors]
						let somethingAdded be 0;
						if diaper quest is 1 and the cringe appearance of the player >= the appearance of the player:
							if appearance-cringe-target is not listed in the armUses of arms:
								add appearance-cringe-target to the armUses of arms;
								now somethingAdded is 1;
							otherwise if second-appearance-cringe-target is not listed in the armUses of arms:
								add second-appearance-cringe-target to the armUses of arms;
								now somethingAdded is 1;
						if somethingAdded is 0:
							if appearance-outrage-target is not listed in the armUses of arms:
								add appearance-outrage-target to the armUses of arms;
							otherwise if second-appearance-outrage-target is not listed in the armUses of arms:
								add second-appearance-outrage-target to the armUses of arms;
						[Redirect penis and asshole to vagina]
						let N be the number of entries in the armUses of arms;
						if penis is listed in the armUses of arms, remove penis from the armUses of arms;
						if asshole is listed in the armUses of arms, remove asshole from the armUses of arms;
						decrease N by the number of entries in the armUses of arms;
						if N > 0:
							repeat with XXX running from 1 to N:
								add vagina to the armUses of arms;
					otherwise if XX is 1 and defaultLeftTarget of arms is not hips:
						add the defaultLeftTarget of arms to the armUses of arms, if absent;
						if the number of entries in the armUses of arms < 2 and the defaultLeftTarget of arms is girlfriend-partner, add girlfriend-partner to the armUses of arms; [we want to add this even if not absent because the player is choosing to have both hands on their partner]
					otherwise if XX is 2 and defaultRightTarget of arms is not hips:
						add the defaultRightTarget of arms to the armUses of arms;
					while the number of entries in the armUses of arms < 2:
						add the throne to the armUses of arms; [There need to be two entries when we check appearance, or we get lots of errors]
					update appearance level;
					if the throne is listed in the armUses of arms, remove the throne from the armUses of arms. [Remove the thing(s) we entered temporarily]

To change default arm positions:
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	if girlfriend-partner is in the location of the player:
		say "How would you like to pose? [line break]";
		set numerical response 1 to "With your free hand covering your most embarrassing body part or worn item";
		set numerical response 2 to "Pressed into [student-name of team-predicament-partner], with your free hand touching [his of team-predicament-partner] crotch";
		set numerical response 0 to "by your side";
		compute multiple choice question;
		if player-numerical-response is 0:
			now the defaultLeftTarget of arms is hips;
		otherwise if player-numerical-response is 1:
			now the defaultLeftTarget of arms is the player;
		otherwise:
			now the defaultLeftTarget of arms is girlfriend-partner;
	otherwise:
		say "Where would you like the default position of your off-hand to be? (This is the one that is most likely to be free) [line break]";
		set numerical response 1 to "covering your most embarrassing body part or worn item [bold type](recommended)[roman type]";
		set numerical response 2 to "covering your crotch";
		set numerical response 3 to "covering your chest";
		set numerical response 4 to "covering your face";
		if enema-backpack is worn, set numerical response 5 to "behind your head";
		if painted-vibrator-hands is worn, set numerical response 5 to "over the missing hand print to the left of your clit";
		set numerical response 0 to "by your side";
		compute multiple choice question;
		if player-numerical-response is 0:
			now the defaultLeftTarget of arms is hips;
		otherwise if player-numerical-response is 1:
			now the defaultLeftTarget of arms is the player;
		otherwise if player-numerical-response is 2:
			now the defaultLeftTarget of arms is vagina;
		otherwise if player-numerical-response is 3:
			now the defaultLeftTarget of arms is breasts;
		otherwise if player-numerical-response is 5:
			if painted-vibrator-hands is worn, now the defaultLeftTarget of arms is painted-vibrator-hands;
			otherwise now the defaultLeftTarget of arms is hair;
		otherwise:
			now the defaultLeftTarget of arms is face;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		say "Where would you like the default position of your predominant hand to be? (This is the one that is more likely to be used to perform tasks and so less likely to be free) [line break]";
		set numerical response 1 to "covering your most embarrassing body part or worn item (after your left hand is in place) [bold type](recommended)[roman type]";
		if player-numerical-response is not 2, set numerical response 2 to "covering your crotch";
		if player-numerical-response is not 3, set numerical response 3 to "covering your chest";
		if player-numerical-response is not 4, set numerical response 4 to "covering your face";
		if enema-backpack is worn, set numerical response 5 to "behind your head";
		if painted-vibrator-hands is worn, set numerical response 5 to "over the missing hand print to the right of your clit";
		set numerical response 0 to "by your side";
		compute multiple choice question;
		if player-numerical-response is 0:
			now the defaultRightTarget of arms is hips;
		otherwise if player-numerical-response is 1:
			now the defaultRightTarget of arms is the player;
		otherwise if player-numerical-response is 2:
			now the defaultRightTarget of arms is vagina;
		otherwise if player-numerical-response is 3:
			now the defaultRightTarget of arms is breasts;
		otherwise if player-numerical-response is 5:
			if painted-vibrator-hands is worn, now the defaultrightTarget of arms is painted-vibrator-hands;
			otherwise now the defaultRightTarget of arms is hair;
		otherwise:
			now the defaultRightTarget of arms is face.

ArmDeciding is an action applying to one thing.
Check ArmDeciding:
	if the player is shameless, say "You are too much of an exhibitionist to cover up your body parts with your arms!" instead.
Carry Out ArmDeciding:
	change default arm positions;
	say "Your arms will adjust (if possible) when time moves forward.".
Understand "adjust [arms]" as ArmDeciding.

Arms ends here.
