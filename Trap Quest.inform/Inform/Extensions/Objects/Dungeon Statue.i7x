Dungeon Statue by Objects begins here.

DungeonScenery01 is a thing. DungeonScenery01 is in Dungeon10. DungeonScenery01 is not portable. The printed name of DungeonScenery01 is "[TQlink of item described]statue[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "statue", "man", "penis", "woman", "nipple" as DungeonScenery01. DungeonScenery01 has a number called doses. The doses of DungeonScenery01 is usually 1. Figure of DungeonScenery01 is the file "Env/Dungeon/statue1.png". The text-shortcut of DungeonScenery01 is "sta".
DungeonScenery01b is scenery. DungeonScenery01b is in Dungeon10. The printed name of DungeonScenery01b is "statue". Understand "statues" as DungeonScenery01b.
Figure of DungeonScenery01d is the file "Env/Dungeon/statue4.png".

To decide which figure-name is the examine-image of (C - DungeonScenery01):
	if diaper quest is 0, decide on figure of DungeonScenery01;
	decide on figure of DungeonScenery01d.

To say ExamineDesc of (C - DungeonScenery01):
	if diaper quest is 0:
		say "A statue of a naked man with a ridiculously sized [if the bimbo of the player > 13][line break][second custom style]but yummy looking[roman type][line break][end if][manly-penis]. There seems to be a hollow tube inside the [manly-penis] with an exit at the tip.";
		if newbie tips is 1, say "[one of][newbie style]Newbie tip: This can be sucked, healing the soreness of your orifices but forcing you to drink some semen. It's very useful but if you use it too much you might find yourself with a new oral fixation.[or][stopping]";
	otherwise:
		say "A line of bronze women with their big bare butts pointing towards you. They look weirdly... spankable.";
		if newbie tips is 1, say "[one of][newbie style]Newbie tip: These statues can be spanked, reducing your overall diaper addiction but slightly increasing delicateness in return. If your addiction to diapers gets too high, you can come here to resolve the issue.[or][stopping]".

[To decide which figure-name is the examine-image of (C - DungeonScenery01b):
	if diaper quest is 0, decide on figure of DungeonScenery01;
	decide on figure of no-image-yet.]

To say ExamineDesc of (C - DungeonScenery01b):
	if diaper quest is 0:
		if images visible is 1, display figure of DungeonScenery01;
		say "Your eyes are drawn to a particular statue of one of the naked men with the largest of the already ridiculously sized [if the bimbo of the player > 13][line break][second custom style]but yummy looking[roman type][line break][end if]penises. [one of]On closer inspection you notice a hole at the tip of the [manly-penis] of the statue... there's a hollow tube inside![or]There seems to be a hollow tube inside the [manly-penis] with an exit at the tip.[stopping]";
	otherwise:
		say FullExamineDesc of DungeonScenery01.

Definition: DungeonScenery01 is immune to change: decide yes.

To say unique-verb-desc of (T - a DungeonScenery01):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "":
		if diaper quest is 0, say " [link][bracket]suck[close bracket][as]suck on [text-shortcut of T][end link]";
		otherwise say "[if the raw diaper addiction of the player > 0] [link][bracket]spank[close bracket][as]spank [text-shortcut of T][end link][end if]".

Check drinking DungeonScenery01b:
	say "All of them?" instead.

Check drinking DungeonScenery01:
	if diaper quest is 1, say "How would you drink a statue of a woman's butt?" instead;
	if the player is gagged, say "You're not going to be able to manage that whilst gagged!" instead;
	if the player is upright, say "You would need to be on your knees to manage that." instead.

Carry out drinking DungeonScenery01:
	allocate 6 seconds;
	say "[one of]You put your lips around the statue's penis, and suck. [if the semen taste addiction of the player < 8][line break][first custom style]What the hell am I doing?[roman type][line break]Your thoughts are interrupted by the penis ejaculating [semen] straight down your throat, with quite some force. You cough and splutter![otherwise if the semen taste addiction of the player > 11]The penis ejaculates [semen] straight down your throat, with quite some force. [line break][second custom style]Yippee![roman type][line break][otherwise]The penis ejaculates [semen] straight down your throat, with quite some force. [end if][or]You pretend the stone penis belongs to a real, living stud, and curl your tongue around it while you suck avidly – after all, no one can see what your tongue is doing, right, so what's the harm in making it extra fun by a little imagining? Your finely-tuned BJ skills warn you, and you pull back to ease it out of your throat so you can taste it properly! You thrill as you feel it spurt its [semen]. [if the semen taste addiction of the player > 11]Yummy! You swirl it around for a while, savouring the taste properly, before you reluctantly [otherwise]You [end if]swallow it down.[or]You give the penis another blowjob, and once again it ejaculates [semen] into your mouth. You [if the semen taste addiction of the player > 11]greedily [end if]gulp it down.[stopping][line break]";
	humiliate 175;
	StomachSemenUp 2;
	if the soreness of asshole > 1 or the soreness of vagina > 1:
		say "[if the thirst of the player > 2]You feel less thirsty.[line break][end if][if the semen taste addiction of the player < 8][line break][first custom style]Wow, I feel really refreshed! [one of]I can't believe I just swallowed that though.[or]I came back for more. Am I really turning into a slut?[stopping][otherwise][line break][variable custom style]Wow, I feel ready for more![end if][roman type][line break]";
		heal asshole times 4;
		heal vagina times 4;
	otherwise:
		say "[if the thirst of the player > 2]Except for feeling less thirsty, you[otherwise]You[end if] don't feel any different.[line break][if the semen taste addiction of the player < 8][line break][first custom style]Did anything good happen? [one of]I can't believe I just swallowed that.[or]I came back for more. Am I really turning into a slut?[stopping][otherwise if the semen taste addiction of the player > 11][line break][second custom style]Did anything good happen? Oh well, at least it was yummy.[end if][roman type][line break]";
	let P be a random off-stage cock pacifier;
	if (a random number between 2 and 10) + (a random number between 2 and 10) < the semen taste addiction of the player and P is actually summonable:
		say "As you pull your mouth away from the statue's penis, whilst your mouth is still in its submissive 'O' shape, you feel a new phallic object slip into the vacant space. Even though you can't see anything, you feel the small member as it slides along your tongue, and you can feel that it's definitely shaped like a penis, but it's not quite as hard as an actual manly [manly-penis] would be. Raising your hands to your mouth, you feel a little handle in front of a large flat circular section. It's a pacifier! A [if the bimbo of the player < 8]hopeful[otherwise]half-hearted[end if] tug on the handle [if the bimbo of the player < 8]reveals[otherwise]confirms[end if] what you had already started to suspect - you can't remove it...[line break][variable custom style]Maybe this is the game's way of telling me I'm getting an oral fixation...?[roman type][line break]";
		summon P cursed with quest.

Whacking is an action applying to one thing.
Check whacking:
	if the noun is monster, say "I don't think [he of the noun] would appreciate that." instead;
	unless the noun is DungeonScenery01, say "That wouldn't do anything" instead.
Carry out whacking:
	say "You thwack the butt of one of the ladies[one of] with all your might[or][stopping].[line break][variable custom style]Ow!!![roman type][line break]You feel the spank on your own [buttcheeks]! [if the raw diaper addiction of the player > the raw delicateness of the player]That hurt, but you feel like it has brought you to your senses[otherwise]Nothing else seems to happen[end if].";
	while the raw delicateness of the player < the raw diaper addiction of the player:
		SilentlyDiaperAddictDown 2;
		SilentlyDelicateUp 1.
Understand "spank [something]" as whacking.

Dungeon Statue ends here.
