Glittering Rose by Headgear begins here.

glittering rose is a headgear. glittering rose is blondeness-positive. glittering rose is brightness-positive. glittering rose is redness-positive. glittering rose is hair growing. glittering rose is dexterity-influencing. glittering rose is womanly. The text-shortcut of glittering rose is "gr". Understand "glit", "glitter" as glittering rose.

The printed name of glittering rose is "[clothing-title-before]glittering rose[clothing-title-after]".

Figure of glittering rose is the file "Items/Accessories/Head/rose1.png".

To decide which figure-name is the clothing-image of (C - glittering rose):
	decide on figure of glittering rose.

To say ClothingDesc of (H - glittering rose):
	say "A cream coloured rose, with glittering fairy dust collected in the space between its petals.".

To say ShortDesc of (H - glittering rose):
	say "cream rose".

To compute SelfExamineDesc of (H - glittering rose):
	let X be the largeness of hair;
	say "A cream coloured rose rests in your [ShortDesc of hair]. ".

Definition: glittering rose is roleplay if the player is female and pregnancy fetish is 1.

Definition: glittering rose is flower themed: decide yes.
Definition: glittering rose is white themed: decide yes.

To decide which number is the strength-influence of (C - glittering rose):
	let X be the total fill of belly / 3;
	if abyssal tattoo is worn, increase X by 2;
	decrease X by the raw intelligence of the player / 5;[the higher your intelligence, the larger the debuff]
	decide on X.

To decide which number is the dexterity-influence of (C - glittering rose):
	let X be the total fill of belly / 3;
	if abyssal tattoo is worn, increase X by 2;
	decrease X by the raw intelligence of the player / 5;
	decide on X.


Chapter - Class Outfit

Definition: glittering rose is removal-blocking if wearing-target is butterfly wings.

fairy-summoned is a number that varies.

To compute class outfit of (H - glittering rose):
	let B be a random off-stage butterfly wings;
	let W be a random off-stage fairy wand;
	if B is actually summonable or (B is butterfly wings and fairy-summoned is 0):
		if fairy-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		summon B;
		now the raw-magic-modifier of B is 0;
		say "A giant pair of wings appear on your back. You feel lighter!";
		now fairy-summoned is 1;
	otherwise if W is fairy wand:
		summon W;
		now the raw-magic-modifier of W is the number of alive fairy / 2;
		say "You notice a peculiar warm feeling in your hand, and look down to see a tiny pink wand just barely large enough for you resting in your grasp".

Chapter - Quest

babymaking-quest is a headgear-clothing-quest. babymaking-quest has a number called previously-pregnant.

To uniquely set up (C - glittering rose):
	now the quest of C is babymaking-quest;
	if the pregnancy of the player > 0, now the previously-pregnant of babymaking-quest is 1.

To say QuestFlav of (Q - babymaking-quest):
	say "You sense it wants you to get pregnant.".

To say QuestTitle of (Q - babymaking-quest):
	say " (baby-making quest)".

This is the check for new pregnancy rule:
	if previously-pregnant of babymaking-quest is 0:
		if the pregnancy of the player > 0:
			now the previously-pregnant of babymaking-quest is 1;
			progress quest of babymaking-quest;
	otherwise if the pregnancy of the player <= 0:
		now the previously-pregnant of babymaking-quest is 0.
The check for new pregnancy rule is listed in the advance counters rules.



Glittering Rose ends here.

