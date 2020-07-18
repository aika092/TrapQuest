Laundry Robots by Objects begins here.

[!<laundryRobots:Scenery>*

REQUIRES COMMENTING

*!]
laundry robots is a thing. laundry robots is not portable. laundry robots is in Hotel20. The printed name of laundry robots is "[TQlink of item described]robotic arms[TQxlink of item described][verb-desc of item described]". Understand "robot", "robotic", "metal", "arms", "hands", "room" as laundry robots. laundry robots has a number called charge. The text-shortcut of laundry robots is "rarm".

To say ExamineDesc of (C - laundry robots):
	say "Several extremely agile metal robotic arms with threatening looking grippers at the end. They are constantly zipping about the place with unclear purpose.".

[!<ReportWhenThePlayerIsInHotel20>+

REQUIRES COMMENTING

+!]
Report going when the player is in Hotel20:
	if the player is upright:
		compute LaundryRobots;
	otherwise if the number of worn washable clothing > 0:
		say "Having entered this room on your knees, it would appear that the mechanical arms above you have not detected you.".

[!<ComputeLaundryRobots>+

REQUIRES COMMENTING

+!]
To compute LaundryRobots:
	let C be a random worn washable clothing;
	if there is a worn messed knickers, now C is a random worn knickers;
	if C is clothing, say "As soon as you [if the player is upright]step over the threshold into this room[otherwise]are released[end if], several metal robotic arms shoot at you from every direction! Four robotic hands grab hold of each of your limbs respectively, rendering you immobile. ";
	if C is messed knickers:
		say "You yelp [if the bimbo of the player < 10][one of]in surprise[or]in frustration[stopping][otherwise]quietly[end if] as your entire body is picked up, carried over and dunked into a large hot vat of soapy water. The arms unceremoniously strip you of your [C] as you are repeatedly thrust into and out of the bubbly pool. Finally, you are dropped back down onto the ground, now dripping with water and suds. ";
		repeat with F running through worn fluid vulnerable clothing:
			clean F;
			Drench F;
			if F is knickers, WaterEmpty F;
		say "[one of]You think it's over, but before[or]Before[stopping] letting you go, the robotic arms silently force a new dry [ShortDesc of C] onto your crotch. [line break][variable custom style][if the bimbo of the player < 6 and C is a diaper]Why did they have to put me into another one?! Ugh.[otherwise if the bimbo of the player < 12]Well I'm glad that's over and done with.[otherwise]Thank you for changing me, nice robots![end if][roman type][line break]";
		now the charge of laundry robots is 200;
	otherwise if C is clothing and the charge of laundry robots <= 0:
		say "You watch [if the bimbo of the player < 10][one of]in surprise[or]in frustration[stopping][otherwise]in awe[end if] as your [C] is deftly pulled off you and speedily dunked into a large vat of hot soapy water. ";
		clean C;
		Drench C;
		now C is in the location of the player;
		say "Before you can blink, your [MediumDesc of C] is placed on a small table next to you.[line break][variable custom style][one of]Wow, now that is fast service.[or][if the bimbo of the player < 13]Nice.[otherwise]Thank you nice robots![end if][stopping][roman type][line break]";
		now the charge of laundry robots is 200;
	otherwise:
		say "The robotic arms above you move suddenly as you enter the room, but do not approach you[if the charge of laundry robots > 0]. Maybe they need to recharge[end if].".

[!<ClothingIsWashable>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is washable:
	if C is cursed or C is locked or C is glued, decide no;
	if C is fluid immune, decide no;
	if the coverer of C is clothing, decide no;
	if C is dirty, decide yes;
	decide no.

[!<DiaperIsWashable>+

REQUIRES COMMENTING

+!]
Definition: a diaper is washable: decide no.

Laundry Robots ends here.
