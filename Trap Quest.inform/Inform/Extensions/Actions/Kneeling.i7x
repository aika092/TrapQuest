Kneeling by Actions begins here.


[!<kneeling:Action>*

REQUIRES COMMENTING

*!]
Kneeling is an action applying to nothing.

[!<CheckKneelingWhileGloryholeIsGrabbingThePlayer>+

REQUIRES COMMENTING

+!]
Check kneeling while gloryhole is grabbing the player:
	say  "[if seconds is 0]You can't move![end if]" instead.


[!<CheckKneelingWhileThePlayerIsDildoStuck>+

REQUIRES COMMENTING

+!]
Check kneeling while the player is dildo stuck:
	say  "[if seconds is 0]You can't move![end if]" instead.


[!<CheckKneelingWhileThePlayerIsImmobile>+

REQUIRES COMMENTING

+!]
Check kneeling while the player is immobile:
	unless the player is vine stuck or the player is glue stuck, say  "[if seconds is 0]You try to kneel but your current situation prevents you.[end if]" instead.

[!<CheckKneeling>+

REQUIRES COMMENTING

+!]
Check kneeling:
	if the player is in Start, say "Stop messing around and choose a gender!" instead;
	if the player is in Capsule, say "There's not enough space to kneel while you're lying down in the capsule." instead;
	if the player is in Iron Maiden:
		say "You can't drop to your knees because of the rigid shape of the Iron Maiden.";
		if seconds is 0, try waiting instead; [Default to waiting if a kneel command is used manually.]
		do nothing instead;
	if the throne is filling asshole, say "[if seconds is 0]You can't kneel when you're already sitting down![end if]" instead;
	if the player is prone:
		if the player is glue stuck:
			if the bimbo of the player > 12:
 				say "You giggle, almost tempted to see if you can get even more stuck in the glue!" instead;
			otherwise if the sex addiction of the player > 11:
 				say "[variable custom style]I wouldn't want to get even more helpless... and fuckable![roman type][line break]" instead;
			otherwise if the delicateness of the player > 14:
				say "[variable custom style]You cringe at the thought of the pain of pulling free of the adhesive mass.[roman type][line break]" instead;
			otherwise:
				say "[variable custom style]I may be on my knees, but I'm not going to just submit![roman type][line break]" instead;
		otherwise:
			say "You are already kneeling!" instead;
	if seconds is 0 and the fatigue of the player < the buckle threshold of the player and debugmode is 0 and the delicateness of the player < 9 and the bimbo of the player < 10 and the player is in danger and the player is not very horny and the class of the player is princess and princess-consort is not in the location of the player:
		say "A strange tingle passes through your head, and a strange voice orders you to stay on your feet. [line break][first custom style]'A princess does not kneel for anyone!'[roman type][line break]" instead;[TODO: WILLING TO KNEEL RULES]
	if seconds is 0 and the fatigue of the player < the buckle threshold of the player and debugmode is 0 and the sex addiction of the player < 10 and the bimbo of the player < 8 and the player is in danger and the player is not very horny and the delicateness of the player < 4:
		say "[variable custom style]No way, I'm fighting until I drop![roman type][line break]" instead.

[!<CarryOutKneeling>+

REQUIRES COMMENTING

+!]
Carry out kneeling:
	now the stance of the player is 1;
	repeat with X running through open topped vessels carried by the player:
		if the doses of X > 0 and a random number between 1 and the dexterity of the player < 4 and seconds > 0:
			say  "You spill the [printed name of X] on the floor[if the fill-type of X < 20]. What a waste[end if]!";
			now the doses of X is 0;
	if seconds > 0 and the class of the player is maid and there is a worn spray pink spraybottle:
		compute a random pink spraybottle breaking;
	let R be a random number between (the bimbo of the player / 2) and the bimbo of the player;
	if there is a dangerous intelligent monster in the location of the player and seconds > 0 and the fatigue of the player > the buckle threshold of the player:
		say "[bold type]You drop to your knees, [if the bimbo of the player < 12]trying not to make eye contact[otherwise]quivering in anticipation[end if].[roman type][line break]";
	otherwise if R < 5:
		say "[bold type]You are now on your knees.[roman type][line break]";
	otherwise if R < 8:
		say "[bold type]You are now on your knees[if a random number between 1 and 6 is 1] once again[end if].[roman type][line break]";
	otherwise if R < 11:
		say "[if a random number between 1 and 6 is 1][line break][variable custom style]I'm on my knees again![otherwise][bold type][line break]You are now on your knees.[end if][roman type][line break]";
	otherwise:
		say "[bold type]You are now on your knees,[roman type] like a good little [if diaper quest is 1]baby[otherwise]slut[end if].[line break]";
	if [the player is in the mansion and ]the slime-puddle of the location of the player > 0:
		say "[if bukkake fetish is 1]The thick slime on the floor instantly adheres to your skin.[otherwise]The glowing surface of the floor seems to glue itself to your skin.[end if]";
		increase the stickiness of the player by a random number between 4 and 6;
	otherwise if the player is glue stuck:
		let G be a random glue in the location of the player;
		increase the stickiness of the player by a random number between 2 and 3;
	[If the player has a clit lead, a monster will grab it.]
	let N be a random interested unfriendly controlling monster in the location of the player;
	if N is monster and there is a worn subduing clothing:
		compute lead holding of N; [Go to Immobility by Player to see more.]
	[If the player falls over we want to let the other monsters know.]
	if seconds > 0:
		repeat with M running through uninterested monsters in the location of the player:
			if the boredom of M is 0 and the sleep of M is 0, compute correct perception of M;
	if seconds is 0, now seconds is 2;
	otherwise now seconds is 1. [seconds = 1 means monsters don't get delayed in "report kneeling when the player is in danger"]


[!<CheckKneelingWhenTheLocationOfThePlayerIsSmoky>+

REQUIRES COMMENTING

+!]
Check kneeling when the location of the player is smoky:
	if the player is upright and seconds is 0:
		say "There is [if the player is in the Mansion]blackish-green[otherwise]pink[end if] smoke in this room, are you sure you want to? [yesnolink] ";
		unless the player consents, do nothing instead.


[!<CheckKneelingWhenTheLocationOfThePlayerIsGluePuddled>+

REQUIRES COMMENTING

+!]
Check kneeling when the location of the player is glue-puddled:
	if the player is upright and seconds is 0:
		say "There is a very sticky-looking puddle of glue covering most of the floor here, are you sure you want to? [yesnolink] ";
		if the player consents:
			check glue tripping;
		otherwise:
			do nothing instead.
	
Understand "kneel", "kneel down", "crawl", "prone", "drop me", "kn" as kneeling.

Report kneeling when the player is in danger and seconds > 1: [This is where we output the reaction of a dominant monster to you conceding a fight before it's over.]
	let N be nothing;
	if there is an intelligent dangerous monster in the location of the player, now N is a random intelligent dangerous monster in the location of the player; [We only compute the reaction of one enemy. We prioritise the reaction of intelligent monsters as they probably have a more interesting response.]
	otherwise now N is a random dangerous monster in the location of the player;
	compute correct kneeling reaction of N;
	if the class of the player is princess, humiliate SLIGHT-HUMILIATION - TRIVIAL-HUMILIATION;
	if newbie tips is 1 and the soreness of asshole > 5 or the soreness of vagina > 5, say "[one of][item style]Newbie tip: You could always try 'offer mouth' to avoid your sore holes getting any sorer!  Of course, it'll increase humiliation, and there's a chance it won't work.[roman type][line break][or][stopping]";
	repeat with M running through dangerous monsters in the location of the player:
		make M expectant. [Here we note that the monster is expectantly waiting to see if the player offers up a particular orifice.]

To compute correct kneeling reaction of (M - a monster):
	if diaper quest is 1, compute DQ kneeling reaction of M;
	otherwise compute kneeling reaction of M.

To compute DQ kneeling reaction of (M - a monster): [Default boring reaction if none is defined.]
	if M is intelligent, say "The [M] grins.[if the humiliation of the player < HUMILIATION-SHAMELESS - 2000]You shiver with shame.[end if]";
	otherwise say "The [M] watches you, expressionless.[if the humiliation of the player < HUMILIATION-SHAMELESS - 2000]You shudder with shame.[end if]";	
	humiliate MODERATE-HUMILIATION + SLIGHT-HUMILIATION.

To compute kneeling reaction of (M - a monster): [Default boring reaction if none is defined.]
	if M is intelligent, say "The [M] grins.[if the humiliation of the player < HUMILIATION-SHAMELESS - 2000]You shiver with shame.[end if]";
	otherwise say "The [M] watches you, expressionless.[if the humiliation of the player < HUMILIATION-SHAMELESS - 2000]You shudder with shame.[end if]";	
	humiliate MODERATE-HUMILIATION + SLIGHT-HUMILIATION.




Kneeling ends here.

