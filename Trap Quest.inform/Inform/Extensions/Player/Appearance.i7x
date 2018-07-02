Appearance by Player begins here.


[!<DecideWhichNumberIsThePerceivedBimboInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the perceived-bimbo-influence of (C - a thing):
	decide on 0.

appearance-explained is a number that varies.

To explain appearance:
	now appearance-explained is 1;
	let A be the appearance of the player;
	now appearance-explained is 0.

[!<DecideWhichNumberIsTheAppearanceOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the appearance of the player: [When an NPC looks at the player, how slutty do they look?]
	let A be 0;
	increase A by (the number of live things penetrating a body part * 3);
	if appearance-explained is 1, say "After sex status, outrage is [A]; ";
	increase A by cumulative-outrage-level;
	if appearance-explained is 1, say "After clothing & nudity, outrage is [A]; ";
	repeat with C running through worn wearthings:
		if C is currently visible:
			increase A by the perceived-bimbo-influence of C;
			[if diaper quest is 1 and C is knickers and C is not diaper and asshole is not lewdly exposed, increase A by 3; [Dignified people don't have their underwear visible]]
	if appearance-explained is 1, say "After magic clothing effects, outrage is [A].";
	if A < 0, decide on 0;
	if A > 20, decide on 20;
	decide on A.


[!<outrageTarget:Thing>*

REQUIRES COMMENTING

*!]
outrage-target is a thing that varies. 


[!<DecideWhichNumberIsCumulativeOutrageLevel>+

REQUIRES COMMENTING

+!]
To decide which number is cumulative-outrage-level:
	let A be appearance-outrage-level;
	let O be A / 2;
	repeat with C running through worn currently at least partially visible wearthings:
		if the outrage of C > O, increase O by 1;
	repeat with C running through body parts:
		if the outrage of C > O, increase O by 1;
	if O > A, decide on A; [wearing twenty outrage 2 items shouldn't be outrage 20 overall]
	if appearance-explained is 1, say "(cumulative outrage level is [O]) ";
	if O > 20, decide on 20;
	decide on O.


[!<appearanceOutrageTarget:Thing>*

REQUIRES COMMENTING

*!]
appearance-outrage-target is a thing that varies. 

[!<DecideWhichNumberIsAppearanceOutrageLevel>+

Here we decide what is the most embarrassing visible item of clothing OR BODY PART the player is wearing.

+!]
To decide which number is appearance-outrage-level:
	let O be 0;
	now appearance-outrage-target is arms;
	repeat with C running through worn currently at least partially visible wearthings:
		let OC be the outrage of C; [to make sure we only spend the CPU cycles to calculate it once]
		if OC > O:
			now O is OC;
			now appearance-outrage-target is C;
	repeat with C running through body parts:
		let OC be the outrage of C; [to make sure we only spend the CPU cycles to calculate it once]
		if OC > O:
			now O is OC;
			now appearance-outrage-target is C;
	if appearance-explained is 1, say "(highest outrage thing is [appearance-outrage-target] with outrage [O]) ";
	decide on O.

calculated-appearance-outrage-level is a number that varies.

To update appearance level:
	now calculated-appearance-outrage-level is appearance-outrage-level;
	if diaper quest is 1, now calculated-cringe-level is appearance-cringe-level.


Appearance ends here.

