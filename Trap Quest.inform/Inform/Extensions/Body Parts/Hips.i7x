Hips by Body Parts begins here.

Part 1 - Definitions

[!<Hips>@

REQUIRES COMMENTING

@inherits <Flesh>

@!]
hips is a flesh. hips is everywhere. The description of hips is "[TotalDesc of hips]". Understand "ass", "butt", "bottom", "rear", "bum", "behind", "rear end", "buttocks", "cheeks" as hips.

[!<Hips>@<thickness:Integer>*

REQUIRES COMMENTING

*@!]
Hips has a number called thickness. The thickness of hips is usually 1.

[!<Hips>@<realThickness:Integer>*

REQUIRES COMMENTING

*@!]
Hips has a number called real thickness. The real thickness of hips is usually 1.

[!<Hips>@<fleshVolume:Integer>*

REQUIRES COMMENTING

*@!]
Hips has a number called flesh volume. The flesh volume of hips is usually 1.

[!<Hips>@<airVolume:Integer>*

REQUIRES COMMENTING

*@!]
Hips has a number called air volume. The air volume of hips is usually 0.

[!<Hips>@<siliconeVolume:Integer>*

REQUIRES COMMENTING

*@!]
Hips has a number called silicone volume. The silicone volume of hips is usually 0.

[!<Hips>@<previousThickness>*

REQUIRES COMMENTING

*@!]
Hips has a number called previous thickness. Hips has a number called previous total volume.

[!<Hips>@<fatBurning:Integer>*

REQUIRES COMMENTING

*@!]
Hips has a number called fat-burning.


[!<DecideWhichNumberIsMaxAssSizeModifier>+

REQUIRES COMMENTING

+!]
To decide which number is max ass size modifier:
	let M be max ass size points;
	if max ass size points > 0, increase M by 1;
	if max ass size points > 1, increase M by 1;
	if max ass size points > 2, increase M by 1;
	decide on M;

[!<DecideWhichNumberIsMaxAssSize>+

REQUIRES COMMENTING

+!]
To decide which number is max ass size:
	if there is a restricting salve covering hips, decide on the thickness of hips;
	if extreme proportions fetish is 1, decide on 20 - max ass size modifier;
	otherwise decide on 10 - max ass size modifier.

[!<SayMaxAssSizeDesc>+

REQUIRES COMMENTING

+!]
To say MaxAssSizeDesc:
	if extreme proportions fetish is 1:
		if max ass size is 11, say "humongous";
		if max ass size is 12, say "Kardashian sized";
		if max ass size is 13, say "giant wobbling";
		if max ass size is 14, say "watermelon sized";
		if max ass size is 16, say "beachball sized";
		if max ass size is 18, say "comically inflated";
		if max ass size is 20, say "impossibly giant";
	otherwise:
		if max ass size is 1, say "completely flat";
		if max ass size is 2, say "flat";
		if max ass size is 3, say "tight";
		if max ass size is 4, say "toned";
		if max ass size is 6, say "curvy";
		if max ass size is 8, say "cushioned";
		if max ass size is 10, say "oversized".


[!<YourselfIsBottomHeavy>+

Are hips at their maximum size?

+!]
Definition: yourself is bottom heavy:
	if the thickness of hips < 10 - max ass size modifier or the flesh volume of hips < max ass size, decide no;
	decide yes.

To decide which number is min ass size:
	decide on 1 + (starting body shape * 2).

[!<ReportTaking>+

REQUIRES COMMENTING

+!]
Report taking:
	if weight gain fetish is 1 and the player is upright:
		FatigueUp 10;
		increase the fat-burning of hips by 10;
		compute hip fat burning.

[!<ComputeHipFatBurning>+

REQUIRES COMMENTING

+!]
To compute hip fat burning:
	if the flesh volume of hips > 0:
		let F be 200 - (the flesh volume of hips * 10);
		if (a random number between 20 and F) + a random number between 20 and F < the fat-burning of hips:
			say "Your recent exercise has reduced the size of your ass!";
			FatAssDown 1;
			now the fat-burning of hips is 0.

[!<DecideWhichNumberIsTotalVolumeOfHips>+

REQUIRES COMMENTING

+!]
To decide which number is total volume of hips:
	let X be flesh volume of hips + air volume of hips + silicone volume of hips;
	if X > 20, decide on 20;
	decide on X.

[!<DecideWhichNumberIsTheWeightOfHips>+

REQUIRES COMMENTING

+!]
To decide which number is the weight of (XXX - hips):
	let H be the flesh volume of hips + the thickness of hips +( silicone volume of hips / 2) - (the air volume of hips * 2);
	if there is a worn buoyant salve covering hips:
		let S be a random worn buoyant salve covering hips;
		if S is cursed, increase H by 4;
		if S is bland and H > 3, decrease H by 3;
		if S is blessed and H > 3, decrease H by 6;
	if there is a worn abyssal tattoo and the class of the player is silicone queen:
		decrease H by the silicone volume of hips / 4; [Ass implants weigh less for the silicone queen if they've got the abyssal tattoo bonus]
	if H > 1, now H is H / 2;
	if the latex-transformation of the player > 1 and H > 6, now H is 6;
	if the latex-transformation of the player > 5 and  H > 0, now H is 0;
	decide on H.

Part 2 - Description

[!<SayShortDescOfHips>+

REQUIRES COMMENTING

+!]
To say ShortDesc of hips:
	let X be the thickness of hips;
	[if extreme proportions fetish is 1, now X is (X + 1) / 2;]
	if X < 3, say "androgynous hips";
	if X is 3, say "slight hips";
	if X is 4, say "defined hips";
	if X is 5, say  "womanly hips";
	if X is 6, say "pronounced hips";
	if X is 7, say "[if pregnancy fetish is 1]childbearing[otherwise]very pronounced[end if] hips";
	if X is 8, say "wide, [if pregnancy fetish is 1]childbearing[otherwise]cartoonishly pronounced[end if] hips";
	if X is 9, say "extraordinarily wide[if pregnancy fetish is 1][one of], twin childbearing[or][stopping][end if] hips";
	if X > 9, say "impossibly wide hips[if pregnancy fetish is 1][one of], for bearing several children (or one giant monster's offspring!)[run paragraph on][or][stopping][end if]";
	say " and [AssDesc]".

[!<SayTotalDescOfHips>+

REQUIRES COMMENTING

+!]
To say TotalDesc of hips:
	if there is worn knickers:
		compute SelfExamineDesc of a random worn knickers;
	otherwise if the thickness of hips > 3 and the total volume of hips > 4:
		say "Your [if the bimbo of the player > 6]alluring [end if][ShortDesc of hips] stick out behind you[if the bimbo of the player > 8] provocatively[end if]. ";
	otherwise:
		say "You have [MediumDesc of hips]. [if the thickness of hips > 6 + the flesh volume of thighs]You have a feminine gap between your legs, causing you to feel a breeze on your crotch even when your knees are together. [end if]";
	say "[AssFillDesc][AssImplantsDesc][HipWeight]".

[!<SayAssDesc>+

REQUIRES COMMENTING

+!]
To say AssDesc:
	let A be the total volume of hips;
	if A < 3, say "tiny flat butt";
	if A is 3, say "tight well toned tush";
	if A is 4, say "toned butt cheeks";
	if A is 5, say  "roundish but tight bum";
	if A is 6, say "cute curvy butt";
	if A is 7, say "eye-turning bubble butt";
	if A is 8, say "well cushioned bottom";
	if A is 9, say "[if weight gain fetish is 1]chunky[otherwise]thick[end if], wobbly ass";
	if A is 10, say "oversized [if weight gain fetish is 1]fat girl [end if]ass cheeks";
	if A is 11, say "humongous fat girl bottom";
	if A is 12, say "Kardashian sized protruding butt cheeks";
	if A is 13, say "giant wobbling butt cheeks";
	if A is 14, say "giant bouncing ass cheeks";
	if A is 15, say "basketball sized ass cheeks";
	if A is 16, say "beachball sized butt cheeks";
	if A > 16 and A < 20, say "comically [if inflation fetish is 0]inflated[otherwise]massive[end if] bum cheeks";
	if A is 20 and air volume of hips > 10:
		say "impossibly giant balloon-like ass cheeks";
	otherwise if A is 20:
		say "impossibly giant ass cheeks".

[!<SayHipDesc>+

REQUIRES COMMENTING

+!]
To say HipDesc:
	say ShortDesc of hips;
	if the total volume of hips is 14, say ", each one large larger than a watermelon";
	if the total volume of hips is 15, say " that sway wildly as you [if the player is upright]walk[otherwise]crawl[end if]";
	if the total volume of hips is 16, say " that force you to waddle awkwardly[if the player is upright] as you walk[end if]";
	if the total volume of hips > 16 and the total volume of hips < 20, say "[if the player is upright] that force you to walk with an exaggerated waddle[end if]";
	if the total volume of hips is 20 and air volume of hips > 10:
		say " [if the player is flying]holding you off the ground[otherwise]trying to pull you up into the air[end if]";
	otherwise if the total volume of hips is 20:
		say "[if the player is upright] that make it a huge challenge to even walk at all[end if]";
	if there is a worn chastity cage and the player is female:
		say " and chastity belt";
	if there is a worn diaper:
		let X be the weight of a random diaper worn by the player;
		if X is 0:
			say " (which are covered by a padded diaper)";
		otherwise if X < 3:
			say " (which are hidden inside a large diaper)";
		otherwise if X is 3:
			say " (which are hidden inside a bloated and heavy diaper)";
		otherwise if X is 4:
			say " (which are exaggerated by a very bloated and weighty diaper)";
		otherwise if X is 5:
			say " (which are exaggerated by an extremely bloated and weighty diaper)";
		otherwise:
			say " (which are greatly exaggerated by an incredibly heavy and saturated diaper)".

To say MediumDesc of hips:
	say HipDesc.

[!<SayHipWeight>+

REQUIRES COMMENTING

+!]
To say HipWeight:
	if the weight of hips < -3:
		say "Your butt weighs significantly less than air and is trying to pull you up off the ground. ";
	otherwise if the weight of hips < 3:
		say "Your butt is essentially weightless. ";
	otherwise if the weight of hips < 7:
		say "Your butt is a bit heavy. ";
	otherwise if the weight of hips < 11:
		say "Your butt is weighing you down a lot. ";
	otherwise if the weight of hips < 15:
		say "Your butt is very heavy and cumbersome. ";
	otherwise if the weight of hips < 18:
		say "Your butt is extremely heavy and unwieldy, making it a huge challenge for you to move around. ";
	otherwise:
		say "Your butt is impossibly heavy and unwieldy, making each step a very challenging task. ".

[!<SayAssFillDesc>+

REQUIRES COMMENTING

+!]
To say AssFillDesc:
	if the air volume of hips is 0:
		say "";
	otherwise if the total volume of hips > the air volume of hips * 2:
		say "It is slightly inflated with air. ";
	otherwise if the total volume of hips > the air volume of hips:
		say "It is inflated with a decent amount of air. ";
	otherwise if the total volume of hips is the air volume of hips or the total volume of hips > the air volume of hips / 2:
		say "It is ballooned with a huge amount of air. ";
	otherwise:
		say "It is ballooned with a massive amount of air. ".

[!<SayAssImplantsDesc>+

REQUIRES COMMENTING

+!]
To say AssImplantsDesc:
	if the silicone volume of hips is 0:
		say "";
	otherwise if the total volume of hips > the silicone volume of hips * 2:
		say "They contain small ass implants. ";
	otherwise if the total volume of hips > the silicone volume of hips:
		say "They contain medium sized ass implants. ";
	otherwise if the total volume of hips > the silicone volume of hips / 2:
		say "They contain large ass implants. ";
	otherwise:
		say "The vast majority of your ass can be attributed to your ass implants. ";

[!<SayRealDescOfHips>+

REQUIRES COMMENTING

+!]
To say RealDesc of (XXX - hips): [So that both can be used.]
	say RealHipDesc.

[!<SayRealHipDesc>+

REQUIRES COMMENTING

+!]
To say RealHipDesc:
	let X be the real thickness of hips;
	if X < 3, say "androgynous hips";
	if X is 3, say "slight hips";
	if X is 4, say "defined hips";
	if X is 5, say  "womanly hips";
	if X is 6, say "pronounced hips";
	if X is 7, say "[if pregnancy fetish is 1]childbearing[otherwise]very pronounced[end if] hips";
	if X is 8, say "wide, [if pregnancy fetish is 1]childbearing[otherwise]almost cartoonishly pronounced[end if] hips";
	if X > 8, say "extraordinarily wide[if pregnancy fetish is 1], twin childbearing[end if] hips";
	if the player is male and the player is virtual:
		say " and [ShortDesc of penis]".

Part 3 - Modify Hips Stats

Chapter 1 - Thickness


[!<HipUpX>+

REQUIRES COMMENTING

+!]
To HipUp (X - a number):
	while X > 0:
		decrease X by 1;
		if there is a restricting salve covering hips:
			say "[one of]You feel your [ShortDesc of hips] try to expand further, but the salve of restriction prevents it![or]Once again your [ShortDesc of hips] fails to grow any further.[stopping]";
		otherwise:
			if the thickness of hips < 10 and the thickness of hips < max ass size:
				increase the thickness of hips by 1;
				if the thickness of hips > 6 + the flesh volume of thighs, say "[one of]Your hips have now grown so wide that they leave you with a feminine gap between your legs, causing you to feel a breeze on your crotch even when your knees are together.[or][stopping]";
				if X is 0:
					if weight gain fetish is 0:
						now the flesh volume of hips is the thickness of hips * (extreme proportions fetish + 1); [The two values are mirrored when we're not tracking fatness separately]
					otherwise:
						if the flesh volume of hips < (the thickness of hips - 1) * (extreme proportions fetish + 1), FatAssUp 1; [Ass size increases a bit if hips are really big in comparison]
			otherwise:
				say "[one of]You feel your [ShortDesc of hips] try to expand further, but it physically can't grow any more![or]Once again your [ShortDesc of hips] fails to grow any further.[stopping]". [This will not display when extreme proportions fetish is enabled, this is intentional]

[!<HipDownX>+

REQUIRES COMMENTING

+!]
To HipDown (X - a number):
	if there is a restricting salve covering hips:
		say "[one of]You feel your [ShortDesc of hips] try to shrink, but the salve of restriction prevents it![or]Once again your [ShortDesc of hips] fail to shrink any further.[stopping]";
	otherwise:
		while X > 0:
			if the thickness of hips <= the real thickness of hips:
				say "[one of]You feel your [ShortDesc of hips] try to shrink, for some reason it doesn't work![or]Once again your [ShortDesc of hips] fail to shrink any further.[stopping]";
				now X is 0;
			otherwise:
				decrease X by 1;
				if the thickness of hips > min ass size, decrease the thickness of hips by 1;
	if weight gain fetish is 0, now the flesh volume of hips is the thickness of hips. [The two values are mirrored when we're not tracking fatness separately]

Chapter 2 - Buttocks

[!<AssSwellX>+

REQUIRES COMMENTING

+!]
To AssSwell (X - a number):
	if weight gain fetish is 1:
		while X > 0:
			decrease X by 1;
			if there is a restricting salve covering hips:
				say "[one of]You feel your [ShortDesc of hips] try to get fatter, but the salve of restriction prevents it![or]Once again your [ShortDesc of hips] fails to get any fatter.[stopping]";
			otherwise if total volume of hips < max ass size:
				increase the flesh volume of hips by 1;
			otherwise if X is 0:
				say "Your [ShortDesc of hips] try to get fatter but have reached their limit!";
	otherwise:
		HipUp X.

[!<AssInflateX>+

REQUIRES COMMENTING

+!]
To AssInflate (X - a number):
	if the number of worn research airhancers > 0, increase X by 1;
	now X is X * 2;
	while X > 0 and inflation fetish is 1:
		decrease X by 1;
		if total volume of hips < max ass size:
			increase the air volume of hips by 1;
		otherwise if X is 0:
			say "Your [ShortDesc of hips] try to inflate further but have reached their limit!".	

[!<AssImplantsUpX>+

REQUIRES COMMENTING

+!]
To AssImplantsUp (X - a number):
	let attempt-done be 0;
	while X > 0:
		decrease X by 1;
		if the thickness of hips < max ass size:
			increase silicone volume of hips by 1;
		otherwise if air volume of hips > 0:
			decrease air volume of hips by 1;
			increase silicone volume of hips by 1;
		otherwise if attempt-done < 2:
			say "Your [ShortDesc of hips] are just too big, the skin won't stretch any further!  Your new [if the silicone volume of hips > 0]and improved [end if]implants shrink under the pressure.";
			now attempt-done is 2;

[!<AssImplantsDownX>+

REQUIRES COMMENTING

+!]
To AssImplantsDown (X - a number):
	while X > 0:
		if the silicone volume of hips > 0:
			decrease silicone volume of hips by 1;
		

Chapter 3 - Fat


[!<FatAssUpX>+

REQUIRES COMMENTING

+!]
To FatAssUp (X - a number):
	if weight gain fetish is 1:
		AssSwell X;
		if newbie tips is 1 and the flesh volume of hips > 2, say "[one of][item style]Newbie tip: You're starting to pack on the pounds in the butt area!  That's making you heavier and therefore you'll tire out faster. However, it is fully reversible!  Every turn you 'resist' during sex will exercise your butt muscles a bit, and help you lose that fat. Also, picking items up off the ground when standing exercises that butt slowly but surely. It also increases fatigue, though.[roman type][line break][or][stopping]".

[!<FatAssDownX>+

REQUIRES COMMENTING

+!]
To FatAssDown (X - a number):
	while X > 0 and weight gain fetish is 1:
		if the flesh volume of hips > 0, decrease the flesh volume of hips by 1;
		decrease X by 1.

Hips ends here.

