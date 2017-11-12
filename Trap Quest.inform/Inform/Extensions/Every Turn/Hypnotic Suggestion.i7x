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
	otherwise if suggestion-tracking is 1:
		[success gets 'rewarded' here]
		say "You feel a sudden sense of relief, as though you had done something very important.";
		now suggestion-type is 0.


Hypnotic Suggestion ends here.
