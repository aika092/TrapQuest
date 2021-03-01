Interacting Protecting by Monster Framework begins here.

To compute friendly boredom of (M - a monster):
	compute default friendly boredom progress of M.

To compute default friendly boredom progress of (M - a monster):
	increase the friendly boredom of M by 1;
	if M is not caged and a random number from 10 to 30 < the friendly boredom of M and the player is not in danger, compute default friendly boredom of M.

To compute default friendly boredom of (M - a monster):
	compute christmas gifting of M;
	bore M for 150 seconds;
	if M is in the location of the player, say BecomesBoredFlav of M.

To compute interaction of (M - a monster):
	if M is undefeated and M is not caged, compute protection of M.

To compute protection of (M - a monster): [You can define this for your monster if you want it to act hugely differently]
	if the player is in danger:
		let X be M;
		let LX be the list of combative monsters;
		now X is entry 1 in LX;
		if the player is flying:
			distract M;
		otherwise if X is M:
			say "BUG - [NameDesc of M] tried to protect the player (flagged as in combat) but somehow found itself as the most reasonable target...";
		otherwise if X is seduced: [monsters don't get involved or keep attacking enemies while you're seducing]
			do nothing;
		otherwise:
			compute M protecting against X.

To compute (M - a monster) protecting against (X - a monster):
	compute M default protecting against X.

To compute (M - a monster) default protecting against (X - a monster): [Default protection if not defined for the monster]
	if the player is upright and M is intelligent and M is unleashed and M is guardian:
		compute M standard fighting against X;
	otherwise:
		compute default protecting of M.

To compute (M - a monster) standard fighting against (X - a monster):
	let R be a random number between 7 and 15;
	compute X receiving ((the difficulty of M + R) / (R + 1)) damage from M; [usually 1, sometimes more depending on difficulty]
	if M is guardian, FavourDown M.

To compute default protecting of (M - a monster):
	if M is intelligent:
		if the player is upright and M is ally:
			say "[one of][BigNameDesc of M] looks hesitant, as if [he of M] is not sure what to do.[or][BigNameDesc of M] clenches [his of M] fists, clearly rooting for you.[or][BigNameDesc of M] nods with interest, as if impressed by your performance.[or][BigNameDesc of M] holds [his of M] breath. [big he of M] looks genuinely concerned for your safety.[or][BigNameDesc of M] watches with keen interest.[cycling]";
		otherwise if M is ally:
			if the player is immobile:
				say "[BigNameDesc of M] closes [his of M] eyes and looks away.";
				distract M;
				compute mandatory room leaving of M;
		otherwise:
			say "[one of][BigNameDesc of M] watches, seemingly unconcerned by your situation.[or][or][BigNameDesc of M] nods with interest, as if rating your performance.[or][or]Your actions appear to interest [NameDesc of M], who purses [his of M] lips as if unsure if your heart is really in this.[or][or][BigNameDesc of M] seems mildly surprised by your actions, but shrugs, not wishing to judge you.[or][or][BigNameDesc of M] shakes [his of M] head, as if surprised by your behaviour.[or][or][BigNameDesc of M] looks away, as if embarrassed by your choice of actions.[cycling]";
	otherwise:
		say "[one of][BigNameDesc of M] watches, seemingly not noticing your situation.[or][BigNameDesc of M] appears not to have noticed what's going on![or][BigNameDesc of M] is looking the other way, and doesn't see your humiliating situation.[or][BigNameDesc of M] seems confused by your actions.[or][BigNameDesc of M] simply watches, waiting. It's a little embarrassing, and you try to tell yourself that what you're doing is perfectly normal, really. Besides, it's not like [NameDesc of M] cares. Right?[cycling]".

Interacting Protecting ends here.
