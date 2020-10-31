Glittering Rose by Headgear begins here.

glittering rose is a headgear. glittering rose is blondeness-positive. glittering rose is brightness-positive. glittering rose is redness-positive. glittering rose is hair growing. glittering rose is dexterity-influencing. glittering rose is womanly. The text-shortcut of glittering rose is "glr". Understand "glit", "glitter" as glittering rose.

The printed name of glittering rose is "[clothing-title-before]glittering rose[clothing-title-after]".

Figure of glittering rose is the file "Items/Accessories/Head/rose1.png".

To decide which figure-name is the clothing-image of (C - glittering rose):
	decide on figure of glittering rose.

To say ClothingDesc of (H - glittering rose):
	say "A pink rose, with glittering fairy dust collected in the space between its petals.".

To say ShortDesc of (H - glittering rose):
	say "rose".

To compute SelfExamineDesc of (H - glittering rose):
	let X be the largeness of hair;
	say "A rose rests in your [ShortDesc of hair]. ".

Definition: glittering rose is roleplay:
	if the player is possessing a vagina and pregnancy fetish is 1, decide yes;
	decide no.

Definition: glittering rose is flower themed: decide yes.
Definition: glittering rose is pink themed: decide yes.

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

Definition: glittering rose is removal-blocking:
	if wearing-target is butterfly wings or wearing-target is fairy wand, decide yes;
	decide no.

fairy-summoned is a number that varies.

To compute class outfit of (H - glittering rose):
	let W be a random off-stage fairy wand;
	if butterfly wings is off-stage and (butterfly wings is actually summonable or fairy-summoned is 0):
		PinkWardrobeUnclash butterfly wings;
		PinkWardrobeUnclash red-pasties;
		summon butterfly wings uncursed;
		say "A giant pair of wings appear on your back. You feel lighter!";
		summon red-pasties cursed;
		say "A pair of red pasties appears on your nipples!";
		now the raw-magic-modifier of red-pasties is 0;
		now the quest of red-pasties is vaginal-creampie-quest;
		now vaginal-creampie-quest is persistent;
		now red-pasties is vaginal-sex-addiction-influencing;
		say QuestFlav of red-pasties;
		now fairy-summoned is 1;
	otherwise if W is fairy wand and W is actually summonable:
		summon W uncursed;
		now the raw-magic-modifier of W is childValue times 1;
		say "You notice a peculiar warm feeling in your hand, and look down to see a tiny pink wand just barely large enough for you resting in your grasp.";
		if the magic-power of the player < 2, MagicPowerUp 2.

Chapter - Quest

babymaking-quest is a headgear-clothing-quest. babymaking-quest has a number called previously-pregnant.

To uniquely set up (C - glittering rose):
	now the quest of C is babymaking-quest;
	if the pregnancy of the player > 0 and the pregnancy of the player < 3, now the previously-pregnant of babymaking-quest is 1.

To say QuestFlav of (Q - babymaking-quest):
	say "You sense it wants you to get pregnant.".

To say QuestTitle of (Q - babymaking-quest):
	say " (baby-making quest)".

An all later time based rule (this is the check for new pregnancy rule):
	if previously-pregnant of babymaking-quest is 0:
		if the pregnancy of the player > 0 and the pregnancy of the player < 3:
			now the previously-pregnant of babymaking-quest is 1;
			progress quest of babymaking-quest;
	otherwise if the pregnancy of the player <= 0:
		now the previously-pregnant of babymaking-quest is 0.

Glittering Rose ends here.
