Dungeon Statue by Objects begins here.

DungeonScenery01 is a thing. DungeonScenery01 is in Dungeon10. DungeonScenery01 is not portable. The printed name of DungeonScenery01 is "[TQlink of item described]statue[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "statue", "man", "penis", "woman", "nipple" as DungeonScenery01. DungeonScenery01 has a number called doses. The doses of DungeonScenery01 is usually 1.  The text-shortcut of DungeonScenery01 is "sta".

The dungeon statue effect list is a list of numbers that varies.
The dungeon statue knowledge list is a list of numbers that varies.

A game universe initialisation rule:
	repeat with N running from 1 to 6:
		add N to the dungeon statue effect list;
		add 0 to the dungeon statue knowledge list;
	sort the dungeon statue effect list in random order.

To decide which figure-name is the examine-image of (C - DungeonScenery01):
	decide on figure of DungeonScenery01.

To say ExamineDesc of (C - DungeonScenery01):
	if diaper quest is 0:
		say "A row of six statues of naked men with a ridiculously sized [if the bimbo of the player > 13][line break][second custom style]but yummy looking[roman type][line break][end if][manly-penis]s. There seems to be a hollow tube inside each [manly-penis], with an exit at the tip.";
		if newbie tips is 1, say "[one of][newbie style]Newbie tip: These can be sucked, and eventually you can work out which ones heal the soreness of your orifices and replenishing some of your magic... but all will force you to drink some semen. Overall, they're very useful but if you use them too much, you might find yourself with a new oral fixation.[or][stopping]";
	otherwise:
		say "A line of bronze women with their big bare butts pointing towards you. They look weirdly... spankable.";
		if newbie tips is 1, say "[one of][newbie style]Newbie tip: These can be spanked, and eventually you can work out which ones reduce your overall diaper addiction, replenish your magic, and so on... but each spank slightly increasing delicateness in return. If your addiction to diapers gets too high, you can come here to resolve the issue.[or][stopping]".

Definition: DungeonScenery01 is immune to change: decide yes.

To say unique-verb-desc of (T - a DungeonScenery01):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "":
		if diaper quest is 0, say " [link][bracket]suck[close bracket][as]suck on [text-shortcut of T][end link]";
		otherwise say "[if the raw diaper addiction of the player > 0] [link][bracket]spank[close bracket][as]spank [text-shortcut of T][end link][end if]".

Check drinking DungeonScenery01:
	if diaper quest is 1, say "How would you drink a statue of a woman's butt?" instead;
	if the player is gagged, say "You're not going to be able to manage that whilst gagged!" instead;
	if the player is upright, say "You would need to be on your knees to manage that." instead;
	now drinking-target is the noun.

To say dungeon statue effect (N - a number):
	if N is 1:
		say "magic replenishment";
	otherwise if N is 2:
		say "[if diaper quest is 0][asshole] healing[otherwise]diaper addiction reduction[end if]";
	otherwise if N is 3:
		say "[if diaper quest is 0][vagina] healing[otherwise]no effect[end if]";
	otherwise if N is 4:
		say "[if diaper quest is 0]extra [semen][otherwise]extra painful[end if]";
	otherwise if N is 5:
		say "[if diaper quest is 0]cock [end if]pacifier summoning";
	otherwise if N is 6:
		say "mouthful wisp".

Carry out drinking DungeonScenery01:
	compute dungeon statue interaction.

Whacking is an action applying to one thing.
Check whacking:
	if the noun is person, say "I don't think [he of the noun] would appreciate that." instead;
	if diaper quest is 0 or the noun is not DungeonScenery01, say "That wouldn't do anything." instead.
Carry out whacking:
	compute dungeon statue interaction.
Understand "spank [something]" as whacking.

To compute dungeon statue interaction:
	reset multiple choice questions;
	repeat with N running from 1 to 6:
		let T be "unknown effect";
		if entry N in the dungeon statue knowledge list is 1:
			let X be entry N in the dungeon statue effect list;
			now T is the substituted form of "[dungeon statue effect X]";
		set next numerical response to "[if diaper quest is 0]suck[otherwise]spank[end if] the [N][if N is 1]st[otherwise if N is 2]nd[otherwise if N is 3]rd[otherwise]th[end if] [if diaper quest is 0]dick[otherwise]butt[end if] ([T])";
		set numerical response 0 to "cancel";
	compute multiple choice question;
	if player-numerical-response > 0:
		allocate 6 seconds;
		let X be entry player-numerical-response in the dungeon statue effect list;
		if diaper quest is 0:
			say "[one of]You put your lips around the statue's penis, and suck. [if the semen taste addiction of the player < 8][line break][first custom style]What the hell am I doing?[roman type][line break]Your thoughts are interrupted by the penis ejaculating [semen] into your mouth, with quite some force.[otherwise if the semen taste addiction of the player > 11]The penis ejaculates [semen] onto your tongue, with quite some force.[line break][second custom style]Yippee![roman type][line break][otherwise]The penis ejaculates [semen] straight onto your tongue, with quite some force.[end if][or]You pretend the stone penis belongs to a real, living stud, and curl your tongue around it while you suck avidly - after all, no one can see what your tongue is doing, right, so what's the harm in making it extra fun by a little imagining? Your finely-tuned BJ skills warn you, and you pull back to ease it out of your throat so you can taste it properly! You thrill as you feel it spurt its [semen][if the semen taste addiction of the player > 11]. Yummy! You swirl it around for a while, savouring the taste properly[end if].[or]You give the penis another blowjob, and once again it ejaculates [semen] into your mouth. You [if the semen taste addiction of the player > 11]greedily [end if]hold it on your tongue.[stopping]";
			if X is 4:
				say "But wait - there's even more [semen] than you're expecting!";
				if the player is getting unlucky, FaceFill semen by 12;
				otherwise FaceFill semen by 8;
				say "[variable custom style]Bleurgh! Well, now I know what happens if I suck this cock...[roman type][line break]";
			otherwise:
				FaceFill semen by 4;
		otherwise:
			say "You thwack the butt of one of the ladies[one of] with all your might[or][stopping].[line break][variable custom style]Ow!!![roman type][line break]You feel the spank on your own [buttcheeks]!";
			if X is 4:
				say "But wait - the pain is even worse than you expected! It feels like you just got spanked about twice as hard as you actually whacked the statue!";
				PainUp 40;
				say "[variable custom style]My poor butt! Well, now I know what happens if I hit this butt...[roman type][line break]";
			otherwise:
				PainUp 20;
		if X is 1:
			if the magic-fatigue of the player > 0:
				MagicPowerRefresh 6;
			otherwise:
				say "You feel some magical energy begin to surge through your body, but unfortunately your body doesn't seem capable of storing any more magic right now.";
		if X is 2:
			if diaper quest is 0:
				if the soreness of asshole > 1:
					heal asshole times 4;
				otherwise:
					say "You feel some magic tingling on your [asshole], as if it's trying to heal it! But it's already in perfect health.";
			otherwise:
				if the raw diaper addiction of the player > 5:
					DiaperAddictDown 1;
				otherwise:
					say "You sense that the statue tries to use some psychic magic to help reduce your love of diapers, but you don't really love diapers at all, so it can't do anything meaningful right now.[if entry player-numerical-response in the dungeon statue knowledge list is 0][line break][variable custom style]Still, that's useful knowledge for the future...[roman type][line break][end if]";
		if X is 3:
			if diaper quest is 0:
				if the soreness of vagina > 1:
					heal vagina times 4;
				otherwise if the player is possessing a vagina:
					say "You feel some magic tingling on your [vagina], as if it's trying to heal it! But it's already in perfect health.";
				otherwise:
					say "You feel some magic tingling on your groin, as if it's trying to heal a vagina that you don't have!";
			otherwise:
				say "Nothing else seems to happen.";
		if X is 5:
			let P be a random off-stage fetish appropriate pacifier;
			if P is actually summonable:
				say "As you pull your [if diaper quest is 0]mouth away from the statue's penis, whilst your mouth is still in its submissive 'O' shape[otherwise]hand away from the statue's butt, whilst your mouth is in a pained 'O' shape[end if], you feel a new [if P is cock pacifier]phallic[end if] object slip into the vacant space. Even though you can't see anything, you feel the small squishy intrusion as it slides along your tongue, and you can feel that it's definitely shaped like a [if P is cock pacifier]penis, but it's not quite as hard as an actual manly [manly-penis] would be[otherwise]teat[end if]. Raising your hands to your mouth, you feel a little handle in front of a large flat circular section. It's a pacifier! A [if the bimbo of the player < 8]hopeful[otherwise]half-hearted[end if] tug on the handle [if the bimbo of the player < 8]reveals[otherwise]confirms[end if] what you had already started to suspect - you can't remove it...[if diaper quest is 0][line break][variable custom style]Maybe this is the game's way of telling me I'm getting an oral fixation...?[roman type][line break][end if]";
				summon P cursed with quest;
			otherwise:
				say "You watch as some sort of pacifier gag begins to materialise in front of your mouth, but when it finds your lips already occupied, the magic fizzles.";
		let wisp-success be false;
		if X is 6:
			let W be a random nonstalking wisp;
			if W is wisp:
				now wisp-success is true;
				silently set up W;
				now the wisp-quest of W is swim-wisp-quest;
				if diaper quest is 0, now the wisp-trigger of W is lose-mouthful-wisp-trigger;
				otherwise now the wisp-trigger of W is lose-panties-wisp-trigger;
				now the wisp-punishment of W is bimbo-wisp-punishment;
				if (a random number between 0 and 1) + (a random number between 0 and 1) < game difficulty, now the wisp-punishment of W is a random appropriate wisp punishment;
				now W is everywhere;
				update backdrop positions;
				now the text-shortcut of W is the substituted form of "[ColourDesc of W]";
				say "[bold type]A [ColourDesc of W] curse wisp appears, and begins hovering behind you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type].";
			otherwise:
				say "You sense that a wisp tries to start following you, but can't because you already have too many wisps...";
		now entry player-numerical-response in the dungeon statue knowledge list is 1;
		if wisp-success is false and the semen volume of face > 0, suggest swallowing with semen consequences. [You can't avoid the taste addiction by not swallowing]


Dungeon Statue ends here.
