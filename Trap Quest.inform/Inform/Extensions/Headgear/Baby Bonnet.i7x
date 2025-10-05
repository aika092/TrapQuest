Baby Bonnet by Headgear begins here.

A baby bonnet is a kind of headgear. A baby bonnet is blondeness-negative. A baby bonnet is brightness-negative. A baby bonnet is redness-negative. A baby bonnet is usually hair growing. A baby bonnet is womanly. A baby bonnet is usually diaper-addiction-influencing. Understand "baby", "bonnet" as a baby bonnet. The printed name of baby bonnet is usually "[clothing-title-before][clothing-material of item described] baby bonnet[clothing-title-after]".

Definition: a baby bonnet is baby themed: decide yes.
Definition: a baby bonnet is pink themed: decide yes.

To say ShortDesc of (H - a baby bonnet):
	say "pink baby bonnet".

To compute SelfExamineDesc of (H - a baby bonnet):
	let X be the largeness of hair;
	say "You are wearing a pink baby bonnet which [if the largeness of hair < 6]completely[otherwise if the largeness of hair < 8]mostly[otherwise]only partially[end if] covers your [ShortDesc of hair]. ".

Definition: a baby bonnet is condom pinnable: decide yes.

Part - Class Outfit

To compute class outfit of (H - a baby bonnet):
	class summon cupcake onesie;
	class summon rubber mittens;
	gluify rubber mittens;
	unless H is rubber-baby-bonnet, class summon yellow-pacifier;
	class summon pink-baby-booties;
	gluify pink-baby-booties.

Part - Quest

adult-baby-quest is a headgear-clothing-quest.

To uniquely set up (C - a baby bonnet):
	now the quest of C is adult-baby-quest.

To say QuestFlav of (Q - adult-baby-quest):
	say "You sense that it wants you to hold your [if diaper messing >= 3]bladder and bowels[otherwise]pee[end if] until it becomes outside of your control.".

To say QuestTitle of (Q - adult-baby-quest):
	say " (incontinence quest)".

matron-obey-quest is a headgear-clothing-quest.

To say QuestFlav of (Q - matron-obey-quest):
	say "You sense that it wants you to please the matron by always doing what [he of matron] says.".

To say QuestTitle of (Q - matron-obey-quest):
	say " (matron obedience quest)".

To compute generic first time class reward of (Q - matron-obey-quest) on (C - a clothing):
	if the player is getting lucky:
		let D be a random off-stage plentiful ring;
		if D is ring:
			now D is pink diamond;
			set shortcut of D;
			if D is actually summonable:
				summon D;
			otherwise:
				now D is in the location of the player;
			say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]! [GotLuckyFlav]";
		otherwise:
			compute generic second time class reward of Q on C;
	otherwise:
		say "[BigNameDesc of C] pulses, but the curse does not lift! [GotUnluckyFlav]".

Part - Variations

victorian-baby-bonnet is a baby bonnet. The text-shortcut of victorian-baby-bonnet is "vbon".

Definition: victorian-baby-bonnet is roleplay:
	if diaper lover >= 1, decide yes;
	decide no.

Figure of victorian baby bonnet is the file "Items/Accessories/Head/babybonnet1.png".

To decide which figure-name is the clothing-image of (C - victorian-baby-bonnet):
	decide on figure of victorian baby bonnet.

To say ClothingDesc of (H - victorian-baby-bonnet):
	say "A Victorian style pink baby bonnet, that covers the top, back and sides of your head[if H is worn]. You can sense that it is helping you remain focused and flexible, even when plagued by distracting sensations of toilet desperation[end if].".

To decide which object is the unique-upgrade-target of (H - victorian-baby-bonnet):
	decide on rubber-baby-bonnet.

To decide which number is the initial cringe of (H - victorian-baby-bonnet):
	decide on 4.

rubber-baby-bonnet is a baby bonnet. rubber-baby-bonnet is latex. The text-shortcut of rubber-baby-bonnet is "lbon".

Figure of rubber baby bonnet is the file "Items/Accessories/Head/babybonnet2.png".

To decide which figure-name is the clothing-image of (C - rubber-baby-bonnet):
	decide on figure of rubber baby bonnet.

To say ClothingDesc of (H - rubber-baby-bonnet):
	say "A fetish-focused pink baby bonnet made of rubber, that covers the top, back and sides of your head, as well as your mouth[if H is worn]. It somehow magically prevents you from speaking, but not from drinking or eating. You can sense that it is helping you remain focused and flexible, even when plagued by distracting sensations of toilet desperation[end if].".

This is the rubber baby bonnet prevents speech rule:
	if rubber-baby-bonnet is worn, rule fails.
The rubber baby bonnet prevents speech rule is listed in the player speech rules.

To decide which number is the initial cringe of (H - rubber-baby-bonnet):
	decide on 8.

To uniquely set up (C - rubber-baby-bonnet):
	if matron is alive, now the quest of C is matron-obey-quest;
	now the quest of C is adult-baby-quest.


Part - Berri Clip

gold-hairclip is a headgear. gold-hairclip is latex. The text-shortcut of gold-hairclip is "ghc".

Figure of gold hairclip is the file "Items/Accessories/Head/goldclip1.jpg".

To decide which figure-name is the clothing-image of (C - gold-hairclip):
	decide on figure of gold hairclip.

To say ClothingDesc of (H - gold-hairclip):
	say "A tiny unassuming gold hairclip. You sense that it carries within it, a great [']destiny['].".

To decide which number is the initial cringe of (H - gold-hairclip):
	decide on 1.

Report wearing gold-hairclip:
	if the player is sexed male:
		say "Your hair transforms into a short brown bob with a cute tuft of purple at the front! Your whole body suddenly goes numb, then is filled with an almost electric tingle. You feel terrible wrenching from your insides that you're sure should hurt, but you just don't seem to be able to feel much of anything right now. The tingling comes to a focus in your crotch, filling you with a sense of terrible foreboding. [if the player is possessing a penis]As feeling comes back to you, you reach down and can immediately tell you're missing something kind of notable: your [player-penis]![otherwise]As feeling comes back to you, you reach down with a sense of foreboding.[end if]";
		SexChange the player;
	say "[second custom style]My name is Berri![roman type][line break]A voice says from inside your head.[line break][second custom style]Gosh, I sure hope nothing dramatic, unfortunate and embarrassing happens to me here![roman type][line break]You sense that [bold type]it will be much harder, and sometimes impossible, to change your outfit, [roman type]and you feel drawn to wander this world, until you encounter whatever Berri's story has in store for her...";
	mapcutshow Figure of woman 1 for stripy-blue-dress.

To compute class outfit of (H - gold-hairclip):
	unless there is a worn berri-dress:
		pinkWardrobeUnclash stripy-blue-dress;
		class summon stripy-blue-dress;
	if stripy-blue-dress is worn:
		if the number of worn diaper is 0:
			pinkWardrobeUnclash plain-white-briefs;
			class summon plain-white-briefs;
		class summon magic pistol.

Definition: gold-hairclip (called C) is removal-blocking:
	if wearing-target is berri-dress, decide yes;
	decide no.

To say RemovalBlocked of (C - gold-hairclip):
	say "Your [ShortDesc of C] is somehow preventing you from taking this off! It doesn't want you to look less like [']Berri[']!".

Check wearing gold-hairclip:
	if armband is worn, say "[BigNameDesc of gold-hairclip] doesn't seem to want you to wear it at the same time as [NameDesc of armband]! You've got to decide if you want to remain as the main character, or take on the role of a supporting character instead..." instead.

berri-quest is a headgear-clothing-quest. berri-quest has a number called berri-completions.

To uniquely set up (C - gold-hairclip):
	now the quest of C is berri-quest.

To say QuestFlav of (Q - berri-quest):
	say "You sense that it wants you to seek out your prescribed story beats as the cute, haphazard and constantly unlucky girl known as [']Berri['].".

To say QuestTitle of (Q - berri-quest):
	say " (Berri scene quest)".

To compute persistent reward of (Q - berri-quest) on (C - a clothing):
	compute generic first time class reward of Q on C.

To compute generic first time class reward of (Q - berri-quest) on (C - a clothing):
	let D be a random off-stage plentiful ring;
	if D is ring:
		if the berri-completions of Q > 8:
			now D is solid gold;
		otherwise if the berri-completions of Q > 6:
			now D is pure diamond;
		otherwise if the berri-completions of Q > 4:
			now D is pink diamond;
		otherwise if the berri-completions of Q > 2:
			now D is ruby;
		otherwise if the berri-completions of Q > 0:
			now D is emerald;
		otherwise:
			now D is sapphire;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]! [GotLuckyFlav]";
	otherwise:
		compute generic second time class reward of Q on C;
	increase the berri-completions of Q by 1.


Baby Bonnet ends here.
