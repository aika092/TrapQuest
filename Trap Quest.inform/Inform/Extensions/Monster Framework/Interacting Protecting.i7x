Interacting Protecting by Monster Framework begins here.

To compute friendly boredom of (M - a monster):
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
		repeat with U running through combative monsters:
			now X is U; [Selkie: why loop through, just to pick the last one? Would it be better to only set X to U, if U is not M? MG: If the interaction function is able to run, it implies the monster is friendly, so checking if U is M would be redundant. The otherwise-if later on in this function is just a failsafe. That said, let X be a random dangerous monster would probably be better because we aren't performing the search again if M does end up being U. Aika: This way it produces a consistent choice rather than a random one, if there is more than one enemy. So the protecting monster(s) will focus in on one combatant rather than continually flip between attacking all possible enemies, which makes more sense and is more helpful.]
		if the player is flying:
			distract M; [Selkie: not distract U? Or is your ally getting distracted? MG: The player is flying so there is nothing a friendly monster can do for you unless they happen to be an aeromancer]
		otherwise if X is M:
			do nothing;
		otherwise if X is seduced: [monsters don't get involved or keep attacking enemies while you're seducing]
			do nothing;
		otherwise:
			compute M protecting against X.

To compute (M - a monster) protecting against (X - a monster): [Default protection if not defined for the monster]
	compute default protecting of M.

To compute default protecting of (M - a monster):
	if M is intelligent:
		say "[one of][BigNameDesc of M] watches, seemingly unconcerned by your situation.[or][or][BigNameDesc of M] nods with interest, as if rating your performance.[or][or]Your actions appear to interest [NameDesc of M], who purses [his of M] lips as if unsure if your heart is really in this.[or][or][BigNameDesc of M] seems mildly surprised by your actions, but shrugs, not wishing to judge you.[or][or][BigNameDesc of M] shakes [his of M] head, as if surprised by your behaviour.[or][or][BigNameDesc of M] looks away, as if embarrassed by your choice of actions.[cycling]";
	otherwise:
		say "[one of][BigNameDesc of M] watches, seemingly not noticing your situation.[or][BigNameDesc of M] appears not to have noticed what's going on![or][BigNameDesc of M] is looking the other way, and doesn't see your humiliating situation.[or][BigNameDesc of M] seems confused by your actions.[or][BigNameDesc of M] simply watches, waiting. It's a little embarrassing, and you try to tell yourself that what you're doing is perfectly normal, really. Besides, it's not like [NameDesc of M] cares. Right?[cycling]".

Interacting Protecting ends here.
