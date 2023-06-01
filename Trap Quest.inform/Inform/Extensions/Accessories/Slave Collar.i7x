Slave Collar by Accessories begins here.

slave collar is a submissive collar. slave collar is leather. The printed name of slave collar is "[clothing-title-before]slave collar[clothing-title-after]". The text-shortcut of slave collar is "slc".

To decide which number is the initial outrage of (C - slave collar):
	decide on 10.

To decide which number is the initial cringe of (C - slave collar):
	decide on 1.

To set up influence of (C - slave collar):
	set up submissiveness-based influence of C.

Figure of slave collar is the file "Items/Accessories/Neck/collar1.png".

To decide which figure-name is clothing-image of (C - slave collar):
	decide on figure of slave collar.

To say ClothingDesc of (C - slave collar):
	say "This pink leather collar has the word 'SLAVE' printed on the front in glittery letters.".
To say ShortDesc of (C - slave collar):
	say "slave collar".

To decide which number is the bartering value of (T - slave collar) for (M - a wrestler):
	decide on 2.

To decide which number is the bartering value of (T - slave collar) for (M - a dominatrix):
	decide on 4.

Definition: slave collar is transformation-protected: decide no.
Definition: slave collar is gem themed: decide yes.
Definition: slave collar is pink themed: decide yes.

To compute periodic effect of (C - slave collar):
	compute slave collar wisp of C.

slave-collar-wisp-charge is a number that varies.

To compute slave collar wisp of (C - a clothing):
	if C is not blessed and playerRegion is not hotel and Hotel01 is placed:
		let W be a random nonstalking wisp;
		if W is wisp:
			let brothel-quest-exists be false;
			repeat with WS running through stalking wisps:
				if the wisp-quest of WS is brothel-wisp-quest, now brothel-quest-exists is true;
			if brothel-quest-exists is false:
				if slave-collar-wisp-charge > a random number between 30 and 60:
					now slave-collar-wisp-charge is 0;
					silently set up W;
					now the wisp-quest of W is brothel-wisp-quest;
					now the wisp-trigger of W is speak-wisp-trigger;
					now W is everywhere;
					update backdrop positions;
					now the text-shortcut of W is the substituted form of "[ColourDesc of W]";
					say "[bold type][BigNameDesc of C] [bold type]shudders, and a [ColourDesc of W] curse wisp appears, and begins hovering behind you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type].";
				otherwise:
					increase slave-collar-wisp-charge by 1.


To decide which object is the unique-upgrade-target of (C - slave collar):
	decide on a random off-stage cumslut collar.


pet collar is a submissive collar. pet collar is leather. pet collar is unique. pet collar is manly.

The printed name of pet collar is "[clothing-title-before]pet collar and leash[clothing-title-after]". The text-shortcut of pet collar is "pcl". Understand "and leash", "leash" as pet collar.

Figure of pet collar is the file "Items/Accessories/Neck/petcollar1.png".

To decide which figure-name is clothing-image of (C - pet collar):
	decide on figure of pet collar.

To say ClothingDesc of (C - pet collar):
	say "A human sized pet collar, connected to a leash.".

To say ShortDesc of (C - pet collar):
	say "pet collar".

Definition: pet collar is dog themed: decide yes.
Definition: pet collar is black themed: decide yes.
Definition: pet collar is subduing: decide yes.

Slave Collar ends here.
