Paddle Trap by Traps begins here.


A paddle trap is a kind of trap. There are 10 swing paddle traps. The text-shortcut of paddle trap is "pdl".
To say ExamineDesc of (C - a paddle trap):
	say "A small but heavy wooden paddle with a long plank and hinge that attaches it to the roof.".

Figure of paddle is the file "Env/Dungeon/paddle1.png".

To decide which figure-name is the examine-image of (C - a paddle trap):
	decide on figure of paddle.

To say EnvironmentDesc of (T - a paddle trap):
	say "A wooden spanking paddle hangs down from the ceiling. ".

To say ShortDesc of (T - a paddle trap):
	say "spanking paddle trap".

To trigger (Y - a paddle trap):
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	say "As you are busy with the tank, a wooden paddle swings down from the ceiling! ";
	let A be a random number between 6 and 14;
	let K be a random worn top level protection clothing;
	let N be 0;
	repeat with C running through ass covering clothing:
		if the armour of C > N:
			now N is the armour of C;
			now K is C;
			if K is ass plugging or K is vagina plugging, now N is 9999; [This overrides other checks]
	if there is a worn diaper:
		let D be a random worn diaper;
		if the urine-soak of D > 14:
			say "It smacks straight into the back of your [printed name of D], which completely softens the blow but also makes it spray [urine] everywhere!";
			let R be a random number from 3 to 6;
			UrinePuddleUp R;
			decrease the urine-soak of D by R;
			compute state check of D;
		otherwise:
			say "Your helpfully padded [printed name of D] completely softens the blow.";
		say "[variable custom style][if the diaper addiction of the player < 7]Hmm, maybe there are some positive elements to wearing a diaper after all...[otherwise]Nice! I'm glad I was wearing this thing.[end if][roman type][line break]";
		SilentlyDiaperAddictUp 1;
	otherwise if the latex-transformation of the player > 5:
		say "You hardly feel anything thanks to your rubbery butt cheeks.";
	otherwise if A > the defence of the player:
		if K is clothing:
			say "It spanks you directly on your [if the player is male][asshole][otherwise]crotch[end if], and your [ShortDesc of K] does nothing to soften the blow!";
			PainUp 2;
			if K is ass plugging and K is not jelldo:
				say "Not only that, the plug[if the player is female]s[end if] inside of you send[if the player is male]s[end if] the vibrations of the spank deep inside your [if the player is female]holes[otherwise][asshole][end if]. Ouch!";
				ruin asshole times 2;
				if the player is female, ruin vagina times 2;
			otherwise:
				say "Owww!";
			Damage K;
		otherwise:
			say "It spanks you directly on your [AssDesc].";
			PainUp 1;
		if the flesh volume of hips < max ass size and diaper quest is 0:
			say "You feel your ass cheeks grow to try and better defend your [fuckholes] against future attacks!";
			AssSwell 1;
	otherwise:
		if K is clothing and the armour of K >= 7:
			say "It spanks you on your [AssDesc]! ";
			Damage K;
			if K is ass plugging:
				say "Not only that, the plug[if the player is female]s[end if] inside of you send[if the player is male]s[end if] the vibrations of the spank deep inside your [if the player is female]holes[otherwise][asshole][end if]. Ouch!";
				ruin asshole times 2;
				if the player is female, ruin vagina times 2;
			otherwise:
				say "At least your [ShortDesc of K] softened the blow.";
		otherwise:
			say "It spanks you on your poor [AssDesc]!";
			PainUp 1;
			say "[one of][second custom style]Ooh, I've been a bad girl...[if the bimbo of the player < 6][line break][first custom style]What the fuck, did I just think that?![end if][roman type][line break][or][cycling]";
	if spank tattoo is drawable and there is a worn tattoo and the delicateness of the player > 8 and a random number between 1 and 6 is 1:
		summon spank tattoo;
		say "Your skin stings with pain as a 'Spank Me' tattoo is suddenly burned onto your butt!";
	repeat with M running through reactive monsters:
		say PaddleTrapReactFlav of M.

To say PaddleTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.


Paddle Trap ends here.

