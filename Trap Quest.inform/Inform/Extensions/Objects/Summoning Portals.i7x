Summoning Portals by Objects begins here.

A summoning portal is a kind of thing. A summoning portal is not portable.[ The printed name of summoning portal is "summoning portal".] The text-shortcut of summoning portal is "spo".  A summoning portal can be active. A summoning portal is usually not active. A summoning portal has a number called charge. The charge of a summoning portal is usually 450. [represents the time until it spawns the next monster]A summoning portal has a number called next-summon. The next-summon of a summoning portal is usually 0.[represents the next monster it will summon we can obfuscate this from the player or show them if we want to.]

A summoning portal has a number called spawn-count. The spawn-count of a summoning portal is usually 0.
A summoning portal has a number called reset-count.  The reset-count of a summoning portal is usually 0.

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
	increase the reset-count of S by 1.

[!<ChargeDownPortalByNumber>+

Decreases the charge of a summoning portal by a given amount

@param <Summoning Portal>:<S> The portal to be discharged
@param <Integer>:<X> The amount of charge the portal will lose

+!]
To ChargeDown (S - a summoning portal)  by (X - a number):
	decrease the charge of S by X.

Appeasing it with is an action applying to two things.

Check appeasing something with:
	if the second noun is not summoning portal, say "This verb is for throwing things offering things to summoning portals" instead;
	if the second noun is not mysterious-mummy:
		unless the second noun is active, say "The [second noun] doesn't even look active. Why waste your time?" instead;
	if the noun is worn, say "You should probably take it off first." instead;
	if the second noun is summoning-circle:
		if the second noun is player, try entering the noun instead.

Report appeasing something with summoning portal:
	now seconds is 3.

Understand "appease [something] with [something]", "throw [something] in [something]", "drop [something] in [something]", "place [something] in front of [something]", "put [something] in [something]" as appeasing it with.

[!<SayPortalHintOfPortal>+

Outputs a hint on what the summoning portal "S" will spawn next.

@param <Summoning Portal>:<S> The portal being examined

+!]
To say PortalHint of (S - a summoning portal):
	say "It's going to summon something soon!".

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
	decide on 120.

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
		say ActiveWarning of S;
		now S is active.
		[now the alert of the player is 1.]

[!<ComputeSummoningCheckOfPortal>+

Calls the regionally summoning function for summoning portal "S", which calls a relevant variant of summon M. Once the monster is set up, transfers the monster to the location of S and calls the monster's summoning flav function. The monster's boredom is set to 1 so the game has time to properly add it to the turn order.(or whatever causes the perception function to fire twice when monsters spawn. beats me dude.)

@param <Summoning Portal>:<S> The portal the monster is being summoned from
@param <Monster>:<M> The monster to be summoned

+!]
To compute (S - a summoning portal) summoning (M - a monster):
	compute S regionally summoning M;
	now M is in the location of S;
	say SummoningFlav of M;[should describe portal closing up if the player is in the room]
	now the boredom of M is 1.[should fix issues where the player is in the room and the monster's perception function runs twice in a row]

[!<ComputePortalRegionallySummoningMonster>+

Should be defined uniquely for each portal. Chooses what level the monster is summoned in, and holds any code that must run depending on on level. Should also increase portal charge.

@param <Summoning Portal>:<S> The portal M will be summoned from
@param <Monster>:<M> The monster to be summoned

+!]
To compute (S - summoning portal) regionally summoning (M - a monster):
	summon M;
	now the next-summon of S is a random number between 0 and 4;
	now the charge of S is 450.

[!<ComputePortalResetOfPortal>+

Sets the summoning portal "S"'s active flag to false and increases its counter for monsters spawned by 1. Starts a fresh tally of the number of times the portal has had its charge increased.

@param <Summoning Portal>:<S> The portal being reset

+!]
To compute portal reset of (S - a summoning portal):
	now S is not active;
	increase the spawn-count of S by 1;
	now the reset-count of S is 0.
	

Chapter 1 - Summoning Circle

The summoning-circle is in Dungeon33. The summoning-circle is a summoning portal. The printed name of summoning-circle is "[TQlink of item described]summoning circle[TQxlink of item described][shortcut-desc][verb-desc of item described]". The description of summoning-circle is "A softly glowing pentagram, with candles placed at all five points of the star. The shape in the center of the circle glints subtly in the light, as if it were a mirror. [if the item described is active][PortalHint of the item described][end if]". Understand "summon", "summoning", "circle", "summoning circle" as summoning-circle.

To say PortalHint of (S - a summoning-circle):
	let N be the next-summon of S;
	if N is 1:
		say "You can see a faint image of a cross floating behind it.";[guard]
	otherwise if N is 2:
		say "You can make out a smoky image of a sword inside it.";[gladiator]
	otherwise if N > 0:[you're probably going to be most excited for a wench, so let's throw a curveball]
		say "You can make out a faint image inside of it. It looks like...[if the charge of S > 20 or N is 3]the back of someone's head?[otherwise if N is 4]a hat?[end if]";[wench or aeromancer]
	otherwise:
		say "You can make out an image of a balloon inside it.".[sex doll]

A time based rule (this is the dungeon summoning rule):
	if the player is in the dungeon:
		compute summoning check of summoning-circle.
	
To compute (S - summoning-circle) regionally summoning (M - a monster):
	summon M in the dungeon;
	now the charge of S is 170 + the number of alive monsters in the Dungeon * 3.

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
	otherwise say "[variable custom style]Something's coming..[if the bimbo of the player > 14]. Teehee. Cumming[end if].[roman type][line break]".

Check entering summoning-circle:
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	if the noun is not active, say "You step into the circle. Nothing happens." instead;[Past this point, the player is successful! The “instead” statement terminates functions, as usual.]
	say "You step into the circle, disturbing the growing concentration of magic. It expels energy like a cloud of smoke, which saturates everything in the immediate vicinity, including you!";
	now seconds is 2;[doesn't take all that long]
	repeat with C running through clothing in the location of the player:
		if a random number between 1 and 3 is 1, curse C;
	let R be a random number between 1 and 4;
	if diaper quest is 1, now R is a random number between 1 and 2;
	if R is 1:
		say "Submissive fantasies assault your mind!";
		if a random number between 1 and 2 is 1 and diaper quest is 1:
			if a random number between 1 and 2 is 1 and the player is female, VaginalSexAddictUp 1;
			otherwise AnalSexAddictUp 1;
		otherwise:
			SexAddictUp 1;
	if R is 2:[force the player to masturbate, which further reduces the charge of the circle.]
		Arouse 500;
		say "Your arousal suddenly flares up! [if the player is very horny]It's impossible to resist...[end if]";
		now auto is 1;
		if the player is very horny, try masturbating;
		now auto is 0;
	if R is 3:
		say "Your chest feels strange...";
		let D be a random worn breast covering clothing;
		if D is clothing, potentially transform D;
		otherwise TitFuckAddictUp 1;
	if R is 4:
		say "A strange feeling ripples down your spine, and you look over your shoulder to catch your [AssDesc] having a sudden growth spurt!";
		AssSwell a random number between 1 and 2;
	ChargeUp summoning-circle by 4 * (a random number between 25 and 30) instead.

Carry out appeasing something with summoning-circle:
	now the noun is in the location of the player;
	if the noun is plentiful accessory:
		say "The [noun] lights up as you throw it into the circle, disintegrating as it absorbs some of the building energy.";
		ChargeUp the second noun by the price of the noun * 10;
		only destroy the noun;
	if the noun is pure totem:
		say "The [printed name of the noun] lights up as you throw it into the circle, disintegrating as it absorbs the building energy. A wave of relief passes through your surroundings as the last remnants of the [printed name of the noun] disappear completely.";
		ChargeUp the second noun by 100;[the lower the charge, the more effective this is]
		ChargeUp the second noun by 100;
		ChargeUp the second noun by 100;
		only destroy the noun;
	if the noun is demonic:
		say "The [noun] lights up as you throw it into the circle, which turns bright red as it cannibalizes its energy. You can feel the magic intensify rapidly as the [noun] bursts into flames.";
		ChargeDown the second noun by 20;
	otherwise if the noun is blessed clothing:
		say "The [noun] lights up as you throw it into the circle, trembling visibly as it absorbs some of the building energy.";
		if the noun is cursable, fully curse the noun;
		otherwise only destroy the noun;
		ChargeUp the second noun by 70;
	otherwise:
		let N be 0;
		if the noun is clothing, now N is the urine-soak of the noun + the semen-soak of the noun + the milk-soak of the noun;
		if N <= 0:
			say "You throw the [noun] into the circle. It disintegrates.  Nothing else happens.";
			only destroy the noun;
		otherwise:
			say "The bodily fluids in the [noun] start to glow a fluorescent shade of blue as you throw it into the circle, the clothing disintegrating as it absorbs some of the building energy.";
			only destroy the noun;
			ChargeUp the second noun by N * 5.

Report appeasing something with summoning-circle:
	now seconds is 3.

Chapter 2 - Giant Statue

The giant-statue is in Woods30. The giant-statue is a summoning portal. The printed name of giant-statue is "[TQlink of item described]giant statue[TQxlink of item described][shortcut-desc][verb-desc of item described]".  Figure of giant pregnant statue is the file "statue5.png".  Figure of giant-statue is the file "statue6.png". Understand "giant", "statue" as giant-statue.

The description of giant-statue is "[GiantDesc]";

To say GiantDesc:
	if images visible is 1:
		if pregnancy fetish is 1, display figure of giant pregnant statue;
		otherwise display figure of giant-statue;
	if a random vine boss is alive or doomed is 5:
		say "An enormous statue of a blindfolded [if pregnancy fetish is 1]pregnant [end if]woman on all fours. [if doomed is 5]Green vines hang from almost every inch of her body, as if holding her down for the massive, sickly purple creepers plugging her mouth and [asshole][otherwise]Massive green vines are crammed into her mouth and wrapped around her wrists and ankles[end if]. [unless the item described is active]Somehow you get the impression that...she[']s the one holding them?[otherwise if the charge of the item described > 250]A solitary white flower has sprouted up on each her nipples, covering them.[otherwise if the charge of the item described > 150 and bukkake fetish is 1]Tiny white flowers have sprouted on her chin and breasts, clumped together in a way that makes it look like the statue is splattered with [semen].[otherwise if the charge of the item described > 150]Tiny white flowers have sprouted on her belly and chest, conspicuously concentrated around her erogenous zones.[otherwise if the charge of the item described > 70]Waves of excitement periodically pass through them, followed by a bloom and immediate wilting of white flowers all over her body.[otherwise]You can see large bulges moving through them, flowers blossoming all over her body in time with the gentle undulations down their lengths. Whitish fluid is slowly leaking out of her unattended [vagina].[end if]";
	otherwise:
		say "An enormous statue of a blindfolded [if pregnancy fetish is 1]pregnant [end if]woman on her knees. [unless the item described is active]She appears to be in the middle of praying[otherwise if the charge of the item described > 250]Her hands are cupping her breasts, her prominent stony nipples poking out between her fingers[otherwise if the charge of the item described > 150]She has one hand across her breasts, pinching a stony nipple, and a second touching her flawless marble clit[otherwise if the charge of the item described > 70]One arm is underneath her breasts, pushing them together enticingly as her free hand explores between her legs, her flawless marble clit just visible between the knuckles of her stony fingers[otherwise]Her hands are between her legs, spreading her stone labia wide, as if to entice any and every passer-by[end if].";
	if the item described is active:
		say "[PortalHint of the item described]";
	say "There is a small stone slab in front of the statue, lined with incense candles. Maybe you're supposed to offer something to it?".

[Forest hints are sound based.]
To say PortalHint of (S - a giant-statue):
	let N be the next-summon of S;
	if N < 3 and N > 0:
		say "You can hear really intense moaning coming from inside it. [if the sex addiction of the player < 6][first custom style]Sounds like screaming...[roman type][otherwise if the sex addiction of the player < 14][variable custom style]Why do I feel jealous...[roman type][otherwise][second custom style]Wow, whoever is in there must feel really good...[roman type][end if]";[demoness/wasp]
	otherwise if N is 3:
		say "You can make out a faint slapping noise coming from inside it. It's rhythmic, and every so often you hear a moan.";[gladiator]
	otherwise if N < 6:
		say "You can make out a faint noise every so often, almost like a slurp.";[aeromancer/djinn]
	otherwise if N is 6:
		say "You can faintly someone giggling inside it. It's almost too quiet for you to hear, but it's definitely there.";[fairy]
	otherwise:
		say "[if the charge of S > 50]It's eerily silent[otherwise]You can hear a really distinct buzzing noise coming from inside of it[end if].".[mannequin]

A time based rule (this is the woods summoning rule):
	if the player is in the woods:
		compute summoning check of giant-statue.

To compute (G - giant-statue) regionally summoning (M - a monster):
	summon M in the Woods;
	now the next-summon of G is a random number between 0 and 5;
	now the charge of G is the active threshold of G + 70 + (the number of alive monsters in the woods * 2);

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
	otherwise if N is 5:
		now M is a random off-stage fairy;
	decide on M.

To say ActiveWarning of (G - a giant-statue):
	if the location of the player is Woods30:
		if a random vine boss is alive or doomed is 5:
			say "You hear a deep rumble, watching the vines tighten around the giant-statue's wrists and ankles. A cloud of glittering orange pollen explodes over you as flowers bloom across her chest. [if the player is upright and the player is not immobile]An overwhelming sense of vertigo immediately drops you to your knees.[end if] You feel strange.";
			if the pregnancy of the player is 1 and the semen volume of vagina is not 30, increase the semen volume of vagina by 1;
		otherwise:
			say "You hear a deep rumble, watching as the giant statue's arms slowly reach up and palm her gigantic breasts. [if the player is upright and the player is not immobile]Your knees buckle, and a powerful tingle passes through your whole body as you immediately drop to your knees[otherwise]A powerful tingle passes through your whole body, like a forceful gust of wind.[end if].";
			if the lactation rate of the player < lactation fetish, increase the lactation rate of the player by 1;[if fetish is 1, increase it to 1.]
		if the player is not immobile and the player is upright, silently try kneeling;
		otherwise FatigueUp 30;
		Arouse 300;
	otherwise:
		say "You hear a rumble far off in the distance, and a really strange heated feeling comes over you as the noise passes through the trees.";
		Arouse 100.

Carry out appeasing something with giant-statue:
	now the noun is in the location of the player;
	if the noun is plentiful accessory:
		say "Glowing vines reach out of the ground, slowly pulling the [noun] underneath the soil. You feel some of the surrounding energy fading away.";
		ChargeUp the second noun by the price of the noun * 8;
		destroy the noun;
	if the noun is pure totem:
		say "Glowing vines reach out of the ground, grasping the [printed name of the noun] as it lights up. Waves of relief passes through your surroundings as the creepers slowly but surely drag the idol underneath the soil.";
		ChargeUp the second noun by 100;[the lower the charge, the more effective this is]
		ChargeUp the second noun by 100;
		ChargeUp the second noun by 100;
		destroy the noun;
	otherwise if the noun is sex toy:
		say "Glowing vines reach out of the ground, twisting around the [printed name of the noun] as it lights up. Large, pulsating veins bulge out along its surface, which seems to grow thicker and harder until finally it explodes, [semen] cascading liberally over your surroundings as the [noun] disappears fully beneath the soil.";
		destroy the noun;
		SemenPuddleUp the size of the noun;[this is where the real power is]
		ChargeUp the second noun by 30;
	otherwise if the noun is biological clothing or the noun is severed-tentacle:
		say "Glowing vines reach out of the ground, pulling the [noun] underneath the soil. The surrounding energy somehow grows even more intense.";
		ChargeDown the second noun by 60;
		destroy the noun;
	otherwise:
		let N be 0;
		if the noun is clothing, now N is the urine-soak of the noun + the semen-soak of the noun + the milk-soak of the noun;
		if N <= 0 or a random number between 1 and 3 > 1:
			say "Glowing vines reach out of the ground, pulling the [noun] underneath the soil. The surrounding energy seems to grow a little less intense.";
			only destroy the noun;
			increase N by 5;
		otherwise:
			say "The bodily fluids in the [noun] start to glow a fluorescent shade of blue, leeching out of the [clothing-material of the noun] and disappearing into the soil.";
		ChargeUp the second noun by N * 2.

Chapter 3 - Staff Door

[There's an impassable set of doors in the "staff center."]

Chapter 4 - Mysterious Mummy

The mysterious-mummy is in Mansion14. The mysterious-mummy is a summoning portal. The printed name of mysterious-mummy is "[TQlink of item described][MummyType of the item described] mummy[TQxlink of item described][shortcut-desc][verb-desc of item described]". The description of mysterious-mummy is "[PortalHint of the item described] There is a circle etched into the wood at its feet, lined with wax candles.". Understand "mysterious", "mystery", "mummy" as mysterious-mummy. The text-shortcut of mysterious-mummy is "mym". mysterious-mummy has a number called cult-cooldown. The cult-cooldown of mysterious-mummy is usually 0.

A time based rule (this is the mansion summoning rule):
	if the player is in the mansion:
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
		otherwise:[ghost?]
			say "glowing";
	otherwise:
		say "mysterious".

Understand "winged", "crawling",  "unsettling", "glowing", "decorated", "busty", "horned", "sly" as mysterious-mummy when the item described is active.

To decide which monster is the summonChoice of (S - a mysterious-mummy):
	let N be the next-summon of S;
	let M be a random off-stage ghost;
	if N is 1 and the number of off-stage acolytes > 0:
		now M is a random off-stage acolyte;
	otherwise if N is 2 and the number of off-stage mansion dwelling gladiators > 0:
		now M is a random off-stage mansion dwelling gladiator;
	otherwise if N is 3 and the number of off-stage gargoyles > 0:
		now M is a random off-stage gargoyle;
	otherwise if N is 4 and the number of off-stage mansion dwelling mannequins > 0:
		now M is a random off-stage mansion dwelling mannequin;
	otherwise if N is 5 and the number of off-stage mansion dwelling demonesses > 0:
		now M is a random off-stage mansion dwelling demoness;
	otherwise if N is 6 and the number of off-stage kitsunes > 0:
		now M is a random off-stage kitsune;
	otherwise if N is 7 and the number of off-stage hellhounds > 0 and mythical creature fetish is 1:
		now M is a random off-stage hellhound;
	decide on M.

To say PortalHint of (S - a mysterious-mummy):
	if S is active:
		let N be the next-summon of the item described;
		if N is 1:[cultist]
			say "A squirming woman wrapped from head to toe in white linen. Her arms are crossed in front of her chest, but it looks like her wrists are being held together by an invisible rope. There's nothing sexual about the way she's standing, but whenever you look at her it feels like you're watching a really intense gangbang. ";
		otherwise if N is 2:[gladiator]
			say "A tall, busty woman wrapped from head to toe in white linen. An iron sword has been jammed into the planks underneath her, sticking straight up with its hilt [if trap fetish is 1]buried in her [vagina]. Feminine fluids slowly trickle down the blade[otherwise]buried up her ass. The cloth is distorted by a banana-like shape near her crotch, which twitches slightly[end if] as her visibly muscular arms struggle against their strong wrappings.";
		otherwise if N is 3:[gargoyle; shouldn't happen]
			say "A crouched woman completely encased in white linen. She's completely motionless, but you can hear her stomach rumbling audibly from some distance away.";
		otherwise if N is 4:[mannequin]
			say "A feminine figure wrapped from head to toe in white linen. Dusky makeup is peppered over its face, and its arms are splayed at disturbing angles to its sides. It seems to change poses whenever you look away for more than a second, and you can't help but notice a strange clicking noise whenever you get too close.";
		otherwise if N is 5:[demoness]
			say "A tall woman wrapped from head to toe in white linen. One hand rests on her hips, and the other extends out in front of her in command. Two horns curve around her temples, like a wreath, and although you can't see her feet, you're almost certain she's wearing heels.[if pregnancy fetish is 1] She's pregnant.[end if]";
		otherwise if N is 6:[kitsune; shouldn't happen]
			say "A woman wrapped in white linen from head to toe. She has just about your build and height, and her arms are crossed in front of her chest. The wrappings don't actually look that secure, and its head always seems to face away from you no matter where you try to stand. It's almost like it's trying to trick you.";
		otherwise if N is 7:[hellhound]
			say "A woman wrapped in linen from head to toe. She's on all fours, and there is a leather collar and leash gripped in one of her hands. [one of]For some reason she's holding it from the wrong end[or]She's holding it from the collar end instead of the leash[at random].";
		otherwise:[ghost?]
			say "A kneeling woman wrapped in white linen, with a green aura highlighting her figure in the relative darkness. The fabric is pulled taut near all of her sensitive parts, and the air around you is positively dripping with [italic type]intent[roman type]. You're feel a little violated just standing in the same room too long.";[TODO: unsuccessful summon changes next-summon to a ghost.]
	otherwise:
		say "A feminine figure wrapped in white linen, with just about your height and build.  Its arms are open, and its head always seems to be facing you no matter where you stand in the room. ".

To say ActiveWarning of (S - a mysterious-mummy):
	let G be a random number between 1 and 3;
	let N be the next-summon of S;
	if N is 2:[gladiator]
		say "You hear some scuffling outside as a hidden doorway near the back of the room opens, and two cultists come through, pulling someone behind them. [run paragraph on]";
		say "As they move closer, you recognize a gladiator holding an iron shortsword gripped in her hand, and [if bukkake fetish is 1]surprisingly, a creamy trail of [semen] marking out the path behind her[otherwise]a surprisingly unhinged look on her face[end if]. The cultists drag the gladiator up to the [printed name of S] with some difficulty, sporting bruises [if trap fetish is 0]and cum splatters all over their bodies[otherwise]and some abnormally large breasts[end if] as they pull the gladiator to her feet and quickly jam her sword into the planks before escaping the way they came. [first custom style]C-cowards! You can't become a real woman if y-[roman type] The gladiator is cut off as several long strips of linen seize her all at once and in an instant she is completely bound from head to toe in white linen.";
	otherwise if N is 1:[cultist]
		say "There's some scuffling outside as a hidden doorway near the back of the room opens, and two cultists come through, pulling someone behind them. You recognize the person as another cultist as they move closer, but this one seems different from the others, somehow.[line break][first custom style]Ready yourself, sister! Your last rite of passage is at hand!'[roman type][line break]The first two cultists lead her up to the [printed name of S], leaving as the linen begins to unravel. She seems to be repeating some chant under her breath as the mummy explodes forward, completely covering her in strips of frayed fabric.";
	otherwise if N is 5:[demoness]
		say "You hear some scuffling outside as a hidden doorway near the back of the room opens, and two cultists come through on their hands and knees. A demoness comes into view behind them, her heels *click* *clacking* on the wood floor as she confidently struts past them. [line break][first custom style]'[one of]The moment of my rebirth is at hand. Go.'[or]Leave me. You are not worthy to witness my transformation.'[or]Get out of my sight or my rebirth is going to wait until I finish ruining you two again.'[at random][roman type][line break]The cultists nod reverently, crawling away quickly as the demoness walks up to the mummified figure and expectantly holds out her hand. [one of]To your surprise, the mummy takes[or]The mummy seems to hesitate before taking[stopping] it, exploding forward in a rush of fabric as it completely covers her in strips of frayed linen.";
	otherwise if N is 4 or N is 7:[mannequin;TODO]
		say "One of the many mannequins shuffles its way out of the crowd, holding a small make-up kit. It clicks awkwardly as it lurches up to the mummy and delicately applies blush, lipstick and then mascara to the wrappings on its face. A black glow slowly begins to gather around it as the mannequin trudges back into the crowd.";
	otherwise if N is 7:[hellhound]
		say "You hear awkward clicking as a mannequin slowly shuffles forward from the crowd, holding a leather collar and leash in its hands. The mummy's hips swell visibly as it drops to its hands and knees, a red glow concentrating around its body as the mannequin clumsily places the collar in the mummy's hands and trudges back into the 'crowd'.";
	otherwise:
		say "You hear a peal of mocking laughter as the mummy's wrappings pull taut around its chest, and it falls forward onto its knees, arms suddenly snapping together behind its back. A bright green glow begins to build up around the now kneeling figure, along with that really strange feeling that permeates every other room in the mansion.".

To ChargeUp (S - a mysterious-mummy) by (X - a number):
	decrease X by the reset-count of S * 10;
	increase the charge of S by X;
	if the charge of S > the active threshold of S * 3:
		if S is in the location of the player:
			say "You feel a wave of relief, and the strange pressure around the [printed name of S] dissipates as glowing motes of energy leak through the spaces in the linen. It opens its arms wide as the candles at its feet light once more.";
		now S is not active;
	increase the reset-count of S by 1.

Carry out appeasing something with mysterious-mummy:
	now the noun is in the location of the player;
	if the second noun is active:
		if the noun is pure totem:
			say "The [printed name of the noun] lights up as you throw it into the circle, disintegrating as it absorbs the building energy. A wave of relief passes through your surroundings as the last remnants of the [printed name of the noun] disappear completely.";
			ChargeUp the second noun by 300;
			only destroy the noun;
		if the noun is demonic or the noun is ectoplasm:
			say "The [noun] lights up as you throw it into the circle, which turns bright red as it cannibalizes its energy. You can feel the magic intensify rapidly as the [noun] bursts into flames.";
			ChargeDown the second noun by 40;
			only destroy the noun;
		otherwise if the noun is blessed clothing:
			say "The [noun] lights up as you throw it into the circle, trembling visibly as it absorbs some of the building energy.";
			if the noun is cursable, fully curse the noun;
			otherwise only destroy the noun;
			ChargeUp the second noun by 70;
		otherwise:
			let N be 0;
			if the noun is clothing, now N is the urine-soak of the noun + the semen-soak of the noun + the milk-soak of the noun;
			if N <= 0:
				say "You throw the [noun] into the circle, which glows bright blue as it slowly disintegrates";
				ChargeUp the second noun by the soak-limit of the noun;
				only destroy the noun;
			otherwise:
				say "The bodily fluids in the [noun] start to glow a fluorescent shade of red as you throw it into the circle, evaporating with a wave of scarlet flames as the magic around you rapidly intensifies.";
				ChargeDown the second noun by N * 5;
				only destroy the noun;
	otherwise:
		if the noun is clothing and the cult-cooldown of the second noun <= 0:
			if the noun is sword and there is an off-stage mansion dwelling gladiator:
				now the next-summon of the second noun is 2;
			[otherwise if (the noun is stolen or the noun is purity or the noun is a plentiful accessory) and there is an off-stage kitsune:
				now the next-summon of the noun is 6;]
			[otherwise if the noun is metal and there is an off-stage gargoyle:
				now the next-summon of the second noun is 3;]
			otherwise if the noun is latex and the number of off-stage mansion dwelling mannequins > 0:
				now the next-summon of the second noun is 4;
			otherwise if ((the urine-soak of the noun + the semen-soak of the noun + the milk-soak of the noun > 0) or the noun is cursed) and there is an off-stage acolyte:
				now the next-summon of the second noun is 1;
			otherwise if (the noun is neckwear or the noun is sex toy) and there is an off-stage hellhound:
				if mythical creature fetish is 0, now the next-summon of the second noun is 0;
				otherwise now the next-summon of the second noun is 7;
			otherwise if the noun is demonic or the number of worn heels > 0 and there is an off-stage demoness:
				now the next-summon of the second noun is 5;
			otherwise:
				now the next-summon of the second noun is 0;[0 means ghost]
			say "The [noun] bursts into flame, and you can feel something change in the energy that hangs around the room.";
			destroy the noun;
		otherwise:
			say "Nothing happens. [if the cult-cooldown of the second noun > 0] Maybe you need to wait before offering something to it again?[end if]".

Summoning Portals ends here.
