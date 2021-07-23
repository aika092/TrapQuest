Scrunchies by Headgear begins here.

A scrunchie is a kind of headgear. A scrunchie is usually hair growing. Understand "scrunchie" as a scrunchie.

A scrunchie is blondeness-positive. A scrunchie is brightness-positive. A scrunchie is womanly.

The printed name of scrunchie is usually "[clothing-title-before]blue scrunchie[clothing-title-after]". The printed plural name of scrunchie is usually "[clothing-title-before]blue scrunchies[clothing-title-after]". The text-shortcut of scrunchie is "scr".

To compute SelfExamineDesc of (H - a scrunchie):
	let X be the largeness of hair;
	say "You have [ShortDesc of hair]. ".

This is the scrunchie must be the same colour rule:
	if there is a worn blue scrunchie:
		if wearing-target is scrunchie and wearing-target is not blue scrunchie:
			if summoning is 0 and autowear is false, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn pink scrunchie:
		if wearing-target is scrunchie and wearing-target is not pink scrunchie:
			if summoning is 0 and autowear is false, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn monkey scrunchie:
		if wearing-target is scrunchie and wearing-target is not monkey scrunchie:
			if summoning is 0 and autowear is false, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn pigtail-scrunchie:
		if wearing-target is scrunchie:
			if summoning is 0 and autowear is false, say "You are already wearing two hair ties!";
			rule fails.
The scrunchie must be the same colour rule is listed in the headgear wearability rules.

To set up influence of (C - a scrunchie):
	set up submissiveness-based influence of C.

[!<YourselfIsPonytailed>+

Does the player have a ponytail?

+!]
Definition: yourself is ponytailed:
	if the player is pigtailed, decide no;
	let S be the number of worn scrunchies;
	if S is 1 and the largeness of hair > 4, decide yes;
	decide no.

[!<YourselfIsPigtailed>+

Does the player have pigtails?

+!]
Definition: yourself is pigtailed:
	if there is a worn pigtail-scrunchie, decide yes;
	let S be the number of worn scrunchies;
	if S is 2 and the largeness of hair > 1, decide yes;
	decide no.

To decide which number is the initial outrage of (C - a scrunchie):
	if the number of worn scrunchies < 2, decide on 0;
	if diaper quest is 1, decide on 0;
	decide on 3.

To decide which number is the initial cringe of (C - a scrunchie):
	if the number of worn scrunchies < 2, decide on 0;
	decide on 4.

Definition: a scrunchie is transformation-protected:
	if the player is not pigtailed, decide yes;
	decide no.

Chapter 1 - Pink Scrunchie

[Obtained from the mannequin]

A pink scrunchie is a kind of scrunchie. A pink scrunchie is usually cursed. pink-scrunchie-1 is a pink scrunchie. pink-scrunchie-2 is a pink scrunchie. The text-shortcut of pink-scrunchie-1 is "psc1". The text-shortcut of pink-scrunchie-2 is "psc2". pink-scrunchie-1 is roleplay.
Understand "pink" as a pink scrunchie.
Figure of left pink scrunchie is the file "Items/Accessories/Head/scrunchie1a.png".
Figure of right pink scrunchie is the file "Items/Accessories/Head/scrunchie1b.png".

To decide which figure-name is the examine-image of (C - pink-scrunchie-1):
	decide on figure of left pink scrunchie.
To decide which figure-name is the examine-image of (C - pink-scrunchie-2):
	decide on figure of right pink scrunchie.

The printed name of a pink scrunchie is "[clothing-title-before]pink scrunchie[clothing-title-after]".
The printed plural name of a pink scrunchie is "[clothing-title-before]pink scrunchies[clothing-title-after]".

To say ShortDesc of (H - a pink scrunchie):
	say "pink scrunchie".

To say ClothingDesc of (H - a pink scrunchie):
	say "A pink puffy hair tie used to style hair.".

Check wearing pink scrunchie:
	if the noun is worn:
		repeat with B running through pink scrunchies in the location of the player:
			if B is not worn, try wearing B instead;
	if there is a worn blue scrunchie, say "Pink and blue don't go together, you need to find another pink one!" instead.

To decide which number is the intelligence-influence of (H - a pink scrunchie):
	decide on -1.
Definition: a pink scrunchie is pink themed: decide yes.

To compute (C - a scrunchie) unique inheriting from (D - a scrunchie):
	if D is temptation, now C is temptation. [To make sure they can still succeed at greeting quest]

Chapter - Class Outfit

To compute unique recycling of (C - a pink scrunchie):
	if the class of the player is not cheerleader, now the cheer-greets of greet-quest is 0.

To compute class outfit of (H - a pink scrunchie):
	class summon longsleeved cheerleader outfit;
	if the class of the player is cumdumpster, class summon condom-pom-pom;
	otherwise class summon purple-pom-pom.

Chapter - Quest

greet-quest is a headgear-clothing-quest. greet-quest has a number called cheer-greets.

To uniquely set up (C - a pink scrunchie):
	let X be a random worn pink scrunchie;
	if X is scrunchie, now the magic-curse of C is the magic-curse of X; [don't want them to be desynchronised]
	now the quest of C is greet-quest.

To say QuestFlav of (Q - greet-quest):
	say "You sense it wants you to talk to (intelligent) friendly people who *might* want to [if diaper quest is 1]punish[otherwise]fuck[end if] you[if the class of the player is not cheerleader]. (You'll first have to wait until you fully become a cheerleader.)[otherwise].[end if]".

To say QuestTitle of (Q - greet-quest):
	say " (attention seeking quest)".

To progress quest of (Q - greet-quest):
	increase the cheer-greets of Q by 1;
	let S be a random worn headgear;
	if the cheer-greets of Q < (a random number between 3 and 4) and S is headgear and the quest of S is Q:
		say "Your [ShortDesc of S] pulses happily. Keep it up!";
	otherwise:
		now the cheer-greets of Q is 0;
		repeat with C running through worn clothing:
			if the quest of C is Q, compute quest completion of Q on C.

Chapter 2 - Blue Scrunchie

[The first is obtained from dungeon apothecary, second is obtained from hotel library.]

A blue scrunchie is a kind of scrunchie. A blue scrunchie is usually cursed. blue-scrunchie-1 is a blue scrunchie. blue-scrunchie-2 is a blue scrunchie. blue-scrunchie-1 is in Dungeon27. blue-scrunchie-2 is in Hotel24. The text-shortcut of blue-scrunchie-1 is "bsc1". The text-shortcut of blue-scrunchie-2 is "bsc2". blue-scrunchie-2 is roleplay. [This is the one that is unobtainable for longer]
Understand "blue" as a pink scrunchie.

Figure of left blue scrunchie is the file "Items/Accessories/Head/scrunchie2a.png".
Figure of right blue scrunchie is the file "Items/Accessories/Head/scrunchie2b.png".

To decide which figure-name is the examine-image of (C - blue-scrunchie-1):
	decide on figure of left blue scrunchie.
To decide which figure-name is the examine-image of (C - blue-scrunchie-2):
	decide on figure of right blue scrunchie.

Definition: a blue scrunchie is immune to change: decide yes.
Definition: a blue scrunchie is blue themed: decide yes.

To say ShortDesc of (H - a blue scrunchie):
	say "blue scrunchie".

To say ClothingDesc of (H - a blue scrunchie):
	say "An elastic blue hair tie used to style hair.".

Check wearing blue scrunchie:
	if the noun is worn:
		repeat with B running through blue scrunchies in the location of the player:
			if B is not worn, try wearing B instead;
	if there is a worn pink scrunchie, say "Pink and blue don't go together, you need to find another blue one!" instead.

Report wearing blue scrunchie:
	uniquely set up the noun; [We need to make sure that if it's not got the right quest and BUC that it gets it now]
	if diaper quest is 1:
		if the player is ponytailed, say "Your hair magically changes colour and is now platinum blonde!";
		otherwise say "Your hair magically changes colour and is now dark brown!".

Chapter - Class Outfit

To compute class outfit of (H - a blue scrunchie):
	if diaper quest is 0 and the player is not pigtailed:
		class summon tartan tube top;
		class summon necktie;
		class summon tartan miniskirt;
		class summon fishnet stockings;
	otherwise:
		if the silicone volume of breasts > 0:
			class summon daddy issues dress;
		otherwise:
			class summon cheeky schoolgirl outfit;
			class summon frilly stockings;
		if the number of worn knickers + the number of worn trousers is 0, class summon purple-pom-pom.

Chapter - Quest

recipe-quest is a headgear-clothing-quest.

To uniquely set up (C - a blue scrunchie):
	let X be a random worn blue scrunchie;
	if X is scrunchie, now the magic-curse of C is the magic-curse of X; [don't want them to be desynchronised]
	now the quest of C is recipe-quest.

To say QuestFlav of (Q - recipe-quest):
	say "You sense that it wants you to craft an item using a recipe you've learned.".

To say QuestTitle of (Q - recipe-quest):
	say " (recipe crafting quest)".

To compute generic first time class reward of (Q - recipe-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is ruby;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.

Chapter 3 - Monkey Scrunchie

A monkey scrunchie is a kind of scrunchie. monkey-scrunchie-1 is a monkey scrunchie. monkey-scrunchie-2 is a monkey scrunchie. The text-shortcut of monkey-scrunchie-1 is "msc1". The text-shortcut of monkey-scrunchie-2 is "msc2".

Figure of left monkey scrunchie is the file "Items/Accessories/Head/scrunchie3a.png".
Figure of right monkey scrunchie is the file "Items/Accessories/Head/scrunchie3b.png".

To decide which figure-name is the clothing-image of (C - monkey-scrunchie-1):
	decide on figure of left monkey scrunchie.
To decide which figure-name is the clothing-image of (C - monkey-scrunchie-2):
	decide on figure of right monkey scrunchie.

Definition: a monkey scrunchie is brown themed: decide yes.

The printed name of monkey scrunchie is usually "[clothing-title-before]monkey scrunchie[clothing-title-after]".
The printed plural name of monkey scrunchie is usually "[clothing-title-before]monkey scrunchies[clothing-title-after]".

To decide which number is the initial cringe of (H - a monkey scrunchie):
	decide on 4.

To say ShortDesc of (H - a monkey scrunchie):
	say "monkey scrunchie".

To say ClothingDesc of (H - a monkey scrunchie):
	say "A childish elastic brown hair tie with little monkeys, used to style hair.".

Definition: a monkey scrunchie is transformation-protected: decide yes.

To transform (D - a blue scrunchie) into (C - a monkey scrunchie):
	say "Your [printed plural name of D] transform into ";
	silently transform D into C;
	now D is a random worn blue scrunchie;
	now C is a random off-stage monkey scrunchie;
	silently transform D into C;
	say "[printed plural name of C] in front of your eyes!"; [no image necessary since it'll be on character window]
	say "[TransformReaction of C]".

To decide if a monkey scrunchie is roleplay:
	if diaper quest is 0, decide no;
	decide yes;

To compute class outfit of (H - a monkey scrunchie):
	if the silicone volume of breasts > 0, class summon daddy issues dress;
	otherwise class summon cheeky schoolgirl outfit;
	class summon frilly stockings.

Part - Pigtail Scrunchies

A pigtail-scrunchie is a kind of scrunchie.
To transform (D - a scrunchie) into (C - a pigtail-scrunchie):
	say "Your [if the player is pigtailed][printed plural name of D] transform[otherwise][ShortDesc of D] transforms[end if] into a ";
	silently transform D into C;
	repeat with S running through worn scrunchies:
		unless S is C, only destroy S;
	say "[printed name of C] in front of your eyes!";
	say "[TransformReaction of C]".

To compute class outfit of (C - a pigtail-scrunchie):
	if the quest of C is recipe-quest:
		if the silicone volume of breasts > 0, class summon daddy issues dress;
		otherwise class summon cheeky schoolgirl outfit;
		class summon frilly stockings;
	otherwise:
		class summon blue-rubber-cheerleader-outfit;
	class summon condom-pom-pom.


Chapter 5 - Helium Balloons

A pair of helium balloons is a kind of pigtail-scrunchie. A pair of helium balloons is usually latex. The text-shortcut of a pair of helium balloons is "pohb". There is 1 pair of helium balloons.

To decide which figure-name is the clothing-image of (C - a pair of helium balloons):
	decide on figure of helium balloons.

The printed name of a pair of helium balloons is "[clothing-title-before]pair of helium balloons[clothing-title-after]".

To decide which number is the initial outrage of (H - a pair of helium balloons):
	decide on 13.

To say ShortDesc of (H - a pair of helium balloons):
	say "helium balloons".
To say MediumDesc of (H - a pair of helium balloons):
	say "pair of helium balloons".

To say ClothingDesc of (H - a pair of helium balloons):
	say "Two helium balloons rise from each of your pigtails, attached by a piece of string. One has 'FUCK' written on it, and the other has 'DOLL' written on it.".

Definition: a pair of helium balloons is transformation-protected: decide yes.

Definition: a pair of helium balloons is roleplay: decide no.

Definition: a pair of helium balloons is oral sex themed: decide yes.
Definition: a pair of helium balloons is inflation themed: decide yes.

To decide which number is the heaviness of (H - a pair of helium balloons):
	decide on -20. [This needs to be big as it's divided by 5 when worn]

To decide which number is the relieved heaviness of (H - a pair of helium balloons):
	if there is a worn bag of holding, decide on 0;
	decide on -4.

To decide which object is the unique-upgrade-target of (C - a scrunchie):
	if diaper lover > 0, decide on a random off-stage monkey scrunchie;
	decide on a random off-stage pair of helium balloons.

To check upgrade target of (C - scrunchie): [we don't validate that scrunchie upgrade targets are summonable if the scrunchie is removed. it would give a false negative because there's two worn scrunchies]
	do nothing.

Chapter 6 - Condom Pigtails

A condom pigtails is a pigtail-scrunchie. A condom pigtails is latex. The text-shortcut of a condom pigtails is "cndp".

To decide which figure-name is the clothing-image of (C - a condom pigtails):
	decide on figure of condom pigtails.

The printed name of a condom pigtails is "[clothing-title-before]condom pigtails[clothing-title-after]".

To decide which number is the initial outrage of (H - a condom pigtails):
	decide on 15.

To say ShortDesc of (H - a condom pigtails):
	say "condom hairties".
To say MediumDesc of (H - a condom pigtails):
	say "used condom pigtail hairties".

To say ClothingDesc of (H - a condom pigtails):
	say "Two used condoms [if H is worn]have been[otherwise]could be[end if] used to tie your hair into naughty-looking pigtails.".

Definition: a condom pigtails is transformation-protected: decide yes.

Definition: a condom pigtails is roleplay: decide no.

Definition: a condom pigtails is semen themed: decide yes.

Scrunchies ends here.
