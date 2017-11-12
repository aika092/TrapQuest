Summoning Portals by Objects begins here.

A summoning portal is a kind of thing. A summoning portal is not portable.[ The printed name of summoning portal is "summoning portal".] The text-shortcut of summoning portal is "spo".  A summoning portal can be active. A summoning portal is usually not active. A summoning portal has a number called charge. The charge of a summoning portal is usually 450. [represents the time until it spawns the next monster]A summoning portal has a number called next-summon. The next-summon of a summoning portal is usually 0.[represents the next monster it will summon we can obfuscate this from the player or show them if we want to.]

A summoning portal has a number called spawn-count. The spawn-count of a summoning portal is usually 0.
A summoning portal has a number called reset-count.  The reset-count of a summoning portal is usually 0.

To ChargeUp (S - a summoning portal) by (X - a number):
	decrease X by the reset-count of S * 10;
	if the charge of S > 500:
		decrease X by X / 2;
	otherwise if the charge of S > 400:
		decrease X by X / 3;
	otherwise if the charge of S > 300:
		decrease X by X / 4;
	increase the charge of S by X.
	
To ChargeDown (S - a summoning portal)  by (X - a number):
	decrease the charge of S by X.

[###Selkie: Why does this function keep using potentially different random summoning portals? Shouldn’t it set S to one and then stick to that, like:
	let S be a random summoning portal;
	if the charge of S is 0:
and if the charge is 0, the if-statement always sets the charge back to 450.
]
[A time based rule (this is the generic summoning rule):
	if the charge of a random summoning portal is 0:
		let S be a random summoning portal;
		let N be the next-summon of S;
		let M be weak monster A;
		if N is 1:
			now M is monster2;
		otherwise if N is 2:
			now M is monster3;
		otherwise if N is 3:
			now M is monster4;
		otherwise if N is 4:
			now M is monster5;
		now the next-summon of S is a random number between 0 and 4;
		now the charge of S is 450;
	if a random summoning portal is not active and the charge of a random summoning portal < 120:
		say "The [printed name of a random summoning portal] is active! Oh nooo!";
		now a random summoning portal is active.]

Appeasing it with is an action applying to two things.

Check appeasing something with:
	if the second noun is not summoning portal, say "This verb is for throwing things into the summoning-circle." instead;
	unless the second noun is active, say "The [second noun] doesn't even look active. Why waste your time?" instead;
	if the noun is worn, say "You should probably take it off first." instead;
	if the second noun is summoning-circle:
		if the second noun is player, try entering the noun instead.

Report appeasing something with summoning portal:
	now seconds is 3.

Understand "appease [something] with [something]", "throw [something] in [something]", "drop [something] in [something]", "place [something] in front of [something]", "put [something] in [something]" as appeasing it with.
	
To say PortalHint of (S - a summoning portal):
	say "stuff!".

Chapter 1 - summoning-circle

The summoning-circle is in Dungeon33. The summoning-circle is a summoning portal. The printed name of summoning-circle is "[TQlink of item described]summoning circle[TQxlink of item described][shortcut-desc][verb-desc of item described]". The description of summoning-circle is "A softly glowing pentagram, with candles placed at all five points of the star. The shape in the center of the circle glints subtly in the light, as if it were a mirror. [if the item described is active][PortalHint of the item described][end if]". Understand "summon", "summoning", "circle", "summoning circle" as summoning-circle.

To say PortalHint of (S - a summoning-circle):
	let N be the next-summon of S;
	if N is 1:
		say "You can see a faint image of a cross floating behind it.";[guard]
	otherwise if N is 2:
		say "You can make out a smoky image of a sword inside it.";[gladiator]
	otherwise if N > 0:[you're probably going to be most excited for a wench, so let's throw a curveball]
		say "You can make out a faint image inside of it. It looks like...[if the charge of S > 10 or N is 3]the back of someone's head?[otherwise if N is 4]a hat?[end if]";[wench or aeromancer]
	otherwise:
		say "You can make out an image of a balloon inside it.".[sex doll]

[Selkie wondered: 
Again, it seems odd to me that a random summoning-circle’s charge is decreased, rather than “S”.  And should S be a random *active* summoning-circle?  And why decreased by “seconds”?
Aika speaking.  "seconds" is the thing that holds how many seconds are passing *this turn* - different actions take different amounts of seconds.
There's only one summoning-circle which is why the below code works reliably. 

(Also its kind of unclear how to make the code accept things like "let S be summoning-circle" or "decrease the charge of summoning-circle")
]
A time based rule (this is the dungeon summoning rule):
	if the player is in the dungeon:
		decrease the charge of summoning-circle by (time-seconds + game difficulty) / 2;
	if the player is in the dungeon and the charge of a summoning-circle < 1 and summoning-circle is active:
		let S be summoning-circle;
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
		if M is monster:
			summon M in the dungeon;
			now M is in Dungeon33;
			say SummoningFlav of M;
			now the next-summon of S is a random number between 0 and 4;
			now the charge of S is 170 + the number of alive monsters in the Dungeon * 3;
			now S is not active;
			increase the spawn-count of S by 1;
			now the reset-count of S is 0;[the summoning-circle resets its counter when it successfully spawns a monster.]
			now the boredom of M is 1;[should fix issues where the player is in the room, and the monster's perception function runs twice in a row]
	otherwise if the player is in the dungeon and summoning-circle is not active and the charge of summoning-circle < 120:
		say "[bold type][if the location of the player is Dungeon33]The [printed name of summoning-circle] slowly lights up, and you can feel dark energy gathering around you...[otherwise]A pulse of energy passes through the dungeon, and something changes in the air. It's almost like there's a draft.[end if][roman type][line break]";
		if the location of the player is Dungeon33, say "[variable custom style]Is something going to come through that?[roman type][line break]";
		otherwise say "[variable custom style]Something's coming..[if the bimbo of the player > 14]. Teehee. Cumming[end if].[roman type][line break]";
		now summoning-circle is active;
		now the alert of the player is 1.

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

Chapter 2 - giant-statue

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
		say "[PortalHint of the item described]".

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
	let G be giant-statue;
	if the player is in the woods, decrease the charge of G by time-seconds / 2;
	if the player is in the woods and the charge of G < 1 and G is active:
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
		if M is monster:
			summon M in the Woods;
			now M is in Woods30;
			say SummoningFlav of M;
			now the next-summon of G is a random number between 0 and 5;
			now the charge of G is 150 - (game difficulty * 10) + (the number of alive monsters in the woods * (5 - game difficulty));
			now G is not active;
			increase the spawn-count of G by 1;
			now the reset-count of G is 0;[the summoning-circle resets its counter when it successfully spawns a monster.]
	otherwise if the player is in the woods and G is not active and the charge of G < 120:
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
			Arouse 100;
		now G is active;
		now the alert of the player is 1.

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


Summoning Portals ends here.
