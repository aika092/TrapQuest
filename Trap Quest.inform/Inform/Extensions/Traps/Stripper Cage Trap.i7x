Stripper Cage Trap by Traps begins here.

stripper cage trap is a trap. stripper cage trap is pressure. The printed name of stripper cage trap is "[TQlink of item described]stripper cage[TQxlink of item described][verb-desc of item described]". The text-shortcut of stripper cage trap is "stcg".

Figure of stripper cage is the file "Env/Hotel/strippercage1.jpg".

To decide which figure-name is the examine-image of (T - stripper cage trap):
	decide on Figure of stripper cage.

To say ExamineDesc of (C - stripper cage trap):
	say "Long vertical bars surround a raised stage. Dance music plays, and colourful lights flash all around.".

This is the spawn initial hotel stripper cage trap rule:
	if diaper quest is 0 and the player is a september 2024 top donator:
		let R be a random trappable placed modern room;
		deploy stripper cage trap in R.
The spawn initial hotel stripper cage trap rule is listed first in the set up hotel traps rules.

To trigger (Y - stripper cage trap):
	now Y is revealed;
	now Y is not untriggered;
	now Y is triggered;
	now Y is grabbing the player;
	now the player-motion of the player is 0;
	say "Suddenly, long vertical metal bars shoot out of the ground all around you, raising all the way to the ceiling, trapping you inside! Next, the floor you're standing on becomes a platform that rises up a couple of feet. Colourful flashling lighting units pop out of concealed panels in the wall around you, and heavy R&B music starts blasting loudly![line break]A whole load of hotel patrons begin to filter into the room, and all eyes are on you!";
	repeat with M running through generic-patron patrons:
		set up M;
		now M is in the location of the player;
		now M is interested;
	now temporaryYesNoBackground is figure of stripper cage;
	say "[speech style of chubby patron]'Come on, slut, dance for us!'[roman type][line break]";
	now the reset-timer of Y is 675.

To say StripperDemandFlav of (M - a monster):
	say "[speech style of M]'[one of]Shake it, slut[or]Wop! Wop! Wop! Let me see you WOP[or]Drop it to the flo['][or]Turn around, shawtie[or]Wiggle for me, baby'[or]Strike a pose[or]Bend over, bitch[or]Squat! Squat! Squat[or]Show us that booty[or]Show us how you shake it[or]Move it[at random]!'[roman type][line break]".

To say StripperSupportFlav of (M - a monster):
	say "[speech style of M]'[one of]Damn, [he of the player][']s fine[or]Check [him of the player] out[or]YEAAAAH[or]WOO[or]Look at [him of the player] go[or]Woah[or]Get it ON[at random]!'[roman type][line break]".

Report taking off clothing when stripper cage trap is grabbing the player:
	check cage full strip.
Report displacing clothing when stripper cage trap is grabbing the player:
	check cage full strip.
Report TopDisplacing clothing when stripper cage trap is grabbing the player:
	check cage full strip.

To check cage full strip:
	if the noun is nudism-disabling and (breasts is lewdly exposed and (vagina is lewdly exposed or penis is lewdly exposed)):
		say "The patrons roar with appreciation as you get it all on show in the cage. [severeHumiliateReflect]";
		if stripper-ears is off-stage and stripper-ears is actually summonable:
			say "A pair of fetishy cat ears appear on your head!";
			summon stripper-ears cursed;
			class summon porn star tube top;
			class summon porn-star-suspenders;
			say "[variable custom style]I guess I really am a stripper now...[roman type][line break]";

To compute turn trap effect of (Y - stripper cage trap):
	if stripper cage trap is grabbing the player:
		update appearance level;
		let A be the appearance of the player;
		reset multiple choice questions;
		set numerical response 1 to "dance for them";
		set numerical response 2 to "refuse to dance";
		compute multiple choice question;
		if player-numerical-response is 1:
			say "You shake your stuff for the visibly aroused audience.";
			repeat with M running through patrons in the location of the player:
				say StripperSupportFlav of M;
			say HumiliateReflect A * A * 5;
		otherwise if player-numerical-response is 2:
			let X be a random patron in the location of the player;
			say "You cower inside the cage[one of]. [BigNameDesc of X] leaves for a moment, and then returns, dragging a trash can into the middle of the crowd[stopping].";
			repeat with M running through patrons in the location of the player:
				say StripperDemandFlav of M;
				let tissue-thrown be true;
				if a random number between 1 and 2 is 1:
					if a random number between 1 and 2 is 1, now tissue-thrown is false;
					say "[BigNameDesc of M] reaches into the trash can and pulls out a [if tissue-thrown is false]used condom[else]cum-soaked tissue[end if], and throws it at you!";
					if the player is getting lucky:
						say "It misses completely! [GotLuckyFlav]";
					otherwise:
						let torso-hit be true;
						if a random number between 1 and 2 is 1:
							say "It hits you in the torso!";
							if tissue-thrown is true:
								GrossOut 2;
								UnannouncedSquirt semen on breasts by 1;
						otherwise:
							say "It smacks you right in the face!";
							now torso-hit is false;
							if tissue-thrown is true:
								GrossOut 4;
								UnannouncedSquirt semen on face by 1;
							otherwise:
								GrossOut 3;
						if tissue-thrown is true and black hood is off-stage and black hood is actually summonable:
							say "Suddenly, your head is encased in a black latex hood!";
							summon black hood cursed;
							unclash class summon trashcan;
							now the tissue-fill of trashcan is 0;
						otherwise if trashcan is worn and tissue-thrown is true:
							say "The tissue falls into your trashcan!";
							if the tissue-fill of trashcan < 2, increase the tissue-fill of trashcan by 1;
						otherwise if trashcan is worn and tissue-thrown is false and the tissue-fill of trashcan >= 2:
							say "The condom falls into your trashcan!";
							UsedCondomUp trashcan from M by 1;
						otherwise if tissue-thrown is false:
							let CC be a random worn top level breasts layer clothing;
							let NC be a random worn neck covering clothing;
							let HC be a random worn headgear;
							if torso-hit is true and CC is a condom pinnable clothing:
								say "The condom attaches itself to your [ShortDesc of CC]!";
								UsedCondomUp CC from M by 1;
							otherwise if torso-hit is false and NC is a condom pinnable clothing:
								say "The condom attaches itself to your [ShortDesc of NC]!";
								UsedCondomUp NC from M by 1;
							otherwise if torso-hit is false and HC is a condom pinnable clothing:
								say "The condom attaches itself to your [ShortDesc of HC]!";
								UsedCondomUp HC from M by 1;
							otherwise:
								let C be a random off-stage bag lunch;
								if C is a thing:
									now C is in the location of the player;
									say "The condom falls to the ground.";
		if the reset-timer of Y <= a random number between 649 and 660:
			if Y is grabbing the player, say "The cage bars descend along with the podium, and you are released. The patrons all chuckle to themselves as they file out of the room.";
			dislodge Y;
			repeat with M running through patrons in the location of the player:
				destroy M.




Stripper Cage Trap ends here.
