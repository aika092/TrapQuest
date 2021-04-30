Portal Pants by Knickers begins here.

Part - Portal Pants

portal-pants is a knickers. portal-pants is unique. portal-pants is leather. The printed name of portal-pants is "[clothing-title-before]portal pants[clothing-title-after]". The text-shortcut of portal-pants is "ptlp". portal-pants is crotch-assless. Understand "portal", "pants" as portal-pants.

Definition: portal-pants is displacable: decide no.
Definition: portal-pants is black themed: decide yes.
Definition: portal-pants is transformation-protected: decide yes.
Definition: portal-pants is fluid immune: decide no.
Definition: portal-pants is external fluid immune: decide yes. [Is the top of it waterproof but the underside soakable?]
Definition: portal-pants is soakable pee covering:
	if it is worn, decide yes;
	decide no.
Definition: portal-pants is magic themed: decide yes.
Definition: portal-pants is potentially erection concealing: decide yes.
To decide which number is the initial armour of (C - portal-pants):
	decide on 15.

To compute SelfExamineDesc of (K - portal-pants):
	say "A backless set of chastity straps covers your groin and some of your [ShortDesc of hips]. ";

To say selfexamineuniquetitle of (K - portal-pants):
	say "pair of portal pants".

To say ShortDesc of (K - portal-pants):
	say "portal pants".

Figure of Portal Pants is the file "Items/Clothes/Lower/Underwear/Special/portalpants1.png".

To decide which figure-name is clothing-image of (C - portal-pants):
	decide on figure of Portal Pants.

To say ClothingDesc of (K - portal-pants):
	say "This set of black straps covers your [genitals] with a swirling portal!".

To set up influence of (C - portal-pants):
	now C is anal-sex-addiction-influencing.

To SilentSquirt (L - a liquid-object) On (C - portal-pants) by (N - a number):
	if N > 0:
		if inside-out is true:
			say "[announced L] disappears through the portal.";
			PuddleUp L by N in Hotel44;
			if portal gag is worn:
				say "The [L] flows out of the [portal gag] and into your mouth!";
				now N is (N + 1) / 2;
				if L is semen or (L is murkwater and diaper quest is 0):
					say "[variable custom style][if the semen taste addiction of the player < 7][one of]Yuck, yuck, yuck![or]Gross...[in random order][otherwise if the semen taste addiction of the player < 14][one of]Salty...[or]Whoops, not again...[then at random][otherwise][one of]Good sissies should always swallow their own cum...[or]Delicious![or]Yum![stopping][end if][roman type][line break]";
				otherwise if L is urine:
					say "[variable custom style][if the urine taste addiction of the player < 7][one of]Disgusting![or]How awful![or]Yuck yuck yuck![or]Gross!!![in random order][otherwise if the urine taste addiction of the player < 14][one of]Eurgh...[or]I'm like Bear Grylls... haha.[or]It's less bad than somebody else's piss, I guess.[in random order][otherwise][one of]Why does it taste so good?![or]I can't get enough of the taste of my own pee![or]Yummy![stopping][end if][roman type][line break]";
				FaceFill L by N;
		otherwise:
			if thighs is unsoaked, say "[announced L] flows down to your thighs.";
			ContinuedDribble L on Thighs by N.

[!<ThePortalPantsPussySlutRule>+

Decreases the chance of vaginal sex.

+!]
This is the portal pants pussy slut rule:
	if portal-pants is worn, decrease the desirability of vagina by 10.
The portal pants pussy slut rule is listed in the pussy slut eligibility rules.

This is the portal pants blocks masturbation rule:
	if portal-pants is worn or portal-hotpants is worn:
		now failed-masturbation-reason is the substituted form of "You can't masturbate with the portal covering your [genitals]!";
		rule fails.
The portal pants blocks masturbation rule is listed last in the penis masturbation restriction rules.
The portal pants blocks masturbation rule is listed last in the vaginal masturbation restriction rules.

Part - Portal Hotpants

portal-hotpants is a knickers. portal-hotpants is unique. portal-hotpants is metal. The printed name of portal-hotpants is "[clothing-title-before]portal hotpants[clothing-title-after]". The text-shortcut of portal-hotpants is "pthp". Understand "portal", "pants" as portal-hotpants.
portal-hotpants has a number called charge.

Definition: portal-hotpants is displacable: decide no.
Definition: portal-hotpants is cursable: decide no.
Definition: portal-hotpants is removable: decide no.
Definition: portal-hotpants is stealable: decide no.
Definition: portal-hotpants is grey themed: decide yes.
Definition: portal-hotpants is transformation-protected: decide yes.
Definition: portal-hotpants is fluid immune: decide no.
Definition: portal-hotpants is external fluid immune: decide yes. [Is the top of it waterproof but the underside soakable?]
Definition: portal-hotpants is soakable pee covering:
	if it is worn, decide yes;
	decide no.
Definition: portal-hotpants is potentially erection concealing: decide yes.

To decide which number is the hipModesty of (C - portal-hotpants): decide on 2.

To say ClothingDesc of (K - portal-hotpants):
	say "A gold frame secures a piece of concrete to your nether-regions. You can feel that your genitals are... 'elsewhere'[if K is penetrating a fuckhole]. There is currently someone fucking your [variable (random fuckhole penetrated by K)]![end if].".

To compute SelfExamineDesc of (K - portal-hotpants):
	say ClothingDesc of K.

To say selfexamineuniquetitle of (K - portal-hotpants):
	say "pair of portal hotpants".

To say ShortDesc of (K - portal-hotpants):
	say "portal hotpants".

Figure of Portal Hotpants is the file "Items/Clothes/Lower/Underwear/Special/portalhotpants1.png".

To decide which figure-name is clothing-image of (C - portal-hotpants):
	decide on figure of Portal Hotpants.

To set up influence of (C - portal-hotpants):
	now C is not-influencing.

To SilentSquirt (L - a liquid-object) On (C - portal-hotpants) by (N - a number):
	if N > 0:
		if inside-out is true:
			say "[announced L] disappears through the portal.";
			PuddleUp L by N in Hotel44;
		otherwise:
			if thighs is unsoaked, say "[announced L] flows down to your thighs.";
			ContinuedDribble L on Thighs by N.


To compute periodic effect of (C - portal-hotpants):
	increase the charge of C by 1;
	if the charge of C < 100 and the charge of C > (a random number between 40 and 60) and the player is not in Hotel44 and Hotel44 is not nearby:
		let F be asshole;
		if the player is possessing a vagina and (asshole is actually occupied or a random number between 1 and 2 is 1), now F is vagina;
		repeat with T running through disembodied things penetrating F:
			say "You feel [NameDesc of T] being removed from your [variable F]!";
			now T is in Hotel44;
			dislodge T;
		if F is not actually occupied:
			say "[bold type]Suddenly, you feel something long and hard push into your [variable F]![line break][variable custom style][one of]Aaaah! So sudden![or]Oh god, I'm being used right now?![or]That pimp is selling my [F] again![then at random][roman type][line break]";
			now C is penetrating F;
			now the charge of C is 100;
	compute school periodic effect of C.

To compute school periodic effect of (C - portal-hotpants):
	let F be a random fuckhole penetrated by C;
	if F is a fuckhole:
		cutshow figure of pimp portal cutscene;
		let M be a random ultimate-lesson-actor;
		now M is penetrating F;
		dislodge C;
		say "[BigFuckerDesc of M] is using your [variable F] as [his of M] personal [one of]onahole[or]cocksleeve[or]fuckhole[in random order]!";
		ruin F;
		if playerRegion is school or the player is in Hotel44 or Hotel44 is nearby or the charge of C > a random number between 101 and 103:
			now the sex-length of M is 0;
			now M is not interested; [to prevent orgasm satisfy function]
			compute climax of M in F;
			say "You feel the [DickDesc of M] being quickly pulled out of your [variable F], leaving you empty once again.";
			now the charge of C is 0;
			if pimp is not normally ally, FavourUp pimp;
		otherwise:
			now C is penetrating F;
			say StealthPortalSexFlav;
		dislodge M;
	otherwise if the charge of C > 100:
		now the charge of C is 0.

Definition: portal-hotpants is pants pee refusal inducing:
	if the player is proud:
		if debugmode > 0:
			say "If debugmode was disabled, the player would refuse to pee.";
		otherwise:
			now Neighbour Finder is the location of the player;
			say "[first custom style]I can't bring myself to do that! The pimp [if Hotel44 is not nearby]and who knows how many other people [end if]will be watching![roman type][line break]";
		decide yes;
	decide no.

Portal Pants ends here.
