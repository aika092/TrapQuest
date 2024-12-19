Taking Off by Actions begins here.

Does the player mean taking off a worn clothing: it is very likely.

Understand "rm [something]" as taking off.

Check taking off insertable:
	unless the noun is clothing, try unplugging the noun instead.

Check taking off worn arm covering clothing:
	if the player is wrist bound, say "You won't be able to successfully get this off whilst your wrists are bound..." instead.

Check taking off worn leg covering clothing:
	if the player is ankle bound, say "You won't be able to successfully get this off whilst your ankles are bound..." instead.

Definition: a clothing is curse-sticky: [If it's cursed, it can't be taken off]
	if the class of the player is cultist, decide no;
	if the player is in Predicament20, decide no;
	decide yes.

Definition: a headgear is curse-sticky: decide yes.

Check taking off clothing:
	unless the noun is bag of holding: [these checks are already performed once in the bag of holding's own 'check taking off' block]
		if the noun is glued, try tearing off the noun instead;
		now summoning is 0;
		unless the noun is actually removable, do nothing instead.

Carry out taking off something:
	dislodge the noun.

Carry out taking off clothing:
	allocate arm use;
	allocate 6 seconds;
	if another-turn is 0 and the noun is difficult to remove:
		now another-turn is 1;
		now another-turn-flavour is the substituted form of "It takes a long time to finish taking [NameDesc of the noun] off.";
	if forgetful airhead is 1:
		unless the noun is alwaysIdentified clothing, now the noun is unidentified;
		unless the noun is alwaysSure clothing, now the noun is unsure;
	now the top-layer of the noun is 0;
	now the mid-layer of the noun is 0;
	now the bottom-layer of the noun is 0;
	now the noun is crotch-in-place;
	if the noun is stuck, now the noun is in the location of the player;
	if the noun is actually breast covering or the noun is potentially at least partially asshole covering or the noun is sex toy or the noun is potentially pussy covering:
		unless the front-skirt-length of the noun >= 5 and the noun is not slitted, compute player submission; [longer skirts would be a tactical advantage to remove, as they can improve kneeing and kicking]
	if the noun is actually breast covering clothing:
		repeat with M running through willing to do titfucks dangerous intelligent monsters in the location of the player:
			say "[BigNameDesc of M] looks at you inquisitively, clearly interested in what you might have in mind.";
			strongHumiliate;
	if the noun is scrunchie:
		if the player is ponytailed, say "You remove one scrunchie, and the rest of your hair appears magically inside the other in a perfect ponytail!";
		otherwise say "Your hair falls into its natural position.".

Taking Off ends here.
