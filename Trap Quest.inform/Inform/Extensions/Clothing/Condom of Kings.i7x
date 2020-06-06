Condom of Kings by Clothing begins here.

A condom of kings is a kind of clothing. A condom of kings is usually unique. A condom of kings is usually latex. A condom of kings can be creamfilled. A condom of kings is usually not creamfilled. There is 1 condom of kings. The printed name of condom of kings is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][if item described is creamfilled]cum filled [end if][raw-magic-modifier-desc]condom of kings[clothing-title-after]". The printed plural name of condom of kings is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]condoms of kings[clothing-title-after]". The text-shortcut of condom of kings is "cok".

To say ClothingDesc of (C - a condom of kings):
	if C is worn and C is cursed:[Cursed, but not worn condoms look different.]
		say "This condom is bright pink with [if the size of penis > 9]the words 'nasty cum guzzler'[otherwise if the size of penis > 8]the word 'cocksucker'[otherwise if the size of penis > 7]the words 'I love anal'[otherwise if the size of penis > 5]the word 'slutty'[otherwise if the size of penis > 2]small drawings of penises[end if] printed on either side. [if C is not creamfilled]The material is too thick for you to feel anything through it, and the ring at the base has tightened, keeping it firmly clamped to your [ShortDesc of penis]. Wearing this makes you feel less manly with every passing minute, but there[']s no way of getting it off.[otherwise]Thanks to your hair-trigger, it's full of warm, slimy [semen], which you can feel sliding over your skin every time you move. The ring at the base of the condom has tightened, keeping it firmly clamped to your [ShortDesc of penis]. Wearing this makes you feel less manly with every passing second, but until you find a way to take it off, you[']ll have to stew in your pearly shame.[end if]";[If cursed, the condom of kings is pink and has a humiliating design on it]
	otherwise:
		say "This condom has a royal seal printed towards the head. [if C is worn and penis is penis-erect]A strange magic is preventing your [ShortDesc of penis] from ever going soft, although the rubbery material is too thick for you to feel anything from dominant sex. Your manly erection makes you feel like a king![otherwise]The material looks much too thick for you to feel anything through it, so there wouldn[']t be a point to having sex with it on. Only a king would bother with a sword that never leaves its sheath.[end if]". [since you'll be embarrassed wearing a condom of kings and nothing else, I figure it's fine to have it keep your player erect.]

Definition: a condom of kings is product: decide yes.

To decide which number is the alchemy key of (C - a condom of kings):
	decide on 13.

Definition: a condom of kings is recipe specific: decide yes.

To set up magic state of (C - a condom of kings):
	do nothing.

This is the condom of kings specific recipe rule:
	let R be a random condom of kings;
	if R is fetish appropriate:
		now the Product in row 14 of the Table of Alchemy is 13;
		now the Recipe in row 14 of the Table of Alchemy is 1.
The condom of kings specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - a condom of kings):
	now T is bland.

To decide which number is the initial outrage of (C - a condom of kings):
	if C is creamfilled, decide on 15;
	decide on 0.

Definition: a condom of kings is fetish appropriate: decide no. [disabled for now]

Check wearing condom of kings:
	if the player is gendered female, say "Only a [if the bimbo of the player > 10]sexy [end if]man could wear this." instead;
	if the player is not possessing a penis, say "Only [if transGender is 1]someone with a penis[otherwise]a real man[end if] could wear this." instead;
	if the size of penis < 4, say "Your [ShortDesc of penis] is too small, it would never stay on. " instead;
	repeat with C running through clothing worn by the player:
		if C is pussy covering:
			say "Your [printed name of C] are in the way." instead.

Report wearing condom of kings:
	let K be a random worn condom of kings;
	say "You carefully roll the condom out around your [ShortDesc of penis].";
	if K is cursed:
		say "As you move your hands away, the base of the condom clamps itself to your penis and suddenly turns bright pink. It must be cursed!";
	otherwise if the player is able to get erect:
		say "As you move your hands away, a tingle passes up your shaft, and your penis suddenly surges to full erection.";
		now penis is penis-erect.

Check taking off worn condom of kings:
	if the player is pussy protected, say "Your [printed name of random top level protection clothing worn by the player] is preventing you." instead;
	if there is a worn chastity cage, say "How are you going to get that off when you're in chastity?" instead.

Report taking off condom of kings:
	say "The unrolled condom is now impossible to get on again, so you discard it.";
	now the noun is not creamfilled;
	remove the noun from play.

To compute periodic effect of (C - a condom of kings):
	if the size of penis < 2:
		say "Your [printed name of C] falls to the ground, now made useless!";
		remove C from play;
	otherwise if C is creamfilled or C is cursed:
		if a random number between -1 and 250 < the size of penis and the size of penis > min penis size:
			say "You feel your [printed name of C] shrink your [ShortDesc of penis]!";
			PenisDown 1;
	otherwise:
		if a random number between -250 and 13 > the size of penis and the size of penis < 10:
			PenisUp 1.

Definition: a condom of kings is stealable: decide no.

To decide which object is the concealer of (C - a condom of kings):
	decide on the concealer of penis.

To decide which object is the at least partial concealer of (C - a condom of kings):
	decide on the at least partial concealer of penis.

Condom of Kings ends here.
