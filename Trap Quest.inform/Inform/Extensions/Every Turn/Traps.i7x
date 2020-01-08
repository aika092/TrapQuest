Traps by Every Turn begins here.

shunk-happened is a number that varies.

A time based rule (this is the trap time rule):
	now shunk-happened is 0;
	repeat with T running through traps:
		if T is vines:
			if the TrapNo of T < 0:
				increase the TrapNo of T by time-seconds;
				if the TrapNo of T > 0, now the TrapNo of T is 0;
			otherwise if T is in WoodsBoss01 and the TrapNo of T is 0 and T is not grabbing the player and T is not penetrating a fuckhole:
				if a random number from 1 to 25 is 1, remove T from play; [Vines will slowly disappear from vines boss room.]
		if T is tripwire trap:
			if the memory of T > 0, decrease the memory of T by 1;
		if the reset-timer of T > 0:
			if T is not expired and T is in the location of the player, compute turn trap effect of T;
			if T is not expired, compute time decay of T;
			compute reset cooldown of T.

To compute turn trap effect of (T - a trap):
	do nothing.

To compute time decay of (T - a trap):
	do nothing.

To compute reset cooldown of (T - a trap):
	if the reset-timer of T <= time-seconds:
		now the reset-timer of T is 0;
		unless T is penetrating a fuckhole:
			now T is untriggered;
			now T is not expired;
			now T is not triggered;
			now T is unrevealed;
			if T is click:
				repeat with C running through containers in the location of T:
					now C is closed;
					now C is emptied;
			if T is in the location of the player and shunk-happened is 0:
				say "There is a loud 'shunk' sound as the [T] in this room resets[if T is click]. All the containers in the room shut themselves automatically![otherwise].[end if]";
				now shunk-happened is 1;
		otherwise:
			now the reset-timer of T is 1;
	otherwise:
		decrease the reset-timer of T by time-seconds.

Traps ends here.
