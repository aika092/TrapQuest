Themes by Clothing begins here.

The theme description rules is a rulebook.
The theme effect description rules is a rulebook.
The theme blocking rules is a rulebook.
The theme sharing rules is a rulebook.
The interesting theme sharing rules is a rulebook.
The colour sharing rules is a rulebook.
themeBlockExplanation is a text that varies.

theme-target is a thing that varies.
theme-share-target is a thing that varies.
colour-themes-shared is a number that varies.
interesting-themes-shared is a number that varies.
colour-themes-shared-list is a list of texts that varies.
interesting-themes-shared-list is a list of texts that varies.


Definition: a clothing is same-type: decide no. [Bras find bras, dresses find dresses, and so on.]


Definition: a clothing (called C) is theme-sharing: [Before calling this definition, you must set theme-share-target to the other item]
	now theme-target is C;
	follow the theme sharing rules;
	if the rule succeeded, decide yes;
	decide no.

Definition: a clothing (called C) is interesting-theme-sharing: [Before calling this definition, you must set theme-share-target to the other item] [Interesting skips common things like most colours]
	now theme-target is C;
	follow the interesting theme sharing rules;
	if the rule succeeded, decide yes;
	decide no.

Definition: a clothing (called C) is more-outrageous: [Before calling this definition, you must set theme-share-target to the other item]
	if diaper quest is 1:
		if C is more-cringeworthy, decide yes;
		decide no;
	if the initial outrage of C > the initial outrage of theme-share-target, decide yes;
	decide no.

Definition: a clothing (called C) is more-cringeworthy: [Before calling this definition, you must set theme-share-target to the other item]
	if the initial cringe of C > the initial cringe of theme-share-target, decide yes;
	decide no.

Definition: a clothing (called C) is colour-sharing: [Before calling this definition, you must set theme-share-target to the other item]
	now theme-target is C;
	follow the colour sharing rules;
	if the rule succeeded, decide yes;
	decide no.

To say ThemeDesc of (C - a thing):
	now theme-target is C;
	follow the theme description rules;
	if C is worn, follow the theme effect description rules;
	say line break.

Report wearing:
	now theme-target is the noun;
	follow the theme effect description rules;
	say line break.


tempThemeBonus is a number that varies.
To decide which number is the theme bonus of (R - a rulebook):
	now tempThemeBonus is 0;
	follow R;
	decide on tempThemeBonus.


The strength theme rules is a rulebook.
The dexterity theme rules is a rulebook.
The intelligence theme rules is a rulebook.
The sex addiction theme rules is a rulebook.

[To decide which number is strength-theme-bonus:
	now tempThemeBonus is 0;
	follow the strength theme rules;
	decide on tempThemeBonus.]


[To decide which number is sex-addiction-theme-bonus:
	now tempThemeBonus is 0;
	follow the sex addiction theme rules;
	decide on tempThemeBonus.]


To decide which number is material-sharers:
	let N be 0;
	if theme-target is clothing:
		if theme-target is cotton, decrease N by 10;
		if theme-target is latex or theme-target is metal or theme-target is nylon or theme-target is leather, decrease N by 1;
		repeat with C running through worn clothing:
			if the clothing-material of C is the clothing-material of theme-target, increase N by 1;
	if N < 0, decide on 0;
	decide on N.

A theme blocking rule:
	if material-sharers > 1:
		let T be the substituted form of "[clothing-material of theme-target]";
		add T to interesting-themes-shared-list;
		let C be the upgrade-target of theme-target;
		if C is clothing:
			if the clothing-material of C is not the clothing-material of theme-target, increase interesting-themes-shared by 1.
A theme sharing rule (this is the material matching rule):
	if theme-target is clothing and theme-share-target is clothing:
		if the clothing-material of theme-target is the clothing-material of theme-share-target, rule succeeds.
The material matching rule is listed in the interesting theme sharing rules.


Definition: an object is pregnancy related: decide no.
A theme blocking rule:
	if theme-target is pregnancy related and the number of worn pregnancy related wearthings > 1:
		add "pregnancy related" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not pregnancy related, increase interesting-themes-shared by 1.
A theme sharing rule (this is the pregnancy matching rule):
	if theme-target is pregnancy related and theme-share-target is pregnancy related, rule succeeds.
The pregnancy matching rule is listed in the interesting theme sharing rules.
Definition: an object is ballet related: decide no.
A theme blocking rule:
	if theme-target is ballet related and the number of worn ballet related wearthings > 1:
		add "ballet related" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not ballet related, increase interesting-themes-shared by 1.
A theme sharing rule (this is the ballet matching rule):
	if theme-target is ballet related and theme-share-target is ballet related, rule succeeds.
The ballet matching rule is listed in the interesting theme sharing rules.
Definition: an object is party related: decide no.
A theme blocking rule:
	if theme-target is party related and the number of worn party related wearthings > 1:
		add "party related" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not party related, increase interesting-themes-shared by 1.
A theme sharing rule (this is the party matching rule):
	if theme-target is party related and theme-share-target is party related, rule succeeds.
The party matching rule is listed in the interesting theme sharing rules.

Definition: an object is inflation themed: decide no.
A theme blocking rule:
	if theme-target is inflation themed and the number of worn inflation themed wearthings > 1:
		add "inflation themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not inflation themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the inflation matching rule):
	if theme-target is inflation themed and theme-share-target is inflation themed, rule succeeds.
The inflation matching rule is listed in the interesting theme sharing rules.
Definition: an object is interracial themed: [Is it something that implies BBC love?]
	decide no.
A theme blocking rule:
	if theme-target is interracial themed and the number of worn interracial themed wearthings > 1:
		add "interracial themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not interracial themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the interracial matching rule):
	if theme-target is interracial themed and theme-share-target is interracial themed, rule succeeds.
The interracial matching rule is listed in the interesting theme sharing rules.
Definition: an object is royalty themed: [Is it something to do with royalty]
	decide no.
A theme blocking rule:
	if theme-target is royalty themed and the number of worn royalty themed wearthings > 1:
		add "royalty themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not royalty themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the royalty matching rule):
	if theme-target is royalty themed and theme-share-target is royalty themed, rule succeeds.
The royalty matching rule is listed in the interesting theme sharing rules.
Definition: an object is cow themed:  [Is it something to do with cows]
	decide no.
A theme blocking rule:
	if theme-target is cow themed and the number of worn cow themed wearthings > 1:
		add "cow themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not cow themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the cow matching rule):
	if theme-target is cow themed and theme-share-target is cow themed, rule succeeds.
The cow matching rule is listed in the interesting theme sharing rules.
Definition: an object is cat themed: [Is it something to do with cats]
	decide no.
A theme blocking rule:
	if theme-target is cat themed and the number of worn cat themed wearthings > 1:
		add "cat themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not cat themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the cat matching rule):
	if theme-target is cat themed and theme-share-target is cat themed, rule succeeds.
The cat matching rule is listed in the interesting theme sharing rules.
Definition: an object is dog themed: [Is it something to do with dogs]
	decide no.
A theme blocking rule:
	if theme-target is dog themed and the number of worn dog themed wearthings > 1:
		add "dog themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not dog themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the dog matching rule):
	if theme-target is dog themed and theme-share-target is dog themed, rule succeeds.
The dog matching rule is listed in the interesting theme sharing rules.
Definition: an object is horse themed: [Is it something to do with horses]
	decide no.
A theme blocking rule:
	if theme-target is horse themed and the number of worn horse themed wearthings > 1:
		add "horse themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not horse themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the horse matching rule):
	if theme-target is horse themed and theme-share-target is horse themed, rule succeeds.
The horse matching rule is listed in the interesting theme sharing rules.
Definition: an object is elephant themed: [Is it something to do with elephants]
	decide no.
A theme blocking rule:
	if theme-target is elephant themed and the number of worn elephant themed wearthings > 1:
		add "elephant themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not elephant themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the elephant matching rule):
	if theme-target is elephant themed and theme-share-target is elephant themed, rule succeeds.
The elephant matching rule is listed in the interesting theme sharing rules.
Definition: an object is bird themed: [Is it something to do with birds]
	decide no.
A theme blocking rule:
	if theme-target is bird themed and the number of worn bird themed wearthings > 1:
		add "bird themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not bird themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the bird matching rule):
	if theme-target is bird themed and theme-share-target is bird themed, rule succeeds.
The bird matching rule is listed in the interesting theme sharing rules.
Definition: an object is butterfly themed: [Is it something to do with butterflies]
	decide no.
A theme blocking rule:
	if theme-target is butterfly themed and the number of worn butterfly themed wearthings > 1:
		add "butterfly themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not butterfly themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the butterfly matching rule):
	if theme-target is butterfly themed and theme-share-target is butterfly themed, rule succeeds.
The butterfly matching rule is listed in the interesting theme sharing rules.
Definition: an object is oral sex themed: [Is it something that relates to oral sex?]
	if it is ringagged clothing, decide yes;
	decide no.
A theme blocking rule:
	if theme-target is oral sex themed and the number of worn oral sex themed wearthings > 1:
		add "oral sex themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not oral sex themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the oral sex matching rule):
	if theme-target is oral sex themed and theme-share-target is oral sex themed, rule succeeds.
The oral sex matching rule is listed in the interesting theme sharing rules.
Definition: an object is anal sex themed: [Is it something that relates to anal sex?]
	if it is pussy protection, decide yes;
	decide no.
A theme blocking rule:
	if theme-target is anal sex themed and the number of worn anal sex themed wearthings > 1:
		add "anal sex themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not anal sex themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the anal sex matching rule):
	if theme-target is anal sex themed and theme-share-target is anal sex themed, rule succeeds.
The anal sex matching rule is listed in the interesting theme sharing rules.
Definition: an object is vagina themed: [Is it something that relates to vaginas?]
	decide no.
A theme blocking rule:
	if theme-target is vagina themed and the number of worn vagina themed wearthings > 1:
		add "vagina themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not vagina themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the vagina matching rule):
	if theme-target is vagina themed and theme-share-target is vagina themed, rule succeeds.
The vagina matching rule is listed in the interesting theme sharing rules.
Definition: an object is penis themed: [Is it something that relates to penises?]
	decide no.
A theme blocking rule:
	if theme-target is penis themed and the number of worn penis themed wearthings > 1:
		add "[manly-penis] themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not penis themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the penis matching rule):
	if theme-target is penis themed and theme-share-target is penis themed, rule succeeds.
The penis matching rule is listed in the interesting theme sharing rules.
Definition: an object is boob themed: [Is it something that relates to boobs?]
	decide no.
A theme blocking rule:
	if theme-target is boob themed and the number of worn boob themed wearthings > 1:
		add "boobs themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not boob themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the boob matching rule):
	if theme-target is boob themed and theme-share-target is boob themed, rule succeeds.
The boob matching rule is listed in the interesting theme sharing rules.
Definition: an object is semen themed: [Is it something that relates to semen?]
	decide no.
A theme blocking rule:
	if theme-target is semen themed and the number of worn semen themed wearthings > 1:
		add "[semen] themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not semen themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the semen matching rule):
	if theme-target is semen themed and theme-share-target is semen themed, rule succeeds.
The semen matching rule is listed in the interesting theme sharing rules.
Definition: an object is toilet themed: [Is it something that relates to watersports?]
	decide no.
A theme blocking rule:
	if theme-target is toilet themed and the number of worn toilet themed wearthings > 1:
		add "toilet themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not toilet themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the toilet matching rule):
	if theme-target is toilet themed and theme-share-target is toilet themed, rule succeeds.
The toilet matching rule is listed in the interesting theme sharing rules.
Definition: an object is impact play themed: [Is it something that relates to corporal discipline?]
	decide no.
A theme blocking rule:
	if theme-target is impact play themed and the number of worn impact play themed wearthings > 1:
		add "impact play themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not impact play themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the impact play matching rule):
	if theme-target is impact play themed and theme-share-target is impact play themed, rule succeeds.
The impact play matching rule is listed in the interesting theme sharing rules.
Definition: an object is christmas themed: decide no.
A theme blocking rule:
	if theme-target is christmas themed and the number of worn christmas themed wearthings > 1:
		add "christmas themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not christmas themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the christmas matching rule):
	if theme-target is christmas themed and theme-share-target is christmas themed, rule succeeds.
The christmas matching rule is listed in the interesting theme sharing rules.

Definition: an object is pink themed: decide no.
A theme blocking rule:
	if theme-target is pink themed and the number of worn pink themed clothing > 2:
		add "pink" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not pink themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the pink matching rule):
	if theme-target is pink themed and theme-share-target is pink themed, rule succeeds.
The pink matching rule is listed in the colour sharing rules.
Definition: an object is green themed: decide no.
A theme blocking rule:
	if theme-target is green themed and the number of worn green themed clothing > 2:
		add "green" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not green themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the green matching rule):
	if theme-target is green themed and theme-share-target is green themed, rule succeeds.
The green matching rule is listed in the colour sharing rules.
Definition: an object is black-and-white themed if it is white themed and it is black themed.
A theme blocking rule:
	if theme-target is black-and-white themed and the number of worn black-and-white themed clothing > 1:
		add "black & white" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not black-and-white themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the black-and-white matching rule):
	if theme-target is black-and-white themed and theme-share-target is black-and-white themed, rule succeeds.
The black-and-white matching rule is listed in the colour sharing rules.
Definition: an object is white themed: decide no.
A theme blocking rule:
	if theme-target is white themed and the number of worn white themed clothing > 3:
		add "white" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not white themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the white matching rule):
	if theme-target is white themed and theme-share-target is white themed, rule succeeds.
The white matching rule is listed in the colour sharing rules.
Definition: an object is black themed: decide no.
A theme blocking rule:
	if theme-target is black themed and the number of worn black themed clothing > 3:
		add "black" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not black themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the black matching rule):
	if theme-target is black themed and theme-share-target is black themed, rule succeeds.
The black matching rule is listed in the colour sharing rules.
Definition: an object is purple themed: decide no.
A theme blocking rule:
	if theme-target is purple themed and the number of worn purple themed clothing > 2:
		add "purple" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not purple themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the purple matching rule):
	if theme-target is purple themed and theme-share-target is purple themed, rule succeeds.
The purple matching rule is listed in the colour sharing rules.
Definition: an object is blue themed: decide no.
A theme blocking rule:
	if theme-target is blue themed and the number of worn blue themed clothing > 2:
		add "blue" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not blue themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the blue matching rule):
	if theme-target is blue themed and theme-share-target is blue themed, rule succeeds.
The blue matching rule is listed in the colour sharing rules.
Definition: an object is red themed: decide no.
A theme blocking rule:
	if theme-target is red themed and the number of worn red themed clothing > 2:
		add "red" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not red themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the red matching rule):
	if theme-target is red themed and theme-share-target is red themed, rule succeeds.
The red matching rule is listed in the colour sharing rules.
Definition: an object is orange themed: decide no.
A theme blocking rule:
	if theme-target is orange themed and the number of worn orange themed clothing > 1:
		add "orange" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not orange themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the orange matching rule):
	if theme-target is orange themed and theme-share-target is orange themed, rule succeeds.
The orange matching rule is listed in the colour sharing rules.
Definition: an object is brown themed: decide no.
A theme blocking rule:
	if theme-target is brown themed and the number of worn brown themed clothing > 2:
		add "brown" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not brown themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the brown matching rule):
	if theme-target is brown themed and theme-share-target is brown themed, rule succeeds.
The brown matching rule is listed in the colour sharing rules.

Definition: an object is bow themed: decide no.
A theme blocking rule:
	if theme-target is bow themed and the number of worn bow themed wearthings > 2: [Needs 3 because it's quite common]
		add "bow ribboned" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not bow themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the bow matching rule):
	if theme-target is bow themed and theme-share-target is bow themed, rule succeeds.
The bow matching rule is listed in the interesting theme sharing rules.
Definition: an object is pin themed: decide no. [Mainly safety pins]
A theme blocking rule:
	if theme-target is pin themed and the number of worn pin themed wearthings > 1:
		add "safety pin themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not pin themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the pin matching rule):
	if theme-target is pin themed and theme-share-target is pin themed, rule succeeds.
The pin matching rule is listed in the interesting theme sharing rules.
Definition: an object is star themed: decide no.
A theme blocking rule:
	if theme-target is star themed and the number of worn star themed wearthings > 1:
		add "star themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not star themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the star matching rule):
	if theme-target is star themed and theme-share-target is star themed, rule succeeds.
The star matching rule is listed in the interesting theme sharing rules.
Definition: an object is dinosaur themed: decide no. [Is it something to do with dinosaurs]
A theme blocking rule:
	if theme-target is dinosaur themed and the number of worn dinosaur themed wearthings > 1:
		add "dinosaur themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not dinosaur themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the dinosaur matching rule):
	if theme-target is dinosaur themed and theme-share-target is dinosaur themed, rule succeeds.
The dinosaur matching rule is listed in the interesting theme sharing rules.

Definition: an object is babywear: decide no. [Is it something that an NPC might put on a player to make them look more like a baby?]
Definition: an object is baby themed if it is babywear. [Is it something that only an adult baby fetishist would have?]
A theme blocking rule:
	if diaper quest is 0 and theme-target is baby themed and the number of worn baby themed wearthings > 2:
		add "baby themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not baby themed, increase interesting-themes-shared by 1.

Definition: an object is cult garb: decide no.
A theme blocking rule:
	if theme-target is cult garb and the number of worn cult garb wearthings > 1:
		add "cultist themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not cult garb, increase interesting-themes-shared by 1.
A theme sharing rule:
	if theme-target is cult garb and theme-share-target is cult garb, rule succeeds.




Section - Bear

Definition: an object is bear themed: [Is it something to do with bears]
	decide no.

A theme blocking rule:
	if theme-target is bear themed and the number of worn bear themed wearthings > 1:
		add "bear themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not bear themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the bear matching rule):
	if theme-target is bear themed and theme-share-target is bear themed, rule succeeds.
The bear matching rule is listed in the interesting theme sharing rules.

A theme description rule:
	if theme-target is bear themed, say "This item is bear themed. ".

[Player gets +1 strength for each bear thing worn after the first.]
To decide which number is bear theme bonus:
	let N be the number of worn bear themed wearthings - 1;
	if N > 0, decide on N;
	decide on 0.

A theme effect description rule:
	if theme-target is bear themed:
		let BTB be bear theme bonus;
		if BTB > 0, say "As a reward for wearing [if BTB is 1]two[otherwise]several[end if] bear themed items, you can feel that your strength is being [if BTB > 1]greatly [end if]enhanced! ".

A strength theme rule:
	increase tempThemeBonus by bear theme bonus.


Section - Heart

Definition: an object is heart themed: [Is it something to do with hearts]
	decide no.

A theme blocking rule:
	if theme-target is heart themed and the number of worn heart themed wearthings > 1:
		add "heart themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not heart themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the heart matching rule):
	if theme-target is heart themed and theme-share-target is heart themed, rule succeeds.
The heart matching rule is listed in the interesting theme sharing rules.

A theme description rule:
	if theme-target is heart themed, say "This item is heart themed. ".

[Player gets +1 strength for each heart thing worn after the first.]
To decide which number is heart theme bonus:
	let N be the number of worn heart themed wearthings - 1;
	if N > 0, decide on N;
	decide on 0.

A theme effect description rule:
	if theme-target is heart themed:
		let HTB be heart theme bonus;
		if HTB > 0, say "As a reward for wearing [if HTB is 1]two[otherwise]several[end if] heart themed items, you can feel that your dexterity [if the player is a bit horny]is being[otherwise]will be[end if] [if HTB > 1]greatly [end if]enhanced [if the player is a bit horny]while[otherwise]when[end if] you are horny! ".

A dexterity theme rule:
	if the player is a bit horny:
		increase tempThemeBonus by heart theme bonus;
		if the player is horny:
			increase tempThemeBonus by heart theme bonus;
			if the player is very horny:
				increase tempThemeBonus by heart theme bonus;
				if the player is extremely horny:
					increase tempThemeBonus by heart theme bonus.


Section - Leopard

Definition: an object is leopard themed:  [Is it something to do with leopards, or leopard print]
	decide no.

A theme blocking rule:
	if theme-target is leopard themed and the number of worn leopard themed wearthings > 1:
		add "leopard print" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not leopard themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the leopard matching rule):
	if theme-target is leopard themed and theme-share-target is leopard themed, rule succeeds.
The leopard matching rule is listed in the colour sharing rules.

A theme description rule:
	if theme-target is leopard themed, say "This item is leopard print themed. ".

[Player gets +2 strength for each leopard thing worn after the first.]
To decide which number is leopard theme bonus:
	let N be the number of worn leopard themed wearthings - 1;
	if N > 0, decide on N;
	decide on 0.

A theme effect description rule:
	if theme-target is leopard themed:
		let HTB be leopard theme bonus;
		if HTB > 0, say "As a reward for wearing [if HTB is 1]two[otherwise]several[end if] leopard print items, you can feel that your strength being [if HTB > 1]massively[otherwise]greatly[end if] enhanced! ".

A strength theme rule:
	increase tempThemeBonus by leopard theme bonus * 2.



Section - Flower

Definition: an object is flower themed: [Is it something to do with flowers]
	decide no.

A theme blocking rule:
	if theme-target is flower themed and the number of worn flower themed wearthings > 1:
		add "floral themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not flower themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the flower matching rule):
	if theme-target is flower themed and theme-share-target is flower themed, rule succeeds.
The flower matching rule is listed in the interesting theme sharing rules.

A theme description rule:
	if theme-target is flower themed, say "This item is floral themed. ".

[Player gets -1 sex addiction for each flower thing worn after the first.]
To decide which number is flower theme bonus:
	let N be the number of worn flower themed wearthings - 1;
	if N > 0, decide on N;
	decide on 0.

A theme effect description rule:
	if theme-target is flower themed:
		let FTB be flower theme bonus;
		if FTB > 0, say "As a reward for wearing [if FTB is 1]two[otherwise]several[end if] floral themed items, you can feel that your addiction to orgasms is being [if FTB > 1]significantly [end if]dampened! ".

A sex addiction theme rule:
	increase tempThemeBonus by flower theme bonus.


Section - Gem

Definition: an object is gem themed: decide no.

A theme blocking rule:
	if theme-target is gem themed and the number of worn gem themed wearthings > 1:
		add "sparkly" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not gem themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the gem matching rule):
	if theme-target is gem themed and theme-share-target is gem themed, rule succeeds.
The gem matching rule is listed in the interesting theme sharing rules.

A theme description rule:
	if theme-target is gem themed, say "This item has a sparkly theme. ".

[Player gets -1 sex addiction for each gem thing worn after the first.]
To decide which number is gem theme bonus:
	let N be the number of worn gem themed wearthings - 1;
	if N > 0, decide on N;
	decide on 0.

A theme effect description rule:
	if theme-target is gem themed:
		let GTB be gem theme bonus;
		if GTB > 0, say "As a reward for wearing [if GTB is 1]two[otherwise]several[end if] sparkly jewel themed items, you can feel that your charisma is being [if GTB > 1]significantly [end if]enhanced! ".





Section - Tartan

Definition: an object is tartan themed: [Has it got a tartan pattern]
	decide no.

A theme blocking rule:
	if theme-target is tartan themed and the number of worn tartan themed clothing > 1:
		add "tartan" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not tartan themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the tartan matching rule):
	if theme-target is tartan themed and theme-share-target is tartan themed, rule succeeds.
The tartan matching rule is listed in the colour sharing rules.

A theme description rule:
	if theme-target is tartan themed, say "It would be fashionable to wear this along with other tartan items. ".

[Player gets faster craft cooldowns for each tartan thing worn after the first.]
To decide which number is tartan theme craft bonus:
	let N be the number of worn tartan themed wearthings;
	if N > 1, decide on N;
	decide on 1.

A theme effect description rule:
	if theme-target is tartan themed:
		let TTB be tartan theme craft bonus;
		if TTB > 1, say "As a reward for wearing [if TTB is 2]two[otherwise]several[end if] tartan themed items, you can feel that you will be able to perform alchemy [if TTB > 2]much [end if]more frequently! ".



Section - Exercise

Definition: an object is exercise themed: [Is it something that one would wear to exercise in?]
	decide no.

A theme blocking rule:
	if theme-target is exercise themed and the number of worn exercise themed wearthings > 1:
		add "exercise themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not exercise themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the exercise matching rule):
	if theme-target is exercise themed and theme-share-target is exercise themed, rule succeeds.
The exercise matching rule is listed in the interesting theme sharing rules.

A theme description rule:
	if theme-target is exercise themed:
		if theme-target is wearable, say "You [if theme-target is not worn]would [end if]feel better about doing exercise[if theme-target is clothing] whilst wearing this[end if]. It would be fashionable to wear this along with other exercise items. ";
		otherwise say "This item would probably be valuable to anyone who loves exercising.".

[Player gets +1 dexterity for each exercise thing worn after the first.]
To decide which number is exercise theme bonus:
	let N be the number of worn exercise themed wearthings - 1;
	if N > 0, decide on N;
	decide on 0.

A theme effect description rule:
	if theme-target is exercise themed:
		let ETB be exercise theme bonus;
		if ETB > 0, say "As a reward for wearing [if ETB is 1]two[otherwise]several[end if] exercise themed items, you can feel that your dexterity is being [if ETB > 1]greatly [end if]enhanced, and you are better at getting positive effects from exercise! ".

A dexterity theme rule:
	increase tempThemeBonus by exercise theme bonus.


Section - Yellow

Definition: an object is yellow themed if it is leopard themed.

A theme blocking rule:
	if theme-target is yellow themed and the number of worn yellow themed wearthings > 2:
		add "yellow" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not yellow themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the yellow matching rule):
	if theme-target is yellow themed and theme-share-target is yellow themed, rule succeeds.
The yellow matching rule is listed in the colour sharing rules.

A theme description rule:
	if theme-target is yellow themed:
		if theme-target is wearable, say "It would be fashionable to wear this along with other items with lots of yellow in them. ";
		otherwise say "This item would probably be valuable to anyone who loves the colour yellow.".

[Player gets increased tolerance to urine for each yellow thing worn after the first.]
To decide which number is yellow theme bonus:
	let N be the number of worn yellow themed wearthings - 1;
	if N > 0, decide on N;
	decide on 0.

A theme effect description rule:
	if theme-target is yellow themed:
		let YTB be yellow theme bonus;
		if YTB > 0:
			if diaper quest is 1, say "As a reward for wearing [if YTB is 1]two[otherwise]several[end if] yellow themed items, you can feel that you are [if YTB > 1]much [end if]better at holding in your pee. ";
			otherwise say "As a reward for wearing [if YTB is 1]two[otherwise]several[end if] yellow themed items, you can feel that you are [if YTB > 1]much [end if]better at drinking [if watersports fetish is 1][urine][otherwise][semen][end if] without getting addicted to it. ".


Section - Grey

Definition: an object is grey themed: [Is it significantly grey?]
	decide no.

A theme blocking rule:
	if theme-target is grey themed and the number of worn grey themed wearthings > 1:
		add "silver & grey" to colour-themes-shared-list;
		if the upgrade-target of theme-target is not grey themed, increase colour-themes-shared by 1.
A theme sharing rule (this is the grey matching rule):
	if theme-target is grey themed and theme-share-target is grey themed, rule succeeds.
The grey matching rule is listed in the colour sharing rules.

A theme description rule:
	if theme-target is grey themed:
		if theme-target is wearable, say "It would be fashionable to wear this along with other items with lots of grey or silver in them. ";
		otherwise say "This item would probably be valuable to anyone who loves silver and grey things.".

[Player gets -1 sex addiction for each grey thing worn after the first.]
To decide which number is grey theme bonus:
	let N be the number of worn grey themed wearthings - 1;
	if N > 0, decide on N;
	decide on 0.

A theme effect description rule:
	if theme-target is grey themed:
		let GTB be grey theme bonus;
		if GTB > 0, say "As a reward for wearing [if GTB is 1]two[otherwise]several[end if] grey and silver items, you can feel that your addiction to orgasms is being [if GTB > 1]significantly [end if]dampened! ".

A sex addiction theme rule:
	increase tempThemeBonus by grey theme bonus.



Section - Unskirted Themed

Definition: a thing is unskirted themed: decide no. [Is it something that should not be worn at the same time as a skirt?]


Definition: a trousers is unskirted themed: decide yes.
Definition: a dress is unskirted themed if it is not no-crotch and it is not skirted.

A theme description rule:
	if theme-target is unskirted themed, say "[if theme-target is worn and there is worn skirted clothing]It is[otherwise][bold type]It would be[end if] very unfashionable to wear this at the same time as a skirt.[roman type][line break]".

A theme effect description rule:
	if theme-target is unskirted themed:
		if theme-target is worn and there is worn skirted clothing, say "[bold type]You can feel your body losing both strength and speed due to the fashion blunder of wearing this at the same time as a skirt.[roman type][line break]".

A strength theme rule:
	if there is worn skirted clothing:
		repeat with C running through worn unskirted themed clothing:
			decrease tempThemeBonus by 2.
A dexterity theme rule:
	if there is worn skirted clothing:
		repeat with C running through worn unskirted themed clothing:
			decrease tempThemeBonus by 2.


Section - Uncovered Themed

Definition: a thing is uncovered themed: [Is it something that should not be worn with anything on top?]
	decide no.

A theme description rule:
	if theme-target is uncovered themed, say "[if theme-target is currently covered]It is[otherwise][bold type]It would be[end if] very unfashionable to wear anything that concealed this.[roman type][line break]".

A theme effect description rule:
	if theme-target is uncovered themed:
		if theme-target is currently covered, say "[bold type]You can feel your brain losing significant amounts of intelligence due to the fashion blunder of wearing something that conceals this.[roman type][line break]".

uncoveredReminder is a number that varies.

An advance counters rule:
	increase uncoveredReminder by 1;
	if uncoveredReminder > 20:
		now uncoveredReminder is 0;
		let L be the list of worn uncovered themed currently at least partially covered clothing;
		let N be the number of entries in L;
		if N > 0:
			say "[bold type]Your ";
			while N > 0:
				say "[MediumDesc of entry N of L][if N > 2], [otherwise if N is 2] and [otherwise] [end if]";
				decrease N by 1;
			say "[if the number of entries in L is 1]is [one of][or]still [stopping]dampening your intelligence because it has other items worn over it[otherwise]are still each dampening your intelligence because they have other items worn over them[end if]![roman type][line break]";
		if there is worn skirted clothing:
			let T be the list of worn unskirted themed clothing;
			now N is the number of entries in T;
			if N > 0:
				say "[bold type]Your ";
				while N > 0:
					say "[MediumDesc of entry N of T][if N > 2], [otherwise if N is 2] and [otherwise] [end if]";
					decrease N by 1;
				say "[if the number of entries in T is 1]is [one of][or]still [stopping]dampening your strength and speed because you are wearing a skirt over it[otherwise]are still each dampening your strength and speed because you are wearing a skirt over them[end if]![roman type][line break]";


An intelligence theme rule:
	repeat with C running through worn uncovered themed currently at least partially covered clothing:
		decrease tempThemeBonus by 2.


Section - Food Themed

Definition: an object is food themed: [Is it something that has food in the pattern?]
	decide no.

A theme blocking rule:
	if theme-target is food themed and the number of worn food themed wearthings > 1:
		add "food themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not food themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the food matching rule):
	if theme-target is food themed and theme-share-target is food themed, rule succeeds.
The food matching rule is listed in the interesting theme sharing rules.

A theme description rule:
	if theme-target is food themed, say "This item is food themed. ".

[Player gets higher buckle threshold for each food thing worn after the first.]
To decide which number is food theme bonus:
	let N be the number of worn food themed wearthings + the number of worn drink themed wearthings - 1;
	if N > 0, decide on N;
	decide on 0.

A theme effect description rule:
	if theme-target is food themed or theme-target is drink themed:
		let FTB be food theme bonus;
		if FTB > 0, say "As a reward for wearing [if FTB is 1]two[otherwise]several[end if] food and drink themed items, you can feel that your physical endurance is being [if FTB > 1]significantly [end if]improved! ".


Section - Drink Themed

Definition: an object is drink themed: [Is it something that has a drink in the pattern?]
	decide no.

A theme blocking rule:
	if theme-target is drink themed and the number of worn drink themed wearthings > 1:
		add "drink themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not drink themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the drink matching rule):
	if theme-target is drink themed and theme-share-target is drink themed, rule succeeds.
The drink matching rule is listed in the interesting theme sharing rules.

A theme description rule:
	if theme-target is drink themed, say "This item is drink themed. ".


Section - Swimming Themed

Definition: an object is swimming themed: [Items flagged as swimwear help with activities in bodies of water (mostly escaping from monsters living there)]
	decide no.

A theme blocking rule:
	if theme-target is swimming themed and the number of worn swimming themed wearthings > 1:
		add "swimwear" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not swimming themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the swimming matching rule):
	if theme-target is swimming themed and theme-share-target is swimming themed, rule succeeds.
The swimming matching rule is listed in the interesting theme sharing rules.

A theme description rule:
	if theme-target is swimming themed:
		if theme-target is wearable, say "You [if theme-target is not worn]would [end if]feel safer and more competent swimming[if theme-target is clothing] whilst wearing this[end if]. It would be fashionable to wear this along with other swimming themed items. ";
		otherwise say "This item would probably be valuable to anyone who loves swimming.";
		if theme-target is fluid vulnerable clothing, say "You sense that this item [if theme-target is wet and theme-target is clean and theme-target is worn]currently has significantly increased magical powers because it is[otherwise]would have significantly increased magical powers whilst[end if] wet (but only with water).".



Section - Whore Themed

Definition: an object is whore themed: [Is it something that relates to whores or prostitution?]
	decide no.

A theme blocking rule:
	if theme-target is whore themed and the number of worn whore themed wearthings > 1:
		add "whoring themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not whore themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the whore matching rule):
	if theme-target is whore themed and theme-share-target is whore themed, rule succeeds.
The whore matching rule is listed in the interesting theme sharing rules.

A theme description rule:
	if theme-target is whore themed, say "This item exposes [if theme-target is worn]you[otherwise if theme-target is wearthing]the wearer[otherwise if theme-target is currently-in-bag]the owner[otherwise]the holder[end if] as a whore who sells [his of the player] body for money. ".

[Player gets higher payment for each whore thing worn after the first. Non-worn holdables also count.]
To decide which number is whore theme bonus:
	let N be the number of worn whore themed wearthings;
	repeat with C running through carried whore themed things:
		if C is not wearthing and C is currently-not-in-bag, increase N by 1;
	if N > 1, decide on N - 1;
	decide on 0.

A theme effect description rule:
	if theme-target is whore themed:
		let WTB be whore theme bonus;
		if WTB > 0, say "As a reward for having [if WTB is 1]two[otherwise]several[end if] whoring themed items, you can feel that you are likely to get given [if WTB > 1]significantly [end if]more expensive jewellery when people pay you for sex! ".


Section - Magic Themed

Definition: an object is magic themed: [Is it something that implies magic?]
	decide no.
A theme blocking rule:
	if theme-target is magic themed and the number of worn magic themed wearthings > 1:
		add "magic themed" to interesting-themes-shared-list;
		if the upgrade-target of theme-target is not magic themed, increase interesting-themes-shared by 1.
A theme sharing rule (this is the magic matching rule):
	if theme-target is magic themed and theme-share-target is magic themed, rule succeeds.
The magic matching rule is listed in the interesting theme sharing rules.
A theme description rule:
	if theme-target is magic themed, say "This item has a magical theme. ".

[Player gets higher magic damage for each magical thing worn after the first.]
To decide which number is magic theme bonus:
	let N be the number of worn magic themed wearthings;
	if N > 1, decide on N - 1;
	decide on 0.

A theme effect description rule:
	if theme-target is magic themed and theme-target is worn:
		let MTB be magic theme bonus;
		if MTB > 0, say "As a reward for wearing [if MTB is 1]two[otherwise]several[end if] magical items, you can feel that your spells are more powerful! ".


Themes ends here.
