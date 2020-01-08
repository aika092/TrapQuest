Hypnotic Suggestion by Every Turn begins here.


[!<suggested:Integer>*

REQUIRES COMMENTING

*!]
suggested is a number that varies. suggested is 0.

[!<suggestionType:Integer>*

REQUIRES COMMENTING

*!]
suggestion-type is a number that varies. suggestion-type is 0.

[!<suggestionSemenTracker>*

REQUIRES COMMENTING

*!]
suggestion-semen-tracker is a number that varies. suggestion-semen-tracker is 0.

[!<suggestionSemenOld:Integer>*

REQUIRES COMMENTING

*!]
suggestion-semen-old is a number that varies. suggestion-semen-old is 0.

[!<suggestionTracking:Integer>*

REQUIRES COMMENTING

*!]
suggestion-tracking is a number that varies. suggestion-tracking is 0.

[!<ComputeSuggestion>+

REQUIRES COMMENTING

+!]
To compute suggestion:
	decrease suggested by 1;
	[here we do whatever we need to determine if we're meeting the suggestions, assuming we didn't build that in elsewhere]
	if suggested < 0 and suggestion-type is not 0 and suggestion-tracking is 0:
		[consequences get decided here]
		say "You suddenly have a splitting headache!";
		if suggestion-type is 1:
			say "It feels like a small portion of your brain is now stuck in a loop of visions of yourself sucking cocks!";
			OralSexAddictUp 1;
		otherwise if suggestion-type is 2:
			say "It feels like a small portion of your brain is now stuck in a loop of visions of yourself taking it in the ass!";
			AnalSexAddictUp 1;
		otherwise if suggestion-type is 3:
			say "It feels like a small portion of your brain is now stuck in a loop of visions of yourself getting fucked!";
			VaginalSexAddictUp 1;
		otherwise if suggestion-type is 4:
			say "It feels like a small portion of your brain is now stuck in a loop of visions of yourself giving titfucks!";
			TitfuckAddictUp 1;
		otherwise:
			say "For some reason you feel very distracted and flirty!";
			Intdown 1;
		[###Selkie: I'd add:
		- one that dropped you to your knees without thinking, - "submit"
		- one that made you strip off all your clothes without thinking, - "stripper"
		- one that made you pull out any bondage gear in your bag of holding and wear them - "slave"
		- one that made you change into more slutty clothes if you have any? - "slutty"
		]
	otherwise if suggestion-tracking is 1:
		[success gets 'rewarded' here]
		say "You feel a sudden sense of relief, as though you had done something very important.";
		now suggestion-type is 0.


The hypno triggers rules is a rulebook.

This is the great ones hypno rule:
	if hypno-trigger is "great one" and player-hypno-great is 1:
		say "Just thinking about the [great one]s makes you feel how powerless you are in comparison to them!";
		humiliate 20.
The great ones hypno rule is listed in the hypno triggers rules.


This is the present-for-oral hypno rule:
	if hypno-trigger is "tasty" and hypno-trigger-tasty is 1 and diaper quest is 0:
		say "[bold type]Having heard the word 'tasty', you find yourself automatically [if face is actually occupied]trying to present[otherwise]presenting[end if] your mouth for use.[roman type][line break]";
		if the player is upright, try silently kneeling;
		let M be a random interested monster in the location of the player;
		if M is nothing:
			now M is a random monster in the location of the player;
			if M is monster, now M is interested;
		if the player is prone:
			if face is actually occupied:
				say "[if the bimbo of the player > 14]Unfortunately[otherwise]Fortunately[end if], your mouth is already occupied.";
			otherwise if M is nothing:
				say "All that happens is that you feel a little silly, since there's nobody here to offer a blowjob to.";
			otherwise:
				try direct-presenting face to M;
				now broken-present-cooldown is 120;
		now another-turn is 1.
The present-for-oral hypno rule is listed in the hypno triggers rules.

This is the eat-all-food hypno rule:
	if hypno-trigger is "tasty" and hypno-trigger-tasty is 1 and diaper quest is 1:
		if the number of held food > 0 and face is not actually occupied and the player is able to eat:
			say "[bold type]Having heard the word 'tasty', you find yourself automatically starting to eat everything you can.[roman type][line break]";
			now auto is 1;
			repeat with F running through held food:
				try TQeating F;
			now auto is 0;
			now another-turn is 1.
The eat-all-food hypno rule is listed in the hypno triggers rules.

This is the autopush hypno rule:
	if hypno-trigger is "maturity" and hypno-trigger-maturity is 1 and asshole is not actually occupied and there are worn soilable knickers:
		say "[bold type]Having heard the word 'maturity', you find you automatically start [if the player is upright]squatting, grunting, [otherwise]grunting [end if]and pushing.[roman type][line break]";
		now voluntarySquatting is 1;
		compute messing;
		now another-turn is 1.
The autopush hypno rule is listed in the hypno triggers rules.

This is the autospread hypno rule:
	if (hypno-trigger is "pussy" or hypno-trigger is "cunt") and hypno-trigger-pussy is 1 and the player is female and vagina is not lewdly exposed:
		say "[bold type]Having heard the word '[hypno-trigger]', you find yourself automatically trying to get your [vagina] on display.[roman type][line break]";
		repeat with C running through worn potentially at least partially vagina covering skirted clothing: [We do skirted first to try and make sure that the order makes sense]
			if C is displacable:
				say "You pull up your [ShortDesc of C]!";
				displace C;
			otherwise:
				say "You try to remove your [ShortDesc of C]!";
				try taking off C;
		repeat with C running through worn potentially at least partially vagina covering trousers: [We do trousers next to try and make sure that the order makes sense]
			if C is displacable:
				say "You pull down your [ShortDesc of C]!";
				displace C;
			otherwise if C is zippable:
				say "You unzip your [ShortDesc of C]!";
				ZipDown C;
			otherwise:
				say "You try to remove your [ShortDesc of C]!";
				try taking off C;
		repeat with C running through worn potentially at least partially vagina covering unskirted clothing: [We do everything else last to try and make sure that the order makes sense]
			if C is displacable:
				say "You pull your [ShortDesc of C] to the side!";
				displace C;
			otherwise if C is zippable:
				say "You unzip your [ShortDesc of C]!";
				ZipDown C;
			otherwise:
				say "You try to remove your [ShortDesc of C]!";
				try taking off C;
		now another-turn is 1.
The autospread hypno rule is listed in the hypno triggers rules.

This is the autopiss hypno rule:
	if hypno-trigger is "please" and hypno-trigger-please is 1:
		if diaper lover > 0:
			if the bladder of the player > 0 and the latex-transformation of the player <= 4:
				say "[bold type]Having heard the word 'please', your bladder immediately lets itself go, completely without your conscious control.[roman type][line break]";
				now delayed urination is 1;
				try urinating;
				if continued urination is 1, compute continued urination; [This line is needed because we've already gone past the check for compulsory actions.]
		otherwise if the player is able to get horny: [Different hypnotic effect from the statue when diapers are disabled]
			say "[bold type]Having heard the word 'please', your head fills with a deep blissful arousal.[roman type][line break]";
			arouse 5000;
			check for arousal change;
			if the player is very horny and the player is able to automatically masturbate:
				now auto is 1;
				try masturbating;
				now auto is 0;
				now another-turn is 1.
The autopiss hypno rule is listed in the hypno triggers rules.

Hypnotic Suggestion ends here.
