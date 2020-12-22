Fertility Goddess Outfit by Dresses begins here.

A fertility outfit is a kind of overdress. A fertility outfit is unique. A fertility outfit is vaginal-sex-addiction-influencing.

Definition: a fertility outfit is pregnancy themed: decide yes.
Definition: a fertility outfit is magic themed: decide yes.

Definition: a fertility outfit is class-relevant:
	if the class of the player is fertility goddess, decide yes;
	decide no.

To decide which number is the intelligence-influence of (C - a fertility outfit):
	decide on childValue times 3.

Figure of goddess tunic is the file "Items/Clothes/Upper/Special/FertGod/fertilitygoddess1.png".
Figure of ivy leaves is the file "Items/Clothes/Upper/Special/FertGod/fertilitygoddess2.png".

Part 1 - Goddess Tunic

goddess tunic is a fertility outfit. goddess tunic is silk. goddess tunic is short. goddess tunic is confidence. goddess tunic is high cut. goddess tunic is sheer-when-wet.

The printed name of goddess tunic is "[clothing-title-before]goddess tunic[clothing-title-after]". The text-shortcut of goddess tunic is "gt".

Definition: goddess tunic is white themed: decide yes.

To decide which figure-name is clothing-image of (C - goddess tunic):
	decide on figure of goddess tunic.

To say ClothingDesc of (C - goddess tunic):
	say "This regal tunic look like the sort of thing a Roman goddess would be portrayed in.".

To say ClassSummonFlav of (C - goddess tunic):
	say "A white tunic materialises around you.[roman type][line break]You feel... divine!".

To compute class set up of (C - goddess tunic):
	now the raw-magic-modifier of C is childValue times 4.

To compute SelfExamineDesc of (O - goddess tunic):
	say "You are wearing a [ShortDesc of O]. ".

To say ShortDesc of (C - goddess tunic):
	say "tunic".
To say MediumDesc of (C - goddess tunic):
	say "goddess's tunic".

To decide which number is the initial outrage of (C - goddess tunic):
	decide on 1.

To decide which object is the unique-upgrade-target of (C - goddess tunic):
	decide on ivy leaves.

Part 2 - Ivy Leaves

ivy leaves is a fertility outfit. ivy leaves is biological. ivy leaves is fully exposing. ivy leaves is belly exposing. ivy leaves is unskirted. ivy leaves is bottom-exclusive.

The printed name of ivy leaves is "[clothing-title-before]ivy leaves[clothing-title-after]". The text-shortcut of ivy leaves is "il".

To decide which figure-name is clothing-image of (C - ivy leaves):
	decide on figure of ivy leaves.

To say ClothingDesc of (C - ivy leaves):
	say "This... 'outfit' made of ivy leaves and twigs covers very little. [if C is worn]It makes you feel like some kind of mother nature[otherwise]It looks like the sort of thing that a dryad or earth spirit would wear[end if].".

To say ClassSummonFlav of (C - ivy leaves):
	say "a tight structure of ivy leaves materialises around you.[roman type][line break]You feel... divine!".

To compute class set up of (C - ivy leaves):
	now the raw-magic-modifier of C is childValue times 5.

To say ShortDesc of (C - ivy leaves):
	say "ivy leaves".

To compute SelfExamineDesc of (O - ivy leaves):
	say "You have a few branches of ivy and leaves clinging to your body, which is somehow making your body shine a shade of green. ".

The printed name of ivy leaves is "[clothing-title-before]ivy leaves[clothing-title-after]".

To decide which number is the initial outrage of (C - ivy leaves):
	decide on 10.

Definition: ivy leaves is green themed: decide yes.

Part 3 - Living Tentacles

living tentacles is a fertility outfit. living tentacles is biological. living tentacles is fully exposing. living tentacles is belly exposing. living tentacles is unskirted. living tentacles is bottom-exclusive.

Living tentacles has a number called charge. The charge of living tentacles is 0. The text-shortcut of living tentacles is "lvtl".

The printed name of living tentacles is "[clothing-title-before]living tentacles[clothing-title-after]".

To say ClothingDesc of (C - living tentacles):
	say "A creepy little twitching mass of purple that was once on your neck[if C is worn]. The thing that's grabbing your neck appears to be trying to 'help' by covering your skin up with its tentacles. While you appreciate the gesture, one thing it does not have a strong grasp of is the concept of what you care about covering. Still, it's definitely okay that it is here. You feel very strongly about that. The tentacles are very helpful, even! They sometimes help you attack, and now you're never without a drink...[otherwise].[end if]".

To compute class set up of (C - living tentacles):
	now the raw-magic-modifier of C is childValue times 6.

To say ShortDesc of (C - living tentacles):
	say "living tentacles".

To compute SelfExamineDesc of (O - living tentacles):
	say "You have a bunch of purple tentacles clinging to your body coming from your neck, and for some reason your skin has a rather purple cast now as well. Which is fine.".

To decide which number is the initial outrage of (C - living tentacles):
	decide on 19.

Definition: living tentacles is purple themed: decide yes.

To compute periodic effect of (L - living tentacles):
	if the charge of L > 0, decrease the charge of L by time-seconds.

Check drinking living tentacles:
	if the noun is not worn, say "You can't do that." instead;
	if the charge of the noun > 0, say "It's still a bit tired." instead.

Carry out drinking living tentacles:
	allocate 6 seconds;
	say "You tenderly grasp one of the tentacles wrapping around your body and take it into your mouth. It begins to throb excitedly, and the rest of the tentacles tighten and rub against you as well. You begin to forcefully suck on it almost by instinct, and quickly feel it increasing its pace. Your whole body shudders as you feel its orgasm yourself, flooding through you, as thick cords of [semen] pump down your throat. Wrung out by the sensation still echoing through your body, you shiver in delight as it withdraws, spent for the moment.";
	StomachSemenUp 2;
	now the charge of the noun is 100.

Fertility Goddess Outfit ends here.
