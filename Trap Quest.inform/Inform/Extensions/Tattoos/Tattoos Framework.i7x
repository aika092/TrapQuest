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

Tattoos Framework ends here.

