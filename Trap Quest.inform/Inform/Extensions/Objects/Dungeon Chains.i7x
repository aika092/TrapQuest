Dungeon Chains by Objects begins here.

dungeon chains is an ankle bond. dungeon chains is in School34. dungeon chains is sure. dungeon chains is identified. dungeon chains is stuck.

Definition: dungeon chains is immune to change: decide yes.
Definition: dungeon chains is actually summonable: decide no.

Figure of dungeon chains is the file "Env/School/dungeonchains1.jpg".

To decide which figure-name is the examine-image of (C - dungeon chains):
	decide on figure of dungeon chains.

The printed name of dungeon chains is "[clothing-title-before]dungeon chains[clothing-title-after]". The text-shortcut of dungeon chains is "dnc".

To say ExamineDesc of (C - dungeon chains):
	say "A set of chains and cuffs anchored securely to the dungeon wall[if dungeon chains is worn]. The cuffs are closed around your ankles[end if].".

To compute periodic effect of (C - dungeon chains):
	if the player is upright:
		say "[bold type][BigNameDesc of C][bold type] [one of]are forcing you to squat in a position that's very difficult to hold, making your legs grow tired very rapidly[or]drains more of your energy away[stopping].[roman type][line break]";
		FatigueUp the buckle threshold of the player / 5.

Check taking dungeon chains:
	say "The dungeon chains are attached to the wall." instead.

Dungeon Chains ends here.
