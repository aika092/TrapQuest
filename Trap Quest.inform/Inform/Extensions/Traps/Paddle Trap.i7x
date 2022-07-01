Paddle Trap by Traps begins here.

A paddle trap is a kind of trap. There are 10 swing paddle traps. The text-shortcut of paddle trap is "pdl".
To say ExamineDesc of (C - a paddle trap):
	say "A small but heavy wooden paddle with a long plank and hinge that attaches it to the roof.".

Figure of paddle is the file "Env/Dungeon/paddle1.jpg".
Figure of paddle cutscene is the file "Env/Dungeon/paddle2.jpg".

To decide which figure-name is the examine-image of (C - a paddle trap):
	decide on figure of paddle.

To say EnvironmentDesc of (T - a paddle trap):
	say "A wooden spanking paddle hangs down from the ceiling. ".

To say ShortDesc of (T - a paddle trap):
	say "spanking paddle trap".

To trigger (Y - a paddle trap):
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	say "As you are busy with the tank, a wooden paddle swings down from the ceiling! ";
	cutshow figure of paddle cutscene for Y;
	compute strength 3 spanking;
	if spank tattoo is drawable and there is a worn tattoo and the delicateness of the player > 8 and a random number between 1 and 6 is 1:
		summon spank tattoo;
		say "Your skin stings with pain as a 'Spank Me' tattoo is suddenly burned onto your butt!";
	repeat with M running through reactive monsters:
		say PaddleTrapReactFlav of M.

To say PaddleTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.

Paddle Trap ends here.
