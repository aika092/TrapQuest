Halloween Dresses by Dresses begins here.

nun-dress is an overdress. nun-dress is unique. nun-dress is fully covering. nun-dress is hobble-skirted. nun-dress is neck covering. nun-dress is finger covering. The text-shortcut of nun-dress is "nund". The printed name of nun-dress is "[clothing-title-before]nun dress[clothing-title-after]". Understand "nun", "dress" as nun-dress.

Figure of nun-dress is the file "Items/Clothes/Upper/Special/Halloween/nundress1a.png".
Figure of nun-dress-xray is the file "Items/Clothes/Upper/Special/Halloween/nundress1b.jpg".
Figure of nun-dress-xray-dong is the file "Items/Clothes/Upper/Special/Halloween/nundress1c.jpg".
Figure of nun-dress-no-xray is the file "Items/Clothes/Upper/Special/Halloween/nundress1d.jpg".

To decide which figure-name is clothing-image of (C - nun-dress):
	if C is wrist-bound-behind, decide on figure of nun-dress-no-xray;
	decide on figure of nun-dress.
To compute school periodic effect of (C - nun-dress): [A hacky way to make sure that when we examine the dress, we see the X-ray version]
	if C is wrist-bound-behind:
		if there is a worn sex toy, now the previous-temporary-image of C is Figure of nun-dress-xray-dong;
		otherwise now the previous-temporary-image of C is Figure of nun-dress-xray;
		if purple-vibrator is carried:
			say "[BigNameDesc of purple-vibrator] slips to the ground.";
			now purple-vibrator is in the location of the player;
			repeat with M running through reactive people:
				compute toy expulsion reaction of M;
	otherwise:
		now the previous-temporary-image of C is figure of no-image-yet.

To say ClothingDesc of (M - nun-dress):
	say "This black and white nun dress looks pretty normal. There are some rather high slits at the sides of the skirt, but that could reasonably be suggested to be to make it easier to wear[if M is wrist-bound-behind]. Of course, looks can be deceiving. The arms inside the sleeves are fake. Your real arms are bound strictly behind your back. This wouldn't be much of a problem, but your fake arms are holding a large book open in front of you. The cover makes it look like a religious text, but anyone who notices the actual page it is open to will see that it is in fact a book cataloguing and explaining how to perform exotic sex acts[end if]...".

This is the nun bondage prevents hand use rule:
	if nun-dress is worn and nun-dress is wrist-bound-behind:
		if manual hands attempt is 1, say "[variable custom style]I can't do that whilst my hands are bound strictly behind my back under my nun dress![roman type][line break]";
		rule fails.
The nun bondage prevents hand use rule is listed in the hands restriction rules.

To decide which number is the initial outrage of (C - nun-dress):
	if the player is in an unbossed predicament room:
		if there is worn halloween headgear, decide on 1;
		otherwise decide on 6;
	decide on 4.

To say ShortDesc of (C - nun-dress):
	say "nun dress".
To say MediumDesc of (C - nun-dress):
	say "slitted nun dress".

Definition: nun-dress is black themed: decide yes.
Definition: nun-dress is white themed: decide yes.
Definition: nun-dress is slitted: decide yes.
To decide which object is the unique-upgrade-target of (C - nun-dress):
	decide on nun-top.
To compute (C - nun-top) unique inheriting from (D - a clothing):
	now C is wristless.

nun-top is an overdress. nun-top is unique. nun-top is fully covering. nun-top is unskirted. nun-top is lycra. nun-top is neck covering. nun-top is only arm covering. The text-shortcut of nun-top is "nunt". nun-top is totally-exclusive. The printed name of nun-top is "[clothing-title-before]nun top[clothing-title-after]". Understand "nun", "top" as nun-top.

Figure of nun-top is the file "Items/Clothes/Upper/Special/Halloween/nuntop1.png".

To decide which figure-name is clothing-image of (C - nun-top):
	decide on figure of nun-top.

To say ClothingDesc of (M - nun-top):
	say "This skin-tight black lycra top has a high white collar to make it look like a nun's habit. But real nun's habits are much less smooth and tight, and they don't have big crosses of shiny black tape over where your nipples are...".

To decide which number is the initial outrage of (C - nun-top):
	decide on 5.

To say ShortDesc of (C - nun-top):
	say "nun top".
To say MediumDesc of (C - nun-top):
	say "slutty nun top".

Definition: nun-top is transformation-protected:
	if the class of the player is trick-or-treater, decide yes;
	decide no.
Definition: nun-top is black themed: decide yes.
Definition: nun-top is white themed: decide yes.

witch's top is an overdress. witch's top is unique. witch's top is low cut. witch's top is unskirted. witch's top is latex. witch's top is neck covering. witch's top is only arm covering. The text-shortcut of witch's top is "wtct". witch's top is totally-exclusive. The printed name of witch's top is "[clothing-title-before]witch's top[clothing-title-after]".

Figure of witch's top is the file "Items/Clothes/Upper/Special/Halloween/witchtop1.png".

To decide which figure-name is clothing-image of (C - witch's top):
	decide on figure of witch's top.

To say ClothingDesc of (M - witch's top):
	say "This skin-tight black latex top has fancy spikes at the shoulders and two purple pentagrams on its front, one at the belly and one over the cleavage.".

To decide which number is the initial outrage of (C - witch's top):
	decide on 5.

To say ShortDesc of (C - witch's top):
	say "witch's top".
To say MediumDesc of (C - witch's top):
	say "slutty witch's top".

Definition: witch's top is transformation-protected:
	if the class of the player is trick-or-treater, decide yes;
	decide no.
Definition: witch's top is black themed: decide yes.
Definition: witch's top is magic themed: decide yes.

witch's trousers is a trousers. witch's trousers is latex. witch's trousers is unique. The printed name of witch's trousers is usually "[clothing-title-before]black latex witch's stockings[clothing-title-after]". The text-shortcut of witch's trousers is "blws". Figure of witch's trousers is the file "Items/Clothes/Lower/Pants/witchpants1.png". Understand "stockings" as witch's trousers.

To decide which figure-name is clothing-image of (W - witch's trousers):
	decide on figure of witch's trousers.

To say UniqueClothingDesc of (W - witch's trousers):
	say "A pair of tight fitting black latex thigh high stockings, connected at the back to a pair of latex briefs with a purple cape descending from [if W is worn]your[otherwise]the wearer's[end if] butt. A latex pentagram sits on one otherwise bare thigh.".

To say ShortDesc of (Y - witch's trousers):
	say "pair of witch's stockings".
To say MediumDesc of (Y - witch's trousers):
	say "pair of black latex witch's stockings".

Definition: witch's trousers is transformation-protected:
	if the class of the player is trick-or-treater, decide yes;
	decide no.
Definition: witch's trousers is black themed: decide yes.
Definition: witch's trousers is magic themed: decide yes.

doll-dress is an overdress. doll-dress is unique. doll-dress is average cut. doll-dress is super-short. doll-dress is latex. doll-dress is neck covering. The text-shortcut of doll-dress is "rbdd". The printed name of doll-dress is "[clothing-title-before]rubber doll dress[clothing-title-after]". Understand "rubber", "doll", "dress" as doll-dress.

Figure of doll-dress is the file "Items/Clothes/Upper/Special/Halloween/dolldress1.png".

To decide which figure-name is clothing-image of (C - doll-dress):
	decide on figure of doll-dress.

To say ClothingDesc of (M - doll-dress):
	say "This black and orange latex dress has a 'babydoll' vibe thanks to the bows decorating the front.".

To decide which number is the initial outrage of (C - doll-dress):
	decide on 7.
To decide which number is the initial cringe of (C - doll-dress):
	decide on 8.

To say ShortDesc of (C - doll-dress):
	say "doll dress".
To say MediumDesc of (C - doll-dress):
	say "rubber doll dress".

Definition: doll-dress is transformation-protected:
	if the class of the player is trick-or-treater, decide yes;
	decide no.
Definition: doll-dress is orange themed: decide yes.

Halloween Dresses ends here.
