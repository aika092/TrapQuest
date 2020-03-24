Doom by Every Turn begins here.

[!<doomCounter:Integer>*

REQUIRES COMMENTING

*!]
doom counter is a number that varies.

[!<doomed:Integer>*

REQUIRES COMMENTING

*!]
doomed is a number that varies.

new-acolyte-counter is initially 0.

[!<ComputeDoom>+

REQUIRES COMMENTING

+!]
A later time based rule (this is the compute doom rule):
	if doom counter > 0:
		if the location of the player is Mansion23 and doom notes is held and there is a held pocketbook and (reception bell is held or there is a held catbell or cowbell is held) and black candle is held:
			if there is unfriendly monster in the location of the player or there is an acolyte in the location of the player:
				let L be the list of undefeated monsters in the location of the player;
				repeat with M running through friendly undefeated monsters in the location of the player:
					if M is not acolyte and M is not deep one, remove M from L;
				if the number of entries in L > 0 and the player is not in danger, say "You want to perform the ritual [one of]to send the elder ones back to sleep [or][stopping]but you can't until the room is clear of all threats who would probably interrupt you - [L].";
			otherwise:
				say "[bold type]You pull out the paper the witch gave you and try to figure out what exactly you are supposed to do.[roman type] [if the raw intelligence of the player > 12]Fortunately you find it quite straightforward. [otherwise if the raw intelligence of the player > 7]It's a bit complicated but you eventually work it out. [otherwise]You honestly have no idea what any of this means, but it seemed the witch planned for that too because it ends with 'LOOK, JUST LIGHT THE CANDLE, RING THE BELL, PICK UP THE BOOK, AND SAY GO FUCK OFF.'[line break][end if]As you carry out the instructions, there is a huge rush of air, a terrible noise, and a brief whiff of ozone. Afterwards the air feels still, and you believe you may have succeeded.";
				now doom counter is -1;
				now doomed is -1;
				if the pink sphere is in the location of the player:
					destroy the pink sphere;
					say "You hear the sound of a thousand voices groaning angrily, and then the giant pink sphere fizzles from existence.";
				progress quest of ritual-quest;
				let X be a random off-stage plentiful necklace;
				unless X is nothing:
					now X is in the location of the player;
					now X is pure diamond;
					set shortcut of X;
					say "You watch with glee as a [printed name of X] shimmers into existence at your feet!";
					compute autotaking X;
		otherwise if doomed < 5:
			if debuginfo > 1, say "[input-style]DOOM: [doom counter] ";
			let MA be the number of mindless acolytes in Mansion23;
			let oldDC be doom counter;
			increase doom counter by MA;
			if debuginfo > 1, say "+ cultists currently performing ritual ([MA]) ";
			if doom counter < 150 and doomed > 0:
				increase doom counter by 1;
				if debuginfo > 1, say "+ level 1 doom bonus catch-up rate (1) ";
			if doom counter < 300 and doomed > 1:
				increase doom counter by 1;
				if debuginfo > 1, say "+ level 2 doom bonus catch-up rate (1) ";
			if doom counter < 450 and doomed > 2:
				increase doom counter by 1;
				if debuginfo > 1, say "+ level 3 doom bonus catch-up rate (1) ";
			if doom counter < 600 and doomed > 3:
				increase doom counter by 4;
				if debuginfo > 1, say "+ level 4 doom bonus catch-up rate (4) ";
			if vampiric fangs is worn:
				increase doom counter by 2;
				if debuginfo > 1, say "+ vampiric fangs rate (2) ";
			if the corruption of the sacred pool >= 200:
				increase doom counter by 1;
				if debuginfo > 1, say "+ corrupted sacred pool (1) ";
			if the corruption of the sacred pool <= 90 and doomed > 3:
				decrease doom counter by 1;
				if debuginfo > 1, say "- pure sacred pool (1) ";
			if the corruption of the sacred pool <= 140:
				decrease doom counter by 1;[keeping the pool "healthy" extends the timer, polluting it speeds it up.]
				if debuginfo > 1, say "- non-corrupted sacred pool (1) ";
			if doom counter <= 0, now doom counter is 1; [Otherwise the quest can accidentally end itself]
			if debuginfo > 1, say "=> [doom counter] | [(doomed + 1) * 150][roman type][line break]";
			let MC be a random off-stage mindless acolyte;
			if MC is a monster:
				increase new-acolyte-counter by 1;
				if debuginfo > 1, say "[input-style]New cultist counter: [new-acolyte-counter] | 250[roman type][line break]";
				if new-acolyte-counter >= 250 and the player is not in Mansion23:
					now new-acolyte-counter is 0;
					set up MC;
					summon MC in the mansion;
					now MC is in Mansion23;
					if debuginfo > 1, say "[input-style]NEW RITUAL CULTIST SPAWNED.[roman type][line break]";
			otherwise if doom counter > 150 and doomed is 0:
				say "[bold type]You feel a sense of impending doom, as though something terrible is in motion. Perhaps you should consult with an expert in magic?[roman type][line break]";
				now doomed is 1;
			otherwise if doom counter > 300 and doomed is 1:
				say "[bold type]You feel a strange sense of being watched, and the atmosphere begins to feel oddly humid. It is almost like something horrible is breathing down your neck.[roman type][line break]";
				now doomed is 2;
				if diaper quest is 1 and ghostly tentacle is off-stage:
					set up ghostly tentacle;
					summon ghostly tentacle in the mansion;
			otherwise if doom counter > 450 and doomed is 2:
				say "[bold type]The air feels positively moist and somehow everything seems more unwholesome, an impressive feat given the content of the game normally.[roman type][line break]";
				now doomed is 3;
				if flower hairclip is worn, transform flower hairclip into spiked-tiara;
			otherwise if doom counter > 600 and doomed is 3:
				if the location of the player is not Mansion23:
					say "[bold type]A horrible noise like a thousand screams of pure bliss echoes through the world itself, and the world itself takes on a soft pink cast for a moment. Something is drawing close to this world![roman type][line break]";
				otherwise:
					say "[bold type]A horrible noise like a thousand screams of bliss echoes through the world and a soft pink light fills the area. Above the altar a translucent pink bubble swirls and throbs, the ritual is clearly almost complete![roman type][line break]";
				now doomed is 4;
				now the Pink Sphere is in Mansion23;
				[spawn the pink bubble scenery in mansion23]
			otherwise if doom counter > 750 and doomed is 4:
				if the location of the player is not Mansion23:
					if the player-class is not cultist:
						say "[bold type]The world begins to shake and pink lightning crackles over every surface! You desperately try to avoid them, but you feel the energy wash over you before the effect settles down. Even still, there is a strange pink energy hanging in the air. One thing is certain: You have failed.[roman type][line break]";
					otherwise:
						say "[bold type]The world begins to shake and pink lightning crackles over every surface! You can feel it, the Great One has come! You revel as the energy flows into you, through you. Even after it settles down, a pink glow remains in the air.[roman type][line break]";
					SexAddictUp 2;
					SemenAddictUp 2;
					DelicateUp 2;
				otherwise:
					if the player-class is not cultist:
						say "[bold type]The world begins to shake and pink lightning begins to arc off the floating pink bubble and into the world! The bubble twists and resolves into an increasingly humanoid shape, finally becoming an extremely feminine figure composed of shocking pink light. In spite of being faceless, you can somehow tell it is looking at you.[line break][second custom style]'Like, cower in fear and junk because Valleyhotep, herald of [Azathot], is totally here.'[roman type][line break]This is probably bad.";
					otherwise:
						say "[bold type]The world begins to shake and pink lightning begins to arc off the floating pink bubble and into the world! The bubble twists and resolves into an increasingly humanoid shape, finally becoming an extremely feminine figure composed of shocking pink light. In spite of being faceless, you can somehow tell it is looking at you.[line break][second custom style]'You have totally done well, minions! Now go and, like, spread the word of Valleyhotep, herald of [Azathot]!'[roman type][line break]";
					SexAddictUp 2;
					SemenAddictUp 2;
					DelicateUp 2;
				Resolve Doom; [spawn valleyhotep and remove the pink bubble]
		otherwise:
			if the gifted of herald > 0, decrease the gifted of herald by 1.

Definition: a room (called R) is raining:
	if doomed < 4 and R is no-roof and (playerRegion is Mansion or doomed > 1), decide yes;
	decide no.

latestAnnouncedWeather is a number that varies.
latestAnnouncedRaining is a number that varies.
A time based rule (this is the doom weather rule):
	if doomed > 0 and doomed < 5:
		if doomed > latestAnnouncedWeather:
			if doomed is 1:
				say "[bold type]You hear a loud thunderclap, and then [if the location of the player is no-roof and playerRegion is Mansion]it starts to rain![otherwise if playerRegion is Woods]you can see that it has started to rain, but only directly above the mansion.[otherwise]the sound of heavy rain.[end if][roman type][line break]";
				if the location of the player is raining, now latestAnnouncedRaining is 1;
			otherwise if doomed is 2:
				say "[bold type]Several flashes of brilliant light are followed by deafeningly loud thunderclaps, and the [unless the location of the player is no-roof]sound of the [end if]rain seems to intensify even further.[roman type][line break]";
				if the location of the player is raining:
					unless playerRegion is Mansion, say "[bold type]It's now raining in [playerRegion].[roman type][line break]";
					now latestAnnouncedRaining is 1;
			otherwise if doomed is 3:
				say "[bold type][if the location of the player is no-roof]Dark clouds now cover the entire sky, with the clouds over the mansion seeming to reflect a pink glow. [end if]A low humming sound can be heard through the rain, coming from [if playerRegion is Mansion]deep within [end if]the mansion.[roman type][line break]";
			otherwise if doomed is 4:
				say "[bold type]The [unless the location of the player is no-roof]sound of [end if] heavy rain stops, but the humming coming from [if playerRegion is Mansion]deep within [end if]the mansion is still there.[roman type][line break]";
				now latestAnnouncedRaining is 0;
			now latestAnnouncedWeather is doomed;
		if the location of the player is raining:
			if latestAnnouncedRaining is 0:
				say "[bold type]You have just stepped out into the rain.[roman type][line break]";
				now latestAnnouncedRaining is 1;
			repeat with C running through worn currently uncovered fluid vulnerable clothing:
				if the total-soak of C < the soak-limit of C, WaterSoak C;
			if doomed is 3 and playerRegion is Mansion:
				HairUp 1;
		otherwise if latestAnnouncedRaining is 1:
			say "[bold type]You have just stepped inside, out of the rain.[roman type][line break]";
			now latestAnnouncedRaining is 0.

[!<ResolveDoom>+

REQUIRES COMMENTING

+!]
To Resolve Doom:
	now doomed is 5;
	now the Pink Sphere is in Holding Pen;
	set up herald;
	compute chosen birth;
	now herald is in Mansion23;
	progress quest of ritual-quest.

[!<ComputeChosenBirth>+

REQUIRES COMMENTING

+!]
To compute chosen birth:[now that the mindless acolytes are no longer needed to pool their strength, it's time to have some babies!]
	repeat with A running through alive mindless acolytes:
		now A is unleashed;
		if inhuman pregnancy > 0:
			let T be a random off-stage tentacle monster;
			set up T;
			decrease the difficulty of T by 2;
			now T is in the location of A;
	repeat with M running through tentacle monsters:
		now the evolved of M is 3;
	let N be a random alive mindless acolyte in the location of the player;
	let E be a random tentacle monster in the location of N;
	if the number of alive mindless acolytes in the location of the player > 1:
		say "Each of the cultists gives birth to [if inhuman pregnancy is 1]a [MediumDesc of E][otherwise][end if], emitting an insane laugh as [he of N] stumbles to [his of N] feet.";
	otherwise:
		if N is monster, say "[BigNameDesc of N] gives birth to [if inhuman pregnancy is 1]a [MediumDesc of E], emitting an insane laugh as [he of N] stumbles to [his of N] feet[otherwise]a mass of black and purple motes, which separate and disappear as [he of N] stumbles to [his of N] feet and emits an insane laugh[end if].".

Doom ends here.
