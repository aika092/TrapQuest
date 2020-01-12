Periodic Effects by Every Turn begins here.


A time based rule (this is the compute clothing rule):
	repeat with C running through in-play clothing:
		compute drying of C;
	repeat with C running through worn wearthing:
		compute periodic effect of C.

[!<dominationTime:Integer>*

REQUIRES COMMENTING

*!]
domination-time is a number that varies. domination-time is 30.

[!<timeTracking:Integer>*

Golem spawn timer. After it gets below 285 the golem starts to build up to spawning much quicker.

*!]
time-tracking is a number that varies. time-tracking is 300.
tg-tracking is a number that varies.

temp_str_dam is a number that varies. temp_str_dam is 0.
temp_dex_dam is a number that varies. temp_dex_dam is 0.
temp_int_dam is a number that varies. temp_int_dam is 0.

Part 1 - Main Procedure


[!<ComputePeriodicEffectsWithEarnings>+

REQUIRES COMMENTING

+!]
To compute periodic effects with earnings (local-earnings - a number) and seconds (local-seconds - a number):
	[If enough experience has been gained, level up heel skill]
	if the heel time of the player  > minHeelXP and the player is upright, HeelUp 1;
	[Real world changes]
	if the remainder after dividing local-earnings by (500 / (fast breast expansion + 1)) < local-seconds:
		if extreme proportions fetish is 1 or the remainder after dividing local-earnings by (1000 / (fast breast expansion + 1)) < local-seconds:
			if the flesh volume of breasts + the silicone volume of breasts > the real flesh volume of breasts:
				repeat with N running from 1 to 3:
					if the flesh volume of breasts + the silicone volume of breasts > the real flesh volume of breasts, increase the real flesh volume of breasts by 1;
				set real breast size;
			if the thickness of hips > the real thickness of hips, increase the real thickness of hips by 1;
		if fast TG is 3 and the size of penis <= min penis size and the player is male:
			if tg-tracking > 0:
				say DefaultSexChangeFlav;
				sexchange the player;
			otherwise:
				increase tg-tracking by 1;
		otherwise if the player is male and the size of penis < the real size of penis:
			if the real size of penis > min penis size:
				decrease the real size of penis by 1;
				if fast TG is 3 and the size of penis < the real size of penis, decrease the real size of penis by 1; [if your penis has shrunk a lot, this is going to happen even faster!]
		if the raw largeness of hair > the real largeness of hair and the real largeness of hair < 10, increase the real largeness of hair by 1;
		if the openness of asshole > the real openness of asshole and ungape is 0, increase the real openness of asshole by 1;
		if the openness of vagina > the real openness of vagina and ungape is 0, increase the real openness of vagina by 1;
		if the latex-transformation of the player <= 2 and ungape is 0:
			if the openness of asshole > the real openness of asshole and (the openness of asshole - the real openness of asshole) >= (the openness of vagina - the real openness of vagina) and gape-gloves is not worn:
				say "Your [asshole] regains a little tightness.";
				Assclose 1;
			otherwise if the openness of vagina > the real openness of vagina:
				say "Your [vagina] regains a little tightness.";
				Pussyclose 1;
			otherwise if the openness of asshole > the real openness of asshole and gape-gloves is worn:
				say "Your [asshole] can't regain its tightness like normal because you're permanently pulling it open with your fingers!";
	if ungape is 1:
		if the openness of vagina > 2 and vagina is not actually occupied, decrease the openness of vagina by 1;
		if the openness of asshole > 2 and asshole is not actually occupied:
			if gape-gloves is worn, say "[one of]Your [asshole] can't regain its tightness like normal because you're permanently pulling it open with your fingers![or][stopping]";
			otherwise decrease the openness of asshole by 1;
	[Regular bonuses for maintaining pride in virginity / continence]
	if the remainder after dividing local-earnings by 1425 < local-seconds:
		if diaper focus >= 1:
			if wetting-valued >= 3, diaperreward;
		otherwise if the player is female and the virgin of the player is 1 and (virginity-valued is 1 or flower hairclip is worn):
			virginreward;
	[Virgin Curse]
	if the remainder after dividing local-earnings by 297 < local-seconds and the player is male and the virgin of the player is 1 and virgincursed > 0 and transGender is 0:
		virginpunish;
	[Various periodic decays]
	if the remainder after dividing local-earnings by 611 < local-seconds:
		compute hair colour decay;
	if the remainder after dividing local-earnings by 49 < local-seconds:
		compute orifice soreness decay;
	if the remainder after dividing local-earnings by 676 < local-seconds:
		compute makeup decay;
	if the remainder after dividing local-earnings by 9 < local-seconds:
		compute inflation decay;
	if the remainder after dividing local-earnings by 49 < local-seconds and temp_str_dam + temp_dex_dam + temp_int_dam > 0:
		compute stat healing;
	[Latex Transformation]
	if the remainder after dividing local-earnings by latex transformation rate < local-seconds:
		compute latex transformation;
	[Spawning and buffing of weak enemies]
	if the remainder after dividing local-earnings by 413 < local-seconds:
		let P be a random alive prison guard;
		if (ex-princess is caged and skeleton key is not in-play) or there is worn locked clothing:
			if P is prison guard and there is worn locked clothing:
				decrease the sentence of P by 2;
			otherwise if P is not prison guard:
				let M be a random off-stage prison guard;
				if M is monster:
					set up M;
					summon M in the dungeon;
		if the number of alive golem is 0 and diaper quest is 0:
			let M be a random off-stage golem;
			let X be max ass size + max breast size + 1;
			let S be X - (the thickness of hips + the largeness of breasts);
			let SR be a random number between S and time-tracking;
 			if time-tracking < 1000:
				decrease time-tracking by 1;
				if debuginfo > 0, say "[input-style]Golem spawn prevention check: body shape ([S]); time ticker ([time-tracking])[if time-tracking >= 285]; time ticker not yet below 293 so automatic success[otherwise] ==> RNG([S]~[time-tracking]) = [SR] | ([X].5) max possible body shape[end if][roman type][line break]";
			if time-tracking < 293:
				if SR < X:[more likely the larger the larger the player's body has gotten.][Aika thinks this is going to take forever to be true because it looks like time-tracking is only decremented from 400 once every 413 seconds]
					set up M;
					if playerRegion is Woods:
						now M is in Stairwell02;
					otherwise if playerRegion is Hotel:
						now M is in Hotel01;
					otherwise if playerRegion is Mansion:
						now M is in Mansion01;
					otherwise:
						now M is in Stairwell01;
					now M is guarding;
					say "Some speakers come to life, and you hear an announcement! [line break][second custom style]'Hey there, [NameBimbo]! Are you having fun? See, we're looking at the data here and it seems like you're taking this game very seriously. In that case, it shouldn't be a problem if we spawn in a new threat. Don't worry, I'm sure you'll figure things out...'[roman type][line break]";
					now time-tracking is 1000;
				otherwise: [Aika has added this is a good way to fix the issue]
					decrease time-tracking by X;
	[succubus souls]
	if the remainder after dividing local-earnings by 250 < local-seconds and the player-class is succubus:
		if the souls of the player is greater than 0:
			decrease the souls of the player by 1;
			MagicPowerUp 1;
			if a random number between 1 and 2 > 1:
				if a random number between 1 and 3 > 2:
					Intup 1;
					say "[bold type]You feel one of the souls you have devoured infusing you with power, and find it easier to focus.[roman type][line break]";
				otherwise if a random number between 1 and 2 > 1:
					Dexup 1;
					say "[bold type]You feel one of the souls you have devoured infusing you with power, and feel your body becoming more flexible.[roman type][line break]";
				otherwise:
					Strengthup 1;
					say "[bold type]You feel one of the souls you have devoured infusing you with power, and feel yourself becoming stronger.[roman type][line break]";
			otherwise if there is a worn cursed clothing:
				say "[bold type]You feel the power of one of your devoured souls flow through your clothing![roman type][line break]";
				repeat with C running through worn cursed clothing:
					bless C;
				if there is a worn dildo heels:
					let D be a random worn dildo heels;
					increase the raw-magic-modifier of D by 1;
			otherwise if a random number between 1 and 2 > 1:
				Dignify 800;
				say "[bold type]You feel one of the souls you have devoured fading away, and you exalt in your power over these weak mortals.[roman type][line break]";
				SexAddictDown 1;
				SemenAddictDown 1;
			otherwise if the raw heel skill of the player < 10 or the largeness of breasts < 5 or the thickness of hips < 5:
				if the raw heel skill of the player < 10:
					HeelUp 1;
				if the largeness of breasts < 5:
					Bustup 1;
				if the thickness of hips < 5:
					HipUp 1;
				say "[bold type]'You feel one of the souls you have devoured fading away. Its power flows into the stone in your chest, and your body becomes more womanly!!'[roman type][line break]";
			otherwise:
				heal asshole times 1;
				heal vagina times 1;
				bodyheal 1;
				if the player is thirsty, increase the stomach-water of the player by 1;
				say "[bold type]'You feel one of the souls you have devoured fading away, and feel its power sustaining your flesh.'[roman type][line break]";
			increase the soul addiction of the player by 1;
			[arouse 500;] [Aika: This didn't feel necessary to me.]
		if the souls of the player < the soul addiction of the player:
			say "[bold type]You feel a gnawing hunger well up within you, and are filled with a sudden desire to consume more souls.[roman type][line break]";
			humiliate 100;
			if a random number between the soul addiction of the player and 10 >= 10:
				decrease the soul addiction of the player by 1.

Part 2 - Specific Procedures


[!<ComputeHairColourDecay>+

REQUIRES COMMENTING

+!]
To compute hair colour decay:
	let R be 1;
	if bright-hair tattoo is worn or diaper quest is 1, now R is 0; [This tattoo stops hair from decaying]
	let X be 0;
	while R > 0:
		now R is a random number between 1 and 3;
		increase X by 1;
		if R is 1:
			unless there is worn blondeness-positive headgear:
				HairBlondeDown 1;
				say "Your hair loses some colour and lightness.";
				now R is 0;
		otherwise if R is 2:
			unless there is worn redness-positive headgear:
				HairRedDown 1;
				say "Your hair loses some colour.";
				now R is 0;
		otherwise if R is 3:
			unless there is worn brightness-positive headgear:
				HairBrightDown 1;
				say "Your hair colour darkens.";
				now R is 0;
		if X > 20, now R is 0.

[!<ComputeMakeupDecay>+

REQUIRES COMMENTING

+!]
To compute makeup decay:
	if a random number between 0 and diaper quest is 0 and permanent makeup is 0:
		if the make-up of face > 1:
			say "Your make-up partially fades.";
			FaceDown 1;
		otherwise if a random number between 1 and 5 > 3:
			say "Your make-up fades away.";
			FaceDown 1.

[!<ComputeOrificeSorenessDecay>+

REQUIRES COMMENTING

+!]
To compute orifice soreness decay:
	if asshole is not actually occupied:
		if the player is male:
			heal asshole times 1;
		otherwise:
			if the soreness of asshole > the soreness of vagina or vagina is actually occupied:
				heal asshole times 1;
			otherwise:
				heal vagina times 1.


[!<ComputeInflationDecay>+

REQUIRES COMMENTING

+!]
To compute inflation decay:
	let flav-said be 0;
	if the air volume of breasts > 0:
		bustdeflate 1;
		say "Your [BreastDesc] [if the air volume of belly > 0]and [BellyDesc] [end if][if the air volume of hips > 0]and [ShortDesc of hips] [end if]have slightly deflated.";
		now flav-said is 1;
	if the air volume of belly > 0:
		decrease the air volume of belly by 1;
		if flav-said is 0, say "Your [BellyDesc] [if the air volume of hips > 0]and [ShortDesc of hips] have[otherwise]has[end if] slightly deflated.";
		now flav-said is 1;
	if the air volume of hips > 0:
		decrease the air volume of hips by 1;
		if flav-said is 0, say "Your [ShortDesc of hips] have slightly deflated.";
	if the player is flying and a random number between 1 and 2 is 1, say "[one of]You can't believe you're stuck in the air! How humiliating.[or]Being stuck in mid-air gives you plenty of time to reflect on how messed up your situation really is.[or][line break][variable custom style]I'm a floating blimp. How disgraceful![roman type][line break][or][line break][variable custom style]How long is it going to take for me to deflate?[roman type][line break][or][line break][variable custom style]What sort of [if the bimbo of the player < 12]fucked up [end if]person thinks of putting something like this into a game?!?![roman type][line break][or][line break][variable custom style]This is a strangely calming experience...[roman type][line break][or][line break][variable custom style]I think I'm slowly getting heavier again![roman type][line break][in random order]";



To compute stat healing:
	if temp_str_dam > 0 and a random number between 1 and 10 > temp_str_dam:
		decrease temp_str_dam by 1;
		say "[bold type]You feel as though your strength has recovered slightly![roman type]";
	if temp_dex_dam > 0 and a random number between 1 and 10 > temp_dex_dam:
		decrease temp_dex_dam by 1;
		say "[bold type]You feel as though your movements are more fluid again![roman type]";
	if temp_int_dam > 0 and a random number between 1 and 10 > temp_int_dam:
		decrease temp_int_dam by 1;
		say "[bold type]You feel as though your mind is slightly clearer![roman type]";




A time based rule (this is the dressup rule):
	if playerRegion is not school:
		if a random number between 1 and 100 < 2 + unlucky:
			if debugmode > 0, say "DRESSUP CHECK. ";
			let dressup-clothing be nothing;
			repeat with C running through worn cursed blandness clothing:
				if C is overdress or C is corset or C is skirt or C is stockings:
					if C is plentiful and a random number between 1 and 3 is 1, now dressup-clothing is C;
			repeat with C running through worn dressup clothing:
				now dressup-clothing is C;
			let C be nothing;
			if dressup-clothing is clothing:
				let R be a random number between 1 and 4;
				let E be a random off-stage unique evening dress;
				let P be a random off-stage plentiful crotchless-panties;
				let B be a random off-stage plentiful cupless bra;
				let S be a random off-stage sequins belt;
				if diaper quest is 1:
					now E is a random off-stage onesie;
					now P is a random off-stage diaper;
					now B is a random off-stage baby booties;
					now S is a random off-stage woven stockings;
				if P is actually summonable and R is 1:
					if diaper quest is 1, say "[bold type]Suddenly, a big diaper appears on you![roman type][line break]";
					otherwise say "[bold type]A pair of crotchless panties appear on you!  How useless![roman type][line break]";
					now C is P;
				otherwise if B is actually summonable and R is 2:
					if diaper quest is 1, say "[bold type]A pair of baby booties appear on your feet![roman type][line break]";
					otherwise say "[bold type]A cupless bra appears on you!  How pointless![roman type][line break]";
					now C is B;
					now C is absorption;
				otherwise if E is actually summonable and R is 3:
					if diaper quest is 1, say "[bold type]A big cosy onesie suddenly appears around you![roman type][line break]";
					otherwise say "[spawning flavour of E]";
					now C is E;
				otherwise if S is actually summonable and R is 4:
					if diaper quest is 1, say "[bold type]A pair of woolly, frilly stockings suddenly appear on you![roman type][line break]";
					otherwise say "[bold type]A small belt with strips of sequins hanging off it appears around you!  That doesn't seem very useful.[roman type][line break]";
					now C is S;
				unless C is nothing:
					summon C cursed with quest;
					if dressup-clothing is blandness or dressup-clothing is unidentified:
						say "Your [ShortDesc of dressup-clothing] seems to quickly vibrate, as if it is responsible for this!";
						now dressup-clothing is dressup;
						now dressup-clothing is identified;
						say "It must be a [ShortDesc of dressup-clothing] of dressup!";
					otherwise:
						say "Once again your [ShortDesc of dressup-clothing] vibrates quickly, as if proud of its accomplishment.";
			otherwise if debugmode > 0:
				say "No dressup eligible clothing found.";
		otherwise if there is a worn possession clothing and a random number between 1 and 40 < 2 + unlucky + the number of worn possession clothing:
			let molested be 0;
			let H be a random worn possession clothing;[TODO: breast covering]
			if H is crotch covering:
				if the player is female:
					if vagina is not actually occupied and (asshole is actually occupied or a random number between 1 and 3 > 1):
						say "You shriek as a pair [one of]thick, manly[or]thin, feminine[or]dexterous, long-nailed[or][if mythical creature fetish is 1]bestial, clawed[otherwise]fluid, warmth-less[end if][at random] fingers plunge into your [vagina], unnaturally distorting your [ShortDesc of H] as it casts an ominous glow over your inner thighs. Shivers run up your spine as the clammy digits stroke your inner walls, unceremoniously violating you[if the number of monsters in the location of the player > 0] in full view of [NameDesc of a random monster in the location of the player][otherwise] without so much as a second's warning[end if]. You can only claw helplessly at the possessed [clothing-material of H] until it stops, pleasure, humiliation, and raw [if the bimbo of the player < 14]terror[otherwise]exhilaration[end if] bubbling up from your loins at having your clothes treat you [one of]like nothing but a toy to be used[or]like their personal sex guinea pig[or]like nothing but a simple plaything[at random].";
						ruin vagina;
						now molested is 1;
				otherwise:
					if the size of penis > a random number between 3 and 12:
						say "You yelp as a [one of]rough, manly[or]soft, feminine[or][if mythical creature fetish is 1]bestial, clawed[otherwise]cold, warmth-less[end if][at random] hand wraps itself around your [ShortDesc of penis], unnaturally distorting your [ShortDesc of H] as it casts an ominous glow over your inner thighs. Shivers run up your spine as the clammy fingers firmly pump you from tip to shaft, as if trying to literally feed your junk back into your body. You can only claw helplessly at the possessed [clothing-material of H] until it stops, pleasure, humiliation, and raw [if the bimbo of the player < 14]terror[otherwise]exhilaration[end if] bubbling up from your loins at having your clothes treat you [one of]like nothing but a toy to be used[or]like their personal sex guinea pig[or]like nothing but a simple plaything[at random].";
						PenisDown 1;
						stimulate vagina from H;
						now molested is 1;
				if molested is 0 and asshole is not actually occupied:
					say "You start and look over your shoulder as something cool and wet prods your sphincter. Your [ShortDesc of H] distort unnaturally, casting an ominous glow over your inner thighs as a dexterous tongue pushes through your anal ring. It mercilessly probes your sensitive little hole, knowing you can only claw helplessly at the possessed [clothing-material of H] until [italic type]it[roman type] decides to stop. Pleasure, [if the bimbo of the player < 14]terror[otherwise]exhilaration[end if], and humiliation at being tortured by your own clothing roil inside of you until it finally wiggles out of your [asshole].";
					stimulate asshole from H;
			otherwise:
				let R be a random number between 1 and 3;
				let P be face;
				if H is belly covering and R is 1, let P be belly;
				otherwise increase R by 1;
				if H is not chestless and R is 2, let P be breasts;
				otherwise increase R by 1;
				unless H is no-crotch and R is 3, let P be hips;
				say "Your [ShortDesc of H] lights up as unseen hands grab your [ShortDesc of P], distorting the [clothing-material of H] material unnaturally as they mischievously grope the tender skin underneath. [one of]You're being molested by your own clothing![or]You can't help feeling exposed knowing your own clothes can mess with you any time![at random]";
				if P is breasts, stimulate breasts.





shunk-happened is a number that varies.

A time based rule (this is the trap time rule):
	now shunk-happened is 0;
	repeat with T running through traps:
		if T is vines:
			if the TrapNo of T < 0:
				increase the TrapNo of T by time-seconds;
				if the TrapNo of T > 0, now the TrapNo of T is 0;
			otherwise if T is in WoodsBoss01 and the TrapNo of T is 0 and T is not grabbing the player and T is not penetrating a fuckhole:
				if a random number from 1 to 25 is 1, remove T from play; [Vines will slowly disappear from vines boss room.]
		if T is tripwire trap:
			if the memory of T > 0, decrease the memory of T by 1;
		if the reset-timer of T > 0:
			if T is not expired and T is in the location of the player, compute turn trap effect of T;
			if T is not expired, compute time decay of T;
			compute reset cooldown of T.

To compute turn trap effect of (T - a trap):
	do nothing.

To compute time decay of (T - a trap):
	do nothing.

To compute reset cooldown of (T - a trap):
	if the reset-timer of T <= time-seconds:
		now the reset-timer of T is 0;
		unless T is penetrating a fuckhole:
			now T is untriggered;
			now T is not expired;
			now T is not triggered;
			now T is unrevealed;
			if T is click:
				repeat with C running through containers in the location of T:
					now C is closed;
					now C is emptied;
			if T is in the location of the player and shunk-happened is 0:
				say "There is a loud 'shunk' sound as the [T] in this room resets[if T is click]. All the containers in the room shut themselves automatically![otherwise].[end if]";
				now shunk-happened is 1;
		otherwise:
			now the reset-timer of T is 1;
	otherwise:
		decrease the reset-timer of T by time-seconds.
		
		



[!<mindflayerQuest:Integer>*

REQUIRES COMMENTING

*!]
mindflayer quest is a number that varies. mindflayer quest is 0.


[!<mindflayerSpawned:Integer>*

REQUIRES COMMENTING

*!]
mindflayer spawned is a number that varies. mindflayer spawned is 0.



[!<Player>@<domination:Integer>*

REQUIRES COMMENTING

*!]
The player has a number called domination. The domination of the player is usually 0.


A time based rule (this is the mindflayer spawns rule):
	if mindflayer spawned is 0 and diaper quest is 0 and the remainder after dividing time-earnings by 417 < time-seconds:
		let M be a random off-stage mind flayer;
		let R be (a random number between 1 and 5) + (a random number between 2 and 6);
		if debugmode > 0, say "[input-style]Mindflayer spawn check: intelligence gained ([the raw intelligence of the player - the starting intelligence of the player]) | ([R].5) 2d5+1.5[roman type][line break]";
		if R < the raw intelligence of the player - the starting intelligence of the player:
			set up M;
			now mindflayer spawned is 1;
			say "You feel a strange pressure in your mind for just a moment[if debugmode > 0] (The mindflayer has just been spawned!)[line break][otherwise]. It feels like something new and terrifying has arrived...[end if]";
			if playerRegion is Woods:
				summon M in the woods;
			otherwise if playerRegion is Mansion:
				summon M in the mansion;
			otherwise if playerRegion is Hotel:
				summon M in the hotel;
			otherwise:
				summon M in the dungeon.

A later time based rule (this is the mindflayer quest rule):
	if mindflayer spawned is 1 and mindflayer quest is 0:
		say "You hear a strange tapping sound, and suddenly a voice rings out as though from a PA system! [line break][second custom style]'Testing, testing. Is this thing on? Hello, testers! It appears a monster from a not-yet-implemented area has inadvertently been introduced into the live test area. We[']re not really sure how this happened, but this does highlight the importance of your job as testers. We don[']t seem to be able to despawn it ourselves, if one of you could be a dear and destroy it so we can analyse its data we would really appreciate it.[roman type][line break]";
		now mindflayer quest is 1;
	if mindflayer quest is 1 and mind flayer is off-stage:
		say "The PA system comes alive again. [line break][second custom style]'Oh wonderful. Nintendolls thanks you for your contribution to the completion of this testing phase! The standard bug bounty has been credited to your winnings, how lucky for you! Oh, and if it dropped anything feel free to keep it, it[']s an item from later in the game so it[']s probably pretty powerful.'[roman type][line break]";
		now mindflayer quest is 2.


A time based rule (this is the mindflayer domination rule):
	if the domination of the player > 0:[Revised Mind Flayer Domination Attack, starts by checking for domination at all]
		if domination-time - (a random number between the domination of the player and 40) < 0:
			decrease the domination of the player by 1;
			now domination-time is 30;
			if (a random number between 1 and 3 < 3) and (the arousal of the player < maximum arousal / 2):
				say "Swirling images of sex begin to fill your mind, and you hear a voice in your head! [line break][first custom style]'Your holes burn to be filled.'[roman type][line break]You are so aroused you could burst!";
				now the arousal of the player is maximum arousal;
			otherwise if the location of the player is smoky and the largeness of breasts < max breast size:
				say "You see images of yourself with incredible breasts, and you hear a voice in your head! [line break][first custom style]'Breathe deep and become the [whore] you know yourself to be.'[roman type][line break]You fall to your knees!";
				try silently kneeling;
			otherwise if (a random number between 1 and 3 < 3) and (the raw oral sex addiction of the player < 10):
				say "Images of erect penises fill your mind, and you hear a voice in your head! [line break][first custom style]'You hunger to taste the prize inside of us.'[roman type][line break]You feel a sudden strange longing to fill your mouth with [manly-penis]!";
				OralSexAddictUp 1;
			otherwise if (a random number between 1 and 2 < 3)	and (the humiliation of the player < 40000):
				say "You see images of yourself mindlessly complying as men use every part of your body, and you hear a voice in your head! [line break][first custom style]'A man chooses, an object obeys.'[roman type][line break]You feel less and less like a person!";
				humiliate 400;
			otherwise:
				say "Images of erect penises fill your mind, and you hear a voice in your head! [line break][first custom style]'Put us in you and revel in serving us.'[roman type][line break]You feel a sudden strange longing to fill your holes with [manly-penis]!";
				SexAddictUp 1;
		otherwise:
			decrease domination-time by 1.
				[Digesting souls- preliminary version definitely way too strong but it has to be in the game to balance it]




[
LATEX TRANSFORMATION GUIDELINES:

1+: Virus is at work
2+: Decreased weight
3+: Openness fixed at 10
4+: Orifice soreness no longer impacts: unable to feel pleasure or orgasm
5+: No need to drink or pee, one-way valves
6+: Further decreased weight, body soreness no longer exists, no milk in breasts
7+: not able to speak, makeup max
8: Transformation complete, lose fingers, only able to carry one item.
]

[!<ComputeLatexTransformation>+

REQUIRES COMMENTING

+!]
To compute latex transformation:
	if the latex-transformation of the player > 0 and the latex-transformation of the player < 8:
		increase the latex-transformation of the player by 1;
		now the alert of the player is 1;
		say "[bold type]";
		if the latex-transformation of the player is 2:
			say "Some of the detail in your skin is [one of]definitely[or]once again[stopping] fading. You could also swear that you feel yourself getting slowly less and less heavy...";
		if the latex-transformation of the player is 3:
			say "Your skin becomes more and more smooth and featureless by the minute. You suddenly realise your [if the player is male][asshole] feels[otherwise][vagina] and [asshole] feel[end if] more... relaxed. Putting a hand back there, you realise [if the player is male]it is[otherwise]they are both[end if] extremely gaped and hanging open, almost like a sex doll. Even weirder, it doesn't feel uncomfortable at all. It's almost as if your [if the player is male]entrance is[otherwise]entrances are[end if] now completely numb...";
			appropriate-cutscene-display figure of latex curse 7;
			now the openness of asshole is 10;
			if the player is female, now the openness of vagina is 10;
		if the latex-transformation of the player is 4:
			say "Your skin is now completely smooth and featureless - it doesn't look real but more like something made out of plastic or in a cartoon. ";
			appropriate-cutscene-display figure of latex curse 1;
			say "Your [if the player is male][asshole] feels[otherwise][vagina] and [asshole] feel[end if] completely rubber all the way inside - whilst you can still feel things, you probably can no longer get sore.";
			now the soreness of asshole is 0;
			now the soreness of vagina is 0;
			now the tolerated of asshole is 0;
			now the tolerated of vagina is 0;
		if the latex-transformation of the player is 5:
			say "Your skin is starting to feel rubbery... is there even any flesh under there any more?! As you're thinking about this, you feel your throat and mouth dry up. But it hardly feels weird, and also you somehow immediately know, you no longer need to keep hydrated. Deep within your body, the tubes connecting to your orifices somehow... close up. It's almost as if they have valves now...";
			appropriate-cutscene-display figure of latex curse 8;
			now the bladder of the player is 0;
			now the delayed bladder of the player is 0;
		if the latex-transformation of the player is 6:
			say "Your skin is definitely made of some kind of rubbery latex. You can tell that you don't have any kind of flesh under there any more because you feel extremely light and you're pretty sure you can no longer bruise. You're more scared of being over-inflated...";
			appropriate-cutscene-display figure of latex curse 9;
			now the body soreness of the player is 0;
			now the milk volume of breasts is 0;
		if the latex-transformation of the player is 7:
			say "Your mouth rounds out into a perfect O shape and you realise you can no longer control or close it. You try to move your tongue but you realise that's gone too. You can no longer form proper words but just make a girly moaning sound. Your makeup is now permanently doll-like.";
			appropriate-cutscene-display figure of latex curse 2;
			FaceUp 3;
			LipsUp 3;
		if the latex-transformation of the player is 8:
			say "You feel yourself stop breathing and your heart stop beating, but you realise you no longer need either, you don't have flesh or blood or anything inside you, just tubes and air. Your hands and feet lose their digits and their shape and just turn into rounded ends, as if you were wearing fully rounded mittens. [if the number of things held by the player > 0]You drop everything that you are carrying. It seems unlikely that you'll be able to carry more than one thing carefully in between your two doll stumps now.[end if][line break]You have completely transformed into a latex sex doll.";
			appropriate-cutscene-display figure of latex curse 3;
			repeat with H running through things carried by the player:
				now H is in the location of the player;
			repeat with C running through worn clothing:
				if C is fake-nails, only destroy C;
				if C is bracelet or C is wrist bond:
					say "Your [ShortDesc of C] fall off your wrists and onto the ground.";
					now C is in the location of the player;
		say "[roman type][line break]".


[!<TheSexDollsHaveNoVoiceRule>+

REQUIRES COMMENTING

+!]
This is the sex dolls have no voice rule:
	if the latex-transformation of the player > 6, rule fails.
The sex dolls have no voice rule is listed in the player voice rules.

[How many seconds pass before latex transformation progresses]
To decide which number is latex transformation rate:
	let N be 264;
	if dolly tattoo is worn, decrease N by 69;
	decide on N.




Periodic Effects ends here.

