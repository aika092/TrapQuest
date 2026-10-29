Snacks by Food begins here.

A snack is a kind of food. The tradability of a snack is 8.
The printed name of a snack is "[TQlink of item described][ShortDesc of item described][shortcut-desc][TQxlink of item described][verb-desc of item described]".

A snack-fruit is a kind of snack.

To say ShortDesc of (C - a snack):
	say "snack".

To restock (C - a snack):
	do nothing.

Carry out TQeating snack:
	allocate 6 seconds;
	destroy the noun;
	if the noun is snack-fruit:
		increase the sweet-scent of the player by 1;
		if the remainder after dividing the sweet-scent of the player by 5 is 0, say "Your body smells sweeter!";
	StomachFoodUp 2.

Definition: a snack is ingredient: decide no.

apple is a snack-fruit. The text-shortcut of apple is "ap".

Figure of apple is the file "Items/Collectibles/apple1.png".

To decide which figure-name is the examine-image of (F - apple):
	decide on figure of apple.

To say ExamineDesc of (A - apple):
	say "A smallish apple that you could eat.".

To say ShortDesc of (C - apple):
	say "apple".

Carry out TQeating apple:
	IntUp 1.

Report TQeating apple:
	say "You [if the fat-weight of the player > 20]greedily bite off large chunks of the apple, swallowing each whole. [otherwise]take bites out of the apple, until you have eaten nearly all of the juicy fruit. [end if]You feel [smarter]! You discard the core.".

To compute (M - a robochef) cooking (I - apple):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 1 and -1;
		now the fat of D is 1;
		now D is carried by M.

lemon is a snack-fruit. The text-shortcut of lemon is "lem".

Figure of lemon is the file "Items/Collectibles/lemon1.png".

To decide which figure-name is the examine-image of (F - lemon):
	decide on figure of lemon.

To say ExamineDesc of (C - lemon):
	say "A smallish lemon that you could eat. It would probably be quite sour.".

To say ShortDesc of (C - lemon):
	say "lemon".

Carry out TQeating lemon:
	if the player is a september 2026 top donator and orgasm-count > 0, GasmResUp 1;
	bodyheal 10;
	FatigueDOwn 100;
	increase the fat-burning of the player by 200.

Report TQeating lemon:
	say "You [if the fat-weight of the player > 20]greedily bite off large chunks of the lemon, swallowing each whole. [otherwise]take bites out of the lemon, until you have eaten nearly all of the juicy fruit. [end if]The sour taste wakes you right [if the player is a september 2026 top donator and orgasm-count > 0]up, and you feel like you have more endurance![otherwise]up![end if]".

To compute (M - a robochef) cooking (I - lemon):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 1 and -2;
		now the fat of D is 1;
		now D is carried by M.

pack of crisps is a snack. The text-shortcut of pack of crisps is "cri".

Figure of crisps is the file "Items/Collectibles/crisps1.png".

To decide which figure-name is the examine-image of (F - pack of crisps):
	decide on figure of crisps.

To say ExamineDesc of (C - pack of crisps):
	say "A smallish pack of ready salted crisps that you could open and eat.".

To say ShortDesc of (C - pack of crisps):
	say "pack of crisps".

Carry out TQeating pack of crisps:
	StrengthUp 1.

Report TQeating pack of crisps:
	say "Opening the packet, you [if the fat-weight of the player > 20]greedily shove mouthfuls of crisps into your mouth and they are quickly gone. [otherwise]eat the crisps one at a time until they are all gone. [end if]You feel stronger! You discard the empty wrapper.".

To compute (M - a robochef) cooking (I - pack of crisps):
	let D be a random off-stage stuffed mushroom;
	if D is food:
		now the quality of D is a random number between 0 and -2;
		now the fat of D is 3;
		now D is carried by M.

pack of nuts is a snack. The text-shortcut of pack of nuts is "nu".

Figure of nuts is the file "Items/Collectibles/nuts1.png".

To decide which figure-name is the examine-image of (F - pack of nuts):
	decide on figure of nuts.

To say ExamineDesc of (C - pack of nuts):
	say "A smallish pack of salted nuts that you could open and eat.".

To say ShortDesc of (C - pack of nuts):
	say "pack of nuts".

Report TQeating pack of nuts:
	say "Opening the packet, you [if the fat-weight of the player > 20]greedily shove mouthfuls of nuts into your mouth and they are quickly gone. [otherwise]eat the nuts one or two at a time until they are all gone. [end if]You feel more dominant! You discard the empty wrapper.";
	DelicateDown 1.

To compute (M - a robochef) cooking (I - pack of nuts):
	if cookie is off-stage:
		now the quality of cookie is a random number between -1 and 2;
		now the fat of cookie is 1;
		now cookie is carried by M.

cocochunk is a snack-fruit. The text-shortcut of cocochunk is "coh". Understand "coco", "chunk", "hunk", "coconut" as cocochunk. cocochunk has a number called coco-charge. the coco-charge of cocochunk is usually 0.

Figure of cocochunk is the file "Items/Collectibles/coconut1.png".

To decide which figure-name is the examine-image of (F - pack of nuts):
	decide on figure of cocochunk.

To say ExamineDesc of (C - cocochunk):
	say "A[if coco-charge of cocochunk is 1]n extra[end if] thick bit of coconut meat attached to a hairy shell".

To say ShortDesc of (C - cocochunk):
	say "hunk of cococnut".

Carry out TQeating cocochunk:
	DexUp 1.

Report TQeating cocochunk:
	say "Picking up the chunk, you [if the fat-weight of the player > 20]chow down on the hard coconut meat, greedily scraping the shell with your teeth once there's nothing else left. [otherwise]take bites of the candy-like coconut meat until all of it is gone. [end if][if coco-charge of cocochunk is 1]You feel faster![end if] You discard the shell.".

To compute (M - a robochef) cooking (I - cocochunk):
	if cookie is off-stage:
		let D be cookie;
		now the quality of D is a random number between 2 and -2;
		now the fat of D is 2;
		now cookie is carried by M.

elderberry is a snack-fruit. Understand "elder", "berry" as elderberry. The text-shortcut of elderberry is "elb".

Figure of elderberry is the file "Items/Collectibles/elderberry1.png".

To decide which figure-name is the examine-image of (F - elderberry):
	decide on figure of elderberry.

To say ExamineDesc of (C - elderberry):
	say "A cluster of deep blue berries that you could eat. It would probably be quite bitter.".

To say ShortDesc of (C - elderberry):
	say "elderberry".

Carry out TQeating elderberry:
	MagicPowerUp 3;
	if watersports fetish is 1, SilentlySlimeTasteAddictUp 1;
	otherwise SilentlySemenTasteAddictUp 1.

Report TQeating elderberry:
	say "You [if the fat-weight of the player > 20]greedily eat the berries off the vine, stem and all. [otherwise]pluck the berries off one at a time, until you have eaten everything off the vine. [end if]There's a bitter aftertaste, [if the semen taste addiction of the player < 14]yuck[otherwise]but weirdly, you really like it[end if]! You feel powerful... and more capable of handling bitter tastes.";


To compute (M - a robochef) cooking (I - elderberry):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 0 and 3;
		now the fat of D is 0;
		now D is carried by M.

Snacks ends here.
