Salve Rubbing by Actions begins here.

SalveRubbing it on is an action applying to two things.

Check SalveRubbing:
	if the noun is lubricant, try orilubing the noun with the second noun instead;
	if the noun is glue, try GlueRubbing the second noun on the noun instead;
	if the second noun is glue, try GlueRubbing the noun on the second noun instead;
	if the noun is not salve and the noun is not ectoplasm, say "I understood the verb as you wanting to apply a salve, but then the noun was not a salve." instead;
	if the noun is salve of buoyancy or the noun is salve of restriction or the noun is salve of restriction:
		if the second noun is not breasts and the second noun is not hips and the second noun is not belly, say "You can only apply a salve to your [bold type]breasts[roman type], your [bold type]belly[roman type] or your [bold type]ass[roman type] at the moment." instead;
	if the noun is salve of concealment:
		if the second noun is hips, now the second noun is asshole;
		if the player is male and second noun is not asshole, say "You can only apply this salve to your [bold type][asshole][roman type]!" instead;
		if the second noun is not asshole and the second noun is not vagina, say "You can only apply this salve to your [bold type][asshole] or [vagina][roman type]!" instead;
	if the second noun is breasts:
		if there is a worn true salve covering breasts:
			say "You already have the [printed name of random worn salve covering breasts] covering your breasts!" instead;
		if the player is wrist bound behind, say "You can't reach your chest to apply the salve whilst your wrists are bound behind you." instead;
		if there is a worn bra:
			if the support of a random worn bra > 0 and a random worn bra is not top-displaced, say "You would need to remove your [printed name of random worn bra] first." instead; [A support of 0 means the bra is cupless]
		if there is a worn overdress:
			if a random worn overdress is nipple exposing and a random worn overdress is not top-displaced, say "You would need to remove your [printed name of random worn overdress] first." instead;
	otherwise if the second noun is belly:
		if there is a worn true salve covering belly:
			say "You already have the [printed name of random worn salve covering belly] covering your belly!" instead;
		if the player is wrist bound behind, say "You can't reach your belly to apply the salve whilst your wrists are bound behind you." instead;
		if there is a worn corset:
			say "You would need to remove your [printed name of random worn corset] first." instead;
		if there is a worn overdress:
			if a random worn overdress is belly covering, say "You would need to remove your [printed name of random worn overdress] first." instead;
	otherwise if the second noun is hips:
		let O be a random worn crotch covering overdress;
		let K be a random worn knickers;
		if there is a worn true salve covering hips:
			say "You already have the [printed name of random worn salve covering hips] covering your ass!" instead;
		if the player is wrist bound in front, say "You can't really reach your butt properly to apply the salve whilst your wrists are bound in front of you." instead;
		if K is clothing:
			if the armour of K > 6, say "Your [printed name of K] are covering too much of your butt, you would need to remove them first." instead;
		if O is clothing:
			unless O is no protection, say "Your [printed name of O] is covering too much of your butt, you would need to [if O is displacable]displace[otherwise]remove[end if] it first." instead;
	otherwise if the second noun is asshole:
		let O be a random worn ass covering overdress;
		if there is a worn true salve covering asshole:
			say "You already have the [printed name of random worn salve covering asshole] covering your [asshole]!" instead;
		if there is a worn ass covering knickers:
			say "Your [printed name of random worn ass covering knickers] are covering your [asshole]!" instead;
		if O is clothing:
			say "Your [O] is covering your [asshole]!" instead;
	otherwise if the second noun is vagina:
		if there is a worn true salve covering vagina:
			say "You already have the [printed name of random worn salve covering vagina] covering your [vagina]!" instead;
		if there is a worn pussy covering knickers:
			say "Your [printed name of random worn pussy covering knickers] are covering your [vagina]!" instead;
		if there is a worn pussy covering overdress:
			say "Your [printed name of random worn pussy covering overdress] is covering your [vagina]!" instead;
	otherwise if the noun is ectoplasm:
		if the second noun is not clothing or the second noun is accessory or the second noun is headgear or the second noun is stockings or the second noun is heels, say "You can't really rub it on properly. It's like the slime refuses to soak into it!" instead;
		if the second noun is worn, say "You can't really rub it on properly when you're already wearing it." instead;
		if the second noun is not fluid vulnerable, say "That doesn't like it would absorb any of the slime." instead;
		if the second noun is possession, say "You try, but it doesn't do anything." instead.

Carry out SalveRubbing:
	let S be the noun;
	let B be the second noun;
	if B is body part: 
		say "You gingerly rub the [printed name of S] [if B is fuckhole]around[otherwise]onto[end if] your [ShortDesc of B] and wait to see what will happen.[line break]";
	otherwise:
		say "Your [printed name of B] seems to tremble unnaturally as you rub the slime into the fabric.[line break]";
	oil B with S;
	destroy S.
	
Report SalveRubbing:
	now seconds is 6;
	
Understand "rub [something] on [something]", "rub [something] into [something]", "apply [something] on [something]", "apply [something] to [something]", "apply [something] into [something]" as SalveRubbing it on.


Salve Rubbing ends here.
