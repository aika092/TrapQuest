Compute Turn by Every Turn begins here.

[!<anotherTurn:Integer>*

When this is set to 1, we are flagging that we want the game to compute another turn after this one. Usually because the player isn't allowed to act this turn.

*!]
another-turn is a number that varies. [if set to 1, we get another turn]
another-turn-flavour is a text that varies. [if we have another turn, we can optionally also set flavour to say just as the new turn begins]
This is the no-stored-action rule:
	continue the action.
another-turn-rules is a list of rules that varies. [if we have another turn, is there a rule we should follow instead of the player's action]
another-turn-action is a rule that varies. another-turn-action is the no-stored-action rule. [if we have another turn, is there a rule we should follow as an automatic action]
time-turns is a number that varies. [just lets us count how many turns have passed]


The compulsory action rules is a rulebook. [Things that MUST happen like continued urination and expulsion]

[!<EveryTurn>+

REQUIRES COMMENTING
Oh, so this is how time works!  So "seconds" represents how many seconds of the current round has elapsed. And if seconds is 0, the round hasn't really started, so monsters and background activities don't progress.
### But the "run the engine" function seems bizarre to Selkie, looking equivalent to just writing:
### The another-turn flag can be set to 1 for various reasons, which causes the "engine" to run again without giving the player a chance to act. The player can only have a turn if another-turn is STILL 0 at the end of the turn

	now another-turn is 0;
	run the engine once;
	check immobility;
	if the player is virtual, display stuff.
+!]
Every turn:
	if seconds > 0, run the engine;
	compute options;
	if the player is virtual or (tutorial is 1 and the graphics-window is g-present):
		display stuff;
		if inventory-visible > 0, display inventory stuff;
		display inventory-focus stuff;
		display regular focus stuff;
		if bubble-needs-overwriting is 1:
			display entire map;
			now bubble-needs-overwriting is 0;
		render map buttons;
	now focused-thing is nothing;
	now seconds is 0;
	if global timer interval > 50:
		say "[bold type]BUG: The interpreter's timer just got stuck at [global timer interval]ms, when it is supposed to be at 50ms. Please report this to Aika along with as much detail as possible on what the last thing you did was.[roman type][line break]";
		reset the Glulx timer.

To allocate (N - a number) seconds:
	if N > 0:
		[time is moving foward, so icons should move]
		purge NPC icons;
		if seconds is 0:
			zero the focus-link-table;
			if debugmode > 1, say "Zeroing focus stuff and allocating [N] seconds.";
			zero focus stuff; [We've just been told that we're going to need to run the engine. Let's empty the lists of images to display and begin building it anew.]
			render buffered stuff; [Gives the player some feedback to know that their command went through]
	now seconds is N.

To force allocate (N - a number) seconds:
	now seconds is 0; [This way we force the recalculation of the focus window]
	allocate N seconds.



To run the engine:
	let AT be 1;
	while AT is 1:
		run the engine once;
		now AT is another-turn;
		now another-turn is 0;
		if AT is 1 and another-turn-flavour is not "" and the number of entries in another-turn-rules is 0, say "[bold type][another-turn-flavour][roman type][line break]"; [If we have other stored-action reasons for the extra turn, no need to give the player additional reasons why there was a delayed turn.]
		now another-turn-flavour is "";
		let LR be a list of rules;
		repeat with R running through another-turn-rules:
			add R to LR;
		let A be another-turn-action;
		now another-turn-action is the no-stored-action rule;
		truncate another-turn-rules to 0 entries;
		if AT is 1:
			if the number of entries in LR > 0:
				repeat with R running through LR:
					follow R; [This way, if the stored rule demands another turn, and adds another stored rule in, we don't truncate away that rule too early.]
			otherwise: [no compulsory rules so we can do the stored automatic action]
				follow A;
	map-draw around the location of the player.




To run the engine once:
	if seconds is 0, allocate 1 seconds; [We are having another turn even if seconds wasn't set!]
	increase time-turns by 1;
	Store Previous Sizes;
	if delayed fainting is 1 and resting is 0:
		execute fainting;
	otherwise if the player is virtual:
		compute cleanup;
		now the location of the player is discovered;
		now Neighbour Finder is the location of the player;
		repeat with D running through N-viable directions:
			now the room D from Neighbour Finder is seen;
		compute turn;
		if delayed fainting is 0:
			follow the compulsory action rules; [things that must happen]
			unless another-turn is 1, compute instinctive actions;
			unless another-turn is 1, compute automatic actions;  [Automatic actions essentially cause the game to choose what the player enters and then compute turn to happen again. So this must go right at the end, and only happen if another-turn is currently 0!]
			unless another-turn is 1, compute optional actions;  [Optional actions are where the player is given a choice about whether it happens or not. So this must go right at the end, and only happen if another-turn is currently 0!]
			unless another-turn is 1, allocate 0 seconds;
	if delayed fainting is 1 and resting is 0:
		execute fainting;
	if another-turn is 1 and the player is live fucked and wanking is 0:
		let M be a random live thing penetrating a body part;
		if the humiliation of the player >= 40000:
			try submitting;
		otherwise if (M is not minotaur or M is awake monster) and M is not ghostly tentacle and wanking is 0: [If it's an asleep minotaur we don't ask this]
			say "[if the player-reaction of the player is resisting]Keep resisting?[otherwise]Do you want to resist?[end if] ";
			if the player is consenting, try resisting;
			otherwise try submitting;
	if another-turn is 0: [We only look at this stuff on the last turn before the player has control returned to them]
		check unhandled diaper scene; [if scene messing is chosen, we need to always handle used diapers before handing control back to the player]
		[Sometimes when time moves forward we need to refresh the map back to normal from unique situations. We can't do this in a time based rulebook because 'display entire map' breaks the rulebook.]
		if temporary-map-figure is not figure of no-image-yet:
			now temporary-map-figure is the figure of no-image-yet;
			unless there is g-animated g-looping cutscene animation track, display entire map; [If there is an animation and we allow the map to redraw underneath, we lose the 'skip' hyperlink.]
		otherwise if there is g-animated g-looping cutscene animation track:
			repeat with G running through g-animated g-looping cutscene animation tracks:
				cease animation of G;
			display entire map;
	update saved stats;
	fix status bar.


[!<ComputeExtraTurn>+

REQUIRES COMMENTING

+!]
To compute extra turn:
	now predicament-painted-cutoffs is hand-decided;
	now predicament-painted-cutoffs is not hand-blocked;
	run the engine once.

[!<ComputeCleanup>+

REQUIRES COMMENTING

+!]
To compute cleanup:
	repeat with X running through off-stage things penetrating a body part:
		dislodge X;
		[Temporary cleanup clause until I work out a better way to make sure this has always happened when an item is removed from play, same goes for below]
	repeat with B running through on-stage ballgags:
		if B is worn and B is not penetrating face:
			now B is penetrating face;
		if B is not worn and B is penetrating face:
			now B is not penetrating face.


[!<StorePreviousSizes>+

REQUIRES COMMENTING

+!]
To store previous sizes:
	now autozap is 0;
	now autoslap is 0;
	now autokick is 0;
	now autoknee is 0;
	now the previous largeness of breasts is the largeness of breasts;
	now the previous largeness of belly is the largeness of belly;
	now the previous thickness of hips is the thickness of hips;
	now the previous total volume of hips is the total volume of hips.


[!<timeBased:Rulebook>*

All the procedures that need to be called every turn, BEFORE monsters act.

*!]
time based is a rulebook.

[!<laterTimeBased:Rulebook>*

All the procedures that need to be called every turn, AFTER monsters act.

*!]
later time based is a rulebook.

[!<timeSeconds:Integer>*

We save the local seconds value to a global integer right before we follow the 'time based' rules. This way we make sure that each time the time based rules is called, we are using a unique pair of seconds and earnings.

Otherwise, imagine if we had a 'compute extra turn' called before we got to the time based rules. We would have seconds & earnings reduced twice and then the time based rules followed twice - with the same seconds and earnings pair both times. This could allow for periodic effects like hunger increasing to either be skipped or even worse triggered twice in a row.

*!]
time-seconds is a number that varies.

[!<timeEarnings:Integer>*

See timeSeconds above.

*!]
time-earnings is a number that varies.

[!<drainDuration:Integer>*

REQUIRES COMMENTING

*!]
drain-duration is a number that varies.

[!<ComputeTurn>+

REQUIRES COMMENTING

+!]
To compute turn:
	let local-earnings be earnings; [anything that cares about regular occurrence will need these local values to remain consistent when we compute multiple turns.]
	let local-seconds be seconds;
	if earnings > seconds: [we subtract seconds from earnings first so that any mechanics that check earnings for regularity are not calculated several times in quick succession, when "compute extra turn" is called early in the list.]
		if debugmode > 0, say "Time: [earnings] > ";
		decrease earnings by seconds;
		if debugmode > 0, say "[earnings].";
		if the player is a cheater and unlucky < 2 and earnings < starting-earnings - 500, compute trolling; [When the player is cheating and has played for a little while, we'll trigger this.]
		if april fools done is 0: [This stops us checking immobility and danger every single turn forever]
			if the player is not immobile and the player is not in danger and earnings < starting-earnings - 480, compute april fools;
	otherwise: [failsafe]
		now earnings is 999999;
	compute MonsterSetUpFix;
	compute flight; [Flight stuff must go first and last - the concept is it's checking if anything that happened caused the player to start flying.]
	if the player is upright, compute player standing;
	otherwise compute player kneeling;
	if debugmode > 1, say "BEFORE PERIODIC.";
	compute periodic effects with earnings local-earnings and seconds local-seconds;
	if debugmode > 1, say "AFTER PERIODIC.";
	now time-seconds is local-seconds;
	now time-earnings is local-earnings;
	if debugmode > 1, say "BEFORE TIME BASED.";
	if timeBombTime > 0, progress stopped time;
	otherwise follow the time based rulebook;
	if debugmode > 1, say "AFTER TIME BASED.";
	if the player is flying or last-turn-flight is 0: [This means, the turn that the player lands monsters don't get to act.]
		if debugmode > 1, say "BEFORE MONSTERS.";
		if delayed fainting is 0 and timeBombTime <= 0, compute monsters;
		if debugmode > 1, say "AFTER MONSTERS.";
	compute monster sleeping;
	now counters-seconds is local-seconds;
	follow the advance counters rules;
	if debugmode > 1, say "AFTER COUNTERS.";
	now time-seconds is local-seconds;
	now time-earnings is local-earnings;
	repeat with M running through alive dying monsters:
		finally destroy M;
	if timeBombTime <= 0, follow the later time based rulebook;
	Reset Flags;
	if debugmode > 1, say "AFTER FLAGS.";
	compute flight; [Flight stuff must go last in the compute time order - the concept is it's checking if anything that happened caused the player to start flying.]
	allocate 0 seconds;
	if newbie tips is 1, say other tips.



To compute automatic actions:
	if delayed stand is 1:
		if there is a revealed hypno trap in the location of the player or there is a revealed haunted mirror trap in the location of the player or there is a revealed sprinkle trap in the location of the player or the location of the player is smoky: [The player might prefer to move first]
			now delayed stand is 0;
		otherwise:
			allocate 0 seconds;
			[say "[bold type]You try to stand up.[roman type][line break]";]
			try standing;
			now delayed stand is 0;
			now another-turn is 1.

To compute optional actions:
	if was-mopping is 1:
		now was-mopping is 0;
		if total puddle > 0:
			say "Keep mopping? ";
			if the player is consenting: [if this was bimbo consenting there are some edge case loops with broken players who infinitely lick a puddle while peeing]
				now another-turn is 1;
				try mopping the noun;
		otherwise:
			progress quest of puddle-cleaning-quest.


[!<DecideWhichNumberIsTheBuckleThresholdOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the buckle threshold of (Y - yourself):
	decide on ((the strength of the player + 5 + (food theme bonus * 5)) * 20 * (10 - the body soreness of the player)) / 10.

[!<DecideWhichNumberIsTheTiredThresholdOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the tired threshold of (Y - yourself):
	decide on ((the strength of the player + 5) * 10 * (10 - the body soreness of the player)) / 10.

[!<DecideWhichNumberIsTheVeryTiredThresholdOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the very tired threshold of (Y - yourself):
	decide on ((the strength of the player + 5) * 15 * (10 - the body soreness of the player)) / 10.

[!<PersonIsTired>+

REQUIRES COMMENTING

+!]
Definition: yourself (called Y) is tired:
	if the fatigue of the player >= the tired threshold of the player, decide yes;
	decide no.

[!<PersonIsVeryTired>+

REQUIRES COMMENTING

+!]
Definition: yourself (called Y) is very tired:
	if the fatigue of the player >= the very tired threshold of the player, decide yes;
	decide no.

[!<DecideWhichNumberIsTheFatigueInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the fatigue-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheFatigueInfluenceOfEnduranceClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the fatigue-influence of (C - an endurance clothing):
	let F be -1;
	decrease F by the magic-modifier of C;
	if C is blessed, decrease F by 1; [an extra 1]
	decide on F.

[!<ComputePlayerStanding>+

REQUIRES COMMENTING

+!]
To compute player standing:
	now resting is 0;
	if the largeness of belly > 3 or the largeness of breasts > 16 or (the ready-for-milking of milking-quest is 1 and the milk volume of breasts > 10)[ or there is worn heels], compute upright fatigue gain; [We only gain fatigue while standing for very big bodies or when wearing heels. Other fatigue gain comes from walking around and kicking.]
	if diaper quest is 0 and the location of the player is Dungeon19:
		if the soreness of asshole is 10:
			say "The stench in this room takes you over the edge and you start to faint.";
			now delayed fainting is 1;
			now the fainting reason of the player is 3;
	if the player is not vine fucked:
		if the fatigue of the player >= the buckle threshold of the player:
			unless the player is trap stuck:
				say "Your knees buckle with fatigue, and you fall down onto them. ";
				try kneeling;
				repeat with M running through intelligent dangerous monsters in the location of the player:
					make M expectant; [This way monsters are delayed for a turn when you buckle, giving you a chance to wait, submit, etc.]
				if there is a dangerous monster in the location of the player and the body soreness of the player > 8 and the bladder of the player > 6 and the player is not feeling dominant:
					now delayed urination is 1;
					say "Overcome with pain[if the player is not a pervert] and fear[otherwise if the humiliation of the player < 12500] and shame[end if], you involuntarily wet yourself.";
					try urinating;
			otherwise:
				if the player is hook stuck:
					say "Your arms feel weak, your legs feel weak, your everything feels weak. Your legs begin to shake. You [if the bimbo of the player < 12]burst into tears[otherwise]squeal like a little girl[end if] as you feel your knees buckle underneath you, and all your weight is placed onto the hook. The intense pressure turns quickly into blinding pain, and causes you to faint within seconds.";
					now delayed fainting is 1;
					now the fainting reason of the player is 6;
				if the player is drill stuck, compute drill damage;
				if the player is dildo stuck, compute dildo damage;
		otherwise:
			if the player is drill stuck, compute drill damage;
			if the player is dildo stuck, compute dildo damage;
			if the player is vine-cursed or the player is vine stuck or (diaper quest is 0 and (the location of the player is WoodsBoss01 or the class of the player is schoolgirl or the class of the player is magical girl)), compute vines standing; [EXPERIMENTAL]
			if the player is glue stuck, compute glue escaping;
	otherwise:
		compute vines fucking.

To compute upright fatigue gain:
	let W be fatigue weight;
	let H be 2 + the hindrance of the player; [the hindrance of the player increases the more the player is unstable in high heels]
	repeat with C running through worn clothing:
		[say "Fatigue influence of [C] is [fatigue-influence of C].";]
		increase W by the fatigue-influence of C;
	now W is (W * H) / 4;
	if W > the strength of the player * 5, now W is the strength of the player * 5; [Any player of any weight should be able to stand up for at least 25 rounds]
	if W <= 0 and the player is not flying, now W is 1;
	if W > 0:
		if debuginfo > 1, say "[input-style]Fatigue: weight ([W]); [the fatigue of the player] -> ";
		FatigueUp W;
		if debuginfo > 1, say "[the fatigue of the player] | [the buckle threshold of the player][roman type][line break]".

[!<ComputeDildoDamage>+

REQUIRES COMMENTING

+!]
To compute dildo damage:
	unless the latex-transformation of the player > 3:
		repeat with D running through traps penetrating a fuckhole:
			say "The dildo keeps pressing on your sensitive spots inside your [if D is penetrating asshole][asshole][otherwise][vagina][end if][one of], making you more and more sore![or].[stopping]";
			let Q be a random number from 1 to 3;
			if Q > 1:
				if D is penetrating asshole, ruin asshole;
				otherwise ruin vagina.

[!<ComputeDrillDamage>+

REQUIRES COMMENTING

+!]
To compute drill damage:
	repeat with D running through drill pole traps penetrating a fuckhole:
		let F be a random fuckhole penetrated by D;
		say "The dildo keeps spinning inside your [variable F], making you more and more sensitive!";
		ruin F;
		stimulate F from D. [extra stimulation and chance of orgasm]







[!<ComputePlayerKneeling>+

REQUIRES COMMENTING

+!]
To compute player kneeling:
	if diaper quest is 0 and the location of the player is Dungeon19:
		if the soreness of asshole > 7:
			say "While on your knees, you get a very strong whiff of the stench in this room. It takes you over the edge and you start to faint.";
			now delayed fainting is 1;
			now the soreness of asshole is 7;
			now the fainting reason of the player is 3;
	if the player is able to breathe and detention chair is not grabbing the player:
		compute fatigue loss;
	if the player is not vine fucked, compute vines kneeling;
	otherwise compute vines fucking;
	compute pink smoke.

To decide which number is fatigue bonus:
	decide on 20.

[!<ComputeFatigueLoss>+

REQUIRES COMMENTING

+!]
To compute fatigue loss:
	if the fatigue of the player > fatimod + fatigue bonus:
		let F be 0;
		if the player is tired, now F is 1;
		if debuginfo > 1, say "[input-style]Fatigue recovery turn ([fatimod]): [the fatigue of the player] - ([fatimod]+[fatigue bonus]) -> ";
		FatigueDown fatimod + fatigue bonus;
		if debuginfo > 1, say "[the fatigue of the player] | [the buckle threshold of the player][roman type][line break]";
		if F is 1 and the player is not tired, say "Your legs are starting to feel a bit better.";
		increase fatimod by 1;
	otherwise if the fatigue of the player > 0:
		now the fatigue of the player is 0;
		if the body soreness of the player < 10, say "Your legs feel [if the body soreness of the player is 0]completely rested[otherwise]ready to go[end if].".

[!<ComputePinkSmoke>+

REQUIRES COMMENTING

+!]
To compute pink smoke:
	if the location of the player is smoky and the player is not flying and the player is able to breathe and the number of aeromancer penetrating a body part is 0:
		let R be a random number between 1 and 12;
		if the player is not able to breathe, now R is 0;
		if diaper quest is 1:
			if the player is male and a random number between 1 and 3 is 1, now R is 7; [penis shrink]
			otherwise now R is 1; [arousal]
		if the player is in School34 and a random number between 1 and 8 > 1, now R is 1; [arousal]
		if (the player is a flatchested trap or (diaper quest is 1 and the player is male)) and R > 6:
			say "You lightly cough as your position on your knees forces you to breathe in the [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke in this room.";
			unless the size of penis <= min penis size:
				PenisDown 1;
				say "Your penis [Shrink]s into a [ShortDesc of penis].";
		otherwise if R > 6 and diaper quest is 0:
			say "You lightly cough as your position on your knees forces you to breathe in the [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke in this room. [unless the player is top heavy][one of][or]It feels a little more difficult to breathe.[or]Your boobs visibly grow.[or]Your chest expands outwards![as decreasingly likely outcomes][end if]";
			Bustup 1;
		otherwise if R is 6:
			say "You lightly cough as your position on your knees forces you to breathe in the [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke in this room. [unless the blondeness of hair is 3]Your hair feels tingly.[end if]";
			HairBlondeUp 1;
		otherwise if R is 5:
			say "You lightly cough as your position on your knees forces you to breathe in the [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke in this room. [unless the redness of hair is 3]Your hair feels strange.[end if]";
			HairRedUp 1;
		otherwise if R is 0:
			say "[one of]You would be breathing in the [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] in this room, but you can't breathe at the moment![or][stopping]";
		otherwise:
			say "You lightly cough as your position on your knees forces you to breathe in the [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke in this room. [if the player is a bit horny][line break][otherwise]You feel all tingly inside.[end if]";
			arouse 1000.

[!<breathingBlockingRules:Rulebook>*

REQUIRES COMMENTING

*!]
The breathing blocking rules is a rulebook.

[!<PersonIsableToBreathe>+

REQUIRES COMMENTING

+!]
Definition: a person (called P) is able to breathe:
	follow the breathing blocking rules;
	if the rule succeeded, decide no;
	decide yes.












[!<ComputeInstinctiveactions>+

REQUIRES COMMENTING

+!]
To Compute Instinctive Actions:
	if another-turn is 0, follow the hypno triggers rules;
	now hypno-trigger is "";
	if another-turn is 0, Compute Compulsions;
	if the player is in Dungeon31 and another-turn is 0, compute podium action;
	if another-turn is 0, Compute Broken Actions.


[!<ComputeCompulsions>+

REQUIRES COMMENTING

+!]
To Compute Compulsions:
	now autodrink is 1;
	let B be a random held actually drinkable bottle;
	if drinkme tattoo is worn and B is bottle and the player is not almost too full and a random number between 1 and 10 is 1 and the player is not in danger and the player is able to drink and the class of the player is not bunny and (the class of the player is not royal slave or the fill-type of B <= highest-cursed): [Need to make sure that royal slaves and bunny waitresses don't just drink all their stock]
		say "Your 'drink me' tattoo sends irresistible urges to your brain and you find yourself mindlessly bringing the [ShortDesc of B] to your lips!";
		try drinking B;
		now another-turn is 1;
	otherwise if there is a carried throbbing-tentacle:
		let P be a random carried throbbing-tentacle;
		say "You feel the Master gently throbbing in your hands, so much smarter and more worthy than you. You reverently place him once again in front of your hole. [line break][first custom style]'It is good that you understand your place, slave. I will return now to my place of honour.'[roman type][line break]The Master once again worms its way into your [if the player is male][asshole][otherwise][vagina][end if]!";
		repeat with C running through worn top level protection clothing:
			destroy C;
		repeat with D running through worn clothing:
			if D is penetrating a fuckhole:
				destroy D;
		now P is worn by the player;
		if the player is male:
			now P is penetrating asshole;
		otherwise:
			now P is penetrating vagina;
		now another-turn is 1;
	otherwise if there is a throbbing-tentacle in the location of the player and the number of interested unfriendly monsters in the location of the player is 0:
		let P be a random throbbing-tentacle in the location of the player;
		say "You see the Master sitting, forlorn, on the ground. You find it so hard to think without him inside you, and you gently and reverently pick him up and place him once again in front of your hole. [line break][first custom style]'It is good that you understand your place, slave. I will return now to my place of honour.'[roman type][line break]The Master once again worms its way into your [if the player is male][asshole][otherwise][vagina][end if]!";
		repeat with C running through worn top level protection clothing:
			destroy C;
		repeat with D running through worn clothing:
			if D is penetrating a fuckhole:
				destroy D;
		now P is worn by the player;
		if the player is male:
			now P is penetrating asshole;
		otherwise:
			now P is penetrating vagina;
		now another-turn is 1;
	now autodrink is 0;
	if the player is broken and cultist veil is in the location of the player and cultist veil is actually summonable:
		say "You see a black veil and suddenly feel so ashamed that your worthless face is on display, as though you were a person and not simply a selection of holes to be used. You silently lift the veil over your face, as is proper.";
		summon cultist veil;
		now another-turn is 1;
	if the traitor-hypno of hypno-lesson > 0:
		if ex-princess is in the location of the player and ex-princess is caged and watersports fetish is 1 and the player is not incontinent and the player is desperate to pee and the player is able to use a urinal:
			decrease the traitor-hypno of hypno-lesson by 1;
			say "Something inside you urges you to [second custom style]help your friend[roman type].";
			compute urinal use;
			now another-turn is 1.


[!<ComputeBrokenActions>+

REQUIRES COMMENTING

+!]
To Compute Broken Actions:
	if diaper quest is 0 and the humiliation of the player >= 40000 and the player is prone and the player is not immobile and resting is 0 and busy is 0:
		if there is a willing to shag monster in the location of the player:
			let M be a random willing to shag monster in the location of the player;
			compute broken sex of M;
	otherwise if the arousal of the player >= maximum arousal and the player is not in a predicament room:
		[say "You lightly cough as your position on your knees forces you to breathe in the [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke in this room.";] [How did this get here?!]
		if the player is able to automatically masturbate:
			say "You're just way too horny - there is nothing you can do except immediately begin to masturbate!";
			now auto is 1;
			try masturbating;
			now auto is 0.

broken-present-cooldown is a number that varies.

[!<ComputeBrokenSexOfMonster>+

REQUIRES COMMENTING

+!]
To compute broken sex of (M - a monster):
	let B be nothing;
	if broken-present-cooldown <= 0:
		now auto is 1;
		now B is a random actually presentable orifice;
		if B is not face and face is actually presentable and M is male and the player is craving semen and M is willing to do oral, now B is face;
		if the player is a butt slut and asshole is actually presentable and M is willing to do anal, now B is asshole;
		if the player is a pussy slut and vagina is actually presentable and M is willing to do vaginal, now B is vagina;
		if the player is a tit slut and M is male and M is willing to do titfucks and breasts are actually presentable, now B is breasts;
		if the sensitivity of breasts > 7 and there is a worn nipple chain and M is male and M is willing to do titfucks, now B is breasts;
		now auto is 0;
	otherwise:
		decrease broken-present-cooldown by seconds;
	if B is body part and the sex addiction of the player > a random number between 12 and 18: [If B is nothing, this means there's no sex we can have right now.]
		if M is interested:
			say "Without a second thought, you crawl towards [NameDesc of M].";
		otherwise:
			say "Without a second thought, you crawl towards [NameDesc of M], gently stroking your head on [his of M] [if M is airborne]body[otherwise]leg[end if].";
			now M is interested;
		try direct-presenting B to M;
		now broken-present-cooldown is 120;
		now another-turn is 1;
	otherwise if M is dangerous:
		say "[one of][bold type]Now that you are on your knees, you remember your role as an object to be used and[or]You[stopping] can't bring yourself to fight back.[roman type][line break]";
		now another-turn is 1.





The hypno triggers rules is a rulebook.

This is the great ones hypno rule:
	if hypno-trigger is "great one" and player-hypno-great is 1:
		say "Just thinking about the [great one]s makes you feel how powerless you are in comparison to them!";
		humiliate 20.
The great ones hypno rule is listed in the hypno triggers rules.



This is the present-for-oral hypno rule:
	if hypno-trigger is "tasty" and hypno-trigger-tasty is 1 and diaper quest is 0:
		say "[bold type]Having heard the word 'tasty', you find yourself automatically [if face is actually occupied]trying to present[otherwise]presenting[end if] your mouth for use.[roman type][line break]";
		if the player is upright, try silently kneeling;
		let M be a random interested monster in the location of the player;
		if M is nothing:
			now M is a random monster in the location of the player;
			if M is monster, now M is interested;
		if the player is prone:
			if face is actually occupied:
				say "[if the bimbo of the player > 14]Unfortunately[otherwise]Fortunately[end if], your mouth is already occupied.";
			otherwise if M is nothing:
				say "All that happens is that you feel a little silly, since there's nobody here to offer a blowjob to.";
			otherwise:
				try direct-presenting face to M;
				now broken-present-cooldown is 120;
		now another-turn is 1.
The present-for-oral hypno rule is listed in the hypno triggers rules.

This is the eat-all-food hypno rule:
	if hypno-trigger is "tasty" and hypno-trigger-tasty is 1 and diaper quest is 1:
		if the number of held food > 0 and face is not actually occupied and the player is able to eat:
			say "[bold type]Having heard the word 'tasty', you find yourself automatically starting to eat everything you can.[roman type][line break]";
			now auto is 1;
			repeat with F running through held food:
				try TQeating F;
			now auto is 0;
			now another-turn is 1.
The eat-all-food hypno rule is listed in the hypno triggers rules.

This is the autopush hypno rule:
	if hypno-trigger is "maturity" and hypno-trigger-maturity is 1 and asshole is not actually occupied and there are worn soilable knickers:
		say "[bold type]Having heard the word 'maturity', you find you automatically start [if the player is upright]squatting, [end if]grunting and pushing.[roman type][line break]";
		now voluntarySquatting is 1;
		compute messing;
		now another-turn is 1.
The autopush hypno rule is listed in the hypno triggers rules.

This is the autospread hypno rule:
	if (hypno-trigger is "pussy" or hypno-trigger is "cunt") and hypno-trigger-pussy is 1 and the player is female and vagina is not lewdly exposed:
		say "[bold type]Having heard the word '[hypno-trigger]', you find yourself automatically trying to get your [vagina] on display.[roman type][line break]";
		repeat with C running through worn potentially at least partially vagina covering skirted clothing: [We do skirted first to try and make sure that the order makes sense]
			if C is displacable:
				say "You pull up your [ShortDesc of C]!";
				displace C;
			otherwise:
				say "You try to remove your [ShortDesc of C]!";
				try taking off C;
		repeat with C running through worn potentially at least partially vagina covering trousers: [We do trousers next to try and make sure that the order makes sense]
			if C is displacable:
				say "You pull down your [ShortDesc of C]!";
				displace C;
			otherwise if C is zippable:
				say "You unzip your [ShortDesc of C]!";
				ZipDown C;
			otherwise:
				say "You try to remove your [ShortDesc of C]!";
				try taking off C;
		repeat with C running through worn potentially at least partially vagina covering unskirted clothing: [We do everything else last to try and make sure that the order makes sense]
			if C is displacable:
				say "You pull your [ShortDesc of C] to the side!";
				displace C;
			otherwise if C is zippable:
				say "You unzip your [ShortDesc of C]!";
				ZipDown C;
			otherwise:
				say "You try to remove your [ShortDesc of C]!";
				try taking off C;
		now another-turn is 1.
The autospread hypno rule is listed in the hypno triggers rules.

This is the autopiss hypno rule:
	if hypno-trigger is "please" and hypno-trigger-please is 1:
		if diaper lover > 0:
			if the bladder of the player > 0 and the latex-transformation of the player <= 4:
				say "[bold type]Having heard the word 'please', your bladder immediately lets itself go, completely without your conscious control.[roman type][line break]";
				now delayed urination is 1;
				try urinating;
		otherwise if the player is able to get horny: [Different hypnotic effect from the statue when diapers are disabled]
			say "[bold type]Having heard the word 'please', your head fills with a deep blissful arousal.[roman type][line break]";
			arouse 5000;
			check for arousal change;
			if the player is very horny and the player is able to automatically masturbate:
				now auto is 1;
				try masturbating;
				now auto is 0;
				now another-turn is 1.
The autopiss hypno rule is listed in the hypno triggers rules.



[!<advanceCountersRules:Rulebook>*

REQUIRES COMMENTING

*!]
The advance counters rules is a rulebook.

[!<countersSeconds:Integer>*

REQUIRES COMMENTING

*!]
counters-seconds is a number that varies.

[!<TheThroneChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the throne charge decay rule:
	if the charge of the throne > 0, decrease the charge of the throne by counters-seconds.
The throne charge decay rule is listed in the advance counters rules.

[!<TheModificationMachineChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the modification machine charge decay rule:
	if the charge of modification machine > 0, decrease the charge of modification machine by counters-seconds.
The modification machine charge decay rule is listed in the advance counters rules.

[!<TheCrossTrainerChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the cross trainer charge decay rule:
	if the charge of cross trainer > 0, decrease the charge of cross trainer by counters-seconds.
The cross trainer charge decay rule is listed in the advance counters rules.

[!<ThePodiumChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the podium charge decay rule:
	if the charge of podium > 0, decrease the charge of podium by counters-seconds.
The podium charge decay rule is listed in the advance counters rules.

[!<TheGloryholeChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the gloryhole charge decay rule:
	if the charge of gloryhole > 0, decrease the charge of gloryhole by counters-seconds.
The gloryhole charge decay rule is listed in the advance counters rules.

[!<TheLectureChairChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the lecture chair charge decay rule:
	let L be a random lecture chair;
	if the charge of L > 0, decrease the charge of L by counters-seconds.
The lecture chair charge decay rule is listed in the advance counters rules.

[!<TheDigestionTimerChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the digestion timer charge decay rule:
	if diaper quest is 1 and digestion-timer > 0:
		decrease digestion-timer by counters-seconds;
		if digestion-timer <= 0:
			if diaper quest is 1 and diaper messing >= 3 and the stomach-food of the player <= 1 and DQMessingHunger is false:
				if the player is hungry, now DQMessingHunger is true; [no flavour text necessary]
				otherwise compute DQ hunger; [tell the player they're now feeling more hungry]
			now digestion-timer is 0.
The digestion timer charge decay rule is listed in the advance counters rules.

[!<TheAlchemyChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the alchemy charge decay rule:
	if the charge of alchemist's table > 0:
		decrease the charge of alchemist's table by counters-seconds;
		if the charge of alchemist's table <= 0 and alchemist's table is in the location of the player, say "[bold type]The wooden bowl on the alchemist's table starts glowing again.[roman type] It must be ready for another ingredient to transform!".
The alchemy charge decay rule is listed in the advance counters rules.

[!<TheScienceChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the science charge decay rule:
	if the charge of science table > 0:
		decrease the charge of science table by counters-seconds;
		if the charge of science table <= 0 and science table is in the location of the player, say "[bold type]The left hand bowl on the science table starts glowing again.[roman type] It must be ready for another ingredient to transform!";
	if the second charge of science table > 0:
		decrease the second charge of science table by counters-seconds;
		if the second charge of science table <= 0 and science table is in the location of the player, say "[bold type]The right hand bowl on the science table starts glowing again.[roman type] It must be ready for another ingredient to transform!".
The science charge decay rule is listed in the advance counters rules.

[!<TheLaundryChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the laundry charge decay rule:
	if the charge of laundry robots > 0:
		decrease the charge of laundry robots by counters-seconds.
The laundry charge decay rule is listed in the advance counters rules.

[!<TheSacredPoolDecayRule>+

REQUIRES COMMENTING

+!]
This is the sacred pool decay rule:
	if the charge of the sacred pool > 0:
		decrease the charge of the sacred pool by counters-seconds.
The sacred pool decay rule is listed in the advance counters rules.

This is the living tentacles decay rule:[TODO: migrate to periodical effect function for living tentacles]
	let L be a random living tentacles;
	if the charge of L > 0:
		decrease the charge of L by counters-seconds.
The living tentacles decay rule is listed in the advance counters rules.

[!<TheDiscountDecayRule>+

REQUIRES COMMENTING

+!]
This is the discount decay rule:
	if discount < -2:
		increase discount by counters-seconds;
		if discount > -3, now discount is 0;
	otherwise if discount > 0:
		decrease discount by counters-seconds;
		if discount < 1, now discount is 0.
The discount decay rule is listed in the advance counters rules.

[!<TheUrineGrossOutResolutionRule>+

REQUIRES COMMENTING

+!]
This is the urine gross out resolution rule:
	let P be previous-urine-upset;
	if the player is upset about urine, now previous-urine-upset is 1;
	otherwise now previous-urine-upset is 0;
	if P is not previous-urine-upset:
		if P is 0, say "[bold type][one of]You can't help but be extremely grossed out by the [if the number of worn urine soaked clothing > 1][urine] soaked clothing you are wearing. Until you remove or clean it all, [otherwise][random worn urine soaked clothing]. Until you clean it or remove it, [end if]your dexterity will be significantly reduced.[or]Once again your dexterity is significantly limited until you can escape the gross [if the number of worn urine soaked clothing > 1][urine] soaked clothing[otherwise][random worn urine soaked clothing][end if].[stopping][roman type][line break]";
		now the arousal of the player is 0.
The urine gross out resolution rule is listed in the advance counters rules.

[!<previousMessUpset:Integer>*

REQUIRES COMMENTING

*!]
previous-mess-upset is a number that varies.

[!<TheMessGrossOutResolutionRule>+

REQUIRES COMMENTING

+!]
This is the mess gross out resolution rule:
	let P be previous-mess-upset;
	if the player is upset about mess, now previous-mess-upset is 1;
	otherwise now previous-mess-upset is 0;
	if P is not previous-mess-upset:
		if P is 0 and previous-urine-upset is 0:
			if the player is upset about sitting in mess:
				if diaper messing is 3, say "[bold type]You can't believe [one of]what has just happened[or]it happened again[stopping][if the player is not magically horny]! All arousal immediately disappears as the reality of your situation hits you[end if].[roman type][line break]";
				otherwise say "[bold type][one of]You can't believe what has just happened! Until you get changed, your dexterity will be significantly reduced and you won't be able to knee or kick enemies.[or]Once again your dexterity is significantly limited until you can escape the gross [random worn messed knickers].[stopping][roman type][line break]";
			otherwise:
				say "[bold type]You are [one of][or]once again [stopping]completely grossed out[if the player is not magically horny]! All arousal immediately disappears as the smell hits your nostrils[end if].[roman type][line break]";
		if the player is not magically horny, now the arousal of the player is 0.
The mess gross out resolution rule is listed in the advance counters rules.

[!<previousTooFull:Integer>*

REQUIRES COMMENTING

*!]
previous-too-full is a number that varies.

[!<TheTooFullResolutionRule>+

REQUIRES COMMENTING

+!]
This is the too full resolution rule:
	if diaper quest is 0:
		let P be previous-too-full;
		if the player is overly full, now previous-too-full is 1;
		otherwise now previous-too-full is 0;
		if P is not previous-too-full:
			if P is 0, say "[bold type]Your stomach is now overly full! [one of]Until it has digested enough of its contents, your dexterity is slightly reduced.[or]Once again your dexterity is slightly lowered until you have digested enough of its contents.[stopping][roman type][line break]".
The too full resolution rule is listed in the advance counters rules.

[!<recentBreastsLargeness:Integer>*

REQUIRES COMMENTING

*!]
recent-breasts-largeness is a number that varies.

[!<TheRecentBreastsLargenessRule>+

REQUIRES COMMENTING

+!]
This is the recent breasts largeness rule:
	now recent-breasts-largeness is the largeness of breasts.
The recent breasts largeness rule is listed in the advance counters rules.

[!<TheFirstAidCooldownRule>+

REQUIRES COMMENTING

+!]
This is the first aid cooldown rule:
	if background-nurse is 1:
		if FAcooldown > 0:
			decrease FAcooldown by 1;
		if FAcooldown is 0 and the number of on-stage bandages is 0:
			say "A new bandage appears in your bag!";
			let B be a random bandage;
			now B is held by the player.
The first aid cooldown rule is listed in the advance counters rules.

[!<ThePainDrainCooldownRule>+

REQUIRES COMMENTING

+!]
This is the pain drain cooldown rule:
	if pain-duration > 0, decrease pain-duration by 1;
	if drain-duration > 0, decrease drain-duration by 1.
The pain drain cooldown rule is listed in the advance counters rules.





[Any and all flags that only last for one turn should go here.]
[Also delayed humiliation, since it's the last thing that happens in a round.]

[!<testingVal:Integer>*

REQUIRES COMMENTING

*!]
testing-val is a number that varies.

[!<ResetFlags>+

REQUIRES COMMENTING

+!]
To Reset Flags:
	if refactoryperiod > 0:
		decrease refactoryperiod by 1;
		now aroused-turns is 0; [The player can keep gaining arousal after orgasms. But then some of it will rather quickly drop off after sex ends, if she successfully orgasmed.]
	[if testing-val is not the number of things in standard item pen and testing-val > 0, say "[bold type]The number of things in Standard Item Pen went from [testing-val] to [number of things in standard item pen].[roman type][line break]";
	now testing-val is the number of things in standard item pen;]
	now auto is 0;
	now boobshrinkflav is 0;
	now semen-encountered is 0;
	now attack-type is 0;
	now mirror-triggered is 0;
	now voluntarySquatting is 0;
	if presented-orifice is nothing and the player is not live fucked, now the player-reaction of the player is unprepared; [This is how we tell the game that the player is no longer submitting or resisting.]
	now presented-orifice is nothing;
	finally humiliate the delayed humiliation of the player;
	decrease blush factor by 100;
	if blush factor > 2000, now blush factor is 2000;
	if blush factor < 0, now blush factor is 0;
	now movement-reduction-flav-said is false;
	repeat with M running through monsters:
		now M is not moved;
		now M is not seeked;
	repeat with M running through monsters:
		now M is not stalled;
	vary stickman counters;
	now feeding bowls is in Hotel18; [The inbuilt shit within I6 means all edible items must be portable to work. This way, even if the player picks it up, it goes back down on the floor immediately.]
	now food machine is in School17; [same for the school food machine]
	if surrendered is 1 and the player is not in danger, now surrendered is 0;
	repeat with C running through worn clothing:
		now the upgrade-target of C is nothing;
	repeat with F running through fuckholes:
		let being-fucked be 0;
		repeat with R running through things penetrating F:
			if R is embodied, now being-fucked is 1;
		if being-fucked is 0, now the buildup of F is 0.

[!<SayOtherTips>+

REQUIRES COMMENTING

+!]
To say other tips:
	if the player is not immobile and the body soreness of the player > 6 and the player is prone, say "[one of][newbie style]Newbie tip: You're quite sore, so you should look out for furniture to rest on, which will heal you. If you can't find any, you can always rest on the royal bed in the starting room, but this will increase your sex addiction, so it's best used as a last resort.[roman type][line break][or][stopping]";
	if the player is not immobile and the soreness of asshole > 6 or the soreness of vagina > 6, say "[one of][newbie style]Newbie tip: Your hole is quite sore. It'll slowly go down over time, but you can heal it a bit instantly with lubricant. Also, you can drink from the statue in the statue hall to heal loads instantly, but don't do this too much - every time you do, you'll have to swallow some semen, and too much will make you become addicted.[roman type][line break][or][stopping]";
	if the player is monster fucked or there is a monster grabbing the player, say "[one of][newbie style]Newbie tip: There's no way to escape until they're done with you. You can now pretty much only choose between 'submit' and 'resist'. Submitting increases humiliation but generally helps prevent other [']bad['] stats [if diaper quest is 1]increasing and prevents angering the enemy further, meaning hopefully they'll be friendly the next time they meet you, rather than hold a grudge[otherwise](mainly soreness) increasing[end if].[roman type][line break][or][stopping]".













Compute Turn ends here.

