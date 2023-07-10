Periodic Effects by Every Turn begins here.

A time based rule (this is the clothing drying rule):
	repeat with C running through in-play clothing:
		compute drying of C;

A time based rule (this is the hair drying rule):
	compute hair drying;

An all time based rule (this is the compute clothing rule):
	repeat with C running through worn wearthing:
		if C is clothing:
			if the stolen-strength of C > 0:
				say "You feel your stolen strength returning to you from [NameDesc of C].";
				StrengthUp the stolen-strength of C;
				now the stolen-strength of C is 0;
			if C is exposure and C is cursed:
				let X be the coverer of C;
				if X is removable clothing:
					say "[bold type]You feel your [C][bold type] fire cursed energy into your [X][bold type], destroying it![roman type][line break]";
					destroy X;
			if diaper quest is 0:
				if C is expansion and the player is not in a predicament room, compute periodic expansion effect of C;
				if C is rejuvenation and the player is not in a predicament room, compute periodic rejuvenation effect of C;
				if C is augmentation and the player is not in a predicament room, compute periodic augmentation effect of C;
		if playerRegion is school, compute school periodic effect of C;
		otherwise compute periodic effect of C.

To compute periodic expansion effect of (C - a clothing):
	do nothing.

To compute periodic rejuvenation effect of (C - a clothing):
	do nothing.

To compute periodic augmentation effect of (C - a clothing):
	increase the augmentation-grow-charge of C by 1;
	if the augmentation-grow-charge of C > the augmentation-charging-time of C:
		if debugmode > 0, say "Debug: augmentation triggered.";
		now the augmentation-grow-charge of C is 0;
		if C is breast covering:
			if the player is not top heavy and the largeness of breasts < the max size of C:
				say "[bold type]Your [C] [bold type]sends a wave of energy down into your chest. [roman type]";
				if artificial enhancements fetish > 0:
					say "You feel [if the silicone volume of breasts is 0]a weird, localised expansion in your [ShortDesc of breasts][otherwise]your [ShortDesc of breasts] swell up, distinctly rounder[end if]!";
					BustImplantsUp 1;
				otherwise if inflation fetish > 0:
					say "Your [ShortDesc of breasts] inflate!";
					BustInflate 1;
				otherwise:
					say "Your [ShortDesc of breasts] [one of]swell[or]expand[or]grow[at random]!";
					BustUp 1;
		otherwise if C is crotch covering: [ass covering would only check the ass]
			if the player is not bottom heavy:
				say "[bold type]Your [C] [bold type]sends a wave of energy down into your buttocks. [roman type]";
				if artificial enhancements fetish > 0:
					say "You feel [if the silicone volume of hips is 0]parts of your [AssDesc] burn and swell, like something was just inserted in both cheeks[otherwise] your [AssDesc] swell larger as something inside there, [one of]expands[or]grows[at random][end if]!";
					AssImplantsUp 1;
				otherwise if inflation fetish > 0:
					say "You feel your [AssDesc] inflate!";
					AssInflate 1;
				otherwise:
					say "You feel your [AssDesc] [one of]plump up[or]add a little mass[or]get a bit more junk in the trunk[at random]!";
					AssSwell 1;
		otherwise:
			[This should only happen if someone marks other clothing as augmentation and forgets to add the effects here.]
			say "[one of](Oops: this shouldn't happen. Please report illegal augmentation clothing item [C].)[or][stopping]".

To compute periodic draining effect of (C - a clothing):
	increase the draining-charge of C by 1;
	if the draining-charge of C + (game difficulty * 10) > 75:
		now the draining-charge of C is 0;
		if C is strength-influencing:
			say "[bold type][BigNameDesc of C] drains away more of your strength![roman type][line break]";
			StrengthDown 1;
		otherwise if C is dexterity-influencing:
			say "[bold type][BigNameDesc of C] drains away more of your dexterity![roman type][line break]";
			DexDown 1;
		otherwise if C is intelligence-influencing:
			say "[bold type][BigNameDesc of C] drains away more of your intelligence![roman type][line break]";
			IntDown 1;
		otherwise:
			say "[bold type][BigNameDesc of C] drains away more of your stats![roman type][line break]";
			RandomStatDown 1.

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

To compute periodic effects with earnings (local-earnings - a number) and seconds (local-seconds - a number):
	[If enough experience has been gained, level up heel skill]
	if the heel time of the player > minHeelXP and the player is upright, HeelUp 1;
	[Real world changes]
	if the remainder after dividing local-earnings by (750 / (fast breast expansion + 1)) < local-seconds:
		if extreme proportions fetish is 1 or the remainder after dividing local-earnings by (1500 / (fast breast expansion + 1)) < local-seconds:
			if the flesh volume of breasts + the silicone volume of breasts > the real flesh volume of breasts:
				repeat with N running from 1 to 2:
					if the flesh volume of breasts + the silicone volume of breasts > the real flesh volume of breasts, increase the real flesh volume of breasts by 1;
				set real breast size;
			if the thickness of hips > the real thickness of hips, increase the real thickness of hips by 1;
		if shrink TG >= 3 and the size of penis <= min penis size and the player is sexed male:
			if tg-tracking > 0 or shrink TG is 4:
				say DefaultSexChangeFlav;
				sexchange the player;
			otherwise:
				increase tg-tracking by 1;
		otherwise if the player is sexed male and the size of penis < the real size of penis and the real size of penis > min penis size:
			decrease the real size of penis by 1;
		if the raw largeness of hair > the real largeness of hair, increase the real largeness of hair by 1;
		if the openness of asshole > the real openness of asshole and ungape is 0, increase the real openness of asshole by 1;
		if the openness of vagina > the real openness of vagina and ungape is 0, increase the real openness of vagina by 1;
		if the latex-transformation of the player <= 2 and ungape is 0:
			if the openness of asshole > the real openness of asshole and (the openness of asshole - the real openness of asshole) >= (the openness of vagina - the real openness of vagina) and gape-gloves is not worn:
				say "Your [asshole] regains a little tightness.";
				AssClose 1;
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
	if the remainder after dividing local-earnings by 1425 < local-seconds and the player is not in a predicament room:
		if diaper focus >= 1:
			if wetting-valued >= 3, diaperreward;
		otherwise if the player is possessing a vagina and the vaginalvirgin of the player is 1 and (virginity-valued is 1 or flower hairclip is worn):
			virginreward;
	[Virgin Curse]
	if the remainder after dividing local-earnings by 297 < local-seconds and the player is possessing a penis and the penetrativevirgin of the player is 1 and virgincursed > 0 and transGender is 0 and the player is not in a predicament room:
		virginpunish;
	[Various periodic decays]
	if playerRegion is not school:
		if the remainder after dividing local-earnings by 611 < local-seconds:
			compute hair colour decay;
		if the remainder after dividing local-earnings by 49 < local-seconds:
			compute orifice soreness decay;
		if the remainder after dividing local-earnings by 676 < local-seconds:
			compute makeup decay;
		if the remainder after dividing local-earnings by 211 < local-seconds:
			compute magic regeneration;
		if the remainder after dividing local-earnings by 49 < local-seconds and temp_str_dam + temp_dex_dam + temp_int_dam > 0:
			compute stat healing;
	if playerRegion is not school or the player is flying:
		let inflation-decay-rate be 29;
		if the player is flying, now inflation-decay-rate is 9;
		if the remainder after dividing local-earnings by inflation-decay-rate < local-seconds:
			compute inflation decay;
	[Latex Transformation]
	if the remainder after dividing local-earnings by latex transformation rate < local-seconds:
		compute latex transformation;
	[Spawning and buffing of weak enemies]
	if the remainder after dividing local-earnings by 313 < local-seconds:
		let P be a random alive prison guard;
		if (ex-princess is caged and skeleton key is not in-play) or there is worn locked clothing:
			if P is prison guard and there is worn locked clothing:
				decrease the sentence of P by 2;
			otherwise if P is not prison guard:
				let M be a random off-stage prison guard;
				if M is monster:
					set up M;
					summon M in the dungeon;
		if the number of alive golem is 0 and diaper quest is 0 and playerRegion is not school:
			let M be a random off-stage golem;
			let S be the thickness of hips + the largeness of breasts;
			let SR be a random number between 1 and time-tracking;
			if time-tracking < 1000:
				decrease time-tracking by 20;
				if debuginfo > 0, say "[input-style]Golem spawn prevention check: body shape ([S]); time ticker ([time-tracking])[if time-tracking > 200]; time ticker not yet below 200 so automatic success[otherwise] ==> d[time-tracking] = [SR] | ([S].5) body shape[end if][roman type][line break]";
			if time-tracking <= 200:
				if SR <= S:[less likely the larger the larger the player's body has gotten.]
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
					say "Some speakers come to life, and you hear an announcement![line break][second custom style]'Hey there, [NameBimbo]! Are you having fun? See, we're looking at the data here and [if S < 10]based on your body shape stats [end if]it seems like you're taking this game very seriously. In that case, it shouldn't be a problem if we spawn in a new threat. Don't worry, I'm sure you'll figure things out...'[roman type][line break]";
					now time-tracking is 1000;
				otherwise:
					decrease time-tracking by 20.

Part 2 - Specific Procedures

To compute hair colour decay:
	let R be 1;
	if bright-hair tattoo is worn or diaper quest is 1 or playerRegion is school, now R is 0; [This tattoo stops hair from decaying]
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

To compute makeup decay:
	if a random number between 0 and diaper quest is 0 and permanent makeup is 0 and playerRegion is not school and the latex-transformation of the player < 7:
		if the make-up of face > 1:
			say "Your make-up partially fades.";
			FaceDown 1;
		otherwise if a random number between 1 and 5 > 3:
			say "Your make-up fades away.";
			FaceDown 1.

To compute orifice soreness decay:
	if asshole is not actually occupied:
		if the player is not possessing a vagina:
			heal asshole times 1;
		otherwise:
			if the soreness of asshole > the soreness of vagina or vagina is actually occupied:
				heal asshole times 1;
			otherwise:
				heal vagina times 1.

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
	if temp_str_dam > 0:
		decrease temp_str_dam by 1;
		say "[bold type]You feel as though your strength has recovered slightly![roman type][line break]";
	if temp_dex_dam > 0:
		decrease temp_dex_dam by 1;
		say "[bold type]You feel as though your movements are more fluid again![roman type][line break]";
	if temp_int_dam > 0:
		decrease temp_int_dam by 1;
		say "[bold type]You feel as though your mind is slightly clearer![roman type][line break]";

A later time based rule (this is the impermanence-counter rule):
	repeat with C running through on-stage impermanence clothing:
		increase the impermanence-counter of C by 1;
		if the impermanence-counter of C > a random number between (combatSpeed * 8) and (combatSpeed * 20):
			if C is not held or the player is prone or the player is not in danger: [never disappears in the middle of combat that's going well]
				unless C is held by ex-princess or (C is in the location of the player and there is a tentacle monster in the location of the player): [doesn't disappear in the specific fight scene with tentacle monsters where they throw your wand to the other corner of the room]
					if C is held or C is in the location of the player, say "[bold type]Your [ShortDesc of C] fades away, vanishing into thin air![roman type][line break]";
					now C is blandness;
					now the impermanence-counter of C is 0;
					only destroy C.


A time based rule (this is the compute jiggles rule):
	if a random number between 2 and (300 / (1 + unlucky)) <= the square root of the largeness of breasts:
		if debugmode > 0, say "AUDIBLE CHECK.";
		let B be a random worn bra;
		unless there is worn audible jiggles clothing or (B is bra and the support of B >= 2):
			let AJC be nothing;
			repeat with C running through worn cursed blandness ridiculously low cut or higher clothing: [ridiculously low cut or higher clothing is essentially any clothing that's not chestless or fully exposing]
				if debugmode > 0, say "Considering [C]...";
				if (C is plentiful or C is rare) and a random number between 1 and 5 > 3, now AJC is C;
				if debugmode > 0 and AJC is C, say "Chose [C]!";
			if AJC is clothing:
				now AJC is audible jiggles;
				say "[bold type]Your [ShortDesc of AJC] boinks and pings as your [BreastDesc] move! [roman type]Some sort of cursed magic must have manifested itself...".

An all time based rule (this is the tittyfuck jiggles rule):
	if there is a male monster penetrating breasts, compute bsound.

To compute bsound:
	if the largeness of breasts > 3:
		repeat with C running through worn audible jiggles clothing:
			unless C is bsounding:
				say "[one of]Your [ShortDesc of C] accompanies the bounces of your [BreastDesc] with boings and wobbles.[or]Your [ShortDesc of C] is ensuring that every [BreastBounceDesc] of your [BreastDesc] is accompanied with silly sound effects.[or]Your [ShortDesc of C] continues to emit a cringeworthy caricature of the sound of your [BreastDesc] wobbling.[or]You are unable to prevent your [ShortDesc of C] from announcing each bounce of your [BreastDesc]![or]The clap of your [BreastDesc] keeps alerting everyone to your location![or]The magical sound-based emphasis on the movement of your [BreastDesc] is signalling to everyone exactly where you are![or]Artificial sounds created by your [ShortDesc of C] make it sound like your [BreastDesc] are jiggling unnaturally loudly![or][if the player is shameless]Your [C] continues[otherwise]You wish you could stop your [C] from[end if] detailing every sway of your breasts.[or]You [if the player is shameless]can't help but smile[otherwise]cringe[end if] as your [ShortDesc of C] continues to make ridiculous noises with every movement of your [BreastDesc].[or]Your [ShortDesc of C] makes your [BreastDesc] go BOOOOING![or]A loud cartoonish bouncing sound comes from your [ShortDesc of C].[or][BigNameDesc of C] makes bouncing noises echo out from your [BreastDesc].[or]The uneven reverberations of the boob bouncing sounds generated by your [ShortDesc of C] are impossible to ignore.[or]The painfully awkward parody of the sounds of your [BreastDesc] bouncing fills the air.[or]Fake wobbling sounds follow you around, thanks to your [C].[or]Exaggerated jiggling noises bounce and echo throughout the [playerRegion].[or]A particularly loud BOING from your [C] makes you wince[if C is not disgraced] with shame[end if].[then at random]"; [this is going to happen every turn for upright walking so we need lots of variation to prevent it getting stale]
				now C is bsounding;
				now slow-move-this-turn is 1.

Report resisting:
	compute bsound.

Report submitting:
	if a random number between 1 and 3 is 1, compute bsound.

Report begging:
	if a random number between 1 and 3 is 1, compute bsound.

Report jumping:
	compute bsound.

A time based rule (this is the dressup rule):
	let N be 2 + unlucky;
	if pink-and-blue translucent fetish dress is worn, increase N by 4;
	if a random number between 1 and 100 < N:
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
				otherwise say "[bold type]A pair of crotchless panties appear on you! How useless![roman type][line break]";
				now C is P;
			otherwise if B is actually summonable and R is 2:
				if diaper quest is 1, say "[bold type]A pair of baby booties appear on your feet![roman type][line break]";
				otherwise say "[bold type]A cupless bra appears on you! How pointless![roman type][line break]";
				now C is B;
				now C is absorption;
			otherwise if E is actually summonable and R is 3:
				if diaper quest is 1, say "[bold type]A big cosy onesie suddenly appears around you![roman type][line break]";
				otherwise say "[spawning flavour of E]";
				now C is E;
			otherwise if S is actually summonable and R is 4:
				if diaper quest is 1, say "[bold type]A pair of woolly, frilly stockings suddenly appear on you![roman type][line break]";
				otherwise say "[bold type]A small belt with strips of sequins hanging off it appears around you! That doesn't seem very useful.[roman type][line break]";
				now C is S;
			unless C is nothing:
				summon C cursed with quest;
				if dressup-clothing is blandness or dressup-clothing is unidentified:
					say "Your [ShortDesc of dressup-clothing] [if pink-and-blue translucent fetish dress is worn]and [ShortDesc of pink-and-blue translucent fetish dress] seem[otherwise]seems[end if] to quickly vibrate, as if responsible for this!";
					now dressup-clothing is dressup;
					now dressup-clothing is identified;
					say "It must be a [ShortDesc of dressup-clothing] of dressup!";
				otherwise:
					say "Once again your [ShortDesc of dressup-clothing] [if pink-and-blue translucent fetish dress is worn]and [ShortDesc of pink-and-blue translucent fetish dress] vibrate[otherwise]vibrates[end if] quickly, as if proud.";
		otherwise if debugmode > 0:
			say "No dressup eligible clothing found.";
	otherwise if there is a worn possession clothing and a random number between 1 and 40 < N + the number of worn possession clothing:
		let H be a random worn possession clothing;
		let LB be a list of body parts;
		if H is crotch-in-place and (H is short or longer or H is crotch covering):
			if asshole is not actually occupied, add asshole to LB;
			if the player is possessing a vagina and vagina is not actually occupied, add vagina to LB;
			if the player is possessing a penis, add penis to LB;
		if H is breast covering and H is top-placed, add breasts to LB;
		if the number of entries in LB > 0:
			let R be a random number between 1 and the number of entries in LB;
			let F be entry 1 in LB;
			if F is vagina:
				say "[bold type]You shriek as a pair of [one of]thick, manly[or]thin, feminine[or]dexterous, long-nailed[or][if mythical creature fetish is 1]bestial, clawed[otherwise]fluid, warmth-less[end if][at random] fingers plunge into your [vagina], unnaturally distorting your [ShortDesc of H] as it casts an ominous glow over your inner thighs. [roman type]Shivers run up your spine as the clammy digits stroke your inner walls, unceremoniously violating you[if the number of monsters in the location of the player > 0] in full view of [NameDesc of a random monster in the location of the player][otherwise] without so much as a second's warning[end if]. You can only claw helplessly at the possessed [clothing-material of H] material until it stops, pleasure, humiliation, and raw [if the bimbo of the player < 14]terror[otherwise]exhilaration[end if] bubbling up from your loins at having your clothes treat you [one of]as nothing but a toy to be used[or]like their personal sex guinea pig[or]as nothing but a simple plaything[at random].";
				ruin vagina;
			otherwise if F is penis:
				say "[bold type]You yelp as a [one of]rough, manly[or]soft, feminine[or][if mythical creature fetish is 1]bestial, clawed[otherwise]cold, warmth-less[end if][at random] hand wraps itself around your [ShortDesc of penis], unnaturally distorting your [ShortDesc of H] as it casts an ominous glow over your inner thighs. [roman type]Shivers run up your spine as the clammy fingers firmly pump you from tip to shaft, as if trying to literally feed your junk back into your body. You can only claw helplessly at the possessed [clothing-material of H] material until it stops, pleasure, humiliation, and raw [if the bimbo of the player < 14]terror[otherwise]exhilaration[end if] bubbling up from your loins at having your clothes treat you [one of]as nothing but a toy to be used[or]like their personal sex guinea pig[or]as nothing but a simple plaything[at random].";
				PenisDown 1;
				stimulate penis from H;
			otherwise if F is asshole:
				say "[bold type]You start and look over your shoulder as something cool and wet prods your sphincter. [roman type]Your [ShortDesc of H] distort unnaturally, casting an ominous glow over your inner thighs as a dexterous tongue pushes through your anal ring. It mercilessly probes your sensitive little hole, knowing you can only claw helplessly at the possessed [clothing-material of H] material until [italic type]it[roman type] decides to stop. Pleasure, [if the bimbo of the player < 14]terror[otherwise]exhilaration[end if], and humiliation at being tortured by your own clothing roil inside of you until it finally wiggles out of your [asshole].";
				stimulate asshole from H;
			otherwise if F is breasts:
				say "[bold type]You yelp in surprise as you feel two hands groping at your [BreastDesc]. Looking down, you see that your chest is being squeezed by your own [ShortDesc of H]! [roman type]Two subtle handprints can be seen within the [clothing-material of H] material itself, first kneading your flesh, and then focusing in to roll and pinch your nipples. There's nothing you can do but endure it as your possessed garment turns your body into its personal plaything.";
				stimulate breasts from H;
		otherwise if H is equippable:
			let R be a random number between 1 and 2;
			let P be vagina;
			if R is 1, let P be breasts;
			if P is vagina and the player is not possessing a vagina, now P is penis;
			say "[bold type]Your [ShortDesc of H] lights up as it moves of its own accord, pushing your hand holding it down towards your [ShortDesc of P]. [roman type]Soon, it is shoving your wrist, and the base of your palm, into your [ShortDesc of P], grinding it around and around as sensually as it can.[line break][variable custom style]H-hey![roman type][line break]Not only are you being molested by your own [if H is slap ready or H is zap ready]weapon[otherwise]item[end if], but it's preventing you from using your hands normally!";
			stimulate P from arms;
			if another-turn is 0:
				now another-turn is 1;
				now another-turn-flavour is "You wrestle back control of [NameDesc of H].";
		otherwise:
			let R be a random number between 1 and 3;
			let P be face;
			if H is belly covering and R is 1, let P be belly;
			if H is crotch covering and R is 2, let P be hips;
			say "[bold type]Your [ShortDesc of H] lights up as unseen hands grab your [variable P], distorting the [clothing-material of H] material unnaturally as they mischievously grope the tender skin underneath. [roman type][one of]You're being molested by your own clothing![or]You can't help feeling strangely, intimately exposed to your clothes themselves, now you know they can mess with you any time![at random]";
			stimulate P from H.

[If the player doesn't properly fit in their clothes, there is a chance of the clothing becoming displaced without input from the player.]
[A time based rule (this is the wardrobe malfunction rule):
	let displaceDone be 0;
	let K be a random worn actually displacable knickers;
	if K is clothing:
		let Kd be the size of penis - the penis-capacity of K;[If this number is above 0, then the player's penis can possibly pop out]
		if penis is penis-erect, increase Kd by Kd;[Malfunctions are twice as likely when you have a boner]
		if Kd > 0 and vagina is not listed in the armUses of arms and a random number between 1 and (80 - (Kd * 10)) < 2 + unlucky:
			now displaceDone is 1;
			now K is crotch-displaced;
	if the cleavageCover of arms is 0:[if the player is holding their chest, their boobs can't pop out.]
		let Cd be 0;
		repeat with C running through worn ridiculously low cut or higher clothing:[TODO: if needed, add support for cup size]
			if C is currently top-displacable:
				now Cd is the largeness of breasts - the cleavageCover of C;
				if Cd > 0 and a random number between 1 and (100 - (Cd * 5)) < 2 + unlucky:
					now displaceDone is 1;
					now C is top-displaced;
					break;[Happens one layer at a time.]
	if displaceDone is 1:
		let R be a random number between the intelligence of the player and 30;
		if debugmode > 0, say "[input style]Wardrobe malfunction. Player will notice if R > 20. R = [R].[roman type][line break]";
		if R > 20, say "[line break][one of]You feel a slight draft...[or]You feel a slight breeze...[or]You can feel the air touching your skin...[or]You feel a little freer...[at random][line break]";][You only get an announcement if you win an intelligence roll]

shunk-happened is initially false.

A time based rule (this is the trap time rule):
	now shunk-happened is false;
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
	unless T is click and there is a minibar in the location of T, compute default reset cooldown of T.

To compute default reset cooldown of (T - a trap):
	if the reset-timer of T <= time-seconds:
		now the reset-timer of T is 0;
		unless T is penetrating a fuckhole:
			compute default reset of T;
		otherwise:
			now the reset-timer of T is 1;
	otherwise:
		decrease the reset-timer of T by time-seconds.

To compute default reset of (T - a trap):
	now T is untriggered;
	now T is not expired;
	if T is not pressure, now T is not triggered; [we use this to keep trap of whether pressure traps have been discovered, and then make them easier to avoid]
	now T is unrevealed;
	dislodge T;
	if T is click:
		repeat with C running through containers in the location of T:
			now C is closed;
			now C is emptied;
	if T is in the location of the player and shunk-happened is false:
		say "There is a loud 'shunk' sound as the [T] in this room resets[if T is click]. All the containers in the room shut themselves automatically![otherwise].[end if]";
		now shunk-happened is true.

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

[
latex-transformed-duration -- how many minutes the player has spent as a fully TFed doll.
latex-transformed-start -- the starting minute of the full sex doll TF.
latex-transformed-count -- how many times the full TF happened.
latex-transformed-girlcount -- how many times the player was a girl doll.
]
latex-transformed-duration is a number that varies. latex-transformed-duration is 0.
latex-transformed-start is a number that varies. latex-transformed-start is 0.
latex-transformed-count is a number that varies. latex-transformed-count is 0.
latex-transformed-girlcount is a number that varies. latex-transformed-girlcount is 0.

[#LXorDD players-detached-dick is the object used and carried around when the player has had the detachable penis fate. It can be taken by monsters and carried around.]

To compute latex transformation:
	if the latex-transformation of the player > 0 and the latex-transformation of the player < 8:
		increase the latex-transformation of the player by 1;
		now the alert of the player is 1;
		say "[bold type]";
		if the latex-transformation of the player is 2:
			say "Some of the detail in your skin is [one of]definitely[or]once again[stopping] fading. You could also swear that you feel yourself [one of]getting slowly less and less heavy[or]gradually getting lighter[or]feeling a little lighter on your feet[at random]...";
		if the latex-transformation of the player is 3:
			say "Your skin becomes more and more smooth and featureless by the minute. You suddenly realise your [if the player is not possessing a vagina][asshole] feels[otherwise][vagina] and [asshole] feel[end if] more... relaxed. Putting a hand back there, you realise [if the player is not possessing a vagina]it is[otherwise]they are both[end if] extremely gaped and hanging open, almost like a sex doll. Even weirder, it doesn't feel uncomfortable at all. It's almost as if your [if the player is not possessing a vagina]entrance is[otherwise]entrances are[end if] now completely numb...";
			appropriate-cutscene-display figure of latex curse 7;
			now the openness of asshole is 10;
			if the player is possessing a vagina, now the openness of vagina is 10;
		if the latex-transformation of the player is 4:
			say "Your skin is now completely smooth and featureless - it doesn't look real but more like something made out of plastic or in a cartoon. [one of]Your lips also feel weird. Like, a bit numb?[or]Your face feels a little stiff, too, like you have to really work to frown or smile, or even blink.[or][stopping] ";
			appropriate-cutscene-display figure of latex curse 1;
			say "Your [if the player is not possessing a vagina][asshole] feels[otherwise][vagina] and [asshole] feel[end if] completely rubber all the way inside - whilst you can still feel things, you probably can no longer get sore.";
			now the soreness of asshole is 0;
			now the soreness of vagina is 0;
			now the tolerated of asshole is 0;
			now the tolerated of vagina is 0;
		if the latex-transformation of the player is 5:
			say "Your skin is starting to feel rubbery... is there even any flesh under there any more?! [one of]You also sense a weird facial stiffness, like your features aren't responding properly to how you're feeling - as if you've had a heavy Botox session? [or]You notice your mouth is open in shock, but it takes a real effort to close your lips... [or][stopping]As you're thinking about this, you feel your throat and mouth dry up. But it hardly feels weird, and also you somehow immediately know, you no longer need to keep hydrated. Deep within your body, the tubes connecting to your orifices somehow... close up. It's almost as if they have valves now...";
			appropriate-cutscene-display figure of latex curse 8;
			now the bladder of the player is 0; [##LXorDD consider instead leaving a trail, leaking one unit per round, for humiliation]
			now the delayed bladder of the player is 0;
		if the latex-transformation of the player is 6:
			say "Your skin is definitely made of some kind of rubbery latex. You can tell that you don't have any kind of flesh under there any more because you feel extremely light and you're pretty sure you can no longer bruise. You're more scared of being over-inflated...";
			appropriate-cutscene-display figure of latex curse 9;
			now the body soreness of the player is 0;
			now the milk volume of breasts is 0;
		if the latex-transformation of the player is 7:
			say "Your mouth rounds out into a perfect O shape and you realise you can no longer control or close it. You try to move your tongue but you realise that's gone too. You can no longer form proper words but just make a girly moaning sound. Your makeup is now permanently doll-like. You also feel a bit less dexterous.";
			appropriate-cutscene-display figure of latex curse 2;
			FaceUp 3;
			LipsUp 3;
		if the latex-transformation of the player is 8:
			say "You feel yourself stop breathing and your heart stop beating, but you realise you no longer need either, you don't have flesh or blood or anything inside you, just tubes and air. Your hands and feet lose their digits and their shape and just turn into rounded ends, as if you were wearing fully rounded mittens. [if the number of things held by the player > 0]You drop everything that you are carrying. It seems unlikely that you'll be able to carry more than one thing carefully in between your two doll stumps now.[end if][line break]You have completely transformed into a latex sex doll. You definitely feel less nimble, too.";
			say "But even though your heart and breathing have stopped, you realise your arousal hasn't changed at all. Most of your skin feels completely numb, but a few [i]special[/i] areas feel flushed and delicate, still tingling with pleasure, sensitive to every touch. The shock you feel at that makes you suddenly aware of your widened eyes and your mouth, your [LipDesc] now gaping open in a perfect 'O' shape. And then you realise in dismay that you can't change either your expression or the shape of your 'please-fuck-me' lips!";
			appropriate-cutscene-display figure of latex curse 3 with priority 4; [with the player dropping so many items, a focus window cutscene would be tiny]
			if players-dick-is-detached > 0:
				now the IsPlastic of players-detached-dick is 1; [#LXorDD]
				say "You feel an echo of the magic from your [DetachedPenis][one of], and suddenly worry that it could bad news, having this happen while it was still detached.[or]. Did someone warn you against letting that happen?[or]. That can't be a good sign.[at random]";
			repeat with H running through things carried by the player:
				now H is in the location of the player;
			let BG be a random worn bag of holding;
			if BG is clothing:
				now BG is in the location of the player;
				dislodge BG;
			repeat with C running through worn clothing:
				if C is fake-nails, only destroy C;
				if C is bracelet or C is wrist bond:
					say "Your [ShortDesc of C] falls off your wrist and onto the ground.";
					now C is in the location of the player;
				if C is ring:
					say "You no longer have fingers, so your [ShortDesc of C] falls to the ground.";
					now C is in the location of the player;
				if C is equippable and C is not gloves:
					say "[BigNameDesc of C] falls to the ground.";
					now C is in the location of the player;
					dislodge C;
			now the latex-transformed-start is (starting-earnings - earnings ) / 60; [We track how long the player plays as a fully transformed sex doll]
			increase the latex-transformed-count by 1;
		say "[roman type][line break]".

This is the sex dolls have no voice rule:
	if the latex-transformation of the player > 6, rule fails.
The sex dolls have no voice rule is listed in the player voice rules.

[How many seconds pass before latex transformation progresses]
To decide which number is latex transformation rate:
	let N be 264;
	if dolly tattoo is worn, decrease N by 69;
	decide on N.

To carry out LatexCurseRemoval:
	if the latex-transformation of the player is 8:
		[Collect the remaining stats.]
		let this-minute be (starting-earnings - earnings ) / 60;
		increase latex-transformed-duration by this-minute - latex-transformed-start;
		if the player has a vagina: [Determine this at the last moment]
			increase latex-transformed-girlcount by 1;
	now the latex-transformation of the player is 0.

To say LatexCurseRemoval:
	say "[if the latex-transformation of the player > 2]The feeling of your skin and bones returning is extremely weird but it's over quickly and you feel as good as new. But feeling behind you, you realise your orifices have been left gaping open. But at least you[otherwise]You[end if] are back to being fully human.[line break][variable custom style]What a relief![roman type][line break]";
	carry out LatexCurseRemoval;
	if the pregnancy of the player is 2, now the pregnancy of the player is 1.

Periodic Effects ends here.
