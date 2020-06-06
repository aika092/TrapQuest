Wearability by Clothing begins here.

Chapter 7 - Global Wearability Rules

Autowear is initially false.

Definition: a clothing (called C) is actually wearable:
	now wearing-target is C;
	follow the global wearability rules;
	if the rule failed, decide no;
	follow the wearability rules of C;
	if the rule failed, decide no;
	decide yes.

wearing-target is a clothing that varies.
summoning is a number that varies. [If summoning is set to 1, then we do not output text whilst checking rules because we are summoning. If summoning is set to 0, then we are trying to wear an item of clothing, so we do output text explaining why.]

the global wearability rules is a rulebook.

[This is the already wearing rule:
	if wearing-target is worn:
		if summoning is 0 and autowear is false, say "You are already wearing that!";
		rule fails.
The already wearing rule is listed in the global wearability rules.]

Definition: a clothing (called C) is too outrageous:
	if C is not worn:
		if C is crotch-displaced, replace C;
		ZipUp C;
	if C is nipple covering clothing and the outrage of C < 11, decide no;
	if C is crotch covering clothing:
		if C is not no protection, decide no;
	if C is able to cover crotch and the outrage of C < 15, decide no;
	if the outrage of C - 5 is too humiliating, decide yes;
	decide no.

Definition: a clothing (called C) is too cringeworthy:
	if diaper quest is 0, decide no;
	if C is not worn:
		if C is crotch-displaced, replace C;
		ZipUp C;
	if C is nipple covering clothing and the outrage of C < 11, decide no;
	if C is crotch covering clothing:
		if C is not no protection, decide no;
	if C is able to cover crotch and the outrage of C < 15, decide no;
	if the cringe of C - 5 is too humiliating, decide yes;
	decide no.

Definition: a clothing (called C) is able to cover crotch: [Either C is the only thing covering crotch, or crotch is uncovered and this could help.]
	let X be 0;
	if C is worn, increase X by 1;
	if the player is male:
		if C is potentially at least partially penis concealing and C is potentially asshole covering:
			if the number of worn potentially at least partially penis concealing clothing is X or the number of worn potentially asshole covering clothing is X, decide yes;
	otherwise:
		if C is potentially vagina covering and C is potentially asshole covering:
			if the number of worn potentially vagina covering clothing is X or the number of worn potentially asshole covering clothing is X, decide yes;
	decide no.

Definition: a clothing (called C) is reasonable when outrageous:
	if C is reasonable when cringeworthy or (diaper quest is 1 and C is diaper covering and there is a worn almost too cringeworthy knickers) or (C is roleplay and roleplay fetish is 1), decide yes;
	decide no.

Definition: a clothing (called C) is reasonable when cringeworthy:
	if C is crotch-intact knickers, decide yes;
	if the stolen-strength of C > 0, decide yes;
	if ((C is short or C is super-short) and short skirts permanent fetish > 0) or (C is knickers and no-panties permanent fetish > 0), decide yes;
	if C is short or longer and (penis is lewdly exposed or there is a lewdly exposed fuckhole or there is a worn almost too cringeworthy knickers), decide yes;
	if C is uniquely reasonable, decide yes;
	decide no.

Definition: a clothing is uniquely reasonable: decide no.
Definition: a headgear is uniquely reasonable: decide yes.

This is the player won't wear humiliating clothes rule:
	if wearing-target is too outrageous and summoning is 0:
		unless wearing-target is reasonable when outrageous:
			if debugmode is 0:
				if autowear is false, say "[first custom style]There's just no way I'm letting anybody see me wearing that.[roman type][line break]";
				if wearing-target is carried stuffie, now wearing-target is in the location of the player;
				rule fails;
			otherwise:
				if autowear is false, say "If debug was disabled, the player would refuse to wear this item.".
The player won't wear humiliating clothes rule is listed in the global wearability rules.

This is the player won't wear childish clothes rule:
	if wearing-target is too cringeworthy and summoning is 0 and diaper quest is 1:
		unless wearing-target is reasonable when cringeworthy:
			if debugmode is 0:
				if autowear is false, say "[first custom style]There's just no way I'm letting anybody see me wearing something so childish.[roman type][line break]";
				if wearing-target is carried stuffie, now wearing-target is in the location of the player;
				rule fails;
			otherwise:
				if autowear is false, say "If debug was disabled, the player would refuse to wear this item.".
The player won't wear childish clothes rule is listed in the global wearability rules.

This is the sex doll can't wear new clothes rule:
	if summoning is 0 and the class of the player is living sex doll:
		if autowear is false, say "You don't have the opposable thumbs you would need to be able to do this.";
		rule fails.
The sex doll can't wear new clothes rule is listed in the global wearability rules.

This is the assfilled players can't wear ass plugging clothes rule:
	if asshole is actually occupied and (wearing-target is ass plugging or wearing-target is sex toy):
		if summoning is 0 and autowear is false, say "You can't wear this with something already in your [asshole]!";
		rule fails.
The assfilled players can't wear ass plugging clothes rule is listed in the global wearability rules.

This is the vaginafilled players can't wear vagina plugging clothes rule:
	if wearing-target is vagina plugging:
		if (the player is possessing a vagina and vagina is actually occupied) or (the player is not possessing a vagina and asshole is actually occupied):
			if summoning is 0 and autowear is false, say "You can't wear this with something already in your [if the player is not possessing a vagina][asshole][otherwise][vagina][end if]!";
			rule fails.
The vaginafilled players can't wear vagina plugging clothes rule is listed in the global wearability rules.

This is the breast covering clothing can't have an exclusive clash rule:
	if wearing-target is breast covering clothing:
		repeat with C running through worn breast covering clothing:
			if wearing-target is exclusive or C is exclusive:
				if wearing-target is totally-exclusive or C is totally-exclusive:
					if summoning is 0 and autowear is false, say "You can't wear this because you are already wearing the [C]!";
					rule fails;
				if C is top-exclusive or wearing-target is bottom-exclusive:
					if wearing-target is overdress or (wearing-target is underdress and C is not overdress) or C is bra:
						if summoning is 0 and autowear is false, say "You can't wear this at the same time as the [C]!";
						rule fails;
				if wearing-target is top-exclusive or C is bottom-exclusive:
					if wearing-target is bra or (wearing-target is underdress and C is not bra) or C is overdress:
						if summoning is 0 and autowear is false, say "You can't wear this at the same time as the [C]!";
						rule fails.
The breast covering clothing can't have an exclusive clash rule is listed in the global wearability rules.

This is the belly covering clothing can't have an exclusive clash rule:
	if wearing-target is belly covering clothing:
		repeat with C running through worn belly covering clothing:
			if wearing-target is exclusive or C is exclusive:
				if wearing-target is totally-exclusive or C is totally-exclusive:
					if summoning is 0 and autowear is false, say "You can't wear this because you are already wearing the [C]!";
					rule fails;
				if C is top-exclusive and wearing-target is top-exclusive:
					if summoning is 0 and autowear is false, say "You can't wear this because you are already wearing the [C]!";
					rule fails;
				otherwise if (C is corset and C is not exclusive) or (wearing-target is corset and wearing-target is not exclusive):
					continue the action; [corsets are easygoing and will try to fit where needed]
				otherwise if C is top-exclusive or wearing-target is bottom-exclusive:
					if wearing-target is overdress or (wearing-target is underdress and C is not overdress):
						if summoning is 0 and autowear is false, say "You can't wear this at the same time as the [C]!";
						rule fails;
				otherwise if wearing-target is top-exclusive or C is bottom-exclusive:
					if wearing-target is underdress or (wearing-target is overdress and C is overdress):
						if summoning is 0 and autowear is false, say "You can't wear this at the same time as the [C]!";
						rule fails.
The belly covering clothing can't have an exclusive clash rule is listed in the global wearability rules.		[TODO more specific top exclusive corset rule]

This is the crotch covering clothing can't have an exclusive clash rule:
	if wearing-target is crotch covering clothing and wearing-target is not chastity cage and (wearing-target is not not-exclusive diaper or summoning is 0): [NPCs can ignore some exclusivity rules when diapering the player]
		repeat with C running through worn crotch covering clothing:
			unless C is not-exclusive diaper or C is chastity cage:
				if wearing-target is exclusive or C is exclusive:
					if wearing-target is totally-exclusive or C is totally-exclusive:
						if summoning is 0 and autowear is false, say "You can't wear this because you are already wearing the [C]!";
						rule fails;
					if C is top-exclusive or wearing-target is bottom-exclusive:
						if wearing-target is trousers or (wearing-target is overdress and C is not trousers) or (wearing-target is underdress and C is not overdress and C is not trousers) or (wearing-target is diaper cover and C is not overdress and C is not underdress and C is not trousers) or (wearing-target is knickers and C is knickers):
							if summoning is 0 and autowear is false, say "You can't wear this at the same time as the [C]!";
							rule fails;
					if wearing-target is top-exclusive or C is bottom-exclusive:
						if wearing-target is knickers or (wearing-target is diaper cover and C is not knickers) or (wearing-target is underdress and C is not knickers and C is not diaper cover) or (wearing-target is overdress and C is not knickers and C is not diaper cover and C is not underdress) or (wearing-target is trousers and C is trousers):
							if summoning is 0 and autowear is false, say "You can't wear this at the same time as the [C]!";
							rule fails.
The crotch covering clothing can't have an exclusive clash rule is listed in the global wearability rules.

This is the ass protected players can't wear ass plugging clothes rule:
	if the player is ass protected and wearing-target is ass plugging:
		if wearing-target is embodied:
			if summoning is 0 and autowear is false, say "You can't wear this with something covering your [asshole]!";
			rule fails;
		if wearing-target is disembodied and summoning is 0:
			if autowear is false, say "You can't wear this with something covering your [asshole]!";
			rule fails.
The ass protected players can't wear ass plugging clothes rule is listed in the global wearability rules.

This is the pussy protected players can't wear vagina plugging clothes rule:
	if the player is pussy protected and wearing-target is vagina plugging and the player is possessing a vagina:
		if wearing-target is embodied:
			if summoning is 0 and autowear is false, say "You can't wear this with something covering your [vagina]!";
			rule fails;
		if wearing-target is disembodied and summoning is 0:
			if autowear is false, say "You can't wear this with something covering your [vagina]!";
			rule fails.
The pussy protected players can't wear vagina plugging clothes rule is listed in the global wearability rules.

This is the clothes can't be worn when in danger rule:
	if summoning is 0 and the player is in danger and wearing-target is not equippable and wearing-target is not accessory:
		if autowear is false, say "You can't do that now, you have to deal with the [random dangerous monster in the location of the player]!";
		rule fails.
The clothes can't be worn when in danger rule is listed in the global wearability rules.

This is the only one leg covering clothing rule:
	if there is worn leg covering clothing and wearing-target is leg covering:
		if summoning is 0 and autowear is false, say "You can't wear that at the same time as your [random worn leg covering clothing].";
		rule fails.
The only one leg covering clothing rule is listed in the global wearability rules.

This is the only one arm covering clothing rule:
	if there is worn arm covering clothing and wearing-target is arm covering:
		if summoning is 0 and autowear is false, say "You can't wear that at the same time as your [random worn arm covering clothing].";
		rule fails.
The only one arm covering clothing rule is listed in the global wearability rules.

This is the bracelets arm clash rule:
	if the player is wrist bound and wearing-target is arm covering and summoning is 0:
		if autowear is false, say "You won't be able to get those on whilst your wrists are bound.";
		rule fails.
The bracelets arm clash rule is listed in the global wearability rules.

[This is the rings fingers clash rule:
	if there is worn bracelet and wearing-target is finger covering and summoning is 0:
		if autowear is false, say "You need to remove your bracelet[if the number of worn bracelets > 1]s[end if][if the number of worn rings > 1] and rings[otherwise if the number of worn rings is 1] and ring[end if] first.";
		rule fails;
	if there is worn ring and wearing-target is finger covering and summoning is 0:
		if autowear is false, say "You need to remove your ring[if the number of worn rings > 1]s[end if] first.";
		rule fails.
The rings fingers clash rule is listed in the global wearability rules.]

This is the nails fingers clash rule:
	if fake-nails is worn and wearing-target is finger covering:
		if summoning is 0 and autowear is false, say "You will never be able to wear this item because it won't fit around your permanent large fake nails.";
		rule fails.
The nails fingers clash rule is listed in the global wearability rules.

This is the legs shoes clash rule:
	if wearing-target is crotch-pullup and summoning is 0:
		if the player is ankle bound:
			say "You won't be able to get those on whilst your ankles are bound.";
			rule fails;
		if wearing-target is leg covering:
			repeat with C running through worn heels:
				if C is glued or C is cursed or C is locked:
					say "You can't put these on without risking ripping the fabric, because the heels of your [printed name of C] are stretching the fabric dangerously as you try and put them in the leg holes.";
					rule fails.
The legs shoes clash rule is listed in the global wearability rules.

This is the clothes can't interrupt anal sex rule:
	if wearing-target is total protection:
		repeat with T running through things penetrating asshole:
			unless T is disembodied or (T is clothing and (wearing-target is trousers or wearing-target is knickers or wearing-target is overdress)):
				if summoning is 0 and autowear is false, say "You can't wear this because the [T] is in the way!";
				rule fails.
The clothes can't interrupt anal sex rule is listed in the global wearability rules.

This is the clothes can't interrupt vaginal sex rule:
	if wearing-target is not no protection:
		repeat with T running through things penetrating vagina:
			unless T is disembodied or (T is clothing and (wearing-target is trousers or wearing-target is knickers or wearing-target is overdress)):
				if summoning is 0 and autowear is false, say "You can't wear this because the [T] is in the way!";
				rule fails.
The clothes can't interrupt vaginal sex rule is listed in the global wearability rules.

This is the cultist won't wear blessed clothing rule:
	if wearing-target is blessed and the player-class is cultist and summoning is 0:
		if wearing-target is sure:
			say "You can't place something with that horrible blessing on your body!";
			rule fails;
		otherwise:
			allocate 2 seconds;
			say "As you move to put this on, you sense a horrible holy aura emanating from it. It must be blessed! You can't place something with such a horrible aura on your body!";
			now wearing-target is sure;
			rule fails.
The cultist won't wear blessed clothing rule is listed in the global wearability rules.

Wearability ends here.
