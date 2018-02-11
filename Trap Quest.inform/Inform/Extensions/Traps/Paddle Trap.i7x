Paddle Trap by Traps begins here.


A paddle trap is a kind of trap. There are 10 swing paddle traps. The description of paddle trap is "A small but heavy wooden paddle with a long plank and hinge that attaches it to the roof.".

To say ShortDesc of (T - a paddle trap):
	say "A wooden spanking paddle hangs down from the ceiling. ".

To trigger (Y - a paddle trap):
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	say "As you are busy with the tank, a wooden paddle swings down from the ceiling!  ";
	let A be a random number between 6 and 14;
	let K be a random worn top level protection clothing;
	let N be 0;
	repeat with C running through worn ass covering clothing:
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
		otherwise:
			say "Your helpfully padded [printed name of D] completely softens the blow.";
		say "[variable custom style][if the diaper addiction of the player < 7]Hmm, maybe there are some positive elements to wearing a diaper after all...[otherwise]Nice!  I'm glad I was wearing this thing.[end if][roman type][line break]";
		DiaperAddictUp 1;
	otherwise if the latex-transformation of the player > 5:
		say "You hardly feel anything thanks to your rubbery butt cheeks.";		
	otherwise if A > the defence of the player:
		if K is clothing:
			say "It spanks you directly on your [if the player is male][asshole][otherwise]crotch[end if], and your [printed name of K] do[if the armour of K < 7]es[end if] nothing to soften the blow!  ";
			DelicateUp 1;
			if K is ass plugging and K is not jelldo:
				say "Not only that, the plug[if the player is female]s[end if] inside of you send[if the player is male]s[end if] the vibrations of the spank deep inside your [if the player is female]holes[otherwise][asshole][end if]. Ouch!";
				ruin asshole times 2;
				if the player is female, ruin vagina times 2;
			otherwise:
				say "Owww!";
			Damage K;
		otherwise:
			say "It spanks you directly on your butt cheeks. Oww!";
			DelicateUp 1;
		if the flesh volume of hips < max ass size and diaper quest is 0:
			say "You feel your ass cheeks grow to try and better defend your [fuckholes] against future attacks!";
			AssSwell 1;
	otherwise:
		if K is clothing:
			if the armour of K < 7:
				say "It spanks you on your poor ass cheeks!  Owww![line break][if the delicateness of the player > 5][line break][second custom style]Ooh, I've been a bad girl...[end if][if the delicateness of the player < 10 and the delicateness of the player > 5][line break][first custom style]What the fuck, did I just think that?![end if][roman type][line break]";
				DelicateUp 1;
			otherwise:
				say "It spanks you on your poor ass cheeks!  Owww!  ";
				Damage K;
				if K is ass plugging:
					say "Not only that, the plug[if the player is female]s[end if] inside of you send[if the player is male]s[end if] the vibrations of the spank deep inside your [if the player is female]holes[otherwise][asshole][end if]. Ouch!";
					ruin asshole times 2;
					if the player is female, ruin vagina times 2;
				otherwise:
					say "At least your [printed name of K] softened the blow.";
		otherwise:
			say "It spanks you on your poor ass cheeks!  Owww![line break][second custom style]Ooh, I've been a bad girl...[if the bimbo of the player < 6][line break][first custom style]What the fuck, did I just think that?![end if][roman type][line break]";
			DelicateUp 1;
	let T be a random spank tattoo;
	if T is drawable and there is a worn tattoo and the delicateness of the player > 8:
		summon T;
		say "Your skin stings with pain as a 'Spank Me' tattoo is suddenly burned onto your butt!".



Paddle Trap ends here.

