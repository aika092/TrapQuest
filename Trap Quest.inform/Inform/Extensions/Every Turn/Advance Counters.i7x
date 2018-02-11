Advance Counters by Every Turn begins here.


[!<advanceCountersRules:Rulebook>*

REQUIRES COMMENTING

*!]
The advance counters rules is a rulebook.

[!<countersSeconds:Integer>*

REQUIRES COMMENTING

*!]
counters-seconds is a number that varies.

[!<TheThroneChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the throne charge decay rule:
	if the charge of the throne > 0, decrease the charge of the throne by counters-seconds.
The throne charge decay rule is listed in the advance counters rules.

[!<TheModificationMachineChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the modification machine charge decay rule:
	if the charge of modification machine > 0, decrease the charge of modification machine by counters-seconds.
The modification machine charge decay rule is listed in the advance counters rules.

[!<TheCrossTrainerChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the cross trainer charge decay rule:
	if the charge of cross trainer > 0, decrease the charge of cross trainer by counters-seconds.
The cross trainer charge decay rule is listed in the advance counters rules.

[!<ThePodiumChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the podium charge decay rule:
	if the charge of podium > 0, decrease the charge of podium by counters-seconds.
The podium charge decay rule is listed in the advance counters rules.

[!<TheGloryholeChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the gloryhole charge decay rule:
	if the charge of gloryhole > 0, decrease the charge of gloryhole by counters-seconds.
The gloryhole charge decay rule is listed in the advance counters rules.

[!<TheLectureChairChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the lecture chair charge decay rule:
	let L be a random lecture chair;
	if the charge of L > 0, decrease the charge of L by counters-seconds.
The lecture chair charge decay rule is listed in the advance counters rules.

[!<TheDigestionTimerChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the digestion timer charge decay rule:
	if diaper quest is 1:
		decrease digestion-timer by counters-seconds;
		if digestion-timer < 0, now digestion-timer is 0.
The digestion timer charge decay rule is listed in the advance counters rules.

[!<TheAlchemyChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the alchemy charge decay rule:
	if the charge of alchemist's table > 0:
		decrease the charge of alchemist's table by counters-seconds;
		if the charge of alchemist's table <= 0 and alchemist's table is in the location of the player, say "[bold type]The wooden bowl on the alchemist's table starts glowing again.[roman type]  It just be ready for another ingredient to transform!".
The alchemy charge decay rule is listed in the advance counters rules.

[!<TheLaundryChargeDecayRule>+

REQUIRES COMMENTING

+!]
This is the laundry charge decay rule:
	if the charge of laundry robots > 0:
		decrease the charge of laundry robots by counters-seconds.
The laundry charge decay rule is listed in the advance counters rules.

[!<TheSacredPoolDecayRule>+

REQUIRES COMMENTING

+!]
This is the sacred pool decay rule:
	if the charge of the sacred pool > 0:
		decrease the charge of the sacred pool by counters-seconds.
The sacred pool decay rule is listed in the advance counters rules.

This is the living tentacles decay rule:
	let L be a random living tentacles;
	if the charge of L > 0:
		decrease the charge of L by counters-seconds.
The living tentacles decay rule is listed in the advance counters rules.

[!<TheDiscountDecayRule>+

REQUIRES COMMENTING

+!]
This is the discount decay rule:
	if discount < -2:
		increase discount by counters-seconds;
		if discount > -3, now discount is 0;
	otherwise if discount > 0:
		decrease discount by counters-seconds;
		if discount < 1, now discount is 0.
The discount decay rule is listed in the advance counters rules.

[!<TheUrineGrossOutResolutionRule>+

REQUIRES COMMENTING

+!]
This is the urine gross out resolution rule:
	let P be previous-urine-upset;
	if the player is upset about urine, now previous-urine-upset is 1;
	otherwise now previous-urine-upset is 0;
	if P is not previous-urine-upset:
		if P is 0, say "[bold type][one of]You can't help but be extremely grossed out by the [if the number of worn urine soaked clothing > 1][urine] soaked clothing you are wearing. Until you remove or clean it all, [otherwise][random worn urine soaked clothing]. Until you clean it or remove it, [end if]your dexterity will be significantly reduced.[or]Once again your dexterity is significantly limited until you can escape the gross [if the number of worn urine soaked clothing > 1][urine] soaked clothing[otherwise][random worn urine soaked clothing][end if].[stopping][roman type][line break]";
		now the arousal of the player is 0.
The urine gross out resolution rule is listed in the advance counters rules.

[!<previousMessUpset:Integer>*

REQUIRES COMMENTING

*!]
previous-mess-upset is a number that varies.

[!<TheMessGrossOutResolutionRule>+

REQUIRES COMMENTING

+!]
This is the mess gross out resolution rule:
	let P be previous-mess-upset;
	if the player is upset about mess, now previous-mess-upset is 1;
	otherwise now previous-mess-upset is 0;
	if P is not previous-mess-upset:
		if P is 0 and previous-urine-upset is 0:
			if diaper lover is 3, say "[bold type]You can't believe [one of]what has just happened[or]it happened again[stopping]!  All arousal immediately disappears as the reality of your situation hits you.[roman type][line break]";
			otherwise say "[bold type][one of]You can't believe what has just happened!  Until you get changed, your dexterity will be significantly reduced and you won't be able to knee or kick enemies.[or]Once again your dexterity is significantly limited until you can escape the gross [random worn messed knickers].[stopping][roman type][line break]";
		now the arousal of the player is 0.
The mess gross out resolution rule is listed in the advance counters rules.

[!<previousTooFull:Integer>*

REQUIRES COMMENTING

*!]
previous-too-full is a number that varies.

[!<TheTooFullResolutionRule>+

REQUIRES COMMENTING

+!]
This is the too full resolution rule:
	let P be previous-too-full;
	if the player is overly full, now previous-too-full is 1;
	otherwise now previous-too-full is 0;
	if P is not previous-too-full:
		if P is 0, say "[bold type]Your stomach is now overly full!  [one of]Until it has digested enough of its contents, your dexterity is slightly reduced.[or]Once again your dexterity is slightly lowered until you have digested enough of its contents.[stopping][roman type][line break]".
The too full resolution rule is listed in the advance counters rules.

[!<recentBreastsLargeness:Integer>*

REQUIRES COMMENTING

*!]
recent-breasts-largeness is a number that varies.

[!<TheRecentBreastsLargenessRule>+

REQUIRES COMMENTING

+!]
This is the recent breasts largeness rule:
	now recent-breasts-largeness is the largeness of breasts.
The recent breasts largeness rule is listed in the advance counters rules.

[!<TheKitsuneVanishesRule>+

REQUIRES COMMENTING

+!]
This is the kitsune vanishes rule:
	let M be a random kitsune;
	if the vanish timer of M > -1:
		if the vanish timer of M is 0:
			if M is in the location of the player:
				say "The kitsune vanishes in a puff of pink smoke!";
			regionally place M;
			bore M;
			set up disguise of M;
		decrease the vanish timer of M by 1.
The kitsune vanishes rule is listed in the advance counters rules.

[!<TheFirstAidCooldownRule>+

REQUIRES COMMENTING

+!]
This is the first aid cooldown rule:
	if background-nurse is 1:
		if FAcooldown > 0:
			decrease FAcooldown by 1;
		if FAcooldown is 0 and the number of on-stage bandages is 0:
			say "A new bandage appears in your bag!";
			let B be a random bandage;
			now B is held by the player.
The first aid cooldown rule is listed in the advance counters rules.

[!<ThePainDrainCooldownRule>+

REQUIRES COMMENTING

+!]
This is the pain drain cooldown rule:
	if pain-duration > 0, decrease pain-duration by 1;
	if drain-duration > 0, decrease drain-duration by 1.
The pain drain cooldown rule is listed in the advance counters rules.


Advance Counters ends here.

