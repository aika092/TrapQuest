Lubricant by Consumables begins here.


A lubricant is a kind of collectible. There are 9 lubricants. Understand "lube" or "baby oil" or "oil" as lubricant. The printed name of lubricant is "[TQlink of item described][item style][lubricant][TQxlink of item described][verb-desc of the item described][shortcut-desc][roman type]". The printed plural name of lubricant is "[TQlink of item described][item style][lubricant]s[TQxlink of item described][verb-desc of the item described][shortcut-desc][roman type]". The text-shortcut of lubricant is "lu".

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
	say "[lubricant]".

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
	if the player is male, try orilubing the noun with asshole instead.

To decide which number is the heaviness of (C - a lubricant):
	decide on 1.

Carry out lubing:
	say "You should [bold type]use[roman type] this lube [bold type]on an orifice[roman type].".

Understand "apply [something]", "use [something]" as lubing.

Does the player mean orilubing lubricant with body part: it is very likely.

[!<TheLubePreventsGagReflexRule>+

If the player has recently drank lube, there's a chance that they will auto-succeed at gag reflex checks.

+!]
This is the lube prevents gag reflex rule:
	let M be a random thing penetrating face;
	let G be the stomach-semen of the player;
	if M is a thing, increase G by the girth of M;
	if G < 3, now G is 3;
	let lube-bonus be (7 * the number of lubricants covering face);
	let I be a random number between 0 and the intelligence of the player;
	if debuginfo > 0, say "[input-style]Avoid gagging check: intelligence roll (d[intelligence of the player + 1]-1) = [I + 0] [if lube-bonus > 0]+ lubricated throat bonus (7) = [lube-bonus + I] [end if]| ([G].5) gag reflex[roman type][line break]";
	if lube-bonus + I > G, rule succeeds.
The lube prevents gag reflex rule is listed last in the gag reflex rules.


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
	if the second noun is actually occupied:
		say "You can't lube up your [variable second noun] while there is something in it." instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the player is monster fucked, say "You're a little busy right now!" instead.

Carry out orilubing something with:
	allocate 6 seconds;
	let F be the second noun;
	if the bimbo of the player < 8:
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
	SemenTasteAddictUp 1;
	StomachUp 1;
	lube up face with the noun.

To lube up (O - an orifice) with (L - a lubricant):
	now L is covering O;
	now the timer of the noun is a random number between 300 and 600;
	compute player submission;
	say "You discard the empty bottle of [lubricant].";
	remove L from play.

A time based rule (this is the lubricant drying rule):
	repeat with L running through lubricants covering an orifice:
		if there is a worn refreshment clothing:
			do nothing;
		otherwise if spit first tattoo is worn and L is covering asshole and a random number between 1 and 3 > 1: [The tattoo makes it take much longer for the lube to dry on assholes]
			do nothing;
		otherwise if seconds < the timer of L:
			decrease the timer of L by seconds;
		otherwise:
			now the timer of L is 0;
			repeat with F running through orifices covered by L:
				now L is not covering F;
				say "[bold type]The lubricant coating your [variable F][bold type] has dried up[roman type].".

To restock (C - a lubricant):
	let B be a random off-stage lubricant;
	if B is lubricant, now B is in Standard Item Pen.

This is the setup starting lubricants rule:
	let C be a random lubricant;
	repeat with N running from 1 to 3:
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

[!<DestroyLubricant>+

REQUIRES COMMENTING

+!]
To destroy (C - a lubricant):
	now C is not covering asshole;
	now C is not covering vagina;
	now C is not covering face;
	now the timer of C is 0;
	if C is held by the player, remove C from play.

Lubricant ends here.

