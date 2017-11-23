Haunted Mirror Trap by Traps begins here.


A haunted mirror trap is a kind of trap.  There are 5 pressure haunted mirror traps.

This is the spawn initial mansion mirror traps rule:
	repeat with N running from 1 to 3:
		let R be a random trappable placed haunted room;
		let T be a random off-stage haunted mirror trap;
		unless there is a haunted mirror trap in R, deploy T in R.
The spawn initial mansion mirror traps rule is listed first in the set up mansion traps rules.

The description of a mirror trap is "A large mirror against one wall.  It seems to be intelligent, or possessed, and is capable of controlling you while you look at it.".

times-mirrored is a number that varies.
mirror-triggered is a number that varies. [We make sure to not cause double mirrors in one turn by flagging when it's happened and the player needs a chance to act.]
mirror-delayed is a number that varies.  [We need to have a way to stop the mirror activating over several turns until the current mirror episode has finished.]
A mirror attack is a kind of object.

Definition: a mirror attack (called Y) is acceptable:
	decide no.

Definition: a mirror attack (called Y) is one-turn: [Does it always all happen within a single turn?]
	decide yes.

To compute resolution of (M - a mirror attack):
	say "Bug - this mirror attack ([M]) has no coded function!".

To trigger (Y - a haunted mirror trap):
	now Y is revealed;
	now Y is not untriggered;
	say "A section of the wall in front of you slides away, revealing a large mirror.  ";
	if times-mirrored is 0:
		compute resolution of mirror nipple tweak;
	otherwise:
		compute mirror;
	now the motion of the player is 0;
	increase times-mirrored by 1;
	now mirror-triggered is 1;
	now the reset-timer of Y is 250.

To compute turn trap effect of (T - a haunted mirror trap):
	if resting is 0 and mirror-triggered is 0 and wanking is 0 and player-urinating is 0 and mirror-delayed is 0 and the player is not immobile:
		say "The mirror in this room tries to grab your focus[one of] with some kind of demonic power[or][stopping]!";
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
		say "You manage to keep your focus away, preventing it from capturing your stare.  You should leave the room before you're forced to look at it again!".

mirror nipple tweak is a mirror attack.
Definition: mirror nipple tweak is acceptable:
	decide yes.
To compute resolution of (X - mirror nipple tweak):
	let C be bottom level lactation cover;
	say "Your reflection winks at you, and then its hands begin to rise[if C is clothing], sneaking underneath the [C][end if] until they reach their nipples.  [if times-mirrored is 0]You jump with surprise as you realise the mirror isn't lying - you are also doing this yourself!  Your expression changes to one of sinister glee, and you realise that you have somehow been possessed by the mirror, and it temporarily has control over your entire body.  [end if]You are absolutely powerless to fight back as you watch yourself begin to twist your nipples roughly, until you squeal with pain.  Or rather you would if you could, but instead your face just turns into one of lustful glee.  [if times-mirrored is 0]It's almost as if the possession can also influence your thoughts, because despite the pain, you're also getting aroused!  [otherwise]Once again, you find the almost unbearable pain somehow turning you on![end if]";
	DelicateUp 1;
	Arouse 1000;
	if times-mirrored is 0, say "You feel the possessing spirit lose control of your body as you finally manage to tear your eyes away from the mirror.".

mirror forced masturbation is a mirror attack.
Definition: mirror forced masturbation is acceptable:
	now auto is 1;
	if the player is able to masturbate:
		now auto is 0;
		decide yes;
	now auto is 0;
	decide no.
Definition: mirror forced masturbation is one-turn:
	decide no.

To compute resolution of (X - mirror forced masturbation):
	now auto is 2;
	let K be a random worn top level protection clothing;
	say "Your reflection moves [if the largeness of breasts < 4 and the size of penis < 7 and the player is male]his[otherwise]her[end if] hand down to your [if K is clothing][K] and begins rubbing enthusiastically[otherwise if the player is male][player-penis] and begins stroking gleefully[otherwise][vagina] fingering herself gleefully[end if].  [one of]It's a very weird feeling, being mind controlled and being forced to watch it.  [or][stopping]";
	if the player is not a bit horny:
		say "[if the player is male]Your [player-penis] soon reaches full mast as your arousal quickly builds[otherwise]Your arousal quickly builds as your arm breaks into a steady rhythm[end if].  ";
		now the arousal of the player is 5000;
		update arousal;
	say "Your own face [one of][or]once again [stopping]turns into a lewd grin in front of you, seemingly controlling not only your actions but your thoughts.";
	try masturbating.

mirror breast growth is a mirror attack.
Definition: mirror breast growth is acceptable:
	if diaper quest is 1, decide no;
	if the largeness of breasts < max breast size:
		decide yes;
	decide no.

To compute resolution of (X - mirror breast growth):
	let C be bottom level lactation cover;
	say "Your reflection winks at you, and then its hands begin to rise[if C is clothing], sneaking underneath the [C][end if] and groping your chest.  You watch as you are forced to massage your own breasts lovingly, with a cheeky grin stretched across your face.  [if the player is able to speak]You even snigger out loud[otherwise]Your face mimes silent laughter[end if] as your breasts visibly expand!";
	BustUp 4.

mirror hip growth is a mirror attack.
Definition: mirror hip growth is acceptable:
	if diaper quest is 1, decide no;
	if the thickness of hips < max ass size:
		decide yes;
	decide no.

To compute resolution of (X - mirror hip growth):
	say "Your reflection winks at you, and then its hands move behind and out of sight, to its [ShortDesc of hips].  You watch as you are forced to lewdly massage your own buttocks, with a cheeky grin stretched across your face.  [if the player is able to speak]You even snigger out loud[otherwise]Your face mimes silent laughter[end if] as your hips visibly expand!";
	HipUp 1.

mirror cum consumption is a mirror attack.
Definition: mirror cum consumption is acceptable:
	if (the semen coating of face > 0 or the semen coating of breasts > 0 or (the semen volume of vagina > 0 and the player is not pussy protected)) and the player is able to eat:
		decide yes;
	decide no.

To compute resolution of (X - mirror cum consumption):
	say "Your reflection [if the semen volume of vagina > 0 and the player is not pussy protected]shoves a hand into your [vagina], digging out a scoop of [semen][otherwise if the semen coating of face > 0]collects some of the [semen] on its face with two fingers[otherwise]collects some of the [semen] on its [BreastDesc] with two fingers[end if].  You [if the semen taste addiction of the player > 15]happily allow your possessor to lick and swallow up the tasty morsel[otherwise if the semen taste addiction of the player > 11]fail to really care as your possessor licks and swallows up the salty liquid[otherwise]are powerless to resist as your possessor forces you to lick and swallow the salty goo[end if].";
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
	StomachSemenUp S.

mirror soiling is a mirror attack.
Definition: mirror soiling is acceptable:
	if (the bladder of the player > 2 and there is worn knickers) or (rectum > 3 and there is a worn total protection diaper and diaper lover >= 4) or the player is diaper focused or the player is a adult baby, decide yes;
	decide no.
Definition: mirror soiling is one-turn:
	decide no.

To compute resolution of (X - mirror soiling):
	if the player is diaper focused or the player is a adult baby:
		say "You suddenly feel your bladder [if there is a worn total protection diaper and diaper lover >= 4]and bowels [end if]fill, leaving you desperate to go!";
		now the bladder of the player is 10;
		if there is a worn total protection diaper and diaper lover >= 4:
			now rectum is 11;
	now mirror-delayed is 1;
	if rectum > 3 and there is a worn total protection diaper and diaper lover >= 4:
		say "Your reflection winks at you, and squats.  You have no control over your body, leaving you to [if the diaper addiction of the player < 3]recoil in disgust[otherwise if the diaper addiction of the player < 6]avert your eyes[otherwise if the diaper addiction of the player < 9]watch calmly[otherwise if the diaper addiction of the player < 11]watch with veiled interest[otherwise if the diaper addiction of the player < 13]watch with excitement[otherwise if the diaper addiction of the player < 15]watch with glee[otherwise if the diaper addiction of the player < 17]grin uncontrollably[otherwise]giggle with unbridled joy[end if] as the possessing spirit forces you to begin messing yourself!";
		compute messing;
	otherwise:
		say "Your reflection winks at you, and then scrunches its nose in concentration.  A split second later, you are [if the diaper addiction of the player < 3]horrified to find[otherwise if the diaper addiction of the player < 6]unhappy to find[otherwise if the diaper addiction of the player < 9]unfazed when you realize[otherwise if the diaper addiction of the player < 11]interested to find[otherwise if the diaper addiction of the player < 13]happy to find[otherwise if the diaper addiction of the player < 15]excited to find[otherwise if the diaper addiction of the player < 17]overjoyed upon noticing[otherwise]completely ecstatic to see[end if] that you are wetting yourself!";
		now delayed urination is 1;
		try urinating;
	if (the player is diaper focused or the player is a adult baby) and there is a worn total protection diaper:
		let D be a random worn total protection diaper;
		say "Looking in front of you again, you can't help but laugh uncontrollably at the pathetic dumb baby in front of you [if D is currently visible]and their[end if][if D is currently visible and the total-soak of D >= 6] deeply yellowing[end if][if D is currently visible and the mess of D > 0], brown and sagging[end if][if D is currently visible] [printed name of D], [end if][if the diaper addiction of the player < 3 and the delicateness of the player < 12]before realizing that you're looking at yourself and growling angrily[otherwise if the diaper addiction of the player < 3]before realizing that you're looking at yourself and crying uncontrollably[otherwise if the diaper addiction of the player < 6]before realizing that you're looking at yourself and blushing[otherwise if the diaper addiction of the player < 9]before realizing that you're looking at yourself and quickly stopping[otherwise if the diaper addiction of the player < 11]especially once they begin rubbing their diaper with a grin on their face, before realizing it's you and, after a hesitating for a few seconds, taking your hands off your diaper[otherwise if the diaper addiction of the player < 13]especially once they begin rubbing their diaper with a grin on their face, before realizing it's you and, after a hesitating for a few seconds, continuing to rub your diaper[otherwise if the diaper addiction of the player < 15]especially once they begin rubbing their diaper with a grin on their face, before realizing it's you and, upon realizing you have control of your body back, immediately resuming rubbing your diaper[otherwise if the diaper addiction of the player < 17]especially once they begin rubbing their diaper with a huge grin on their face, before realizing it's you and, upon realizing you have control of your body back, immediately resuming rubbing your diaper[otherwise]especially once they begin rubbing their diaper with a huge grin on their face, before realizing it's you and eagerly continuing to rub your diaper without even realizing you have control of your body back[end if].";
		if the diaper addiction of the player > 10:
			now auto is 1;
			try masturbating;
			now auto is 0;
	now mirror-delayed is 0.



Haunted Mirror Trap ends here.
