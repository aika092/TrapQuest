Iron Maiden Trap by Traps begins here.

iron-maiden is a trap. The printed name of iron-maiden is "[TQlink of item described]iron maiden[TQxlink of item described][verb-desc of item described]". Understand "iron", "maiden" as iron-maiden. The text-shortcut of iron-maiden is "irm".

Figure of Iron Maiden is the file "Env/Mansion/ironmaiden1.jpg".
To decide which figure-name is the examine-image of (C - iron-maiden):
	decide on figure of Iron Maiden.

To say ExamineDesc of (C - iron-maiden):
	say "A human-shaped cage, designed to keep anyone inside standing completely still and then torture them with wriggling feathers.".

To say ShortDesc of (T - iron-maiden):
	say "iron maiden".

To say EnvironmentDesc of (T - iron-maiden):
	say "The iron maiden rests against one wall here. ".

To decide which number is the girth of (D - iron-maiden):
	decide on 3.

To compute reset cooldown of (T - iron-maiden):
	do nothing. [Just sticks around visible, triggered again by the haunted mirror trap]

To say TQIronMaidenFlav:
	say "[one of]You're trapped inside, your arms pointing vertically upwards above your head, unable to move a muscle! This must be some kind of Iron Maiden! In the pitch black darkness you feel some mysterious soft things pressing into your armpits. They flick left and right to a mechanical rhythm. You're being tickled by feathers! It's surprisingly erotic, being trapped in the pitch black with the steady physical stimuli[or]You're inside the Iron Maiden again! Once again the feathers press into your armpits. [stopping]There's probably nothing you can do but [bold type][TQlink]wait[TQdlink][roman type].".

To say DQIronMaidenFlav:
	let D be a random worn diaper;
	say "[one of]You're trapped inside, your arms pointing vertically upwards above your head, unable to move a muscle! This must be some kind of Iron Maiden! In the pitch black darkness you feel some mysterious soft things pressing into your armpits. They flick left and right to a mechanical rhythm. You're being tickled by feathers! [or]You're inside the Iron Maiden again! Once again the feathers press into your armpits. [stopping][if D is nothing]Thick padding presses into your crotch from all directions, acting as the diaper it clearly feels that you should be wearing. [end if]There's probably nothing you can do but [bold type][TQlink]wait[TQdlink][roman type].".

iron-maiden-turns is a number that varies.

To decide which text is his of (M - iron-maiden):
	say "its".

This is the iron maiden immobility rule:
	if the player is in Iron Maiden, rule fails.
The iron maiden immobility rule is listed in the immobility rules.

Definition: iron-maiden is throater: decide yes.

A time based rule (this is the iron-maiden-punishment rule):
	if the player is in Iron Maiden:
		let M be iron-maiden;
		increase iron-maiden-turns by 1;
		if iron-maiden-turns > a random number between 4 and 6:
			if M is penetrating face:
				say "The [manly-penis] in your mouth shudders and then ejaculates! Your mouth is filled to the brim with [semen].";
				FaceFill semen by 4;
			say "You hear a creak, and then a sliver of daylight appears above you. The two halves of the iron maiden creak apart, as the door slowly opens, releasing you[if M is penetrating a body part]. The ghost is nowhere to be seen[end if].[line break][variable custom style]Phew, I'm free![roman type][line break]";
			increase the submission-count of the player by 1;
			increase the sex-count of the player by 1;
			repeat with T running through things in Iron Maiden:
				unless T is the player or T is backdrop, now T is in the location of M;
			now the player is in the location of M;
			dislodge M;
			refresh the map-window;
			force inventory-focus redraw; [Forces redraw of inventory window, some buttons might be the wrong colour]
			repeat with R running through reactive monsters:
				say IronMaidenTrapReactFlav of R;
			repeat with H running through revealed haunted mirror traps in the location of the player:
				now H is expired; [Otherwise we could get thrown straight back in]
		otherwise if diaper quest is 1:
			let D be a random worn diaper;
			if D is diaper, compute automatic state check of D;
			say "The feathers [one of]begin to [or][stopping]twist back and forth, tickling your armpits, making you [one of]shudder[or]wiggle and squirm[or]writhe around[then at random][one of], making it difficult to hold onto your bladder[if diaper messing >= 3] and bowels[end if][or][stopping]!";
			if diaper messing >= 3, compute soiling;
		otherwise:
			say "The feathers [one of]begin to [or][stopping]twist back and forth, tickling your armpits, making you [one of]shudder[or]wiggle and squirm[or]writhe around[then at random].";
			stimulate arms from M;
			let F be a random body part penetrated by M;
			if F is face:
				say "The phantom [manly-penis] in your mouth continues to [one of]fuck your face[or]use your throat as a fuck sock[or]energetically fuck your mouth[or]turn your mouth into its own personal onahole[in random order]!";
			[otherwise if F is fuckhole:
				say "The phantom [manly-penis] in your [variable F] continues to [one of]fuck you[or]thrust in and out[in random order]!";
				ruin F;
			otherwise if the player is possessing a vagina and the player is not pussy protected:
				say "Suddenly, a bright green ghostly penis phases through the front of the Iron Maiden! Its tip is aligned directly with your [vagina]. There's no stopping it! Before you can do anything, it is pushing past your pussy lips. Depsite its supernatural ghostly nature, it feels very real as it penetrates deeper and deeper inside you, and then begins to fuck you. The only difference between this and a real penis is that this ghost [manly-penis], instead of feeling warm and alive, feels cold to the touch.";
				now M is penetrating vagina;
				ruin vagina;
				FuckCount;]
			otherwise if face is not actually occupied:
				say "Suddenly, a bright green ghostly penis phases through the front of the Iron Maiden, right in front of your face! In this tight cramped prison, you can't even turn your head away! It pushes against your lips with increasing pressure until you are forced to let it inside. It immediately starts worming its way down into your throat until you are choking helplessly on its girth!";
				now M is penetrating face;
				BlowCount.

To say IronMaidenTrapReactFlav of (M - a monster):
	say LewdTrapReactFlav of M.

A cage trap is a kind of trap. There is 1 swing cage trap.

The printed name of a cage trap is "[TQlink of item described]cage[TQxlink of item described][verb-desc of item described]". The text-shortcut of a cage trap is "cgt".

Figure of cage trap is the file "Env/Forest/cage1.jpg".
Figure of diaper cage trap is the file "Env/Forest/cage2.jpg".
Figure of messy diaper cage trap is the file "Env/Forest/cage3.jpg".

To decide which figure-name is the examine-image of (C - a cage trap):
	let D be a random worn stuck diaper;
	if D is diaper:
		if D is messed, decide on figure of messy diaper cage trap;
		decide on figure of diaper cage trap;
	decide on figure of cage trap.

To say ExamineDesc of (C - a cage trap):
	say "A small cubical metal cage with wide strong metal bars that fell down around you[if C is grabbing the player]. It seems like you should be able to just squeeze your way out between two bars, unless you've got something too thick to get through...[otherwise].[end if]".

To trigger (Y - a cage trap):
	if the player is not in danger:
		say "[bold type]With a loud CRASH, a metal cage falls from a tree and surrounds you! [roman type]That noise might attract others to this location...";
		now Y is not untriggered;
		now Y is triggered;
		now Y is revealed;
		now the reset-timer of Y is 30;
		now magnetism-timer is 20;;
		repeat with M running through reactive monsters:
			say TriggeredTrapReactFlav of M.

To compute reset cooldown of (T - a cage trap):
	if the reset-timer of T <= time-seconds or the player is in danger:
		now the reset-timer of T is 0;
		now T is untriggered;
		now T is not expired;
		now T is unrevealed;
		if T is in the location of the player:
			say "[bold type]There's the sound of a rope creaking as the cage resets, rising back into the tree[if the player is not clothing stuck and the player is not body stuck], freeing you[end if].[roman type][line break]";
			if T is triggered:
				repeat with C running through stuck clothing:
					now C is not stuck;
					if C is worn, say "As the cage shakes and shudders, your [ShortDesc of C] shrinks back down and becomes unstuck, and you fall out.";
				repeat with C running through stuck body parts:
					now C is not stuck;
					say "As the cage shakes and shudders, your [ShortDesc of C] becomes unstuck, and you fall out.";
		now T is not triggered;
	otherwise:
		decrease the reset-timer of T by time-seconds.

Check going when there is a triggered cage trap in the location of the player:
	let C be a random worn stuck clothing;
	if C is clothing:
		say "You can't go anywhere while your [ShortDesc of C] is stuck in between the cage bars!" instead;
	let C be a random stuck body part;
	if C is body part:
		say "You can't go anywhere while your [ShortDesc of C] is stuck in between the cage bars!" instead;
	allocate 6 seconds;
	if diaper quest is 0:
		let LB be the largeness of breasts;
		let BL be the largeness of belly;
		let TH be the thickness of hips;
		let R be a random number between 1 and 10;
		if debuginfo > 0, say "[input-style]Breasts squeeze check: cage squeeze attempt d10 ([R]) | ([TH].5) breast size[roman type][line break]";
		if R <= LB:
			now the stance of the player is 1;
			now breasts is stuck;
			say "You try to squeeze through the cage, but your [BreastDesc] get stuck between the bars! You're completely stuck! [bold type]You'll have to wait for the cage to somehow release you.[roman type][line break]" instead;
		if debuginfo > 0, say "[input-style]Belly squeeze check: cage squeeze attempt d10 ([R]) | ([TH].5) belly size[roman type][line break]";
		if R <= BL:
			now the stance of the player is 1;
			now belly is stuck;
			say "You try to squeeze through the cage, but your [BellyDesc] gets stuck between the bars! You're completely stuck! [bold type]You'll have to wait for the cage to somehow release you.[roman type][line break]" instead;
		if debuginfo > 0, say "[input-style]Hips squeeze check: cage squeeze attempt d10 ([R]) | ([TH].5) hips width[roman type][line break]";
		if R <= TH:
			now the stance of the player is 1;
			now hips is stuck;
			say "You try to squeeze through the cage, but your [HipDesc] get stuck between the bars! You're completely stuck! [bold type]You'll have to wait for the cage to somehow release you.[roman type][line break]" instead;
	let D be a random worn diaper;
	if D is diaper:
		let BK be the DQBulk of the player;
		if diaper-stack is worn, increase BK by 5;
		let R be a random number between 1 and 10;
		if debuginfo > 0, say "[input-style]Diaper squeeze check: cage squeeze attempt d10 ([R]) | ([BK].5) diaper bulk[roman type][line break]";
		if R <= BK:
			now the stance of the player is 1;
			now D is stuck;
			say "You try to squeeze through the cage, but as your [ShortDesc of D] brushes against the bars, some sort of magic curse makes it grow twenty times in size! It gets stuck between the bars! You're completely stuck! [bold type]You'll have to wait for the cage to release you.[roman type][line break]" instead;
	repeat with T running through cage traps:
		now T is not triggered;
	say "You manage to squeeze out of the cage. [bold type]You are still in the [location of the player].[roman type][line break]" instead.

Iron Maiden Trap ends here.
