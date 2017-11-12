Memorising by Actions begins here.


Memorising is an action applying to one thing.
Check memorising:
	if the noun is furniture, try entering the noun instead; [For when people type "re stool"]
	if the noun is worn clothing, try taking off the noun instead;
	if the noun is not recipe:
		let R be a random recipe in the location of the player;
		repeat with C running through containers in the location of the player:
			if R is nothing, now R is a random recipe in C;
		if R is recipe:
			say "(the [R])[line break]";
			try memorising R instead;
		say "How would you memorise that?" instead;
	if the noun is memorised, say "You've already committed that to memory." instead;
	if the player is in danger, say "You're a bit busy to do that, aren't you?" instead;
	if the flat intelligence of the player < 4 + the number of memorised recipes, say "You're not smart enough to memorise that many recipes." instead.
Carry out memorising:
	now the noun is memorised.
Report memorising:
	say "You study the words on the page and commit them to memory.";
	now seconds is 6.
Understand "memorise [something]", "memorize [something]", "remember [something]", "learn [something]", "commit [something] to memory", "le [something]", "mem [something]", "re [something]", "rem [something]" as memorising.
Does the player mean memorising a recipe:
	it is very likely.



Recalling is an action applying to nothing.
Check recalling:
	if the number of memorised recipes is 0, say "You haven't committed anything to memory." instead.

Carry out recalling:
	say "[bold type]MEMORISED RECIPES:[roman type][line break]";
	repeat with R running through memorised recipes:
		say "[printed name of R]: [description of R][line break]".
Understand "recall recipes", "recipes", "memorised recipes", "known recipes" as recalling.

Memorising ends here.
