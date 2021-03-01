Classes by Player begins here.

player-class is a text that varies.

To decide which text is the class of the player:
	decide on player-class.

The player class rules is a rulebook.

This is the sissy class rule:
	if there is worn sissy bow:
		now player-class is "sissy";
		rule succeeds.
The sissy class rule is listed in the player class rules.
sissyclass is a text that varies. sissyclass is "sissy".

This is the trick-or-treater class rule:
	if there is worn halloween headgear:
		now player-class is "trick or treater";
		rule succeeds.
The trick-or-treater class rule is listed in the player class rules.
trick-or-treater is a text that varies. trick-or-treater is "trick or treater".

This is the princess class rule:
	let H be a random worn tiara;
	if H is a worn tiara:
		now player-class is "princess";
		if tiara-veil is worn:
			now player-class is "princess bride";
			if bridal garter is worn, now player-class is "cumdumpster princess bride";
		otherwise if the quest of H is virginity-retention-quest:
			now player-class is "virgin warrior princess";
		otherwise if deepthroat princess crop top is worn:
			now player-class is "deepthroat princess";
		otherwise if the training-progress of senior robobellboy is -1:
			now player-class is "trained fuck princess";
		rule succeeds.
The princess class rule is listed in the player class rules.

Definition: a text (called T) is princess:
	if T matches the text "princess", decide yes;
	decide no.

princessExplained is initially false.
a later time based rule (this is the explaining princess rule):
	if princessExplained is false and the class of the player is princess:
		now princessExplained is true;
		say "[bold type]Now that you have become the 'princess' class, you feel proud and royal! You feel like you won't be able to submit so easily. Also, you feel like your reputation precedes you - lots of people will treat you differently depending on how they feel about your famous deeds.[roman type][line break]";
	otherwise if princessExplained is true and the class of the player is not princess:
		now princessExplained is false;
		say "[bold type]Now that you are no longer the 'princess' class, you no longer feel like royalty.[roman type][line break]".

This is the maid class rule:
	if there is a worn maid headdress:
		if magical-maid-outfit is worn:
			now player-class is "magical maid";
		otherwise if cafe-maid-outfit is worn:
			now the player-class is "cafe maid";
		otherwise if black fetish hobble dress is worn:
			now the player-class is "latex fetish maid";
		otherwise if the training-progress of senior robobellboy is -1:
			now player-class is "fully trained maid";
		otherwise:
			now player-class is "maid";
		rule succeeds.
The maid class rule is listed in the player class rules.

Check dropping waitress vessel:
	if the class of the player is "cafe maid", say "[BigNameDesc of a random worn maid headdress] won't allow you to drop [NameDesc of the noun]!" instead.

Definition: a text (called T) is maid:
	if T matches the text "maid", decide yes;
	decide no.

maidExplained is initially false.
a later time based rule (this is the explaining maid rule):
	if maidExplained is false and the class of the player is maid:
		now maidExplained is true;
		say "[bold type]Now that you have become the 'maid' class, you sense that your clothing is likely to help improve your strength and endurance. You also sense that certain people might assume that you're under their employ[if tentacle fetish is 1]. You also feel that tentacle monsters are even more of a threat to you now, but also that you have hidden latent abilities that might help you defeat them[end if].[roman type][line break]";
	otherwise if maidExplained is true and the class of the player is not maid:
		now maidExplained is false;
		say "[bold type]Now that you are no longer the 'maid' class, you no longer feel a drive to satisfy your employers.[roman type][line break]".

This is the cowgirl class rule:
	if (cow-ears is worn or cow-horns is worn):
		if there is a worn cow print basque:
			now player-class is "cow slave";
		otherwise if cow-horns is worn:
			now player-class is "breeding cow";
		otherwise:
			now player-class is "cowgirl";
		rule succeeds.
The cowgirl class rule is listed in the player class rules.

Definition: a text (called T) is cowgirl:
	if T is "cowgirl" or T is "cow slave" or T is "breeding cow", decide yes;
	decide no.

[!<TheCowSlutRule>+

Cowgirl class increases the chance of titfucks.

+!]
This is the cow slut rule:
	if the class of the player is cowgirl, increase the desirability of breasts by 5.
The cow slut rule is listed in the tit slut eligibility rules.

cowgirlExplained is initially false.
a later time based rule (this is the explaining cowgirl rule):
	if cowgirlExplained is false and the class of the player is cowgirl:
		now cowgirlExplained is true;
		say "[bold type]Now that you have become the 'cowgirl' class, you can sense that the more milk contained in your breasts, the more bonus strength you'll have, but the more milk contained and the more sensitive your breasts are, the less intelligence you'll have. Also, [men of shopkeeper] will be more likely to choose to fuck your tits (which can increase their sensitivity)[if diaper quest is 0]. Also, when horny, you will release pheromones that might attract certain mates[end if].[roman type][line break]";
	otherwise if cowgirlExplained is true and the class of the player is not cowgirl:
		now cowgirlExplained is false;
		say "[bold type]Now that you are no longer the 'cowgirl' class, you can sense that the bonus strength you were receiving from having milk in your breasts and the penalty intelligence for having sensitive breasts has gone.[roman type][line break]".

This is the priestess class rule:
	if runic headband is worn:
		now player-class is "priestess";
		if abyssal tattoo is worn, now player-class is "dark priestess";
		if runic headband is not purity, now player-class is the substituted form of "[if the total condoms of runic headband > 0]cumdumpster[otherwise]sinful[end if] priestess";
		rule succeeds.
The priestess class rule is listed in the player class rules.

Definition: a text (called T) is priestess:
	if T matches the text "priestess", decide yes;
	decide no.

priestessExplained is initially false.
a later time based rule (this is the explaining priestess rule):
	if priestessExplained is false and the class of the player is priestess:
		now priestessExplained is true;
		say "[bold type]Now that you have become the 'priestess' class, you can sense that you have increased intelligence and lowered strength. Also, you will always be able to confidently tell whether the dungeon altar is safe to use.[roman type][line break]";
	otherwise if priestessExplained is true and the class of the player is not priestess:
		now priestessExplained is false;
		say "[bold type]Now that you are no longer the 'priestess' class, you can sense that the bonus intelligence and reduced strength has gone.[roman type][line break]".

This is the virgin warrior class rule:
	if flower hairclip is worn:
		now player-class is "virgin warrior";
		if golden warrior priestess outfit is worn, now player-class is "virgin warrior priestess";
		if virgin magical girl outfit is worn, now player-class is "virgin magical girl";
		rule succeeds.
The virgin warrior class rule is listed in the player class rules.
Definition: a text (called T) is virgin warrior:
	if T matches the text "virgin", decide yes;
	decide no.

warriorExplained is initially false.
a later time based rule (this is the explaining warrior rule):
	if warriorExplained is false and the class of the player is virgin warrior:
		now warriorExplained is true;
		say "[bold type]Now that you have become the 'virgin warrior' class, you sense that the source of your power is closely tied to your vaginal virginity.[roman type][line break]";
	otherwise if warriorExplained is true and the class of the player is not virgin warrior:
		now warriorExplained is false;
		say "[bold type]Now that you are no longer the 'virgin warrior' class, you no longer feel that your power is so closely entwined with your vaginal virginity.[roman type][line break]".

This is the schoolgirl class rule:
	if there is a worn blue scrunchie:
		now player-class is "schoolgirl";
		if there is a worn magical dress, now player-class is "magical schoolgirl";
		let TUC be total used condoms;
		if there is worn cheerleader outfit or there is worn pom-poms, now player-class is "class bully"; [schoolgirl + cheerleader]
		if player-class is "class bully" and TUC > 0: [schoolgirl + cheerleader + cumdumpster]
			now player-class is "fraternity's bicycle";
			if daddy issues dress is worn, now player-class is "mathlete team's plastic cumdump"; [+ silicone queen]
		otherwise if daddy issues dress is worn: [schoolgirl + silicone queen]
			if player-class is "class bully":
				now player-class is "plastic bully"; [+ cheerleader]
			otherwise:
				now player-class is "plastic schoolgirl";
				if TUC > 0, now player-class is "walking talking condom"; [+ cumdumpster]
		otherwise if TUC > 0: [schoolgirl + cumdumpster]
			now player-class is "classroom fucktoy";
		rule succeeds.
The schoolgirl class rule is listed in the player class rules.

[!<TextIsSchoolgirl>+

Thanks to the various schoolgirl multi-classes, we have multiple different texts that need to be able to return true for the class of the player being schoolgirl.

+!]
Definition: a text is schoolgirl:
	if it matches the text "schoolgirl" or it matches the text "classroom" or it matches the text "bully" or it is "fraternity's bicycle" or it is "walking talking condom" or it matches the text "mathlete", decide yes;
	decide no.

This is the pigtail class rule:
	if there is a worn pigtail-scrunchie: [cheerleader + cumdumpster]
		if daddy issues dress is worn: [+ silicone queen + schoolgirl]
			now player-class is "mathlete team's plastic cumdump";
		otherwise:
			let C be a random worn pigtail-scrunchie;
			if the quest of C is recipe-quest: [+ schoolgirl]
				now player-class is "fraternity's bicycle";
			otherwise:
				now player-class is "locker room fucktoy";
				if (C is pair of helium balloons or there is a worn rubber cheerleader outfit) and the silicone volume of breasts > 0, now player-class is "football team's plastic cumdump";
		rule succeeds.
The pigtail class rule is listed in the player class rules.

magicalSchoolgirlExplained is initially false.
a later time based rule (this is the explaining magicalSchoolgirl rule):
	if magicalSchoolgirlExplained is false and the class of the player is "magical schoolgirl":
		now magicalSchoolgirlExplained is true;
		say "[bold type]Now that you have become the 'magical girl' AND 'schoolgirl' classes, when a tentacle monster drains you of magic, your intelligence will permanently increase.[roman type][line break]";
	otherwise if magicalSchoolgirlExplained is true and the class of the player is not "magical schoolgirl":
		now magicalSchoolgirlExplained is false.

schoolgirlExplained is initially false.
a later time based rule (this is the explaining schoolgirl rule):
	if schoolgirlExplained is false and the class of the player is schoolgirl:
		now schoolgirlExplained is true;
		say "[bold type]Now that you have become the 'schoolgirl' class, you sense that your ability to gain intelligence and to craft better versions of items has improved. You also sense that you might more easily attract the attention of anything with tentacles...[roman type][line break]";
	otherwise if schoolgirlExplained is true and the class of the player is not schoolgirl:
		now schoolgirlExplained is false;
		say "[bold type]Now that you are no longer the 'schoolgirl' class, you no longer feel so competent at learning or crafting.[roman type][line break]".

This is the cheerleader class rule:
	if there is a worn pink scrunchie:
		if there is a worn rubber cheerleader outfit and the silicone volume of breasts > 0:
			now player-class is "plastic cheerleader";
		otherwise if deepthroat princess crop top is worn:
			now player-class is "deepthroat princess";
		otherwise:
			now player-class is "cheerleader";
		rule succeeds.
The cheerleader class rule is listed in the player class rules.
Definition: a text (called T) is cheerleader:
	if T is "cheerleader" or T is "plastic cheerleader" or it matches the text "bully" or T is "fraternity's bicycle" or T is "locker room fucktoy" or T is "deepthroat princess" or T matches the text "plastic cumdump", decide yes;
	decide no.

cheerleaderExplained is initially false.
a later time based rule (this is the explaining cheerleader rule):
	if cheerleaderExplained is false and the class of the player is cheerleader:
		now cheerleaderExplained is true;
		say "[bold type]Now that you have become the 'cheerleader' class, you can sense that the more blonde (or pink) your hair is, the more bonus dexterity you'll have. Also, you're less likely to [if pregnancy fetish is 1]get pregnant and less likely to [end if]upset others and sex addiction will increase much slower from you having lots of orgasms, so you can relax and live a little![roman type][line break]";
	otherwise if cheerleaderExplained is true and the class of the player is not cheerleader:
		now cheerleaderExplained is false;
		say "[bold type]Now that you are no longer the 'cheerleader' class, you can sense that the bonus dexterity you were receiving from having blonde or pink hair is gone.[roman type][line break]".

This is the fertility goddess class rule:
	if laurel wreath is worn:
		now player-class is "fertility goddess";
		rule succeeds.
The fertility goddess class rule is listed in the player class rules.

[!<TextIsFertilityGoddess>+

There are multiple different texts that need to be able to return true for the class of the player being fertility goddess.

+!]
Definition: a text (called T) is fertility goddess:
	if T is "fertility goddess" or T is "fertile bunny" or T is "fairy godmother" or T is "breeding cow", decide yes;
	decide no.

[!<TheFertilityGoddessPussySlutRule>+

If the player is the fertility goddess, the more desirable it gets for NPCs to penetrate you vaginally.

+!]
This is the fertility goddess pussy slut rule:
	if the class of the player is fertility goddess, increase the desirability of vagina by 5.
The fertility goddess pussy slut rule is listed in the pussy slut eligibility rules.

fertilityExplained is initially false.
a later time based rule (this is the explaining fertility rule):
	if fertilityExplained is false and the class of the player is fertility goddess:
		now fertilityExplained is true;
		say "[bold type]Now that you have become the 'fertility goddess' class, you sense that you will find it a lot less cumbersome and challenging to be pregnant.[roman type][line break]";
	otherwise if fertilityExplained is true and the class of the player is not fertility goddess:
		now fertilityExplained is false;
		say "[bold type]Now that you are no longer the 'fertility goddess' class, your body's ability to handle being pregnant has returned to normal.[roman type][line break]".

This is the royal slave class rule:
	if royal circlet is worn:
		now player-class is "royal slave";
		if cow print basque is worn, now the player-class is "cow slave";
		rule succeeds.
The royal slave class rule is listed in the player class rules.

[!<TextIsRoyalSlave>+

Thanks to the cow slave multi-class, we have multiple different texts that need to be able to return true for the class of the player being royal slave.

+!]
Definition: a text (called T) is royal slave:
	if T matches the text "slave", decide yes;
	decide no.

[!<TheRoyalSlavesCannotMasturbateRule>+

Royal slaves can't masturbate

+!]
This is the royal slaves can't masturbate rule:
	if the class of the player is royal slave:
		if auto is 0, say "You try, but it's like your [printed name of a random worn headgear] is somehow preventing you!";
		rule fails.
The royal slaves can't masturbate rule is listed last in the global masturbation restriction rules.

slaveExplained is initially false.
a later time based rule (this is the explaining slave rule):
	if slaveExplained is false and the class of the player is royal slave:
		now slaveExplained is true;
		say "[bold type]Now that you have become the 'royal slave' class, you sense that you are being magically restricted from orgasming.[roman type][line break]";
	otherwise if slaveExplained is true and the class of the player is not royal slave:
		now slaveExplained is false;
		say "[bold type]Now that you are no longer the 'royal slave' class, your body's ability to orgasm has returned to normal.[roman type][line break]".

This is the silicone queen class rule:
	if rubber top hat is worn:
		now player-class is "silicone queen";
		if condoms dress is worn or giant condom is worn, now player-class is "walking condom";
		if daddy issues dress is worn, now player-class is "plastic schoolgirl";
		if anime superheroine top is worn, now player-class is "plastigirl";
		rule succeeds.
The silicone queen class rule is listed in the player class rules.

Definition: a text (called T) is silicone queen:
	if T matches the text "silicone" or T matches the text "plasti" or T matches the text "walking", decide yes;
	decide no.

siliconeExplained is initially false.
a later time based rule (this is the explaining silicone rule):
	if siliconeExplained is false and the class of the player is silicone queen:
		now siliconeExplained is true;
		say "[bold type]Now that you have become the 'silicone queen' class, you sense that your dexterity is being improved based on how much silicone is in your breasts.[roman type][line break]";
	otherwise if siliconeExplained is true and the class of the player is not silicone queen:
		now siliconeExplained is false;
		say "[bold type]Now that you are no longer the 'silicone queen' class, you sense that the bonus dexterity from having large plastic breasts has left you.[roman type][line break]".

This is the latex fetish model class rule:
	if rubber-baby-bonnet is worn:
		now player-class is "latex fetish baby";
		rule succeeds;
	if black hood is worn:
		now player-class is "latex fetish model";
		if black-latex-maid-outfit is worn, now the player-class is "latex fetish maid";
		rule succeeds.
The latex fetish model class rule is listed in the player class rules.
Definition: a text (called T) is latex fetish model:
	if T matches the text "latex fetish", decide yes;
	decide no.

latexExplained is initially false.
a later time based rule (this is the explaining latex fetish model rule):
	if latexExplained is false and the class of the player is latex fetish model:
		now latexExplained is true;
		say "[bold type]Now that you have become the 'latex fetish model' class, you sense that your dexterity is being improved based on the outrageousness of your most outrageous latex item.[roman type][line break]";
	otherwise if latexExplained is true and the class of the player is not latex fetish model:
		now latexExplained is false;
		say "[bold type]Now that you are no longer the 'latex fetish model' class, you sense that the bonus dexterity from wearing outrageous latex clothing has gone.[roman type][line break]".

This is the human toilet class rule:
	if WC hood is worn:
		now player-class is "toilet";
		if meat-toilet-panties is worn, now player-class is "meat toilet";
		rule succeeds.
The human toilet class rule is listed in the player class rules.
Definition: a text (called T) is human toilet:
	if T matches the text "toilet", decide yes;
	decide no.

toiletExplained is initially false.
a later time based rule (this is the explaining human toilet rule):
	if toiletExplained is false and the class of the player is human toilet:
		now toiletExplained is true;
		say "[bold type]Now that you have become the 'human toilet' class, you sense that aggressors are more likely to choose to piss on you.[roman type][line break]";
	otherwise if toiletExplained is true and the class of the player is not human toilet:
		now toiletExplained is false;
		say "[bold type]Now that you are no longer the 'human toilet' class, you sense that aggressors are less likely to choose to piss on you.[roman type][line break]".

This is the catgirl class rule:
	if cat-ears is worn:
		now player-class is "catgirl";
		if exposing-magical-dress is worn, now the player-class is "magical neko";
		rule succeeds.
The catgirl class rule is listed in the player class rules.

[!<TextIsCatgirl>+

Thanks to the magical neko multi-class, we have multiple different texts that need to be able to return true for the class of the player being catgirl.

+!]
Definition: a text (called T) is catgirl:
	if T matches the text "catgirl" or T matches the text "neko", decide yes;
	decide no.

catgirlExplained is initially false.
a later time based rule (this is the explaining catgirl rule):
	if catgirlExplained is false and the class of the player is catgirl:
		now catgirlExplained is true;
		say "[bold type]Now that you have become the 'catgirl' class, you can sense that the less clothing you are wearing, the better you'll be at slipping past enemies while on your knees[if diaper quest is 0]. Also, when horny, you will release pheromones that might attract certain mates[end if].[roman type][line break]";
	otherwise if catgirlExplained is true and the class of the player is not catgirl:
		now catgirlExplained is false;
		say "[bold type]Now that you are no longer the 'catgirl' class, you can sense that your ability to slip past NPCs while on your knees has returned to normal.[roman type][line break]".

This is the puppygirl class rule:
	if there is a worn puppy ears:
		now player-class is the substituted form of "puppy[boy of the player]";
		rule succeeds.
The puppygirl class rule is listed in the player class rules.
Definition: a text (called T) is puppy:
	if T matches the text "puppy", decide yes;
	decide no.
Definition: a text (called T) is puppygirl:
	if T is puppy, decide yes;
	decide no.

puppygirlExplained is initially false.
a later time based rule (this is the explaining puppygirl rule):
	if puppygirlExplained is false and the class of the player is puppygirl:
		now puppygirlExplained is true;
		say "[bold type]Now that you have become the 'puppy[boy of the player]' class, you can sense that the less [']proper['] clothing you are wearing, the stronger you are[if diaper quest is 0]. Also, when horny, you will release pheromones that might attract certain mates[end if].[roman type][line break]";
	otherwise if puppygirlExplained is true and the class of the player is not puppygirl:
		now puppygirlExplained is false;
		say "[bold type]Now that you are no longer the 'puppy[boy of the player]' class, you can sense that your bonus strength from wearing minimal clothing has returned to normal.[roman type][line break]".

This is the symbiote class rule:
	if spiked-tiara is worn:
		if the vaginalvirgin of the player is 1 and the quest of spiked-tiara is virginity-retention-quest, now player-class is "virgin symbiote warrior";
		otherwise now player-class is "symbiote";
		rule succeeds.
The symbiote class rule is listed in the player class rules.

[!<TextIsSymbiote>+

Thanks to the virgin symbiote warrior multi-class, we have multiple different texts that need to be able to return true for the class of the player being a symbiote.

+!]
Definition: a text (called T) is symbiote:
	if T matches the text "symbiote", decide yes;
	decide no.

This is the santa class rule:
	if there is a worn christmas headgear and christmas content is 1:
		if there is a worn christmas dress and naughty-or-nice outfit is not worn, now player-class is "christmas tree";
		otherwise now player-class is "santa's little helper";
		if present outfit is worn or christmas strap monokini is worn, now player-class is "christmas present";
		if candy cane outfit is worn, now player-class is "candy cane";
		rule succeeds.
The santa class rule is listed in the player class rules.
Definition: a text (called T) is santa's little helper:
	if T is "santa's little helper" or T is "candy cane" or T matches the text "christmas", decide yes;
	decide no.

This is the wenched class rule:
	if property-tattoo is worn:
		now the player-class is "wench".
The wenched class rule is listed last in the player class rules.
wenched is a text that varies. wenched is "wench".

This is the thrall class rule:
	if severed-tentacle is worn or there is a worn throbbing-tentacle:
		now the player-class is "thrall".
The thrall class rule is listed last in the player class rules.
thrall is a text that varies. thrall is "thrall".

This is the succubus class rule:
	if demon horns is worn:
		now the player-class is "succubus";
		if demon lord is mating, now player-class is "demon concubine";
		if abyssal tattoo is worn, now player-class is "abyssal succubus";
		rule succeeds.
The succubus class rule is listed in the player class rules.

Definition: a text (called T) is succubus:
	if T matches the text "succubus", decide yes;
	if T is "demon concubine", decide yes;
	decide no.

succubusExplained is initially false.
a later time based rule (this is the explaining succubus rule):
	if succubusExplained is false and the class of the player is succubus:
		now succubusExplained is true;
		say "[bold type]Now that you have become the 'succubus' class, you sense that you have the ability to consume souls from enemies you have seduced. You also sense that if you go too long without taking a soul, your power will begin to weaken.[roman type][line break]";
	otherwise if succubusExplained is true and the class of the player is not succubus:
		now succubusExplained is false;
		say "[bold type]Now that you are no longer the 'succubus' class, you sense you can no longer consume souls, and are no longer dependent on them for power.[roman type][line break]".

This is the avatar class rule:
	if avatar-headpiece is worn:
		now the player-class is "avatar";
		rule succeeds.
The avatar class rule is listed in the player class rules.

Definition: a text (called T) is avatar:
	if T matches the text "avatar", decide yes;
	decide no.

avatarExplained is initially false.
a later time based rule (this is the explaining avatar rule):
	if avatarExplained is false and the class of the player is avatar:
		now avatarExplained is true;
		say "[bold type]Now that you have become the 'avatar' class, you sense that you can harvest souls from enemies you have defeated. Also, you have a risk of losing your power if you allow your virginity to be taken.[roman type][line break]";
	otherwise if avatarExplained is true and the class of the player is not avatar:
		now avatarExplained is false;
		say "[bold type]Now that you are no longer the 'avatar' class, you sense that you can no longer steal souls from defeated enemies.[roman type][line break]".

This is the broodmother class rule:
	if wasp-antennae is worn:
		now the player-class is "broodmother";
		rule succeeds.
The broodmother class rule is listed in the player class rules.
broodmother is a text that varies. broodmother is "broodmother".

old-wasps is a number that varies. old-wasps is 0.

A time based rule (this is the compute brood rule):
	if the class of the player is broodmother:
		let E be a random medium egg in the location of the player;
		let old-wasps be total-wasps;
		if E is laid medium egg:
			if the number of alive giant wasps < 1 and there is an off-stage giant wasp:
				say "You watch in amazement as a white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiarly looking larva has emerged from the egg. The giant maggot, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds.";
				let M be a random off-stage giant wasp;
				now M is in the location of the player;
				set up M;
				destroy E;
			otherwise if there is an off-stage giant wasp and a random number between 1 and 16 is 1:
				say "You watch in amazement as a white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiarly looking larva has emerged from the egg. The giant maggot, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds.";
				let M be a random off-stage giant wasp;
				now M is in the location of the player;
				set up M;
				destroy E;
			otherwise if there is a worn wasp-cloud:
				let W be a random worn wasp-cloud;
				say "You watch as once again one of your eggs hatches into a buzzing swarm of wasps, which join the rest of your brood in buzzing around you.";
				let S be a random number between 2 and 4;
				increase the swarm of W by S;
				increase total-wasps by S;
				destroy E;
			otherwise:
				let W be a random off-stage wasp-cloud;
				say "You watch in amazement as a white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds a cloud of normal-sized wasps appears and begins buzzing around you. It seems like they recognise you as their mother!";
				summon W;
				now the swarm of W is 3;
				now total-wasps is 3;
				destroy E;
			MagicPowerUp 2;
		if total-wasps > 49 and old-wasps < 50:
			say "[bold type]You feel terribly strange, and sudden pain bores through your head. You suddenly find you can feel the antennae coming out of your head as though they were a part of your body, and they begin to twitch on their own! [if there is a worn striped top]You see the fuzzy top on your chest meld with your skin, which has become black and shiny in the area around it![end if] [if there is a worn black-and-yellow striped stockings]You see the fuzzy stockings on your legs meld with your skin, which has become black and shiny in the area around them![end if][roman type][line break]";
		otherwise if total-wasps > 99 and old-wasps < 100 and there is a worn striped top:
			say "[bold type]You feel a sudden heat from your chest as a pair of stingers pushes themselves from your nipples![roman type][line break]";
		let W be a random worn wasp-cloud;
		if total-wasps > 49 and the swarm of W < (total-wasps / 10) and a random number between 1 and 3 is 1:
			say "A small swarm of wasps that was resting on your fur seems to be ready for more action!";
			increase the swarm of W by 1. [The idea is that your weapon's equilibrium strength will slowly increase once you get past the 50 wasps birthed cut-off, though swarm will tend to be very hard to raise above 20 because it always wants to decay to that point. Also these wasps are technically ones you 'lost' earlier so they don't increase your total]

This is the vampire spawn class rule:
	if vampiric fangs is worn:
		now the player-class is "vampire spawn";
		rule succeeds.
The vampire spawn class rule is listed in the player class rules.
vampire spawn is a text that varies. vampire spawn is "vampire spawn".

This is the bride class rule:
	if a bridal veil is worn:
		now the player-class is "bride";
		if bridal garter is worn, now player-class is "cumdumpster bride";
		rule succeeds.
The bride class rule is listed in the player class rules.

Definition: a text (called T) is bride:
	if T matches the text "bride", decide yes;
	decide no.

brideExplained is initially false.
a later time based rule (this is the explaining bride rule):
	if brideExplained is false and the class of the player is bride:
		now brideExplained is true;
		say "[bold type]Now that you have become the 'bride' class, [if bride-consort is the throne]you sense that some friendly [men of shopkeeper] who have met you at least once before will want to propose to you[otherwise]you sense you could be punished if you are unfaithful to [NameDesc of bride-consort] by making another [man of shopkeeper] orgasm[end if].[roman type][line break]";
	otherwise if brideExplained is true and the class of the player is not bride:
		now brideExplained is false;
		say "[bold type]Now that you are no longer the 'bride' class, you are no longer [if bride-consort is the throne]likely to be the recipient of marriage proposals[otherwise]required to be faithful to [NameDesc of bride-consort][end if].[if the player is a nympho] What a relief![end if][roman type][line break]".

This is the cultist class rule:
	if cultist veil is worn:
		now the player-class is "cultist";
		if abyssal tattoo is worn, now player-class is "cultist seer";
		rule succeeds.
The cultist class rule is listed in the player class rules.

Definition: a text (called T) is cultist:
	if T matches the text "cultist" or T is "dark priestess", decide yes;
	decide no.

cultistExplained is initially false.
a later time based rule (this is the explaining cultist rule):
	if cultistExplained is false and the class of the player is cultist:
		now cultistExplained is true;
		say "[bold type]Now that you have become the 'cultist' class, cursed clothing can be removed at will, and blessed clothing is bad for you.[roman type][line break]";
	otherwise if cultistExplained is true and the class of the player is not cultist:
		now cultistExplained is false;
		say "[bold type]Now that you are no longer the 'cultist' class, you can sense that your ability to remove cursed clothing has returned to normal.[roman type][line break]".

whispered is a number that varies. whispered is 0.

whisper-type is a number that varies. whisper-type is 0.

whisper-semen-tracker is a number that varies. whisper-semen-tracker is 0.

whisper-semen-old is a number that varies. whisper-semen-old is 0.

whisper-tracking is a number that varies. whisper-tracking is 0.

A time based rule (this is the compute whispers rule):
	if the class of the player is cultist:
		decrease whispered by 1;
		if whisper-type is 3:
			let S be the stomach-semen of the player - whisper-semen-old;
			if S > 0:
				increase whisper-semen-tracker by S;
			now whisper-semen-old is the stomach-semen of the player;
			if whisper-semen-tracker > 4:
				now whisper-tracking is 1;
		if whisper-type is 4:
			let S be the semen volume of belly - whisper-semen-old;
			if S > 0:
				increase whisper-semen-tracker by S;
			now whisper-semen-old is the semen volume of belly;
			if whisper-semen-tracker > 4:
				now whisper-tracking is 1;
		if whispered is less than -50 and a random number between 1 and 45000 is less than the humiliation of the player:
			let W be a random number between 1 and 4;
			if W is 1:
				say "You hear a strange voice whispered in your ear![line break][first custom style]'serve your gods. present yourself at our altar and be blessed.'[roman type][line break]That was peculiar. Should you do it?";
				now whisper-type is 1;
				now whispered is 200;
				now whisper-tracking is 0;
			if W is 2:
				say "You hear a strange voice whispered in your ear![line break][first custom style]'serve your gods. feed us with curses.'[roman type][line break]That was odd. Should you do it?";
				now whisper-type is 2;
				now whispered is 200;
				now whisper-tracking is 0;
			if W is 3:
				say "You hear a strange voice whispered in your ear![line break][first custom style]'serve your gods. gorge yourself upon [semen].'[roman type][line break]That was strange. Should you do it?";
				now whisper-type is 3;
				now whispered is 200;
				now whisper-semen-old is the stomach-semen of the player;
				now whisper-semen-tracker is 0;
				now whisper-tracking is 0;
			if W is 4:
				say "You hear a strange voice whispered in your ear![line break][first custom style]'serve your gods. let your ass be a vessel for their [semen].'[roman type][line break]That was creepy. Should you do it?";
				now whisper-type is 4;
				now whispered is 200;
				now whisper-semen-old is the semen volume of belly;
				now whisper-semen-tracker is 0;
				now whisper-tracking is 0;
		if whispered < 0 and whisper-type is not 0 and whisper-tracking is 0:
			say "You hear a strange voice echoing through you![line break][first custom style]'YOU HAVE FAILED US'[roman type][line break]You feel an ominous sensation, but you can't quite place it.";
			SexAddictUp 2;
			SemenAddictUp 2;
			now whisper-type is 0;
		if whispered > -1 and whisper-tracking is 1 and whisper-type is not 0:
			say "You hear a strange voice whispered in your ear![line break][first custom style]'you have [please]d us. be rewarded.'[roman type][line break]";
			MagicPowerUp 1;
			if whisper-type is 1:
				now the body soreness of the player is 0;
			otherwise if whisper-type is 2:
				IntUp 1;
			otherwise if whisper-type is 3:
				StrengthUp 1;
			otherwise if whisper-type is 4:
				DexUp 1;
			now whisper-type is 0.

This is the vixen class rule:
	if fox ears is worn:
		now the player-class is "vixen";
		rule succeeds.
The vixen class rule is listed in the player class rules.
vixen is a text that varies. vixen is "vixen".

vixenExplained is initially false.
a later time based rule (this is the explaining vixen rule):
	if vixenExplained is false and the class of the player is vixen:
		now vixenExplained is true;
		say "[bold type]Now that you have become the 'vixen' class, you can sense that your 'presence' has been lowered, and sometimes you might be able to sneak by unnoticed.[roman type][line break]";
	otherwise if vixenExplained is true and the class of the player is not vixen:
		now vixenExplained is false;
		say "[bold type]Now that you are no longer the 'vixen' class, you can sense that your 'presence' has returned to normal.[roman type][line break]".

This is the faerie class rule:
	if glittering rose is worn:
		if the vaginalvirgin of the player is 1, now the player-class is "fairy godmother";
		otherwise now the player-class is "faerie";
		rule succeeds.
The faerie class rule is listed in the player class rules.
Definition: a text is faerie:
	if it is "faerie" or it is "fairy godmother", decide yes;
	decide no.

faerieExplained is initially false.
a later time based rule (this is the explaining faerie rule):
	if faerieExplained is false and the class of the player is faerie:
		now faerieExplained is true;
		say "[bold type]Now that you have become the 'faerie' class, you can sense that you can gain magic power by receiving vaginal creampies. Also, you can't bear the thought of wearing underwear.[roman type][line break]";
	otherwise if faerieExplained is true and the class of the player is not faerie:
		now faerieExplained is false;
		say "[bold type]Now that you are no longer the 'faerie' class, you can sense that your ability to gain magic power via vaginal creampies has gone.[roman type][line break]".

This is the bunny class rule:
	if there is a worn bunny ears:
		now player-class is "bunny";
		if bunny waitress ears is worn:
			now player-class is "bunny waitress";
		otherwise if bunny tail plug is worn:
			now the player-class is "fertile bunny";
		rule succeeds.
The bunny class rule is listed in the player class rules.

[!<TheFertileBunnyPussySlutRule>+

If the player is the fertile bunny, the even more desirable it gets for NPCs to penetrate you vaginally.

+!]
This is the fertile bunny pussy slut rule:
	if the player-class is "fertile bunny", increase the desirability of vagina by 5.
The fertile bunny pussy slut rule is listed in the pussy slut eligibility rules.

[!<TheFertileBunnyButtSlutRule>+

If the player is the fertile bunny, the less desirable it gets for NPCs to penetrate you anally.

+!]
This is the fertile bunny butt slut rule:
	if the player-class is "fertile bunny", decrease the desirability of asshole by 5.
The fertile bunny butt slut rule is listed in the butt slut eligibility rules.

[!<TextIsBunny>+

Thanks to the fertile bunny multi-class, we have multiple different texts that need to be able to return true for the class of the player being bunny.

+!]
Definition: a text (called T) is bunny:
	if T matches the text "bunny", decide yes;
	decide no.

bunny-reminder is a number that varies.
An all time based rule (this is the bunny reminder rule):
	if the class of the player is bunny:
		if bunny-reminder is 0:
			say "[bold type]Now that you have become the 'bunny' class, become the 'bunny' class, you can sense that your dexterity will be significantly improved while you are outside in nature[if diaper quest is 0]. Also, when horny, you will release pheromones that might attract certain mates[end if].[roman type][line break]";
			if player-class is "bunny waitress", say "[bold type]Furthermore, you will now be able to offer drinks to humans.[roman type][line break]";
			if playerRegion is Woods, now bunny-reminder is 2;
			otherwise now bunny-reminder is 1;
		otherwise if bunny-reminder is 1 and playerRegion is Woods:
			say "[bold type]You feel your bunny reflexes improve while you are in the woods![roman type][line break]";
			now bunny-reminder is 2;
		otherwise if bunny-reminder is 2 and playerRegion is not Woods:
			say "[bold type]You feel your bunny reflexes disappear as you are no longer in the woods.[roman type][line break]";
			now bunny-reminder is 1;
	otherwise if bunny-reminder > 0:
		now bunny-reminder is 0;
		say "[bold type]Now that you are no longer the 'bunny' class, you can sense that you no longer get bonus dexterity from being outside.[roman type][line break]".


[!<TheCumdumpsterClassRule>+

The cumdumpster class (revolving around condoms pinned on clothes) requires the cumdumpster hat.

+!]
This is the cumdumpster class rule:
	if there is a worn cumdumpster hat:
		now the player-class is "cumdumpster";
		if rubber condom hat is worn, now the player-class is "walking condom";
		rule succeeds.
The cumdumpster class rule is listed in the player class rules.

[!<TextIsCumdumpster>+

Thanks to the walking condom multi-class, we have multiple different texts that need to be able to return true for the class of the player being cumdumpster.

+!]
Definition: a text (called T) is cumdumpster:
	if T matches the text "cumdump" or T is "sinful priestess" or T matches the text "condom" or T matches the text "fucktoy" or T is "fraternity's bicycle" or T is "meat toilet", decide yes;
	decide no.

cumdumpsterExplained is initially false.
a later time based rule (this is the explaining cumdumpster rule):
	if cumdumpsterExplained is false and the class of the player is cumdumpster:
		now cumdumpsterExplained is true;
		say "[bold type]Now that you have become the 'cumdumpster' class, you can sense that the more condoms you have pinned to your clothing (both full of semen and ones you've already swallowed the contents of), the more bonus intelligence you'll have. Also, you'll be able to take lots of big [manly-penis]s without getting as sore.[roman type][line break]";
	otherwise if cumdumpsterExplained is true and the class of the player is not cumdumpster:
		now cumdumpsterExplained is false;
		say "[bold type]Now that you are no longer the 'cumdumpster' class, you can sense that the bonus intelligence you were receiving from having condoms pinned to your clothes has gone.[roman type][line break]".

[!<TheMagicalGirlClassRule>+

The magical girl class (revolving around destroying tentacle breeders) only requires the hairpin.

+!]
This is the magical girl class rule:
	if heart hairpin is worn:
		now the player-class is "magical [boy of the player]";
		if exposing-magical-dress is worn, now player-class is "magical neko";
		if there is a worn schoolgirl outfit, now player-class is "magical schoolgirl";
		if anime superheroine top is worn, now player-class is "plastigirl";
		rule succeeds.
The magical girl class rule is listed in the player class rules.

[!<TextIsMagicalGirl>+

Thanks to the various magical girl multi-classes, we have multiple different texts that need to be able to return true for the class of the player being magical girl.

+!]
Definition: a text is magical girl:
	if it matches the text "magical" or it matches the text "plastigirl", decide yes;
	decide no.

magicalGirlExplained is initially false.
a later time based rule (this is the explaining magicalGirl rule):
	if magicalGirlExplained is false and the class of the player is magical girl:
		now magicalGirlExplained is true;
		say "[bold type]Now that you have become the 'magical girl' class, you can sense that you can summon a powerful wand to help you, but while wielding it, tentacle monsters will be much more capable of defeating you. However, if they make you orgasm, you might still be able to turn the tide. Also, tentacle monsters will drain magic from you when they ejaculate inside you.[roman type][line break]";
	otherwise if magicalGirlExplained is true and the class of the player is not magical girl:
		now magicalGirlExplained is false;
		say "[bold type]Now that you are no longer the 'magical girl' class, you can sense that tentacle monsters will not drain magic from you when they ejaculate inside you.[roman type][line break]";

[!<TheLatexClownClassRule>+

The latex clown class requires the clown mask.

+!]
This is the latex clown class rule:
	if clown mask is worn:
		now the player-class is "clown";
		if the player is actually an adult baby, now the player-class is "baby clown";
		rule succeeds.
The latex clown class rule is listed in the player class rules.

[!<TextIsLatexClown>+

Thanks to the various magical girl multi-classes, we have multiple different texts that need to be able to return true for the class of the player being magical girl.

+!]
Definition: a text (called T) is latex clown:
	if T matches the text "clown", decide yes;
	decide no.

This is the barbarian class rule:
	if rugged-headband is worn and heavy-club is worn:
		now the player-class is "barbarian";
		rule succeeds.
The barbarian class rule is listed first in the player class rules.
barbarian is a text that varies. barbarian is "barbarian".

This is the worshipper class rule:
	if gold-tiara is worn:
		if there is a worn demonic-milking basque:
			now the player-class is "demon slave";
			rule succeeds;
		otherwise if the number of worn demonic wearthings > 1:
			now the player-class is "demon worshipper";
			rule succeeds.
The worshipper class rule is listed first in the player class rules.

Definition: a text (called T) is worshipper:
	if T is "demon slave" or T is "demon worshipper" or T is "demon concubine", decide yes;
	decide no.

worshipperExplained is initially false.
a later time based rule (this is the explaining worshipper rule):
	if worshipperExplained is false and the class of the player is worshipper:
		now worshipperExplained is true;
		say "[bold type]Now that you have become the 'demon worshipper' class, you feel like you won't be able to bring yourself to attack any demons.[roman type][line break]";
	otherwise if worshipperExplained is true and the class of the player is not worshipper:
		now worshipperExplained is false;
		say "[bold type]Now that you are no longer the 'demon worshipper' class, you feel like you'll be able to attack demons again.[roman type][line break]".

This is the living sex doll class rule:
	if the latex-transformation of the player is 8:
		if the player is a trained hooker, now player-class is "rentable doll";
		otherwise now player-class is "living sex doll";
		rule succeeds.
The living sex doll class rule is listed first in the player class rules. [Overrides all other rules]
living sex doll is a text that varies. living sex doll is "living sex doll".

[!<TheAdultBabyClassRule>+

Goes last because it is purely cosmetic and doesn't necessarily use headgear so it can and should be overridden by any other classes.

+!]
This is the adult baby class rule:
	if the player is actually an adult baby, now the player-class is "adult baby".
The adult baby class rule is listed first in the player class rules.

babyExplained is initially false.
a later time based rule (this is the explaining baby rule):
	if babyExplained is false and the player is actually an adult baby:
		now babyExplained is true;
		say "[bold type]Now that you have become the 'adult baby' class, you feel much less grossed out by, well, gross things. Also, you sense that wearing mittens might enable you to move really fast while on your knees.[roman type][line break]";
	otherwise if babyExplained is true and the player is not actually an adult baby:
		now babyExplained is false;
		say "[bold type]Now that you are no longer the 'adult baby' class, you feel your attitude to gross things returning to normal.[roman type][line break]".

[!<TheHookerInTrainingClassRule>+

Hooker in training is not a class, so if another title is suitable, it will be overridden

+!]
This is the hooker in training class rule:
	if the player is a hooker in training:
		if the player is a trained hooker, now the player-class is "professional prostitute";
		otherwise now the player-class is "prostitute in training".
The hooker in training class rule is listed first in the player class rules.

Definition: yourself is a hooker in training:
	if trainee hood is worn or there is a worn trainee bra or there is a worn trainee thigh highs, decide yes.

[!<TheTrainedHookerClassRule>+

Trained hooker is not a class, so if another title is suitable, it will be overridden

+!]
This is the trained hooker class rule:
	if the player is a trained hooker, now player-class is "prostitute".
The trained hooker class rule is listed first in the player class rules.

Definition: yourself is a trained hooker:
	if the training-progress of senior robobellboy is -1, decide yes.

Definition: yourself is hotel employed:
	if the player is a hooker in training, decide yes;
	if the player is a trained hooker, decide yes;
	if the class of the player is succubus, decide yes;
	if the class of the player is maid, decide yes;
	decide no.

[!<TheAdventurerClassRule>+

Defined last and places itself first. This makes it the catch-all if nothing else gets triggered.

+!]
This is the adventurer class rule:
	now player-class is "adventurer".
The adventurer class rule is listed first in the player class rules. [Catch-all]
adventurer is a text that varies. adventurer is "adventurer".

Classes ends here.
