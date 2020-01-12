Portal Pants by Knickers begins here.

portal-pants is a knickers. portal-pants is unique. portal-pants is leather. The armour of portal-pants is 12. The printed name of portal-pants is "[clothing-title-before]portal pants[clothing-title-after]". The text-shortcut of portal-pants is "ptlp". portal-pants is crotch-assless. Understand "portal", "pants" as portal-pants.

Definition: portal-pants is displacable: decide no.
Definition: portal-pants is black themed: decide yes.
Definition: portal-pants is transformation-protected: decide yes.
Definition: portal-pants is fluid immune: decide yes.
Definition: portal-pants is soakable pee covering if it is worn.
Definition: portal-pants is magic themed: decide yes.

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

To uniquely set up (C - portal-pants):
	do nothing.

To set up influence of (C - portal-pants):
	now C is anal-sex-addiction-influencing.

To Squirt (L - a liquid-object) On (C - portal-pants) by (N - a number):
	say ", disappearing through the portal.";
	if portal gag is worn:
		say "The [L] flows out of the [portal gag] and into your mouth! There's nothing you can do but gulp and swallow!";
		now N is (N + 1) / 2;
		if L is semen:
			say "[variable custom style][if the semen taste addiction of the player < 7][one of]Yuck, yuck, yuck![or]Gross...[in random order][otherwise if the semen taste addiction of the player < 14][one of]Salty...[or]Whoops, not again...[then at random][otherwise][one of]Good sissies should always swallow their own cum...[or]Delicious![or]Yum![stopping][end if][roman type][line break]";
			StomachSemenUp N;
		otherwise:
			StomachUp N;
		if L is urine:
			say "[variable custom style][if the urine taste addiction of the player < 7][one of]Disgusting![or]How awful![or]Yuck yuck yuck![or]Gross!!![in random order][otherwise if the urine taste addiction of the player < 14][one of]Eurgh...[or]I'm like Bear Grylls... haha.[or]It's less bad than somebody else's piss, I guess.[in random order][otherwise][one of]Why does it taste so good?![or]I can't get enough of the taste of my own pee![or]Yummy![stopping][end if][roman type][line break]";
			UrineTasteAddictUp 1;
		[if L is milk, MilkTasteAddictUp 1;]

[!<ThePortalPantsPussySlutRule>+

Decreases the chance of vaginal sex.

+!]
This is the portal pants pussy slut rule:
	if portal-pants is worn, decrease the desirability of vagina by 10.
The portal pants pussy slut rule is listed in the pussy slut eligibility rules.


Portal Pants ends here.

