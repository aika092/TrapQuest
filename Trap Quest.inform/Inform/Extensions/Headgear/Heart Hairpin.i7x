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
	decide on 1.

Chapter - Class Outfit

To compute unique recycling of (C - heart hairpin):
	now the large-met of tentacle-research-quest is 0;
	now the massive-met of tentacle-research-quest is 0.

To compute class outfit of (H - heart hairpin):
	class summon lolita magical dress;
	class summon magical stockings.

Chapter - Quest

tentacle-research-quest is a headgear-clothing-quest. tentacle-research-quest has a number called large-met. tentacle-research-quest has a number called massive-met.
bbc-magic-quest is a headgear-clothing-quest.

To uniquely set up (C - heart hairpin):
	if there is a worn dark magician girl dress, now the quest of C is bbc-magic-quest;
	now the quest of C is tentacle-research-quest.

To say QuestFlav of (Q - bbc-magic-quest):
	say "You sense that it wants you to improve your magic power by orgasming on black [manly-penis].".

To say QuestTitle of (Q - bbc-magic-quest):
	say " (black cock magic quest)".

To say QuestFlav of (Q - tentacle-research-quest):
	say "You sense that it wants you to clear a region of all tentacled enemies... OR you could discover all the different possible sizes of tentacle monsters.".

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
The tentacle monsters are interesting rule is listed in the all time based rules.
The tentacle monsters are interesting rule is listed in the all later time based rules. [Just to make sure we don't somehow miss a chance to see a big tentacle monster]

To check tentacle clear:
	let researching be false;
	repeat with C running through worn clothing:
		if the quest of C is tentacle-research-quest, now researching is true;
	if researching is true:
		let LM be a list of things;
		repeat with M running through regional tentacle-breeders:
			add M to LM;
		repeat with M running through regional tentacle monsters:
			add M to LM;
		repeat with M running through regional facehuggers:
			add M to LM;
		repeat with M running through regional larva:
			add M to LM;
		if mind flayer is regional, add mind flayer to LM;
		if playerRegion is woods and vine boss is alive, add vine boss to LM;
		if the number of entries in LM <= 1:
			repeat with C running through worn clothing:
				if the quest of C is tentacle-research-quest, compute quest completion of tentacle-research-quest on C;
		otherwise:
			repeat with M running through LM:
				if M is in the location of the player, remove M from LM;
			if the number of entries in LM > 0:
				say "[bold type]Your mind's eye flashes pictures of the tentacled enemies you have yet to banish from the [playerRegion][roman type] (that are not currently in the [location of the player]):[line break]";
				repeat with M running through LM:
					say "[BigNameDesc of M] (in the [location of M]).".


To compute generic first time class reward of (Q - tentacle-research-quest) on (C - a clothing):
	let D be a random off-stage plentiful ring;
	if D is ring:
		if there is a regional tentacle-breeder, now D is sapphire;
		otherwise now D is pure diamond;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.

Heart Hairpin ends here.
