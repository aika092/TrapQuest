Summoning Portals by Objects begins here.

A summoning portal is a kind of thing. A summoning portal is not portable.[ The printed name of summoning portal is "summoning portal".] The text-shortcut of summoning portal is "spo". A summoning portal can be active. A summoning portal is usually not active. A summoning portal has a number called charge. The charge of a summoning portal is usually 450. [represents the time until it spawns the next monster]A summoning portal has a number called next-summon. The next-summon of a summoning portal is usually 0.[represents the next monster it will summon we can obfuscate this from the player or show them if we want to.] Understand "mirror", "portal" as summoning portal.

A summoning portal has a number called spawn-count. The spawn-count of a summoning portal is usually 0.
A summoning portal has a number called reset-count. The reset-count of a summoning portal is usually 0.

[!<ChargeUpPortalByNumber>+

Increases the charge of a summoning portal by a given amount. If the portal already has a high charge, X will be decreased partially. Additionally, it will be decreased based on how many times it has been reset since the last time it summoned anything. Increases the portals counter for the number of times its charge has been increased since the last time it summoned a monster.

@param <Summoning Portal>:<S> The portal to be charged
@param <Integer>:<X> The amount by which the portal is to be charged, which has diminishing returns by default

+!]
To ChargeUp (S - a summoning portal) by (X - a number):
	decrease X by the reset-count of S * 10;
	if the charge of S > 500:
		decrease X by X / 2;
	otherwise if the charge of S > 400:
		decrease X by X / 3;
	otherwise if the charge of S > 300:
		decrease X by X / 4;
	increase the charge of S by X;
	increase the reset-count of S by 1;
	if S is active and the charge of S > the active threshold of S:
		now S is not active;
		if S is regionally in playerRegion, say "The energy surrounding the [S] has dissipated, for now.".

[!<ChargeDownPortalByNumber>+

Decreases the charge of a summoning portal by a given amount

@param <Summoning Portal>:<S> The portal to be discharged
@param <Integer>:<X> The amount of charge the portal will lose

+!]
To ChargeDown (S - a summoning portal) by (X - a number):
	decrease the charge of S by X.
To ChargeDown (S - summoning-circle) by (X - a number):
	if the number of alive royal guards is 0, increase X by X * (1 + the number of held stolen clothing);
	decrease the charge of S by X.

Appeasing it with is an action applying to two things.

Check appeasing something with:
	if the second noun is not summoning portal, say "This verb is for throwing things offering things to summoning portals." instead;
	if the second noun is not mysterious-mummy:
		unless the second noun is active, say "The [second noun] doesn't even look active. Why waste your time?" instead;
	if the noun is worn and the noun is not plentiful accessory, say "You should probably take it off first." instead;
	if the second noun is summoning-circle:
		if the second noun is player, try entering the noun instead.

Report appeasing something with summoning portal:
	allocate 3 seconds.

Understand "place [something] in front of [something]" as appeasing it with.

Check inserting something into a summoning portal:
	try appeasing the noun with the second noun instead.

[!<SayPortalHintOfPortal>+

Outputs a hint on what the summoning portal "S" will spawn next.

@param <Summoning Portal>:<S> The portal being examined

+!]
To say PortalHint of (S - a summoning portal):
	say "It's going to summon something soon!".

To say DivinationHint of (S - a summoning portal):
	say "You can sense that it will summon a monster soon.".

[!<SayActiveWarningOfPortal>+

Outputs a message announcing that summoning portal "S" has activated and will summon a monster soon.

@param <Summoning Portal>:<S> The portal activating

+!]
To say ActiveWarning of (S - a summoning portal):
	say "[printed name of S] is now active!";

[!<DecideWhichMonsterIsTheSummonChoiceOfPortal>

Chooses which monster summoning portal "S" is about to spawn, then returns it. If it returns nothing, no monster spawns. Any logic here should probable include next-summon

@param <Summoning Portal>:<S> The portal the monster will be summoned from
@return <Monster> The monster that the summoning portal will spawn next.

+!]
To decide which object is the summonChoice of (S - a summoning portal):
	[let N be the next-summon of S;
	let M be monster1;(weak)
	if N is 1:
		now M is monster2;
	otherwise if N is 2:
		now M is monster3;
	otherwise if N is 3:
		now M is monster4;
	otherwise if N is 4:
		now M is monster5;]
	decide on nothing.

[!<DecideWhichNumberIsTheActiveThresholdOfPortal>

Chooses which monster summoning portal "S" is about to spawn, then returns it. If it returns nothing, no monster spawns.

@param <Summoning Portal>:<S> The portal to be activated
@return <Integer> The charge that S must pass below in order to activate

+!]
To decide which number is the active threshold of (S - a summoning portal):
	decide on 300.

[!<ComputeSummoningCheckOfPortal>+

Represents the core of how a summoning portal functions. First decreases the charge of the portal based on game difficulty, then if the portal is activate and has a charge of 0 or less, tries to summon a monster. If it can't pick out a monster, the portal charge is increased so the portal doesn't keep checking running the choice function every turn. If the portal is inactive, but its charge is below the return value of the active threshold function, it activates.

@param <Summoning Portal>:<S> The portal being checked

+!]
To compute summoning check of (S - a summoning portal) :
	decrease the charge of S by (time-seconds + game difficulty) / 2;[we always decrease the charge when before we check]
	if the charge of S < 1 and S is active:
		let M be the summonChoice of S;
		if M is monster:[since M is the result of a decide on function, "if M is monster" is pointless]
			compute S summoning M;
			compute portal reset of S;
		otherwise:
			increase the charge of S by 30;
	otherwise if S is not active and the charge of S < the active threshold of S:
		if S is regionally in playerRegion, say ActiveWarning of S;
		now S is active.
		[now the alert of the player is 1.]

[!<ComputeSummoningCheckOfPortal>+

Calls the regionally summoning function for summoning portal "S", which calls a relevant variant of summon M. Once the monster is set up, transfers the monster to the location of S and calls the monster's summoning flav function. The monster's boredom is set to 1 so the game has time to properly add it to the turn order.(or whatever causes the perception function to fire twice when monsters spawn. beats me dude.)

@param <Summoning Portal>:<S> The portal the monster is being summoned from
@param <Monster>:<M> The monster to be summoned

+!]
To compute (S - a summoning portal) summoning (M - a monster):
	compute S regionally summoning M;
	if M is nonexistant and M is on-stage, set up M;
	now M is in the location of S;
	say SummoningFlav of M;[should describe portal closing up if the player is in the room]
	if M is not interested, now the boredom of M is 1.[should fix issues where the player is in the room and the monster's perception function runs twice in a row]

[!<ComputePortalRegionallySummoningMonster>+

Should be defined uniquely for each portal. Chooses what level the monster is summoned in, and holds any code that must run depending on on level. Should also increase portal charge.

@param <Summoning Portal>:<S> The portal M will be summoned from
@param <Monster>:<M> The monster to be summoned

+!]
To compute (S - summoning portal) regionally summoning (M - a monster):
	summon M;
	now the next-summon of S is a random number between 0 and 5;
	now the charge of S is the active threshold of S * 3.

[!<ComputePortalResetOfPortal>+

Sets the summoning portal "S"'s active flag to false and increases its counter for monsters spawned by 1. Starts a fresh tally of the number of times the portal has had its charge increased.

@param <Summoning Portal>:<S> The portal being reset

+!]
To compute portal reset of (S - a summoning portal):
	now S is not active;
	increase the spawn-count of S by 1;
	now the reset-count of S is 0.

To compute wankingSiphon of (S - a summoning portal):
	if S is active:
		ChargeDown S by 20;
		say "[one of]You can feel energy swirling around your naughty fingers as the ambient pressure intensifies[or]Energy slowly twists and swirls around your naughty fingers[or]The ambient pressure intensifies as energy twists around your naughty fingers[cycling].[line break]".

Chapter 1 - Summoning Circle

The summoning-circle is in Dungeon33. The summoning-circle is a summoning portal. The printed name of summoning-circle is "[TQlink of item described]summoning circle[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "summon", "summoning", "circle", "summoning circle" as summoning-circle. Figure of summoning circle is the file "Env/Dungeon/circle1.png".

To decide which figure-name is the examine-image of (C - summoning-circle):
	decide on figure of summoning circle.


To say ExamineDesc of (C - summoning-circle):
	say "A softly glowing pentagram, with candles placed at all five points of the star. You can see that a mirror has been inlaid into the centre of the circle, although if you look closely, you see that it doesn't show your reflection. [if C is active][PortalHint of C]The energy around the circle is slowly building, as if it were hungry for something. Maybe you can find some way to [bold type]appease[roman type] it.[end if][if C is active and the divinationskill of the player is 1][DivinationHint of C][end if]";
	if newbie tips is 1, say "[one of][newbie style]Newbie Tip: This is the mechanism that the Dungeon uses to summon new NPCs into the region over time. It will slowly count down until it releases a brand new monster into the dungeon. When it gets close, it'll start glowing, at which point you can increase its timer by entering it or offering valuable items to it.[roman type][or][stopping]".

To say PortalHint of (S - summoning-circle):
	let N be the next-summon of S;
	if N is 1:
		say "You can see a faint image of a cross floating behind it.";[guard]
	otherwise if N is 2:
		say "You can make out a smoky image of a sword inside it.";[gladiator]
	otherwise if diaper quest is 1:
		say "You can make out the figure of someone crawling around.";[ABS]
	otherwise if N > 0:[you're probably going to be most excited for a wench, so let's throw a curveball]
		say "You can make out a faint image inside of it. It looks like...[if the charge of S > 20 or N is 3]the back of someone's head?[otherwise if N is 4]a hat?[end if]";[wench or aeromancer]
	otherwise:
		say "You can make out an image of a balloon inside it.".[sex doll]

To say DivinationHint of (S - a summoning-circle):
	let N be the next-summon of S;
	if N is 1:
		say "You can sense that it will summon a royal guard next.";
	otherwise if N is 2:
		say "You can sense that it will summon a gladiator next.";
	otherwise if diaper quest is 1:
		say "You can sense that it will summon an adult baby slave next.";
	otherwise if N is 3:
		say "You can sense that it will summon a wench next.";
	otherwise if N is 4:
		say "You can sense that it will summon an aeromancer next.";
	otherwise:
		say "You can sense that it will summon a sex doll next.".

A time based rule (this is the dungeon summoning rule):
	if playerRegion is Dungeon, compute summoning check of summoning-circle.

To compute (S - summoning-circle) regionally summoning (M - a monster):
	summon M in the dungeon;
	if diaper quest is 1 and the number of alive adult baby slaves is 0, now the next-summon of S is 5;
	if the number of alive royal guards is 0, now the next-summon of S is 1;
	now the charge of S is the active threshold of S + 150 + (the number of monsters in the Dungeon * 50).

To decide which object is the summonChoice of (S - a summoning-circle):
	let N be the next-summon of S;
	let M be a random off-stage sex doll;[default to sex doll]
	if diaper quest is 1, now M is a random off-stage adult baby slave;
	if N is 1 and the number of off-stage royal guards > 0:
		now M is a random off-stage royal guard;
	otherwise if N is 2 and the number of off-stage dungeon dwelling gladiator > 0:
		now M is a random off-stage dungeon dwelling gladiator;
	otherwise if N is 3 and the number of off-stage wench > 0 and diaper quest is 0:
		now M is a random off-stage wench;
	otherwise if inflation fetish is 1 and N is 4 and the number of off-stage dungeon dwelling aeromancers > 0:
		now M is a random off-stage dungeon dwelling aeromancer;
	decide on M.

To say ActiveWarning of (S - a summoning-circle):
	say "[bold type][if the location of the player is Dungeon33]The [printed name of summoning-circle] slowly lights up, and you can feel dark energy gathering around you...[otherwise]A pulse of energy passes through the dungeon, and something changes in the air. It's almost like there's a draft.[end if][roman type][line break]";
	if the location of the player is Dungeon33, say "[variable custom style]Is something going to come through that?[roman type][line break]";
	otherwise say "[variable custom style]Something's coming[if the player is a nympho]... Teehee, cumming.[otherwise]...[end if][roman type][line break]";
	if newbie tips is 1, say "[one of][newbie style]Newbie Tip: Uh oh, looks like the dungeon's summoning altar just activated! It will slowly count down until it releases a brand new monster into the dungeon. Try increasing its timer by entering it or offering items to it, or perform some sexual acts nearby to decrease it![roman type][or][stopping]".

Check entering summoning-circle:
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	if the noun is not active, say "You step into the circle. Nothing happens." instead;[Past this point, the player is successful! The “instead” statement terminates functions, as usual.]
	say "You step into the circle, disturbing the growing concentration of magic. It expels energy like a cloud of smoke, which saturates everything in the immediate vicinity, including you!";
	allocate 2 seconds;[doesn't take all that long]
	repeat with C running through clothing in the location of the player:
		if a random number between 1 and 3 is 1, curse C;
	let R be a random number between 1 and 4;
	if diaper quest is 1, now R is a random number between 1 and 2;
	if the player is very horny, now R is 5;
	if R is 1:
		say "Submissive fantasies assault your mind!";
		if a random number between 1 and 2 is 1 and diaper quest is 1:
			if a random number between 1 and 2 is 1 and the player is female, VaginalSexAddictUp 1;
			otherwise AnalSexAddictUp 1;
		otherwise:
			SexAddictUp 1;
	if R is 2:
		say "Your arousal flares up!";
		Arouse 3000;
	if R is 3:
		say "Your chest feels strange...";
		let D be a random worn breast covering clothing;
		if D is transformable transformation chain clothing, potentially transform D;
		otherwise TitFuckAddictUp 1;
	if R is 4:
		say "A strange feeling ripples down your spine, and you look over your shoulder to catch your [AssDesc] having a sudden growth spurt!";
		AssSwell a random number between 1 and 2;
	if R is 5:[force the player to masturbate, which gets the portal closer to spawning]
		say "The magic surrounding you seems to rapidly intensify rather than fade away, and your arousal flares as you realize its impossible to resist...";
		now auto is 1;
		if the player is very horny, try masturbating;
		now auto is 0;
	if R < 5, ChargeUp summoning-circle by a random number between 200 and 300;
	do nothing instead.

Carry out appeasing something with summoning-circle:
	now the noun is in the location of the player;
	if the noun is plentiful accessory:
		say "The [noun] lights up as you throw it into the circle, disintegrating as it absorbs some of the building energy.";
		let P be the price of the noun;
		ChargeUp summoning-circle by (P * 75);
		only destroy the noun;
	otherwise if the noun is pure totem:
		say "The [printed name of the noun] lights up as you throw it into the circle, disintegrating as it absorbs the building energy. A wave of relief passes through your surroundings as the last remnants of the [printed name of the noun] disappear completely.";
		ChargeUp the second noun by 300;
		only destroy the noun;
	otherwise if the noun is demonic:
		say "The [noun] lights up as you throw it into the circle, which turns bright red as it cannibalizes its energy. You can feel the magic intensify rapidly as the [noun] bursts into flames.";
		ChargeDown the second noun by 1000;
		only destroy the noun;
	otherwise if the noun is blessed clothing:
		say "The [noun] lights up as you throw it into the circle, [if the noun is not cursable]disintegrating as it absorbs some of the building energy[otherwise]trembling visibly as it absorbs some of the building energy[end if].";
		if the noun is cursable, fully curse the noun;
		otherwise only destroy the noun;
		ChargeUp the second noun by 750;
	otherwise:
		let N be 0;
		if the noun is clothing, now N is the urine-soak of the noun + the semen-soak of the noun + the milk-soak of the noun;
		if N <= 0:
			say "You throw the [noun] into the circle. It disintegrates. Nothing else happens.";
			only destroy the noun;
		otherwise:
			say "The bodily fluids in the [noun] start to glow a fluorescent shade of blue as you throw it into the circle, the clothing disintegrating as it absorbs some of the building energy.";
			only destroy the noun;
			ChargeUp the second noun by N * 50.

Report appeasing something with summoning portal:
	allocate 3 seconds.

Chapter 2 - Giant Statue

giant-statue is a summoning portal. giant-statue is in Woods30. The printed name of giant-statue is "[TQlink of item described]giant statue[TQxlink of item described][shortcut-desc][verb-desc of item described]". Figure of giant pregnant statue is the file "Env/Forest/statue5.png". Figure of giant-statue is the file "Env/Forest/statue6.png". Understand "giant", "statue" as giant-statue.

To decide which figure-name is the examine-image of (C - giant-statue):
	if pregnancy fetish is 1, decide on figure of giant pregnant statue;
	decide on figure of giant-statue.

To say ExamineDesc of (C - giant-statue):
	if vine boss is alive or doomed is 5:
		say "An enormous statue of a blindfolded [if pregnancy fetish is 1]pregnant [end if]woman on all fours. [if doomed is 5]Huge, sickly purple creepers are wrapped around her wrists and ankles[otherwise]Massive green vines are crammed into her mouth and wrapped around her wrists and ankles[end if], as if to hold her down[unless C is active], or maybe... she's the one holding them[end if]. Her hands are cupped around a great stone stab underneath her, which has a strangely mirror-like surface.";
		if C is active:
			say "[if the charge of C > 250]Her mouth, ass and pussy are all plugged with slowly twisting vines[otherwise if the charge of C > 150 and bukkake fetish is 1]Her mouth, ass and pussy are all plugged with twisting vines, which seem to undulate in waves[otherwise if the charge of C > 150]Her orifices are plugged with undulating vines, which all seem to thrust into her at varying speeds[otherwise if the charge of C > 70]Her orifices are plugged with undulating vines, thrusting forcefully as the soil gently shifts beneath her[otherwise]Her orifices are plugged with eagerly undulating vines, thrusting urgently as the soil roils beneath her[end if]";
	otherwise:
		say "An enormous statue of a blindfolded [if pregnancy fetish is 1]pregnant [end if]woman on her knees. She has one hand [unless C is active]facing forward, as if taking an oath[otherwise if the charge of C > 250]palming her breast, a prominent stony nipple poking out between her fingers[otherwise if the charge of C > 150]across her breasts, pinching a prominent stony nipple with her fingers[otherwise if the charge of C > 70]between her legs, spreading her stony labia lips[otherwise]between her legs, her flawless stone clit just visible between the knuckles of her fingers[end if]. Her other hand is cupped around a great stone slab underneath her, which has a strangely mirror-like surface.";
	if C is active:
		say "[PortalHint of C] Although made of stone, the lust that hangs in the air around her is all too real. Maybe you can find some way to [bold type]appease[roman type] her with an offering. [if the divinationskill of the player is 1][DivinationHint of C][end if]";
	otherwise:
		say "Right now it seems like there's nothing you can do. Maybe at certain times she can be appeased with some kind of offering.";
		if newbie tips is 1, say "[one of][newbie style]Newbie Tip: This is the mechanism that the Woods uses to summon new NPCs into the region over time. It will slowly count down until it releases a brand new monster into the region. When it gets close, it'll become possible to increase its timer by offering valuable items to it.[roman type][or][stopping]".

[Forest hints are sound based.]
To say PortalHint of (S - giant-statue):
	let N be the next-summon of S;
	if N < 3 and N > 0:
		say "You can hear really intense moaning coming from inside [him of S]. [if the sex addiction of the player < 6][line break][first custom style]Sounds like screaming...[roman type][line break][otherwise if the sex addiction of the player < 14][line break][variable custom style]Why do I feel jealous...[roman type][line break][otherwise][line break][second custom style]Wow, whoever is in there must feel really good...[roman type][line break][end if]";[demoness/wasp]
	otherwise if N is 3:
		say "You can make out a faint slapping noise coming from inside [him of S]. It's rhythmic, and every so often you hear a moan.";[gladiator]
	otherwise if N is 4 or N is 6:
		say "You can make out a faint noise every so often, almost like a slurp.";[aeromancer/unicorn]
	otherwise if N is 6:
		say "You can faintly someone giggling inside [him of S]. It's almost too quiet for you to hear, but it's definitely there.";[fairy]
	otherwise:
		say "[if the charge of S > 50]It's eerily silent[otherwise]You can hear a really distinct buzzing noise coming from inside of [him of S][end if].".[mannequin]

To say DivinationHint of (S - giant-statue):
	let N be the next-summon of S;
	if N is 1:
		say "You can sense that she will summon a demoness next.";
	otherwise if N is 2:
		say "You can sense that she will summon a giant wasp next.";
	otherwise if N is 3:
		say "You can sense that she will summon a gladiator next.";
	otherwise if N is 4:
		say "You can sense that she will summon an aeromancer next.";
	otherwise if N is 5:
		say "You can sense that she will summon a fairy next.";
	otherwise if N is 6:
		say "You can sense that she will summon a unicorn next.";
	otherwise:
		say "You can sense that she will summon a mannequin next.".

A time based rule (this is the woods summoning rule):
	if playerRegion is Woods:
		compute summoning check of giant-statue.

To compute (G - giant-statue) regionally summoning (M - a monster):
	summon M in the Woods;
	now the next-summon of G is a random number between 0 and 5;
	now the charge of G is the active threshold of G + 150 + (the number of monsters in the woods * 50);

To decide which object is the summonChoice of (G - a giant-statue):
	let N be the next-summon of G;
	let M be a random off-stage woods dwelling mannequin;[default to mannequin]
	if N is 1 and the number of off-stage demonesses > 0:
		now M is a random off-stage demoness;
	otherwise if mythical creature fetish is 1 and egg laying fetish is 1 and N is 2 and the number of off-stage giant wasps > 0:
		now M is a random off-stage giant wasp;
	otherwise if N is 3 and the number of off-stage woods dwelling gladiators > 0:
		now M is a random off-stage woods dwelling gladiator;
	otherwise if inflation fetish is 1 and N is 4 and the number of off-stage aeromancers > 0:
		now M is a random off-stage aeromancer;
	otherwise if N is 5 and the number of off-stage fairy > 0:
		now M is a random off-stage fairy;
	otherwise if N is 6 and unicorn is off-stage:
		now M is unicorn;
	decide on M.

To say ActiveWarning of (G - a giant-statue):
	if the location of the player is Woods30:
		if vine boss is alive or doomed is 5, say "You hear a deep rumble, watching as a hundreds of vines shoot out of the soil and plug up each of the statue's orifices. Palpable lust settles over everything in the vicinity as the vines begin to twist inside her.";
		otherwise say "You hear a deep rumble, watching as the giant statue's arms slowly reach up and palm her gigantic breasts. Raw, carnal energy begins to build up around you as a forceful gust of wind rattles the trees.";
	otherwise:
		say "You hear a rumble far off in the distance, and a really strange heated feeling comes over you as the noise passes through the trees.";
	if the location of the player is Woods30, say "[variable custom style]What happens when she comes?[roman type][line break]";
	otherwise say "[variable custom style]It feels like something is coming...[roman type][line break]";
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: Uh oh, looks like the woods summoning altar just activated! It will slowly count down until it releases a brand new monster into the woods. Try increasing its timer by entering it or offering items to it, or perform some sexual acts nearby to decrease it![roman type][or][stopping]".

Check entering giant-statue:
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	if the noun is not active, say "You step onto the slab. Nothing happens." instead;[Past this point, the player is successful! The “instead” statement terminates functions, as usual.]
	say "You step onto the slab, and the ground around you rumbles as the statue's head turns toward you.";
	allocate 2 seconds;
	let V be 0;
	if vine boss is alive or doomed is 5, now V is 1;
	let R be a random number between 1 and 5;
	if R is 1 and pregnancy fetish is 1:
		if diaper quest is 0 and the player is female:
			say "You feel a tingling sensation in your core as a wave of energy washes over you.";
			increase the pregnancy rate of the player by 1 + V;
		otherwise if diaper quest is 0 and the size of penis > 0:
			PenisDown 1 + V;
			say "A wave of energy washes over you as your penis shrinks into a [ShortDesc of penis].";
		otherwise:
			now R is 5;
	otherwise if R is 2:
		if diaper quest is 1:
			now R is 5;
		otherwise:
			say "Your chest tingles as a wave of energy passes over you.";
			BustUp 1;
			if V is 1, TitfuckAddictUp 1;
	otherwise if R is 3:
		say "Your head tingles as a wave of energy passes over you.";
		HairUp 1;
		if V is 1:
			if diaper quest is 0, SexAddictUp 1;
			otherwise IntDown 1;
	otherwise if R is 4:
		say "Your stomach gurgles as a wave of energy passes over you.";
		StomachFoodDown 1;
		StomachDown 1;
		if V is 1:
			if diaper quest is 0, SemenAddictUp 1;
			otherwise DexDown 1;
	if R is 5:
		say "A wave of raw, carnal energy hits you like a tidal wave. Your whole body burns with arousal, and your hands start to move before you can stop them...";
		now auto is 1;
		if the player is very horny, try masturbating;
		now auto is 0;
	if R < 5, ChargeUp giant-statue by a random number between 200 and 300;
	do nothing instead.

Carry out appeasing something with giant-statue:
	now the noun is in the location of the player;
	if the noun is plentiful accessory:
		say "Glowing vines reach out of the ground, slowly pulling the [ShortDesc of the noun] underneath the soil. You feel some of the surrounding energy fading away.";
		let P be the price of the noun;
		ChargeUp the second noun by (P * 75);
		only destroy the noun;
	otherwise if the noun is pure totem:
		say "Glowing vines reach out of the ground, grasping the [ShortDesc of the noun] as it lights up. Waves of relief passes through your surroundings as they slowly but surely drag it underneath the soil.";
		ChargeUp the second noun by 900;
		only destroy the noun;
	otherwise if the noun is biological clothing:
		say "Glowing vines reach out of the ground, pulling the [ShortDesc of the noun] underneath the soil. The surrounding energy somehow grows even more intense.";
		ChargeDown the second noun by 100;
		only destroy the noun;
	otherwise if the noun is sex toy:
		say "Glowing vines reach out of the ground, twisting around the [ShortDesc of the noun] as it lights up. Large, pulsating veins bulge out along its surface, grows thicker and harder until finally it explodes, [semen] cascading liberally over your surroundings as the [noun] disappears fully beneath the soil.";
		only destroy the noun;
		SemenPuddleUp the size of the noun;[this is where the real power is]
		ChargeUp the second noun by 300;
	otherwise:
		let N be 0;
		if the noun is clothing, now N is the urine-soak of the noun + the semen-soak of the noun + the milk-soak of the noun;
		if N <= 0 or a random number between 1 and 3 > 1:
			say "Glowing vines reach out of the ground, pulling the [ShortDesc of the noun] underneath the soil. The surrounding energy seems to grow a little less intense.";
			only destroy the noun;
			increase N by 5;
		otherwise:
			say "The bodily fluids in the [ShortDesc of the noun] starts to glow a fluorescent shade of blue, leeching out of the [clothing-material of the noun] and disappearing into the soil.";
			clean the noun;
		ChargeUp the second noun by N * 40.

Chapter 3 - Teleportation Pad

The teleportation-pad is in Hotel41. The teleportation-pad is a summoning portal. The printed name of teleportation-pad is "[TQlink of item described]teleportation pad[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "teleportation", "pad" as teleportation-pad. The text-shortcut of teleportation-pad is "ted".

Figure of teleportation pad is the file "Env/Hotel/teleportationpad1.jpg".

To decide which figure-name is the examine-image of (C - teleportation-pad):
	decide on figure of teleportation pad.

To say ExamineDesc of (C - teleportation-pad):
	say "A large metal pad lined with [PortalHint of C] sensors. The surface is strangely mirror like, [if C is active]and you feel like energy is slowly building up around it. Maybe you can try to offer something to [bold type]appease[roman type] it[otherwise]although it doesn't seem to show your reflection[end if].[if C is active and the divinationskill of the player is 1][DivinationHint of C][end if]";

To say PortalHint of (S - teleportation-pad):
	let N be the next-summon of S;
	if N is 1 or N is 5:[wench/wrestler]
		say "pink";
	otherwise if N is 2:[butler]
		say "blinking";
	otherwise if N is 3:[chef]
		say "oscillating";
	otherwise if N is 4:[maid]
		say "flashing";
	otherwise if N is 6:
		say "red";
	otherwise:[bellboy]
		say "beeping".

To say DivinationHint of (S - teleportation-pad):
	let N be the next-summon of S;
	if N is 1:
		say "You can sense that it will summon a wench next.";
	otherwise if N is 2:
		say "You can sense that it will summon a robobutler next.";
	otherwise if N is 3:
		say "You can sense that it will summon a robochef next.";
	otherwise if N is 4:
		say "You can sense that it will summon a robomaid next.";
	otherwise if N is 5:
		say "You can sense that it will summon a wrestler next.";
	otherwise if N is 6:
		say "You can sense that it will summon a dominatrix next.";
	otherwise:
		say "You can sense that it will summon a robobellboy next.".

A time based rule (this is the hotel summoning rule):
	if playerRegion is Hotel:
		compute summoning check of teleportation-pad.

To decide which object is the summonChoice of (G - teleportation-pad):
	let N be the next-summon of G;
	let M be a random off-stage robobellboy;[default to bellboy]
	if N is 1 and the number of off-stage hotel dwelling wenches > 0:
		now M is a random off-stage hotel dwelling wench;
	otherwise if N is 2 and there is an off-stage robobutler:
		now M is a random off-stage robobutler;
	otherwise if N is 3 and there is an off-stage robochef:
		now M is a random off-stage robochef;
	otherwise if N is 4 and there is an off-stage robomaid:
		now M is a random off-stage robomaid;
	otherwise if N is 5 and there is an off-stage wrestler:
		now M is a random off-stage wrestler;
	decide on M.

To say ActiveWarning of (G - teleportation-pad):
	if the location of the player is Hotel41, say "[bold type]You hear a low humming sound as the teleportation pad activates, and electrical energy begins to build up around you.[roman type][line break]";
	otherwise say "[bold type]The lights flicker as a low humming noise pierces the hotel.[roman type][line break]";
	if the location of the player is Hotel41, say "[variable custom style]'Is it about to summon something?'[roman type][line break]";
	otherwise say "[variable custom style]'It feels like something is coming...'[roman type][line break]";
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: Uh oh, looks like the hotel summoning altar just activated! It will slowly count down until it releases a brand new monster into the hotel. Try increasing its timer by entering it or offering items to it, or perform some sexual acts nearby to decrease it![roman type][or][stopping]".

Check entering teleportation-pad:
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	if the noun is not active, say "You step into the circle. Nothing happens." instead;[Past this point, the player is successful! The “instead” statement terminates functions, as usual.]
	say "You step onto the teleportation pad, and it emits a strong hum as the whole room lights up!";
	allocate 2 seconds;[doesn't take all that long]
	let R be a random number between 1 and 5;
	if the player is very horny, now R is 6;
	let Om be the location of the player;
	let M be throne;
	if R is 1:
		let H be a random hotel bed;
		teleport to the location of H;
		now M is H;
	otherwise if R is 2 and there is an alive demoness:
		let D be a random alive demoness;
		teleport to the location of D;
		now M is D;
	otherwise if R < 4 and there is an alive gladiator:
		let G be a random alive gladiator;
		teleport to the location of G;
		now M is G;
	otherwise if R < 5 and vampiress is alive:
		let V be vampiress;
		teleport to the location of V;
		now M is V;
	unless M is throne:
		say "Your body seems to absorb the static electricity, which just seems to intensify even further as your body converts it to red hot arousal. You can't resist...";
		now auto is 1;
		try masturbating;
		now auto is 0;
	otherwise:
		let X be a random number between 1 and 3;
		if X is 1:
			say "You feel a strange tingling sensation as your surroundings seem to spin, and in the blink of an eye you find yourself standing in the [bold type][the location of M][roman type]!";
		otherwise if X is 2:
			say "You feel a little bit of vertigo as your surroundings seem to spin, and your stomach lurches you suddenly find yourself in the [bold type][the location of M][roman type]!";
			FatigueUp 75;
		otherwise:
			say "You are overwhelmed with vertigo as your surroundings begin to spin, and [if the player is prone]your stomach turns over[otherwise]and you immediately drop to your knees[end if] as you suddenly find yourself in the [bold type][the location of M][roman type]!";
			if the player is prone, FatigueUp 100;
			otherwise now the stance of the player is 1;
	if R < 6, ChargeUp teleportation-pad by a random number between 200 and 300;
	do nothing instead.

Carry out appeasing something with teleportation-pad:
	now the noun is in the location of the player;
	allocate 2 seconds;
	if the noun is plentiful accessory:
		say "The [noun] lights up as you throw it onto the pad, disintegrating as it absorbs some of the building energy.";
		let P be the price of the noun;
		ChargeUp summoning-circle by (P * 20);
		only destroy the noun;
	otherwise if the noun is pure totem:
		say "The [printed name of the noun] lights up as you throw it onto the pad, disintegrating as it absorbs the building energy. A wave of relief passes through your surroundings as the last remnants of the [printed name of the noun] disappear completely.";
		ChargeUp the second noun by 700;
		only destroy the noun;
	otherwise if the noun is metal:
		say "The [noun] lights up as you throw it onto the pad, emitting bright sparks. You can feel the energy intensify rapidly as the [noun] bursts in a hail of yellow embers.";
		ChargeDown the second noun by 450;
		only destroy the noun;
	otherwise if the noun is blessed clothing:
		say "The [noun] lights up as you throw it into the circle, [if the noun is not cursable]disintegrating as it absorbs some of the building energy[otherwise]trembling visibly as it absorbs some of the building energy[end if].";
		if the noun is cursable, fully curse the noun;
		otherwise only destroy the noun;
		ChargeUp the second noun by 600;
	otherwise:
		let N be 0;
		if the noun is clothing, now N is the urine-soak of the noun + the semen-soak of the noun + the milk-soak of the noun;
		if N <= 0:
			say "You throw the [noun] into the circle. It disintegrates. Nothing else happens.";
			only destroy the noun;
		otherwise:
			say "The bodily fluids in the [noun] start to glow a fluorescent shade of blue as you throw it into the circle, the [clothing-material of the noun] disintegrating as it absorbs some of the building energy.";
			only destroy the noun;
			ChargeUp the second noun by N * 30.

Chapter 4 - Mysterious Mummy

The mysterious-mummy is in Mansion14. The mysterious-mummy is a summoning portal. The printed name of mysterious-mummy is "[TQlink of item described][MummyType of the item described] mummy[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "mysterious", "mystery", "mummy" as mysterious-mummy. The text-shortcut of mysterious-mummy is "mym". mysterious-mummy has a number called cult-cooldown. The cult-cooldown of mysterious-mummy is usually 0.

To decide which figure-name is the examine-image of (C - mysterious-mummy):
	decide on Figure of mansion mummy room.

To say ExamineDesc of (C - mysterious-mummy):
	say "[PortalHint of C] A mirror has been inlaid into the wood at her feet, lined with [MummyColour of C] incense candles.[if C is active]Distinctly [i]unclean[/i] energy is slowly building up around her, although you feel like you might be able to offer something to [bold type]appease[roman type] it.[otherwise]You feel like you might be able to influence her, if you have something to [bold type]appease[roman type] her with.[end if][if C is active and the divinationskill of the player is 1][DivinationHint of C][end if]";
	if newbie tips is 1, say "[one of][newbie style]Newbie Tip: This is the mechanism that the Mansion uses to summon new NPCs into the region over time. It will slowly count down until it releases a brand new monster into the house. When it gets close, it'll start glowing, at which point you can increase its timer by offering valuable items to it.[roman type][or][stopping]".

A time based rule (this is the mansion summoning rule):
	if playerRegion is Mansion or (Mansion14 is discovered and vampiress is off-stage and the times-met of vampiress <= 0): [Vampiress needs to arrive at least once]
		compute summoning check of mysterious-mummy.

To say MummyType of (S - a mysterious-mummy):
	if S is active:
		let N be the next-summon of S;
		if N is 1:[cultist]
			say "unsettling";
		otherwise if N is 2:[gladiator]
			say "busty";
		otherwise if N is 3:[gargoyle]
			say "winged";
		otherwise if N is 4:[mannequin]
			say "decorated";
		otherwise if N is 5:[demoness]
			say "horned";
		otherwise if N is 6:[kitsune]
			say "sly";
		otherwise if N is 7:[hellhound]
			say "crawling";
		otherwise:[ghost / vampiress]
			say "glowing";
	otherwise:
		say "mysterious".

Understand "winged", "crawling", "unsettling", "glowing", "decorated", "busty", "horned", "sly" as mysterious-mummy when the item described is active.

To decide which object is the summonChoice of (S - a mysterious-mummy):
	let N be the next-summon of S;
	let M be a random off-stage ghost;
	if N is 1 and the number of off-stage acolytes > 0:
		now M is a random off-stage acolyte;
	otherwise if N is 2 and the number of off-stage mansion dwelling gladiators > 0:
		now M is a random off-stage mansion dwelling gladiator;
	otherwise if N is 3 and gargoyle is off-stage:
		now M is a random off-stage gargoyle;
	otherwise if N is 4 and the number of off-stage mansion dwelling mannequins > 0:
		now M is a random off-stage mansion dwelling mannequin;
	otherwise if N is 5 and the number of off-stage mansion dwelling demonesses > 0:
		now M is a random off-stage mansion dwelling demoness;
	otherwise if N is 6 and kitsune is off-stage:
		now M is kitsune;
	otherwise if N is 7 and hellhound is off-stage and mythical creature fetish is 1:
		now M is hellhound;
	otherwise if vampiress is off-stage:
		now M is vampiress;
	decide on M.

To say MummyColour of (S - a mysterious-mummy):
	unless S is active:
		let N be the next-summon of S;
		if N is 1:
			say "purple";
		otherwise if N is 2:
			say "golden";
		otherwise if N is 3 or N is 8:
			say "pink";
		otherwise if N is 4:
			say "black";
		otherwise if N is 5 or N is 7:
			say "red";
		otherwise if N is 6:
			say "silvery";
		otherwise:
			say "green";
	otherwise:
		say "smoking";[as in 'smoking candles']

To say PortalHint of (S - a mysterious-mummy):
	if S is active:
		let N be the next-summon of the item described;
		if N is 1:[cultist]
			say "A squirming [man of N] wrapped from head to toe in white linen, with a purple aura highlighting [his of N] features. [big his of N] arms are crossed in front of [his of N] chest, but it looks like [his of N] wrists are being held together by an invisible rope. There's nothing lewd about the way [he of N]'s standing, but whenever you look at [him of N], you can't help but feel like you're watching someone having sex.";
		otherwise if N is 2:[gladiator]
			say "A tall [man of N] wrapped from head to toe in white linen, with a golden aura highlighting [his of N] busty features. [if futanari fetish is 1 or lady fetish is 2]The cloth is distorted by a banana-like shape near [his of N] crotch, which twitches slightly[otherwise]There is a dark spot near [his of N] crotch, which grows slowly[end if] as [his of N] visibly muscular arms struggle against their wrappings.";
		otherwise if N is 3 or N is 8:[vampiress(8); 3 used to be gargoyle, but she no longer re-spawns.]
			say "A feminine figure wrapped in white linen, [his of N] features highlighted by a faint pink aura. There is a bat resting on one of [his of N] shoulders.";
		otherwise if N is 4:[mannequin]
			say "A feminine figure wrapped from head to toe in white linen, with a black aura surrounding [his of N] features. Dusky makeup is peppered over its face, and its arms are splayed at disturbing angles to its sides. It seems to change poses whenever you look away for more than a second, and you can't help but notice a strange clicking noise whenever you get too close.";
		otherwise if N is 5:[demoness]
			say "A tall [man of N] wrapped from head to toe in white linen, with a red aura highlight [his of N] features. One hand rests on [his of N] hips, and the other extends out in front of [him of N] in command. Two horns curve around [his of N] temples, like a wreath, and although you can't see [his of N] feet, you're almost certain [he of N]'s wearing heels.[if pregnancy fetish is 1] [big he of N]'s pregnant.[end if]";
		otherwise if N is 6:[kitsune; shouldn't happen]
			say "A feminine figure wrapped in white linen from head to toe, which a silvery aura highlighting [his of N] features. [big he of N] has just about your build and height, and [his of N] arms are crossed in front of [his of N] chest. The wrappings don't actually look that secure, and its head always seems to face away from you no matter where you try to stand. It's almost like it's trying to trick you.";
		otherwise if N is 7:[hellhound]
			say "A feminine figure wrapped in linen from head to toe, with a red aura highlight [his of N] features. [big he of N]'s on all fours, and there is a leather collar and leash gripped in one of [his of N] hands. [one of]For some reason [he of N]'s holding it from the wrong end[or][big he of N]'s holding it from the collar end instead of the leash[at random].";
		otherwise:[ghost?]
			say "A womanly figure wrapped in white linen, with a green aura highlighting [his of N] features in the relative darkness. The fabric is pulled taut near all of [his of N] sensitive parts, and the air around you is positively dripping with [italic type]intent[roman type]. You're feel a little violated just standing in the same room too long.";
	otherwise:
		say "A feminine figure wrapped in white linen. [big his of S] height and build seem to change slightly whenever you look at [him of S], and [his of S] arms seem to be gesturing to what's below [him of S].".

To say DivinationHint of (S - mysterious-mummy):
	if S is active:
		say "You can sense that [he of S]'s getting ready to summon [run paragraph on]";
	otherwise:
		say "You can sense that [he of S] will definitely summon [run paragraph on]";
	let N be the next-summon of S;
	if N is 1:
		say "a cultist next.";
	otherwise if N is 2:
		say "a gladiator next.";
	otherwise if N is 4:
		say "a mannequin next.";
	otherwise if N is 5:
		say "a demoness next.";
	otherwise if N is 6:
		say "a kitsune next.";
	otherwise if N is 7:
		say "a hellhound next.";
	otherwise if N is 8:
		say "a vampiress next.";
	otherwise:
		say "a ghost next.".

To say ActiveWarning of (S - a mysterious-mummy):
	let G be a random number between 1 and 3;
	let N be the next-summon of S;
	unless S is in the location of the player:
		say "You hear the shuffling of fabric somewhere [if playerRegion is mansion]else [end if]in the mansion, and immediately have the feeling that something very [i]unclean[/i] is happening nearby.";
	otherwise if N is 2:[gladiator]
		let M be wild gladiator;
		say "You hear glass shattering as a gladiator flies through a nearby window, completely nude, [if futanari fetish is 1]and with an all-too visible erection[otherwise]and with [semen] slowly dripping out of [his of M] [HoleDesc of M][end if]. Mannequins surround [him of M] as [he of M] struggles to get to [his of M] feet, and [he of M] fights them fiercely as they drag [him of M] toward the mummy. The gladiator screams as long strips of linen seize [him of M] all at once and in an instant [he of M] is completely bound from head to toe in white linen. A golden glow surrounds the mummy as its captive struggles against [his of M] bindings.";
	otherwise if N is 1:[cultist]
		say "There's some scuffling outside as a hidden doorway near the back of the room opens, and two cultists come through, quickly working their way through the crowd of mannequins. They play a quick round of rock paper scissors, and the winner shoves the loser into the mummy, dashing away as it reaches out with several strips of frayed fabric. A deep purple glow begins to surround the mummy as its covers up its captive completely.";
	otherwise if N is 8:
		say "A particularly voluptuous mannequin shuffles out of the crowd, holding a live bat in its outstretched hands. A pink glow surrounds the mummy as the bat flaps over and lands on her shoulder.";
	otherwise if N is 5:[demoness]
		say "You hear some scuffling outside as a hidden doorway near the back of the room opens, and two cultists come through on their hands and knees. A demoness comes into view behind them, her heels *click* *clacking* on the wood floor as she confidently struts past them. [line break][first custom style]'[one of]The moment of my rebirth is at hand. Go.'[or]Leave me. You are not worthy to witness my transformation.'[or]Get out of my sight or my rebirth is going to wait until I finish ruining you two again.'[at random][roman type][line break]The demoness shoos the cultists away and holds her hand out toward the mummy, which seems to hesitate before taking it. The mummy takes on an angry red glow as it covers its passenger in frayed linen.";
	otherwise if N is 4:[mannequin]
		say "One of the many mannequins shuffles its way out of the crowd, holding a small make-up kit. It clicks awkwardly as it lurches up to the mummy and delicately applies blush, lipstick and then mascara to the wrappings on its face. A black glow slowly begins to gather around it as the mannequin trudges back into the crowd.";
	otherwise if N is 7:[hellhound]
		say "You hear awkward clicking as a mannequin slowly shuffles forward from the crowd, holding a leather collar and leash in its hands. The mummy's hips swell visibly as it drops to its hands and knees, a red glow concentrating around its body as the mannequin clumsily places the collar in the mummy's hands and trudges back into the 'crowd'.";
	otherwise:
		say "You hear a peal of mocking laughter as the mummy's wrappings pull taut around its chest, and it falls forward onto its knees, arms suddenly snapping together behind its back. A bright green glow begins to build up around the now kneeling figure.";
	if S is in the location of the player, say " Distinctly unclean energy seems to slowly gather around it.[variable custom style]Something is happening.[roman type][line break]";
	otherwise say "[variable custom style]I wonder what's going on?[roman type][line break]";
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: Uh oh, looks like the mansion summoning altar (the mummy) just activated! It will slowly count down until it releases a brand new monster into the mansion. Try increasing its timer by entering it or offering items to it, or perform some sexual acts nearby to decrease it![roman type][or][stopping]".

To ChargeUp (S - a mysterious-mummy) by (X - a number):
	decrease X by the reset-count of S * 10;
	increase the charge of S by X;
	if the charge of S > the active threshold of S * 2:
		if S is in the location of the player:
			say "You feel a wave of relief, and the strange pressure around the [printed name of S] dissipates as glowing motes of energy leak through the spaces in the linen. It opens its arms wide as the candles at its feet light once more.";
		now S is not active;
	increase the reset-count of S by 1.

Carry out appeasing something with mysterious-mummy:
	now the noun is in the location of the player;
	if the second noun is active:
		if the noun is plentiful accessory:
			say "The [ShortDesc of noun] lights up as you place it at the mummy's feet, disintegrating as it absorbs some of its energy.";
			let P be the price of the noun;
			ChargeUp the second noun by (P * 75);
			destroy the noun;
		otherwise if the noun is pure totem:
			say "The [ShortDesc of noun] lights up as you place it up at the mummy's feet, disintegrating as it absorbs the building energy. A wave of relief passes through your surroundings as the last remnants of the [ShortDesc of the noun] disappear completely.";
			ChargeUp the second noun by 1000;
			only destroy the noun;
		otherwise if the noun is ectoplasm or the noun is possession clothing or the noun is infernal gem:
			say "The [ShortDesc of noun] lights up as you place it at the mummy's feet, and its aura brightens visibly. You can feel the magic intensifying as the [ShortDesc of noun] bursts into flames.";
			ChargeDown the second noun by 400;
			only destroy the noun;
		otherwise if the noun is blessed clothing:
			say "The [ShortDesc of noun] lights up as you place it at the mummy's feet, [if the noun is not cursable]disintegrating as it absorbs some of the building energy[otherwise]trembling visibly as it absorbs some of the building energy[end if].";
			if the noun is cursable, fully curse the noun;
			otherwise only destroy the noun;
			ChargeUp the second noun by 750;
		otherwise:
			let N be 0;
			if the noun is clothing, now N is the urine-soak of the noun + the semen-soak of the noun + the milk-soak of the noun;
			if N <= 0:
				say "You throw the [noun] into the circle, which glows bright blue as it slowly disintegrates. Nothing else happens. What a waste!";
				if the noun is clothing, ChargeUp the second noun by the soak-limit of the noun;
				only destroy the noun;
			otherwise:
				say "The bodily fluids in the [noun] start to glow a fluorescent shade of red as you throw it into the circle, evaporating with a wave of scarlet flames as the magic around you rapidly intensifies.";
				ChargeDown the second noun by N * 50;
				only destroy the noun;
	otherwise:
		if the noun is clothing and the cult-cooldown of the second noun <= 0:
			if (the noun is sword or the noun is metal) and there is an off-stage mansion dwelling gladiator:
				now the next-summon of the second noun is 2;
			[otherwise if (the noun is stolen or the noun is purity or the noun is a plentiful accessory) and there is an off-stage kitsune:
				now the next-summon of the noun is 6;]
			[otherwise if the noun is metal and there is an off-stage gargoyle:
				now the next-summon of the second noun is 3;]
			otherwise if (the noun is stolen or the noun is bottle) and there is an off-stage vampiress:
				now the next-summon of the second noun is 8;
			otherwise if (the noun is latex) and the number of off-stage mansion dwelling mannequins > 0:
				now the next-summon of the second noun is 4;
			otherwise if ((the urine-soak of the noun + the semen-soak of the noun + the milk-soak of the noun > 0) or the noun is cursed) and there is an off-stage acolyte:
				now the next-summon of the second noun is 1;
			otherwise if (the noun is neckwear or the noun is sex toy) and there is an off-stage hellhound:
				now the next-summon of the second noun is 7;
			otherwise if the noun is demonic or the number of worn heels > 0 or the noun is red themed and there is an off-stage demoness:
				now the next-summon of the second noun is 5;
			otherwise:
				now the next-summon of the second noun is 0;[0 means ghost]
			say "The [noun] bursts into flame as you toss it into the circle, and it disintegrates as the incense candles turn [MummyColour of the second noun].";
			destroy the noun;
		otherwise:
			say "Nothing happens. [if the cult-cooldown of the second noun > 0] Maybe you need to wait before offering something to it again?[end if]".

Check entering mysterious-mummy:
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	if the noun is not active:
		say "You step into the circle at the mummy's feet, and you swear you can hear a feminine voice giggling as it unravels, completely covering you with countless strips of frayed linen. [run paragraph on]";
		allocate 2 seconds;
		if the class of the player is cultist:
			say "Your vision goes completely dark, and for a moment you feel as though you're floating in an endless abyss, completely surrounded by undulating tentacles.";
			strongHumiliate;
			if there is an off-stage acolyte, now the next-summon of the noun is 1;
		otherwise if the class of the player is vampire spawn or the class of the player is vixen:
			say "Your vision is flooded by an image of your [italic type][if the class of the player is vampire spawn]sire[otherwise]jailer[end if][roman type], and for a moment you feel as though you are looking deeply into [his of vampiress] eyes.";
			Arouse 3000;
			if vampiress is off-stage, now the next-summon of the noun is 8;
		otherwise if the class of the player is cheerleader or the class of the player is silicone queen:
			say "Your vision is filled with faint images of makeup brushes and tubes of lipstick, and for a moment, you feel like you're in heaven.";
			FaceUp 1;
			if the number of off-stage mansion dwelling mannequins > 0, now the next-summon of the noun is 4;
		otherwise if the class of the player is succubus or the class of the player is priestess:
			say "Your vision is filled with pure flame, and for a moment, you feel only fear as you realize something is staring at you from beyond.";
			if a random number between 1 and 2 is 1, DelicateUp 1;
			if there is an off-stage demoness:
				now the next-summon of the noun is 5;
			otherwise if there is an off-stage hellhound:
				now the next-summon of the noun is 7;
		otherwise if the class of the player is puppygirl or the class of the player is catgirl:
			say "Your vision goes completely dark, and for a moment you can feel [if watersports fetish is 1][urine] hitting your face[otherwise if bukkake fetish is 1][semen] hitting your face[otherwise]a strangely shaped erection smacking your face[end if].";
			if a random number between 1 and 2 is 1:
				if watersports fetish is 1, UrineTasteAddictUp 1;
				otherwise SemenAddictUp 1;
			if there is an off-stage hellhound, now the next-summon of the noun is 7;
		otherwise if the class of the player is virgin warrior or there is a worn sword:
			say "Your vision is filled by an image of a sword, and for a moment, you feel as though you could face anything.";
			Dignify 50;
			if there is an off-stage mansion dwelling gladiator, now the next-summon of the noun is 2;
		otherwise:
			say "Your vision is flooded with a green pallor, and for a moment, you feel as though you're being fucked in every hole by two [manly-penis]s at once.";
			if a random number between 1 and 2 is 1:
				SexAddictUp 1;
			now the next-summon of the noun is 0;
		say "The candles at the mummy's feet turn [MummyColour of the noun] as the linen unravels, leaving you standing exactly where you where before.";
	otherwise:
		say "You step into the circle at the mummy's feet, and disturbing the growing buildup of magic. It saturates you!";
		allocate 2 seconds;
		let R be a random number between 1 and 4;
		if the player is very horny, now R is 5;
		if R is 1:
			say "It feels harder to think!";
			IntDown 1;
		otherwise if R is 2:
			say "Your stomach flips over!";
			FatigueUp 75;
			if the body soreness of the player < 10, increase the body soreness of the player by 1;
		otherwise if R is 3:
			say "Your crotch feels strange...";
			if the size of penis > 0:
				PenisDown 1;
			otherwise:
				if the player is female, PussyClose 1;
				otherwise AssClose 1;
		otherwise if R is 4:
			say "A shiver runs up your spine.";
			increase creepiness by 100;
		if R is 5:
			say "The magic surrounding you seems to intensify rather than fade away, and as your arousal flares as you realize its impossible to resist...";
			now auto is 1;
			if the player is very horny, try masturbating;
			now auto is 0;
		if R < 5, ChargeUp mysterious-mummy by a random number between 200 and 300;
	do nothing instead.

Summoning Portals ends here.

