Rocking Horse Trap by Traps begins here.


A rocking horse is a kind of trap. The text-shortcut of a rocking horse is "rch". The printed name of rocking horse is "[TQlink of item described]rocking horse[TQxlink of item described][verb-desc of item described]".

This is the spawn initial woods rocking horse traps rule:
	if diaper lover > 0:
		repeat with N running from 1 to (diaper focus + 1):
			let R be a random pressure untrapped trappable placed jungle room;
			while there is a rocking horse in R:
				now R is a random pressure untrapped trappable placed jungle room;
			let T be a random off-stage rocking horse;
			deploy T in R.
The spawn initial woods rocking horse traps rule is listed in the set up woods traps rules.

To decide which figure-name is the examine-image of (C - a rocking horse):
	if C is grabbing the player, decide on figure of rocking horse ride;
	decide on figure of rocking horse.

To say ExamineDesc of (C - a rocking horse):
	say "A large wooden rocking horse, made for an adult but fashioned like a child's one would be, in white, purple and pink, with a princess-style backrest and armrests[if C is grabbing the player]. Some magic force is keeping you stuck to the saddle, it looks like you're going to have to [bold type]rock[roman type] until it lets you off[end if].".

There are 3 potentially pressure potentially sticky rocking horses.

[!<YourselfIsRockerStuck>+

Returns yes if the player is stuck on a rocking horse.

+!]
Definition: yourself is rocker stuck:
	if there is a rocking horse grabbing the player, decide yes;
	decide no.

Figure of rocking horse is the file "Env/Forest/rockinghorse1.jpg".
Figure of rocking horse ride is the file "Env/Forest/rockinghorse2.jpg".

To say ShortDesc of (T - a rocking horse):
	say "An adult sized [T] is fixed on the ground. ".

To trigger (Y - a rocking horse):
	now the player-motion of the player is 0;
	now the TrapNo of Y is a random number between 3 and 5;
	now the reset-timer of Y is 999999;
	now Y is not untriggered;
	now Y is revealed;
	if Y is grabbing the player:
		say "You clamber up onto the rocking horse[if the body soreness of the player > 0] to rest and recover[end if]. ";
		let T be a random off-stage tiara;
		if T is actually summonable:
			summon T cursed;
			say "As you do, a [ShortDesc of T] appears on your head!";
	otherwise:
		say "A giant large wooden rocking horse shoots out from the ground beneath you, [if the player is prone]forcing you upright and [end if]pulling you up until your feet aren[']t touching the floor. ";
	say "Some kind of magic force seems to keep your butt glued to the saddle! Looks like you're going to have to [bold type]rock[roman type] yourself until it's happy to let you down!";
	now the stance of the player is 0;
	now Y is grabbing the player.

Check entering rocking horse:
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the player is in danger, say "You need to deal with the [random dangerous monster in the location of the player] first!" instead;
	if the player is urine averse and the urine-puddle of the location of the player > 0, say "[variable custom style]I'm not resting in this room with the smell of [urine] everywhere![roman type][line break]" instead;
	now the noun is grabbing the player;
	now focused-thing is the noun;
	trigger the noun instead;
	do nothing instead.

Rocking is an action applying to nothing.
Check rocking:
	unless there is a rocking horse grabbing the player:
		allocate 6 seconds;
		say "You rock back and forth a bit. You're not sure why you did that..." instead.
Carry out rocking:
	let Y be a random rocking horse grabbing the player;
	say "You rock back and forth. ";
	allocate 6 seconds;
	decrease the TrapNo of Y by 1;
	if the player is not diapered:
		let K be a random worn knickers;
		if K is knickers:
			say "As you rock, you feel your [ShortDesc of K] getting lighter and lighter. You look down just in time to witness it fade from existence!";
			destroy K;
		otherwise:
			let D be a random eligible diaper;
			if D is diaper:
				say "As you rock, you feel your butt pushed slightly upwards by soft padding as a [ShortDesc of D] appears on you!";
				summon D cursed with quest;
				cutshow figure of Rocking Horse Cutscene for Y;
	otherwise if the TrapNo of Y > 0:
		let R be a random number from 1 to 5;
		if R is 1:
			say "A mechanical xylophone [one of][or]once again [stopping]plays a short lullaby tune from somewhere within the horse.";
		otherwise if R is 2 and the delicateness of the player < 20:
			say "You can't help but feel a bit more submissive.";
			increase the raw delicateness of the player by 1; [The player wasn't in pain so we don't trigger the main function with all the pain reflection flavour]
		otherwise:
			say "The saddle vibrates, gently stimulating you through your diaper.";
			arouse 500;
	otherwise:
		say "The magic binding on the saddle seems to disappear! You are able to climb off successfully. [one of]As you lift yourself off, you magically feel fully healed! Wow![or]Once again, you feel fully healed![stopping]";
		now the soreness of asshole is 0;
		now the tolerated of asshole is 0;
		if the player is female:
			now the soreness of vagina is 0;
			now the tolerated of vagina is 0;
		now the body soreness of the player is 0;
		now the fatigue of the player is 0;
		now Y is not grabbing the player.

Report rocking:
	repeat with M running through reactive monsters:
		compute RockingReaction of M.

Understand "rock" as rocking.

Check submitting when there is a rocking horse grabbing the player:
	let Y be a random rocking horse grabbing the player;
	say "The [Y] suddenly heats up to a painful temperature, seemingly trying to encourage you to start rocking![line break][variable custom style]Ouch! Hot hot hot!!![roman type][line break]";
	PainUp 1 instead;
	do nothing instead.

Check dropping a rocking horse:
	if the noun is held, say "" instead.

To compute RockingReaction of (M - a monster):
	say "[BigNameDesc of M] chuckles as [he of M] watches you. [RockingReactionSpeech of M][moderateHumiliateReflect]".

To say RockingReactionSpeech of (M - a monster):
	say "[one of][line break][speech style of M]'Haha, you look just like a real baby!'[roman type][line break][or][stopping]".



Rocking Horse Trap ends here.

