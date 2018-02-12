Taking Off by Actions begins here.

Does the player mean taking off a worn clothing: it is very likely.

Understand "rm [something]" as taking off.

Check taking off insertable:
	unless the noun is clothing, try unplugging the noun instead.

Check taking off worn finger covering clothing:
	if there is a worn ring, say "You need to remove your ring[if the number of worn rings > 1]s[end if] first." instead.

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

Report taking off something:
	if forgetful airhead is 1:
		now the magic-ID of the noun is unidentified;
		now the curse-ID of the noun is unsure;
	now the noun is not penetrating asshole;
	now the noun is not penetrating vagina;
	now the noun is not penetrating face;
	now the top-layer of the noun is 0;
	now the mid-layer of the noun is 0;
	now the bottom-layer of the noun is 0;
	now the noun is crotch-in-place;
	if the noun is stuck, now the noun is in the location of the player;
	if the player is prone and the noun is not bondage:
		compute player submission;
	do nothing;
	if the noun is actually breast covering:
		repeat with M running through willing to do titfucks dangerous intelligent monsters in the location of the player:
			say "The [M] looks at you inquisitively, clearly interested in what you might have in mind.";
			humiliate 125;
	if the noun is scrunchie:
		if the player is ponytailed, say "You remove one scrunchie, and the rest of your hair appears magically inside the other in a perfect ponytail!";
		otherwise say "Your hair falls into its natural position.";
	now seconds is 6.


Taking Off ends here.

