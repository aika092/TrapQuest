Dressup by Every Turn begins here.


A time based rule (this is the dressup rule):
	if a random number between 1 and 100 < 2 + unlucky:
		let dressup-clothing be nothing;
		repeat with C running through worn cursed blandness clothing:
			if C is overdress or C is corset or C is skirt or C is stockings:
				if C is plentiful and a random number between 1 and 3 is 1, now dressup-clothing is C;
		repeat with C running through worn dressup clothing:
			now dressup-clothing is C;
		let C be nothing;
		if dressup-clothing is clothing:
			let R be a random number between 1 and 4;
			let E be a random off-stage evening dress;
			let P be a random off-stage plentiful crotchless panties;
			let B be a random off-stage plentiful cupless bra;
			let S be a random off-stage sequins belt;
			if diaper quest is 1:
				now E is a random off-stage onesie;
				now P is a random off-stage diaper;
				now B is a random off-stage baby booties;
				now S is a random off-stage woven stockings;
			if P is actually summonable and R is 1:
				if diaper quest is 1, say "[bold type]Suddenly, a big diaper appears on you![roman type][line break]";
				otherwise say "[bold type]A pair of crotchless panties appear on you!  How useless![roman type][line break]";
				now C is P;
			otherwise if B is actually summonable and R is 2:
				if diaper quest is 1, say "[bold type]A pair of baby booties appear on your feet![roman type][line break]";
				otherwise say "[bold type]A cupless bra appears on you!  How pointless![roman type][line break]";
				now C is B;
				now C is absorption;
			otherwise if E is actually summonable and R is 3:
				if diaper quest is 1, say "[bold type]A big cosy onesie suddenly appears around you![roman type][line break]";
				otherwise say "[spawning flavour of E]";
				now C is E;
			otherwise if S is actually summonable and R is 4:
				if diaper quest is 1, say "[bold type]A pair of woolly, frilly stockings suddenly appear on you![roman type][line break]";
				otherwise say "[bold type]A small belt with strips of sequins hanging off it appears around you!  That doesn't seem very useful.[roman type][line break]";
				now C is S;
			unless C is nothing:
				summon C cursed;
				if dressup-clothing is blandness or dressup-clothing is unidentified:
					say "Your [printed name of dressup-clothing] seems to quickly vibrate, as if it is responsible for this!";
					now dressup-clothing is dressup;
					now dressup-clothing is identified;
					say "It must be a [printed name of dressup-clothing]!";
				otherwise:
					say "Once again your [printed name of dressup-clothing] vibrates quickly, as if proud of its accomplishment.";
	otherwise if there is a worn possession clothing and a random number between 1 and 70 < 2 + unlucky + the number of worn possession clothing:
		let molested be 0;
		let H be a random worn possession clothing;[TODO: breast covering]
		if H is crotch covering:
			if the player is female:
				if the number of things penetrating vagina is 0:
					say "You shriek as a pair [one of]thick, manly[or]thin, feminine[or]dexterous, long-nailed[or][if mythical creature fetish is 1]bestial, clawed[otherwise]fluid, warmth-less[end if][at random] fingers plunge into your [vagina], unnaturally distorting your [printed name of H] as it casts an ominous glow over your inner thighs. Shivers run up your spine as the clammy digits stroke your inner walls, unceremoniously violating you[if the number of monsters in the location of the player > 0] in full view of the [printed name of a random monster in the location of the player][otherwise] without so much as a second's warning[end if]. You can only claw helplessly at the possessed [clothing-material of H] until it stops, pleasure, humiliation, and raw [if the bimbo of the player < 14]terror[otherwise]exhilaration[end if] bubbling up from your loins at having your clothes treat you [one of]like nothing but a toy to be used[or]like their personal sex guinea pig[or]like nothing but a simple plaything[at random].";
					ruin vagina;
					humiliate 15;
					arouse 50 + the vaginal sex addiction of the player * 5;
					now molested is 1;
			otherwise if the player is male:
				if the size of penis > a random number between 3 and 12:
					say "You yelp as a [one of]rough, manly[or]soft, feminine[or][if mythical creature fetish is 1]bestial, clawed[otherwise]cold, warmth-less[end if][at random] hand wraps itself around your [ShortDesc of penis], unnaturally distorting your [printed name of H] as it casts an ominous glow over your inner thighs. Shivers run up your spine as the clammy fingers firmly pump you from tip to shaft, as if trying to literally feed your junk back into your body. You can only claw helplessly at the possessed [clothing-material of H] until it stops, pleasure, humiliation, and raw [if the bimbo of the player < 14]terror[otherwise]exhilaration[end if] bubbling up from your loins at having your clothes treat you [one of]like nothing but a toy to be used[or]like their personal sex guinea pig[or]like nothing but a simple plaything[at random].";
					PenisDown 1;
					humiliate 10;[not as humiliating to get jerked off!]
					arouse 75 - 5 * (the size of penis - 10);[the smaller the penis the greater the arousal increase]
					now molested is 1;
			if molested is 0 and the number of things penetrating asshole is 0:
				say "You start and look over your shoulder as something cool and wet prods your sphincter. Your [printed name of H] distort unnaturally, casting an ominous glow over your inner thighs as a dexterous tongue pushes through your anal ring. It mercilessly probes your sensitive little hole, knowing you can only claw helplessly at the possessed [clothing-material of H] until [italic type]it[roman type] decides to stop. Pleasure, [if the bimbo of the player < 14]terror[otherwise]exhilaration[end if], and humiliation at being tortured by your own clothing roil inside of you until it finally wiggles out of your [asshole].";
				humiliate 20 - choice in row 1 of the table of player options * 5;[female players are less humiliated by it.]
				arouse 100 + the anal sex addiction of the player * 5;
				if a random number between 3 and 1 is 1, SexAddictUp 1;
				otherwise arouse 25;
		otherwise:
			let R be a random number between 1 and 3;
			let P be face;
			if H is belly covering and R is 1, let P be belly;
			otherwise increase R by 1;
			if H is not chestless and R is 2, let P be breasts;
			otherwise increase R by 1;
			unless H is no-crotch and R is 3, let P be hips;
			say "Your [printed name of H] lights up as unseen hands grab your [P], distorting the [clothing-material of H] unnaturally as they mischievously grope the tender skin underneath. [one of]You're being molested by your own clothing![or]You can't help feeling exposed knowing your own clothes can mess with you any time![at random]";
			Humiliate 5;
			if P is breasts, arouse the raw sensitivity of breasts * 5.



Dressup ends here.
