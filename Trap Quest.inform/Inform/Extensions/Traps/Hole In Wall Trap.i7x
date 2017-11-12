Hole In Wall Trap by Traps begins here.

hole-in-wall is a trap.  The printed name of hole-in-wall is "[TQlink of item described]hole[TQxlink of item described][verb-desc of item described]".  The description of hole-in-wall is "There is a medium sized hole in one wall a couple feet above the ground.  [if the times-stuck of item described is 0]You can see a shiny golden ring sparkling in the darkness through the hole.  [end if]You would struggle to crawl through but it might be possible.".  hole-in-wall is sticky.  Understand "hole", "hole in", "wall" as hole-in-wall.  The text-shortcut of hole-in-wall is "hiw".  hole-in-wall has a number called times-stuck.  hole-in-wall is father material.

To say StickyTriggerFlav of (T - hole-in-wall):
	say "You find yourself sliding straight for the hole in the opposite wall at an alarming speed!".

To say unique-verb-desc of (T - hole-in-wall):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]enter[close bracket][as]enter [text-shortcut of T][end link]".

To say ShortDesc of (T - hole-in-wall):
	say "There is a medium sized [printed name of T] in one wall a couple feet above the ground[if there is a solid gold ring in HoleInWall].  You can see a shiny golden ring sparkling in the darkness through the hole[end if].".

To say SuddenPregTitle of (M - a thing):
	say "anonymous man".

Definition: hole-in-wall (called T) is live:
	decide yes.

Definition: hole-in-wall (called M) is family:
	if M is inseminating vagina and M is father material, decide yes; [the people that fuck you are human so we don't need to wall this off behind inhuman pregnancy]
	decide no.

This is the spawn hole-in-wall rule:
	let R be a random trappable placed modern room;
	let N be 0;
	while there is a trap in R and N < 50:
		now R is a random trappable placed modern room;
		increase N by 1;
	if N < 50:
		now hole-in-wall is in R;
		now hole-in-wall is revealed;
		if the number of rings in HoleInWall is 0:
			let A be a random off-stage ring;
			now A is solid gold;
			now A is in HoleInWall;
			set shortcut of A.
The spawn hole-in-wall rule is listed last in the set up hotel traps rules.

To say PregGrowth of (T - hole-in-wall):
	say "the unknown man's [child]".

To compute HoleInWallEntrance:
	increase the times-stuck of hole-in-wall by 1;
	repeat with P running through hole-in-wall punishments:
		if P is not hole-punishment-not-found and the priority of P is 1, now the priority of P is 2;
	now the stance of the player is 1;
	now the player is in HoleInWall;
	check immobility.

Check entering hole-in-wall:
	try HoleEntering the noun instead.

HoleEntering is an action applying to one thing.
Check HoleEntering:
	if the noun is warp portal, try entering the noun instead;
	if the noun is not hole-in-wall, say "This verb is for entering holes in walls." instead;
	if the player is immobile, say "You're currently immobile!" instead;
	if the player is upright, say "You'd need to be on your knees." instead;
	[###Selkie: what about if the player is flying?] 
	now seconds is 3;
	if the largeness of breasts > 15, say "You try but your [MediumDesc of breasts] are just too big, you won't be able to fit through!" instead.

Carry Out HoleEntering:
	say "Your top half makes it inside!  But you struggle to get your [if the largeness of belly > 3][BellyDesc][otherwise if the thickness of hips > 4][HipDesc][otherwise]butt[end if] through.  You try to push yourself back out but that doesn't work either; your [if the largeness of breasts > 3][BreastDesc][otherwise]shoulders[end if] are just too wide, you can't get them out!  You've somehow managed to get yourself stuck halfway through this hole!  [one of]You're trapped like this[or]You're once again trapped[stopping] until someone comes and helps you out!  [bold type][TQlink]wait[TQdlink][roman type].";
	compute HoleInWallEntrance.

Understand "climb through [something]", "climb into [something]", "crawl into [something]", "climb in [something]", "crawl in [something]", "crawl through [something]" as HoleEntering.

To trigger (Y - hole-in-wall):
	now hole-in-wall-turns is 0;
	let R be a random number between 2 and (50 - (the times-stuck of Y * 20));
	if the largeness of breasts > 15:
		say "Fortunately your breasts are just too big to fit through the hole and act as airbags as they cushion your collision with the wall.";
	otherwise if R > the dexterity of the player:
		say "Your front half crashes through the hole before you can stop yourself!  [one of]You try to pull backward, but your [if the largeness of breasts > 3][BreastDesc][otherwise]shoulders[end if] are just too wide, you can't get back out!  You try to go forward but your [if the thickness of hips > 4][HipDesc][otherwise]butt[end if] is too big.  You're trapped like this[or]You're once again trapped[stopping] until someone comes and helps you out!  [bold type][TQlink]wait[TQdlink][roman type].";
		compute HoleInWallEntrance;
	otherwise:
		say "You [if the times-stuck of Y > 0]are ready for it this time and [end if]manage to raise your hands in a way that prevents you from falling through the hole.  Phew!".

hole-in-wall-turns is a number that varies.

To say his of (M - hole-in-wall):
	say "his".

This is the hole-in-wall immobility rule:
	if the player is in HoleInWall, rule fails.
The hole-in-wall immobility rule is listed in the immobility rules.

To HoleWait:
	let break-wait be 0;
	while hole-in-wall-turns < 11 and the player is in HoleInWall and break-wait is 0 and delayed fainting is 0:
		say "You continue [one of]kneeling[or]waiting[or]waiting for someone to come save you[or]kneeling half inside the hole[or]waiting in the darkness[or]waiting, straining with your ears to try and hear anything[or]kneeling, your rear end poking vulnerably and maybe [i]enticingly[/i] into the room behind you[as decreasingly likely outcomes].";
		now seconds is 6;
		compute extra turn;
		if the remainder after dividing hole-in-wall-turns by 3 is 0:
			choose hole-in-wall punishment;
			unless chosen hole-in-wall punishment is hole-punishment-not-found:
				compute punishment of chosen hole-in-wall punishment;
				now break-wait is 1;
		increase hole-in-wall-turns by 1;
	if hole-in-wall-turns >= 11:
		let M be a random alive robobellboy;
		if M is nothing:
			now M is a random robobellboy;
			set up M;
		now M is in the location of hole-in-wall;
		dislodge hole-in-wall;
		calm M;
		distract M;
		now the boredom of M is 30;
		say "A little while later you feel someone gripping you by your hips!  [variable custom style]Are they going to help pull me out?[roman type][line break]You are pleased to find that indeed they are![line break][first custom style]'PLEASE REMAIN CALM, YOU ARE BEING RESCUED.'[roman type][line break]You are powerfully yet carefully extracted from your embarrassing prison.";
		now the player is in the location of hole-in-wall;
		say "You look around and see the [M], having already lost interest with you after rescuing you, is busying itself with other things.";
		check immobility.

hole-in-wall punishment is a kind of object.  hole-in-wall punishment has a number called priority.  The priority of hole-in-wall punishment is usually 2.

chosen hole-in-wall punishment is hole-in-wall punishment that varies.  hole-punishment-not-found is hole-in-wall punishment.  The priority of hole-punishment-not-found is 0.

To compute punishment of (P - hole-in-wall punishment):
	say "BUG - the hole-in-wall punishment '[P]' has no execution function!".

Definition: hole-in-wall punishment (called P) is appropriate:
	decide no.

Definition: hole-in-wall punishment (called P) is prioritised:
	if the priority of P is current-priority, decide yes;
	decide no.

To choose hole-in-wall punishment:
	now chosen hole-in-wall punishment is hole-punishment-not-found;
	now current-priority is 3;
	while chosen hole-in-wall punishment is hole-punishment-not-found and current-priority >= 0:
		now chosen hole-in-wall punishment is a random prioritised appropriate hole-in-wall punishment;
		unless chosen hole-in-wall punishment is hole-in-wall punishment, now chosen hole-in-wall punishment is hole-punishment-not-found;
		decrease current-priority by 1.


hole-spank is hole-in-wall punishment.
Definition: hole-spank (called P) is appropriate:
	decide yes.

To compute punishment of (P - hole-spank):
	now the priority of P is 1;
	say "Suddenly you feel a hand groping your butt!  [variable custom style][if the delicateness of the player < 8]What the fuck, let go of me!  [otherwise]Who's this?  [end if][roman type]All of a sudden the anonymous hand pulls back, and comes down hard with a spank!  Two, three, four, five, six!  Your rear is assaulted by a series of blows.";
	if the latex-transformation of the player > 5:
		say "You hardly feel anything thanks to your rubbery butt cheeks.";		
	otherwise:
		let pain-factor be 4;
		if there is worn ass plugging clothing:
			let K be a random worn ass plugging clothing;
			say "The plug[if K is vagina plugging]s[end if] inside of you [if K is jelldo]block[otherwise]send[end if][if K is not vagina plugging]s[end if] the vibrations of the spank [if K is jelldo]from ruining your[otherwise]deep inside your[end if] [if K is vagina plugging][fuckholes][otherwise][asshole][end if].  Ouch!";
			if K is vagina plugging, Pussyruin 2;
			if K is not jelldo, Assruin 2;
		repeat with K running through ass covering clothing:
			decrease pain-factor by a random number between 0 and 1;
		let D be a random worn diaper;
		if D is diaper:
			if D is messed:
				say "[one of]The gross squishiness of your messy diaper being spanked makes you cringe and shudder as it oozes around your loins.[or][or][cycling]";
				humiliate 150;
				DelicateUp 1;
				now pain-factor is 0;
			otherwise:
				decrease pain-factor by 2;
		if a random number between 0 and 2 < pain-factor:
			say "The spanks [if the number of ass covering clothing is 0]collide painfully with your bare ass cheeks[otherwise]still [one of]hurt[or]make you squeal[or]cause you to whimper[at random], even through your clothing[end if].  ";
			DelicateUp 1;
		otherwise:
			if there is worn ass covering clothing, say "Thanks to your [if there is a worn diaper]diaper[otherwise][random top level ass protection clothing][end if], you manage to tolerate the [one of]pain[or]punishment[cycling].";
			otherwise say "You suffer through the pain silently.";
		let I be the incontinence of the player;
		if diaper lover <= 0, now I is 3;
		if the player is able to expel and a random number between (15 - I) and 15 < the total squirtable fill of belly + (pain-factor * 3) and the latex-transformation of the player < 5 and currently-squirting is 0:
			say "The pain of the spanking episode causes you to expel your [enema].";
			asssquirt;
		otherwise if diaper lover >= 4 and I > a random number between 1 and (7 - pain-factor) and the player is full and there is a worn total protection soilable knickers:
			say "The pain from the spanking causes you to lose control of your sphincter!";
			compute messing;
		otherwise if I > a random number between 1 and (7 - pain-factor) and the bladder of the player > 4 and the delicateness of the player > 8:
			say "The pain of the spanking episode causes you to involuntarily wet yourself.";
			now delayed urination is 1;
			try urinating;
	say "Just as suddenly as he or she began, the mysterious spanker stops.  [one of]You wonder if they've gone, or whether they're still there, silently watching you[or]You listen, but can't hear anyone.  Are they still there?[or]You listen for footsteps, but hear nothing. Are they there, watching?  Or did they simply walk off and leave you, still stuck?[or]You think - [i]hope[/i] - they've gone.[at random].".


hole-wank is hole-in-wall punishment.
Definition: hole-wank (called P) is appropriate:
	if the player is not able to get horny or there is a worn chastity cage, decide no;
	if there is a worn total protection diaper, decide yes;
	decide no.

To compute punishment of (P - hole-wank):
	now the priority of P is 1;
	say "Suddenly you feel a hand groping your diaper!  [variable custom style][if the diaper addiction of the player < 8]No, don't touch that! Gross...  [otherwise]Ooh!  [end if][roman type]The hand moves down towards your [genitals].";
	if the latex-transformation of the player > 3:
		say "You hardly feel anything thanks to your rubbery genitals.  The hand soon gives up and leaves you alone.";
	otherwise:
		let wank-attempts be 0;
		while refactoryperiod <= 0 and wank-attempts < 3 and delayed fainting is 0 and the player is in HoleInWall:
			if wank-attempts is 0:
				say "The hand skilfully [if the player is male]strokes your [player-penis][otherwise]rubs your [vagina][end if] through your padding.";
			otherwise if wank-attempts is 1:
				say "The hand finds [if the player is barbie]the doll-like flatness of your [sissy-penis] and pauses as if in surprise, then presses and strokes[otherwise if the player is male]the tip of your[player-penis] and tweaks[otherwise]your clit and rubs[end if] it carefully through your diaper.";
			otherwise:
				say "Your new tormentor goes all out, using both hands to rub circles in opposite directions all over your [if the player is male][player-penis][otherwise][vagina] and clit[end if]!";
			Arouse 1000;
			let D be a random worn messed diaper;
			if D is diaper:
				say "[one of]The gross squishiness of your messy diaper being used to masturbate you makes you cringe and shudder as it oozes around your loins.[or][or][cycling]";
				humiliate 300;
				DelicateUp 1;
				DiaperAddictUp 1;
			if the number of worn for deposit only tattoos is 0 and the player is extremely horny or vagina is pushed over the edge:
				vaginally orgasm shamefully;
			increase wank-attempts by 1;
			compute extra turn;
		if refactoryperiod > 0, say "The anonymous hand's owner is clearly satisfied with that as you feel it let go, lovingly pat your bottom a couple of times for good measure, and then leave you alone.";
		otherwise say "The anonymous hand's owner decides to leave you unsatisfied.  [variable custom style][if the humiliation of the player >= 40000]Denied release again, just like I always deserve.[otherwise if the sex addiction of the player < 7]I don't even know if I'm glad or not that I didn't cum...[otherwise]Nnng... so close... please come back...[end if][roman type][line break]".

hole-strip is hole-in-wall punishment.
Definition: hole-strip (called P) is appropriate:
	let C be a random worn top level protection clothing;
	if C is diaper, decide no;
	if C is clothing, decide yes;
	decide no.

To compute punishment of (P - hole-strip):
	now the priority of P is 1;
	let C be a random worn top level protection clothing;
	say "You hear a masculine chuckle as two hands silently grab hold of your [ShortDesc of C] and ";
	if C is cursed and C is displacable:
		say "pull it away!";
		displace C;
	otherwise:
		say "yank it off of you!";
		now C is in the location of the player;
	say "[variable custom style][if the humiliation of the player < 18500]Oh god, how embarrassing![otherwise]Hey, that's mean![end if][roman type][line break]";
	if there is a worn top level protection clothing and a random number between 1 and 2 is 1, now the priority of P is 2.


hole-enema is hole-in-wall punishment.
Definition: hole-enema (called P) is appropriate:
	if asshole is actually occupied, decide no;
	decide yes.

To compute punishment of (P - hole-enema):
	now the priority of P is 1;
	say "All of a sudden you feel a hand on your butt!  [variable custom style]Uh-oh, what now?[roman type][line break]";
	let C be a random worn top level ass protection clothing;
	while C is clothing:
		if C is displacable:
			say "The anonymous man [DisplacesFlav of C].";
			displace C;
		otherwise:
			say "The unseen hands rip away your [C]!";
			destroy C;
		now C is a random worn top level ass protection clothing;
	let L be semen;
	if diaper quest is 1:
		now L is water;
	otherwise if watersports fetish is 1 and a random number between 1 and 2 is 1:
		now L is urine;
	otherwise if lactation fetish is 1 and a random number between 1 and 2 is 1:
		now L is milk;
	say "You feel the tip of some kind of thin hard cold object pushed inside your [asshole].  Moments later a warm liquid starts to fill you up!  It must be some kind of enema syringe[if diaper quest is 0]!  Somehow, maybe from the texture or consistency, you can tell you are being given a huge [L] enema[end if]!";
	assfill (belly limit / 2) with L;
	say "When the enema is finally complete, your head feels a lot lighter and your belly gurgles uncomfortably[if the humiliation of the player < public-squatting-limit].  But you can't bring yourself to expel it because you don't know who could be watching[end if]!".

hole-tattoo is hole-in-wall punishment.
Definition: hole-tattoo (called P) is appropriate:
	if there is worn belly covering clothing, decide no;
	if the number of worn tattoos is 0, decide no;
	let T be a random princess tattoo;
	if T is drawable, decide yes;
	decide no.

To compute punishment of (P - hole-tattoo):
	now the priority of P is 1;
	let T be a random princess tattoo;
	summon T;
	say "All of a sudden you hear a low electric buzzing!  [variable custom style]That can't be good.  [roman type][line break]Suddenly a sharp pain hits your lower back!";
	DelicateUp 1;
	say "You [if the delicateness of the player < 9]begrudgingly [end if]hold perfectly still as the stranger gives you a tramp stamp tattoo!  When it is complete, you can feel the magic inside the ink come alive.  Not only can you feel that it is affecting your body and mind, but even though you can't physically see the tattoo you can see a picture of it clearly in your inner mind.";
	try examining T.


hole-piercing is hole-in-wall punishment.
Definition: hole-piercing (called P) is appropriate:
	if diaper quest is 1, decide no;
	if the player is male, decide no;
	if the player is pussy protected, decide no;
	if there is a worn clitoris piercing and there is a worn clitoris lead, decide no;
	decide yes.

To compute punishment of (P - hole-piercing):
	now the priority of P is 1;
	let C be a random clitoris piercing;
	say "You feel cold smooth fingers grab hold of your [if C is worn][ShortDesc of C][otherwise]clit[end if]!  [variable custom style]Eek![roman type][line break]";
	if C is worn, now C is a random clitoris lead;
	summon C cursed;
	say "Suddenly, a hot burning sensation!";
	DelicateUp 2;
	say "You can't help but scream in pain as [if C is clitoris lead]it is heated up and a [ShortDesc of C] is attached to it[otherwise]your clitoris is pierced with a burning hot needle and a [ShortDesc of C] is slotted inside.  [end if][variable custom style][if the bimbo of the player < 12]This is not good.[otherwise]Uh-oh, I think I might be in a bit of a pickle here!  *giggle*[end if][roman type][line break]";
	try examining C.


hole-plug is hole-in-wall punishment.
Definition: hole-plug (called P) is appropriate:
	if asshole is actually occupied, decide no;
	decide yes.

To compute punishment of (P - hole-plug):
	now the priority of P is 1;
	let C be a random off-stage basic plug;
	if C is plug:
		now the size of C is the openness of asshole + 2;
		if the size of C > 10, now the size of C is 10;
		say "Suddenly you feel a hand groping your butt!  [variable custom style][if the delicateness of the player < 8]What the fuck, get off of me![otherwise]Who's this?[end if][roman type][line break]The hand quickly pulls your [list of worn total protection clothing] out of the way and then begins to slowly massage your [asshole] with a thumb.  [variable custom style][if the anal sex addiction of the player > 4 or (diaper quest is 1 and the sex addiction of the player > 8)]Ooh, that feels good...[otherwise]No, get away from there![end if][roman type][line break]The thumb retreats and then something a lot harder and larger is pressed against your entrance.  Your sphincter stretches around its bulbous body as it is slowly and smoothly pushed inside.  You are now wearing a [ShortDesc of C]!";
		repeat with D running through worn total protection clothing:
			if D is zippable:
				now D is crotch-unzipped;
			otherwise if D is displacable:
				displace D;
			otherwise:
				now D is in the location of hole-in-wall;
		summon C cursed;
		AssRuin 1;
		try examining C.


hole-gatling-fuck is hole-in-wall punishment.
Definition: hole-gatling-fuck (called P) is appropriate:
	if diaper quest is 1, decide no;
	decide yes.

To compute punishment of (P - hole-gatling-fuck):
	let F be asshole;
	choose a sex method;
	if targeted-body-part is vagina, now F is vagina;
	if F is asshole and the player is female and pregnancy fetish is 1 and a random number between 1 and 2 is 1, now F is vagina; [more chance to be vaginal if you like pregnancy]
	say "A large amount of noise begins to grow from behind you, and soon you can hear the indistinct chatter of a huge group of men.  Then out of nowhere, you feel someone gripping you by the hips!  [variable custom style]Are they going to help pull me out?[roman type][line break]";
	let C be a random worn top level protection clothing;
	if F is asshole, now C is a random worn top level ass protection clothing;
	say "Your question is answered as the hands begin to [if C is clothing]pull at your clothing[otherwise]find their way towards your [variable F][end if].  [variable custom style]No, he's going to fuck me![roman type][line break]";
	while C is clothing:
		if C is displacable:
			say "The anonymous man [DisplacesFlav of C].";
			displace C;
		otherwise:
			say "The unseen hands rip away your [C]!";
			destroy C;
		if F is vagina, now C is a random worn top level protection clothing;
		otherwise now C is a random worn top level ass protection clothing;
	now C is a random thing filling F;
	while C is a thing:
		say "The [ShortDesc of C] is removed from your [variable F]!";
		now C is in the location of the player;
		dislodge C;
		now C is a random thing filling F;
	let men-fucked be 0;
	now a hole-in-wall is penetrating F;
	while hole-in-wall-turns < 10 and the player is in HoleInWall and delayed fainting is 0:
		if men-fucked is 0, say "Soon you feel a rock-hard [manly-penis] pushing against your [variable F].  There's absolutely nothing you can do as it squeezes its way in and starts pumping in and out.  The faceless man quickly hits a very fast pace and must really enjoy your body because within seconds he is ejaculating inside of you! You feel cum shoot into your [variable F].";
		otherwise say "[one of]Another man takes his place[or]You feel another hard [manly-penis] slap against your [buttcheeks][or]Yet another man joins in[or]The manly chatter in the [location of hole-in-wall] is still just as loud as ever, and another [manly-penis] pokes at your hole[then at random]!  You [if the relevant sex addiction of hole-in-wall < 4][one of]grimace[or]squeal[or]groan[or]scrunch your eyes[or]growl[in random order][otherwise if the relevant sex addiction of hole-in-wall < 7][one of]squirm[or]shudder[or]curl your toes[or]can't help but moan[in random order][otherwise][one of]coo[or]sigh with pleasure[or]moan lewdly[or]squeal with glee[in random order][end if] as [one of]the anonymous man[or]the next stranger[or]the nameless assailant[or]your new unnamed partner[or]the mystery man[in random order] [one of]shoves his [manly-penis] inside[or]pushes his way into[or]mercilessly forces himself into[or]eases his [manly-penis] inside[or]pushes forward, filling[in random order] your [variable F].  [one of]Just like the man before him[or]Again[or]Just like before[or]Once again[or]Just like his fellow quick-trigger friends[cycling] it only takes him [one of]about ten thrusts[or]a few moments[or]a matter of seconds[in random order] [if the semen addiction of the player > 14][one of]until he is giving you that creampie you so desperately need[or]before he is giving you yet another amazing creampie[or]before he climaxes inside of you, giving you that amazing warm sticky feeling on the inside[or]and then suddenly he is finishing inside of you, marking you as his on the inside[in random order][otherwise][one of]until he is filling you with his [semen][or]before he is giving you another creampie[or]before he climaxes inside of you[or]and then suddenly he is finishing inside of you[in random order][end if].";
		if F is asshole, AssFill 2;
		otherwise WombFill 2;
		ruin F;
		increase men-fucked by 1;
		increase hole-in-wall-turns by 1;
		compute extra turn;
	say "Finally the loud sound of a crowd of men begins to die away as they bore of you and dissipate.";
	dislodge hole-in-wall.
	

Hole In Wall Trap ends here.
