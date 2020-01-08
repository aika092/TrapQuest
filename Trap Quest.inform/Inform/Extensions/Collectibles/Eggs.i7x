Eggs by Collectibles begins here.


An egg is a kind of collectible. An egg can be laid. An egg is usually not laid.

Definition: an egg is insertable: decide yes.

To compute toyInsertion of (S - an egg) into (F - asshole):
	let N be 1;
	let continueEgging be 1;
	destroy S;
	while continueEgging is 1:
		let remainingN be the number of small eggs in the location of the player;
		if S is small egg:
			increase remainingN by the number of carried small eggs;
		if S is medium egg:
			now remainingN is the number of medium eggs in the location of the player;
			increase remainingN by the number of carried medium eggs;
		if S is large egg:
			now remainingN is the number of large eggs in the location of the player;
			increase remainingN by the number of carried large eggs;
		now continueEgging is 0;
		if remainingN > 0:
			say "There [if remainingN is 1]is one [ShortDesc of S][otherwise]are [remainingN] [ShortDesc of S]s[end if] left. ";
			if N is 1:
				say "Do you want to push them all in? ";
				if the player is consenting:
					increase N by remainingN;
					now remainingN is 0;
					if S is small egg:
						repeat with E running through carried small eggs:
							destroy E;
						repeat with E running through small eggs in the location of the player:
							destroy E;
					if S is medium egg:
						repeat with E running through carried medium eggs:
							destroy E;
						repeat with E running through medium eggs in the location of the player:
							destroy E;
					if S is large egg:
						repeat with E running through carried large eggs:
							destroy E;
						repeat with E running through large eggs in the location of the player:
							destroy E;
			if remainingN > 0:
				say "Do you want to push another in? ";
				if the player is consenting:
					increase N by 1;
					now continueEgging is 1;
					let E be a random carried small egg;
					if S is small egg:
						if E is not a thing, let E be a random small egg in the location of the player;
					if S is medium egg:
						now E is a random carried medium egg;
						if E is not a thing, now E is a random medium egg in the location of the player;
					if S is large egg:
						now E is a random carried large egg;
						if E is not a thing, now E is a random large egg in the location of the player;
					if E is a thing, destroy E;
					otherwise now continueEgging is 0; [failsafe, should never happen]
	compute insertionRuin of S into F;
	if S is small egg, assfill N small eggs;
	if S is medium egg, assfill N medium eggs;
	if S is large egg, assfill N large eggs.

An egg has a number called hatching.

Check attacking egg:
	if the player is immobile, say "You're a bit busy!" instead;
	allocate 1 seconds;
	say "The shell is too strong! You can't damage it at all. If you want to get rid of it, perhaps you could [bold type]flush it down a toilet[roman type][line break]" instead.
Check slapping egg:
	try attacking the noun instead.
Check kneeing egg:
	try attacking the noun instead.
Check kicking egg:
	try attacking the noun instead.
Check dropping egg:
	if the location of the player is toilets:
		say "Do you mean dropping it down the toilet? ";
		if the player is consenting:
			if the player is immobile, say "You're a bit busy!" instead;
			if the number of carried eggs > 1:
				say "Do you want to flush all your eggs down the toilet? ";
				if the player is consenting:
					repeat with E running through carried eggs:
						unless E is the noun, compute flushing of E;
			compute flushing of the noun instead.

Report examining egg when egg laying fetish is 1:
	say "The strong shell can't be destroy by brute force, but perhaps you could [bold type]drop[roman type] it down the toilet.".

To compute flushing of (E - a thing):
	allocate 2 seconds;
	destroy E;
	say "You flush [NameDesc of E] down the toilet.".

To uniquely destroy (E - an egg):
	now the hatching of E is 0;
	now E is not laid.

A later time based rule:
	if playerRegion is not school:
		repeat with E running through on-stage eggs:
			if E is laid or the hatching of E > 0:
				compute hatchtime of E.

To compute hatchtime of (E - an egg):
	increase the hatching of E by a random number between 1 and 2;
	if E is held or E is in the location of the player:
		if the remainder after dividing the hatching of E by 30 is 0, say "[BigNameDesc of E] shudders[one of]. Is there something alive inside?![or].[stopping]";
	if the hatching of E > 130 and E is regional:
		compute hatch of E.


To compute hatch of (E - an egg):
	let L be a random off-stage larva;
	if L is larva:
		if E is held or E is in the location of the player, say "[BigNameDesc of E] cracks open, and a maggot-like tentacle larva worms its way out.[one of][line break][variable custom style]Gross![roman type][line break][or][stopping]";
		now L is in the location of E;
		larvaShortcutAssign L;
	otherwise:
		if E is held or E is in the location of the player, say "[BigNameDesc of E] fizzles into nothingness.";
	destroy E.

Definition: a small egg (called D) is available:
	if D is off-stage, decide yes;
	repeat with E running through off-stage small eggs:
		decide no;
	if D is in the location of the player, decide no;
	decide yes.

To decide which number is the crafting key of (E - a small egg):
	decide on 49.

Definition: a medium egg (called D) is available:
	if D is off-stage, decide yes;
	repeat with E running through off-stage medium eggs:
		decide no;
	if D is in the location of the player, decide no;
	decide yes.

To decide which number is the crafting key of (E - a medium egg):
	decide on 24.

Definition: a large egg (called D) is available:
	if D is off-stage, decide yes;
	repeat with E running through off-stage large eggs:
		decide no;
	if D is in the location of the player, decide no;
	decide yes.

To decide which number is the crafting key of (E - a large egg):
	decide on 25.

A small egg is a kind of egg. The printed name of small egg is "[TQlink of item described][if the class of the player is santa's little helper]small Easter egg[otherwise if egg laying fetish is 0]ping pong ball[otherwise]small egg[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of small egg is "[TQlink of item described][if the class of the player is santa's little helper]small Easter eggs[otherwise if egg laying fetish is 0]ping pong balls[otherwise]small eggs[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of small egg is "se". There are 35 small eggs. Figure of small egg is the file "Items/Collectibles/egg1.png".
To decide which figure-name is the examine-image of (C - a small egg):
	decide on figure of small egg.
To say ExamineDesc of (B - a small egg):
	say "A small spherical [if the class of the player is santa's little helper]chocolate egg[otherwise if egg laying fetish is 0]white ping pong ball[otherwise]white egg[end if], about half the size of a normal chicken egg[if B is laid]. You laid it out of your own [asshole][end if].".
To decide which number is the outrage of (C - a small egg):
	decide on 4.

A medium egg is a kind of egg. The printed name of medium egg is "[TQlink of item described]medium sized [if the class of the player is santa's little helper]Easter [end if]egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of medium egg is "[TQlink of item described]medium sized [if the class of the player is santa's little helper]Easter [end if]eggs[shortcut-desc][TQxlink of item described][verb-desc of item described]". Understand "sized" as medium egg. The text-shortcut of medium egg is "mde". There are 30 medium eggs. Figure of medium egg is the file "Items/Collectibles/egg2.png".
To decide which figure-name is the examine-image of (C - a medium egg):
	decide on figure of medium egg.
To say ExamineDesc of (B - a medium egg):
	say "This looks exactly like you'd expect a large chicken egg to look like[if the class of the player is santa's little helper], except it is made of chocolate[end if][if B is laid]. You laid it out of your own [asshole][end if].".
To compute hatch of (E - a medium egg):
	let M be a random off-stage facehugger;
	if M is monster:
		summon M in playerRegion;
		if M is nonexistant and M is on-stage, set up M;
		if E is held or E is in the location of the player:
			now M is in the location of E;
			say "[BigNameDesc of E] cracks open! [BigNameDesc of M] unfurls its spindly legs and heaves itself out of its shell.";
	otherwise:
		if E is held or E is in the location of the player, say "[BigNameDesc of E] fizzles into nothingness.";
	destroy E.
To decide which number is the outrage of (C - a medium egg):
	decide on 6.

A large egg is a kind of egg. The printed name of large egg is "[TQlink of item described]large [if the class of the player is santa's little helper]Easter [end if]egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of large egg is "[TQlink of item described]large [if the class of the player is santa's little helper]Easter [end if]eggs[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of large egg is "le". There are 15 large eggs. Figure of large egg is the file "Items/Collectibles/egg3.png".
To decide which figure-name is the examine-image of (C - a large egg):
	decide on figure of large egg.
To say ExamineDesc of (B - a large egg):
	say "This huge bird style egg is at least twice the size of your average chicken egg. It looks more like what you'd expect a small ostrich egg or small dinosaur egg to look like[if the class of the player is santa's little helper], except it is made of chocolate[end if]![if B is laid][line break]You laid it out of your own [asshole], although now looking at its size you can hardly believe it.[end if]".
To compute hatch of (E - a large egg):
	let M be a random off-stage tentacle monster;
	if M is monster:
		summon M in playerRegion;
		if M is nonexistant and M is on-stage, set up M;
		now M is in the location of E;
		if E is held or E is in the location of the player, say "[BigNameDesc of E] cracks open! [BigNameDesc of M] unfurls its tentacles and heaves itself out of its shell.";
	otherwise:
		if E is held or E is in the location of the player, say "[BigNameDesc of E] fizzles into nothingness.";
	destroy E.
To decide which number is the outrage of (C - a large egg):
	decide on 8.


To say ShortDesc of (E - a small egg):
	say "[if egg laying fetish is 0]ping pong ball[otherwise]small egg[end if]".
To say MediumDesc of (E - a small egg):
	say "[if egg laying fetish is 0]white ping pong ball[otherwise]small spherical egg[end if]".
To say ShortDesc of (E - a medium egg):
	say "medium egg".
To say ShortDesc of (E - a large egg):
	say "large egg".

To decide which number is the girth of (E - a small egg):
	decide on 2.

To decide which number is the girth of (E - a medium egg):
	decide on 5.

To decide which number is the heaviness of (C - a medium egg):
	decide on 2.

To decide which number is the girth of (E - a large egg):
	decide on 10.

To decide which number is the heaviness of (C - a large egg):
	decide on 3.


When play begins:
	let eggShortcutCount be 1;
	repeat with E running through small egg:
		now the text-shortcut of E is substituted form of "se[eggShortcutCount]";
		increase eggShortcutCount by 1;
	now eggShortcutCount is 1;
	repeat with E running through medium egg:
		now the text-shortcut of E is substituted form of "me[eggShortcutCount]";
		increase eggShortcutCount by 1;
	now eggShortcutCount is 1;
	repeat with E running through large egg:
		now the text-shortcut of E is substituted form of "le[eggShortcutCount]";
		increase eggShortcutCount by 1.


A larva is a kind of person. A larva is neuter. The printed name of larva is "[TQlink of item described]tentacle larva[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of larva is "[TQlink of item described]tentacle larvae[shortcut-desc][TQxlink of item described][verb-desc of item described]". There are 15 larva. Figure of larva is the file "Items/Collectibles/larva1.png". Understand "tentacle", "larvae" as larva. The text-shortcut of a larva is "lva".
To decide which figure-name is the examine-image of (C - a larva):
	decide on figure of larva.
To say ExamineDesc of (B - a larva):
	say "A small maggot-like creature. You could easily destroy it.".
A later time based rule:
	repeat with M running through on-stage larva:
		if M is regional:
			if M is not in the location of the player:
				now Neighbour Finder is the location of M;
				let D be a random N-viable direction;
				let R be the room D from Neighbour Finder;
				if R is not the location of the player, now M is in R;
			if the semen-puddle of the location of M > 0:
				let TM be a random off-stage tentacle monster;
				if TM is monster:
					decrease the semen-puddle of the location of M by 1;
					summon TM in playerRegion;
					if TM is nonexistant and TM is on-stage, set up TM;
					now TM is in the location of M;
					if M is in the location of the player, say "[bold type][BigNameDesc of M][bold type] squirms towards the puddle, where it coats itself in the [semen]. You watch with [horror] as it rapidly grows in size, until [NameDesc of TM][bold type] is standing in front of you.";
					destroy M.

larvaShortcutCount is initially 1.
To larvaShortcutAssign (C - a larva):
	if the text-shortcut of C is "lva":
		now the text-shortcut of C is substituted form of "lva[larvaShortcutCount]";
		increase larvaShortcutCount by 1.

Check attacking larva:
	if the player is immobile, say "You're a bit busy!" instead;
	allocate 2 seconds;
	destroy the noun;
	say "You squish [NameDesc of the noun]. [big his of the noun] body disappears." instead.
Check slapping larva:
	try attacking the noun instead.
Check kneeing larva:
	try attacking the noun instead.
Check kicking larva:
	try attacking the noun instead.
Understand "squish [larva]" as attacking.

Eggs ends here.
