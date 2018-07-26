Doom by Every Turn begins here.

[!<doomCounter:Integer>*

REQUIRES COMMENTING

*!]
doom counter is a number that varies.

[!<doomed:Integer>*

REQUIRES COMMENTING

*!]
doomed is a number that varies.

[!<ComputeDoom>+

REQUIRES COMMENTING

+!]
A time based rule (this is the compute doom rule):
	[if debugmode > 0, say "[input-style]CHECKING DOOM: Doom is [doom counter].[roman type][line break]";]
	if doom counter > 0:
		if the location of the player is Mansion23 and there is a held doom notes and there is a held pocket necronomicon and there is a held reception bell and there is a held black candle:
			say "You pull out the paper the witch gave you and try to figure out what exactly you are supposed to do. [if the raw intelligence of the player > 12]Fortunately you find it quite straightforward.[otherwise if the raw intelligence of the player > 7]It's a bit complicated but you eventually work it out.[otherwise]You honestly have no idea what any of this means, but it seemed the witch planned for that too because it ends with 'LOOK JUST LIGHT THE CANDLE, RING THE BELL, PICK UP THE BOOK, AND SAY GO FUCK OFF.'[end if] As you carry out the instructions, there is a huge rush of air, a terrible noise, and a brief whiff of ozone. Afterwards the air feels still, and you believe you may have succeeded.";
			now doom counter is -1;
			now doomed is -1;
		if doomed < 5:
			if debuginfo > 1, say "[input-style]DOOM: [doom counter] ";
			let MA be the number of mindless acolytes in Mansion23;
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
			if doom counter > 150 and doomed is 0:
				say "[bold type]You feel a sense of impending doom, as though something terrible is in motion. Perhaps you should consult with an expert in magic?[roman type][line break]";
				now doomed is 1;
			otherwise if doom counter > 300 and doomed is 1:
				say "[bold type]You feel a strange sense of being watched, and the atmosphere begins to feel oddly humid. It is almost like something horrible is breathing down your neck.[roman type][line break]";
				now doomed is 2;
			otherwise if doom counter > 450 and doomed is 2:
				say "[bold type]The air feels positively moist and somehow everything seems more unwholesome, an impressive feat given the content of the game normally.[roman type][line break]";
				now doomed is 3;
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
						say "[bold type]The world begins to shake and pink lightning begins to arc off the floating pink bubble and into the world! The bubble twists and resolves into an increasingly humanoid shape, finally becoming an extremely feminine figure composed of shocking pink light. In spite of being faceless, you can somehow tell it is looking at you. [line break][second custom style]'Like, cower in fear and junk because Valleyhotep, herald of Azacocks, is totally here.'[roman type][line break]This is probably bad.";
					otherwise:
						say "[bold type]The world begins to shake and pink lightning begins to arc off the floating pink bubble and into the world! The bubble twists and resolves into an increasingly humanoid shape, finally becoming an extremely feminine figure composed of shocking pink light. In spite of being faceless, you can somehow tell it is looking at you. [line break][second custom style]'You have totally done well, minions! Now go and, like, spread the word of Valleyhotep, herald of Azacocks!'[roman type][line break]";
					SexAddictUp 2;
					SemenAddictUp 2;
					DelicateUp 2;
				Resolve Doom;[spawn valleyhotep and remove the pink bubble]
		otherwise:
			if the gifted of herald > 0, decrease the gifted of herald by 1.

[!<ResolveDoom>+

REQUIRES COMMENTING

+!]
To Resolve Doom:
	now doomed is 5;
	now the Pink Sphere is in Holding Pen;
	let M be a random off-stage herald;
	set up M;
	if diaper quest is 0:
		compute chosen birth;
		now M is in Mansion23.

[!<ComputeChosenBirth>+

REQUIRES COMMENTING

+!]
To compute chosen birth:[now that the mindless acolytes are no longer needed to pool their strength, it's time to have some babies!]
	repeat with A running through alive mindless acolytes:
		now A is released;
		if inhuman pregnancy > 0:
			let T be a random off-stage tentacle monster;
			set up T;
			decrease the difficulty of T by 2;
			now T is in the location of A;
			if A is in the location of the player, say "The [A] gives birth to a [T]!";[TODO: improve]
	repeat with M running through tentacle monsters:
		now the evolved of M is 3.
		


Doom ends here.

