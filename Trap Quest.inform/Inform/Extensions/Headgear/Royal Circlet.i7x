Royal Circlet by Headgear begins here.

royal circlet is a headgear. royal circlet is metal. Figure of royal circlet is the file "Items/Accessories/Head/circlet1.png". royal circlet is hair growing. royal circlet is delicateness-influencing. royal circlet is enema-helping.

Definition: royal circlet is roleplay:
	if lactation fetish is 1 and a2m fetish >= 2, decide yes;
	decide no.

The printed name of royal circlet is "[clothing-title-before]royal circlet[clothing-title-after]". The text-shortcut of royal circlet is "ryc".

To decide which figure-name is the clothing-image of (C - royal circlet):
	decide on figure of royal circlet.

To say ClothingDesc of (H - royal circlet):
	say "A small silver tiara with a pearl embedded in the front to show that you are a slave, owned by the local royalty.".

To say ShortDesc of (H - royal circlet):
	say "silver circlet".

To compute SelfExamineDesc of (H - royal circlet):
	let X be the largeness of hair;
	say "You are wearing a royal slave's circlet in your [ShortDesc of hair]. ".

To decide which number is the intelligence-influence of (H - royal circlet):
	repeat with M running through worn clothing:
		if the milk-soak of M > 1, decide on -1;[Your job is to hold the milk, not spill it.]
		[otherwise if lactation fetish is 0:]
	decide on 0.

To decide which number is the strength-influence of (H - royal circlet):
	repeat with M running through worn clothing:
		if the milk-soak of M > 1, decide on -1;
	decide on the milk volume of belly / 5.

To decide which number is the dexterity-influence of (H - royal circlet):
	repeat with M running through worn clothing:
		if the milk-soak of M > 1, decide on -1;
		[otherwise if lactation fetish is 0:]
	decide on 0.

Definition: royal circlet is condom pinnable: decide yes.
Definition: royal circlet is royalty themed: decide yes.
Definition: royal circlet is grey themed: decide yes.
Definition: royal circlet is gem themed: decide yes.

Report examining worn clothing:
	if the noun is enema-helping, say "You can feel that this item somehow prevents your body from being weaker when holding in enemas.".

Chapter - Class Outfit

To compute class outfit of (H - royal circlet):
	class summon white-milking-basque.

To compute periodic effect of (H - royal circlet):
	let B be a random worn crotch-ripped milking basque;
	if B is clothing and the number of embodied things penetrating a fuckhole is 0:
		say "Your [ShortDesc of H] shines brightly, and your [ShortDesc of B] magically repairs itself.";
		repair B;
	otherwise if there is a worn milking basque and the lactation rate of breasts < a random number between -50 and 5:
		say "[bold type]Your [ShortDesc of H] feels warm, and moments later your [BreastDesc] feel more active...[roman type][line break]";
		increase the lactation rate of breasts by 1.

Chapter - Quest

milk-serve-quest is a headgear-clothing-quest.

To uniquely set up (C - royal circlet):
	now the quest of C is milk-serve-quest.

To say QuestFlav of (Q - milk-serve-quest):
	say "You sense that it wants you to serve milk to others.".

To say QuestTitle of (Q - milk-serve-quest):
	say " (milk serving quest)".

To compute generic first time class reward of (Q - milk-serve-quest) on (C - a clothing):
	let D be a random off-stage plentiful ring;
	if D is ring:
		if C is royal circlet, now D is pure diamond;
		otherwise now D is emerald;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.

Royal Circlet ends here.
