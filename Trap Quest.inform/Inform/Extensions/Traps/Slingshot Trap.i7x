Slingshot Trap by Traps begins here.

A slingshot is a kind of trap. There are 5 potentially pressure potentially sticky slingshots.
To say ExamineDesc of (C - a slingshot):
	say "A loose piece of elastic fabric pokes out of the ground, from where the slingshot trap happened.".

This is the spawn initial dungeon slingshot traps rule:
	if diaper focus > 0:
		let R be a random trappable placed labyrinth room;
		let T be a random off-stage slingshot;
		unless there is a slingshot in R, deploy T in R.
The spawn initial dungeon slingshot traps rule is listed in the set up dungeon traps rules.

This is the spawn initial woods slingshot traps rule:
	repeat with N running from 1 to (diaper focus + 1):
		let R be a random trappable placed jungle room;
		let T be a random off-stage slingshot;
		unless there is a slingshot in R, deploy T in R.
The spawn initial woods slingshot traps rule is listed in the set up woods traps rules.

To trigger (Y - a slingshot):
	now Y is not untriggered;
	now Y is expired;
	now the reset-timer of Y is 9999;
	say "As your feet leave the ground, you hear the 'twang' of a strong elastic band. ";
	let C be a random off-stage crotch rope;
	if the player is not possessing a vagina, now C is a random off-stage pouch-panties;
	if diaper focus is 1 and diaper lover > 0:
		now C is a random eligible disposable diaper;
		if C is DQLessBulky diaper, now C is a random off-stage DQBulkier plentiful disposable diaper;
		if C is nothing, now C is a random eligible diaper;
	let D be a random currently uncovered diaper;
	now autowear is true;
	if C is not actually wearable:
		if diaper lover > 0 and face is not actually occupied, now C is a random off-stage fetish appropriate ballgag;
		if C is not ballgag and heart-collar is off-stage, now C is heart-collar;
	if (C is diaper and C is actually wearable) or (C is not diaper and C is actually summonable): [we use actually wearable for diapers because the slingshot trap will only succeed if there's nothing in the way, and diapers are never blocked by being too humiliating, so it's safe to use the wearable function for diapers, but not other clothing]
		if C is ballgag:
			say "[bold type]You gargle in surprise as something flies into your mouth. [roman type]You pull at your new [ShortDesc of C], trying to remove it, [if C is curse-sticky]but are unsurprised to find that it won't come off[otherwise]and find that while it will come out, whenever you remove it, you can feel some of your strength magically leave you. The strength only returns when you place [NameDesc of C] back in your mouth[end if].";
		otherwise if C is submissive collar:
			say "[bold type]You squawk in surprise as something flies onto your neck. [roman type]You pull at your new [ShortDesc of C], trying to remove it, but are unsurprised to find that it won't come off.";
		otherwise:
			say "[bold type]You yelp in surprise as you feel some kind of underwear fly up your legs and into place at your hips! [roman type][if the player is not possessing a vagina]You stare inquisitively[otherwise]You pull helplessly[end if] at your new [ShortDesc of C]. You are unsurprised to find that it won't come off.";
		summon C cursed with quest;
		if diaper quest is 1 and C is blandness and the player is getting unlucky:
			if diaper messing >= 4 and a random number between 1 and 3 > 1:
				now C is desperation;
				say "You can sense that it is slowly secreting a laxative, quickening the rate at which you feel desperate to have a bowel movement. [GotUnluckyFlav]";
			otherwise:
				now C is respiration;
				say "You can sense that it is speeding up your metabolism, making you get thirsty [if diaper messing < 3]and hungry [end if]faster. [GotUnluckyFlav]";
		repeat with M running through reactive monsters:
			say SlingshotTrapReactFlav of M;
	otherwise if C is clothing:
		if D is diaper and C is DQBulkier diaper:
			say "You yelp in surprise as you feel some kind of underwear fly up your legs and into place at your hips, straight on top of your [ShortDesc of D]. It's a [ShortDesc of C]!";
			only destroy C;
			set up C;
			now C is cursed;
			compute quest of C;
			DiaperAdd C;
			say "You are now wearing a [diaper-stack].";
			repeat with M running through reactive monsters:
				say SlingshotTrapReactFlav of M;
		otherwise:
			say "You jump in surprise as you feel an item of clothing thud against your [ShortDesc of hips]. You look around and see that there is now a [ShortDesc of C] on the ground behind you.";
			now C is in the location of the player;
			compute autotaking C;
	otherwise:
		say "Nothing else happens or appears. How weird!";
	now autowear is false.

To say SlingshotTrapReactFlav of (M - a monster):
	say SuddenTransformTrapReactFlav of M.

Slingshot Trap ends here.
