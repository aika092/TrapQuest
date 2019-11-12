Compute Turn by Every Turn begins here.

[!<anotherTurn:Integer>*

When this is set to 1, we are flagging that we want the game to compute another turn after this one. Usually because the player isn't allowed to act this turn.

*!]
another-turn is a number that varies.
time-turns is a number that varies. [just lets us count how many turns have passed]

[!<EveryTurn>+

REQUIRES COMMENTING
Oh, so this is how time works! So "seconds" represents how many seconds of the current round has elapsed. And if seconds is 0, the round hasn't really started, so monsters and background activities don't progress.
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
		if solo-scene is 0, display regular focus stuff;
		now solo-scene is 0;
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
			if solo-scene is 0, zero the focus-link-table;
			if debugmode > 1, say "Zeroing focus stuff and allocating [N] seconds.";
			zero focus stuff; [We've just been told that we're going to need to run the engine. Let's empty the lists of images to display and begin building it anew.]
			render buffered stuff; [Gives the player some feedback to know that their command went through]
	now seconds is N.

To force allocate (N - a number) seconds:
	now seconds is 0; [This way we force the recalculation of the focus window]
	allocate N seconds.

To run the engine:
	now another-turn is 1;
	while another-turn is 1:
		now another-turn is 0;
		run the engine once;
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
			compute compulsory actions; [things that must happen]
			unless another-turn is 1, compute instinctive actions;
			unless another-turn is 1, compute automatic actions; [Automatic actions essentially cause the game to choose what the player enters and then compute turn to happen again. So this must go right at the end, and only happen if another-turn is currently 0!]
			unless another-turn is 1, compute optional actions; [Optional actions are where the player is given a choice about whether it happens or not. So this must go right at the end, and only happen if another-turn is currently 0!]
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
	if earnings > seconds: [we do this first so that any mechanics that check earnings for regularity are not calculated several times in quick succession, when "compute extra turn" is called early in the list.]
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
	now time-seconds is local-seconds;
	now time-earnings is local-earnings;
	repeat with M running through alive dying monsters:
		finally destroy M;
	if timeBombTime <= 0, follow the later time based rulebook;
	Reset Flags;
	compute flight; [Flight stuff must go last in the compute time order - the concept is it's checking if anything that happened caused the player to start flying.]
	allocate 0 seconds;
	if newbie tips is 1, say other tips.




Compute Turn ends here.

