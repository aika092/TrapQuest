Woman Barbara by Monster begins here.

[
VARIETY STATES:
0: Woods exploring.
1: Dungeon crawling, has appeared randomly / waiting for event.
2: Dungeon crawling, has appeared to save you from bondage.
3: Dungeon crawling, just released minotaur.
4: Hotel crawling, has appeared randomly
5: Hotel crawling, has appeared via dildo seat scene
99: Dead
]

A woman is a kind of monster. A woman is usually intelligent. There is 1 woman. A woman has a number called delayed sluttification. A woman can be stranger or introduced. A woman is usually stranger. A woman can be correctly named or incorrectly named. A woman can be permanently dead. A woman is usually not permanently dead. The leftover-type of a woman is usually 130.

Figure of Woman 1 is the file "NPCs/MultiFloor/Woman/woman1.png". 
Figure of Woman 2 is the file "NPCs/MultiFloor/Woman/woman2.png". 
Figure of Woman 3 is the file "NPCs/MultiFloor/Woman/woman3.png". 
Figure of Woman 4 is the file "NPCs/MultiFloor/Woman/woman4.png". 
Figure of Woman 5 is the file "NPCs/MultiFloor/Woman/woman5.png". 
Figure of Woman 6 is the file "NPCs/MultiFloor/Woman/woman6.png".
Understand "player", "mysterious", "busty", "girl" as woman. 
Understand "Barbar", "Barbara", "Baby", "Barbie", "Bambi" as woman.
Understand "Barry", "Barney" as woman when WomanBimbo < 2. [Currently not possible]
The printed name of woman is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style][WomanTitle] [if item described is introduced and item described is correctly named][WomanName][otherwise if item described is introduced and item described is incorrectly named][OldWomanName][otherwise]woman[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of woman is "wo". The description of woman is usually "[WomanDesc]".

To say WomanDesc:
	if images visible is 1:
		if WomanBimbo < 3, display Figure of Woman 1;
		if WomanBimbo is 3, display Figure of Woman 2;
		if WomanBimbo is 4, display Figure of Woman 4;
		if WomanBimbo is 5, display Figure of Woman 5;
		if WomanBimbo is 6, display Figure of Woman 6;
	if WomanBimbo < 3, say "A long haired, huge breasted brunette wearing a partially torn black fishnet shirt underneath a tight black leather corset, and an extremely torn spandex pair of leggings, which provides modesty for her crotch region but little else. She is wearing a decent amount of makeup, and carrying a modern looking pistol.";
	if WomanBimbo is 3, say "A long haired, huge breasted brunette wearing an indecent sheer green dress. You can see underneath she is wearing no bra and some skimpy black briefs. She is wearing a decent amount of makeup.";
	if WomanBimbo is 4, say "A long haired, huge breasted brunette wearing nothing on her top half but a black lace bra that almost looks too small, since it covers very little. She is also wearing a skimpy pink thong. You can tell by her facial expressions that she's having more trouble than usual thinking straight.";
	if WomanBimbo is 5, say "A long haired, huge breasted brunette wearing nothing on her top half but a tiny sheer black crop top that really doesn't prevent you seeing anything. She is also wearing an almost invisible silver g-string. You can tell by her facial expressions that she's having huge amounts of trouble thinking straight.";
	if WomanBimbo is 6, say "A long haired, huge breasted brunette wearing nothing at all. Her facial expression is one of empty-headed bliss.".

To set up (M - a woman):
	now the monstersetup of M is 1;
	now the difficulty of M is 10;
	now the health of M is the maxhealth of M;
	calm M.

Definition: a woman (called M) is unfriendly:
	decide no.

Definition: a woman (called M) is objectifying the player:
	decide no.

WomanBimbo is a number that varies. WomanBimbo is usually 2.
OldWomanBimbo is a number that varies. OldWomanBimbo is usually 2.

To WomanSluttify:
	let W be a random woman;
	if W is introduced and WomanBimbo < 6 and OldWomanBimbo is WomanBimbo:
		increase WomanBimbo by 1.

To say OldWomanName:
	say WomanTitle OldWomanBimbo.

To say WomanName:
	say WomanTitle WomanBimbo.

To say WomanTitle:
	if item described is stranger:
		say "mysterious";
	otherwise if OldWomanBimbo < 4:
		say "Player";
	otherwise if OldWomanBimbo is 4:
		say "[one of]Flirty[or]Naughty[sticky random] Girl";
	otherwise if OldWomanBimbo is 5:
		say "[one of]Slutty Girl[or]Bimbo[sticky random]";
	otherwise if OldWomanBimbo is 6:
		say "[one of]Cock Lover[or]Super Slut[or]Fuck Doll[sticky random]";
	otherwise:
		say "busty".

Understand "flirty", "naughty" as woman when OldWomanBimbo is 4.
Understand "slutty", "bimbo" as woman when OldWomanBimbo is 5.
Understand "cock lover", "super slut", "slut", "fuck doll", "doll" as woman when OldWomanBimbo is 6.

To say WomanTitle (N - a number):
	if N is 0:
		say "Barney";
	otherwise if N is 1:
		say "Barry";
	otherwise if N is 2:
		say "Barbara";
	otherwise if N is 3:
		say "Barbar";
	otherwise if N is 4:
		say "Baby";
	otherwise if N is 5:
		say "Barbie";
	otherwise if N is 6:
		say "Bambi".
		
To vanish (M - a monster):
	if M is woman and M is introduced:
		remove M from play;
		now M is incorrectly named;

This is the spawn initial woman rule:
	let M be a random woman;
	if diaper quest is 0, summon M in the woods.
The spawn initial woman rule is listed in the setting up woods monsters rules.

To uniquely destroy (M - a woman): [Are there any special rules we need to follow?]
	now M is permanently dead. [This should stop her spawning again.]

Definition: a woman (called M) is human:
	decide yes.

To say LeftoverDesc (N - 129):
	say "[if the player is in the dungeon][random woman] lies unconscious on the floor here but you can hardly tell that it's her. She's on her back but her belly is so large that it covers her body from her knees to her neck. Minotaur [semen] is gradually spilling out of both her mouth and from down below, you can see that her belly is very slowly deflating.[otherwise][random woman] lies unconscious on the floor here, with demon [semen] still slowly seeping out of her gaping [vagina].[end if]".

Part 1 - Perception

To compute perception of (M - a woman):
	now M is uninterested; [Unless there has been a scene trigger, it's up to the player to interact with her]

To compute (M - a minotaur) stomping (N - a woman):
	if M is in the location of the player, say "The [M] grabs [N] by the ankles. She shrieks as she is slowly impaled onto the waiting giant minotaur [manly-penis]. It takes only a few thrusts for him to start cumming - you can tell because her belly expands at an alarming rate. An impossible amount of [semen] fills her up and with one last wail you see her sounds cut off by the [semen] flying out of her mouth. She soon loses consciousness and the [M] discards her body. She lands on her back with her belly covering most of her body.";
	otherwise say "You hear a long loud shriek from [N] which eventually turns into a bubbly gargling noise and then silence, from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if].";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Part 2 - Motion

To compute motion of (M - a woman):
	if M is introduced:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and P is not Dungeon12:
			try M going A;
		otherwise if A is a random N-viable direction and P is not Dungeon12:
			try M going A.

Part 3 - Compute Woman Spawning

The womanspawning rules is a rulebook.

A time based rule (this is the woman spawning rule):
	let W be a random woman;
	if W is off-stage and W is introduced and W is not permanently dead:
		follow the womanspawning rules;
	if W is off-stage:
		while the delayed sluttification of W > 0:
			WomanSluttify;
			decrease the delayed sluttification of W by 1;
	otherwise:
		unless W is in the location of the player or W is nearby or W is stranger:
			if a random number between 1 and 100 is 1:
				if W is correctly named, WomanSluttify;
				vanish W.

This is the woman spawning to help the player with bondage rule:
	if there is worn locked clothing and a random number between 1 and 20 is 1:
		let W be a random woman;
		deploy W with variety 2;
		rule succeeds.
The woman spawning to help the player with bondage rule is listed last in the womanspawning rules.

This is the woman spawning to release the minotaur rule:
	if a random minotaur is captive and the player is in the Dungeon and a random number between 4 and 500 < WomanBimbo:
		let W be a random woman;
		deploy W with variety 3;
		rule succeeds.
The woman spawning to release the minotaur rule is listed last in the womanspawning rules.

This is the woman spawning in the region of the player rule:
	if a random number between 1 and 80 is 1:
		let W be a random woman;
		if the player is in the Dungeon:
			deploy W with variety 1;
			rule succeeds;
		otherwise if the player is in the Woods:
			deploy W with variety 0;
			rule succeeds;
		otherwise if the player is in the Hotel:
			deploy W with variety 4;
			rule succeeds.
The woman spawning in the region of the player rule is listed last in the womanspawning rules.

A woman has a number called chair event type.

Report going when the player is in Hotel21 and Hotel21 is not discovered:
	let W be a random off-stage woman;
	if W is introduced woman and the number of monsters in Hotel21 is 0 and the number of regional interested monsters is 0:
		if W is not permanently dead:
			deploy W with variety 5;
			say "You walk into the staff room just in time to see [W] sitting down on one of the dildo chairs in this room, easing the large golden dong into her asshole. Suddenly she yelps. ";
			let R be a random number between 1 and 4;
			if R is 2 and watersports fetish is 1:
				say "[chairenemaflav][line break][second custom style]'[if WomanBimbo < 4][NameBimbo], it's not what you think!  The chairs magically heal you, so I - eeek!  Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break]She is cut off as a fountain of [urine] shoots out of her butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before she has emptied herself.";
				UrinePuddleUp a random number between 9 and 20;
				now the chair event type of W is 2;
			otherwise if R is 3 and lactation fetish is 1:
				say "[chairenemaflav][line break][second custom style]'[if WomanBimbo < 4][NameBimbo], it's not what you think!  The chairs magically heal you, so I - eeek!  Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break]She is cut off as a fountain of [milk] shoots out of her butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before she has emptied herself.";
				MilkPuddleUp a random number between 9 and 20;
				now the chair event type of W is 3;
			otherwise if R is 1:
				say "[chairenemaflav][line break][second custom style]'[if WomanBimbo < 4][NameBimbo], it's not what you think!  The chairs magically heal you, so I - eeek!  Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break]She is cut off as a fountain of [semen] shoots out of her butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before she has emptied herself.";
				SemenPuddleUp a random number between 9 and 20;
				now the chair event type of W is 1;
			otherwise:
				say "At the same time she notices you, a loud mechanical voice echoes out from the chair. [line break][first custom style]'SLUT!  SLUT! SLUT! SLUT! SLUT!'[roman type][line break][if WomanBimbo < 4][W] turns red as a beetroot as you watch her scramble to pull herself off the dildo as fast as she can.[line break][second custom style]'N-n-n-no, I'm not a slut!  I only sat on that because I heard that it magically heals you. You have to believe me!'[otherwise if WomanBimbo is 4][W] squirms uncomfortably and turns slightly red. [line break][second custom style]'I can't believe you've caught me in such an embarrassing situation...'[otherwise][W] giggles bashfully. [second custom style]'Guilty as charged!  Sluts have way more fun, though, don't you think?  Well, as long as you agree that huge cocks up your ass are fun, I guess!'[end if][roman type][line break]She stands up and walks over to you, seemingly intent in joining your exploration attempts for the time being.";
				now the chair event type of W is 4;
			now W is in the location of the player;
			now W is interested.

To say chairenemaflav:
	say "At the same time she notices you, she [if WomanBimbo < 5]screams[otherwise]yelps[end if] loudly, and you watch as her belly begins to slowly expand. [if WomanBimbo < 4]She pulls herself off the chair as quickly as she can muster[otherwise]Giggling and rubbing her swelling tummy, she slowly but surely pulls herself back off the dildo before she bursts[end if], and then falls flat on her front, clearly not quite anticipating how heavy her belly would now be. She looks up at you with a dazed expression on her face.[line break]".

To deploy (M - a woman) with variety (V - a number):
	if M is off-stage and M is introduced and M is not permanently dead:
		now the variety of M is V;
		now the health of M is the maxhealth of M;
		now M is incorrectly named;
		if V is 0 or V is 1 or V is 4:
			regionally place M;
		otherwise if V is 2:
			now M is in the location of the player;
			say "[bold type]You spot [M] trotting up to you![roman type]  She seems concerned at your state of affairs.";
			now M is interested;
		otherwise if V is 3:
			now M is in Dungeon06;
			if the player is in Dungeon06, say "[bold type]You spot [M] trotting up to you![roman type]  She grins seemingly oblivious to your presence, and then pulls the foreboding looking lever before you can react.";
			now a random minotaur is released;
			if the player is in Dungeon36, say "You hear a mechanism whirring and watch with [if the bimbo of the player < 8]horror[otherwise if the bimbo of the player < 13]terrified excitement[otherwise]delight[end if] as the minotaur's cage suddenly swings open!";
			otherwise say "You hear a mechanism whirring, and what sounds like a metal door swing open.".

Part 4 - Wandering

To compute wandering of (M - a woman):
	follow the woman wandering rules.

The woman wandering rules is a rulebook.

This is the woman helps the player remove bondage rule:
	let M be a random woman;
	if the variety of M is 2 and there is worn locked clothing and the player is not immobile:
		say "[second custom style]'[one of]Oh god, you're never going to be able to continue like that. Don't worry, I'll use this key I found!'[or]I guess I should let you have my key again, eh?'[stopping][roman type][line break]";
		say "Using the key, she unlocks your bondage. The key then crumbles to dust.";
		repeat with C running through worn locked clothing:
			now C is unlocked;
		say "[second custom style]'I hope I don't need it myself now, haha...'[roman type][line break]";
		increase the delayed sluttification of M by 1;
		rule succeeds.
The woman helps the player remove bondage rule is listed last in the woman wandering rules.

This is the woman gets bored and moves on rule:
	if a random number from 1 to 20 is 1:
		let M be a random woman;
		if M is in the Dungeon:
			let D be the best route from the location of M to Stairwell01 through placed rooms;
			unless D is nothing:
				say "[second custom style]'I think I'm going to go and revisit the Woods.'[roman type][line break][M] walks off towards the [D].";
				Vanish M;
				rule succeeds;
		otherwise if M is in the Hotel:
			let D be the best route from the location of M to Hotel01 through placed rooms;
			unless D is nothing:
				say "[second custom style]'I think I'm going to go and revisit the Woods.'[roman type][line break][M] walks off towards the [D].";
				Vanish M;
				rule succeeds;
		otherwise if M is in the Woods:
			let D be the best route from the location of M to Woods01 through placed rooms;
			unless D is nothing:
				say "[second custom style]'I think I'm going to go [one of]back and visit the Dungeon[or]visit the Hotel[purely at random].'[roman type][line break][M] walks off towards the [D].";
				Vanish M;
				rule succeeds.
The woman gets bored and moves on rule is listed last in the woman wandering rules.


Part 5 - Protection

To compute protection of (M - a woman):
	let X be M;
	repeat with U running through dangerous monsters in the location of the player:
		now X is U;
	if the player is flying:
		now M is uninterested;
	otherwise if X is M:
		compute wandering of M;
	otherwise:
		compute M protecting against X;
		
To compute (M - a woman) protecting against (X - a monster):
	if the player is monster fucked:
		if WomanBimbo > 4:
			say "[M] giggles. [line break][second custom style]'Have fun, I won't get in your way!'[roman type][line break]";
			deinterest M;
		otherwise:
			say "[M] sobs. [line break][second custom style]'I'm so sorry, I couldn't stop it!'[roman type][line break]She runs off.";
			deinterest M;
			WomanSluttify;
			Vanish M;
			if a random number between 1 and 2 is 1 and WomanBimbo < 6, increase WomanBimbo by 1;
	otherwise:
		if WomanBimbo > 4:
			say "[M] giggles. [line break][second custom style]'Have fun, I won't get in your way!'[roman type][line break]";
			deinterest M;
		otherwise:
			let prev-health be the health of X;
			compute X receiving a random number from 1 to 2 damage from M;
			if prev-health is the maxhealth of X and the health of X < the maxhealth of X, say "[AllyInstigated of X]".

To say AllyDamageFlav of (M - a woman) on (X - a monster):
	say "[one of][line break][second custom style]'Let's do this!'[roman type][line break][or][line break][second custom style]'Take this!'[roman type][line break][stopping][line break][M] knees the [X] with all her strength.".

To say AllyInstigated of (X - a monster):
	if X is intelligent, say "The [X] looks really pissed off now!  [line break][variable custom style][if the bimbo of the player < 5]That wasn't the plan... wait why is [he of X] looking at ME angrily?![roman type][line break][otherwise if the player is able to speak]'I'm sorry, that wasn't my fault!'[roman type]  The [X] doesn't seem to care what you say, and seems mainly angry with you![otherwise]Uh-oh... why do I get the feeling I'm going to be the one in trouble here?[roman type][line break][end if]".

Part 6 - Conversation

To compute talk option (N - 1) to (M - woman):
	if the variety of M is 0 and M is stranger:
		say "[BimboGreet]";
	otherwise:
		if the bimbo of the player < 4:
			say "[first custom style]'Hi again, [OldWomanName].'";
		otherwise if the bimbo of the player < 8:
			say "[first custom style]'Hey there, [OldWomanName] what's up?'";
		otherwise if the bimbo of the player < 10:
			say "[second custom style]'Hey hey [OldWomanName], looking good!'";
		otherwise if the bimbo of the player < 12:
			say "[second custom style]'Hiya [OldWomanName], damn you're sexy!'";
		otherwise if the bimbo of the player < 15:
			say "[second custom style]'Ooh [OldWomanName], I want you bad!'";
		otherwise:
			say "[second custom style]'Hey [OldWomanName], looking for a fuck?'";
		say "[roman type][line break]";
	if the variety of M is 0 and M is stranger:
		say "[second custom style]'Oh shit!  Wait... oh my god, are you another player?  I didn't realise there was more than one of us playing at the same time!  [if the faint count of the player > 1]No wonder the map keeps resetting around me... [otherwise if the faint count of the player is 1]No wonder the map shifted around me a while ago!  [end if]I wonder if we're allowed to work together?  What's my name?  My name... I can't think of anything except 'Barbara'... but I don't think that is my real name...'[roman type][line break]";
		now M is introduced;
		now M is correctly named;
		now the text-shortcut of M is "ba";
	otherwise if the variety of M is 0:
		if M is interested:
			say "[second custom style]'I hate being alone in these woods...'[roman type][line break]";
		otherwise:
			if WomanBimbo < 3:
				say "[second custom style]'Hi again. Glad to see you're still coping[if OldWomanBimbo is not WomanBimbo]. My name is [WomanName] now, by the way.'[otherwise].'[end if][roman type][line break]";
			otherwise if WomanBimbo < 5:
				say "She grins at you. [line break][second custom style]'[if OldWomanBimbo is not WomanBimbo]That's not my name, it's [WomanName]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if OldWomanBimbo is not WomanBimbo]That's not my name, my new super sexy name is [WomanName]!'[otherwise]Look who it is!  Did you always look so fucking hot?  I'm jealous!'[end if][roman type][line break]";
			now M is correctly named;
	otherwise if the variety of M is 1:
		if M is interested:
			say "[second custom style]'There are lots of sex dolls around here at the moment, aren't there?'[roman type][line break]";
		otherwise:
			if WomanBimbo < 3:
				say "[second custom style]'Hi again. Glad to see you're still coping.[if OldWomanBimbo is not WomanBimbo]  My name is [WomanName] now, by the way.'[roman type][line break]";
			otherwise if WomanBimbo < 5:
				say "She grins at you. [line break][second custom style]'[if OldWomanBimbo is not WomanBimbo]That's not my name, it's [WomanName]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if OldWomanBimbo is not WomanBimbo]That's not my name, my new super sexy name is [WomanName]!'[otherwise]Look who it is!  Did you always look so fucking hot?  I'm jealous!'[end if][roman type][line break]";
			now M is correctly named;
	otherwise if the variety of M is 2:
		if M is correctly named:
			if WomanBimbo < 3:
				say "[second custom style]'You should be more careful, bondage is really difficult to deal with.'[roman type][line break]";
			otherwise if WomanBimbo < 5:
				say "[second custom style]'Bondage might sound fun, but it really makes it a lot more difficult to play the game.'[roman type][line break]";
			otherwise:
				say "[second custom style]'You don't know how tempting it was to have my way with you before setting you free~'[roman type][line break]";
		otherwise:
			if WomanBimbo < 3:
				say "[second custom style]'Hi again. Glad to see you're still coping.[if OldWomanBimbo is not WomanBimbo]  My name is [WomanName] now, by the way.'[roman type][line break]";
			otherwise if WomanBimbo < 5:
				say "She grins at you. [line break][second custom style]'[if OldWomanBimbo is not WomanBimbo]That's not my name, it's [WomanName]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if OldWomanBimbo is not WomanBimbo]That's not my name, my new super sexy name is [WomanName]!'[otherwise]Look who it is!  Did you always look so fucking hot?  I'm jealous!'[end if][roman type][line break]";
			now M is correctly named;
	otherwise if the variety of M is 3:
		if M is correctly named:
			if WomanBimbo < 3:
				say "[second custom style]'The minotaur is very tough. Now that it's released, you should probably get the hell out of here!'[roman type][line break]";
			otherwise if WomanBimbo < 5:
				say "[second custom style]'I doubt you can take the minotaur. Unless you've got a bit of blind optimism like me, you should probably head back up to the woods.'[roman type][line break]";
			otherwise:
				say "[second custom style]'If you want to have some fun, stay down here with me!'[roman type][line break]";
		otherwise:
			if WomanBimbo < 3:
				say "[second custom style]'Hi again. Glad to see you're still coping[if OldWomanBimbo is not WomanBimbo]. My name is [WomanName] now, by the way.'[otherwise].'[end if][roman type][line break]";
			otherwise if WomanBimbo < 5:
				say "She grins at you. [line break][second custom style]'[if OldWomanBimbo is not WomanBimbo]That's not my name, it's [WomanName]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if OldWomanBimbo is not WomanBimbo]That's not my name, my new super sexy name is [WomanName]!'[otherwise]Look who it is!  Did you always look so fucking hot?  I'm jealous!'[end if][roman type][line break]";
			now M is correctly named;	
	otherwise if the variety of M is 4:
		if M is interested:
			say "[second custom style]'Hmm, robots are kind of sexy, I guess?'[roman type][line break]";
		otherwise:
			if WomanBimbo < 3:
				say "[second custom style]'Hi again. Glad to see you've made it this far.[if OldWomanBimbo is not WomanBimbo]  My name is [WomanName] now, by the way.'[roman type][line break]";
			otherwise if WomanBimbo < 5:
				say "She beams at you. [line break][second custom style]'[if OldWomanBimbo is not WomanBimbo]That's not my name, it's [WomanName]!'[otherwise]Hey there, honey.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if OldWomanBimbo is not WomanBimbo]I'm not called that any more, my name is obviously [WomanName]!'[otherwise]Look who it is!  Aren't you just LOVING this fetish hotel?'[end if][roman type][line break]";
			now M is correctly named;
	otherwise if the variety of M is 5:
		say "[second custom style]'[one of][if WomanBimbo < 4]Let's not talk about what just happened okay?  Please?'[otherwise if WomanBimbo is 4]I can't believe I let you catch me in such a humiliating moment. Maybe I really am a slut...'[otherwise]I feel so much better after sitting on that dildo chair!  Yum!'[end if][or][if WomanBimbo < 4]Come on, let's try and find the exit to this crazy hotel.'[otherwise]Exploring the hotel with you is so much fun!'[end if][stopping][roman type][line break]";
		if OldWomanBimbo is not WomanBimbo, say "[second custom style]'My name is [WomanName] now, by the way.'[roman type][line break]";
		now M is correctly named;
	now OldWomanBimbo is WomanBimbo;
	now M is interested;
	calm M.


[!<SayBimboGreet>+
REQUIRES COMMENTING
+!]
To say BimboGreet:
	let M be conversation-target;
	if the player is not able to speak:
		say "[variable custom style][muffled sounds]";
	otherwise if M is a monster:
		if M is mating and M is male:
			say "[variable custom style]'Hey there baby daddy...'";
		otherwise if the bimbo of the player < 4:
			if M is royal guard and the class of the player is princess:
				say "[second custom style]'Greetings, loyal subject!'";
			otherwise:
				say "[first custom style]'Hi there, pleased to meet you.'";
		otherwise if the bimbo of the player < 8:
			if M is royal guard:
				if the class of the player is princess, say "[second custom style]'Keep up the good work, guard!'";
				otherwise say "[first custom style]'Hey, what's up, dude?'";
			otherwise:
				say "[first custom style]'Hey, what's up?'";
		otherwise if M is intelligent and the player is a sissy and the delicateness of the player > the bimbo of the player and the player is upright and there is worn knee-length or shorter clothing:
			let H be 0;
			if there are worn heels, now H is the hindrance of a random worn heels;
			say "Placing one foot in front of the other, you [if H > 0]awkwardly [end if]pull up the sides of your [random worn knee-length or shorter clothing] and bend at the knees whilst keeping your back straight. [second custom style]'Pleased to meet you[if M is female], Ma'am[otherwise if M is male], Sir[end if].'";
		otherwise if the bimbo of the player < 10:
			say "[second custom style]'Hey there babe.'";
		otherwise if the bimbo of the player < 12:
			say "[second custom style]'Hey there sexy...'";
		otherwise if the bimbo of the player < 15:
			say "[second custom style]'Hey sexy, like what you see?'";
		otherwise:
			say "[second custom style]'Hey [one of]sexy[or]sailor[sticky random], looking for a good time?'";
	otherwise if M is slimegirl:
		say "[variable custom style]'[if M is worn]Err, can you hear me in there?[otherwise]Hey, what's up?[end if]'";
	say "[roman type][line break]".

	
To compute talk option (N - 2) to (M - a woman):
	if M is uninterested or M is stranger:
		say "She doesn't seem to realise you're talking to her.";
	otherwise if the variety of M is 0:
		if WomanBimbo < 3:
			say "[one of][line break][second custom style]'How did I get this gun?... You don't want to know what I had to do to get this gun. And it turns out, you get very little ammo.'[roman type][line break]She looks ashamed.[or][line break][second custom style]'They tricked you into thinking this was just a normal game?  Those bastards, do they not get enough money from the rest of us?!  I'm here because I have huge debts I can't pay off, so I'm risking my mind and body for a chance at winning some of the prize money.'[roman type][line break][or][line break][second custom style]'Am I a man or a woman in real life?  I... can't remember... if I was a man, I doubt I am any more.'[roman type][line break][in random order][line break]";
		otherwise if WomanBimbo < 5:
			say "[second custom style]'[one of]How do I keep my hair this dark?  I don't know, it never seems to change for me. No idea why, I'd love to try out being a blonde!'[or]Am I a man or a woman in real life?  I'm clearly a woman!  I think.'[or]The makeup?  Well those mannequins keep coming, and sometimes it's just less risky to let them do what they want, and then they'll stop chasing you. You wouldn't want to get caught by something a lot scarier because you are already too beaten up now, would you?'[in random order][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]What happened to me?  Lots of fun things, that's what!'[or]I'm sorry I have no idea what you just said, I was too busy thinking about [manly-penis]s.'[or]Escape?  Why would I want to escape?'[in random order][roman type][line break]";
	otherwise if the variety of M is 1 or the variety of M is 2:
		if WomanBimbo < 3:	
			say  "[second custom style]'[one of]Why am I back down here?  Well the shop and altar are often useful, and until the royal guards turn aggressive it's a bit safer than anywhere else.'[or][if there is an alive minotaur]The minotaur?  There's a lever in the prison guard's room that I bet releases him, but I'm too scared to try it.'[otherwise]I can't believe you have slain the minotaur either!  You're amazing!'[end if][or]The royal bed?  I think it heals you to full, but I'm not sure it's worth it, I bet it also helps turn you into a bimbo.'[in random order][roman type][line break]";
		otherwise if WomanBimbo < 5:	
			say  "[second custom style]'[one of]Why am I back down here?  Well the sex dolls are easy to beat, and that shopkeeper is just so delicious...'[or][if a random minotaur is captive]The minotaur?  There's a lever in the prison guard's room that I'm always tempted to try out...'[otherwise]I can't believe you have slain the minotaur either!  You're amazing!'[end if][or]The statue with the huge penis?  Yeah it somehow magically heals your orifices, and it helps you get used to the taste of semen, which is a good thing, right?'[in random order][roman type][line break]";
		otherwise:
			say  "[second custom style]'[one of]Why am I back down here?  Well I wanted to see if I could beat up a royal guard. Turns out I can't, but don't worry, he gave me a consolation prize! *giggle*'[or][if a random minotaur is captive]The minotaur cage?  There's a lever somewhere apparently, and when I find it I'm definitely going to try it out!'[otherwise]I can't believe you have slain the minotaur either!  I kind of wish I'd tried my self first though...'[end if][in random order][roman type][line break]";
	otherwise if the variety of M is 3:
		if WomanBimbo < 5:	
			say  "[second custom style]'[one of]Why am I back down here?  Can you keep a secret?  I may have pulled the lever for the minotaur!  Tee hee!'[or]If I were you, I've leave the Dungeon before it finds you!'[or]I don't know what happens if the minotaur catches you, but something tells me it's pretty unique!'[cycling][roman type][line break]";
		otherwise:
			say  "[second custom style]'[one of]Why am I back down here?  To [']fight['] the minotaur, of course, silly!'[or]Yep, I've let it out!  If I were you, I've leave the Dungeon before it finds you!  Unless you want to join in with the fun?'[or]I don't know what happens if the minotaur catches you, that's why I want to find out!'[cycling][roman type][line break]";
	otherwise if the variety of M is 4 or the variety of M is 5:
		if WomanBimbo < 4:
			say "[second custom style]'[one of]I'm still looking for the way out. I hope you haven't fallen into complete depravity yet, have you?'[or]From the looks of it, I'd say that the mechanic looks like he's probably the most dangerous of the lot. But it's just a hunch.'[or]I'd just had way too much trouble with those vines, so I came up here to get away from here. And now I have to deal with robots!  Grr!'[in random order][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]I'm getting myself some deliciously thick robot cock!  What about you?'[or]I don't know who's the strongest here, but it's definitely not me!  Tee hee.'[or]Ooh, yes, you must try the modification machine in room 101 - I feel much more ready to [']take on['] the monsters now, if you know what I mean.'[in random order][roman type][line break]".
	
To compute friendly drink of (M - a woman):
	if M is uninterested or M is stranger:
		say "She doesn't seem to realise you're talking to her.";
	otherwise:
		say "[second custom style]'I'm sorry, I've got nothing!'[roman type][line break]";


Woman Barbara ends here.

