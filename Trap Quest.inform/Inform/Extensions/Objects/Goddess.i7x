Goddess by Objects begins here.

the-goddess is a person. the-goddess is female. The printed name of the-goddess is "[TQlink of item described]pregnant goddess[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of the-goddess is "pg". Understand "pregnant", "goddess" as the-goddess.

the-goddess has a number called labour. the-goddess has a number called previously-seen-labour.

Figure of goddess 1 is the file "NPCs/Dungeon/Goddess/goddess1.jpg".
Figure of goddess 2 is the file "NPCs/Dungeon/Goddess/goddess2.jpg".
Figure of goddess 3 is the file "NPCs/Dungeon/Goddess/goddess3.jpg".
Figure of goddess 4 is the file "NPCs/Dungeon/Goddess/goddess4.jpg".

To decide which figure-name is the examine-image of (C - the-goddess):
	if the labour of C is 0, decide on figure of goddess 1;
	if the labour of C < goddess-labour-stage-1, decide on figure of goddess 2;
	if the labour of C < goddess-labour-stage-2, decide on figure of goddess 3;
	decide on figure of goddess 4.

To decide which number is goddess-labour-stage-1:
	decide on 300 * slower timers.
To decide which number is goddess-labour-stage-2:
	decide on 600 * slower timers.
To decide which number is goddess-labour-stage-3:
	decide on 1000 * slower timers.

To say ExamineDesc of (C - the-goddess):
	say "A lithe young [man of C] with an obscenely huge pregnant belly. Apparently this is the goddess you're supposed to worship.".

A time based rule (this is the compute goddess rule):
	if the player is a september 2025 top donator and the-goddess is alive:
		increase the labour of the-goddess by time-seconds;
		if the-goddess is in the location of the player:
			if the labour of the-goddess >= goddess-labour-stage-3:
				compute goddess birth;
			otherwise if the labour of the-goddess >= goddess-labour-stage-2:
				if the previously-seen-labour of the-goddess < goddess-labour-stage-2, say "[BigNameDesc of the-goddess] has now collapsed onto [his of the-goddess] butt, and from the sounds [he of the-goddess][']s making, and the grimace on [his of the-goddess] face, you can infer that [he of the-goddess] is suffering through the final stages of labour.";
				say "[second custom style]'[one of]Oh fuck...'[or]Aaaah!'[or]Oh my word!'[or]Fuck!'[or]It's coming soon!'[in random order][roman type][line break][BigNameDesc of the-goddess] [one of]whines with[or]cries out in[purely at random] [one of]distress[or]pain[or]severe discomfort[at random]";
			otherwise if the labour of the-goddess >= goddess-labour-stage-1 and the previously-seen-labour of the-goddess < goddess-labour-stage-1:
				say "[BigNameDesc of the-goddess][']s belly is now so big that [he of the-goddess] can no longer stand, and is on [his of the-goddess] knees, [his of the-goddess] belly resting on the ground like some kind of beached whale. [big his of the-goddess] breasts have swollen so much that they have burst out of [his of the-goddess] tight top, which has been ripped open and ruined.[line break][second custom style]'[NameBimbo]... Please find it soon...'[roman type][line break]";
				say "[one of][or][second custom style]'[one of]Oh fuck[or]Too heavy[or]My womb[or]So big and round[or]I don't want to give birth to something so big[or]I can't even move[or]So stretched[at random]...'[roman type][line break][BigNameDesc of the-goddess] [one of]grunts[or]groans[purely at random].[cycling]";
			otherwise if the previously-seen-labour of the-goddess is 0:
				maybe-map-display figure of goddess 1;
				say "Suddenly, [NameDesc of the-goddess] drops to [his of the-goddess] knees with shock.[line break][second custom style]'Oh god... Oh no... I'm going into labour?! This isn't meant to happen! It's not time! It's NEVER time! I don't know what will happen if I give birth, but it can't be good! [NameBimbo]... You have to turn me back into a statue! As soon as possible! Search ancient places full of magic for a fertility idol... Please, bring one of those here as soon as you can, before it's too late!'[roman type][line break]";
				say "[one of][or][second custom style]'[one of]It's still getting bigger[or]So heavy[or]My womb[or]So big[or]This isn't supposed to happen[or]I can barely balance[at random]...'[roman type][line break][BigNameDesc of the-goddess] [one of]whines[or]moans[purely at random].[or][cycling]";
				set up fertility-idol-errand;
			if the-goddess is in the location of the player and fertility idol is held:
				say "Present [NameDesc of fertility idol] to [NameDesc of the-goddess]?";
				if the player is consenting:
					say "You hold the idol up to the goddess, whose eyes light up.[line break][second custom style]'That's it! That's it! Bring it a bit closer... I can feel it working! Oh fuck... Oh fuck... I'm gonna... I'm gonna cuuuuuuu-'[roman type][line break][BigNameDesc of the-goddess][']s apparent orgasmic throes are cut off by [him of the-goddess] suddenly turning back into stone. The altar has returned!";
					now the-goddess is in Holding Pen;
					now dungeon altar is in Dungeon28;
					say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] you have served your goddess well! I shall bestow upon you a boon, as a token of my gratitude!'[roman type][line break]";
					now the notches of pink-anal-beads is 10;
					if pink-anal-beads is actually summonable, summon pink-anal-beads;
					otherwise blandify and reveal pink-anal-beads;
					now pink-anal-beads is blessed;
					now the raw-magic-modifier of pink-anal-beads is 3;
					now pink-anal-beads is durability;
					now the size of pink-anal-beads is the insertableGirthAcceptance of asshole;
					if pink-anal-beads is worn:
						say "You feel your [asshole] being forced open as a [printed name of pink-anal-beads] materialises in your ass.";
						ruin asshole;
					otherwise:
						now pink-anal-beads is in the location of the player;
						say "A [printed name of pink-anal-beads] materialises on the ground in front of you.";
						compute autotaking pink-anal-beads;
			now the previously-seen-labour of the-goddess is the labour of the-goddess;

To compute goddess birth:
	let M be mind flayer;
	if M is alive or M is permanently banished, now M is Bowsette;
	if M is alive or M is permanently banished, now M is golem;
	if egg laying fetish is 1:
		if M is alive or M is permanently banished, now M is a random off-stage giant wasp;
		if M is nothing, now M is a random dangerous-wasp;
	otherwise:
		now M is a random off-stage tentacle monster;
		if M is nothing, now M is a random tentacle monster;
	set up M;
	now M is in the location of the player;
	if M is tentacle monster, now M is massive;
	say "[second custom style]'[NameBimbo]... It's too late... It's coming now! Oh fuck... Oh fuck... I'm gonna... I'm gonna split in two!'[roman type][line break]You watch with [horror the vaginal sex addiction of the player] as a fully grown [MediumDesc of M] emerges from [his of the-goddess] impossibly gaped cervix. [NameDesc of the-goddess] screams, passes out from the pain, [if watersports fetish is 1]pisses [himself of the-goddess], [end if]and then vanishes.[line break][variable custom style]Holy fucking shit...[roman type][line break]";
	maybe-map-display figure of goddess 4;
	check perception of M;
	now the-goddess is in Holding Pen.

Carry out talking the-goddess:
	if the player is a september 2025 top donator:
		reset multiple choice questions;
		if the player is not able to speak:
			set numerical response 1 to the substituted form of "[gag sounds]";
			set numerical response 0 to "cancel";
			compute multiple choice question;
			if player-numerical-response is 1:
				allocate 3 seconds;
				say "[variable custom style][chosen numerical response][roman type][line break]";
				say "It doesn't seem like [NameDesc of the noun] knows that you're speaking to [him of the noun].";
		otherwise:
			set numerical response 1 to the substituted form of "[variable custom style]'How are you doing?'[roman type][line break]";
			if the skillCooldown of the player <= 0, set numerical response 2 to the substituted form of "[variable custom style]'Can you teach me anything useful?'[roman type][line break]";
			set numerical response 0 to "cancel";
			compute multiple choice question;
			if player-numerical-response is not 0:
				allocate 4 seconds;
				say "[chosen numerical response]";
				if player-numerical-response is 1:
					say "[second custom style]'How do you think I'm doing?! I need your help, [NameBimbo], and I need it now! Find me that fertility idol!'[roman type][line break]";
				if player-numerical-response is 2:
					if the labour of the-goddess < goddess-labour-stage-2:
						say "[second custom style]'You... You can support your pregnant belly... as it gets bigger... If you hold your body... Ah... Like so... It has its limits, though... If you get as pregnant as me...'[roman type][line break]";
						teach belly management;
					otherwise:
						say "[second custom style]'There's no time! Find me the idol NOW!!!'[roman type][line break]".

To construct normal buttons for (T - the-goddess):
	if the player is silently able to manually speak and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of GreetButton;
		now the ButtonCommand entry is "talk to [text-shortcut of T]";
		now the ButtonPriority entry is 1;
		now the ButtonColour entry is lightModeFullGreen.

Goddess ends here.
