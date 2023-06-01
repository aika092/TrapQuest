Bag Lunch by Food begins here.

A bag lunch is a kind of food. There are 5 bag lunches. Understand "condom" as bag lunch. The printed name of bag lunch is "[TQlink of item described]bag 'lunch'[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of bag lunch is "bal".
To say ExamineDesc of (B - a bag lunch):
	say "A stretchy, bite-sized bag [if lactation fetish is 1 and watersports fetish is 1]some horrid grey liquid that looks a lot like it might be a mixture of [semen], [milk] and [urine][otherwise if watersports fetish is 1]some horrid yellowish liquid that looks a lot like it might be a mixture of [urine] and [semen][otherwise if lactation fetish is 1]some horrid white liquid that looks a lot like it might be a mixture of [milk] and [semen][otherwise]thick white [semen][end if]. Apparently it's meant to be eaten whole.".
To decide which figure-name is the examine-image of (B - a bag lunch):
	decide on figure of used condom.

To say ShortDesc of (C - a bag lunch):
	say "[']bag lunch[']".

To decide which number is the outrage of (C - a bag lunch):
	decide on 20.

Check TQeating bag lunch:
	if there is a thing penetrating face or there is worn ringagged clothing, say "I can't get to the [semen] if I can't bite down on it." instead.

Carry out TQeating bag lunch:
	allocate 6 seconds;
	let X be 3;
	say "You pop the condom in your mouth and bite down, puncturing the edible outer covering and causing it to coat the inside of your mouth with bodily fluids. [if the semen addiction of the player + the flesh volume of arms < 10]The shock of the sudden blast makes you swallow the load on reflex[otherwise if the semen addiction of the player + the flesh volume of arms < 20]You gulp down the [semen] without thinking[otherwise]You savour the taste in your mouth for a few moments before beginning to swallow it down bit by bit, enjoying the feeling of the slimy stuff as it travels down your throat[end if].";
	if watersports fetish is 1:
		StomachUp 1;
		decrease X by 1;
		humiliate STRONG-HUMILIATION - (the urine taste addiction of the player * 10);
	if lactation fetish is 1:
		StomachUp 1;
		decrease X by 1;
		increase the fat-burning of the player by 5;
	StomachFoodUp 1;
	StomachSemenUp X;
	humiliate MODERATE-HUMILIATION - the semen taste addiction of the player;
	destroy the noun.

To say unique-verb-desc of (T - a bag lunch):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]dri[close bracket][as]dr [text-shortcut of T][end link][if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if]".

To decide which number is the bartering value of (T - a bag lunch) for (M - a witch):
	decide on 4.

To decide which number is the bartering value of (T - a bag lunch) for (M - a sex doll):
	decide on 2.

Definition: a bag lunch is semen themed: decide yes.

Bag Lunch ends here.
