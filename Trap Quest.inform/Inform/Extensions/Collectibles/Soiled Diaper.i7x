Soiled Diaper by Collectibles begins here.

A soiled-diaper is a kind of collectible. There are 30 soiled-diapers. The printed name of soiled-diaper is "[TQlink of item described]soiled [diaper-origin of item described][shortcut-desc][TQxlink of item described][verb-desc of item described]". Figure of soiled-diaper is the file "Items/Collectibles/diaper1.jpg". Understand "soiled", "diaper" as soiled diaper.

To decide which number is the outrage of (S - a soiled-diaper):
	if diaper quest is 1, decide on 0;
	decide on 20.
To decide which number is the cringe of (S - a soiled-diaper):
	decide on 20.

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
	if there is a carried soiled-diaper or there is a soiled-diaper in the location of the player or there is a messed knickers in the location of the player or there is a carried messed knickers or there is a messy monster in the location of the player:
		if turnsWithSoiledDiaper < 100, increase turnsWithSoiledDiaper by 1;
		if turnsWithSoiledDiaper is 1 and the player is perturbed and the player is not grossed out, say "The gross smell of the soiled diaper is gradually filling your nostrils.";
	otherwise if turnsWithSoiledDiaper > 0 and the number of worn messed knickers is 0:
		now turnsWithSoiledDiaper is (turnsWithSoiledDiaper * 3) / 4;
		if turnsWithSoiledDiaper > 0, say "The gross smell is gradually leaving your nostrils[one of]. It will be gone soon[or][stopping].";
		otherwise say "The gross smell has completely gone, and you are no longer grossed out.".
The soiled diapers smell gross rule is listed first in the all later time based rules. [Listed early to make sure that the notification that the player is upset about mess comes after it.]

To say unique-verb-desc of (T - a soiled-diaper):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if there is a friendly witch in the location of the player] [link][bracket]witch[close bracket][as]give [text-shortcut of T] to witch[end link][end if]".

Carry out examining:
	if the noun is a monster:
		let N be the number of soiled-diaper retained by the noun;
		if N > 0:
			say "[big he of the noun] is carrying [if N is 1]a soiled diaper[otherwise][N] soiled diapers[end if] in [his of the noun] hand[if N > 1]s[end if][if the noun is intelligent]. [big he of the noun] doesn't look happy about it[end if].".

A diaper pail is a kind of thing. A diaper pail is not portable. The printed name of diaper pail is "[TQlink of item described]diaper pail[shortcut-desc][TQxlink of item described][verb-desc of item described]". Figure of diaper pail is the file "Env/MultiFloor/pail1.png". Understand "diaper pail", "pail" as a diaper pail.
Figure of diaper pail dunk is the file "Special/Cutscene/cutscene-diaper-pail1.jpg".

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
	now the source-room of DiaperPail is the location of the player;
	now the player is in DiaperPail;
	now diaperPailStruggleAttempts is 0.

To compute diaper pail exit:
	repeat with SD running through soiled-diapers in DiaperPail:
		add SD to the pailed-diapers of most-recent-pail, if absent;
		remove SD from play;
	now the player is in the location of the source-room of DiaperPail.

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

An all later time based rule (this is the diaper pail stuck rule):
	if the player is in DiaperPail:
		cutshow figure of diaper pail dunk;
		let N be the number of soiled-diaper in DiaperPail;
		if a random number between 0 and N is not 0:
			say "The horrid aroma of the [if N > 1][N] used diapers[otherwise]messy diaper[end if] pressed against your face overwhelms your senses, [one of]and leaves you feeling smaller than before[or]almost making you cry[or]making you feel [if the player is feeling dominant]less dominant[otherwise]more submissive[end if] by the second[in random order].";
			SilentlyDelicateUp 1.

BabChanging it with is an action applying to two things.
Check BabChanging it with:
	if the noun is not a monster, say "This command only works on NPCs." instead;
	if the second noun is not a clean diaper and the second noun is not a diaper bag of holding and the second noun is not a baby diaper bag of holding, say "You would need a clean diaper or diaper bag to do that, not the [NameDesc of the second noun]." instead;
	if the second noun is worn diaper, say "You would need to take that off first." instead;
	if the noun is not messy, say "[big he of the noun] isn't [if the noun is defeated]in need of[otherwise]likely to let you do[end if] that." instead;
	if playerRegion is School, say "That would be a waste of time. [big he of the noun] would just mess [himself of the noun] again almost instantly." instead;
	if the player is immobile or the player is in danger, say "You're a bit busy." instead;
	if the player is not able to use manual dexterity, say "Your limited manual dexterity makes this impractical." instead.

Carry out BabChanging it with:
	allocate 6 seconds;
	say "Settling [NameDesc of the noun] onto [his of the noun] back, you get to work cleaning up [his of the noun] messy nappy and replacing it with [if the second noun is a diaper][NameDesc of the second noun][otherwise]a diaper from your [MediumDesc of the second noun][end if]. Eventually [he of the noun][']s all clean and safely padded again.";
	now the refactory-period of the noun is a random number between -100 and 300;
	let SD be a random off-stage soiled-diaper;
	if diaper messing >= 6 and SD is soiled-diaper:
		now SD is carried by the player;
		say "You are now carrying the yucky [SD] that [he of the noun] was wearing before.";
	only destroy the second noun.
Understand "change [a person] with [something]", "change [a person] into [something]" as BabChanging it with.

Soiled Diaper ends here.
