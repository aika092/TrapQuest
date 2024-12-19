Dildo Rocking Stool by Furniture begins here.

a dildo rocking stool is a kind of furniture. The printed name of dildo rocking stool is "[TQlink of item described]dildo rocking stool[TQxlink of item described][shortcut-desc][verb-desc of item described]". There is 1 dildo rocking stool. A dildo rocking stool has a number called charge. A dildo rocking stool is not permanent fixture.

To decide which figure-name is the examine-image of (C - a dildo rocking stool):
	decide on figure of dildo rocking stool.

To say ExamineDesc of (C - a dildo rocking stool):
	say "A large wooden dildo is fixed atop a red velvety rocking stool. You put your bum on the stool, and your legs rest on the ground underneath. You could probably have a nice rest on one of these. but there's no way to sit on it without that dildo going up your [if the player is possessing a vagina][vagina][otherwise][asshole][end if].".

The text-shortcut of dildo rocking stool is "drs".
Figure of dildo rocking stool is the file "Env/Dungeon/stool2.jpg".

To decide which number is the girth of (K - a dildo rocking stool):
	decide on 5.

To compute unique normal effect of (K - a dildo rocking stool):
	increase the charge of K by 1;
	if the charge of K >= a random number between 4 and 5:
		say "[one of]You can't help but rock gently on the stool, which makes the huge wooden dildo gently fuck you.[or]The wooden dildo thrusts in and out as you slowly rock back and forth.[stopping]";
		now the charge of K is 0;
		ruin a random fuckhole filled by K.

To compute furniture resting on (K - a dildo rocking stool):
	now the charge of K is 0;
	let F be vagina;
	if the player is not possessing a vagina, now F is asshole;
	now K is penetrating F;
	say "You [if the player is a nympho]eagerly[otherwise if the player is a pervert]happily[otherwise]hesitantly[end if] ease the large wooden dong into your [variable F]. [if the openness of F < the girth of K - 2]It's so big! Your [F][']s walls can barely stretch around it![otherwise if the openness of F <= the girth of K]Your [F][']s walls have to stretch to accommodate the substantial girth.[otherwise]It slides in with surprising ease thanks to your [variable F][']s previous experiences accepting large objects.[end if]";
	ruin F;
	compute normal rest of K.

Dildo Rocking Stool ends here.
