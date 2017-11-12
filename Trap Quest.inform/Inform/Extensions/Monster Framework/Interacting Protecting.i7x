Interacting Protecting by Monster Framework begins here.

To compute friendly boredom of (M - a monster):
	increase the friendly boredom of M by 1;
	if the player is not in danger and a random number from 10 to 30 < the friendly boredom of M:
		distract M;
		if M is in the location of the player, say "[BecomesBoredFlav of M]".

To compute interaction of (M - a monster):
	compute protection of M.

To compute protection of (M - a monster): [You can define this for your monster if you want it to act hugely differently]
	if the player is in danger:
		let X be M;
		repeat with U running through dangerous monsters in the location of the player:
			now X is U; [Selkie: why loop through, just to pick the last one? Would it be better to only set X to U, if U is not M? ] 
		if the player is flying:
			distract M; [Selkie: not distract U? Or is your ally getting distracted?]
		otherwise if X is M:
			say "";
		otherwise:
			compute M protecting against X;
	
To compute (M - a monster) protecting against (X - a monster): [Default protection if not defined for the monster]
	if M is intelligent:
		say "[one of]The [M] watches, seemingly unconcerned by your situation.[or][or]The [M] nods with interest, as if rating your performance.[or][or]Your actions appear to interest the [M], who purses [his of M] lips as if unsure if your heart is really in this.[or][or]The [M] seems mildly surprised by your actions, but shrugs, not wishing to judge you.[or][or]The [M] shakes [his of M] head, as if surprised by your behaviour.[or][or]The [M] looks away, as if embarrassed by your choice of actions.[cycling]";
	otherwise:
		say "[one of]The [M] watches, seemingly not noticing your situation.[or]The [M] appears not to have noticed what's going on![or]The [M] is looking the other way, and doesn't see your humiliating situation.[or]The [M] seems confused by your actions.[or]The [M] simply watches, waiting. It's a little embarrassing, and you try to tell yourself that what you're doing is perfectly normal, really.  Besides, it's not like the [M] cares. Right?[cycling]".

Interacting Protecting ends here.
