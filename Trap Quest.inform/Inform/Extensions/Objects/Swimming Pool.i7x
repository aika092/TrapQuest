Swimming Pool by Objects begins here.

swimming-pool is a water-body-scenery. swimming-pool is not portable. The printed name of swimming-pool is "[TQlink of item described]swimming pool[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of swimming-pool is "swp". swimming-pool is in School20. Understand "swimming", "pool", "swimming pool" as swimming-pool.

Definition: swimming-pool is made-of-cum:
	if diaper quest is 0 and School20 is visited and woman-player is not in School20, decide yes;
	decide no.

To decide which figure-name is the examine-image of (C - swimming-pool):
	if swimming-pool is made-of-cum, decide on Figure of school swimming pool cum;
	decide on Figure of school swimming pool.

To say ExamineDesc of (S - swimming-pool):
	if swimming-pool is made-of-cum, say "This swimming pool isn't full of water, but instead strong-smelling warm [semen].[line break][variable custom style][if the semen taste addiction of the player < 10 and the semen addiction of the player < 10]What the FUCK is this place?![otherwise]That's... impressive...[end if][roman type][line break]";
	otherwise say "This swimming pool is complete with diving board and that familiar chlorine smell.".

Check showering water-body when swimming-pool is in the location of the player:
	if auto is 0 and swimming-pool is made-of-cum:
		say "That's not full of water, but [semen]. Are you sure? ";
		unless the player is bimbo consenting, do nothing instead.

To say ShortDesc of (S - swimming-pool):
	say "swimming pool".

To say MediumDesc of (S - swimming-pool):
	say "swimming pool[if diaper quest is 0] full of [semen][end if]".

To compute swimming in (S - swimming-pool):
	if swimming-pool is made-of-cum:
		compute TQ swimmingpool swimming at 0 with 0;
	otherwise:
		compute DQ swimmingpool swimming at 0 with 0;

[During the lesson, the pool has 10 different "locations". That's a lot, so we'll cut it down to 5 for the normal swimming: shallow, medium1, medium2, deep1, deep2(under the diving board)]
To compute TQ swimmingpool swimming at (swim-location - a number) with (swim-turns - a number):
	let swimming be 1;
	allocate 6 seconds;
	while swimming is 1:
		if swim-turns is 0 and water-peeing is false:
			if the location of the player is School22:[Near the diving board]
				say "Do you want to use the diving board?";
				if the player consents:[the player enters the pool from deep1, instead of shallow]
					say "You leap off the diving board, creating a splash as you enter the water.";
					now swim-location is 3;
					compute cum pool face coating;[Covers your face too]
				otherwise:
					say "You [if the player is upright]ease yourself[otherwise]dip your toe[end if] into the [semen] and begin to swim.";
					now swim-location is 4;
			otherwise:
				say "You [if the player is upright]wade[otherwise]crawl[end if] out into the [semen] and begin to swim.";
				now swim-location is 0;
		otherwise:
			let L be swim-location;
			say "You are 'treading [semen]' [if L is 0]in the shallow end of the pool, with your feet easily touching the bottom.[otherwise if L is 1]near the shallow end of the pool. Your feet just barely touch the bottom[otherwise if L is 2]midway between the deep end and the shallow end. Your feet are a couple inches from touching the bottom.[otherwise if L is 3]near the deep end of the pool. Your feet are about a metre from the bottom.[otherwise if L is 4]in the deep end of the pool, with several metres between your feet and the bottom.[end if]";
			compute cum pool coating;
		if swim-turns > 0:
			reset multiple choice questions;
			if swim-location is 0, set next numerical response to "get out";
			set next numerical response to "swim in place";
			if swim-location > 0, set next numerical response to "swim toward shallow end";
			if swim-location < 4, set next numerical response to "swim toward deep end";
			if swim-location > 1, set next numerical response to "dive";
			say "[line break]What should you do next?";
			compute multiple choice question;
			let CNR be the chosen numerical response;
			if CNR is "get out":
				say "You climb out of the pool.";
				now swimming is 0;
			otherwise if CNR is "swim in place":
				say "You swim in place.";
				compute easy swimming check in swimming-pool;
			otherwise if CNR is "swim toward shallow end":
				say "You swim toward the shallow end of the pool.";
				compute normal swimming check in swimming-pool;
				decrease swim-location by 1;
			otherwise if CNR is "swim toward deep end":
				say "You swim toward the deep end of the pool.";
				compute normal swimming check in swimming-pool;
				increase swim-location by 1;
			otherwise:
				say "You dive below the surface.";
				compute difficult swimming check in swimming-pool;
				compute treasure diving in swimming-pool at swim-location;
				compute cum pool face coating;
			say "[line break]";
		if swimming is 1:
			if armband is worn:
				let M be a random staff member in the location of the player;
				if M is nothing and a random number between 3 and 15 < swim-turns:
					now M is a random alive undefeated teacher;
					say "[BigNameDesc of M] walks into the room and sees you in the pool!";
				if M is monster:
					say "[speech style of M]'Um, NO! No going in the swimming pool without permission!'[roman type][line break][BigNameDesc of M] drags you out of the pool!";
					compute detention of M;
					now swimming is 0;
			if swimming is 1:
				[compute cum pool coating;]
				increase swim-turns by 1;
				compute swimming fatigue check in swimming-pool;
				if delayed fainting is 1, now swimming is 0;
	if seconds > 0, increase seconds by swim-turns * 3;
	display entire map.

[There's basically nothing interesting happening here, so it's a good template.]
To compute DQ swimmingpool swimming at (swim-location - a number) with (swim-turns - a number):
	let swimming be 1;
	let S be swimming-pool;
	allocate 6 seconds;
	while swimming is 1:
		if swim-turns is 0 and water-peeing is false:
			if the location of the player is School22:[Near the diving board]
				say "Do you want to use the diving board?";
				if the player consents:
					say "You leap off the diving board, creating a splash as you land inside the pool.";
					now swim-location is 3;
				otherwise:
					say "You [if the player is upright]ease yourself[otherwise]dip your toe[end if] into the water and begin to swim.";
					now swim-location is 4;
			otherwise:
				say "You [if the player is upright]wade[otherwise]crawl[end if] out into the water and begin to swim.";
				now swim-location is 0;
		otherwise:
			say "You are treading water [if swim-location is 0]in the shallow end of the pool, with your feet easily touching the bottom.[otherwise if swim-location is 1]near the shallow end of the pool. Your feet just barely touch the bottom[otherwise if swim-location is 2]midway between the deep end and the shallow end. Your feet are a couple inches from touching the bottom.[otherwise if swim-location is 3]near the deep end of the pool. Your feet are about a metre from the bottom.[otherwise if swim-location is 4]in the deep end of the pool, with several metres between your feet and the bottom.[end if]";
		if swim-turns > 0:
			reset multiple choice questions;
			if swim-location is 0, set next numerical response to "get out";
			set next numerical response to "swim in place";
			if swim-location > 0, set next numerical response to "swim toward shallow end";
			if swim-location < 4, set next numerical response to "swim toward deep end";
			if swim-location > 1, set next numerical response to "dive";
			say "[line break]What should you do next?";
			compute multiple choice question;
			let CNR be the chosen numerical response;
			if CNR is "get out":
				say "You climb out of the pool.";
				now swimming is 0;
			otherwise if CNR is "swim in place":
				say "You swim in place.";
				compute easy swimming check in swimming-pool;
			otherwise if CNR is "swim toward shallow end":
				say "You swim toward the shallow end of the pool.";
				compute normal swimming check in swimming-pool;
			otherwise if CNR is "swim toward deep end":
				say "You swim toward the deep end of the pool.";
				compute normal swimming check in swimming-pool;
			otherwise:
				say "You dive below the surface.";
				compute difficult swimming check in swimming-pool;
				compute treasure diving in swimming-pool at swim-location;
			say line break;
		if swimming is 1:
			if armband is worn:
				let M be a random staff member in the location of the player;
				if M is nothing and a random number between 1 and 10 < swim-turns:
					now M is a random alive undefeated teacher;[in the DQ pool a teacher is much likelier to show up.]
					say "[BigNameDesc of M] walks into the room and sees you in the pool!";
				if M is monster:
					say "[speech style of M]'Um, NO! No use of the swimming pool without permission!'[roman type][line break][BigNameDesc of M] drags you out of the pool!";
					compute detention of M;
					now swimming is 0;
			if swimming is 1:
				compute bathing;
				increase swim-turns by 1;
				compute swimming fatigue check in swimming-pool;
				if delayed fainting is 1, now swimming is 0;
	if seconds > 0, increase seconds by swim-turns * 3;
	display entire map.

To compute cum pool coating:
	if the semen coating of thighs < 10, increase the semen coating of thighs by a random number between 1 and 2;
	if bukkake fetish is 1:
		if the semen coating of breasts < 10, increase the semen coating of breasts by a random number between 1 and 2;
		if the semen coating of belly < 10, increase the semen coating of belly by a random number between 1 and 2;
		repeat with C running through worn fluid vulnerable clothing:
			if the total-soak of C < the soak-limit of C and C is not headgear:
				increase the semen-soak of C by a random number between 1 and 2;
				if total-soak of C > the soak-limit of C, decrease the semen-soak of C by 1;
	repeat with B running through body parts:[Fix anything that went over the limit]
		if the semen coating of B > 10, now the semen coating of B is 10.

To compute cum pool face coating:
	if bukkake fetish is 0:
		now the water-drench of hair is the largeness of hair;
	otherwise:
		if the semen coating of face < 10:
			increase the semen coating of face by a random number between 1 and 2;
			if the semen coating of face > 10, now the semen coating of face is 10;
		if the semen coating of hair < the largeness of hair:
			increase the semen coating of hair by a random number between 1 and 2;
			if the player is naked, cutshow figure of bukkake door cutscene 1 for hair;
			if the semen coating of hair > the largeness of hair, now the semen coating of hair is the largeness of hair;
		now the semen coating of hair is the largeness of hair;
		now the water-drench of hair is 0;
		repeat with C running through worn fluid vulnerable headgear:
			if the total-soak of C < the soak-limit of C:
				increase the semen-soak of C by a random number between 1 and 2;
				if total-soak of C > the soak-limit of C, decrease the semen-soak of C by 1.

To compute treasure diving in (WB - swimming-pool) at (L - a number):
	if swimming-pool is not made-of-cum:
		say "[line break]You touch the bottom and return to the surface."; [Really only tires you out.]
	otherwise:
		if L < 2: [You shouldn't be able to dive at this depth]
			say "[line break]You touch the bottom and return to the surface.";
		otherwise if (L is 2 and the player is getting very lucky) or (L is 3 and the player is getting very lucky) or (L is 4 and the player is getting lucky): [OK, the player found something! What did they find?]
			say "[line break]You feel something odd as your hand touches the pool bottom, and you fumble around to look for it... [run paragraph on]";
			let N be a random number between 1 and 20;
			if N < 9:
				say "Unfortunately, you don't feel anything after that and you run out of air and return to the surface empty-handed.";
			otherwise if N < 13:[token]
				let F be a random off-stage fabric token;
				if F is fabric token:
					say "Your fingers find a hard object around the size of a quarter, and you manage to pry it off the bottom and take it with you as you head back to the surface. [bold type]You found a fabric token![roman type]";
					now F is carried by the player;
				otherwise:
					say "Your fingers find a hard object around the size of a quarter, and you unsuccessfully try to pry it off the bottom before running out of air and returning to the surface empty-handed.";
			otherwise if N < 16 and condom fetish is 1:[condom]
				let S be a random worn condom pinnable clothing;
				if string-belt is worn, now S is string-belt;
				if S is clothing and the player is getting unlucky:[It's a condom "leech"]
					say "Your fingers find something mushy as your fingers hit the bottom, and you take it with you as you swim back to the surface. [bold type]You picked up a used condom... and it's moving?![roman type] It flies from your hand and seals itself to your [ShortDesc of S]!";
					UsedCondomUp S by 1;
				otherwise:
					say "Your fingers find something mushy as your fingers hit the bottom, and you take it with you as you swim back to the surface. You picked up a used condom! Yuck! You throw it back.";
			otherwise if N < 20:[lube]
				let U be a random off-stage lubricant;
				if U is lubricant:
					say "You feel something hard as your fingers hit the bottom, and you take it with you as you head back to the surface. [bold type]You picked up a bottle of lubricant![roman type]";
					now U is carried by the player;
				otherwise:
					say "You feel something hard as your fingers hit the bottom, but you accidentally brush it out of the way when you go to grab it. You search around for a little while, but eventually run out of air and return to the surface empty-handed.";
			otherwise:[key]
				let K be skeleton key;
				if K is off-stage:
					say "Your fingers come into contact with something key-shaped as they touch the bottom. You grab it and head back to the surface. [bold type]You found a skeleton key![roman type]";
					now K is carried by the player;
				otherwise:
					say "Your fingers come into contact with something key-shaped as they touch the bottom. Grabbing it, you head back to the surface. Unfortunately, the [semen] you're swimming through is just too thick, and it slips through your fingers just as you come up for air.";
		otherwise:
			say "[line break]You touch the bottom and return to the surface.".

Swimming Pool ends here.
