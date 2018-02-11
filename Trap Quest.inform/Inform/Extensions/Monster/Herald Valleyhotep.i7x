Herald Valleyhotep by Monster begins here.

A herald is a kind of monster. A herald is usually intelligent. There is 1 herald. A herald is usually neuter. The poison-status of a herald is -1.

Definition: A herald (called M) is mansion dwelling:
	decide yes.

The printed name of herald is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]Valleyhotep the Herald[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The description of herald is usually "[HeraldDesc]". Understand "Valleyhotep", "herald" as herald.

Figure of herald is the file "herald1.png".

To say HeraldDesc:
	if images visible is 1, display figure of herald;
	say "This mass of pink smoke and crackling lightning has taken the shape of a voluptuous woman. While its face has no features, you feel like a thousand eyes are peering into your soul in its presence.";
	
To set up (M - a herald):
	now the monstersetup of M is 1;
	now the difficulty of M is 15;
	now the health of M is the maxhealth of M.
	
Part 1 - Perception

To compute perception of (M - a herald):
	now M is interested;
	if the player-class is cultist:
		say "[second custom style]'Oh are you, like, still here? Were you, like, wanting a blessing or some junk?'[roman type][line break]";
		calm M;
	otherwise if the player-class is succubus:
		say "[second custom style]'Are you like some kind of demon or some junk? I guess I could bless your flesh if you want.'[roman type][line break]";
		calm M;
	otherwise if the player-class is vampire spawn:
		say "[second custom style]'Oh man you are like a vampire or something huh? How is that working out for you? No offence but I have nothing for you.'[roman type][line break]";
		calm M;
	otherwise:
		say "[second custom style]'Your flesh will, like, totally bend to the will of Azacocks.'[roman type][line break]";
		anger M.
		
Part 2 - Combat

Section 1 - Attack

The herald attack rules is a rulebook. The attack rules of a herald is usually the herald attack rules.

The herald priority attack rules is a rulebook. The priority attack rules of a herald is usually the herald priority attack rules.

This is the herald's power attack rule:
	let M be current-monster;
	if the player is upright:
		say "Pink lightning arcs from Valleyhotep! You feel terribly tired and yet also horny at the same time!";
		FatigueUp a random number between the difficulty of M and the buckle threshold of the player / 5;
		arouse 200.
The herald's power attack rule is listed in the herald attack rules.

This is the herald's blessing attack rule:
	let M be current-monster;
	say "[second custom style]'So what will we make of you...'[roman type] Arcs of pink lightning face across your body!";
	Bustup 1;
	HipUp 1;
	DelicateUp 1;
	Intdown 1;
	HairUp 1;
	HairRedUp 1;
	HairBrightUp 1;
	HairBlondeUp 1;
	bore M;
	rule succeeds.
The unique punishment rule of a herald is usually the herald's blessing attack rule.
		

Section 2 - Damage

To compute damage of (M - a herald):
	if the health of M > 0:
		if M is uninterested:
			say "[second custom style]'That was, like, not a good idea.'[roman type][line break]";
			now M is interested;
			anger M;
		otherwise:
			if the health of M > the maxhealth of M / 2, say "Even without a face you can tell it is smirking at you.";
			otherwise say "While the entity has no face, you can tell it is suddenly getting a bit serious.";
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a herald):
	if the N > the maxhealth of M / 2, say "Even without a face you can tell it is smirking at you.";
	otherwise say "While the entity has no face, you can tell it is suddenly getting a bit serious.".

To compute unique death of (M - a herald):
	say "[second custom style]'What the dick? I guess you win this time... [line break][first custom style]BUT NEXT TIME, YOU AND THIS WORLD WILL FALL BEFORE THE MIGHT OF THE OLD ONES...'[roman type][line break]".

To loot (M - a herald):
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

To say FirstResponse of (M - a herald):
	if the player-class is cultist:
		say "[second custom style]'Ooh, what a cutie! Care for a blessing, little one?'[roman type][line break]";
	otherwise if the player-class is succubus:
		say "[second custom style]'At least Xavier has good taste, gotta give him that.'[roman type][line break]";
	otherwise:
		say "[second custom style]'A vampire? Bleh, always hated those books. Get lost.'[roman type][line break]";

To say RepeatResponse of (M - a herald):
	if the player-class is cultist:
		say "[second custom style]'If you would like a blessing you should totally just ask. Otherwise maybe you should get to work or something, just saying.'[roman type][line break]";
	otherwise if the player-class is succubus:
		say "[second custom style]'I don[']t know what your boss will think of this but if you want a blessing just ask.'[roman type][line break]";
	otherwise:
		say "[second custom style]'Pretty sure I said I have nothing for you.'[roman type][line break]";
		
To say UnfriendlyResponse of (M - a herald):
	say "[second custom style]'[one of]Just be still, this will totally all be over soon.[or]I am like already so over this fight, just give up.[or]You know submission is the new black, maybe you should try it?[at random]'[roman type][line break]"; 
	
	
Section 2 - Questioning

To say WhereAnswer of (M - a herald):
	say "[second custom style]'[one of]Like, I[']m pretty sure you are stuck in a tube somewhere in a creepy corporation. Did you forget?[or]You are totally at ground zero to the end of all intelligent thought in your world.[or]That is, like, so existential! Where are any of us? Though for you, it[']s totes an easy question because you[']re in a tube somewhere.[at random]'[roman type][line break]";
	compute herald's gift;
	
To say WhoAnswer of (M - a herald):
	say "[second custom style]'[one of]Like I said, I'm totally Valleyhotep the Herald. You are, like, totally getting an impressive start on emptying your mind.[or]Far out, I mean who are any of us? Am I really the infinite herald of a vast yet empty being or do I just believe that I am?[at random]'[roman type][line break]";
	compute herald's gift;
	
To say StoryAnswer of (M - a herald):
	say "[second custom style]'[one of]I am totally a projection of an ancient and terrible force that snuck into this silly computer game.[or]I am here to herald the coming of my endless master into this world. Once I[']ve wrung out the brains of everyone who plays this game it[']ll be totes easy.[at random]'[roman type][line break]";
	compute herald's gift;
	
To say EscapeAnswer of (M - a herald):
	say "[second custom style]'[one of]Escape? Like, where to and who from? I mean do you even get your questions cutie?[or]If you yell really loud maybe they[']ll let you out of the game early but I think you[']re supposed to press some silly button. Or just let your mind go empty, that sounds more fun.[at random]'[roman type][line break]";
	compute herald's gift;
	
To say AdviceAnswer of (M - a herald):
	say "[second custom style]'[one of]Giving useful advice sounds kinda like effort.[or]I think this game is a lot easier if you just accept emptiness into your heart.[or]You might want to try succumbing to the joys of this world, thinking is kinda overrated.[at random]'[roman type][line break]";
	compute herald's gift;
	
To compute annoyance of (M - a herald):
	if M is uninterested:
		say "The [M] doesn't seem to realize you are talking to her.[line break]";
	otherwise if M is unfriendly:
		say "The [M] ignores your question. [line break][second custom style]'La la! I can[']t hear it when weaklings talk!'[roman type][line break]";
	otherwise:
		say "[second custom style]'Okay let me be clear here... [line break][first custom style]SHUT UP.'[roman type][line break]";
	
To compute teaching of (M - a herald):
	say "[second custom style]'Teach you something? What a strange request... Like, fine. Gaze into me, if you dare...'[roman type] For a terrible moment her skin shifts into an infinite field of swirling patterns that assaults your mind and self! You feel smarter, but also like your sanity has slipped away!";
	IntUp 1;
	humiliate 400;
	
The herald has a number called gifted. The gifted of a herald is usually 0.

The herald has a number called quest-status. The quest-status of a herald is usually 0.
	
To compute herald's gift:
	let M be a random herald;
	if the quest-status of M is 0:
		let S be a random dark scroll;
		say "[second custom style]'Say, you seem like a capable type! So there is, like, totally another player in this game, right? Maybe you've met her? I could really use a snack, could you be a dear and read this scroll around her? I'll, like, totally reward you or some junk.[roman type][line break]";
		now the quest-status of M is 1;
		now S is in the location of the player;
	otherwise if the quest-status of M is 2:
		say "[second custom style]Well if it isn't my favorite minion! You did, like, super good sending me that lady, and I want to thank you for it! I know! She had, like, a lot of silly smarts left in her brains! Since you work for me it's okay for now if you have some of the leftovers.[roman type][line break]";
		Intup 2;
		now the quest-status of M is 3;
	otherwise if the gifted of M is 0:
		say "[second custom style]'So do you want a blessing or not?'[roman type][line break]";
		if the player consents:
			say "[second custom style]'Now that is what I like to hear! Now, what should we make of you...?'[roman type][line break]";
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
			let S be a random number between 1 and 4;
			if S is 1:
				SexAddictUp 3;
				say "You feel a sudden rush of heat!";
			if S is 2:
				SemenTasteAddictUp 3;
				say "You feel a sudden deep hunger!";
			if S is 3:
				DelicateUp 3;
				say "You feel terribly fragile!";
			if S is 4:
				humiliate 400;
				SexAddictUp 1;
				SemenAddictUp 1;
				DelicateUp 1;
				say "You feel a terrible sense of foreboding!";
			now the gifted of M is 75.


Herald Valleyhotep ends here.

