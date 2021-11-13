Doom by Every Turn begins here.

[!<doomCounter:Integer>*

Ticks up once per mindless cultist per turn, as they perform the ritual. Other things such as the purity of the sacred-pool can also influence increase rate.

*!]
doom counter is a number that varies.

[!<doomed:Integer>*

Increases once every time doom counter reaches a multiple of 150. At each stage, certain elements of the game might be affected, new NPCs might be able to spawn, etc.
At doomed 4, the pink sphere appears
At doomed 5, the herald appears and mindless cultists become hostile

*!]
doomed is a number that varies.

[!<new-acolyte-counter:Integer>*

Increases once per turn. At 300 (might change), resets and a new mindless cultist joins the ritual.

*!]
[new-acolyte-counter is initially 0.]
new-acolytes is a list of people that varies.
To update new acolytes:
	repeat with M running through explorers:
		if M is regional:
			add M to new-acolytes, if absent;
		otherwise:
			if M is listed in new-acolytes, remove M from new-acolytes.

Definition: a thing is bell themed: [The player needs a bell themed, a book themed and a candle themed thing to complete the doom ritual.]
	if it is belled, decide yes;
	decide no.
Definition: a thing is book themed: decide no. [The player needs a bell themed, a book themed and a candle themed thing to complete the doom ritual.]
Definition: a thing is candle themed: decide no. [The player needs a bell themed, a book themed and a candle themed thing to complete the doom ritual.]

To commence doom:
	if the number of mindless acolytes in Mansion23 < 4:
		update new acolytes;
		if (tough-shit is 1 or Mansion01 is placed) and the number of entries in new-acolytes > 0:
			let M be entry 1 in new-acolytes;
			compute cultist conversion cutscene of M;
			force commence doom.

To force commence doom:
	if doom counter is 0:
		if Woods01 is unplaced:
			Set Up The Woods;
			follow the setting up woods monsters rules;
			repeat with M running through alive nonexistent monsters:
				set up M;
		if Mansion01 is unplaced:
			Set Up The Mansion;
			follow the setting up mansion monsters rules;
			repeat with M running through alive nonexistent monsters:
				set up M;
		say "[bold type]You feel a sudden sense of impending doom...[roman type][line break]";
		if newbie tips is 1, say "[one of][newbie style]Newbie tip: You've triggered a side quest! Unless you stop the ritual, spooky things will start happening and some enemies will get more powerful and aggressive. To slow the cultists down, kill the mindless ones near the hidden altar, and also don't dirty up the sacred pool. To find out how to re-close the weakening seal on the Elder One, talk to the witch in the woods.[roman type][line break][or][stopping]";
		repeat with M running through robobellboys:
			add reception bell to the banishItems of M;
		if the number of alive undefeated robobellboys is 0, now the next-summon of teleportation-pad is a random off-stage robobellboy;
		if catbell is off-stage:
			blandify and reveal catbell;
			now catbell is in Dungeon41;
			now catbell is store;
		add black candle to the taxableItems of dominatrix;
		add black candle to the tradableItems of dominatrix;
		repeat with M running through dungeon dwelling gladiators:
			add black candle to the taxableItems of M;
			add black candle to the tradableItems of M;
		if the number of alive undefeated dungeon dwelling gladiators is 0, now the next-summon of summoning-circle is a random off-stage dungeon dwelling gladiator;
		now doom counter is 1.

To compute cultist conversion cutscene of (M - a monster):
	let N be a random alive intelligent acolyte;
	if N is nothing, now N is a random intelligent acolyte;
	let R be the room south from Stairwell03;
	say "You spot [NameDesc of M] nearby! [big he of M] turns around and notices you too. Before [he of M] can react to your presence, suddenly, [NameDesc of N] appears behind [him of M]! [BigNameDesc of N] pulls a black sack down over [NameDesc of M][']s head.[line break][speech style of M]'Hey, what's the big ide-MMMPH!'[roman type][line break][BigNameDesc of N] announces in a loud, proud voice.[line break][speech style of N]'Come, young one, and join our order. We shall bless you in the name of [Azathot].'[roman type][line break]You don't have a chance to try and do anything before [NameDesc of N] has [if playerRegion is mansion or the player is in Stairwell03 or the player is in R]dragged [NameDesc of M] away into the depths of the mansion[otherwise]somehow teleported away, taking [NameDesc of M] along with [him of N][end if].";
	if M is listed in new-acolytes, remove M from new-acolytes;
	let X be a random off-stage mindless acolyte;
	if X is acolyte:
		set up X;
		summon X in the mansion;
		now X is in Mansion23;
	focus-consider N;
	focus-consider M;
	destroy M;
	now M is permanently banished.

Report going when the player is in School01:
	if Mansion01 is placed and most-recent-furious is student and doomed < 5 and doomed >= 0:
		let M be most-recent-furious;
		let N be a random alive intelligent acolyte;
		if N is nothing, now N is a random intelligent acolyte;
		say "[bold type]As you enter the reception, you notice [M] [bold type]just leaving via the portal.[roman type][line break]But as [he of M] goes through it, the image on the other side glitches, and changes from a very normal looking house to the haunted mansion![line break][speech style of M]'Wait, this isn't where I wanted to go!'[roman type][line break]Suddenly, [NameDesc of N] appears behind [him of M]! [BigNameDesc of N] pulls a black sack down over [NameDesc of M][']s head.[line break][speech style of M]'Hey, what's the big ide-MMMPH!'[roman type][line break][BigNameDesc of N] announces in a loud, proud voice.[line break][speech style of N]'Come, young one, and join our order. We shall bless you in the name of [Azathot].'[roman type][line break]You watch with [horror the bimbo of the player] as [NameDesc of M] is dragged away.";
		now most-recent-furious is nothing;
		let X be a random off-stage mindless acolyte;
		if X is acolyte:
			set up X;
			summon X in the mansion;
			now X is in Mansion23;
		focus-consider N;
		focus-consider M;
		force commence doom.

A later time based rule (this is the compute doom rule):
	if doom counter is 0:
		let R be the room south from Stairwell03;
		if the player is in Stairwell03 or the player is in R:
			let W be a random alive wench;
			update new acolytes;
			if tough-shit is 1 and the number of entries in new-acolytes is 0 and W is monster:
				compute banishment of W;
				add W to new-acolytes, if absent;
			if the number of entries in new-acolytes is 0 and tough-shit is 1:
				force commence doom;
			otherwise:
				commence doom;
	if doom counter > 0:
		let BLT be a random held bell themed thing;
		let BT be a random held book themed thing;
		let CT be a random held candle themed thing;
		if doomed < 5 and the location of the player is Mansion23 and the player is not in danger:
			if doom notes is held and BLT is a thing and BT is a thing and CT is a thing:
				if there is undefeated unfriendly monster in the location of the player or there is an undefeated acolyte in the location of the player:
					let L be the list of undefeated monsters in the location of the player;
					repeat with M running through undefeated friendly monsters in the location of the player:
						if M is not acolyte and M is not deep one, remove M from L;
					if the number of entries in L > 0, say "[bold type]You want to perform the ritual [one of]to send the elder ones back to sleep [or][stopping]but you can't until the room is clear of all threats who would probably interrupt you - [L].[roman type][line break]";
				otherwise:
					say "[bold type]You pull out the paper the witch gave you and try to figure out what exactly you are supposed to do.[roman type] [if the raw intelligence of the player > 12]Fortunately you find it quite straightforward. [otherwise if the raw intelligence of the player > 7]It's a bit complicated but you eventually work it out. [otherwise]You honestly have no idea what any of this means, but it seemed the witch planned for that too because it ends with 'LOOK JUST LIGHT THE CANDLE, RING THE BELL, PICK UP THE BOOK, AND SAY GO FUCK OFF.'[line break][end if]As you carry out the instructions, there is a huge rush of air, a terrible noise, and a brief whiff of ozone. Afterwards the air feels still, and you believe you may have succeeded.";
					now doom counter is -1;
					now doomed is -1;
					if the pink sphere is in the location of the player, say "You hear the sound of a thousand voices groaning angrily, and then the giant pink sphere fizzles from existence.";
					destroy the pink sphere;
					progress quest of ritual-quest;
					let X be a random off-stage plentiful necklace;
					unless X is nothing:
						now X is in the location of the player;
						now X is pure diamond;
						set shortcut of X;
						say "You watch with glee as a [printed name of X] shimmers into existence at your feet!";
						compute autotaking X;
			otherwise:
				if doom notes is off-stage, say "[one of][bold type]Perhaps there's some way to permanently stop this ritual from happening. Maybe you should ask a witch.[roman type][line break][or][stopping]";
				otherwise say "[bold type]You want to perform the ritual[one of] to send the elder ones back to sleep[or][stopping].[roman type][line break]You [if doom notes is not held][bold type]do not [roman type][end if]have the instructions from the witch.[line break]You [if BLT is a thing]have a bell ([NameDesc of BLT])[otherwise][bold type]do not [roman type]have a bell[end if].[line break]You [if BT is a thing]have a book ([NameDesc of BT])[otherwise][bold type]do not [roman type]have a book[end if].[line break]You [if CT is a thing]have a candle ([NameDesc of CT])[otherwise][bold type]do not [roman type]have a candle[end if].";
	if doom counter > 0 and doomed < 5:
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
		if the corruption of the sacred-pool >= 200:
			increase doom counter by 1;
			if debuginfo > 1, say "+ corrupted sacred pool (1) ";
		if the corruption of the sacred-pool <= 90 and doomed > 3:
			decrease doom counter by 1;
			if debuginfo > 1, say "- pure sacred pool (1) ";
		if the corruption of the sacred-pool <= 140:
			decrease doom counter by 1;[keeping the pool "healthy" extends the timer, polluting it speeds it up.]
			if debuginfo > 1, say "- non-corrupted sacred pool (1) ";
		if doom counter <= 0, now doom counter is 1; [Otherwise the quest can accidentally end itself]
		if debuginfo > 1, say "=> [doom counter] | [(doomed + 1) * 150][roman type][line break]";
		[let MC be a random off-stage mindless acolyte;
		if MC is a monster:
			increase new-acolyte-counter by 1;
			if debuginfo > 1, say "[input-style]New cultist counter: [new-acolyte-counter] | 250[roman type][line break]";
			if new-acolyte-counter >= 350 and the player is not in Mansion23:
				now new-acolyte-counter is 0;
				set up MC;
				summon MC in the mansion;
				now MC is in Mansion23;
				if debuginfo > 1, say "[input-style]NEW RITUAL CULTIST SPAWNED.[roman type][line break]";]
		if doom counter > 150 and doomed is 0:
			say "[bold type]You feel a sense of impending doom, as though something terrible is in motion. Perhaps you should consult with an expert in magic?[roman type][line break]";
			now doomed is 1;
			if a random number between 1 and 2 is 1 and wild gladiator is summon-available and wild gladiator is off-stage and wild gladiator is woods dwelling, now the next-summon of giant-statue is wild gladiator;
			repeat with A running through alive unleashed acolytes:
				DifficultyUp A by 1;
			progress quest of doom-quest;
		otherwise if doom counter > 300 and doomed is 1:
			say "[bold type]You feel a strange sense of being watched, and the atmosphere begins to feel oddly humid. It is almost like something horrible is breathing down your neck.[roman type][line break]";
			now doomed is 2;
			if diaper quest is 1 and ghostly tentacle is off-stage:
				set up ghostly tentacle;
				summon ghostly tentacle in the mansion;
			if a random number between 1 and 3 is 1 and enlightened gladiator is summon-available and enlightened gladiator is off-stage and enlightened gladiator is mansion dwelling, now the next-summon of mysterious-mummy is enlightened gladiator;
			repeat with A running through alive unleashed acolytes:
				DifficultyUp A by 1;
			progress quest of doom-quest;
		otherwise if doom counter > 450 and doomed is 2:
			say "[bold type]The air feels positively moist and somehow everything seems more unwholesome, an impressive feat given the content of the game normally.[roman type][line break]";
			now doomed is 3;
			if flower hairclip is worn, transform flower hairclip into spiked-tiara;
			repeat with A running through alive unleashed acolytes:
				DifficultyUp A by 1;
			progress quest of doom-quest;
		otherwise if doom counter > 600 and doomed is 3:
			if the location of the player is not Mansion23:
				say "[bold type]A horrible noise like a thousand screams of pure bliss echoes through the world itself, and the world itself takes on a soft pink cast for a moment. Something is drawing close to this world![roman type][line break]";
			otherwise:
				say "[bold type]A horrible noise like a thousand screams of bliss echoes through the world and a soft pink light fills the area. Above the altar a translucent pink bubble swirls and throbs, the ritual is clearly almost complete![roman type][line break]";
			now doomed is 4;
			now the Pink Sphere is in Mansion23; [spawn the pink bubble scenery in mansion23]
			repeat with A running through alive unleashed acolytes:
				DifficultyUp A by 1;
			progress quest of doom-quest;
		otherwise if doom counter > 800 and doomed is 4:
			if the location of the player is Mansion23:
				if the class of the player is cultist:
					say "[bold type]The world begins to shake and pink lightning begins to arc off the floating pink bubble and into the world! The bubble twists and resolves into an increasingly humanoid shape, finally becoming an extremely feminine figure composed of shocking pink light. In spite of being faceless, you can somehow tell it is looking at you.[line break][second custom style]'You have totally done well, minions! Now go and, like, spread the word of Valleyhotep, herald of [Azathot]!'[roman type][line break]";
				otherwise:
					say "[bold type]The world begins to shake and pink lightning begins to arc off the floating pink bubble and into the world! The bubble twists and resolves into an increasingly humanoid shape, finally becoming an extremely feminine figure composed of shocking pink light. In spite of being faceless, you can somehow tell it is looking at you.[line break][second custom style]'Like, cower in fear and junk because Valleyhotep, herald of [Azathot], is totally here.'[roman type][line break]This is probably bad.";
			otherwise:
				if the class of the player is cultist:
					say "[bold type]The world begins to shake and pink lightning crackles over every surface! You can feel it, the Great One has come! You revel as the energy flows into you, through you. Even after it settles down, a pink glow remains in the air.[roman type][line break]";
				otherwise:
					say "[bold type]The world begins to shake and pink lightning crackles over every surface! You desperately try to avoid them, but you feel the energy wash over you before the effect settles down. Even still, there is a strange pink energy hanging in the air. One thing is certain: You have failed.[roman type][line break]";
			resolve doom;
			progress quest of doom-quest;
		otherwise if a random number between 1 and (40 + (10 * MA)) is 1:
			if debuginfo > 1:
				update new acolytes;
				say "[input-style]ATTEMPTING TO SPAWN A NEW RITUAL CULTIST (new acolytes list is: [new-acolytes]).[roman type][line break]";
			commence doom; [abduct a new cultist if possible]
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

To resolve doom:
	now doomed is 5;
	now the Pink Sphere is in Holding Pen;
	set up herald;
	if enlightened gladiator is summon-available and enlightened gladiator is dungeon dwelling and enlightened gladiator is not in the location of the player, summon enlightened gladiator in the dungeon;
	if goth mannequin is woods dwelling and goth mannequin is off-stage, summon goth mannequin in the woods;
	if diaper quest is 0, compute chosen birth;
	now herald is in Mansion23;
	progress quest of ritual-quest.

[TODO: update for lady fetish]
To compute chosen birth:[now that the mindless acolytes are no longer needed to pool their strength, it's time to have some babies!]
	repeat with A running through alive acolytes:
		DifficultyUp A by 1;
		if A is mindless acolyte:
			now A is unleashed;
			if inhuman pregnancy > 0:
				let T be a random off-stage tentacle monster;
				if T is monster:
					set up T;
					decrease the raw difficulty of T by 2;
					now T is in the location of A;
	repeat with M running through tentacle monsters:
		now the evolved of M is 3;
	let N be a random alive mindless acolyte in the location of the player;
	let E be a random tentacle monster in the location of N;
	if the number of mindless acolytes in the location of the player > 1:
		say "Each of the cultists gives birth to [if inhuman pregnancy is 1]a [MediumDesc of E][otherwise]masses of black and purple motes[end if], filling the room with the sound of insane laughter as magenta light surrounds their bodies.";
	otherwise:
		if N is monster, say "[BigNameDesc of N] gives birth to [if inhuman pregnancy is 1]a [MediumDesc of E], emitting an insane laugh as [he of N] stumbles to [his of N] feet[otherwise]a mass of black and purple motes, which separate and disappear as [he of N] stumbles to [his of N] feet and emits an insane laugh[end if].".

A time based rule (this is the creepiness rule):
	compute creepiness.

creepiness is a number that varies. creepiness is usually 0.
To compute creepiness: [first implementation of "creeping" of ghosts in non-garlic rooms.]
	let G be the number of alive ghosts + 1;
	if the location of the player is garlic or playerRegion is not mansion:
		if creepiness > 0, decrease creepiness by 20; [The player will have to hide for a couple turns to completely shake off the ghosts, but it shouldn't take too long]
		if creepiness < 0, now creepiness is 0;
	otherwise if (creepiness > a random number between (G * 30) and (G * 60)) and there is an off-stage ghost and the player is not in a nonstandard room: [player has to be in the mansion for a while before multiple ghosts start messing with them]
		let LM be the list of off-stage ghosts;
		if ghostly tentacle is listed in LM, remove ghostly tentacle from LM;
		if the number of entries in LM > 0:
			sort LM in random order;
			let M be entry 1 in LM; [Sometimes this summons the jismbodied ghost, but you have to "kill" it first.]
			set up M;
			now M is in the location of the player;
			say "Something in the air changes, and you look over your shoulder to see a pinprick of light in the doorway, slowly growing into [NameDesc of M].";
			decrease creepiness by ((6 - game difficulty) * the number of on-stage ghosts) + 30; [it's almost certain you'll see one if something catches you, but it's very unlikely to get more than 2 at a time.]
	otherwise if the player is not soulless: [The ghosts are attracted to your soul]
		say "[one of][if creepiness > 9]Tension seems to linger in the air around you, and you can't help but feel something will burst out at you at any moment.[end if][or][or][or][if creepiness > 6]You can't shake the feeling that you are being watched.[end if][or][or][cycling]";
		increase creepiness by 1.

Doom ends here.
