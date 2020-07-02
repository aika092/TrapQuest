Taking Off by Actions begins here.

Does the player mean taking off a worn clothing: it is very likely.

Understand "rm [something]" as taking off.

Check taking off insertable:
	unless the noun is clothing, try unplugging the noun instead.

Check taking off worn arm covering clothing:
	if the player is wrist bound, say "You won't be able to successfully get this off whilst your wrists are bound..." instead.

Check taking off worn leg covering clothing:
	if the player is ankle bound, say "You won't be able to successfully get this off whilst your ankles are bound..." instead.

Definition: a clothing (called C) is curse-sticky: [If it's cursed, it can't be taken off]
	decide yes.

Check taking off something:
	if the noun is cursed and the noun is worn and the class of the player is not cultist and the noun is curse-sticky:
		now the noun is sure;
		say "It refuses to budge!" instead;
	if the noun is locked clothing and the noun is worn, say "It's locked!" instead;
	if the latex-transformation of the player is 8 and the noun is not wrist bond and the noun is not ankle bond, say "You don't have the manual dexterity to do that!" instead;
	if the noun is glued:
		try tearing off the noun;
		if the noun is glued:
			do nothing instead;
	unless the noun is shoes and the player is dildo stuck:
		if the player is immobile, say "You're a bit tied up at the moment." instead.

Carry out taking off something:
	dislodge the noun.

Report taking off clothing:
	allocate arm use;
	allocate 6 seconds;
	if forgetful airhead is 1:
		unless the noun is alwaysIdentified clothing, now the noun is unidentified;
		unless the noun is alwaysSure clothing, now the noun is unsure;
	now the top-layer of the noun is 0;
	now the mid-layer of the noun is 0;
	now the bottom-layer of the noun is 0;
	now the noun is crotch-in-place;
	if the noun is stuck, now the noun is in the location of the player;
	if the noun is actually breast covering or the noun is potentially at least partially asshole covering or the noun is sex toy or the noun is potentially pussy covering:
		unless the noun is knee-length or longer skirt and the noun is not slitted, compute player submission; [skirts would be a tactical advantage to remove, as they can allow kicking]
	if the noun is actually breast covering clothing:
		repeat with M running through willing to do titfucks dangerous intelligent monsters in the location of the player:
			say "[BigNameDesc of M] looks at you inquisitively, clearly interested in what you might have in mind.";
			humiliate 125;
	if the noun is scrunchie:
		if the player is ponytailed, say "You remove one scrunchie, and the rest of your hair appears magically inside the other in a perfect ponytail!";
		otherwise say "Your hair falls into its natural position.";

Taking Off ends here.
