Salves by Crafting begins here.


A salve is a kind of alchemy product. Understand "salves" as a salve.
A true salve is a kind of alchemy product. Understand "salves" as a true salve.
A true salve is wearable.


Check taking off salve:
	say "The only way this [noun] is coming off is if you wash it off." instead.
Check taking off true salve:
	say "The only way this [noun] is coming off is if you wash it off." instead.


Figure of salve is the file "Items/Collectibles/salve1.png".
To decide which figure-name is the examine-image of (V - a salve):
	decide on the figure of salve.
To decide which figure-name is the examine-image of (V - a true salve):
	decide on the figure of salve.

Part 1 - Salve of Buoyancy

A salve of buoyancy is a kind of salve. The printed name of salve of buoyancy is "[TQlink of item described]salve of buoyancy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of salve of buoyancy is "[TQlink of item described]salves of buoyancy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of salve of buoyancy is "sbo". There are 3 salve of buoyancy.
To say ExamineDesc of (C - a salve of buoyancy):
	say "A small round metal container that contains an orange greasy lip-balm-like substance. [if item described is covering a backdrop][SalveStatus][otherwise]It seems like you are supposed to rub it on your body, and something tells you it is probably most appropriate to apply it to your [bold type]breasts[roman type], [bold type]belly[roman type] or [bold type]butt[roman type].[end if]".

To BackgroundRender (T - a salve of buoyancy) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of orange in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a salve of buoyancy):
	decide on 9.

A buoyant salve is a kind of true salve. The printed name of buoyant salve is "[TQlink of item described][if item described is cursed]cursed [end if]buoyant salve[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of buoyant salve is "bysv". There are 3 buoyant salve.

To BackgroundRender (T - a buoyant salve) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of orange in the current focus window at X1 by Y1 with size DX by DY.

To say ExamineDesc of (C - a buoyant salve):
	say "You feel a salve making your [random backdrop covered by C] [if C is cursed]heavier[otherwise]lighter[end if].".

To oil (B - a body part) with (S - a salve of buoyancy):
	if S is cursed, say "You somehow feel a bit heavier! Uh-oh...";
	otherwise say "You somehow feel a [if the noun is blessed]bit[otherwise]lot[end if] lighter!";
	let O be a random off-stage buoyant salve;
	[now O is held by the player;]
	now O is worn by the player;
	now O is covering B;
	if S is cursed, now O is cursed.



Part 2 - Salve of Restriction

A salve of restriction is a kind of salve. The printed name of salve of restriction is "[TQlink of item described]salve of restriction[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of salve of restriction is "[TQlink of item described]salves of restriction[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of salve of restriction is "sor". There are 3 salve of restriction.
To say ExamineDesc of (C - a salve of restriction):
	say "A small round metal container that contains a blue greasy lip-balm-like substance. [if item described is covering a backdrop][SalveStatus][otherwise]It seems like you are supposed to rub it on your body, and something tells you it is probably most appropriate to apply it to your [bold type]breasts[roman type], [bold type]belly[roman type] or [bold type]butt[roman type].[end if]".

To BackgroundRender (T - a salve of restriction) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of blue in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a salve of restriction):
	decide on 10.

A restricting salve is a kind of true salve. The printed name of restricting salve is "[TQlink of item described][if item described is cursed]cursed [end if]restricting salve[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of restricting salve is "rssv". There are 3 restricting salve.

To say ExamineDesc of (C - a restricting salve):
	say "The salve is [if C is cursed]making your [random backdrop covered by C] grow over time[otherwise]holding your [random backdrop covered by C] in place[end if].".

To BackgroundRender (T - a restricting salve) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of blue in the current focus window at X1 by Y1 with size DX by DY.

A time based rule (this is the cursed restricting salve punishment rule):
	repeat with S running through cursed restricting salve covering body parts:
		if a random number between 1 and 30 is 1:
			if S is covering breasts and the player is not top heavy:
				increase the flesh volume of breasts by 1;
				say "Your [BreastDesc] have somehow slightly grown in size[one of]! The salve must have been cursed[or][stopping]!";
			if S is covering belly and weight gain fetish is 1 and the flesh volume of belly < 10:
				increase the flesh volume of belly by 1;
				say "Your [BellyDesc] has somehow gotten slightly fatter[one of]! The salve must have been cursed[or][stopping]!";
			if S is covering hips:
				if extreme proportions fetish is 1 and the thickness of hips < 20:
					increase the thickness of hips by 1;
					say "Your [ShortDesc of hips] have somehow slightly grown in size[one of]! The salve must have been cursed[or][stopping]!";
				otherwise if the thickness of hips < 10:
					increase the thickness of hips by 1;
					say "Your [ShortDesc of hips] have somehow slightly grown in size[one of]! The salve must have been cursed[or][stopping]!";
				if weight gain fetish is 0 or the flesh volume of hips is the thickness of hips - 1, now the flesh volume of hips is the thickness of hips.


To oil (B - a body part) with (S - a salve of restriction):
	say "You feel a bit more... stable.";
	let O be a random off-stage restricting salve;
	[now O is held by the player;]
	now O is worn by the player;
	now O is covering B;
	if S is cursed, now O is cursed.

Part 3 - Salve of Concealment

A salve of concealment is a kind of salve. The printed name of salve of concealment is "[TQlink of item described]salve of concealment[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of salve of concealment is "[TQlink of item described]salves of concealment[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of salve of concealment is "slvc". There are 2 salve of concealment.

To say ExamineDesc of (C - a salve of concealment):
	say "A small round metal container that contains a cream greasy lip-balm-like substance. [if item described is covering a backdrop][SalveStatus][otherwise]It seems like you are supposed to rub it on your body, and something tells you it is probably most appropriate to apply it to an orifice.[end if]".

To BackgroundRender (T - a salve of concealment) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of creamy in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a salve of concealment):
	decide on 11.

A concealment salve is a kind of true salve. The printed name of concealment salve is "[TQlink of item described][if item described is cursed]cursed [end if]concealment salve[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of concealment salve is "ccsv". There are 2 concealment salve.

To say ExamineDesc of (C - a concealment salve):
	say "Your eye [if C is cursed]is magically drawn to focus on[otherwise]slides uncomfortably by[end if] your [random backdrop covered by C].".

To BackgroundRender (T - a concealment salve) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of creamy in the current focus window at X1 by Y1 with size DX by DY.

To say SalveStatus:
	say "It is currently smeared all over your [random backdrop covered by item described].".

To oil (B - a body part) with (S - a salve of concealment):
	let O be a random off-stage concealment salve;
	[now O is held by the player;]
	now O is worn by the player;
	now O is covering B;
	if S is cursed, now O is cursed.

[!<TheSalvePussySlutRule>+

Increases the chance of vaginal sex if cursed and applied to vagina.

+!]
This is the salve pussy slut rule:
	if there is a cursed concealment salve covering vagina, increase the desirability of vagina by 15.
The salve pussy slut rule is listed in the pussy slut eligibility rules.
[!<TheSalveButtSlutRule>+

Increases the chance of anal sex if cursed and applied to asshole.

+!]
This is the salve butt slut rule:
	if there is a cursed concealment salve covering asshole, increase the desirability of asshole by 15.
The salve butt slut rule is listed in the butt slut eligibility rules.




Salves ends here.

