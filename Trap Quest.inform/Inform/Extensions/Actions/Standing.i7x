Standing by Actions begins here.

The ability to stand rules is a rulebook.

This is the gloryhole prevents standing rule:
	if gloryhole is penetrating a body part or gloryhole is grabbing the player:
		if auto is 0, say "The magic of the gloryhole is preventing you!";
		rule fails.
The gloryhole prevents standing rule is listed in the ability to stand rules.

This is the vines prevent standing rule:
	if the player is vine stuck:
		if auto is 0, say "Vines are pinning your wrists to the ground!";
		rule fails.
The vines prevent standing rule is listed in the ability to stand rules.

This is the xavier prevents standing rule:
	if there is a worn xavier's cunt tattoo and there is a demon lord in the location of the player:
		if auto is 0, say "You try to stand up, but your crotch tattoo seems to take control and stop you getting up from your knees in Xavier's presence!";
		rule fails.
The xavier prevents standing rule is listed in the ability to stand rules.

[!<DecideWhichNumberIsTheStandingStrengthOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the standing strength of the player:
	[This is what the player uses to try and stand up. It is the strength of the player times 13, scaled down by body soreness 10% each time.]
	decide on (the strength of the player * 13) * (10 - the body soreness of the player);

[!<DecideWhichNumberIsTheStandingCapabilityOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the standing capability of the player:
	decide on the standing strength of the player - the fatigue of the player;

[!<DecideWhichNumberIsTheStandingChallengeOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the standing challenge of the player:
	[This is what makes it more difficult for the player to stand up.]
	let W be the weight of the player;
	if ball-and-chain is worn, decrease W by the heaviness of ball-and-chain; [the ball and chain doesn't influence your ability to stand up]
	if there is a worn heels, increase W by 3 + (the heel-height of a random worn heels * 2);
	if the player is wrist bound, increase W by 3;
	if the player is wrist bound behind, increase W by 7;
	decide on W.

[!<SayStandSubduedFlavOfClothing>+

REQUIRES COMMENTING

+!]
To say StandSubduedFlav of (C - a clothing):
	say "You can't move freely whilst your [ShortDesc of C] is in the hands of a malicious enemy!".

[!<standing:Action>*

REQUIRES COMMENTING

*!]
Standing is an action applying to nothing.

[!<CheckStanding>+

REQUIRES COMMENTING

+!]
Check standing:
	if resting is 1, do nothing instead;
	if the player is in Start, say "How did you even get this message to show up?  Well played. Email aika for a prize. (NB: the prize is penis)" instead;
	if the player is in Capsule, say "There's not enough space to stand while you're lying down in the capsule." instead;
	if the player is flying, say "You're not even touching the ground!" instead;
	let B be the weight of the player;
	if the throne is triggered, dethrone the player instead;
	if the player is upright, say "You are already standing up!" instead;
	if the body soreness of the player is 10, say "Your legs and body have been ruined by this game, you're not going to be able to stand up until you get some proper rest or healing." instead;
	if the standing capability of the player <= 0, say "Your legs are completely worn out, you'll have to wait a while." instead;
	if the player is subdued:
		say "[StandSubduedFlav of random worn subduing clothing]";
		try waiting instead;
	follow the ability to stand rules;
	if the rule failed, do nothing instead;
	if the player is monster stuck:
		if the player is monster fucked, try resisting instead;
		say GrabbedStandingBlock of a random monster grabbing the player instead;
	if the stickiness of the player > 0:
		if the player is glue stuck:
			say "You try to struggle to your feet, against the pull of the glue.";
			compute glue escaping;
			if the player is glue stuck:
				do nothing instead;
		otherwise:
			say "You are stuck to the ground!" instead;
	if surrendered is 1 and the player is in danger, say "You recently surrendered, you're too scared to get back up until the [if the number of dangerous monsters in the location of the player is 1]enemy is[otherwise]enemies are[end if] gone." instead;
	repeat with M running through expectant monsters:
		now the last-interaction of M is 0; [Naughty player, standing is not submissive!]
	if the largeness of hair > 7:
		repeat with M running through dangerous flightless monsters in the location of the player: [This is the monster standing on their hair. Easier to do but requires hair length 7 or higher.]
			let H be 15 - the largeness of hair;
			increase H by 2 * the number of worn scrunchies; [Wearing scrunchies makes it harder to step on their hair.]
			if a random number between 1 and the difficulty of M > H: 
				now seconds is 6;
				say "[LongHairStandingBlock of M]" instead;
	otherwise if tutorial is 0:
		repeat with M running through dangerous intelligent flightless monsters in the location of the player: [This is the monster grabbing their hair.]
			let H be 20 - the largeness of hair;
			decrease H by 2 * the number of worn scrunchies; [Wearing scrunchies makes it easier to grab their hair.]
			if a random number between 1 and the difficulty of M > H:
				now seconds is 6;
				say "[StandingBlock of M]" instead;
	[
	Summary of standing mechanics:
	If your fatigue is greater than strength times 15 (modified by body soreness where soreness 1 is 100% and soreness 10 is 10%), you fall over.
	If your fatigue is greater than strength times 13 (same modification), you can't even attempt to stand.
	The player rolls their standing capability against the standing challenge.
	
	While struggling to stand, you can probably crawl.
	Unless your weight count is greater than your strength plus 5, you will be able to try and crawl.
	]
	if the standing capability of the player >= the standing challenge of the player:
	[if this isn't true, then the player will never be able to stand up like this]
		let R be a random number between 1 and the standing capability of the player;
		if debugmode is 1, say "Stand up check: player [R].5 vs difficulty check of [the standing capability of the player].";
		if the number of heavy body parts is 0, say "You [if the player is tired]strain[otherwise]attempt[end if] to get yourself back on your [feet][if the player is wrist bound in front] whilst your wrists are bound together in front of you[otherwise if the player is wrist bound behind] whilst your wrists are bound together behind you[end if]. ";
		otherwise say "You [if the player is tired]strain[otherwise]attempt[end if] to get the weight off your [HeavyThings] and onto your [feet][if the player is wrist bound in front] whilst your wrists are bound together in front of you[otherwise if the player is wrist bound behind] whilst your wrists are bound together behind you[end if]. ";
		if R < the standing challenge of the player and tutorial is 0:
			now seconds is 6;
			say "You don't manage it this time." instead;
	otherwise if the body soreness of the player > 0:
		say "Your legs are feeling battered and weak. [if the number of heavy body parts > 0]Your [HeavyThings] are just too huge. [end if][if there are worn heels]You are wearing [feet] that are difficult to balance on. [end if][if the player is wrist bound in front]Your wrists are bound in front of you. [otherwise if the player is wrist bound behind]Your wrists are bound behind you. [end if]There is just no way you are ever going to manage to stand up in your current state.";
		say "[bold type]You need to go find some furniture to rest on.[roman type][line break]" instead;
	otherwise if there are worn heels:
		let H be a random heels worn by the player;
		say "[if the number of heavy body parts > 0]Your [HeavyThings] are just too huge. [end if][if the player is wrist bound in front]Your wrists are bound in front of you. [otherwise if the player is wrist bound behind]Your wrists are bound behind you. [end if]You are wearing [feet] that are difficult to balance on. There is just no way you are ever going to manage to stand up in your current state." instead;
		say "[bold type]You need to [if H is cursed]find a way to remove the curse on[otherwise]remove[end if] your [printed name of H][bold type].[roman type][line break]" instead;
	otherwise if the player is wrist bound:
		let W be a random wrist bond worn by the player;
		say "[if the number of heavy body parts > 0]Your [HeavyThings] are just too huge. [end if][if the player is wrist bound in front]Your wrists are bound in front of you. [otherwise if the player is wrist bound behind]Your wrists are bound behind you. [end if]There is just no way you are ever going to manage to stand up in your current state." instead;
		say "[bold type]You need to [if W is cursed]find a way to remove the curse on[otherwise]remove[end if] your [printed name of W][bold type].[roman type][line break]" instead;
	otherwise:
		say "Your [HeavyThings] are just too huge. There is just no way you are ever going to manage to stand up in your current state. You feel hopeless. [bold type]The only way you are going to be able to stand again is if you lose some weight. [roman type]If you can't, you might as well [bold type]faint[roman type]." instead.

[!<CarryOutStanding>+

REQUIRES COMMENTING

+!]
Carry out standing:
	now seconds is 5;
	if the weight of the player > 5, increase the fat-burning of the player by the weight of the player / 4;
	now the fatimod of the player is 1;
	now stance of the player is 0.

[!<ReportStanding>+

REQUIRES COMMENTING

+!]
Report standing:
	say "You get off your knees successfully. [bold type]You are now standing.[roman type]".
Understand "arise", "get up", "unkneel", "lift me", "st" as standing.
Instead of exiting, try standing.

To say GrabbedStandingBlock of (M - a monster):
	say "[BigNameDesc of M] is stopping you from standing up!".

To say StandingBlock of (M - a monster):
	say "[BigNameDesc of M] grabs onto your [ShortDesc of hair] and stops you from standing up!".

To say LongHairStandingBlock of (M - a monster):
	say "[BigNameDesc of M] steps on your [ShortDesc of hair] and stops you from standing up!".


Standing ends here.

