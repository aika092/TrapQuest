Heart Hairpin by Headgear begins here.

heart hairpin is a headgear. heart hairpin is metal. heart hairpin is blondeness-positive. heart hairpin is brightness-positive. heart hairpin is redness-positive. heart hairpin is intelligence-influencing.

The printed name of heart hairpin is "[clothing-title-before]heart hairpin[clothing-title-after]". Understand "hair", "pin" as heart hairpin. The text-shortcut of heart hairpin is "hhp".

Figure of heart hairpin is the file "Items/Accessories/Head/hearthairpin1.png".

To decide which figure-name is the clothing-image of (C - heart hairpin):
	decide on figure of heart hairpin.

To say ClothingDesc of (H - heart hairpin):
	say "A hairpin shaped like a heart.".

To say ShortDesc of (H - heart hairpin):
	say "heart-shaped hairpin".

To compute SelfExamineDesc of (H - heart hairpin):
	say "You are wearing a hairpin shaped like a heart with wings. It makes you feel positively magical[if H is not removable]. In fact for some reason you can't even make yourself consider taking it off, as though it is intimately tied to you[end if].".

Definition: heart hairpin is heart themed: decide yes.

Definition: heart hairpin is magic themed: decide yes.
Definition: heart hairpin is pink themed: decide yes.
Definition: heart hairpin is white themed: decide yes.

To decide which number is the intelligence-influence of (H - heart hairpin):
	let M be the magic power of the player;
	let I be 0;
	if M > 0:
		increase I by 1;
		if M > 3:
			increase I by 1;
			if M > 5:
				increase I by 2;
	decide on I.


Chapter - Class Outfit

Definition: heart hairpin (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is magical dress or wearing-target is magical stockings, decide yes;
	if wearing-target is C and the magic-power of the player > 1 and there is an on-stage tentacle-breeder, decide yes;
	decide no.

To say RemovalBlocked of (C - heart hairpin):
	if wearing-target is C, say "You have too much magic power surging through you! You won't be able to take this off until you [if the magic-power of the player < 4]gain some more power and [end if]use your abilities to purify some tentacle breeders, or lose the excess magic by having some tentacle monsters... [']take['] it from you...";
	otherwise say "Your [ShortDesc of C] is somehow preventing you from taking this off!".

magic-summoned is a number that varies.
To compute unique recycling of (C - heart hairpin):
	now the large-met of tentacle-research-quest is 0;
	now the massive-met of tentacle-research-quest is 0;
	now magic-summoned is 0.

To compute class outfit of (H - heart hairpin):
	let D be a random off-stage lolita magical dress;
	if the class of the player is schoolgirl, now D is a random schoolgirl outfit; [We don't want to overwrite the schoolgirl stuff with magical stuff if the player is both]
	let W be a random off-stage heart wand;
	let S be a random off-stage magical stockings;
	if D is actually summonable or (magic-summoned is 0 and D is magical dress and the number of worn magical dress is 0):
		if magic-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn skirted clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]You feel a rush of magic as a [ShortDesc of D] materializes around you.[roman type][line break]";
		summon D;
		now magic-summoned is 1;
	otherwise if S is actually summonable:
		say "[bold type]A pair of light pink stockings appears on your legs![roman type][line break]";
		summon S;
	otherwise if W is actually summonable:
		say "[bold type]You feel a rush of magic as a wand suddenly materializes in your hand![roman type][line break]";
		summon W.



Chapter - Quest

tentacle-research-quest is a headgear-clothing-quest. tentacle-research-quest has a number called large-met. tentacle-research-quest has a number called massive-met.

To uniquely set up (C - heart hairpin):
	now the quest of C is tentacle-research-quest.

To say QuestFlav of (Q - tentacle-research-quest):
	say "You sense that it wants you to purify tentacle breeders... OR you could discover all the different possible sizes of tentacle monsters.".

To say QuestTitle of (Q - tentacle-research-quest):
	say " (tentacle research quest)".

To progress quest of (Q - tentacle-research-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			if large-met of tentacle-research-quest is 0 and there is a large tentacle monster in the location of the player:
				now large-met of tentacle-research-quest is 1;
				if massive-met of tentacle-research-quest is 1, compute quest completion of Q on C;
			otherwise if massive-met of tentacle-research-quest is 0 and there is a massive tentacle monster in the location of the player:
				now massive-met of tentacle-research-quest is 1;
				if large-met of tentacle-research-quest is 1, compute quest completion of Q on C.

This is the tentacle monsters are interesting rule:
	if there is a tentacle monster in the location of the player, progress quest of tentacle-research-quest.
The tentacle monsters are interesting rule is listed in the advance counters rules.
The tentacle monsters are interesting rule is listed in the time based rules.
The tentacle monsters are interesting rule is listed in the later time based rules. [Just to make sure we don't somehow miss a chance to see a big tentacle monster]

Heart Hairpin ends here.

