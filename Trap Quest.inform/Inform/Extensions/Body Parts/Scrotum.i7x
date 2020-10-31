Scrotum by Body Parts begins here.

Part 1 - Definitions

[!<Scrotum>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
scrotum is a body part. scrotum is everywhere. The text-shortcut of scrotum is "scrotum".
To say FullExamineDesc of (B - scrotum):
	say "[if the player is possessing a scrotum][TotalDesc of scrotum][ScrotumModesty][otherwise]You don't have a scrotum.[end if]".

Understand "scrotum", "balls", "bollocks", "testicles", "nutsack", "nutsac", "ballsack", "ballsac", "scrote", "testes" as scrotum.

[!<Scrotum>@<size:Integer>*

REQUIRES COMMENTING

*@!]
scrotum has a number called size. the size of scrotum is usually 0.

[!<Scrotum>@<realSize:Integer>*

REQUIRES COMMENTING

*@!]
scrotum has a number called real size. The real size of scrotum is usually 0.

[!<ScrotumIsLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: scrotum is lewdly exposed if scrotum is exposed.

To decide which number is the lewdly exposed outrage of (S - scrotum):
	decide on 11 - (the size of scrotum / 2). [allows us to easily tweak this number]

[!<ScrotumIsAtLeastPartiallyLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: scrotum is at least partially lewdly exposed if scrotum is at least partially exposed.

To decide which number is the at least partially lewdly exposed outrage of (S - scrotum):
	decide on 8 - (the size of scrotum / 2). [allows us to easily tweak this number]

[!<ScrotumIsExposed>+

REQUIRES COMMENTING

+!]
Definition: scrotum is exposed:
	if the player is not possessing a scrotum, decide no;
	if the at least partial concealer of scrotum is a thing, decide no;
	decide yes.

[!<ScrotumIsAtLeastPartiallyExposed>+

REQUIRES COMMENTING

+!]
Definition: scrotum is at least partially exposed:
	if the player is not possessing a scrotum, decide no;
	if the concealer of scrotum is a thing, decide no;
	decide yes.

To decide which number is min scrotum size points: decide on 0. [temporary]

[!<DecideWhichNumberIsMinScrotumSize>+

REQUIRES COMMENTING

+!]
To decide which number is min scrotum size:
	if min scrotum size points is 0, decide on diaper quest;
	decide on min scrotum size points + diaper quest + micro-choice.

[!<DecideWhichNumberIsCumLoad>+

REQUIRES COMMENTING

+!]
To decide which number is cumLoad:
	decide on the size of scrotum.

[!<SayShortBallsDesc>+

REQUIRES COMMENTING

+!]
To say ShortBallsDesc:
	if the size of scrotum <= 0:
		say "internal testicles";
	otherwise if the size of scrotum < 3:
		say "light, tiny balls";
	otherwise if the size of scrotum < 5:
		say "small, tight ball sac";
	otherwise if the size of scrotum < 7:
		say "average scrotum";
	otherwise:
		say "heavy, full balls".

[!<PlayerIsPossessingScrotum>+

REQUIRES COMMENTING

+!]
Definition: yourself is possessing a scrotum:
	if the player is sexed male and the size of scrotum is not 0, decide yes;
	decide no.

To say ScrotumModesty:
	if scrotum is at least partially exposed:
		let W be the at least partial concealer of scrotum;
		if W is clothing:
			say "It is [if scrotum is exposed]clearly[otherwise]partially[end if] visible [if W is actually dense]poking out of[otherwise]through[end if] your [ShortDesc of W]. ";
		otherwise:
			say "You have no clothing covering it. ";
	otherwise if the player is possessing a scrotum:
		let W be the concealer of scrotum;
		say "It can't be seen thanks to the [ShortDesc of W]. ".

previous scrotum size is a number that varies.

scrotum-flav is initially true.

To SilentlyScrotumUp (X - a number):
	now scrotum-flav is false;
	ScrotumUp X;
	now scrotum-flav is true.

To ScrotumUp (X - a number):
	now previous scrotum size is the size of scrotum;
	if fast tg is 3, now X is -1; [no text flavour]
	if bitch tattoo is worn, now X is X / 2;
	if X is 0:
		say "[if the player is possessing a scrotum]Your ballsack can't seem to grow any larger![end if]";
	while X > 0:
		decrease X by 1;
		if the size of scrotum < 10:
			increase the size of scrotum by 1;
			say "You feel your scrotum grow into a [ShortDesc of scrotum]!";
		otherwise:
			dignify 50;
			if X is 0, say "Your monster of a nutsack can't seem to grow any larger! You feel like a stud!".

To SilentlyScrotumDown (X - a number):
	now scrotum-flav is false;
	ScrotumDown X;
	now scrotum-flav is true.

To ScrotumDown (X - a number):
	now previous scrotum size is the size of scrotum;
	while X > 0:
		decrease X by 1;
		if the size of scrotum > min scrotum size:
			let R be a random number from 1 to (the pregnancy rate of the player + TG fetish);
			decrease the size of scrotum by a random number from 1 to R;
		otherwise if the player is sexed male and the size of scrotum is 0 and previous scrotum size is 0:
			say "You feel a strange pang in your crotch... you feel that your scrotum tried to shrink even further, but since you have nothing left, it can't!";
			now X is 0;
	if the size of scrotum < min scrotum size, now the size of scrotum is min scrotum size;

Scrotum ends here.