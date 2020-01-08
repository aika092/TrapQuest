Candy Machine by Objects begins here.


[!<CandyMachine>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A candy machine is a kind of thing. A candy machine is not portable. 1 candy machine is in Dungeon32. 1 candy machine is in Woods09. 1 candy machine is in Hotel27. 1 candy machine is in Mansion04. The printed name of a candy machine is usually "[TQlink of item described]candy machine ([if the number of on-stage candy >= max-candy]no[otherwise if the recent uses of item described is 0]green[otherwise if the recent uses of item described is -1]golden[otherwise]red[end if] light)[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of a candy machine is usually "cdm". Understand "button" as candy machine.
Figure of candy machine is the file "Env/Dungeon/candymachine1.png".

To decide which figure-name is the examine-image of (C - candy machine):
	decide on figure of candy machine.

To decide which number is the button-colour of (T - candy machine):
	if the number of on-stage candy >= max-candy, decide on 0;
	if the recent uses of T > 0, decide on 16720896; [turn scarlet - red candy]
	if the recent uses of T is -1, decide on 16766720; [turn gold - gold candy]
	decide on lightModeFullGreen. [normal green]


To BackgroundRender (T - candy machine) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle button-colour of T in the current focus window at X1 by Y1 with size DX by DY.

[!<CandyMachine>@<recentUses:Integer>*

REQUIRES COMMENTING

*@!]
A candy machine has a number called recent uses.

[!<CandyMachine>@<combo:Integer>*

REQUIRES COMMENTING

*@!]
A candy machine has a number called combo.

[!<starterPackGiven:Integer>*

REQUIRES COMMENTING

*!]
starting-pack-given is a number that varies.

[!<DecideWhichNumberIsMaxCandy>+

REQUIRES COMMENTING

+!]
To decide which number is max-candy:
	if the class of the player is trick-or-treater, decide on 0;
	decide on 3.

[!<SayCandyMachineDesc>+

REQUIRES COMMENTING

+!]
To say ExamineDesc of (C - candy machine):
	say "A large modern vending machine with a picture of a candy in its wrapper on the front. There is a big light-up button on the front. It is currently [if the number of on-stage candy >= max-candy]off[otherwise if the recent uses of item described is 0]green[otherwise if the recent uses of item described is -1]gold[otherwise]red[end if].".

[!<CandyMachine>@<IsComboReady>+

REQUIRES COMMENTING

+@!]
Definition: a candy machine (called C) is combo-ready:
	if the combo of C is 1, decide yes;
	decide no.

[!<CandyMachine>@<IsComboInactive>+

REQUIRES COMMENTING

+@!]
Definition: a candy machine (called C) is combo-inactive:
	if the combo of C is 0, decide yes;
	decide no.

[!<ProgressCandyMachinesFromCandyMachine>+

REQUIRES COMMENTING

+!]
To progress candy machines from (M - a candy machine):
	repeat with C running through candy machines:
		if the recent uses of C > 0 and C is not M:
			now the recent uses of C is 0;
	if the combo of M > 1:
		repeat with C running through candy machines:
			now the combo of C is 0;
	otherwise if the number of combo-ready candy machines is 3:
		let M be a random combo-inactive candy machine;
		if M is candy machine:
			now the recent uses of M is -1; [this turns it gold]
			repeat with C running through candy machines:
				now the combo of C is 0.

[!<CheckTakingCandyMachine>+

REQUIRES COMMENTING

+!]
Check taking candy machine:
	try CandyObtaining the noun instead.

[!<candyObtaining:Action>*

REQUIRES COMMENTING

*!]
CandyObtaining is an action applying to one thing.

[!<CheckCandyObtaining>+

REQUIRES COMMENTING

+!]
Check CandyObtaining:
	if the noun is not candy machine, say "This verb is used for operating vending machines." instead;
	if the player is immobile, say "Aren't you a bit busy?" instead.

[!<CheckDrinkingCandyMachine>+

REQUIRES COMMENTING

+!]
Check drinking candy machine:
	try CandyObtaining the noun instead.

[!<CheckPushingCandyMachine>+

REQUIRES COMMENTING

+!]
Check pushing candy machine:
	try CandyObtaining the noun instead.

[!<CarryOutCandyObtaining>+

REQUIRES COMMENTING

+!]
Carry out CandyObtaining:
	say "You press the button[if the player is wrist bound behind] with your nose[end if]. ";
	allocate 3 seconds;
	let C be nothing;
	if starting-pack-given is 0:
		repeat with N running from 1 to 3:
			let Z be a random off-stage standard tier candy;
			if the number of held toffee is 0, now Z is a random off-stage toffee;
			now Z is held by the player;
			say "The machine spits out a [Z]!";
		say "You take all the candy as the light on the front of the candy machine turns off.";
		increase the recent uses of the noun by 1;
		increase the combo of the noun by 1;
		now starting-pack-given is 1;
	otherwise if the number of on-stage candy >= max-candy:
		say "Nothing seems to happen.";
	otherwise if the recent uses of the noun is -1:
		now C is a random off-stage top tier candy;
		if C is nothing, say "Nothing seems to happen. You must be holding all the golden candy...";
	otherwise if the recent uses of the noun is 0:
		now C is a random off-stage standard tier candy;
		if C is nothing, say "Nothing seems to happen. You must be holding all the normal candy...";
	otherwise:
		now C is a random off-stage low tier candy;
		if C is nothing, say "Nothing seems to happen. You must be holding all the bad candy...";
	if C is candy:
		now C is held by the player;
		say "The machine spits out a [C]! You pick it up. ";
		let F be a random number between 0 and 4;
		if weight gain fetish is 1, decrease F by the fat-weight of the player / 10;
		if player-hunger > F and the player is not overly full:
			say "You can't help yourself - you eat it right away!";
			try TQEating C;
		if the recent uses of the noun is -1, increase the recent uses of the noun by 1; [You don't get a green after a gold, it goes straight to red]
		increase the recent uses of the noun by 1;
		if the number of on-stage candy >= max-candy:
			say "The light on the machine goes out.";
		otherwise if the recent uses of the noun is 1:
			say "The light on the machine turns red.";
		increase the combo of the noun by 1;
		progress candy machines from the noun.

[!<ReportTQEatingCandy>+

REQUIRES COMMENTING

+!]
Report TQeating candy:
	if there is a candy machine in the location of the player and the number of on-stage candy is max-candy - 1, say "The candy machine's light turns back on.".

[!<ReportGoingEastWhenThePlayerIsInDungeon32>+

REQUIRES COMMENTING

+!]
Report going east when the player is in Dungeon32:
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: Candy machines are your primary source of food. You'll only be able to have a maximum of three at any time so you'll need to periodically eat some and then come back to machines for more. There's one in each region of the game. After you use a candy machine its light will turn red, and it'll only give you worse candy until you use a different candy machine in other regions. This means that you'll need to keep moving between regions to get the best candy. If you use all the candy machines except one in a row, the final one will turn golden and give you an extra special candy when you use it!  It's strongly recommended for you to use this one now, as it'll give you your 'starting pack' of three candies. You can either eat some immediately or wait until you actually get hungry.[roman type][line break][or][stopping]".



Candy Machine ends here.

