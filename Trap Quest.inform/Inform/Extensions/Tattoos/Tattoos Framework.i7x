Tattoos Framework by Tattoos begins here.

Tattoo is a kind of wearthing. Tattoo is wearable. The description of tattoo is usually "[tattoo-desc of item described]".
Report examining a tattoo:
	say "[visibility-desc of the noun][outrage-desc of the noun]".

Definition: a tattoo (called T) is drawable:
	decide yes.

Definition: a tattoo (called T) is eligible:
	decide no.

Definition: a tattoo (called T) is actually summonable:
	if the number of worn tattoos is 0, decide no;
	if T is drawable, decide yes;
	decide no.
	
To say tattoo-desc of (T - a tattoo):
	say "".

To summon (T - a tattoo):
	now T is worn by the player.

To decide which number is the heaviness of (T - a tattoo):
	decide on 0.

To decide which object is the coverer of (T - a tattoo):
	decide on nothing.

To decide which object is the concealer of (T - a tattoo):
	decide on nothing.

To say visibility-desc of (T - a tattoo):
	if the concealer of T is not nothing, say "It currently can't be seen thanks to your [concealer of T].";
	otherwise say "It can currently be seen by anyone who looks at you.".

To say outrage-desc of (T - a tattoo):
	if the unworn outrage of T is too humiliating:
		let C be the concealer of T;
		if C is clothing:
			if the unworn outrage of C < the unworn outrage of T, say "[variable custom style]I'm so glad this [ShortDesc of C] is covering up my tattoo. I can't let anyone see it, it's too embarrassing![roman type][line break]";
			otherwise say "[if T is not asshole tattoo][line break][variable custom style]I know it's an awful, trashy tattoo, but I think I'd actually rather have it on display than wear this ridiculous [ShortDesc of C]![roman type][line break]";
		otherwise:
			say "[variable custom style]How humiliating. I need to find something to wear to cover this up![roman type][line break]".

To decide which number is the initial outrage of (T - a tattoo):
	decide on 2. [Standard minimum outrage]

To decide which number is the initial cringe of (T - a tattoo):
	decide on 2. [Standard minimum cringe]

To decide which number is the unworn outrage of (T - a tattoo):
	let O be the initial outrage of T;
	if the initial cringe of T > 2:
		if diaper quest is 1, decide on 0; [No outrage in diaper quest if it's a childish tattoo]
		if the initial cringe of T > O, now O is the initial cringe of T; [convert cringe to outrage where appropriate in TQ]
	if O > 20, now O is 20;
	decide on O.

To decide which number is the unworn cringe of (T - a tattoo):
	let O be the initial cringe of T;
	if O > 20, now O is 20;
	decide on O.

Check taking off tattoo:
	say "That's permanently inked into your skin!" instead.

To say ShortDesc of (T - a tattoo):
	say "[T]".

Section 1 - Ass Tattoos

An ass tattoo is a kind of tattoo.
Definition: an ass tattoo (called A) is drawable:
	if there is a worn ass tattoo, decide no;
	decide yes.

To decide which object is the concealer of (T - an ass tattoo):
	decide on a random worn potentially asshole covering clothing.

Section 2 - Asshole Tattoos

An asshole tattoo is a kind of tattoo.
Definition: an asshole tattoo (called A) is drawable:
	if there is a worn asshole tattoo, decide no;
	if diaper quest is 1, decide no;
	decide yes.

To decide which object is the concealer of (T - an asshole tattoo):
	decide on the concealer of asshole.

To decide which number is the initial outrage of (T - an asshole tattoo):
	decide on 16.

To decide which number is the anal sensitivity influence of (C - an asshole tattoo):
	decide on 1.

Does the player mean examining an asshole tattoo: it is unlikely.
Does the player mean presenting an asshole tattoo: it is very unlikely.
Does the player mean orilubing something with an asshole tattoo: it is very unlikely.
Does the player mean plugging an asshole tattoo with something: it is very unlikely.

Section 3 - Crotch Tattoos

A crotch tattoo is a kind of tattoo.
Definition: a crotch tattoo (called A) is drawable:
	if there is a worn crotch tattoo, decide no;
	if diaper quest is 1, decide no;
	decide yes.

To decide which object is the concealer of (T - a crotch tattoo):
	decide on a random worn potentially vagina covering clothing.

To decide which number is the initial outrage of (T - a crotch tattoo):
	decide on 14.


Section 4 - Chest Tattoos

A chest tattoo is a kind of tattoo.
Definition: a chest tattoo (called A) is drawable:
	if there is a worn chest tattoo, decide no;
	decide yes.

To decide which object is the concealer of (T - a chest tattoo):
	decide on a random worn actually dense fully covering actually breast covering clothing.

To decide which number is the initial outrage of (T - a chest tattoo):
	decide on 8.


Section 5 - Leg Tattoos

Leg tattoo is a kind of tattoo.
Definition: a leg tattoo (called A) is drawable:
	if there is a worn leg tattoo, decide no;
	decide yes.

To decide which object is the concealer of (T - a leg tattoo):
	if there is a worn actually dense trousers, decide on a random worn actually dense trousers;
	decide on a random worn actually dense stockings.
	
To decide which number is the initial outrage of (T - a leg tattoo):
	decide on 4.
To decide which number is the cringe of (T - a leg tattoo):
	decide on 0.


Section 6 - Lower Back Tattoos

A lower back tattoo is a kind of tattoo.
Definition: a lower back tattoo (called A) is drawable:
	if there is a worn lower back tattoo, decide no;
	decide yes.

To decide which object is the concealer of (T - a lower back tattoo):
	decide on a random worn actually dense belly covering clothing.

To decide which number is the initial outrage of (T - a lower back tattoo):
	decide on 5.

Section 6b - Upper Back Tattoos

A upper back tattoo is a kind of tattoo.
Definition: a upper back tattoo (called A) is drawable:
	if there is a worn upper back tattoo, decide no;
	decide yes.

To decide which object is the concealer of (T - a upper back tattoo):
	decide on a random worn actually dense breast covering clothing.

To decide which number is the initial outrage of (T - a upper back tattoo):
	decide on 4.


Section 7 - Body Tattoos

[Body tattoos are miscellaneous and the player can have many of them. The chance of one being selected at random goes down, the more tattoos there are. They are not selected at random.]

A body tattoo is a kind of tattoo.
Definition: a body tattoo (called A) is drawable:
	if A is worn, decide no;
	if A is eligible, decide yes;
	decide no.

To decide which object is the concealer of (T - a body tattoo):
	decide on nothing.

Section 8 - Face Tattoos

A face tattoo is a kind of body tattoo.

To decide which object is the concealer of (T - a face tattoo):
	if there is a worn hood, decide on a random worn hood;
	decide on a random worn cultist veil.

To decide which number is the initial outrage of (T - a face tattoo):
	decide on 10.

Section 9 - Belly Tattoos

A belly tattoo is a kind of tattoo.

Definition: a belly tattoo (called A) is drawable:
	if there is a worn belly tattoo, decide no;
	decide yes.

To decide which object is the concealer of (T - a belly tattoo):
	decide on a random worn actually dense belly covering clothing.

To decide which number is the initial outrage of (T - a belly tattoo):
	decide on 3.


Section 10 - DQ Tattoos

[These never show up in TQ]

A DQ tattoo is a kind of body tattoo.
Definition: a dq tattoo (called A) is drawable:
	if diaper quest is 0, decide no;
	if A is worn, decide no;
	decide yes. [So these can be selected randomly!]

Include Buttslut Tattoo by Tattoos.
Include Put It In My Ass Tattoo by Tattoos.
Include Freedom Tattoo by Tattoos.
Include Spank Me Tattoo by Tattoos.
Include Spank My Kitty Tattoo by Tattoos.
Include Just The Tip Tattoo by Tattoos.
Include Tentacles Tattoo by Tattoos.
Include Prime USDA Tattoo by Tattoos.

Include Funcenter Tattoo by Tattoos.
Include Daddy's Cock Only Tattoo by Tattoos.
Include Anal Dragon Tattoo by Tattoos.
Include Anal Star Tattoo by Tattoos.
Include Butt Slut Asshole Tattoo by Tattoos.
Include Butterfly Wings Asshole Tattoo by Tattoos.
Include Eat Your Heart Out Tattoo by Tattoos.
Include Spit First Tattoo by Tattoos.
Include Asshole Cupid Tattoo by Tattoos.

Include No Panties Tattoo by Tattoos.
Include Topless Tattoo by Tattoos.
Include Hundred Percent Cunt Tattoo by Tattoos.
Include For Deposit Only Tattoo by Tattoos.
Include Born To Lose Tattoo by Tattoos.
Include Lucky You Tattoo by Tattoos.
Include Forever Tattoo by Tattoos.
Include Slut Tattoo by Tattoos.
Include Womb Diagram Tattoo by Tattoos.
Include Zip Tattoo by Tattoos.
Include Bird Nest Tattoo by Tattoos.
Include Demon Tattoo by Tattoos.
Include Let it Die Tattoo by Tattoos.
Include Daddy's Little Girl Tattoo by Tattoos.
Include Whore is my Mind Tattoo by Tattoos.
Include Pussy Deluxe Tattoo by Tattoos.
Include Worthless Cunt Tattoo by Tattoos.
Include Xavier's Cunt Tattoo by Tattoos.
Include Slut for Black Cock Tattoo by Tattoos.
Include Cumlust Tattoo by Tattoos.

Include Wet Dream Tattoo by Tattoos.
Include You Live You Learn Tattoo by Tattoos.
Include Overcome Tattoo by Tattoos.
Include Cupcake Tattoo by Tattoos.
Include Sissy Black Cock Whore Tattoo by Tattoos.
Include Atlas Tattoo by Tattoos.
Include True Love Tattoo by Tattoos.
Include Unfaithful Tattoo by Tattoos.
Include Bat Tattoo by Tattoos.
Include Target Tattoo by Tattoos.
Include Showtime Tattoo by Tattoos.
Include Marker Chest Tattoo by Tattoos.

Include Heavyweight Tattoo by Tattoos.
Include Witchcraft Tattoo by Tattoos.
Include White Trash Tattoo by Tattoos.
Include Ribbon Bow Tattoo by Tattoos.

Include Semen Demon Tattoo by Tattoos.
Include Stupid Whore Tattoo by Tattoos.
Include Tear It Up Daddy Tattoo by Tattoos.
Include Anal Slut Tattoo by Tattoos.
Include Princess Tattoo by Tattoos.
Include Property Tattoo by Tattoos.
Include Bitch Tattoo by Tattoos.

Include My Vagina Tattoo by Tattoos.
Include Once You Go Black Tattoo by Tattoos.

Include Virgin Void Tattoo by Tattoos.
Include Black Hole Tattoo by Tattoos.
Include Double Penetration Tattoo by Tattoos.
Include Cum Dump Tattoo by Tattoos.
Include Clit Piercing Tattoo by Tattoos.
Include Cum Dumpster Lip Tattoo by Tattoos.
Include Nothing's Sacred Tattoo by Tattoos.
Include Fuckin Classy Tattoo by Tattoos.
Include No Regrets Tattoo by Tattoos.
Include Angel Tattoo by Tattoos.
Include Demongirl Tattoo by Tattoos.
Include Bed Wetter Tattoo by Tattoos.
Include Bred Bull Tattoo by Tattoos.
Include Ink Me Tattoo by Tattoos.
Include Abyssal Tattoo by Tattoos.
Include Nintendolls Brand Tattoo by Tattoos.
Include Bright Hair Tattoo by Tattoos.
Include Pentagram Tattoo by Tattoos.
Include Tally Tattoos by Tattoos.
Include Black Owned Tattoo by Tattoos.
Include Black Cock Only Tattoo by Tattoos.
Include Failed Potty Training Tattoo by Tattoos.
Include Weakness Tattoo by Tattoos.
Include Dolly Tattoo by Tattoos.
Include Thorny Tattoo by Tattoos.

Include Empty Mind Tattoo by Tattoos.
Include Cheating Whore Tattoo by Tattoos.
Include Fuck Me Tattoo by Tattoos.
Include Free Ride Tattoo by Tattoos.

Include Safety Pin Tattoo by Tattoos.
Include Cloth Revolution Tattoo by Tattoos.
Include Take It Easy Tattoo by Tattoos.
Include Flower Ballerina Tattoo by Tattoos.
Include Bird Kitty Tattoo by Tattoos.
Include Paw Print Tattoo by Tattoos.
Include Tribal Diaper Tattoo by Tattoos.
Include Unicorn Horn Finger Tattoo by Tattoos.
Include Cupcake Wrist Tattoo by Tattoos.
Include Lipstick Crystal Tattoo by Tattoos.
Include DrinkMe Tattoo by Tattoos.
Include Nun Blowjob Tattoo by Tattoos.
Include Babygirl Tattoo by Tattoos.
Include Royal Hearts Tattoo by Tattoos.
Include Princess Castle Tattoo by Tattoos.
Include Kitty Cat Tattoo by Tattoos.
Include Birds Tattoo by Tattoos.
Include Ribbon Bow Neck Tattoo by Tattoos.
Include Teapot Tattoo by Tattoos.
Include Elephant Tattoo by Tattoos.
Include Diapered Dinosaur Tattoo by Tattoos.
Include Daddys Wild Child Tattoo by Tattoos.
Include Can't Change Self Tattoo by Tattoos.
Include Cum When Messing Tattoo by Tattoos.

Include Demon Belly Mark by Tattoos.
Include Demon Link Mark by Tattoos.

Include Whip Tattoo by Tattoos.

Include Inking by Actions.


Tattoos Framework ends here.

