Make Up Kit by Consumables begins here.

A make up kit is a kind of collectible. There are 3 make up kits. The printed name of make up kit is "[TQlink of item described]make up kit[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of make up kit is "[TQlink of item described]make up kits[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of make up kit is "mk". Understand "makeup", "makeup kit" as make up kit.
Figure of make up kit is the file "Items/Collectibles/makeup1.png".

make up time is a number that varies.

To decide which figure-name is the examine-image of (C - a make up kit):
	decide on figure of make up kit.

To say ExamineDesc of (B - a make up kit):
	say "A small box which contains an internal mirror and a few brushes. It looks you can increase your make up level by using this.".

To decide which number is the outrage of (C - a make up kit):
	decide on 5.

To decide which number is the crafting key of (C - a make up kit):
	decide on 34.
To decide which number is the bartering value of (T - a make up kit) for (M - a wench):
	if M is horny-wench, decide on 0;
	decide on 3.
To decide which number is the bartering value of (T - a make up kit) for (M - a gladiator):
	decide on 1.
To decide which number is the bartering value of (T - a make up kit) for (M - an aeromancer):
	decide on 1.
To decide which number is the bartering value of (T - a make up kit) for (M - a matron):
	decide on 2.
To decide which number is the bartering value of (T - a make up kit) for (M - a dominatrix):
	decide on 2.
To decide which number is the bartering value of (T - a make up kit) for (M - a demoness):
	decide on 2.
To decide which number is the bartering value of (T - a make up kit) for (M - a wrestler):
	decide on 4.
To decide which number is the bartering value of (T - a make up kit) for (M - a mannequin):
	decide on 4.
To decide which number is the bartering value of (T - a make up kit) for (M - a witch):
	decide on 2.

To say ShortDesc of (C - a make up kit):
	say "make up kit".

Brushing it with is an action applying to two things.
Check brushing something with:
	if the noun is not make up kit, say "This verb is used for make up kits!" instead;
	if the second noun is not a body part:
		if the second noun is a monster, say "I don't think [he of the second noun] would let you!" instead;
		otherwise say "You can only use a make up kit on a body part." instead;
	if the second noun is not face, say "You can only use a make up kit on your face." instead;
	if the make-up of face >= 3, say "You cannot make your face any more slutty than it already is!" instead;
	if the player is at least partially immobile, say "Aren't you a bit busy?" instead;
	if there is a worn hood, say "You would need to take your hood off first." instead;
	if the player is not able to manually use manual dexterity, do nothing instead.

Carry out brushing something with:
	reset multiple choice questions;
	let MU be the make-up of face;
	repeat with N running from MU to 3:
		if N is MU, set numerical response N to "Don't add any make up";
		otherwise set numerical response N to the substituted form of "[if N is 1]Add a light touch of make up[otherwise if N is 2 and the makeupskill of the player is 1]Add a provocative amount of make up (and get a large temporary extra boost to charisma!)[otherwise if N is 2]Add a provocative amount of make up[otherwise if diaper quest is 0]Paint yourself like a whore[otherwise]Paint yourself in over-the-top make up[end if]";
	compute multiple choice question;
	say "[if the make-up of face is MU][otherwise]You get to work, and when you are finished your[end if] ";
	if the chosen numerical response matches the text "any":
		say "You change your mind, and do nothing. Your face [MakeUpDesc].";
	otherwise:
		allocate 6 seconds;
		say "You use the mirror to help you apply a[if the make-up of face > 0]nother[end if] layer of make up. ";
		FaceUp player-numerical-response - MU;
		say "When you are finished, your face [MakeUpDesc]. You feel more [if diaper quest is 1]grown up[otherwise]charismatic[end if][if the make-up of face > 1], but also less dignified[end if]. [if the make-up of face is 2 and the makeupskill of the player is 1]In fact, thanks to how skilled you are at applying make up, you now feel SUPER charismatic! You get the feeling that this will last for a decent length of time, or until your make up level changes. [end if]";
		check stealing of the noun;
		now make up time is earnings.

Definition: a make up kit is oral sex themed: decide yes.

Understand "brush [something] on [something]", "makeup [something] on [something]" as brushing it with.

To compute banish drop of (C - a make up kit) from (M - a mannequin):
	if C is off-stage:
		now C is in the location of the player;
		say "You notice that [his of M] [ShortDesc of C] appears to have remained intact.";
		increase the loot dropped of M by 1;
		compute autotaking C.

Definition: a make up kit is shop-eligible: decide yes.

Make Up Kit ends here.
