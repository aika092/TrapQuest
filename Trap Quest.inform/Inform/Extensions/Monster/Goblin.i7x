Goblin by Monster begins here.

a goblin is a kind of monster. a goblin is male. a goblin is intelligent.

Definition: a goblin is presenting as male:
	if lady fetish is 2, decide yes;
	decide no.

Definition: a goblin is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]
Definition: a goblin is seducable: decide no.
Definition: a goblin is a urinater: decide no.

Figure of green goblin is the file "NPCs/Mansion/Goblin/goblin1a.jpg".
Figure of green goblin male is the file "NPCs/Mansion/Goblin/goblin1b.jpg".
Figure of green goblin female is the file "NPCs/Mansion/Goblin/goblin1c.jpg".

Figure of blue goblin is the file "NPCs/Mansion/Goblin/goblin2a.jpg".
Figure of blue goblin male is the file "NPCs/Mansion/Goblin/goblin2b.jpg".
Figure of blue goblin female is the file "NPCs/Mansion/Goblin/goblin2c.jpg".

Figure of yellow goblin is the file "NPCs/Mansion/Goblin/goblin3a.jpg".
Figure of yellow goblin male is the file "NPCs/Mansion/Goblin/goblin3b.jpg".
Figure of yellow goblin female is the file "NPCs/Mansion/Goblin/goblin3c.jpg".

To say ShortDesc of (M - a goblin):
	say "goblin".

green goblin is a goblin. The text-shortcut of green goblin is "ggob".
To say MediumDesc of (M - green goblin):
	say "green goblin".
To decide which figure-name is the monster-image of (M - green goblin):
	if M is uninterested, decide on figure of green goblin;
	if M is male, decide on figure of green goblin male;
	decide on figure of green goblin female.

blue goblin is a goblin. The text-shortcut of blue goblin is "bgob".
To say MediumDesc of (M - blue goblin):
	say "blue goblin".
To decide which figure-name is the monster-image of (M - blue goblin):
	if M is uninterested, decide on figure of blue goblin;
	if M is male, decide on figure of blue goblin male;
	decide on figure of blue goblin female.

yellow goblin is a goblin. The text-shortcut of yellow goblin is "ygob".
To say MediumDesc of (M - yellow goblin):
	say "yellow goblin".
To decide which figure-name is the monster-image of (M - yellow goblin):
	if M is uninterested, decide on figure of yellow goblin;
	if M is male, decide on figure of yellow goblin male;
	decide on figure of yellow goblin female.


To decide which number is the girth of (M - a goblin):
	decide on 4.
To decide which number is the grossness of (M - a goblin): [grossness addiction needed to tolerate it]
	decide on 5.

To say MonsterDesc of (M - a goblin):
	say "A small curvaceous [man of M] with large pointy ears and an unnatural skin tone. There's no mistaking this for a human - [he of M]'s a goblin. [if M is uninterested][big he of M] is wearing an erotic white dress with a [']skirt['] section that dangles over [his of M] genitals, exposing the entirety of [his of M] hips[otherwise if M is male]The cloth covering [his of M] genitals has been pulled to one side, revealing a huge, throbbing goblin [manly-penis][otherwise]The cloth covering [his of M] genitals has been pulled to one side, revealing a puffy goblin pussy with a pierced clit[end if].";

To set up (M - a goblin):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	FavourSet M to 99.[always start at max favour]

To decide which number is the starting difficulty of (M - a goblin):
	decide on 8.

Definition: a goblin (called M) is objectifying the player:
	now the objectification of M is 0;
	decide no.

To check motion of (M - a goblin):
	do nothing.

Part 1 - Misc Flavour

To compute friendly boredom of (M - a goblin):
	do nothing.

To check consensual submissive sex of (M - a goblin):
	say PresentFriendlyRejectionFlav of M.

To say PresentFriendlyRejectionFlav of (M - a goblin):
	say "[speech style of M]'That's not how this works, hun. You won, fair and square. So, [if M is male]no dick for you[otherwise]I get to be the bottom[end if].'[roman type][line break]".

To compute labour to (M - a goblin):
	compute pregnancy clothing displacement;
	say "[PregFlav]You feel yourself start to give birth. You feel a burning desire for the father of your goblin child to appear, but nobody does, and without [NameDesc of M] there to assist with the delivery you feel yourself begin to pass out due to the pain. In your groggy state you think you see some cherubic angels appear and begin to take the baby up into the heavens.[line break][second custom style]'Don't worry [TitleBimbo], we'll take care of this one for you. Good luck on your quest!'[roman type][line break]When you properly regain your senses, there are no babies, no cherubs, just you on the floor with a rapidly deflating belly and your vaginal juices sprayed across the ground below your crotch.[if the pregnancy rate of the player is 1][line break]Deep down, you can feel your womb crying out to begin the process all over again.[end if]";
	if the pregnancy rate of the player < 2, increase the pregnancy rate of the player by 1.

Part 2 - Painting


goblin-painting is a painting. goblin-painting is rippling. The text-shortcut of goblin-painting is "gptg".

Figure of goblin painting rippling is the file "Env/Mansion/painting5a.png".
Figure of goblin painting is the file "Env/Mansion/painting5b.png".

To decide which figure-name is the examine-image of (P - goblin-painting):
	if P is rippling, decide on figure of goblin painting rippling;
	decide on figure of goblin painting.

To say MediumDesc of (P - goblin-painting):
	say "goblin painting".
To say UniqueExamineDesc of (P - goblin-painting):
	say "The face of a grinning green goblin.".

GoblinPainting01 is a painting-room. The printed name of GoblinPainting01 is "Goblin Room". The grid position of GoblinPainting01 is <11,8,12>. The shape of GoblinPainting01 is L11/0-0-0-0-0-0.

To compute painting entrance of (P - goblin-painting):
	now playerRegion is school; [any time based events that don't happen in the school should also not happen here]
	let RG be a random goblin; [right goblin]
	now RG is female;
	repeat with M running through goblins:
		set up M;
		now M is in GoblinPainting01;
	say "You step through the painting, and find yourself in a different, secret part of the mansion. This medium sized room is styled somewhat like a gameshow stage, with red and white striped walls. Three goblin [men of RG], identical except for the colours of their skin, are standing before you, and look very excited. Each is wearing a slutty dress which barely hides [his of RG] genitals, and has a large question mark over the top.[line break][speech style of RG]'Hello, slut. We want to play a game.'[roman type][line break]They say in unison, in a somewhat creepy manner.[line break][speech style of RG]'Let's play [']Find The Ring[']! Choose a goblin!'[roman type][line break]";
	change the south exit of GoblinPainting01 to the location of P;
	add south to the Nviables of GoblinPainting01;
	now the player is in GoblinPainting01;
	reset multiple choice questions;
	set numerical response 3 to "Choose the green goblin.";
	set numerical response 2 to "Choose the blue goblin.";
	set numerical response 1 to "Choose the yellow goblin.";
	compute multiple choice question;
	let CG be yellow goblin; [chosen goblin]
	if player-numerical-response is 2, now CG is blue goblin;
	if player-numerical-response is 3, now CG is green goblin;
	let WG be a random male goblin; [wrong goblin]
	if WG is CG:
		repeat with M running through male goblins:
			if M is not CG, now WG is M;
	let OG be a random goblin; [other goblin]
	repeat with M running through goblins:
		if M is not CG and M is not WG, now OG is M;
	say "You point at [NameDesc of CG].[line break][speech style of WG]'Interesting, interesting... Well, before we continue, let us show you what you would have picked if you had chosen me!'[roman type][line break]This time, [NameDesc of WG] is speaking on [his of WG] own. [big he of WG] pulls aside the cloth covering [his of WG] crotch to reveal... an absolutely massive goblin [manly-penis].[line break][variable custom style]Holy shit.[line break][speech style of WG]'That's right, slut. Choose right, you win the pussy, and the ring! But choose wrong, and it's a double serving of goblin dick for you tonight! HAHAHA!'[roman type][line break][BigNameDesc of CG] coughs.[line break][speech style of WG]'We'll give you one last chance to change your mind. Are you sure you want to choose me?'[roman type][line break][BigNameDesc of OG] pipes up.[line break][speech style of OG]'Or do you want to switch to me?'[roman type][line break]";
	interest WG;
	reset multiple choice questions;
	set numerical response 1 to "Stick with the [MediumDesc of CG].";
	set numerical response 2 to "Switch to the [MediumDesc of OG].";
	compute multiple choice question;
	let TG be CG; [target goblin]
	if player-numerical-response is 1:
		say "You stick with your original choice.";
	otherwise:
		say "You think for a minute, and then switch. Some instinct you have tells you that you'll have better odds this way.";
		now TG is OG;
	say "A drum roll plays from somewhere unseen. [BigNameDesc of TG] reaches for [his of TG] dress, and reveals...[paragraph break]";
	if TG is male:
		say "Another huge goblin cock! You've lost! [BigNameDesc of RG] pulls [his of RG] dress to the side too, to reveal [his of RG] cute little pussy, with a diamond ring pierced into [his of RG] clit.[line break][speech style of TG]'AHAHAHAHA! DOUBLE GOBLIN DICK TIME!!!'[roman type][line break][BigNameDesc of WG] and [NameDesc of TG] turn aggressive, and begin to advance on you.";
		repeat with M running through goblins:
			interest M;
			if M is male, permanently anger M;
			otherwise now M is unconcerned;
	otherwise:
		say "A soft, plump goblin pussy! And sparkling in the light, a large diamond ring can be seen, dangling, from [his of RG] pierced clit.[line break][speech style of RG]'Congratulations, hun. It's all yours. All you have to do is touch it.'[roman type][line break]";
		repeat with M running through goblins:
			interest M;
			now M is unconcerned.

Check poking a goblin:
	if the noun is female and the player is not in danger:
		let J be a random off-stage plentiful ring;
		if J is ring:
			now J is pure diamond;
			set shortcut of J;
			allocate 6 seconds;
			say "You press your finger to the ring. ";
			if J is actually summonable:
				summon J;
				say "Just like magic, it appears on your finger![line break][speech style of the noun]'CUMMING!'[roman type][line break]For whatever reason, the teleportation of the ring has sent [NameDesc of the noun] into orgasmic throes.[line break][speech style of the noun]'THANK YOU THANK YOU THANK YOU THANK YOU THANK YOU! And please join us next week for the next episode of FIND THE RIIIIIIIII-'[roman type][line break]You realise the scene is fading, and that you are now appearing back in the [location of goblin-painting].";
				teleport to the location of goblin-painting;
				now playerRegion is mansion;
			otherwise:
				say "Nothing happens. Perhaps because there's no room on any of your fingers?";
			do nothing instead.

To construct unique buttons for (T - a goblin):
	if T is female and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of PokeButton;
		now the ButtonCommand entry is "poke [the text-shortcut of T]";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is in danger:
			now the ButtonColour entry is lightModeFullYellow;
		otherwise:
			now the ButtonPriority entry is 1.

Part 3 - Combat

To compute default protecting of (M - a goblin):
	say "[BigNameDesc of M] [one of]claps [his of M] hands with glee[or]squeals with excitement[or]laughs playfully[or]jumps with excited energy[in random order] as [he of M] watches.".

To say BanishFleeFlav of (M - a goblin):
	say "[speech style of M]'Fuck this shit. I'm out!'[roman type][line break][BigNameDesc of M] hops away from you, and out of the painting. You won't be seeing [him of M] again.".

To compute (M - a goblin) slinking away:
	compute automatic banishment of M.

Definition: a goblin is auto-banish-loot-dropping: decide no. [Will it automatically drop jewellery when it is banished in this manner?]

To compute unique periodic effect of (M - a goblin):
	let X be 0;
	if M is interested, now X is 1;
	if M is female and M is in the location of the player and the player is not in danger, say "[speech style of M]'All you have to do is [bold type]poke[speech style of M] my clit, and the ring is yours.'[roman type][line break]".

To compute unique unsimulated periodic effect of (M - a goblin):
	if M is not in the location of the player, destroy M.

Goblin ends here.
