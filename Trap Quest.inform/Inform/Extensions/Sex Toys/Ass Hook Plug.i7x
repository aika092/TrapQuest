Ass Hook Plug by Sex Toys begins here.

ass-hook-plug is a tail plug. ass-hook-plug is unique. ass-hook-plug is hemp. The printed name of ass-hook-plug is "[clothing-title-before][PlugSize size of item described] ass hook[clothing-title-after]". The text-shortcut of ass-hook-plug is "ahp". Understand "ass hook", "hook" as ass-hook-plug.

To decide which number is the intelligence-influence of (C - ass-hook-plug):
	if C is cursed, decide on 5;
	decide on 0.

To decide which figure-name is clothing-image of (C - ass-hook-plug):
	decide on Figure of ass hook collar zoom.

To say UniquePlugDesc of (P - ass-hook-plug):
	say "This [PlugSize size of P] metal hook is held in place by a rope that connects it to your collar!".

To say ShortDesc of (P - ass-hook-plug):
	say "ass hook".
To say MediumDesc of (P - ass-hook-plug):
	say "ass hook tied to your collar".

To say ImageDesc of (C - ass-hook-plug):
	maybe-map-display Figure of ass hook collar.

Definition: ass-hook-plug is removable: decide no.
Definition: ass-hook-plug is grey themed: decide yes.

To compute periodic effect of (C - ass-hook-plug):
	if the number of worn submissive collar is 0:
		say "[bold type]Now that it is no longer held in by your collar, [NameDesc of C] [bold type]disappears![roman type][line break]";
		destroy C.

To compute gripping of (I - ass-hook-plug):
	if I is penetrating asshole:
		increase analGripCount by 1;
		if analGripCount > 33 - ((the girth of I - the openness of asshole) * 3):
			say "[BigNameDesc of I] [one of]rubs against the inside of[or]puts pressure on[in random order] your [asshole][if the player is a bit horny], making you even more aroused[end if]!";
			passively stimulate asshole from I;
			if the girth of I > the openness of asshole and diaper quest is 0:
				let open be the openness of asshole;
				say "[if the girth of I < 3]Your [asshole] is so tight[otherwise]It's so big[end if] that you feel yourself getting slowly stretched and ruined.";
				ruin asshole;
				if the openness of asshole > open, say "You feel permanently more loose.";
			now analGripCount is 0.

Ass Hook Plug ends here.
