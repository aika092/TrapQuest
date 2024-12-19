Equippables Framework by Equippables begins here.

An equippable is a kind of clothing. An equippable is usually slap ready. An equippable is usually manly. An equippable can be melee or projectile. An equippable is usually melee. An equippable is usually unique.

To decide which number is the default-soak-limit of (C - an equippable): decide on 5.

The printed name of an equippable is "[clothing-title-before][MediumDesc of item described][clothing-title-after]".

To say ShortDesc of (E - an equippable):
	say "weapon".

Definition: an equippable is alwaysSure: decide yes.

Definition: an equippable is stealable:
	if diaper quest is 1, decide yes;
	decide no.

Definition: a thing is zappable: decide no. [Can it be used to cast a magic combat spell?]

Definition: a clothing is zappable:
	if it is zap ready and it is worn, decide yes;
	decide no.
Definition: a clothing is hand ready:
	if it is slap ready or it is zap ready, decide yes;
	decide no.

To decide which object is the at least partial concealer of (C - an equippable):
	decide on nothing.
To decide which object is the concealer of (C - an equippable):
	decide on nothing.

Understand "wield [equippable]", "equip [equippable]" as wearing.

To compute attack of (E - a clothing) at (M - a monster):
	if E is zap ready:
		if the zap damage improvement of E > 0:
			say "You try to use your [ShortDesc of E] to cast a spell at [NameDesc of M]. Bang! A bolt of energy shoots out strikes [him of M]! A direct hit!";
		otherwise:
			say "You try to use your [ShortDesc of E] to cast a spell at [NameDesc of M]. Nothing happens!";
	otherwise:
		say "You strike the [noun] with your [E]! ".

To compute attack effect of (E - an equippable):
	do nothing.

To decide which number is the slap damage improvement of (E - a thing):
	decide on 0.
To decide which number is the zap damage improvement of (E - a thing):
	decide on 0.

Part 1 - Gloves

A gloves is a kind of clothing. A gloves is usually unique. Understand "pair", "pair of", "glove", "gloves" as gloves.

Definition: a gloves is nudism-enabling: decide yes.

To decide which number is the slap damage improvement of (G - a gloves):
	if G is blessed, decide on 2;
	decide on 1.

A big-gloves is a kind of gloves. A big-gloves is usually slap ready. [gloves that would prevent someone wielding a weapon]

To decide which number is the slap damage improvement of (G - a big-gloves):
	if G is blessed, decide on 0;
	decide on -1.

This is the big-gloves prevent manual dexterity rule:
	let C be a random worn big-gloves;
	if C is big-gloves:
		if manual hands attempt is 1, say "[BigNameDesc of C] is preventing you from having the manual dexterity to do that.";
		rule fails.
The big-gloves prevent manual dexterity rule is listed in the manual dexterity restriction rules.

tongue-gloves is a gloves. tongue-gloves is unique. tongue-gloves is biological. The printed name of tongue-gloves is "[clothing-title-before]tongue gloves[clothing-title-after]". The text-shortcut of tongue-gloves is "tgvs". Understand "tongue", "gloves" as tongue-gloves.

Figure of white tongue gloves is the file "Items/Accessories/Equippables/tonguegloves1a.png".
Figure of tonguing white tongue gloves is the file "Items/Accessories/Equippables/tonguegloves1b.png".
Figure of black tongue gloves is the file "Items/Accessories/Equippables/tonguegloves2a.png".
Figure of tonguing black tongue gloves is the file "Items/Accessories/Equippables/tonguegloves2b.png".

To decide which figure-name is the clothing-image of (C - tongue-gloves):
	if tonguesBlack is true:
		if C is tonguing, decide on figure of tonguing black tongue gloves;
		decide on figure of black tongue gloves;
	otherwise:
		if C is tonguing, decide on figure of tonguing white tongue gloves;
		decide on figure of white tongue gloves.

To say ClothingDesc of (C - tongue-gloves):
	say "A pair of [tonguesColour] gloves that nearly reach your armpit, with tongues for laces. [TongueStatus of C]".

To say ShortDesc of (C - tongue-gloves):
	say "pair of tongued gloves".

Definition: tongue-gloves is demonic: decide yes.
Definition: tongue-gloves is tongued: decide yes.
Definition: tongue-gloves is transformation-protected: decide yes.
Definition: tongue-gloves is white themed:
	if tonguesBlack is false, decide yes;
	decide no.
Definition: tongue-gloves is black themed:
	if tonguesBlack is true, decide yes;
	decide no.

To decide which number is the initial outrage of (C - tongue-gloves):
	if C is tonguing, decide on 14;
	decide on 4.

Part 2 - Wands

A vibe-wand is a kind of equippable. A vibe-wand is usually zap ready. Understand "vibe", "vibrator", "wand", "vibrating" as vibe-wand. A vibe-wand is usually projectile. A vibe-wand is usually plastic.
wandAttacks is a number that varies.

To decide which number is the masturbation-bonus of (E - a vibe-wand):
	decide on 1 + the magic-modifier of E + the raw-masturbation-bonus of E.

To decide which number is the zap damage improvement of (W - a vibe-wand):
	let X be MagicPowerDamage + 2;
	increase X by the magic-modifier of W;
	if X < 0, decide on 0;
	decide on X.

To compute attack of (W - a vibe-wand) at (M - a monster):
	say "You flick the wand, slashing at [NameDesc of M] with arcs of [if W is pink themed]pink [end if]magic.".

To decide which number is the raw-masturbation-bonus of (E - a vibe-wand):
	decide on 0.

To decide which number is the initial outrage of (E - a vibe-wand):
	decide on 8.

Part 3 - Wearability

equippable wearability rules is a rulebook. The wearability rules of an equippable is usually equippable wearability rules.
gloves wearability rules is a rulebook. The wearability rules of gloves is usually gloves wearability rules.
gloves removability rules is a rulebook. The removability rules of gloves is usually gloves removability rules.

This is the fingers gloves clash rule:
	repeat with C running through worn finger covering clothing:
		if C is not wearing-target:
			if summoning is 0 and autowear is false, say "You can't wear that at the same time as [NameDesc of C].";
			rule fails.
The fingers gloves clash rule is listed in the gloves wearability rules.

This is the equip after wearing gloves rule:
	repeat with E running through worn hand ready clothing:
		if E is clothing:
			if summoning is 0 and autoremove is false, say "You would need to stop wielding [NameDesc of E] first[if wearing-target is not hand ready] (but you should be able to wield it again afterwards)[end if].";
			rule fails.
The equip after wearing gloves rule is listed in the gloves wearability rules.

This is the unequip before removing gloves rule:
	repeat with E running through worn hand ready clothing:
		if E is clothing and E is not wearing-target:
			if summoning is 0 and autoremove is false, say "You would need to stop wielding [NameDesc of E] first.";
			rule fails.
The unequip before removing gloves rule is listed in the gloves removability rules.

painted-vibrator-hands is a gloves.
The printed name of painted-vibrator-hands is "[clothing-title-before]painted vibrator hands[clothing-title-after]". The text-shortcut of painted-vibrator-hands is "pvh". Figure of painted-vibrator-hands is the file "Items/Accessories/Equippables/gloves4.png". Understand "painted", "vibrator", "hands" as painted-vibrator-hands.
Definition: painted-vibrator-hands is blue themed: decide yes.
Definition: painted-vibrator-hands is transformation-protected: decide yes.
Definition: painted-vibrator-hands is removable: decide no.
Definition: painted-vibrator-hands is discovered varied: decide no.
To decide which number is the stimulation of (D - painted-vibrator-hands) on (B - a body part):
	decide on a random number between 5 and 10.
To decide which figure-name is clothing-image of (H - painted-vibrator-hands):
	decide on figure of painted-vibrator-hands.
To say ClothingDesc of (Y - painted-vibrator-hands):
	say "Blue and white paint has been applied to the backs of your hands in the correct pattern to complete the missing pattern around your crotch. Two silently but powerfully buzzing blue egg vibrators are somehow stuck to the inner tips of your two thumbs. That's right... in order to make your painted-on cutoffs look convincing, you would need to push the two egg vibrators into your sensitive clit! To decide where to put your arms, you need to use the command [bold type]adjust arms[roman type].".
To say ShortDesc of (Y - painted-vibrator-hands):
	say "thumb vibrators".
To say unique-verb-desc of (T - painted-vibrator-hands):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if realisticArms is 1] [link][bracket]arms[close bracket][as]adjust arms[end link][end if]".
To construct normal buttons for (T - painted-vibrator-hands):
	if ButtonTableFull is 0 and realisticArms is 1:
		choose a blank row in the Table of Buttons;
		now the ButtonCommand entry is "adjust arms";
		now the ButtonImage entry is the examine-image of predicament-painted-cutoffs;
		now the ButtonColour entry is lightModeFullGreen.

candy-cane-gloves is a gloves. candy-cane-gloves is latex.
The printed name of candy-cane-gloves is "[clothing-title-before]candy cane gloves[clothing-title-after]". The text-shortcut of candy-cane-gloves is "ccg". Figure of candy-cane-gloves is the file "Items/Accessories/Equippables/gloves2.png". Understand "candy", "cane", "gloves" as candy-cane-gloves.
Definition: candy-cane-gloves is class-relevant:
	if the class of the player is santa's little helper, decide yes;
	decide no.
Definition: candy-cane-gloves is red themed: decide yes.
Definition: candy-cane-gloves is white themed: decide yes.
Definition: candy-cane-gloves is christmas themed: decide yes.
Definition: candy-cane-gloves is transformation-protected: decide yes.
To decide which figure-name is clothing-image of (H - candy-cane-gloves):
	decide on figure of candy-cane-gloves.
To compute class set up of (Y - candy-cane-gloves):
	now the raw-magic-modifier of Y is -2;
	now Y is oral-sex-addiction-influencing.
To say ClothingDesc of (Y - candy-cane-gloves):
	say "These elbow-length gloves have a red and white striped pattern, much like a candy cane.".
To say ShortDesc of (Y - candy-cane-gloves):
	say "candy cane gloves".
To say MediumDesc of (Y - candy-cane-gloves):
	say "candy cane pattern elbow-length gloves".
To decide which number is the initial outrage of (C - candy-cane-gloves):
	decide on 3.

football-gloves is a gloves.
The printed name of football-gloves is "[clothing-title-before]football goalkeeper gloves[clothing-title-after]". The text-shortcut of football-gloves is "fbg". Figure of football-gloves is the file "Items/Accessories/Equippables/gloves3.png". Understand "football goalkeeper", "goalkeeper", "gloves" as football-gloves.
Definition: football-gloves is transformation-protected: decide yes.
Definition: football-gloves is removable: decide no.
Definition: football-gloves is discovered varied: decide no.
To decide which figure-name is clothing-image of (H - football-gloves):
	decide on figure of football-gloves.
To say ClothingDesc of (Y - football-gloves):
	say "These blue gloves have a hidden electronic device that can detect how far away they are from the football.".
To say ShortDesc of (Y - football-gloves):
	say "football gloves".
To say MediumDesc of (Y - football-gloves):
	say "blue football goalkeeper gloves".
To decide which number is the initial outrage of (C - football-gloves):
	decide on 0.
To decide which number is the wornArmsRequired of (C - football-gloves):
	if the game-state of team-football-predicament is 0, decide on 2;
	decide on 0.
To compute periodic effect of (C - football-gloves):
	compute school periodic effect of C.
To compute school periodic effect of (C - football-gloves):
	if the player is in Predicament20 or the player is not in a predicament room:
		say "[BigNameDesc of football-gloves] fizzles from existence!";
		only destroy football-gloves.

qos-gloves is a gloves. qos-gloves is latex.
The printed name of qos-gloves is "[clothing-title-before]queen of spades gloves[clothing-title-after]". The text-shortcut of qos-gloves is "qosg". Figure of qos-gloves is the file "Items/Accessories/Equippables/gloves5.png". Understand "queen", "spades", "queen of spades", "gloves" as qos-gloves.
Definition: qos-gloves is class-relevant:
	if the class of the player is bride, decide yes;
	decide no.
Definition: qos-gloves is discovered varied: decide no.
To compute class set up of (G - qos-gloves):
	now the raw-magic-modifier of G is the square root of the bbc addiction of the player;
	now G is dominance.
To decide which figure-name is clothing-image of (H - qos-gloves):
	decide on figure of qos-gloves.
To say ClothingDesc of (Y - qos-gloves):
	say "These fingerless white rubber gloves have black spade symbols on their backs.".
To say ShortDesc of (Y - qos-gloves):
	say "fingerless gloves".
To say MediumDesc of (Y - qos-gloves):
	say "white queen of spades gloves".
To decide which number is the initial outrage of (C - qos-gloves):
	decide on 3.
To decide which number is the slap damage improvement of (G - qos-gloves):
	decide on the raw-magic-modifier of G.
Definition: qos-gloves is white themed: decide yes.
Definition: qos-gloves is interracial themed: decide yes.
Definition: qos-gloves is playing card themed: decide yes.

combat-gloves is a gloves. combat-gloves is leather.
The printed name of combat-gloves is "[clothing-title-before]combat gloves[clothing-title-after]". The text-shortcut of combat-gloves is "cbg". Figure of combat-gloves is the file "Items/Accessories/Equippables/gloves6.png". Understand "combat", "gloves" as combat-gloves.
Definition: combat-gloves is class-relevant:
	if the class of the player is barbarian, decide yes;
	decide no.
Definition: combat-gloves is discovered varied: decide no.
To decide which figure-name is clothing-image of (H - combat-gloves):
	decide on figure of combat-gloves.
To say ClothingDesc of (Y - combat-gloves):
	say "These fingerless black leather gloves will help you pack a punch.".
To say ShortDesc of (Y - combat-gloves):
	say "fingerless gloves".
To say MediumDesc of (Y - combat-gloves):
	say "black fingerless combat gloves".
To decide which number is the initial outrage of (C - combat-gloves):
	decide on 0.
To decide which number is the slap damage improvement of (G - combat-gloves):
	decide on 3.
Definition: combat-gloves is black themed: decide yes.

A handmaiden-gloves is a kind of gloves.
The printed name of a handmaiden-gloves is "[clothing-title-before][clothing-material of item described] handmaiden gloves[clothing-title-after]". Understand "handmaiden", "gloves" as a handmaiden-gloves.
Definition: a handmaiden-gloves is class-relevant:
	if the class of the player is stripper, decide yes;
	decide no.
Definition: a handmaiden-gloves is discovered varied: decide no.
To compute class set up of (C - a handmaiden-gloves):
	now C is blandness;
	now C is bland;
	now the raw-magic-modifier of C is 0.
handjob-power is a number that varies. [not tied to the object, for seamless transmission between the two gloves]
To decide which number is the slap damage improvement of (G - a handmaiden-gloves):
	if handjob-power > 0, decide on 4;
	decide on 0.
To compute attack effect of (G - a handmaiden-gloves):
	if attack-type is 1 and handjob-power > 0:
		decrease handjob-power by 1;
		if handjob-power is 0, say "You feel [NameDesc of G] lose their magical strength.[line break][variable custom style]I guess I need to give some more handjobs...[roman type][line break]".
To say ShortDesc of (Y - a handmaiden-gloves):
	say "fingerless gloves".
To say ClothingDesc of (Y - a handmaiden-gloves):
	say "These fingerless gloves seem more suited to intimate acts than combat! But [if handjob-power > 0]now that you have used them for the former... They do feel weirdly... Powerful... Perhaps[otherwise]something tells you that perhaps[end if] they charge up combat power by giving handjobs?".

purple-handmaiden-gloves is a handmaiden-gloves. purple-handmaiden-gloves is lycra.
The text-shortcut of purple-handmaiden-gloves is "hmg".
Figure of purple-handmaiden-gloves is the file "Items/Accessories/Equippables/gloves7.png".
To decide which figure-name is clothing-image of (H - purple-handmaiden-gloves):
	decide on figure of purple-handmaiden-gloves.
To say MediumDesc of (Y - purple-handmaiden-gloves):
	say "purple fingerless handjob gloves".
To decide which number is the initial outrage of (C - purple-handmaiden-gloves):
	decide on 3.
Definition: purple-handmaiden-gloves is purple themed: decide yes.

pink-handmaiden-gloves is a handmaiden-gloves. pink-handmaiden-gloves is latex.
The text-shortcut of pink-handmaiden-gloves is "lhmg".
Figure of pink-handmaiden-gloves is the file "Items/Accessories/Equippables/gloves8.png".
Definition: pink-handmaiden-gloves is class-relevant:
	if the class of the player is stripper or the class of the player is cumdumpster, decide yes;
	decide no.
To decide which figure-name is clothing-image of (H - pink-handmaiden-gloves):
	decide on figure of pink-handmaiden-gloves.
To say MediumDesc of (Y - pink-handmaiden-gloves):
	say "pink fingerless handjob gloves".
To decide which number is the initial outrage of (C - pink-handmaiden-gloves):
	decide on 4.
Definition: pink-handmaiden-gloves is pink themed: decide yes.


hex gloves is a gloves. hex gloves is latex. hex gloves is unique.
The printed name of hex gloves is "[clothing-title-before]hex gloves[clothing-title-after]". The text-shortcut of hex gloves is "hxg".
Figure of hex gloves is the file "Items/Accessories/Equippables/gloves9.png".
To decide which figure-name is clothing-image of (H - hex gloves):
	decide on figure of hex gloves.
To say ClothingDesc of (Y - hex gloves):
	say "These purple and white latex [']gloves['] don't actually cover your hands, but just your forearms. You feel them adding magic strength to what you hold in your hands!".
To say ShortDesc of (Y - hex gloves):
	say "hex gloves".
To say MediumDesc of (Y - hex gloves):
	say "hex gloves".
To decide which number is the initial outrage of (C - hex gloves):
	decide on 0.
To decide which number is the zap damage improvement of (G - hex gloves):
	decide on 2.
Definition: hex gloves is purple themed: decide yes.
Definition: hex gloves is white themed: decide yes.

briefcase is an equippable. briefcase has a number called charge.
The printed name of briefcase is "[clothing-title-before]briefcase[clothing-title-after]". The text-shortcut of briefcase is "bfc". Figure of briefcase is the file "Items/Accessories/Equippables/briefcase1.jpg".
Definition: briefcase is transformation-protected: decide yes.
Definition: briefcase is removable: decide no.
Definition: briefcase is discovered varied: decide no.
To decide which figure-name is clothing-image of (H - briefcase):
	decide on figure of briefcase.
To say ClothingDesc of (Y - briefcase):
	say "This briefcase has hidden buttons on the handle that you have to keep pressed to avoid the humiliating video being shared online. It also has a hidden slot, through which it occasionally drops a card onto the ground, with a QR code link to the video, and all your personal information.".
To say ShortDesc of (Y - briefcase):
	say "briefcase".
To say MediumDesc of (Y - briefcase):
	say "brown briefcase".
To decide which number is the initial outrage of (C - briefcase):
	decide on 0.
To decide which number is the wornArmsRequired of (C - briefcase):
	decide on 1.
To compute periodic effect of (C - briefcase):
	compute school periodic effect of C.
To compute school periodic effect of (C - briefcase):
	if the player is in Predicament20 or the player is not in a predicament room:
		say "[BigNameDesc of briefcase] fizzles from existence!";
		only destroy briefcase.

fake-baby is a clothing. fake-baby is plastic. fake-baby is unique. The printed name of fake-baby is "[clothing-title-before]fake baby[clothing-title-after]". The text-shortcut of fake-baby is "bbdl". Understand "baby", "doll" as fake-baby.
fake-baby has a number called unsettled-time.

Definition: fake-baby is settled:
	if the unsettled-time of fake-baby > 0, decide no;
	decide yes.

To decide which figure-name is clothing-image of (C - fake-baby):
	decide on figure of fake-baby.

Figure of fake-baby is the file "Items/Accessories/Other/fakebaby1.png".

To say ShortDesc of (C - fake-baby):
	say "fake baby".

To say ClothingDesc of (C - fake-baby):
	say "This plastic doll looks like a real baby to anyone who isn't looking too closely. But anyone who does look too closely might notice the barcode, or the manufacturer's logo. Also, it has a little button on the neck, and another at the base of the spine. If you let go of either of these buttons, you'll get a nasty shock!";
	if C is settled or there is a sat-on breastfeeding-bench, say "It is currently silent.";
	otherwise say "It is currently playing an audio track of a loud crying baby!".

To construct unique buttons for (T - fake-baby):
	if T is not settled and the number of sat-on breastfeeding-bench is 0 and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of RockButton;
		now the ButtonCommand entry is "rock [text-shortcut of T]";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is prone, now the ButtonColour entry is lightModeFullYellow;
	if ButtonTableFull is 0 and the player is in a predicament room:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of ArmBlockIcon;
		now the ButtonCommand entry is "adjust arms";
		now the ButtonColour entry is lightModeFullGreen.

To construct unique icons for (T - fake-baby):
	if T is not settled and the number of sat-on breastfeeding-bench is 0, add Figure of AlarmIcon to the list of icons.

Equippables Framework ends here.
