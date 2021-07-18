Laundry Robots by Objects begins here.

laundry robots is a thing. laundry robots is not portable. laundry robots is in Hotel20. The printed name of laundry robots is "[TQlink of item described]robotic arms[TQxlink of item described][verb-desc of item described]". Understand "robot", "robotic", "metal", "arms", "hands", "room" as laundry robots. laundry robots has a number called charge. The text-shortcut of laundry robots is "rarm".

To say ExamineDesc of (C - laundry robots):
	say "Several extremely agile metal robotic arms with threatening looking grippers at the end. They are constantly zipping about the place with unclear purpose.".

Report going when the player is in Hotel20:
	if the player is upright:
		compute LaundryRobots;
	otherwise if the number of worn washable clothing > 0:
		say "Having entered this room on your knees, it would appear that the mechanical arms above you have not detected you.".

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
		say "[one of]You think it's over, but before[or]Before[stopping] letting you go, the robotic arms silently force a new dry [ShortDesc of C] onto your crotch.[line break][variable custom style][if the bimbo of the player < 6 and C is a diaper]Why did they have to put me into another one?! Ugh.[otherwise if the bimbo of the player < 12]Well I'm glad that's over and done with.[otherwise]Thank you for changing me, nice robots![end if][roman type][line break]";
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

Definition: a clothing (called C) is washable:
	if C is cursed or C is locked or C is glued, decide no;
	if C is fluid immune, decide no;
	if the coverer of C is clothing, decide no;
	if C is dirty, decide yes;
	decide no.

Definition: a diaper is washable: decide no.

robo vacuum cleaner is a thing. robo vacuum cleaner is not portable. The printed name of robo vacuum cleaner is "[TQlink of item described]robo vacuum cleaner[TQxlink of item described][verb-desc of item described]". The text-shortcut of robo vacuum cleaner is "rvc".
robo vacuum cleaner has a number called patrol. the patrol of robo vacuum cleaner is 1.
robo vacuum cleaner has a number called puddle-sucks.
robo vacuum cleaner is in Hotel20.
A diaper quest fix rule:
	destroy robo vacuum cleaner.

Figure of vacuum cleaner is the file "Env/Hotel/vacuum1.jpg".
Figure of vacuum cleaner male is the file "Env/Hotel/vacuum2.jpg".
Figure of vacuum cleaner female is the file "Env/Hotel/vacuum3.jpg".

To decide which figure-name is the examine-image of (C - robo vacuum cleaner):
	if C is penetrating a fuckhole:
		if the player is possessing a penis, decide on figure of vacuum cleaner male;
		otherwise decide on figure of vacuum cleaner female;
	otherwise:
		decide on figure of vacuum cleaner.

To decide which number is the girth of robo vacuum cleaner: decide on 2.

To say ExamineDesc of (C - robo vacuum cleaner):
	say "A very large robotic vacuum cleaner, with diameter similar to that of a coffee table. At it centre, a dildo on a long vertical pole is secured to the top. Towards the front, a long clear plastic tube emerges from the exhaust port. It would appear that whatever liquids the vacuum cleaner mops and sucks up will be delivered out via this tube[if C is penetrating face], which of course currently has its other end in your mouth[end if].".

A later time based rule (this is the robo vacuum cleaner rule):
	if robo vacuum cleaner is in the location of the player:
		let fluidRemaining be the total puddle of (the location of robo vacuum cleaner);
		if the player is an april 2021 top donator and black hood is worn and black hood is not blessed and the player is upright and robo vacuum cleaner is not penetrating a fuckhole:
			say "[BigNameDesc of robo vacuum cleaner] suddenly zips over to where you're standing!";
			let F be vagina;
			if the player is possessing a penis or the player is not possessing a vagina, now F is asshole;
			repeat with C running through worn removable knickers:
				WardrobeVanish C;
			repeat with C running through pussy covering removable clothing:
				WardrobeVanish C;
			repeat with C running through things penetrating F:
				if C is removable clothing, WardrobeVanish C;
			repeat with C running through worn removable shoes:
				if C is not heels, WardrobeVanish C;
			if there is pussy covering clothing or F is actually occupied or (there is worn unremovable shoes and the number of worn heels is 0):
				say "But then it suddenly stops, seeming to realise it is unable to do what it was intending to. That's... probably a good thing.";
			otherwise:
				PinkWardrobeUnclash skirted-maid-corset;
				class summon skirted-maid-corset;
				if the number of worn heels is 0, class summon pink girly bow court heels;
				now robo vacuum cleaner is penetrating F;
				say "Before you know it, the robot has zipped under your feet and extended its vertical pole, impaling your [variable F]! Your [MediumDesc of random worn heels] prevent you from being able to jump, and the long dildo-on-a-pole prevents you from bending your knees, completely trapping you with a single metal rod!!! Wherever the robot goes, it's going to be taking you with it from now on!";
				ruin F;
				now the puddle-sucks of robo vacuum cleaner is 0;
		otherwise if fluidRemaining > 0:
			let collecting be nothing;
			say "[BigNameDesc of robo vacuum cleaner] hums loudly as it hovers over the puddle of [if the semen-puddle of (the location of robo vacuum cleaner) > 0][semen] [end if][if the semen-puddle of (the location of robo vacuum cleaner) > 0 and (the urine-puddle of (the location of robo vacuum cleaner) > 0 or the milk-puddle of (the location of robo vacuum cleaner) > 0)]and [end if][if the urine-puddle of (the location of robo vacuum cleaner) > 0][urine] [end if][if the urine-puddle of (the location of robo vacuum cleaner) > 0 and the milk-puddle of (the location of robo vacuum cleaner) > 0]and [end if][if the milk-puddle of (the location of robo vacuum cleaner) > 0][milk] [end if]in this room, sucking [if fluidRemaining > 6]some[otherwise]all[end if] of it up into the clear tube.";
			if robo vacuum cleaner is not penetrating face or black hood is not worn or black hood is blessed:
				reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
				if robo vacuum cleaner is penetrating face, set numerical response 0 to "point the other end of the tube to the ground";
				otherwise set numerical response 0 to "leave the tube alone";
				if face is not actually occupied, set numerical response 1 to "put the other end of the tube in your mouth";
				if robo vacuum cleaner is penetrating face, set numerical response 1 to "keep the other end of the tube in your mouth";
				let LV be a list of things;
				repeat with V running through carried open topped vessels:
					add V to LV;
				truncate LV to 8 entries;
				repeat with V running through LV:
					set next numerical response to "direct the tube into the [ShortDesc of V][if the doses of V > 0] (You'll lose its current contents of [PotionType of V])[end if]";
				compute multiple choice question;
				if player-numerical-response is 0:
					now robo vacuum cleaner is not penetrating face;
				otherwise if the printed name of the chosen numerical response matches the text "other end of the tube in your mouth":
					if robo vacuum cleaner is not penetrating face, say "You push the other end of the tube past your [LipDesc], ready to catch the liquid in your mouth[if black hood is worn and black hood is not blessed]. As soon as it's inside, you feel it sealing itself into place against the ring gag of your [black hood] - it won't let you remove it![otherwise].[end if]";
					now robo vacuum cleaner is penetrating face;
				otherwise:
					let LN be player-numerical-response;
					if the printed name of numerical-response-1 matches the text "other end of the tube in your mouth", decrease LN by 1;
					now collecting is entry LN in LV;
			if robo vacuum cleaner is penetrating face, now collecting is face;
			if collecting is a thing:
				if fluidRemaining > 6, now fluidRemaining is 6;
				let S be 0;
				let U be 0;
				let M be 0;
				while fluidRemaining > 0:
					if the semen-puddle of (the location of robo vacuum cleaner) > 0:
						increase S by 1;
						decrease the semen-puddle of (the location of robo vacuum cleaner) by 1;
						decrease fluidRemaining by 1;
					if the urine-puddle of (the location of robo vacuum cleaner) > 0:
						increase U by 1;
						decrease the urine-puddle of (the location of robo vacuum cleaner) by 1;
						decrease fluidRemaining by 1;
					if the milk-puddle of (the location of robo vacuum cleaner) > 0:
						increase M by 1;
						decrease the milk-puddle of (the location of robo vacuum cleaner) by 1;
						decrease fluidRemaining by 1;
				let L be water;
				if U > 0:
					if S > 0 or M > 0, now L is murkwater;
					otherwise now L is urine;
				otherwise if M > 0:
					if S > 0, now L is murkwater;
					otherwise now L is milk;
				otherwise:
					now L is semen;
				if collecting is face:
					say "The tube delivers the [variable L] directly into your mouth!";
					if M > 0, FaceFill milk by M;
					if U > 0, FaceFill urine by U;
					if S > 0, FaceFill semen by S;
					increase puddle-sucks of robo vacuum cleaner by 1;
				otherwise if collecting is bottle:
					if the doses of collecting > 0, say "You dump the [PotionType of collecting] out onto the floor. ";
					dump collecting;
					let SUM be S + U + M;
					let SUM2 be (SUM + 1) / 2;
					let SPILL be SUM2 - the max-doses of collecting;
					say "[BigNameDesc of collecting] is filled up with [variable L] from the tube!";
					if SPILL > 0, say "It overflows, and some of the [variable L] flows back down into the puddle!";
					if L is semen, now the fill-colour of collecting is creamy;
					if L is urine, now the fill-colour of collecting is golden;
					if L is milk, now the fill-colour of collecting is white;
					if L is murkwater, now the fill-colour of collecting is murky;
					SetDose collecting to SUM2;
					now collecting is monster-origin;
					while SPILL > 0:
						if S > 0:
							increase the semen-puddle of (the location of robo vacuum cleaner) by 1;
							decrease SPILL by 1;
						if U > 0:
							increase the urine-puddle of (the location of robo vacuum cleaner) by 1;
							decrease SPILL by 1;
						if M > 0:
							increase the milk-puddle of (the location of robo vacuum cleaner) by 1;
							decrease SPILL by 1;
			otherwise:
				say "but because the other end of tube isn't plugged into anything, it just gets dumped back onto the ground!";
		otherwise:
			let LR be the list of placed corporate modern rooms;
			if robo vacuum cleaner is penetrating a fuckhole and (the patrol of robo vacuum cleaner > 3 or the puddle-sucks of robo vacuum cleaner > 4 or the patrol of robo vacuum cleaner > the number of entries in LR):
				say "The dildo pole lowers slightly, allowing you to step off of it.";
				now robo vacuum cleaner is not penetrating vagina;
				now robo vacuum cleaner is not penetrating asshole;
				let H be a random worn headgear;
				if H is clothing:
					say "[bold type]Your [H] [bold type]glows a bright blue as a blessing is laid upon it![roman type][line break]";
					now H is blessed;
					let D be a random off-stage ring;
					if D is ring:
						now D is pure diamond;
						set shortcut of D;
						if D is actually summonable:
							summon D;
						otherwise:
							now D is in the location of the player;
						say "It rewards you by summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
					if robo vacuum cleaner is penetrating face:
						now robo vacuum cleaner is not penetrating face;
						say "Now that your hood is blessed, [bold type]you feel the tube's seal with your ring gag released, [roman type]and it slips out of your mouth to the ground!";
			otherwise:
				if the patrol of robo vacuum cleaner > the number of entries in LR, now the patrol of robo vacuum cleaner is 1;
				let R1 be entry (patrol of robo vacuum cleaner) in LR;
				let D be the best route from the location of the player to R1;
				let R2 be the room D from the location of the player;
				say "[BigNameDesc of robo vacuum cleaner] [one of]rumbles[or]wheels itself[or]travels[or]glides[in random order] [D] to the [R2][if robo vacuum cleaner is penetrating a fuckhole], taking you with it[end if]!";
				if R1 is R2 and the total puddle of R1 is 0:
					now the semen-puddle of R1 is a random number between 2 and 4;
					increase the patrol of robo vacuum cleaner by 1;
				if robo vacuum cleaner is penetrating a fuckhole:
					drag to R2 by robo vacuum cleaner;
				otherwise:
					dislodge robo vacuum cleaner;
					now robo vacuum cleaner is in R2.

To say DragFlav of (M - robo vacuum cleaner) to (R - a room):
	say "".

Check entering robo vacuum cleaner:
	say "This has not been implemented yet! For now, the only way to get on it is that alpha testers can get forced on while wearing an unblessed black hood." instead.


Laundry Robots ends here.
