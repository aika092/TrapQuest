Bridal Outfits by Dresses begins here.

A bridal dress is a kind of overdress. A bridal dress is unique. A bridal dress is silk. A bridal dress is arm exposing. The printed name of a bridal dress is "[clothing-title-before][MediumDesc of item described][clothing-title-after]".

To say ShortDesc of (C - a bridal dress):
	say "bridal dress".

Definition: a bridal dress is white themed: decide yes.

To compute post transformation effect of (C - a bridal dress):
	if C is blandness:
		now C is strength stealing;
		say "[bold type][BigNameDesc of C] [bold type]has gained a new magical effect...  You can sense that it is now [']strength stealing['], and will take some of your strength away if you remove it normally.[roman type][line break]".

long bridal dress is a bridal dress. Understand "short" as long bridal dress when the item described is short. The text-shortcut of long bridal dress is "lbrd".

To compute class set up of (C - long bridal dress):
	if the ceremony of betrothal-quest is false:
		now C is knee-length;
	otherwise:
		if vaginal-virginity-quest is appropriate:
			now the quest of C is vaginal-virginity-quest;
			now C is cursed;
		now C is short.

Figure of long bridal dress is the file "Items/Clothes/Upper/Special/Bridal/bridaldress1a.png".
Figure of short bridal dress is the file "Items/Clothes/Upper/Special/Bridal/bridaldress1b.png".

To decide which figure-name is the clothing-image of (C - long bridal dress):
	if C is knee-length, decide on figure of long bridal dress;
	decide on figure of short bridal dress.

Definition: long bridal dress is class-relevant:
	if the class of the player is bride and (the vaginalvirgin of the player is 1 or bride-consort is the throne), decide yes;
	decide no.

To say MediumDesc of (C - long bridal dress):
	say "[if C is knee-length]long[otherwise]short[end if] bridal dress".

To say ClothingDesc of (C - long bridal dress):
	say "This silk white [MediumDesc of C] isn't too bad, as far as clothing items in this game go. The long flowing skirt [if C is knee-length]goes down past your knees[otherwise]has been removed, transforming it into party dress mode[end if]. The belly section is sheer to expose a bit of sexy skin, and it has no arms, but except for that it's just on the sexy side of normal[if C is knee-length]. You can sense it somewhat reducing the chances of aggressors deciding to take your virginity[end if].".

To decide which number is the initial outrage of (C - long bridal dress):
	if C is knee-length, decide on 1;
	decide on 3.

Definition: long bridal dress is party themed:
	if it is knee-length, decide no;
	decide yes.

To compute virginity-loss of (C - long bridal dress):
	if debugmode > 0, say "Things penetrating vagina: [list of things penetrating vagina].";
	if bride-consort is not penetrating vagina:
		say "For failing to [if bride-consort is monster]lose your virginity to [FuckerDesc of bride-consort][otherwise]save your virginity until marriage[end if], you feel a curse falling on your [MediumDesc of C]!";
		now C is cursed;
		now the quest of C is vaginal-addict-quest;
		if C is knee-length, transform C into sexy bridal dress;
		otherwise transform C into slutty bridal dress.

This is the bridal dress pussy slut rule:
	if long bridal dress is worn, decrease the desirability of vagina by 4.
The bridal dress pussy slut rule is listed in the pussy slut eligibility rules.

To decide which object is the unique-upgrade-target of (C - long bridal dress):
	if C is knee-length, decide on sexy bridal dress;
	otherwise decide on slutty bridal dress.

sexy bridal dress is a bridal dress. sexy bridal dress is finger covering. The text-shortcut of sexy bridal dress is "sbrd".

Figure of sexy bridal dress is the file "Items/Clothes/Upper/Special/Bridal/bridaldress2.png".

To decide which figure-name is the clothing-image of (C - sexy bridal dress):
	decide on figure of sexy bridal dress.

Definition: sexy bridal dress is class-relevant:
	if the class of the player is bride, decide yes;
	decide no.

Definition: sexy bridal dress is slitted: decide yes.
Definition: sexy bridal dress is usually thigh covering: decide no.

Definition: sexy bridal dress is potentially-top-layer-concealing: decide no. [Only partially conceals top layer clothing]
Definition: sexy bridal dress is potentially-bottom-layer-concealing: decide no. [Only partially conceals bottom layer clothing]

To say MediumDesc of (C - sexy bridal dress):
	say "sexy bridal dress".

To say ClothingDesc of (C - sexy bridal dress):
	say "This silk white [MediumDesc of C] has a long skirt but with extremely high cut slits for the legs, which expose the wearer's hips. Similarly the cut of the top makes it difficult to conceal a bra. Long white gloves cover the wearer's hands.".

To decide which number is the initial outrage of (C - sexy bridal dress):
	decide on 5.

slutty bridal dress is a bridal dress. slutty bridal dress is unskirted. slutty bridal dress is crotch-intact. slutty bridal dress is bottom-exclusive. The text-shortcut of slutty bridal dress is "stbd".

Figure of slutty bridal dress is the file "Items/Clothes/Upper/Special/Bridal/bridaldress3.png".

To decide which figure-name is the clothing-image of (C - slutty bridal dress):
	decide on figure of slutty bridal dress.

Definition: slutty bridal dress is class-relevant:
	if the class of the player is bride, decide yes;
	decide no.

To compute class set up of (C - slutty bridal dress):
	if vaginal-virginity-quest is appropriate:
		now the quest of C is vaginal-virginity-quest;
		now C is cursed.

Definition: slutty bridal dress is layer-concealing: decide no. [Only partially conceals]
Definition: slutty bridal dress is partially-layer-concealing: decide yes.
Definition: slutty bridal dress is unskirted themed: decide yes.
Definition: slutty bridal dress is party themed: decide yes.

To say MediumDesc of (C - slutty bridal dress):
	say "slutty bridal dress".

To say ClothingDesc of (C - slutty bridal dress):
	say "This silk white [MediumDesc of C] is actually more of a body-con negligee item with a sheer skirt attached. It definitely looks like the only appropriate place to wear it is in the bedroom.".

To decide which number is the initial outrage of (C - slutty bridal dress):
	decide on 7.
To decide which number is the crotch-tightness of (C - slutty bridal dress):
	decide on 4.


princess bride dress is a bridal dress. princess bride dress is finger covering. princess bride dress is fully covering. princess bride dress is neck covering. princess bride dress is not-displacable-always-fuckable. princess bride dress is totally-exclusive. princess bride dress is sheer. The text-shortcut of princess bride dress is "pbrd".

Figure of princess bride dress is the file "Items/Clothes/Upper/Special/Bridal/bridaldress4.png".

To decide which figure-name is the clothing-image of (C - princess bride dress):
	decide on figure of princess bride dress.

Definition: princess bride dress is class-relevant:
	if the class of the player is bride or the class of the player is princess, decide yes;
	decide no.

To compute class set up of (C - princess bride dress):
	now C is strength-influencing;
	if the ceremony of betrothal-quest is false:
		now the quest of C is podium-quest;
		now the raw-magic-modifier of C is -4;
		now C is posture training;
		now C is cursed;
	otherwise:
		now the raw-magic-modifier of C is 1;
		now C is elasticity.


To compute quest completion of (Q - podium-quest) on (C - princess bride dress):
	if the raw-magic-modifier of C < 1:
		say "Your [C] becomes a ";
		now the raw-magic-modifier of C is 2;
		now C is elasticity;
		say "[C]![line break][variable custom style]Oh wow... I feel STRONG! Ssuddenly it seems like it might not be a bad idea to keep wearing this after all![line break]";
	say "[bold type]";
	let disappearTime be 0;
	let QC be questNothingHappens;
	if C is removable and C is cursed:
		say "You can feel that the magic holding your [ShortDesc of C] together is about to give out.[roman type] Do you want to concentrate really hard to try and get it to stay around? (This may have minor side effects.) ";
		if the player is consenting, now QC is questGape;
		otherwise now disappearTime is 1;
	if disappearTime is 1:
		say QuestCompleteFlav of Q on C;
		increase the quest-completions of Q by 1;
		only destroy C;
	otherwise:
		say QuestPersistFlav of Q on C;
		compute persistent reward of Q on C;
		increase the quest-completions of Q by 1;
		if C is bland, now C is blessed;
		if C is cursed, silently bless C;
	say "[roman type][line break]";
	compute consequence of QC.

Definition: princess bride dress is slitted: decide yes.
Definition: princess bride dress is bow themed: decide yes.

Definition: princess bride dress is skirt-covering-crotch: decide no.
Definition: princess bride dress is potentially penis covering: decide no.
Definition: princess bride dress is potentially at least partially penis concealing: decide no.
Definition: princess bride dress is potentially erection concealing: decide no.
Definition: princess bride dress is potentially at least partially asshole covering: [can't cover much but it does partially cover the butthole]
	if it is crotch-displaced, decide no;
	decide yes.

To say MediumDesc of (C - princess bride dress):
	say "princess bride dress".

To say ClothingDesc of (C - princess bride dress):
	say "This silk white [MediumDesc of C] has a long skirt but with a sheer rear half and a large missing section at the front, which exposes the wearer's genitals. Similarly the top section is completely sheer at the chest. Long white gloves cover the wearer's hands, again with the arm sections being sheer.".

To decide which number is the initial outrage of (C - princess bride dress):
	decide on 6.


housewife dress is a bridal dress. housewife dress is high cut. housewife dress is knee-length. housewife dress is arm exposing. The text-shortcut of housewife dress is "hwd".

Figure of housewife dress is the file "Items/Clothes/Upper/Special/Bridal/bridaldress5.png".

To decide which figure-name is the clothing-image of (C - housewife dress):
	decide on figure of housewife dress.

Definition: housewife dress is class-relevant:
	if the class of the player is bride or the class of the player is fertility goddess, decide yes;
	decide no.

To compute class set up of (C - housewife dress):
	now C is strength-influencing;
	now C is absorption.

Definition: housewife dress is slitted: decide yes.
Definition: housewife dress is bow themed: decide yes.

To say ShortDesc of (C - housewife dress):
	say "housewife dress".
To say MediumDesc of (C - housewife dress):
	say "blue housewife dress".

To say ClothingDesc of (C - housewife dress):
	say "This long [MediumDesc of C] has a long skirt, high neckline, and giant bow at the back. Anyone who wears this is surely rather well domesticated and subserviant.".

To decide which number is the initial outrage of (C - housewife dress):
	decide on 1.


Bridal Outfits ends here.
