Arousal by Player begins here.

Part 1 - Manipulate

[!<DecideWhichNumberIsTheArousalInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the arousal-influence of (C - a clothing):
	decide on 0.

[suppression items slightly lower the strength of the arousal]
[!<DecideWhichNumberIsTheArousalInfluenceOfSuppressionClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the arousal-influence of (C - a suppression clothing):
	let B be 1;
	increase B by the magic-modifier of C;
	decide on B.

[!<DecideWhichNumberIsMaximumArousal>+

REQUIRES COMMENTING

+!]
To decide which number is maximum arousal:
	decide on 15000;
	let A be 5000 + (the sex addiction of the player * 500) + (alcohol-level * 1000);
	if there is a worn restricting research airhancer, decrease A by 1000;
	if A < 6000, decide on 6000;
	decide on A.

[!<ArouseX>+

Arouses the player by the integer argument X. certain things modify this number, like the giant-statue, clothing, and a particularly yucky situation.

@param Integer X representing how much arousal the player will potentially gain

+!]
To arouse (X - a number):
	if the player is able to get horny:
		let XX be X;
		if playerRegion is Woods and giant-statue is active:
			increase X by X / 10;
		now X is (X * (5 + alcohol-level)) / 5; [each alcohol level gives approx +20% arousal]
		let B be 0;
		repeat with C running through worn clothing:
			increase B by the arousal-influence of C;
		now B is B * 10;
		decrease X by B;
		if debuginfo > 1:
			if X is XX, say "[input-style]Arousal increased by [X].[roman type][line break]";
			otherwise say "[input-style]Arousal increase of [XX]: [if playerRegion is Woods and giant-statue is active]10% increase from woods statue; [end if][if alcohol-level > 0][20 * alcohol-level]% increase from alcohol level [alcohol-level]; [end if][if B > 0]reduction of [B * 1] from worn arousal suppressing items; [end if]final result = [X].[roman type][line break]";
		if X > B:
			[delayed arouse ((X - B) * 3) / 2.] [The *1.5 is a balancing attempt that may be removed]
			delayed arouse X - B.

[!<DelayedArouseX>+

REQUIRES COMMENTING

+!]
To delayed arouse (X - a number):
	increase the delayed arousal of the player by X.

To finally arouse:
	finally arouse the delayed arousal of the player.

[!<FinallyArouseX>+

REQUIRES COMMENTING

+!]
To finally arouse (X - a number):
	if X > 0 and the player is able to get horny:
		if debuginfo > 0, say "[input-style][if debuginfo > 1]Total arousal gain for the turn[otherwise]Arousal:[end if] [arousal of the player] + [X] = ";
		increase the arousal of the player by X;
		if debuginfo > 0, say "[arousal of the player].[roman type][line break]";
		now the delayed arousal of the player is 0;
		if penis is not penis-erect and penis is able to get erect, compute sudden erection chance X.

[!<DecideIfThePlayerIsAbleToCoolDown>+

REQUIRES COMMENTING

+!]
To decide if the player is able to cool down:
	if aroused-turns > 0, decide no;
	if there is worn steel collar, decide no;
	if there is a worn prostate massager plug, decide no;
	if there is a worn thrusting living belt of sturdiness, decide no;
	if princess-consort is monster and the class of the player is princess and the refactory-period of princess-consort is 0 and princess-consort is awake, decide no;
	decide yes.

[!<CoolDownX>+

REQUIRES COMMENTING

+!]
To cool down (X - a number):
	if the player is able to cool down:
		if the arousal of the player < X, now the arousal of the player is 0;
		otherwise decrease the arousal of the player by X / 2.

[!<DecideWhichNumberIsMinimumArousal>+

REQUIRES COMMENTING

+!]
To decide which number is minimum arousal:
	let A be the raw sex addiction of the player * 100;
	if the class of the player is cowgirl and the number of monsters penetrating breasts < 1, increase A by the milk volume of breasts * 10;[too conservative? At max strength bonus this is +400; 15 might be better]
	decide on A.

Part 2 - Decay Every Turn


[!<previousSexAddiction:Integer>*

REQUIRES COMMENTING

*!]
previous-sex-addiction is a number that varies.

[!<previousSemenAddiction:Integer>*

REQUIRES COMMENTING

*!]
previous-semen-addiction is a number that varies.

[!<previousSemenTasteAddiction:Integer>*

REQUIRES COMMENTING

*!]
previous-semen-taste-addiction is a number that varies.

[!<previousAnalSexAddiction:Integer>*

REQUIRES COMMENTING

*!]
previous-anal-sex-addiction is a number that varies.

[!<previousOralSexAddiction:Integer>*

REQUIRES COMMENTING

*!]
previous-oral-sex-addiction is a number that varies.

[!<previousBBCAddiction:Integer>*

REQUIRES COMMENTING

*!]
previous-bbc-addiction is a number that varies.

[!<previousVaginalSexAddiction:Integer>*

REQUIRES COMMENTING

*!]
previous-vaginal-sex-addiction is a number that varies.

[!<previousTitfuckAddiction:Integer>*

REQUIRES COMMENTING

*!]
previous-titfuck-addiction is a number that varies.

[!<arousedTurns:Integer>*

When the player becomes aroused, they can't cool down and stop being horny for 20 turns.

*!]
aroused-turns is a number that varies.

[!<UpdateArousal>+

REQUIRES COMMENTING

+!]
To update arousal:
	if the player is a bit horny:
		now previous-horny is 1;
		if the player is horny, now previous-horny is 2;
		if the player is very horny, now previous-horny is 3;
		if the player is extremely horny, now previous-horny is 4;
	otherwise:
		now previous-horny is 0;
	if the player is not able to get horny:
		now the arousal of the player is 0;
		now previous-horny is 0.

A later time based rule (this is the compute arousal rule):
	[This is the timer that calculates the time limit before you can safely wank again.]
	if the wanktime of the player > time-seconds, decrease the wanktime of the player by time-seconds;
	otherwise now the wanktime of the player is 0;
	[This is arousal slowly decaying.]
	if the delayed arousal of the player <= 0: [only cool down when no arousal gained this turn]
		let S be time-seconds * 6;
		if the raw sex addiction of the player > 15:
			now S is S / 6;
		otherwise if the raw sex addiction of the player > 10:
			now S is S / 5;
		otherwise if the raw sex addiction of the player > 5:
			now S is S / 4;
		otherwise:
			now S is S / 3;
		cool down S;
	if the arousal of the player < minimum arousal, now the arousal of the player is minimum arousal;
	check for arousal change.

[!<CheckForArousalChange>+

REQUIRES COMMENTING

+!]
To check for arousal change:
	[This is us checking if the level of arousal has changed since last turn.]
	let old-pheromonal be 0;
	if the player is pheromonal, now old-pheromonal is 1;
	finally arouse;
	let P be previous-horny;
	decrease aroused-turns by 1;
	update arousal;
	if P < previous-horny:[TODO: notify player of pheromone activation]
		if previous-horny is 1:
			say "[bold type][one of]You are starting to feel a little bit aroused,[or]You feel your arousal slowly start to build once again,[stopping] and you can feel your blood pumping through your body that little bit faster. [one of]You actually feel a bit more energetic than before! [line break][variable custom style]Interesting... the game is rewarding me for being horny?[or]Once again, your dexterity is slightly improved until you orgasm.[stopping][roman type][line break]";
		if previous-horny is 2:
			if there is a worn cursed chastity cage:
				say "[bold type]You are feeling fully aroused[one of] now[or] again[stopping], and your chastity cage is making you even more distracted than you would be otherwise! You feel your mind start to cloud over with thoughts of sex. [line break][variable custom style][one of]I hope I find a way to orgasm soon...[or][or]I need to cum again![or][or]This fucking cage... I wish I could touch myself![or][cycling][roman type][line break]";
			otherwise:
				say "[bold type][one of]A fresh new wave of horniness suddenly washes over you,[or]Another wave of horniness hits you[stopping] and your [if the player is male and the size of penis > 1]testicles[otherwise if the player is male]body[otherwise][vagina][end if] [one of]feel[unless the player is male and the size of penis > 1]s[end if] desperate to[or][if the player is male and the size of penis > 1]cry[otherwise]cries[end if] out for another[stopping] orgasm[one of]. As your blood starts pumping even faster, you feel yourself getting even faster, but your mind also starts to cloud over with thoughts of [if diaper quest is 1]orgasms[otherwise]sex[end if], making it more difficult to concentrate on the tasks at hand. [or]. Your smarts are dulled and your dexterity further improved until you orgasm.[or]. [stopping][roman type][line break]";
			if the living belt of sturdiness is worn and the player is upright, say "[one of]Suddenly[or]Once again[stopping] the tentacle[if the living belt of sturdiness is penetrating asshole and the living belt of sturdiness is penetrating vagina]s[end if] of the [printed name of the living belt of sturdiness] inside of you start[unless the living belt of sturdiness is penetrating asshole and the living belt of sturdiness is penetrating vagina]s[end if] moving, slowly thrusting all the way in and all the way out.[one of] The thrusting is strong and deliberate but incredibly slow, as if its purpose is to very very slowly build you up to a very powerful orgasm.[or][stopping]";
		if previous-horny is 3:
			say "[bold type]You now feel desperately horny. You are having an even harder time thinking about anything non-sexual[if the bimbo of the player > 8][one of] [second custom style](Tee-hee, hard)[bold type][or][stopping][end if][run paragraph on] - [if diaper quest is 1]your intelligence is significantly reduced until you orgasm or cool off.[otherwise if there is an unfriendly monster penetrating a fuckhole and the player is feeling dominant][run paragraph on]you might struggle to bring yourself to properly resist now.[otherwise if the delicateness of the player < 12][run paragraph on]it's going to be a lot more difficult to say no to the advances of others now![otherwise][run paragraph on]once there's a [manly-penis] inside you, there's no way you're going to be anything but a willing fuckhole until you get off.[end if][roman type][line break]";
		if previous-horny is 4:
			say "[bold type][one of]You didn't even realise it was possible to be so aroused. Your entire crotch burns with desire, your breathing is heavy and your thoughts are [if the intelligence of the player < 6]a jumbled mess[otherwise]all over the place[end if][or]Once again you find yourself extremely horny, more than you ever realised was possible before entering this virtual world[or]You are extremely horny once again[stopping].[roman type][line break]";
		if the class of the player is symbiote, say "[bold type][one of]Thanks to the symbiotic nature of your relationship with your tongued clothing, you feel your strength increase as well.[or]Once again, your symbiotic tongues also help increase your strength as you become more aroused.[stopping][roman type][line break]";
		if the player is pheromonal and old-pheromonal is 0:
			let H be a random worn headgear;
			say "[bold type]A wave of heat blossoms out from your [ShortDesc of H], overwhelming your body with a primitive urge [if pregnancy fetish is 1 and the player is female]to be bred by a superior male[otherwise]to find and satisfy a superior male[end if].[roman type][line break]";
		now aroused-turns is 20;[When the game announces that the player becomes aroused, they can't cool down and stop being horny for 20 turns.]
	if P > previous-horny and the number of worn steel collar is 0:
		if the player is grossed out:
			say "[bold type]You quickly lose all arousal since you are too grossed out.[roman type][line break]";
		otherwise if refactoryperiod <= 0:
			say "[bold type]Over time, you have cooled off and are [if previous-horny is 0]no longer horny[otherwise]now a bit less horny[end if].[roman type][line break]";
		if the player is not pheromonal and old-pheromonal is 1:
			say "[bold type]Your primitive urges seem to fade.[roman type][line break]";
		if penis is penis-erect, compute erection decay;
	if diaper quest is 0:
		now previous-oral-sex-addiction is the calculated oral sex addiction of the player;
		now previous-anal-sex-addiction is the calculated anal sex addiction of the player;
		if interracial fetish is 1, now previous-bbc-addiction is the calculated bbc addiction of the player;
		now previous-vaginal-sex-addiction is the calculated vaginal sex addiction of the player;
		now previous-titfuck-addiction is the calculated titfuck addiction of the player;
		now previous-semen-taste-addiction is the calculated semen taste addiction of the player;
		now previous-semen-addiction is the calculated semen addiction of the player;
	now previous-sex-addiction is the calculated sex addiction of the player.

Part 3 - Check Values

[You have an animal class, and you will find it difficult to resist 'musky' opponents. Also, beastly monsters are less likely to stop chasing you when you leave the room.]
Definition: yourself is pheromonal:
	if mythical creature fetish is 0, decide no;
	if the class of the player is cowgirl and the class of the player is fertility goddess, decide yes;
	if the pregnancy of the player is 1, decide no;[you'll be spared if you're pregnant]
	if the player is horny:
		if the class of the player is catgirl, decide yes;
		if the class of the player is puppygirl, decide yes;
		if the class of the player is bunny, decide yes;
		if the class of the player is cowgirl, decide yes;
	decide no.


[!<YourselfIsAbleToGetHorny>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to get horny:
	if the player is magically horny, decide yes;
	if the player is grossed out, decide no;
	if the class of the player is princess and princess-consort is monster and the refactory-period of princess-consort > 0, decide no;
	if the latex-transformation of the player > 3, decide no;
	if refactoryperiod > 2 and (the player is male or the number of live things penetrating a fuckhole is 0), decide no; [Player can't gain arousal on the turn that they cum. Except women, during sex, who can have continued orgasms.]
	[if the player is male and the size of penis is 0, decide no;]
	decide yes.


[!<ThingIsUnlimitedHorniness>+

REQUIRES COMMENTING

+!]
Definition: a thing is unlimited horniness: decide no.

[!<YourselfIsUnlimitedInHorniness>+

REQUIRES COMMENTING

+!]
Definition: yourself is unlimited in horniness:
	if the player is not able to get horny, decide no;
	if there is a worn unlimited horniness thing, decide yes;
	if the player is pheromonal, decide yes;
	decide no.

[!<YourselfIsABitHorny>+

REQUIRES COMMENTING

+!]
Definition: yourself is a bit horny:
	if the player is not able to get horny, decide no;
	if the arousal of the player >= 2000 or (the arousal of the player >= 1850 and aroused-turns > 0), decide yes;
	decide no.

To decide which number is horny-limit:
	decide on 5000.

[!<YourselfIsHorny>+

REQUIRES COMMENTING

+!]
Definition: yourself is horny:
	if the arousal of the player >= horny-limit and the player is able to get horny, decide yes;
	decide no.

To decide which number is very-horny-limit:
	decide on 8000.

[!<YourselfIsVeryHorny>+

REQUIRES COMMENTING

+!]
Definition: yourself is very horny:
	if the arousal of the player >= very-horny-limit and the player is able to get horny, decide yes;
	decide no.

To decide which number is extremely-horny-limit:
	decide on 11000.

[!<YourselfIsExtremelyHorny>+

REQUIRES COMMENTING

+!]
Definition: yourself is extremely horny:
	if the arousal of the player >= extremely-horny-limit and (the player is magically horny or (the sex addiction of the player > 7 and the player is able to get horny)), decide yes;
	decide no.

The gagging for cock rules is a rulebook.

Definition: yourself is gagging for cock:
	follow the gagging for cock rules;
	if the rule succeeded, decide yes;
	decide no.

A gagging for cock rule (this is the extremely horny players need cock rule):
	if the player is extremely horny, rule succeeds.


[!<TheNotHornyEnoughToWankRule>+

You need some arousal to masturbate, and also you need to not be grossed out.

+!]
This is the not horny enough to wank rule:
	if the player is not a bit horny and auto is 0:
		say "You're not [if the raw sex addiction of the player < 6]desperate[otherwise]horny[end if] enough to do that yet.";
		rule fails;
	if the player is grossed out and the player is not magically horny: [won't even masturbate automatically]
		if auto is 0, say "You can't masturbate while grossed out.";
		rule fails.
The not horny enough to wank rule is listed last in the masturbation restriction rules.


Arousal ends here.

