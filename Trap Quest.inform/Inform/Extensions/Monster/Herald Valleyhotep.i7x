Herald Valleyhotep by Monster begins here.

herald is a monster. herald is intelligent. herald is neuter. The poison-status of herald is -1.

Definition: herald is mansion dwelling: decide yes.

Understand "Valleyhotep", "herald" as herald. The text-shortcut of herald is "vht".

To say Azathot:
	say "[if diaper quest is 0]Azathot[otherwise]Nannythoth[end if]".

Figure of herald is the file "NPCs/Mansion/herald1.png".

To decide which figure-name is the monster-image of (M - herald):
	decide on figure of herald.

To say ShortDesc of (M - herald):
	say "herald".

To say MediumDesc of (M - herald):
	say "Valleyhotep the Herald".

To say NameDesc of (M - herald):
	say "[input-style]Valleyhotep[roman type]".
To say BigNameDesc of (M - herald):
	say "[input-style]Valleyhotep[roman type]".
To say FuckerDesc of (M - herald):
	say "Valleyhotep".
To say BigFuckerDesc of (M - herald):
	say "Valleyhotep".

To say MonsterDesc of (M - herald):
	say "This mass of pink smoke and crackling lightning has taken the shape of a voluptuous [man of M]. While its face has no features, you feel like a thousand eyes are peering into your soul in its presence.";

To set up (M - herald):
	now the monstersetup of M is 1;
	now the difficulty of M is 15;
	now the health of M is the maxhealth of M.

To say speech style of (M - herald):
	say speech style of M.

Part 1 - Perception

To compute perception of (M - herald):
	now M is interested;
	if the player-class is cultist:
		say "[speech style of M]'Oh are you, like, still here? Were you, like, wanting a blessing or some junk?'[roman type][line break]";
		calm M;
	otherwise if the player-class is succubus:
		say "[speech style of M]'Are you like some kind of demon or some junk? I guess I could bless your flesh if you want.'[roman type][line break]";
		calm M;
	otherwise if the player-class is vampire spawn:
		say "[speech style of M]'Oh man you are like a vampire or something huh? How is that working out for you? No offence but I have nothing for you.'[roman type][line break]";
		calm M;
	otherwise:
		say "[speech style of M]'Your [if diaper quest is 0]flesh[otherwise if diaper messing >= 3]bowels[otherwise]bladder[end if] will, like, totally bend to the will of [Azathot].'[roman type][line break]";
		anger M;
	if the times-met of M <= 1, progress quest of insanity-quest.

Part 2 - Combat

Section 1 - Attack

The herald attack rules is a rulebook. The attack rules of herald is usually the herald attack rules.

The herald priority attack rules is a rulebook. The priority attack rules of herald is usually the herald priority attack rules.

This is the herald's power attack rule:
	let M be current-monster;
	if the player is upright:
		say "Pink lightning arcs from Valleyhotep! You feel terribly tired and yet also horny at the same time!";
		FatigueUp a random number between the difficulty of M and the buckle threshold of the player / 5;
		arouse 200.
The herald's power attack rule is listed in the herald attack rules.

This is the herald's blessing attack rule:
	let M be current-monster;
	say "[speech style of M]'So what will we make of you...'[roman type][line break]Arcs of pink lightning race across your body! You feel yourself becoming a bit more bimbo-like...";
	Bustup 1;
	HipUp 1;
	SilentlyDelicateUp 1;
	Intdown 1;
	HairUp 1;
	HairRedUp 1;
	HairBrightUp 1;
	HairBlondeUp 1;
	satisfy M;
	rule succeeds.
The unique punishment rule of herald is usually the herald's blessing attack rule.


herald-blessing is a diaper punishment. The priority of herald-blessing is 5.
Definition: herald-blessing (called P) is appropriate:
	if current-monster is not herald, decide no;
	decide yes.

To compute punishment of (P - herald-blessing):
	let M be current-monster;
	say "[speech style of M]'So what will we make of you...'[roman type][line break]Arcs of pink lightning race across your body!";
	if the player is incontinent:
		if altar-diaper-link is 0:
			say "[speech style of M]'All mortals will serve as vessels for Nannythoth's infinite waste.'[roman type][line break]The next thing you know, you are hovering above the elder altar, completely unable to resist as you are slowly lowered onto the stone slab.";
			if the player is not in Mansion23, teleport to Mansion23;
			try praying yourself with the elder altar;
		otherwise:
			say "You feel your mind twisting and warping, becoming more naturally subservient, perverted and simple.";
			SexAddictUp 1;
			SilentlyDelicateUp 1;
			Intdown 1;
	otherwise:
		say "[speech style of M]'In the new world order, all humans will be fully potty untrained, to remind them of their submission. I will start with you.'[roman type][line break]The next thing you know, you can't feel your bladder[if diaper messing >= 3] or bowels[end if].";
		increase incontinence by 100;
		let K be a random worn knickers;
		if K is knickers:
			say "Looking down, you realise that your [ShortDesc of K] is soaked with fresh warm piss";
			if K is soilable and diaper messing >= 3:
				say " and the back is now full of warm mess";
				MessUp K by 9;
			say ".";
			UrineSoakUp K by 9;
	satisfy M.




Section 2 - Damage

To compute damage of (M - herald):
	if the health of M > 0:
		if M is uninterested:
			say "[speech style of M]'That was, like, not a good idea.'[roman type][line break]";
			now M is interested;
			anger M;
		otherwise:
			if the health of M > the maxhealth of M / 2, say "Even without a face you can tell it is smirking at you.";
			otherwise say "While the entity has no face, you can tell it is suddenly getting a bit serious.";
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - herald):
	if the N > the maxhealth of M / 2, say "Even without a face you can tell it is smirking at you.";
	otherwise say "While the entity has no face, you can tell it is suddenly getting a bit serious.".

To compute unique death of (M - herald):
	say "[speech style of M]'What the [if diaper quest is 1]shit[otherwise]dick[end if]? I guess you win this time... [first custom style]BUT NEXT TIME, YOU AND THIS WORLD WILL FALL BEFORE THE MIGHT OF THE OLD ONES...'[roman type][line break]";
	now M is bossdefeated.

To loot (M - herald):
	let X be a random off-stage plentiful necklace;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.


Part 3 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - herald):
	if M is unfriendly:
		say "[speech style of M]'[one of]Just be still, this will totally all be over soon.[or]I am like already so over this fight, just give up.[or]You know submission is the new black, maybe you should try it?[at random]'[roman type][line break]";
	otherwise if the player-class is cultist:
		say "[speech style of M]'Ooh, what a cutie! Care for a blessing, little one?'[roman type][line break]";
	otherwise if the player-class is succubus:
		say "[speech style of M]'At least Xavier has good taste, gotta give him that.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'A vampire? Bleh, always hated those books. Get lost.'[roman type][line break]";

To say RepeatResponse of (M - herald):
	if M is unfriendly:
		say "[speech style of M]'[one of]Just be still, this will totally all be over soon.[or]I am like already so over this fight, just give up.[or]You know submission is the new black, maybe you should try it?[at random]'[roman type][line break]";
	otherwise if the player-class is cultist:
		say "[speech style of M]'If you would like a blessing you should totally just ask. Otherwise maybe you should get to work or something, just saying.'[roman type][line break]";
	otherwise if the player-class is succubus:
		say "[speech style of M]'I don't know what your boss will think of this but if you want a blessing just ask.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Pretty sure I said I have nothing for you.'[roman type][line break]";


Section 2 - Questioning

To say WhereAnswer of (M - herald):
	say "[speech style of M]'[one of]Like, I'm pretty sure you are stuck in a tube somewhere in a creepy corporation. Did you forget?'[or]You are totally at ground zero to the end of all intelligent thought in your world.'[or]That is, like, so existential! Where are any of us? Though for you, it's totes an easy question because you're in a tube somewhere.'[in random order][roman type][line break]";
	compute herald's gift.

To say WhoAnswer of (M - herald):
	say "[speech style of M]'[one of]Like I said, I'm totally Valleyhotep the Herald. You are, like, totally getting an impressive start on emptying your mind.'[or]Far out, I mean who are any of us? Am I really the infinite herald of a vast yet empty being or do I just believe that I am?'[at random][roman type][line break]";
	compute herald's gift.

To say StoryAnswer of (M - herald):
	say "[speech style of M]'[one of]I am totally a projection of an ancient and terrible force that snuck into this silly computer game.'[or]I am here to herald the coming of my endless master into this world. Once I've wrung out the brains of everyone who plays this game it'll be totes easy.'[at random][roman type][line break]";
	compute herald's gift.

To say EscapeAnswer of (M - herald):
	say "[speech style of M]'[one of]Escape? Like, where to and who from? I mean do you even get your questions cutie?'[or]If you yell really loud maybe they'll let you out of the game early but I think you're supposed to press some silly button. Or just let your mind go empty, that sounds more fun.'[at random][roman type][line break]";
	compute herald's gift.

To say AdviceAnswer of (M - herald):
	say "[speech style of M]'[one of]Giving useful advice sounds kinda like effort.'[or]I think this game is a lot easier if you just accept emptiness into your heart.'[or]You might want to try succumbing to the joys of this world, thinking is kinda overrated.'[in random order][roman type][line break]";
	compute herald's gift.

To compute annoyance of (M - herald):
	if M is unfriendly:
		say "[BigNameDesc of M] ignores your question.[line break][speech style of M]'La la! I can[']t hear it when weaklings talk!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Okay let me be clear here... [first custom style]SHUT UP.'[roman type][line break]";

To compute teaching of (M - herald):
	say "[speech style of M]'Teach you something? What a strange request... Like, fine. Gaze into me, if you dare...'[roman type][line break]For a terrible moment [his of M] skin shifts into an infinite field of swirling patterns that assaults your mind and self! You feel smarter, but also like your sanity has slipped away!";
	IntUp 1;
	humiliate 500.

The herald has a number called gifted. The gifted of herald is usually 0.

The herald has a number called quest-status. The quest-status of herald is usually 0.

To compute herald's gift:
	if the quest-status of herald + diaper quest is 0:
		let S be a random dark scroll;
		say "[speech style of herald]'Say, you seem like a capable type! So there is, like, totally another player in this game, right? Maybe you've met [him of woman-barbara]? I could really use a snack, could you be a dear and read this scroll around [him of woman-barbara]? I'll, like, totally reward you or some junk.[roman type][line break]";
		now the quest-status of herald is 1;
		now S is in the location of the player;
	otherwise if the quest-status of herald is 2:
		say "[speech style of herald]Well if it isn't my favourite minion! You did, like, super good sending me that lady, and I want to thank you for it! I know! [big he of woman-barbara] had, like, a lot of silly smarts left in [his of woman-barbara] brains! Since you work for me it's okay for now if you have some of the leftovers.[roman type][line break]";
		Intup 2;
		now the quest-status of herald is 3;
	otherwise if the gifted of herald is 0:
		say "[speech style of herald]'So do you want a blessing or not?'[roman type][line break]";
		if the player is bimbo consenting:
			say "[speech style of herald]'Now that is what I like to hear! Now, what should we make of you...?'[roman type][line break]";
			let R be a random number between 1 and 4;
			if R is 1:
				Strengthup 2;
				Dexup 2;
				Intup 2;
				say "You feel stronger, faster, better!";
			if R is 2:
				Strengthup 1;
				Dexup 3;
				Intup 1;
				say "You feel so much quicker!";
			if R is 3:
				Strengthup 3;
				Dexup 1;
				Intup 1;
				say "You feel much stronger!";
			if R is 4:
				Strengthup 1;
				Dexup 1;
				Intup 3;
				say "You feel much smarter!";
			now R is a random number between 1 and 4;
			if R is 1:
				SexAddictUp 3;
				say "You feel a sudden rush of heat!";
			if R is 2:
				if diaper quest is 0:
					SemenTasteAddictUp 3;
					say "You feel a sudden deep hunger!";
				otherwise:
					DiaperAddictUp 3;
					say "You feel [if there is a worn diaper]even more comfortable in your padding[otherwise]a sudden deep yearning to be padded[end if]!";
			if R is 3:
				say "You feel terribly fragile!";
				SilentlyDelicateUp 3;
			if R is 4:
				say "You feel a terrible sense of foreboding!";
				humiliate 400;
				SexAddictUp 1;
				if diaper quest is 0, SemenAddictUp 1;
				otherwise DiaperAddictUp 1;
				DelicateUp 1;
			now the gifted of herald is 75.


Herald Valleyhotep ends here.

