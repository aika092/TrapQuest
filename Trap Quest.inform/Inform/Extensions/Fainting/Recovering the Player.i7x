Recovering the Player by Fainting begins here.

[!<RecoverThePlayer>+

Return the player to a playable state.

+!]
To Recover the Player:
	SemenPuddleUp (the semen coating of face + the semen coating of breasts + the semen coating of thighs) / 2;
	now the semen coating of face is 0;
	now the semen coating of breasts is 0;
	now the semen coating of thighs is 0;
	now the air volume of breasts is 0;
	[now the flesh volume of thighs is 0;
	now the flesh volume of arms is 0;
	now the flesh volume of belly is 0;]
	now the squirt timer of belly is 0;
	now the throne is not filling asshole;
	now the throne is not untriggered;
	now the throne is not triggered;
	MilkPuddleUp the milk volume of breasts / 2;
	now the milk volume of breasts is the lactation rate of the player;
	now the lactation rate of the player is 0;
	now the air volume of belly is 0; [always deflate belly of air even if ass is plugged]
	let AP be a random thing penetrating asshole;
	if AP is nothing or the player is in Dungeon19:
		if AP is a thing:
			now AP is in the location of the player;
			dislodge AP;
		SemenPuddleUp the semen volume of belly / 2;
		now the soreness of asshole is 0;
		now the tolerated of asshole is 0;
		now the openness of asshole is the real openness of asshole;
		MilkPuddleUp the milk volume of belly / 2;
		if watersports mechanics is 1, UrinePuddleUp the urine volume of belly / 2;
		empty belly liquids;
		while the small egg count of belly > 0:
			decrease the small egg count of belly by 1;
			let E be a random off-stage small egg;
			if E is a thing, now E is in the location of the player;
		while the medium egg count of belly > 0:
			decrease the medium egg count of belly by 1;
			let E be a random off-stage medium egg;
			if E is a thing, now E is in the location of the player;
		while the large egg count of belly > 0:
			decrease the large egg count of belly by 1;
			let E be a random off-stage large egg;
			if E is a thing, now E is in the location of the player;
	if the player is female and the number of things penetrating vagina is 0:
		now the soreness of vagina is 0;
		now the tolerated of vagina is 0;
		now the openness of vagina is the real openness of vagina;
	if the pregnancy of the player is 0:
		cancel father material;
		if the player is female and the number of things penetrating vagina is 0:
			WombEmpty the womb volume of vagina;
			SemenPuddleUp the semen volume of vagina / 2;
			now the semen volume of vagina is 0;
	now the body soreness of the player is 0;
	now the fatigue of the player is 0;
	now the stomach-water of the player is 3;
	now the stomach-semen of the player is 0;
	now the stomach-food of the player is 2;
	if the bladder of the player + the delayed bladder of the player > 0 and watersports mechanics is 1:
		let P be a random worn bottom level pee protection clothing;
		if P is clothing:
			if P is fluid vulnerable, UrineSoakUp P by the bladder of the player + the delayed bladder of the player;
		otherwise:
			UrinePuddleUp the bladder of the player + the delayed bladder of the player;
		now the bladder of the player is 0;
		now the delayed bladder of the player is 0;
	now the stance of the player is 1;
	allocate 0 seconds;
	now last-lactated-time is 0;
	now milking is 0;
	now the alert of the player is 0;
	now delayed stand is 0;
	now delayed fainting is 0;
	now delayed urination is 0;
	now resting is 0;
	now the flesh volume of breasts is the real flesh volume of breasts;
	now the thickness of hips is the real thickness of hips;
	now the flesh volume of hips is the real thickness of hips;
	now the air volume of hips is 0;
	now the raw largeness of hair is the real largeness of hair;
	[now the fake largeness of hair is 0;]
	now the size of penis is the real size of penis;
	if the size of penis < min penis size and the player is male, now the size of penis is min penis size;
	now the arousal of the player is 0;
	if the latex-transformation of the player > 0:
		if witch is alive and witch is friendly:
			let R be a random recipe for latex curse reversal;
			unless R is in-play, now R is in Hotel25;
			let F be a random fae mushroom;
			unless F is in-play, now F is in Woods01;
		otherwise:
			now the latex-transformation of the player is 0;
	[Now we give the player some stats back]
	if the raw strength of the player < the starting strength of the player, now the raw strength of the player is the starting strength of the player;
	if the raw dexterity of the player < the starting dexterity of the player, now the raw dexterity of the player is the starting dexterity of the player;
	if the raw intelligence of the player < the starting intelligence of the player and the sex addiction of the player < 20, now the raw intelligence of the player is the starting intelligence of the player;
	now busy is 0;
	if debugmode > 0, say "Finished recovering player.".


Recovering the Player ends here.

