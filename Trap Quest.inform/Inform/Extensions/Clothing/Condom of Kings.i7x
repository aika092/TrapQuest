Condom of Kings by Clothing begins here.

A cock-ring is a kind of accessory. The printed name of a cock-ring is usually "[TQlink of item described][item style][CockRingSize of the item described] [accessory-colour of the item described] [manly-penis] ring[clothing-title-after]". The text-shortcut of cock-ring is "ckr". Understand "cock ring", "ring" as cock-ring.

A cock-ring has a number called last-size. The last-size of a cock-ring is usually 5.

[No point in a hat without a rack to hang it on]
Definition: cock-ring is fetish appropriate:
	if diaper quest is 1, decide no;
	if the player is female and player futanari fetish is 0, decide no;
	decide yes.

There are 3 cock-rings.[Lets not bully female players too badly]

Figure of cock ring is the file "Items/Accessories/Toys/cockring1.png".
To decide which figure-name is the examine-image of (R - a cock-ring):
	unless R is plentiful, decide on figure of cock ring;
	if R is sapphire, decide on figure of sapphire ring;
	if R is emerald, decide on figure of emerald ring;
	if R is ruby, decide on figure of ruby ring;
	if R is pink diamond, decide on figure of pink diamond ring;
	if R is pure diamond, decide on figure of pure diamond ring;
	decide on figure of solid gold ring.

To say ShortDesc of (C - a cock-ring):
	say "[accessory-colour of C] [manly-penis] ring".

To SizeAdjust (C - a cock-ring):
	let P be (the mystical size of penis) / 3;
	if autowear is false:
		let D be the last-size of C - P;
		if D > 3, now P is 3;
		let O be the accessory-colour of C;
		while D > 0:
			decrease D by 1;
			accessoryDowngrade C;
		while D < 0:
			increase D by 1;
			accessoryUpgrade C;
		let N be the accessory-colour of C;
		if N is not O, say "The cock ring shifts from [O] to [N].";
	now the last-size of C is P.

To say CockRingSize of (C - a cock-ring):
	say "[if last-size of C is 3]huge[otherwise if the last-size of C is 2]medium[otherwise if the last-size of C is 1]small[otherwise]tiny[end if]".

To decide which object is the concealer of (C - a cock-ring):
	decide on the concealer of penis.

To decide which object is the at least partial concealer of (C - a cock-ring):
	decide on the at least partial concealer of penis.

cock ring wearability rules is a rulebook. The wearability rules of a cock-ring is cock ring wearability rules.

This is the cock ring dick accessibility rule:
	if the player is possessing a penis:
		repeat with C running through actually unavoidable pussy covering clothing:
			if summoning is 0 and autowear is false, say "You can't slip it on past your [printed name of C].";
			rule fails.
The cock ring dick accessibility rule is listed last in the cock ring wearability rules.

This is the cock ring slipping rule:
	if penis is not able to get erect or (penis is not willing to get erect and summoning is 0):
		if summoning is 0 and autowear is false, say "You try to slip it onto your [ShortDesc of penis], but it slips right off.[line break][variable custom style]'[one of]Is it[or]No way...[or]Seriously? Just[at random] because I [if refractoryperiod of the player > 0]came recently?'[otherwise]can't get hard?'[end if][roman type][line break]";
		rule fails.
The cock ring slipping rule is listed last in the cock ring wearability rules.

This is the cock ring micro rule:
	if the size of penis < 2:
		if summoning is 0 and autowear is false, say "The ring is too big for your [ShortDesc of penis] - it'd just slide right off!";
		rule fails.
The cock ring micro rule is listed last in the cock ring wearability rules.

This is the cock ring weight rule:
	if 1 + (the size of penis / 3) < the heaviness of the noun:
		if summoning is 0 and autowear is false, say "The ring is too heavy for your [ShortDesc of penis] - it'd just slide right off!";
		rule fails.
The cock ring weight rule is listed last in the cock ring wearability rules.

Report wearing cock-ring:
	let C be the noun;
	if summoning is 0:
		if the size of penis < 5:
			say "The ring shrinks to fit perfectly around the base of your [ShortDesc of penis][if penis is not penis-erect], which hardens into an erection.[end if]";
		otherwise if the size of penis > 8:
			say "The ring expands to fit perfectly around the base of your [ShortDesc of penis][if penis is not penis-erect], which hardens into an erection[end if].";
		otherwise if penis is not penis-erect:
			say "The ring tightens perfectly around the base of your [ShortDesc of penis], causing it to stiffen into an erection.";
	if C is plentiful, SizeAdjust C;
	now penis is penis-erect.

Check taking off portal-cock-ring:
	if the player is pussy protected and summoning is 0 and autoremove is false, say "Your [printed name of random top level protection clothing] is preventing you." instead.

Report taking off cock-ring:
	say "[if the size of penis > 8]The shiny ring magically shrinks down to a normal size as you slide it off, and you[otherwise if the size of penis < 5]The shiny ring magically enlarges back to a normal size as you slide it off, and you[otherwise]You slide the shiny ring off and[end if] feel your [ShortDesc of penis] soften.";
	now penis-flav is false;
	compute erection decay;
	now penis-flav is true.

To compute facility periodic effect of (C - a cock-ring):
	compute SlipCheck of C.

To compute periodic effect of (C - a cock-ring):
	compute SlipCheck of C.

[A cock ring should keep the penis erect in most situations, but certain things, like the aeromancer chastity item (plus developer error) will make it go soft anyway.]
To compute SlipCheck of (C - a cock-ring):
	if penis is not penis-erect or the size of penis < 2 or 1 + (the size of penis / 3) < the heaviness of C:
		say "You feel your [ShortDesc of C] slip off your [sissy-penis] to the ground.";
		now C is in the location of the player;
	otherwise if C is plentiful:
		SizeAdjust C.

To decide which number is the cock sensitivity influence of (C - a cock-ring):
	decide on 3.

[Cock ring effect is called after a sexual ejaculation]
To say cock ring effect of (C - a clothing):
	say "Your [printed name of C] throbs gently, keeping your [ShortDesc of penis] nicely erect.".

nickel-cock-ring is a cock-ring. nickel-cock-ring is metal. The printed name of nickel-cock-ring is "[clothing-title-before][CockRingSize of the item described] nickel [manly-penis] ring[clothing-title-after]". The text-shortcut of nickel-cock-ring is "pckr". Understand "portal", "portal ring" as nickel-cock-ring. nickel-cock-ring is rare.

To say ShortDesc of (C - nickel-cock-ring):
	say "nickel [manly-penis] ring".

To decide which number is the heaviness of (C - nickel-cock-ring):
	decide on 3.

To decide which number is the original price of (C - nickel-cock-ring):
	decide on 1.

To say ClothingDesc of (C - nickel-cock-ring):
	say "This heavy gauge, gleaming nickel ring is quite weighty, and quite large. [if C is worn]It's keeping your [ShortDesc of penis] rock hard.[otherwise]If you put it on, it would help your [ShortDesc of penis] stay hard, if your penis was strong enough to hold its weight.[end if]".

steel-cock-ring is a cock-ring. steel-cock-ring is metal. The printed name of steel-cock-ring is "[clothing-title-before][CockRingSize of the item described] steel [manly-penis] ring[clothing-title-after]". The text-shortcut of steel-cock-ring is "pckr". Understand "portal", "portal ring" as steel-cock-ring. steel-cock-ring is rare.

To say ShortDesc of (C - steel-cock-ring):
	say "steel [manly-penis] ring".

To say ClothingDesc of (C - steel-cock-ring):
	say "This gleaming steel ring is quite weighty. [if C is worn]It's keeping your [ShortDesc of penis] rock hard.[otherwise]If you put it on, it would help your [ShortDesc of penis] stay hard, if your penis was strong enough to hold its weight.[end if]".

egg-ring is a cock-ring. Understand "egg" as egg-ring. The text-shortcut of egg-ring is "ckre". egg-ring is plastic. egg-ring is rare. The printed name of egg-ring is "[clothing-title-before][CockRingSize of the item described] plastic egg ring[clothing-title-after]".
To say ShortDesc of (C - egg-ring):
	say "egg ring".
Definition: egg-ring is pink themed: decide yes.
To say ClothingDesc of (C - egg-ring):
	say "A pink plastic ring with a vibrating egg fixed to the front. [if C is worn]Its vibrations are slowly driving you insane![end if]".

To compute periodic effect of (P - egg-ring):
	increase the toy-charge of P by 1;
	if the toy-charge of P > 10:
		let F be penis;
		now the toy-charge of P is 0;
		say "[one of]Your [ShortDesc of P] is stimulating the base of your [ShortDesc of penis]! Every [if P is cursed]moment[otherwise]minute[end if] it stays attached is making you more aroused![or]Your [ShortDesc of P] continues to buzz against your [ShortDesc of penis]![or]Your [ShortDesc of P] is still vibrating strongly against your [ShortDesc of penis].[cycling]";
		stimulate F from P;
		if the rawness of F > the max-rawness of F / 2, RawUp F;[we don't want vibrators to create insane levels of soreness]
		if P is cursed, arouse 200;
	compute SlipCheck of P.

To decide which number is the original price of (C - egg-ring):
	decide on 1.
To decide which number is the raw-masturbation-bonus of (C - egg-ring):
	decide on 3.

To set up magic attribute of (C - egg-ring):
	let R be a random number between 1 and 10;
	if R < 3, now C is temptation;
	if R is 3, now C is endurance;
	if R is 4, now C is dominance;
	set up rare magic attribute of C.

condom of kings is a cock-ring. condom of kings is unique. condom of kings can be creamfilled. condom of kings is not creamfilled. The printed name of condom of kings is "[clothing-title-before][CockRingSize of the item described] rubber [manly-penis] ring of [if item described is creamfilled]slave [end if][if the player is gendered male]king[otherwise]queen[end if]s[clothing-title-after]". The text-shortcut of condom of kings is "ckrk". condom of kings is latex. condom of kings is unique. understand "rubber", "king", "queen", "slave" as condom of kings.

Definition: a condom of kings is nudism-enabling: decide yes.

To say ShortDesc of (C - condom of kings):
	say "[if C is cursed or C is creamfilled]pink[otherwise]white[end if] rubber [manly-penis] ring".

[TODO: better account for gender]
To say ClothingDesc of (C - condom of kings):
	if C is worn and C is cursed:[Cursed, but not worn condoms look different.]
		say "This pink rubber [manly-penis] ring is firmly clamped around the base of your [ShortDesc of penis], protecting it with a [if the size of penis < 8][PenisSizeFlav 8][otherwise][PenisSizeFlav the size of penis][end if], glowing barrier, preventing anyone from touching it, including yourself. [if C is not creamfilled]Wearing this makes you feel less manly with every passing minute, but there's no way of getting it off.[otherwise]Ever since you came in it, the inside of the barrier feels like it's full of warm, slimy [semen], sliding over your skin every time you move. Wearing this makes you feel less manly with every passing second, but until you find a way to take it off, you'll have to stew in your pearly shame.[end if]";[If cursed, the condom of kings is pink]
	otherwise:
		say "This white rubber [manly-penis] ring is projecting a [if the size of penis < 8][PenisSizeFlav 8][otherwise][PenisSizeFlav the size of penis][end if], glowing barrier above your [ShortDesc of penis], preventing anyone else from touching it. Your [if the player is gendered female]proud erection makes you feel like a queen![otherwise]manly erection makes you feel like a king![end if][line break][variable custom style]'I guess only a ruler bothers with a sword that never leaves its sheath.'[roman type][line break]".

Definition: condom of kings is product: decide yes.

To decide which number is the alchemy key of (C - condom of kings):
	decide on 13.

Definition: condom of kings is recipe specific: decide yes.

To set up magic state of (C - condom of kings):
	do nothing.

This is the condom of kings specific recipe rule:
	if condom of kings is fetish appropriate:
		now the Product in row 14 of the Table of Alchemy is 13;
		now the Recipe in row 14 of the Table of Alchemy is 1.
The condom of kings specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - condom of kings):
	now T is bland.

To decide which number is the initial outrage of (C - condom of kings):
	if C is creamfilled, decide on 15;
	decide on 0.

Check wearing condom of kings:
	if the player is not possessing a penis, say "Only [if transGender is 1]someone with a penis[otherwise if the bimbo of the player > 10 and the player is gendered female]a sexy man[otherwise if the player is gendered female]a man[otherwise]a real man[end if] could wear this." instead;
	if the size of penis < 4, say "Your [ShortDesc of penis] is too small; it would never stay on. " instead;
	repeat with C running through clothing worn by the player:
		if C is pussy covering:
			say "Your [printed name of C] are in the way." instead.

Report wearing condom of kings:
	let K be condom of kings;
	say "As you move your hands away, [if K is cursed]the ring clamps itself around the base of your [ShortDesc of penis] and turns bright pink. You try to take it off, but a glowing barrier springs into existence around your shaft";
	if K is cursed:
		say "As you move your hands away, the base of the ring clamps itself to your penis and suddenly turns bright pink. It must be cursed!".

Report taking off condom of kings:
	say "The ring crumbles to dust.";
	now the noun is not creamfilled;
	only destroy the noun.

To compute periodic effect of (C - condom of kings):
	if the size of penis < 2:
		say "Your [printed name of C] crumbles to dust.";
		remove C from play;
	otherwise if C is creamfilled or C is cursed:
		if a random number between -1 and 250 < the mystical size of penis and the mystical size of penis > min penis size:
			say "You feel your [printed name of C] shrink your [ShortDesc of penis]!";
			SpecialPenisDown 1;
	otherwise:
		if a random number between -250 and 13 > the mystical size of penis and the mystical size of penis < 10:
			SpecialPenisUp 1;
	compute SlipCheck of C.

Definition: condom of kings is stealable: decide no.

To say cock ring effect of (C - condom of kings):
	unless C is creamfilled:
		now C is creamfilled;
		if C is not cursed:
			say "Though your [semen] passes through the barrier, your [ShortDesc of C] seems to trap the 'essence' of your load, a wave of bright pink spreading out from every point it touched. The ring tightens as the aura of pride[if the player is gendered male] and manliness[end if] it overwritten with overwhelming shame. It's cursed!";
			now C is cursed;
		otherwise:
			say "Though your [semen] passes through the barrier, your [ShortDesc of C] seems to trap the 'essence' of your load, allowing it to slide over your skin.";
	otherwise:
		say "Your [printed name of C] throbs gently, keeping your [ShortDesc of penis] [if C is cursed]stuck[otherwise]nicely[end if] erect.".

Condom of Kings ends here.
