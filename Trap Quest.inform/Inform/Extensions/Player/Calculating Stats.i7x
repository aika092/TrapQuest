Calculating Stats by Player begins here.


[!<DecideWhichNumberIsNScaled>+

REQUIRES COMMENTING

+!]
To decide which number is (N - a number) scaled:
	if N <= 5, decide on N;
	if N <= 20, decide on 5 + (((N - 5) * 2) / 3);
	decide on 15 + ((N - 20) / 2).

[!<savedStrength:Integer>*

REQUIRES COMMENTING

*!]
saved-strength is a number that varies.

[!<savedDexterity:Integer>*

REQUIRES COMMENTING

*!]
saved-dexterity is a number that varies.

[!<savedIntelligence:Integer>*

REQUIRES COMMENTING

*!]
saved-intelligence is a number that varies.

[!<savedBimbo>*

REQUIRES COMMENTING

*!]
saved-bimbo is a number that varies.

[!<BeforeDoingSomething>+

REQUIRES COMMENTING

+!]
Before doing something:
	now saved-bimbo is -1;
	now saved-intelligence is -1;
	now saved-dexterity is -1;
	now saved-strength is -1.


[!<DecideWhichNumberIsFetishBonusOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is fetish-bonus of the player:
	if tattoo-fetish is 1:
		let X be 1;
		repeat with T running through tattoos worn by the player:
			increase X by 1;
		decide on X / 2;
	otherwise if piercing-fetish is 1:
		let X be 0;
		repeat with P running through piercings worn by the player:
			increase X by 1;
		decide on X;
	otherwise if humiliation-fetish is 1:
		let X be the humiliation of the player / 8000;
		decide on X;
	otherwise if artificial-fetish is 1:
		compute enhancement;
		let X be the enhanced of the player / 10;
		decide on X;
	otherwise:
		decide on 0.


Calculating Stats ends here.

