Bag Lunch by Food begins here.


A bag lunch is a kind of food. There are 3 bag lunches. Understand "condom" as bag lunch. The printed name of bag lunch is "[TQlink of item described]bag 'lunch'[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of a bag lunch is "A stretchy, bite-sized bag [if lactation fetish is 1 and watersports fetish is 1]some horrid grey liquid that looks a lot like it might be a mixture of [semen], [milk] and [urine][otherwise if watersports fetish is 1]some horrid yellowish liquid that looks a lot like it might be a mixture of [urine] and [semen][otherwise if lactation fetish is 1]some horrid white liquid that looks a lot like it might be a mixture of [milk] and [semen][otherwise]thick white [semen][end if]. Apparently it's meant to be eaten whole.".  The text-shortcut of bag lunch is "bal".

Carry out TQeating bag lunch:
	let X be 3;
	say "You pop the [printed name of a random bag lunch] in your mouth and bite down, puncturing the edible outer covering and causing it to coat the inside of your mouth with bodily fluids. [if the semen addiction of the player + the flesh volume of arms < 10]The shock of the sudden blast makes you swallow the load on reflex[otherwise if the semen addiction of the player  + the flesh volume of arms < 20]You gulp down the [semen] without thinking[otherwise]You savour the taste in your mouth for a few moments before beginning to swallow it down bit by bit, enjoying the feeling of the slimy stuff as it travels down your throat[end if].";
	if watersports fetish is 1:
		StomachUp 1;
		decrease X by 1;
		humiliate 100 - (the urine taste addiction of the player * 10);
	if lactation fetish is 1:
		StomachUp 1;
		decrease X by 1;
		increase the fat-burning of the player by 5;
	StomachFoodUp 1;
	StomachSemenUp X;
	humiliate 50 - the semen taste addiction of the player;
	destroy the noun;
	now seconds is 6.

To say unique-verb-desc of (T - a bag lunch):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]dri[close bracket][as]dr [text-shortcut of T][end link][if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if]".

To decide which number is the bartering value of (T - a bag lunch) for (M - a witch):
	decide on 4.

To decide which number is the bartering value of (T - a bag lunch) for (M - a sex doll):
	decide on 2.


Bag Lunch ends here.
