Eggs by Collectibles begins here.

An egg is a kind of collectible. An egg can be laid. An egg is usually not laid.
An egg has an object called the egg-origin. [Where did the egg come from?]
An egg can be shuddering. [Has the player seen it shudder?]
An egg has a number called hatching. [Is it on a timer towards hatching? 0 is inert, 1+ is on a timer]

Definition: an egg is insertable: decide yes.
Definition: a thing is egg-fathering: decide no.

Definition: an egg (called E) is immune to change:
	if the egg-origin of E is a thing:
		if the hatching of E > 0 or E is in WoodsBoss01, decide yes;
	decide no.

To construct normal icons for (T - an egg):
	now IconTarget is T;
	if T is shuddering, add Figure of HatchingIcon to the list of Icons.

This is the egg stuffing rule:
	if stat-to-set matches the text "egg":
		let BL be belly limit - the total squirtable fill of belly;
		let S be a random small egg;
		if stat-to-set matches the text "small":
			let S be a random carried small egg;
			if S is nothing, let S be a random small egg in the location of the player;
		otherwise if stat-to-set matches the text "medium":
			let S be a random carried medium egg;
			if S is nothing, let S be a random medium egg in the location of the player;
		otherwise if stat-to-set matches the text "large":
			let S be a random carried large egg;
			if S is nothing, let S be a random large egg in the location of the player;
		let remainingN be the number of small eggs in the location of the player;
		let remainingV be remainingN;
		let V be 1;
		if S is small egg:
			increase remainingN by the number of carried small eggs;
		if S is medium egg:
			now remainingN is the number of medium eggs in the location of the player;
			increase remainingN by the number of carried medium eggs;
			now remainingV is remainingN * 2;
			now V is 2;
		if S is large egg:
			now remainingN is the number of large eggs in the location of the player;
			increase remainingN by the number of carried large eggs;
			now remainingV is remainingN * 4;
			now V is 4;
		let T be a text;
		let T be the player's command;
		let N be the numerical value of T;
		let F be asshole;
		if stat-to-set matches the text "vagina":
			now F is vagina;
			now BL is 999;
		let FF be F;
		if FF is asshole, now FF is belly;
		if N > 0 and V * N <= BL:
			let N2 be N;
			if S is small egg:
				repeat with E running through carried small eggs:
					if N2 > 0:
						if the egg-origin of E is a thing, add the egg-origin of E to the small-egg-origins of FF;
						destroy E;
						decrease N2 by 1;
				repeat with E running through small eggs in the location of the player:
					if N2 > 0:
						if the egg-origin of E is a thing, add the egg-origin of E to the small-egg-origins of FF;
						destroy E;
						decrease N2 by 1;
			if S is medium egg:
				repeat with E running through carried medium eggs:
					if N2 > 0:
						if the egg-origin of E is a thing, add the egg-origin of E to the medium-egg-origins of FF;
						destroy E;
						decrease N2 by 1;
				repeat with E running through medium eggs in the location of the player:
					if N2 > 0:
						if the egg-origin of E is a thing, add the egg-origin of E to the medium-egg-origins of FF;
						destroy E;
						decrease N2 by 1;
			if S is large egg:
				repeat with E running through carried large eggs:
					if N2 > 0:
						if the egg-origin of E is a thing, add the egg-origin of E to the large-egg-origins of FF;
						destroy E;
						decrease N2 by 1;
				repeat with E running through large eggs in the location of the player:
					if N2 > 0:
						if the egg-origin of E is a thing, add the egg-origin of E to the large-egg-origins of FF;
						destroy E;
						decrease N2 by 1;
			allocate 6 seconds;
			if F is vagina, say "Thanks to your cervix already being painfully stretched by its contents, you manage to push [if N > 1][N] more [ShortDesc of S]s[otherwise]another [ShortDesc of S][end if] through it and into your womb.";
			compute insertionRuin of S into F;
			if F is asshole:
				if S is small egg, assfill N small eggs;
				if S is medium egg, assfill N medium eggs;
				if S is large egg, assfill N large eggs;
				now the squirt timer of belly is 0;
			otherwise:
				if S is small egg, wombfill N small eggs;
				if S is medium egg, wombfill N medium eggs;
				if S is large egg, wombfill N large eggs;
		otherwise:
			say "[if N is 0]Action cancelled[otherwise if N <= remainingN]You won't be able to fit that many inside you[otherwise]You don't have that many nearby[end if].";
		now stat-to-set is "";
		change the text of the player's command to "finish setting".
The egg stuffing rule is listed in the statsetting rules.


Check attacking egg:
	if the player is at least partially immobile, say "You're a bit busy!" instead;
	allocate 1 seconds;
	say "The shell is too strong! You can't damage it at all. If you want to get rid of it, perhaps you could [bold type]flush it down a toilet[roman type][line break]" instead.
Check slapping egg:
	try attacking the noun instead.
Check kneeing egg:
	try attacking the noun instead.
Check kicking egg:
	try attacking the noun instead.
Check dropping egg:
	if the location of the player is toilets and (locked-toilets is false or the player is not in School10 or academy-toilet-key is held):
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "drop [NameDesc of the noun] on the ground";
		set numerical response 2 to "flush [NameDesc of the noun] down the toilet";
		if the number of carried eggs > 1:
			set numerical response 3 to "drop all your eggs on the ground";
			set numerical response 4 to "flush all your eggs down the toilet";
		set numerical response 0 to "cancel";
		compute multiple choice question;
		if player-numerical-response is 0, say "Action cancelled." instead;
		if the remainder after dividing player-numerical-response by 2 is 0:
			if the player is immobile, say "You're a bit busy!" instead;
			if player-numerical-response is 4:
				repeat with E running through carried eggs:
					unless E is the noun, compute flushing of E;
			compute flushing of the noun instead; [beyond this let the drop action occur normally]
		otherwise if player-numerical-response is 2:
			repeat with E running through carried eggs:
				unless E is the noun, now E is in the location of the player.

Report examining egg when egg laying fetish is 1:
	say "[if the noun is shuddering][bold type]You have seen it move and shudder, suggesting it has been successfully fertilised and incubated. [roman type][end if]The strong shell can't be destroyed by brute force, but perhaps you could [bold type]drop[roman type] it down the toilet.".

To compute flushing of (E - a thing):
	allocate 2 seconds;
	destroy E;
	say "You flush [NameDesc of E] down the toilet.".

To uniquely destroy (E - an egg):
	now the hatching of E is 0;
	now the egg-origin of E is nothing;
	now E is not shuddering;
	now E is not laid.

A later time based rule (this is the hatchtime rule):
	repeat with E running through on-stage eggs:
		if the hatching of E > 0:
			compute hatchtime of E.

To compute hatchtime of (E - an egg):
	increase the hatching of E by a random number between 1 and 2;
	if E is held or E is in the location of the player:
		if the remainder after dividing the hatching of E by 30 is 0 and the egg-origin of E is a thing:
			now E is shuddering;
			say "[BigNameDesc of E] shudders[one of]. Is there something alive inside?![or].[stopping]";
			if E is carried, force inventory-focus redraw;
	if the hatching of E > 130 and E is regional:
		compute hatch of E.

To compute hatch of (E - an egg):
	if the egg-origin of E is tentacle monster or the egg-origin of E is lake monster or the egg-origin of E is facehugger or the egg-origin of E is hugger-panties or the egg-origin of E is hugger-gag or the egg-origin of E is vine:
		compute tentacle hatch of E;
	otherwise if the egg-origin of E is carrot daggers or the egg-origin of E is a bunny ears or the egg-origin of E is bowsette:
		compute bunny hatch of E;
	otherwise if the egg-origin of E is the throne or the egg-origin of E is ghost or the egg-origin of E is ghostly dildo pole trap:
		compute ghost hatch of E;
	otherwise:
		compute default hatch of E.

To compute tentacle hatch of (E - an egg):
	compute default hatch of E.

[when the egg origin is set to a ghost or the throne, which includes the magic spell consequence]
To compute ghost hatch of (E - an egg):
	let flav-said be 0;
	let totalSlimes be 1;
	if E is medium egg, now totalSlimes is 2;
	if E is large egg, now totalSlimes is 4;
	while totalSlimes > 0:
		decrease totalSlimes by 1;
		let L be a random off-stage slimeball;
		if L is slimeball:
			set up L;
			if flav-said is 0:
				if E is held or E is in the location of the player, say "[BigNameDesc of E] [if E is small egg]shudders and morphs into an animated blob of slime that begins to hop about[otherwise if E is medium egg]cracks open, revealing two animated blobs of slime, that begin to hop about[otherwise]cracks open, revealing four animated blobs of slime, that begin to hop about[end if].[one of][line break][variable custom style]What in the world?[roman type][line break][or][stopping]";
				now flav-said is 1;
			now L is in the location of E;
			if E is small egg, destroy E; [prevents flavour below]
	if E is held or E is in the location of the player, say "[BigNameDesc of E] fizzles into nothingness.";
	destroy E.

To compute bunny hatch of (E - an egg):
	if E is held or E is in the location of the player, say "[BigNameDesc of E] cracks open, and [if the egg-origin of E is bowsette]a small half-turtle, half-human[otherwise][one of]the tiniest, cutest little bunny rabbit you've ever seen[or]another tiny little bunny rabbit[stopping][end if] pops out and hops away. [BigNameDesc of E] fizzles into nothingness.";
	destroy E.

To compute default hatch of (E - an egg):
	let flav-said be 0;
	let totalLarvae be 1;
	if E is medium egg, now totalLarvae is 2;
	if E is large egg, now totalLarvae is 4;
	while totalLarvae > 0:
		decrease totalLarvae by 1;
		let L be a random off-stage larva;
		if L is larva:
			if flav-said is 0:
				if E is held or E is in the location of the player, say "[BigNameDesc of E] [if E is small egg]shudders[otherwise]cracks open[end if], and [if E is large egg]four maggot-like larvae worm their way out[otherwise if E is medium egg]two maggot-like larvae worm their way out[otherwise]starts to grow a tail. Moments later, it has morphed into a large maggot-like larva[end if].[one of][line break][variable custom style]Gross![roman type][line break][or][stopping]";
				now flav-said is 1;
			now L is in the location of E;
			now the egg-origin of L is the egg-origin of E;
			larvaShortcutAssign L;
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

A small egg is a kind of egg. The printed name of small egg is "[TQlink of item described][if the class of the player is santa's little helper]small Easter egg[otherwise if egg laying fetish is 0 or the player is in a predicament room]ping pong ball[otherwise]small egg[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of small egg is "[TQlink of item described][if the class of the player is santa's little helper]small Easter eggs[otherwise if egg laying fetish is 0]ping pong balls[otherwise]small eggs[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of small egg is "se". There are 35 small eggs.
Figure of small egg normal is the file "Items/Collectibles/egg1a.jpg".
Figure of small egg tentacle is the file "Items/Collectibles/egg1b.jpg".
Figure of small egg easter is the file "Items/Collectibles/egg1c.jpg".
Figure of small egg fish is the file "Items/Collectibles/egg1d.jpg".
Figure of small egg ball is the file "Items/Collectibles/egg1e.jpg".
To decide which figure-name is the examine-image of (C - a small egg):
	if the player is in a predicament room, decide on figure of small egg ball;
	if the class of the player is santa's little helper, decide on figure of small egg easter;
	if the egg-origin of C is giant wasp, decide on figure of small egg normal;
	if the egg-origin of C is facehugger or the egg-origin of C is hugger-panties or the egg-origin of C is hugger-gag, decide on figure of small egg tentacle;
	decide on figure of small egg fish.
To say ExamineDesc of (B - a small egg):
	say "A small spherical [if the class of the player is santa's little helper and the player is not in a predicament room]chocolate egg[otherwise if egg laying fetish is 0 or the player is in a predicament room]white ping pong ball[otherwise if the egg-origin of B is giant wasp]white egg[otherwise if the egg-origin of B is facehugger or the egg-origin of B is hugger-panties or the egg-origin of B is hugger-gag]egg with an eerie purple hue[otherwise]amphibian egg[end if], about half the size of a normal chicken egg[if B is laid]. You laid it out of your own body[end if][if B is laid and the egg-origin of B is a thing] after being oviposited by [NameDesc of egg-origin of B][otherwise if egg-origin of B is a thing]. It came from [NameDesc of egg-origin of B][end if].".
To decide which number is the outrage of (C - a small egg):
	decide on 4.

A medium egg is a kind of egg. The printed name of medium egg is "[TQlink of item described]medium sized [if the class of the player is santa's little helper]Easter [end if]egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of medium egg is "[TQlink of item described]medium sized [if the class of the player is santa's little helper]Easter [end if]eggs[shortcut-desc][TQxlink of item described][verb-desc of item described]". understand "sized" as medium egg. The text-shortcut of medium egg is "mde". There are 30 medium eggs.
Figure of medium egg normal is the file "Items/Collectibles/egg2a.jpg".
Figure of medium egg tentacle is the file "Items/Collectibles/egg2b.jpg".
Figure of medium egg easter is the file "Items/Collectibles/egg2c.jpg".
Figure of medium egg bunny is the file "Items/Collectibles/egg2d.jpg".
To decide which figure-name is the examine-image of (C - a medium egg):
	if the class of the player is santa's little helper, decide on figure of medium egg easter;
	if the egg-origin of C is giant wasp, decide on figure of medium egg normal;
	if the egg-origin of C is carrot daggers or the egg-origin of C is a bunny ears, decide on figure of medium egg bunny;
	decide on figure of medium egg tentacle.
To say ExamineDesc of (B - a medium egg):
	say "This looks exactly like you'd expect a large chicken egg to look like[if the class of the player is santa's little helper], except it is made of chocolate[otherwise if the egg-origin of B is carrot daggers or the egg-origin of B is a bunny ears], except it has a red and white polka dot pattern[otherwise if the egg-origin of B is not giant wasp], except it has an eerie purple hue[end if][if B is laid]. You laid it out of your own body[end if][if B is laid and the egg-origin of B is a thing] after being oviposited by [NameDesc of egg-origin of B][otherwise if egg-origin of B is a thing]. It came from [NameDesc of egg-origin of B][end if].".
To compute tentacle hatch of (E - a medium egg):
	let M be a random off-stage facehugger;
	if M is monster:
		summon M in playerRegion;
		if M is nonexistent and M is on-stage, set up M;
		if E is held or E is in the location of the player:
			now M is in the location of E;
			say "[BigNameDesc of E] cracks open! [BigNameDesc of M] unfurls its spindly legs and heaves itself out of its shell.";
	otherwise:
		if E is held or E is in the location of the player, say "[BigNameDesc of E] fizzles into nothingness.";
	destroy E.
To decide which number is the outrage of (C - a medium egg):
	decide on 6.

A large egg is a kind of egg. The printed name of large egg is "[TQlink of item described]large [if the class of the player is santa's little helper]Easter [end if]egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of large egg is "[TQlink of item described]large [if the class of the player is santa's little helper]Easter [end if]eggs[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of large egg is "le". There are 15 large eggs.
[Figure of large egg normal is the file "Items/Collectibles/egg3a.jpg".]
Figure of large egg tentacle is the file "Items/Collectibles/egg3b.jpg".
Figure of large egg easter is the file "Items/Collectibles/egg3c.jpg".
Figure of large egg koopa is the file "Items/Collectibles/egg3d.jpg".
To decide which figure-name is the examine-image of (C - a large egg):
	if the class of the player is santa's little helper, decide on figure of large egg easter;
	if the egg-origin of C is bowsette, decide on figure of large egg koopa;
	[if the egg-origin of C is giant wasp, decide on figure of large egg normal;]
	decide on figure of large egg tentacle.
To say ExamineDesc of (B - a large egg):
	say "This huge bird style egg is at least twice the size of your average chicken egg. It looks more like what you'd expect a small ostrich egg or small dinosaur egg to look like[if the class of the player is santa's little helper], except it is made of chocolate[otherwise if the egg-origin of B is bowsette], except for the weird ridged texture and blue hue[otherwise if the egg-origin of B is not giant wasp], except for the eerie purple hue and... bulging, squirming, vein-like ridges[end if]![if B is laid][line break]You laid it out of your own body, although now looking at its size you can hardly believe it.[end if][if egg-origin of B is a thing][line break]It came from [NameDesc of egg-origin of B].[end if]".
To compute tentacle hatch of (E - a large egg):
	let M be a random off-stage tentacle monster;
	if M is monster:
		summon M in playerRegion;
		if M is nonexistent and M is on-stage, set up M;
		now M is in the location of E;
		if E is held or E is in the location of the player, say "[BigNameDesc of E] cracks open! [BigNameDesc of M] unfurls its tentacles and heaves itself out of its shell.";
	otherwise:
		if E is held or E is in the location of the player, say "[BigNameDesc of E] fizzles into nothingness.";
	destroy E.
To decide which number is the outrage of (C - a large egg):
	decide on 8.

To say ShortDesc of (E - a small egg):
	say "[if egg laying fetish is 0 or the player is in a predicament room]ping pong ball[otherwise]small egg[end if]".
To say MediumDesc of (E - a small egg):
	say "[if egg laying fetish is 0 or the player is in a predicament room]white ping pong ball[otherwise]small spherical egg[end if]".
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

A larva is a kind of person. A larva is neuter. The printed name of larva is "[TQlink of item described][OriginDesc of item described]larva[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of larva is "[TQlink of item described][OriginDesc of item described]larvae[shortcut-desc][TQxlink of item described][verb-desc of item described]". There are 15 larva. Figure of larva is the file "Items/Collectibles/larva1.png". Understand "tentacle", "larvae" as larva. The text-shortcut of a larva is "lva". A larva has a number called larva-growth. A larva has an object called the egg-origin.
To decide which figure-name is the examine-image of (C - a larva):
	decide on figure of larva.
To say ExamineDesc of (B - a larva):
	say "A small maggot-like creature. You could easily destroy it.".
To say OriginDesc of (B - a larva):
	if the egg-origin of B is a thing, say "[ShortDesc of the egg-origin of B] ".
A later time based rule (this is the larvae growth rule):
	repeat with M running through on-stage larva:
		increase the larva-growth of M by a random number between 0 and 2;
		if M is regional:
			if M is not in the location of the player:
				now Neighbour Finder is the location of M;
				let D be a random N-viable direction;
				let R be the room D from Neighbour Finder;
				if R is not the location of the player, now M is in R;
			if the semen-puddle of the location of M > 0 or the larva-growth of M >= 300:
				let TM be a random off-stage facehugger;
				if the egg-origin of M is giant wasp, now TM is a random hatchable giant wasp;
				if the egg-origin of M is facehugger or the egg-origin of M is hugger-panties or the egg-origin of M is hugger-gag, now TM is a random off-stage tentacle monster;
				if TM is monster:
					summon TM in playerRegion;
					if TM is nonexistent and TM is on-stage, set up TM;
					now TM is in the location of M;
					if M is in the location of the player, say "[bold type][BigNameDesc of M][bold type] squirms [if the larva-growth of M >= 300]violently[otherwise]towards the puddle, where it coats itself in the [semen][end if]. You watch with [horror] as it rapidly grows in size, until [NameDesc of TM][bold type] is standing in front of you.";
					if the larva-growth of M < 300, decrease the semen-puddle of the location of M by 1;
					destroy M.

Definition: a giant wasp is hatchable:
	if it is woods dwelling, decide no;
	if it is off-stage, decide yes;
	decide no.

larvaShortcutCount is initially 1.
To larvaShortcutAssign (C - a larva):
	if the text-shortcut of C is "lva":
		now the text-shortcut of C is substituted form of "lva[larvaShortcutCount]";
		increase larvaShortcutCount by 1.

Check attacking larva:
	if the player is at least partially immobile, say "You're a bit busy!" instead;
	allocate 2 seconds;
	say "You squish [NameDesc of the noun]. [big his of the noun] body disappears.";
	check tentacle clear;
	destroy the noun;
	do nothing instead.
Check slapping larva:
	try attacking the noun instead.
Check kneeing larva:
	try attacking the noun instead.
Check kicking larva:
	try attacking the noun instead.
Understand "squish [larva]" as attacking.

Eggs ends here.
