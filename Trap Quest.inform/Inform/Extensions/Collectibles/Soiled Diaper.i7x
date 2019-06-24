Soiled Diaper by Collectibles begins here.

A soiled-diaper is a kind of collectible. There are 30 soiled-diapers. The printed name of soiled-diaper is "[TQlink of item described]soiled [diaper-origin of item described][shortcut-desc][TQxlink of item described][verb-desc of item described]". Figure of soiled-diaper is the file "Items/Collectibles/diaper1.jpg". Understand "soiled", "diaper" as soiled diaper.

The text-shortcut of soiled-diaper is "sdp".

A soiled-diaper has a text called diaper-origin. The diaper-origin of a soiled-diaper is usually "disposable diaper". Understand the diaper-origin property as describing a soiled-diaper.
To say ExamineDesc of (C - a soiled-diaper):
	say "A nasty used [diaper-origin of C]. You know what's in it. There's nothing to do but find somewhere to properly dispose of it[if there is a worn bag of holding]. It isn't allowed to be put in your [ShortDesc of a random worn bag of holding], so you have to carry it around, completely visible[end if].".
To say ShortDesc of (C - a soiled-diaper):
	say "used diaper".
To say MediumDesc of (C - a soiled-diaper):
	say "used [diaper-origin of C]".
To decide which figure-name is the examine-image of (C - a soiled-diaper):
	decide on figure of soiled-diaper.

Definition: a soiled-diaper is never-in-bag: decide yes.
To decide which number is the heaviness of (H - a soiled-diaper):
	decide on 2.

To DiaperPrint (SD - a soiled-diaper) from (C - a diaper):
	now the diaper-origin of SD is the substituted form of "[ShortDesc of C]".

A game universe initialisation rule:
	let DSC be 1;
	repeat with C running through soiled-diaper:
		if the text-shortcut of C is "sdp":
			now the text-shortcut of C is substituted form of "sdp[DSC]";
			increase DSC by 1.

turnsWithSoiledDiaper is a number that varies.
This is the soiled diapers smell gross rule:
	if there is a carried soiled-diaper or there is a soiled-diaper in the location of the player:
		increase turnsWithSoiledDiaper by 1;
	otherwise:
		now turnsWithSoiledDiaper is 0.
The soiled diapers smell gross rule is listed first in the advance counters rules. [Listed early to make sure that the notification that the player is upset about mess comes after it.]

To say unique-verb-desc of (T - a soiled-diaper):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if there is a friendly witch in the location of the player] [link][bracket]witch[close bracket][as]give [text-shortcut of T] to witch[end link][end if]".

Carry out examining:
	if the noun is a monster:
		let N be the number of soiled-diaper retained by the noun;
		if N > 0:
			say "[big he of the noun] is carrying [if N is 1]a soiled diaper[otherwise][N] soiled diapers[end if] in [his of the noun] hand[if N > 1]s[end if][if the noun is intelligent]. [big he of the noun] doesn't look happy about it[end if].".


A diaper pail is a kind of thing. A diaper pail is not portable. The printed name of diaper pail is "[TQlink of item described]diaper pail[shortcut-desc][TQxlink of item described][verb-desc of item described]". Figure of diaper pail is the file "Env/MultiFloor/pail1.png". Understand "diaper pail", "pail" as a diaper pail.

A game universe initialisation rule:
	if diaper messing < 6:
		repeat with D running through diaper pails:
			remove D from play.

Definition: a diaper pail is immune to change: decide yes.

The text-shortcut of diaper pail is "dpp".
To say ExamineDesc of (C - a diaper pail):
	say "A large bin specifically designed to keep the smell of used diapers from escaping.".
To say ShortDesc of (C - a diaper pail):
	say "diaper pail".
To decide which figure-name is the examine-image of (C - a diaper pail):
	decide on figure of diaper pail.

most-recent-pail is an object that varies.

dungeon-diaper-pail is a diaper pail. dungeon-diaper-pail is in Dungeon30.
hotel-diaper-pail is a diaper pail. hotel-diaper-pail is in Hotel20.
school-diaper-pail is a diaper pail. school-diaper-pail is in School07.
mansion-diaper-pail is a diaper pail. mansion-diaper-pail is in Mansion13.

a diaper pail has a list of soiled-diaper called the pailed-diapers.

Check inserting something into a diaper pail:
	if the noun is soiled-diaper or the noun is carried diaper:
		if the player is immobile or the player is in danger, say "You're a bit busy!" instead;
		allocate 3 seconds;
		say "You open the lid of the diaper pail[if the diaper addiction of the player < 12], holding your nose[end if], and drop [NameDesc of the noun] into it. You quickly close the lid again.";
		only destroy the noun;
		if the noun is soiled-diaper, add the noun to the pailed-diapers of the second noun, if absent;
	otherwise:
		say "That doesn't go in there." instead;
	do nothing instead.

diaperPailStruggleAttempts is a number that varies.

To compute diaper pail entrance:
	repeat with SD running through the pailed-diapers of most-recent-pail:
		remove SD from the pailed-diapers of most-recent-pail;
		if SD is off-stage, now SD is in DiaperPail;
	now the player is in DiaperPail;
	now diaperPailStruggleAttempts is 0.

To compute diaper pail exit:
	repeat with SD running through soiled-diapers in DiaperPail:
		add SD to the pailed-diapers of most-recent-pail, if absent;
		remove SD from play;
	now the player is in the location of most-recent-pail.

Check standing when the player is in DiaperPail:
	try jumping instead.
Check going up when the player is in DiaperPail:
	try jumping instead.

Check jumping when the player is in DiaperPail:
	allocate 6 seconds;
	let D be the square root of the dexterity of the player;
	if the player is wrist bound, decrease D by 5;
	increase diaperPailStruggleAttempts by 1;
	if diaperPailStruggleAttempts + (a random number between 0 and D) > 3:
		say "You manage to struggle free, falling out of the diaper pail and onto the floor with a clumsy thud.";
		compute diaper pail exit;
	otherwise:
		say "You don't make it out this time, but surely you will eventually! Keep trying!";
	do nothing instead.

A later time based rule:
	if the player is in DiaperPail:
		let N be the number of soiled-diaper in DiaperPail;
		if a random number between 0 and N is not 0:
			say "The horrid aroma of the [if N > 1][N] used diapers[otherwise]messy diaper[end if] pressed against your face overwhelms your senses, [one of]and leaves you feeling smaller than before[or]almost making you cry[or]making you feel [if the player is feeling dominant]less dominant[otherwise]more submissive[end if] by the second[in random order].";
			SilentlyDelicateUp 1;


Soiled Diaper ends here.
