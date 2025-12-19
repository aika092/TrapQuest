Opening by Actions begins here.

Understand "op [something]" as opening.

autoopen is a number that varies.

Does the player mean opening a container: it is very likely.

Check opening a container:
	if the noun is open, say "But it's already open?" instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the player is throne stuck, say "You can't reach it while stuck on the throne." instead;
	if the player is drill stuck, say "You can't reach it while stuck on the drill." instead;
	if the player is pole stuck, say "You can't reach it while stuck on the dildo." instead;
	if the player is hook stuck, say "You can't reach it while stuck on the [if the player is anally hook stuck]ass [end if]hook." instead;
	if the player is at least partially immobile, say "Aren't you a bit busy?" instead;
	if the player is flying, say FlyingRoll instead;
	if autoopen is 1, progress quest of trap-braving-quest;
	if autoopen is 0 and the prevsearch of the noun is 2 or the prevsearch of the noun is 4:
		say "Are you sure you want to open this trapped container? ";
		if the player is bimbo consenting:
			progress quest of trap-braving-quest;
			if diaper quest is 1 and bunny glasses is off-stage and bunny glasses is actually summonable:
				say "As you decide to open it anyway, a [ShortDesc of bunny glasses] appears on your face!";
				summon bunny glasses cursed;
		otherwise:
			say "You decide against it." instead;
	if the prevsearch of the noun is 0 and the noun is not pink wardrobe and the bimbo of the player <= 12 and autosearch is 1 and the player is upright and autoopen is 0 and the player is able to use manual dexterity and the player is not blinded and tutorial is 0 and the player is not in BellyRoom01:
		if the delicateness of the player > 1:
			say "You search the [ShortDesc of noun] for traps first[one of][if the bimbo of the player < 10].[line break][variable custom style]This game is mental. I need to be careful.[roman type][line break][otherwise].[end if][or].[stopping]";
			try searching the noun;
			if the prevsearch of the noun is 2 or the prevsearch of the noun is 4:
				do nothing instead;
			otherwise:
				compute extra turn;
				if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type]" instead;
				allocate 2 seconds;
			if the noun is open, now autoopen is 0 instead; [If the player automatically searches, there's a chance this could then cause the player to automatically open the container! SO it might already be open here.]
		otherwise:
			say "[one of][line break][variable custom style]Searching for traps sounds like a waste of time. What's the worst they could do?[roman type][line break][or][stopping]";
	now autoopen is 0.

Carry out opening a container:
	allocate arm use to the noun;
	allocate 2 seconds;
	let R be a random number between 1 and 30;
	decrease the charge of the elder altar by R;
	decrease the charge of the dungeon altar by R.

Report opening a container:
	if the noun is pink wardrobe:
		add treasure to the noun;
	otherwise if the noun is memic:
		compute mimic;
	otherwise:
		if the noun is not emptied:
			if the noun is wooden crate and the noun is not trapped and diaper quest is 1 and diaper messing >= 4 and the class of the player is santa's little helper and woman-player is stranger and the player is getting unlucky:
				set up woman-player;
				now the woman-bimbo of woman-player is 4;
				now the woman-old-bimbo of woman-player is 4;
				now woman-player is in the location of the player;
				now woman-player is caged;
				now the woman-status of woman-player is 103;
				now the woman-diaper-state of woman-player is 5;
				say "Instead of an item... You find... A person?! And not just any person, but a [man of woman-player] curled up in a pink latex bodysuit and the largest, fullest, stinkiest diaper you've ever seen, with nothing but laxatives to drink for the duration of [his of woman-player] imprisonment. ";
				if the player is air breathing vulnerable:
					say "As soon as you have opened the lid, the horrid fumes hit your nostrils.";
					SmellGrossOut messyDiaperSmellGrossnessLevel;
				say "And to think, this poor [man of woman-player] has been smelling [his of woman-player] own sordid aroma for who-knows-how-long!!![paragraph break]Looking more closely, you can see that [his of woman-player] arms and legs are tied up by ribbons - impossible for [him of woman-player] to untie on [his of woman-player] own, but trivial for you to free [him of woman-player]. There's also a note, that reads [']To Aika, Happy Christmas x['], but you have no idea who Aika is.[paragraph break]You could probably [bold type]pull[roman type] on [his of woman-player] bindings to release [him of woman-player][if the player is air breathing vulnerable], or get out of here before the gross smell further offends your olfactory senses[end if].";
			otherwise:
				add treasure to the noun;
		otherwise if the number of objects in the noun is 0:
			say "How lame, it's empty.";
		otherwise:
			say "The [noun] [unless the noun is BellyRoom01]still [end if]contains [ShortDesc of list of things in the noun].";
		if the noun is trapped:
			say "CLICK! Opening this container has triggered a trap!";
			repeat with T running through untriggered click traps in the location of the player:
				if the click-trigger of T is the noun:
					now focused-thing is T;
					trigger T.
The reveal any newly visible interior rule is not listed in the report opening rulebook.
The standard report opening rule is not listed in the report opening rulebook.

Check closing a container:
	if the noun is open and the noun is not pink wardrobe, say "You don't see the point." instead.

Opening ends here.
