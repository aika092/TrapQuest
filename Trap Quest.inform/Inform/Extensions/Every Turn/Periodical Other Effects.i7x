Periodical Other Effects by Every Turn begins here.



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
	if the heel time of the player  > (the raw heel skill of the player * 250) + 100 and the player is upright, HeelUp 1;
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
	if the remainder after dividing local-earnings by 297 < local-seconds and the player is male and the virgin of the player is 1 and virgincursed > 0:
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
		if there is worn locked clothing:
			if P is prison guard:
				decrease the sentence of P by 2;
			otherwise:
				let M be a random off-stage prison guard;
				if M is monster:
					set up M;
					summon M in the dungeon;
		if the number of alive golem is 0 and the player is the donator and diaper quest is 0:
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
					if playerRegion is Dungeon:
						now M is in Stairwell01;
					otherwise if playerRegion is Woods:
						now M is in Stairwell02;
					otherwise if playerRegion is Hotel:
						now M is in Hotel01;
					otherwise if playerRegion is Mansion:
						now M is in Mansion01;
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
			arouse 500;
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
	if the player is flying and a random number between 1 and 2 is 1, say "[one of]You can't believe you're stuck in the air!  How humiliating.[or]Being stuck in mid-air gives you plenty of time to reflect on how messed up your situation really is.[or][line break][variable custom style]I'm a floating blimp. How disgraceful![roman type][line break][or][line break][variable custom style]How long is it going to take for me to deflate?[roman type][line break][or][line break][variable custom style]What sort of [if the bimbo of the player < 12]fucked up [end if]person thinks of putting something like this into a game?!?![roman type][line break][or][line break][variable custom style]This is a strangely calming experience...[roman type][line break][or][line break][variable custom style]I think I'm slowly getting heavier again![roman type][line break][in random order]";



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




Periodical Other Effects ends here.

