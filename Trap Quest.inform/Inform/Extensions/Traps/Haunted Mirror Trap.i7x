Haunted Mirror Trap by Traps begins here.

A haunted mirror trap is a kind of trap. There are 5 pressure haunted mirror traps. The text-shortcut of a haunted mirror trap is "mrr". The printed name of a haunted mirror trap is "[TQlink of item described]haunted mirror[TQxlink of item described]".

Figure of haunted mirror is the file "Env/Mansion/mirror1.jpg".
To decide which figure-name is the examine-image of (T - a haunted mirror trap):
	decide on figure of haunted mirror.

[!<HauntedMirrorTrap>@<SayEnvironmentDesc>+

This is what is put in the room description when the trap is visible (revealed).

+@!]
To say EnvironmentDesc of (T - a haunted mirror trap):
	say "A haunted mirror sits exposed on one wall. Being here is dangerous, as it constantly threatens to catch your eye. ".

To say ShortDesc of (T - a haunted mirror trap):
	say "haunted mirror".

This is the spawn initial mansion mirror traps rule:
	repeat with N running from 1 to 3:
		let R be a random trappable placed haunted room;
		let T be a random off-stage haunted mirror trap;
		unless there is a haunted mirror trap in R, deploy T in R.
The spawn initial mansion mirror traps rule is listed first in the set up mansion traps rules.

To say ExamineDesc of (C - a haunted mirror trap):
	say "A large mirror against one wall. It seems to be intelligent, or possessed, and is capable of controlling you while you look at it.".

times-mirrored is a number that varies.
mirror-triggered is a number that varies. [We make sure to not cause double mirrors in one turn by flagging when it's happened and the player needs a chance to act.]
mirror-delayed is a number that varies. [We need to have a way to stop the mirror activating over several turns until the current mirror episode has finished.]
A mirror attack is a kind of object.

Definition: a mirror attack is acceptable: decide no.
Definition: a mirror attack is one-turn: decide yes. [Does it always all happen within a single turn?]

To compute resolution of (M - a mirror attack):
	say "Bug - this mirror attack ([M]) has no coded function!".

To trigger (Y - a haunted mirror trap):
	now Y is revealed;
	now Y is not untriggered;
	say "A section of the wall in front of you slides away, revealing a large mirror. ";
	if times-mirrored is 0:
		compute resolution of mirror nipple tweak;
	otherwise:
		compute mirror;
	now the player-motion of the player is 0;
	increase times-mirrored by 1;
	now mirror-triggered is 1;
	now the reset-timer of Y is 250.

To compute turn trap effect of (T - a haunted mirror trap):
	if resting is 0 and mirror-triggered is 0 and wanking is 0 and player-urinating is 0 and mirror-delayed is 0 and the player is not immobile and the number of things wrangling the player is 0:
		say "[bold type]The mirror in this room tries to grab your focus[one of] with some kind of demonic power[or][stopping]![roman type][line break]";
		compute mirror.

To compute time decay of (T - a haunted mirror trap):
	if the reset-timer of T - time-seconds < 200:
		if T is in the location of the player, say "The wall compartment in front of the mirror closes, concealing it from view.";
		if T is nearby, say "The [T] in the [location of T] finally stops.";
		now T is expired.

To compute mirror:
	now mirror-triggered is 1;
	if a random number between 5 and the intelligence of the player < a random number between 5 and 15:
		let M be a random acceptable mirror attack;
		compute resolution of M;
		if M is one-turn, say "You feel the possessing spirit lose control of your body as you finally manage to tear your eyes away from the mirror.";
	otherwise:
		say "You manage to keep your focus away, preventing it from capturing your stare. You should leave the room before you're forced to look at it again!".

mirror nipple tweak is a mirror attack.
Definition: mirror nipple tweak is acceptable: decide yes.
To compute resolution of (X - mirror nipple tweak):
	let C be bottom level lactation cover;
	say "Your reflection winks at you, and then its hands begin to rise[if C is clothing], sneaking underneath the [ShortDesc of C][end if] until they reach their nipples. [if times-mirrored is 0]You jump with surprise as you realise the mirror isn't lying - you are also doing this yourself! Your expression changes to one of sinister glee, and you realise that you have somehow been possessed by the mirror, and it temporarily has control over your entire body. [end if]You are absolutely powerless to fight back as you watch yourself begin to twist your nipples roughly, until you squeal with pain. Or rather you would if you could, but instead your face just turns into one of lustful glee. [if times-mirrored is 0]It's almost as if the possession can also influence your thoughts, because despite the pain, you're also getting aroused[otherwise]Once again, you find the almost unbearable pain somehow turning you on[end if]!";
	PainUp 1;
	stimulate breasts from a random haunted mirror trap;
	if times-mirrored is 0, say "You feel the possessing spirit lose control of your body as you finally manage to tear your eyes away from the mirror.".

mirror forced masturbation is a mirror attack.
Definition: mirror forced masturbation is acceptable if the player is able to automatically masturbate.
Definition: mirror forced masturbation is one-turn: decide no.

To compute resolution of (X - mirror forced masturbation):
	now auto is 2;
	let K be a random worn top level protection clothing;
	say "Your reflection moves [if the largeness of breasts < 4 and the size of penis < 7 and the player is male]his[otherwise]her[end if] hand down to your [if K is clothing][ShortDesc of K] and begins rubbing enthusiastically[otherwise if the player is male][player-penis] and begins stroking gleefully[otherwise][vagina] fingering [himself of the player] gleefully[end if]. [one of]It's a very weird feeling, being mind controlled and being forced to watch it. [or][stopping]";
	if the player is not a bit horny:
		say "[if the player is male]Your [player-penis] soon reaches full mast as your arousal quickly builds[otherwise]Your arousal quickly builds as your arm breaks into a steady rhythm[end if]. ";
		now the arousal of the player is 5000;
		update arousal;
	say "Your own face [one of][or]once again [stopping]turns into a lewd grin in front of you, seemingly controlling not only your actions but your thoughts.";
	now auto is 1;
	try masturbating;
	now auto is 0.

mirror breast growth is a mirror attack.
Definition: mirror breast growth is acceptable:
	if diaper quest is 1, decide no;
	if the largeness of breasts < max breast size:
		decide yes;
	decide no.

To compute resolution of (X - mirror breast growth):
	let C be bottom level lactation cover;
	say "Your reflection winks at you, and then its hands begin to rise[if C is clothing], sneaking underneath the [ShortDesc of C][end if] and groping your chest. You watch as you are forced to massage your own breasts lovingly, with a cheeky grin stretched across your face. [if the player is able to speak]You even snigger out loud[otherwise]Your face mimes silent laughter[end if] as your breasts visibly expand!";
	BustUp 4.

mirror hip growth is a mirror attack.
Definition: mirror hip growth is acceptable if diaper quest is 0 and the thickness of hips < max ass size.

To compute resolution of (X - mirror hip growth):
	say "Your reflection winks at you, and then its hands move behind and out of sight, to its [ShortDesc of hips]. You watch as you are forced to lewdly massage your own buttocks, with a cheeky grin stretched across your face. [if the player is able to speak]You even snigger out loud[otherwise]Your face mimes silent laughter[end if] as your hips visibly expand!";
	HipUp 1.

mirror cum consumption is a mirror attack.
Definition: mirror cum consumption is acceptable if (the semen coating of face > 0 or the semen coating of breasts > 0 or (the semen volume of vagina > 0 and the player is not pussy protected) or total drinkable condoms > 0) and the player is able to eat.

To compute resolution of (X - mirror cum consumption):
	if (the semen volume of vagina > 0 and the player is not pussy protected) or the semen coating of face > 0 or the semen coating of breasts > 0:
		say "Your reflection [if the semen volume of vagina > 0 and the player is not pussy protected]shoves a hand into your [vagina], digging out a scoop of [semen][otherwise if the semen coating of face > 0]collects some of the [semen] on its face with two fingers[otherwise]collects some of the [semen] on its [BreastDesc] with two fingers[end if]. You [if the semen taste addiction of the player > 15]happily allow your possessor to lick and swallow up the tasty morsel[otherwise if the semen taste addiction of the player > 11]fail to really care as your possessor licks and swallows up the salty liquid[otherwise]are powerless to resist as your possessor forces you to lick and swallow the salty goo[end if].";
		let S be 0;
		if the semen volume of vagina > 0 and the player is not pussy protected:
			now S is the semen volume of vagina;
			if S > 3, now S is 3;
			decrease the semen volume of vagina by S;
		otherwise if the semen coating of face > 0:
			now S is the semen coating of face;
			if S > 3, now S is 3;
			decrease the semen coating of face by S;
		otherwise if the semen coating of breasts > 0:
			now S is the semen coating of breasts;
			if S > 3, now S is 3;
			decrease the semen coating of breasts by S;
		StomachSemenUp S;
	otherwise:
		let C be a random held drinkable condom pinned clothing;
		if C is clothing:
			say "Your reflection moves [his of the player] hand down to the condom[if the used condoms of C > 1]s[end if] attached to [his of the player] [ShortDesc of C]! [one of]Wait, it's not just your reflection, you're doing it to! You can't stop yourself! [or]Once again the mirror controls your actions, eager to make you drink more [semen]. [stopping]";
			compute condom biting of C.

mirror soiling is a mirror attack.
Definition: mirror soiling is acceptable if diaper quest is 1 or (the bladder of the player > 2 and there is worn knickers) or (rectum > 3 and there is a worn total protection diaper and diaper messing >= 4) or the player is diaper focused or the player is an adult baby.
Definition: mirror soiling is one-turn: decide no.

To compute resolution of (X - mirror soiling):
	let nothing-happens be 0;
	if diaper quest is 0 and (the player is diaper focused or the player is an adult baby):
		say "You suddenly feel your bladder [if there is a worn total protection diaper and diaper messing >= 4]and bowels [end if]fill, leaving you desperate to go!";
		now the bladder of the player is 10;
		if there is a worn total protection diaper and diaper messing >= 3:
			now rectum is 11;
	now mirror-delayed is 1;
	if rectum > 3 and there is a worn total protection soilable knickers and asshole is not actually occupied and diaper messing >= 3, now voluntarySquatting is 1;
	say "Your reflection winks at you, and squats. You have no control over your body, leaving you to [if the diaper addiction of the player < 3]recoil in disgust[otherwise if the diaper addiction of the player < 6]avert your eyes[otherwise if the diaper addiction of the player < 9]watch calmly[otherwise if the diaper addiction of the player < 11]watch with veiled interest[otherwise if the diaper addiction of the player < 13]watch with excitement[otherwise if the diaper addiction of the player < 15]watch with glee[otherwise if the diaper addiction of the player < 17]grin uncontrollably[otherwise]giggle with unbridled joy[end if] as the possessing spirit forces you to begin [if voluntarySquatting is 1]messing[otherwise]wetting[end if] yourself!";
	let MR be a random haunted mirror trap in the location of the player;
	if MR is nothing, now MR is yourself;
	if voluntarySquatting is 1:
		cutshow figure of mirror cutscene 3 for MR;
		compute messing;
	otherwise if the bladder of the player > 4:
		cutshow figure of mirror cutscene 2 for MR;
		now delayed urination is 2;
		try urinating;
	otherwise:
		cutshow figure of mirror cutscene 1 for MR;
		say "Fortunately, you seem to be so empty that nothing comes out.";
		now nothing-happens is 1;
	let D be a random worn total protection diaper;
	if nothing-happens is 0 and D is diaper:
		say "Looking in front of you again, you can't help but laugh uncontrollably at the pathetic dumb baby in front of you [if D is currently visible]and their[end if][if D is currently visible and the total-soak of D >= 6] deeply yellowing[end if][if D is currently visible and D is perceived messed], brown and sagging[end if][if D is currently visible] [ShortDesc of D], [end if][if the diaper addiction of the player < 3 and the delicateness of the player < 12]before realising that you're looking at yourself and growling angrily[otherwise if the diaper addiction of the player < 3]before realising that you're looking at yourself and crying uncontrollably[otherwise if the diaper addiction of the player < 6]before realising that you're looking at yourself and blushing[otherwise if the diaper addiction of the player < 9]before realising that you're looking at yourself and quickly stopping[otherwise if the diaper addiction of the player < 11]especially once they begin rubbing their diaper with a grin on their face, before realising it's you and, after a hesitating for a few seconds, taking your hands off your diaper[otherwise if the diaper addiction of the player < 13]especially once they begin rubbing their diaper with a grin on their face, before realising it's you and, after a hesitating for a few seconds, continuing to rub your diaper[otherwise if the diaper addiction of the player < 15]especially once they begin rubbing their diaper with a grin on their face, before realising it's you and, upon realising you have control of your body back, immediately resuming rubbing your diaper[otherwise if the diaper addiction of the player < 17]especially once they begin rubbing their diaper with a huge grin on their face, before realising it's you and, upon realising you have control of your body back, immediately resuming rubbing your diaper[otherwise]especially once they begin rubbing their diaper with a huge grin on their face, before realising it's you and eagerly continuing to rub your diaper without even realising you have control of your body back[end if].";
		if the diaper addiction of the player > 10 and the player is a pervert:
			now auto is 1;
			try masturbating;
			now auto is 0;
	now mirror-delayed is 0.

mirror-stuffie is a mirror attack.
Definition: mirror-stuffie is acceptable:
	let S be a random stuffie in the location of the player;
	if S is stuffie and S is not held and S is actually summonable, decide yes;
	decide no.
To compute resolution of (M - mirror-stuffie):
	let C be a random stuffie in the location of the player;
	say "Your reflection reaches down and picks up [NameDesc of C], cuddling [him of C] close to your chest. You realise you are doing the same thing! Your hand is now stuck to [NameDesc of C] - it looks like you'll be carrying [him of C] around for a while!";
	summon C cursed with quest.

mirror-maiden is a mirror attack.
Definition: mirror-maiden is acceptable if (there is an iron-maiden in the location of the player or there is an off-stage iron-maiden) and (the number of worn messed knickers is 0 or tough-shit is 1).
To compute resolution of (M - mirror-maiden):
	let Y be a random iron-maiden in the location of the player;
	if Y is nothing, now Y is a random iron-maiden;
	if Y is not in the location of the player:
		say "Your reflection looks behind [himself of the player], at a large metal upright humanoid box that you could swear wasn't there a moment ago![line break][variable custom style]What?![roman type][line break]";
		now Y is in the location of the player;
	say "You watch your reflection with [horror the sex addiction of the player] as you take several steps backwards, and then open the door of the metal box, and step inside. The door closes in front of you, and a lock clicks shut!";
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	now iron-maiden-turns is 0;
	say DQIronMaidenFlav;
	now the source-room of Iron Maiden is the location of the player;[In case the player faints]
	now the player is in Iron Maiden;
	refresh the map-window.

Haunted Mirror Trap ends here.
