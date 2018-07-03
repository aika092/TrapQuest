Salves by Crafting begins here.


A salve is a kind of alchemy product. Understand "salves" as a salve.
A salve is wearable. 
A true salve is a kind of alchemy product. Understand "salves" as a salve.
A true salve is wearable. 

Check taking off salve:
	say "The only way this [printed name of noun] is coming off is if you wash it off." instead.
Check taking off true salve:
	say "The only way this [printed name of noun] is coming off is if you wash it off." instead.

Include Salve Rubbing by Actions.

Part 1 - Salve of Buoyancy

A salve of buoyancy is a kind of salve. The printed name of salve of buoyancy is "[TQlink of item described]salve of buoyancy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of salve of buoyancy is "[TQlink of item described]salves of buoyancy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of salve of buoyancy is "sbo". The description of salve of buoyancy is "A small round metal container that contains a greasy lip-balm-like substance. [if item described is covering a backdrop][SalveStatus][otherwise]It seems like you are supposed to rub it on your body, and something tells you it is probably most appropriate to apply it to your [bold type]breasts[roman type], [bold type]belly[roman type] or [bold type]butt[roman type].[end if]". There are 5 salve of buoyancy.

To decide which number is the alchemy key of (A - a salve of buoyancy):
	decide on 9.

A buoyant salve is a kind of true salve. The printed name of buoyant salve is "[TQlink of item described]buoyant salve[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of buoyant salve is "You feel [if the item described is cursed]a salve making your [random backdrop covered by item described] heavier[otherwise]a salve making your [random backdrop covered by item described] lighter[end if].". There are 5 buoyant salve.

To oil (B - a body part) with (S - a salve of buoyancy):
	if S is cursed, say "You somehow feel a bit heavier!  Uh-oh..";
	otherwise say "You somehow feel a [if the noun is blessed]bit[otherwise]lot[end if] lighter!";
	let O be a random off-stage buoyant salve;
	[now O is held by the player;]
	now O is worn by the player;
	now O is covering B; 
	if S is cursed, now O is cursed.



Part 2 - Salve of Restriction

A salve of restriction is a kind of salve. The printed name of salve of restriction is "[TQlink of item described]salve of restriction[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of salve of restriction is "[TQlink of item described]salves of restriction[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of salve of restriction is "sor". The description of salve of restriction is "A small round metal container that contains a greasy lip-balm-like substance. [if item described is covering a backdrop][SalveStatus][otherwise]It seems like you are supposed to rub it on your body, and something tells you it is probably most appropriate to apply it to your [bold type]breasts[roman type], [bold type]belly[roman type] or [bold type]butt[roman type].[end if]". There are 5 salve of restriction.

To decide which number is the alchemy key of (A - a salve of restriction):
	decide on 10.

A restricting salve is a kind of true salve. The printed name of restricting salve is "[TQlink of item described]restricting salve[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of restricting salve is "The salve is holding your [random backdrop covered by item described] in place.". There are 5 restricting salve.

A time based rule (this is the cursed restricting salve punishment rule):
	repeat with S running through cursed restricting salve covering body parts:
		if a random number between 1 and 30 is 1:
			if S is covering breasts and the player is not top heavy:
				increase the flesh volume of breasts by 1;
				say "Your [BreastDesc] have somehow slightly grown in size[one of]!  The salve must have been cursed[or][stopping]!";
			if S is covering belly and weight gain fetish is 1 and the flesh volume of belly < 10:
				increase the flesh volume of belly by 1;
				say "Your [BellyDesc] has somehow gotten slightly fatter[one of]!  The salve must have been cursed[or][stopping]!";
			if S is covering hips:
				if extreme proportions fetish is 1 and the thickness of hips < 20:
					increase the thickness of hips by 1;
					say "Your [ShortDesc of hips] have somehow slightly grown in size[one of]!  The salve must have been cursed[or][stopping]!";
				otherwise if the thickness of hips < 10:
					increase the thickness of hips by 1;
					say "Your [ShortDesc of hips] have somehow slightly grown in size[one of]!  The salve must have been cursed[or][stopping]!";
				if weight gain fetish is 0 or the flesh volume of hips is the thickness of hips - 1, now the flesh volume of hips is the thickness of hips.


To oil (B - a body part) with (S - a salve of restriction):
	say "You feel a bit more.. stable.";
	let O be a random off-stage restricting salve;
	[now O is held by the player;]
	now O is worn by the player;
	now O is covering B; 
	if S is cursed, now O is cursed.

Part 3 - Salve of Concealment

A salve of concealment is a kind of salve. The printed name of salve of concealment is "[TQlink of item described]salve of concealment[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of salve of concealment is "[TQlink of item described]salves of concealment[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of salve of concealment is "slvc". The description of salve of concealment is "A small round metal container that contains a greasy lip-balm-like substance. [if item described is covering a backdrop][SalveStatus][otherwise]It seems like you are supposed to rub it on your body, and something tells you it is probably most appropriate to apply it to an orifice.[end if]". There are 5 salve of concealment.

To decide which number is the alchemy key of (A - a salve of concealment):
	decide on 11.

A concealment salve is a kind of true salve. The printed name of concealment salve is "[TQlink of item described]concealment salve[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of concealment salve is "Your eye slides uncomfortably by [random backdrop covered by item described].". There are 5 concealment salve.

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

