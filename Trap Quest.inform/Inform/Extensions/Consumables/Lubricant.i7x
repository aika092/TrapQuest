Lubricant by Consumables begins here.

A lubricant is a kind of collectible. There are 3 lubricants. Understand "lube" or "baby oil" or "oil" as lubricant. The printed name of lubricant is "[TQlink of item described][item style][lubricant][TQxlink of item described][verb-desc of the item described][shortcut-desc][roman type]". The printed plural name of lubricant is "[TQlink of item described][item style][lubricant]s[TQxlink of item described][verb-desc of the item described][shortcut-desc][roman type]". The text-shortcut of lubricant is "lu".

Definition: a lubricant is shop-eligible:
	if diaper quest is 0, decide yes;
	decide no.
Definition: a lubricant is anal sex themed: decide yes.
Definition: a lubricant is never-in-bag: decide yes.

To say ExamineDesc of (B - a lubricant):
	if diaper focus is 1:
		say "A small bottle of baby oil, with a crude drawing of a cloth diaper on the front. Though it's usually used to make baby's skin softer, you can also apply this to an orifice to make it slippery and less likely to get sore.";
	otherwise:
		say "A small bottle of water-based lubricant, with a crude drawing of a strawberry on the front. You can apply this to an orifice to make it slippery and less likely to get sore.".

Figure of lubricant is the file "Items/Collectibles/lube1.png".

To decide which figure-name is the examine-image of (C - a lubricant):
	decide on figure of lubricant.

To decide which number is the crafting key of (C - a lubricant):
	decide on 35.

Lubricant has a number called timer. The timer of lubricant is usually 0.

To say ShortDesc of (C - a lubricant):
	say lubricant.

To say lubricant:
	if diaper focus is 1:
		say "baby oil";
	otherwise if the bimbo of the player < 8:
		say "lubricant";
	otherwise:
		say "lube".

Lubing is an action applying to one thing.
Check lubing:
	if the noun is make up kit, try brushing the noun with face instead;
	if the noun is not lubricant, try drinking the noun instead;
	if the player is not possessing a vagina, try orilubing the noun with asshole instead.

To decide which number is the heaviness of (C - a lubricant):
	decide on 1.

Carry out lubing:
	say "You should [bold type]use[roman type] this lube [bold type]on an orifice[roman type].".

Understand "apply [something]", "use [something]" as lubing.

Does the player mean orilubing lubricant with body part: it is very likely.

Orilubing it with is an action applying to two things.
Check orilubing something with:
	if the second noun is a dispenser, try decanting the noun with the second noun instead;
	if the noun is squirt dildo and the second noun is a fuckhole:
		if the noun is penetrating the second noun, try squirting the noun instead;
		otherwise say "You need to put it in your [variable second noun] first." instead;
	if the noun is make up kit, try brushing the noun with the second noun instead;
	if the noun is powder and the second noun is clothing, try PowderRubbing the noun on the second noun instead;
	if the noun is not lubricant, say "This verb is used for lubrication!" instead;
	if the second noun is not an orifice:
		if the second noun is hips, try orilubing the noun with asshole instead;
		if the second noun is a monster, say "That might be possible in the future, but not right now." instead;
		otherwise say "You can only use lube on one of your own orifices." instead;
	if the second noun is face, try drinking the noun instead;
	if there is a lubricant covering the second noun and the soreness of the second noun is 0, say "Your [variable second noun] is already covered in [lubricant]." instead;
	if the latex-transformation of the player > 3, say "You don't see how that would help, your latex insides are naturally smooth and slippery and not at risk of getting sore." instead;
	let T be a random thing penetrating the second noun;
	if T is a live thing:
		say "You can't lube up your [variable second noun] while there is something fucking it." instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the player is monster fucked, say "You're a little busy right now!" instead.

Carry out orilubing something with:
	allocate 6 seconds;
	let F be the second noun;
	let T be a random thing penetrating F;
	if T is a thing:
		say "You carefully apply [lubricant] to [FuckerDesc of T] and the entrance of your [variable F], until the friction is less intense. ";
	otherwise if the bimbo of the player < 8:
		say "You delicately apply [lubricant] to your [variable F], until it feels a little less dry. ";
	otherwise if the bimbo of the player < 14:
		say "You liberally squirt [lubricant] deep into your [variable F], until it feels nice and slippery all the way inside. ";
	otherwise:
		say "You generously lube up your whole hand and [if the openness of F > 7]fist your own [variable F][otherwise]shove as many fingers as you can fit into your [variable F][end if]. Mmm, that feels a lot better. ";
	if the soreness of F > 0:
		heal F times 3;
	lube up F with the noun.

Understand "use [something] on [something]", "apply [something] on [something]", "apply [something] in [something]", "squirt [something] on [something]", "squirt [something] in [something]", "squeeze [something] on [something]", "squeeze [something] in [something]" as orilubing it with.

Check drinking lubricant:
	if the sex addiction of the player < 8 and the thirst of the player < 4, say "You aren't thirsty or perverted enough to bring yourself to do that." instead.

Carry out drinking lubricant:
	say "[if the bimbo of the player < 10]You hold your nose and squeeze the flavoured lube into your mouth, swallowing tentatively. [otherwise]You happily squeeze the flavoured lube into your mouth. [end if]It coats the inside of your throat![line break][if the oral sex addiction of the player > 6][line break][second custom style]I'm probably better at deepthroating now![roman type][line break][end if]";
	OralSexAddictUp 1;
	StomachUp 1;
	lube up face with the noun.

To lube up (O - an orifice) with (L - a lubricant):
	now L is covering O;
	now the timer of the noun is a random number between 300 and 600;
	compute player submission;
	say "You discard the empty bottle of [lubricant].";
	check stealing of L;
	remove L from play.

An all time based rule (this is the lubricant drying rule):
	repeat with L running through lubricants covering an orifice:
		if there is a worn refreshment clothing:
			do nothing;
		otherwise if spit first tattoo is worn and L is covering asshole and a random number between 1 and 3 > 1: [The tattoo makes it take much longer for the lube to dry on assholes]
			do nothing;
		otherwise if seconds < the timer of L:
			decrease the timer of L by time-seconds;
		otherwise:
			now the timer of L is 0;
			repeat with F running through orifices covered by L:
				now L is not covering F;
				say "[bold type]The lubricant coating your [variable F][bold type] has dried up[roman type].".

To restock (C - a lubricant):
	let B be a random off-stage lubricant;
	if B is lubricant:
		repeat with L running through Standard Item Pen:
			if L is lubricant, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting lubricants rule:
	let C be a random lubricant;
	restock C.
The setup starting lubricants rule is listed in the setup starting items rules.

To decide which number is the bartering value of (T - a lubricant) for (M - a wench):
	unless M is horny-wench, decide on 5;
	decide on 0.

To decide which number is the bartering value of (T - a lubricant) for (M - a wrestler):
	decide on 3.

To decide which number is the outrage of (T - a lubricant):
	decide on 10.

This is the lube not appropriate in diaper quest rule:
	repeat with C running through lubricant:
		now C is in Holding Pen.
The lube not appropriate in diaper quest rule is listed in the diaper quest fix rules.

To uniquely destroy (C - a lubricant):
	check stealing of C;
	now C is not covering asshole;
	now C is not covering vagina;
	now C is not covering face;
	now the timer of C is 0.

Lubricant ends here.
