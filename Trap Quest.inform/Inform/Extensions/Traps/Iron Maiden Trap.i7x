Iron Maiden Trap by Traps begins here.

An iron-maiden is a kind of trap. The printed name of iron-maiden is "[TQlink of item described]iron maiden[TQxlink of item described][verb-desc of item described]". The description of an iron-maiden is "A human-shaped solid metal cage.". There is 1 swing iron-maiden. Understand "iron", "maiden" as iron-maiden. The text-shortcut of an iron-maiden is "irm".

To say ShortDesc of (T - an iron-maiden):
	say "The two halves of the iron maiden trap are lying horizontally on the ground. ".

To decide which number is the girth of (D - an iron-maiden):
	decide on 3.

To trigger (Y - an iron-maiden):
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	now iron-maiden-turns is 0;
	say "As you finish using the bucket and lower your arms, a giant metal contraption springs out of the ground from both in front and behind you, instantly closing around you with a loud CLANG!  [one of]You're trapped inside, unable to move a muscle!  This must be some kind of Iron Maiden!  In the pitch black darkness you feel something slimy and... wriggling... pressing at you from all directions. The inside lining of the maiden is made of living tentacles!  [or]The Iron Maiden has gotten you again!  Once again the slimy tentacles press in against you from all directions. [stopping]There's probably nothing you can do but [bold type][TQlink]wait[TQdlink][roman type].";
	now the player is in Iron Maiden.

iron-maiden-turns is a number that varies.

To say his of (M - iron-maiden):
	say "its".

This is the iron maiden immobility rule:
	if the player is in Iron Maiden, rule fails.
The iron maiden immobility rule is listed in the immobility rules.

A time based rule (this is the iron-maiden-punishment rule):
	if the player is in Iron Maiden:
		let M be a random iron-maiden;
		increase iron-maiden-turns by 1;
		if iron-maiden-turns > a random number between 4 and 6:
			say "You hear a creak, and then a sliver of daylight appears above you. The two halves of the iron maiden creak apart, before falling open, clanging to the ground and allowing you back out in the open. [if the number of body parts penetrated by M > 1]But you're still being invaded! With effort, you squirm and wriggle, but feel the stretched-out tentacles resisting as the walls fall away. Finally, with some force, you manage to pull them out, freeing your orifices from their alien cock invasion. [otherwise if M is penetrating a body part]As the walls fall away, the tentacle is rather violently pulled out of your [random body part penetrated by M]. [end if][line break][variable custom style]Phew, I'm free![roman type][line break]";
			now the player is in the location of M;
			if M is penetrating face and (the stomach-semen of the player + the semen volume of belly > 0), PukeUp;
			dislodge M;
		otherwise if diaper quest is 1:
			say "The tentacles [one of]begin to push against your body all over, but putting particular pressure on your [BellyDesc][if there is a worn diaper] and diaper[end if]. They [or][stopping][one of]wiggle and squirm[or]continue to writhe around you[or]press into and tickle you[then at random], [if there is a worn diaper]stimulating you and [end if][one of]making it difficult to hold onto your bladder[if diaper lover >= 4] and bowels[end if][or]making your tummy gurgle[cycling]!";
			if there is a worn diaper:
				ruin vagina times 2;
			if player-urinating is 0 and the bladder of the player > 2 and a random number between (iron-maiden-turns / 2) and the bladder of the player >= 5 - the incontinence of the player:
				say "You can't hold on!  You begin wetting yourself.";
				now delayed urination is 1;
				try urinating;
			otherwise if diaper lover >= 4 and a random number between iron-maiden-turns and rectum >= 5 - the incontinence of the player and there is worn soilable knickers:
				say "You can't hold on!  You begin soiling yourself.";
				compute messing;
			let K be a random worn messed knickers;
			if K is clothing:
				say "Trapped inside the airtight Iron Maiden, the [one of]foul[or]horrible[or]putrid[in random order] smell of your [K] makes you gag and [if the delicateness of the player < 9]feel a little more like a pathetic baby[otherwise][one of]before you know it you are crying your eyes out like a big baby[or]continue to bawl like a baby[stopping][end if].";
				DelicateUp 1;
		otherwise:
			if M is penetrating face:
				say "The tentacle in your mouth continues to [one of]fuck your face[or]use your throat as a fuck sock[or]energetically fuck your mouth[or]turn your mouth into its own personal onahole[in random order]!";
			otherwise if face is not actually occupied:
				say "Suddenly a tentacle pushes its way into your mouth!  It immediately starts worming its way down into your throat until you are choking helplessly on its girth!";
				now M is penetrating face;
			otherwise:
				say "Tentacles [one of][or]continue to[stopping][one of]wriggle[or]writhe[or]squirm[at random] [one of]pointlessly[or]in vain[or][in random order] against your face!";
			let C be a random worn top level protection clothing;
			if C is clothing:
				if C is displacable:
					displace C;
					say "The tentacles wriggle, prod and push until they succeed at pulling your [C] out of the way!";
				otherwise if the damage of C + a random number between 1 and 6 > the armour of C:
					say "The tentacles wriggle, prod and push at your [C], plucking and tearing at it until, over time, you feel it shred completely and fall away!";
					destroy C;
				otherwise if C is not rigid:
					say "The tentacles wriggle, prod and push at your [C], weakening the [clothing-material of C]!";
					damage C;
			otherwise:
				if the player is female:
					if M is penetrating vagina:
						say "The tentacle in your [vagina] is still [one of]thrusting vigorously[or]plowing away[or]fucking you deep and hard[or]smashing against your cervix as it violates you[in random order]!";
						ruin vagina;
					otherwise if vagina is not actually occupied:
						say "You feel the tip of one tentacle find the entrance to your [vagina]!  You don't have a moment to react before it launches forward, sliding inexorably in, penetrating you, bottoming out with one relentless motion!";
						now M is penetrating vagina;
						ruin vagina;
					otherwise:
						say "Tentacles [one of][or]continue to [stopping][one of]wriggle[or]writhe[or]squirm[at random] [one of]pointlessly[or]in vain[or]weakly[or]fruitlessly[in random order] against your [vagina]!";
				otherwise if the size of penis > 0:
					say "The tentacles [one of]wrap around your [ShortDesc of penis], massaging you in a fast rhythm and greatly increasing your arousal[or]continue to stroke your [player-penis][stopping]!";
					arouse 1000;
			unless there is worn top level ass protection clothing: 
				if M is penetrating asshole:
					say "The tentacle behind you continues to [one of]impale your [asshole] on its seemingly endless length[or]plunder your [asshole], snaking its way up through your colon, with each thrust working closer and closer to your belly itself[or]delve deeper and deeper into your [asshole][or]ruin the deepest parts of your [asshole][in random order]!";
					ruin asshole;
				otherwise if asshole is not actually occupied:
					say "A particularly slimy tentacle presses against your [asshole]!  You feel your sphincter quickly losing its battle to remain closed as the unseen tentacle drills its way inside!";
					now M is penetrating asshole;
					ruin asshole;
				otherwise:
					say "Tentacles [one of][or]continue to [stopping][one of]wriggle[or]writhe[or]squirm[at random] [one of]pointlessly[or]in vain[or]weakly[or]fruitlessly[in random order] against your [asshole]!";
			

Report urinating when the player is in Iron Maiden:
	unless there is a worn diaper:
		say "You can't help but wish you were wearing a diaper - at least then you wouldn't be able to smell the stink of your own [urine] so strongly inside this tiny metal box!  You can't help but [if the delicateness of the player < 10]feel a bit more submissive[otherwise]cry a little[end if].";
		DiaperAddictUp 1;
		DelicateUp 1.


Iron Maiden Trap ends here.

