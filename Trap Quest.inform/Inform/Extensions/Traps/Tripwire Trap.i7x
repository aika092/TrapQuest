Tripwire Trap by Traps begins here.

A tripwire trap is a kind of trap. There are 30 wire tripwire traps. The description of tripwire trap is "A thin wire crosses the [trap-direction] exit of the room at knee height.".

A tripwire trap has a number called memory. The memory of a tripwire trap is usually 0.

To trigger (Y - a tripwire trap):
	now Y is revealed;
	now the memory of Y is 30;
	if the player is upright and (the living belt of sturdiness is not worn or the living belt of sturdiness is cursed):
		say "The wire has no give at all, making you flail wildly as you fall to your knees!";
		if the bimbo of the player < 14:
			if a random number between 1 and 5 is 1, say "[variable custom style][one of]Well that was[or]Whoops, that was[or]Not again, how[then at random] embarrassing![roman type]";
		now delayed stand is 1; [This is a dirty roundabout fix to the gladiator pulling the player in one direction after a trip, but then the player ending up in the location they would have been if the gladiator didn't pull them anyway, by preventing the gladiator from pulling.]
		try kneeling;
		if the player is upright or autostand is 0, now delayed stand is 0;
	otherwise:
		say "Luckily, nothing seems to happen.".

Tripwire Trap ends here.

