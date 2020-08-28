Imprinting by Clothing begins here.

[!<DecideWhichNumberIsClothingImprinting>+

Used to be an option. Now it's not.

+!]
To decide which number is clothing-imprinting:
	decide on 1.

imprint-flav is a number that varies.

imprint-target is an object that varies.

the imprinting rules is a rulebook.

To imprint (C - a clothing):
	now imprint-flav is 0;
	now imprint-target is C;
	follow the imprinting rules;
	say "[ImprintEndFlav]".

To resolve delayed imprints:
	repeat with C running through clothing in soon-to-imprint:
		if clothing-imprinting > 0, imprint C;
		only destroy C.

To imprint (C - a diaper):
	do nothing.

To say ImprintStartFlav:
	if imprint-flav is 0, say "As your [ShortDesc of imprint-target] is destroyed, you feel some of its magic ";
	otherwise say "and ";
	now imprint-flav is 1.

To say ImprintEndFlav:
	if imprint-flav is 1, say "transferred to you permanently!".

This is the strength imprinting rule:
	if the strength-influence of imprint-target is not 0:
		say "[ImprintStartFlav]strength [if the strength-influence of imprint-target < 0]reducing[otherwise]improving[end if] effect [run paragraph on]";
		if the strength-influence of imprint-target > 0, increase the raw strength of the player by 1;
		otherwise decrease the raw strength of the player by 1;
		if the raw strength of the player > 30, now the raw strength of the player is 30;
		if the raw strength of the player < 1, now the raw strength of the player is 1.
The strength imprinting rule is listed in the imprinting rules.

This is the dexterity imprinting rule:
	if the dexterity-influence of imprint-target is not 0:
		say "[ImprintStartFlav]agility [if the dexterity-influence of imprint-target < 0]reducing[otherwise]improving[end if] effect [run paragraph on]";
		if the dexterity-influence of imprint-target > 0, increase the raw dexterity of the player by 1;
		otherwise decrease the raw dexterity of the player by 1;
		if the raw dexterity of the player > 30, now the raw dexterity of the player is 30;
		if the raw dexterity of the player < 1, now the raw dexterity of the player is 1.
The dexterity imprinting rule is listed in the imprinting rules.

This is the intelligence imprinting rule:
	if the intelligence-influence of imprint-target is not 0:
		say "[ImprintStartFlav]intelligence [if the intelligence-influence of imprint-target < 0]reducing[otherwise]improving[end if] effect [run paragraph on]";
		if the intelligence-influence of imprint-target > 0, increase the raw intelligence of the player by 1;
		otherwise decrease the raw intelligence of the player by 1;
		if the raw intelligence of the player > 30, now the raw intelligence of the player is 30;
		if the raw intelligence of the player < 1, now the raw intelligence of the player is 1.
The intelligence imprinting rule is listed in the imprinting rules.

This is the sex addiction imprinting rule:
	if the sex-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav][if diaper quest is 1]orgasm addiction[otherwise]sex obsession[end if] [if the sex-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the sex-addiction-influence of imprint-target > 0, increase the raw sex addiction of the player by 1;
		otherwise decrease the raw sex addiction of the player by 1;
		if the raw sex addiction of the player > 20, now the raw sex addiction of the player is 20;
		if the raw sex addiction of the player < 1, now the raw sex addiction of the player is 1.
The sex addiction imprinting rule is listed in the imprinting rules.

This is the anal sex addiction imprinting rule:
	if the anal-sex-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav]anal sex addiction [if the anal-sex-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the anal-sex-addiction-influence of imprint-target > 0, increase the raw anal sex addiction of the player by 1;
		otherwise decrease the raw anal sex addiction of the player by 1;
		if the raw anal sex addiction of the player > 10, now the raw anal sex addiction of the player is 10;
		if the raw anal sex addiction of the player < 1, now the raw anal sex addiction of the player is 1.
The anal sex addiction imprinting rule is listed in the imprinting rules.

This is the oral sex addiction imprinting rule:
	if the oral-sex-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav]oral sex addiction [if the oral-sex-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the oral-sex-addiction-influence of imprint-target > 0, increase the raw oral sex addiction of the player by 1;
		otherwise decrease the raw oral sex addiction of the player by 1;
		if the raw oral sex addiction of the player > 10, now the raw oral sex addiction of the player is 10;
		if the raw oral sex addiction of the player < 1, now the raw oral sex addiction of the player is 1.
The oral sex addiction imprinting rule is listed in the imprinting rules.

This is the titfuck addiction imprinting rule:
	if the titfuck-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav]titfuck addiction [if the titfuck-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the titfuck-addiction-influence of imprint-target > 0, increase the raw titfuck addiction of the player by 1;
		otherwise decrease the raw titfuck addiction of the player by 1;
		if the raw titfuck addiction of the player > 10, now the raw titfuck addiction of the player is 10;
		if the raw titfuck addiction of the player < 1, now the raw titfuck addiction of the player is 1.
The titfuck addiction imprinting rule is listed in the imprinting rules.

This is the vaginal sex addiction imprinting rule:
	if the vaginal-sex-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav]vaginal sex addiction [if the vaginal-sex-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the vaginal-sex-addiction-influence of imprint-target > 0, increase the raw vaginal sex addiction of the player by 1;
		otherwise decrease the raw vaginal sex addiction of the player by 1;
		if the raw vaginal sex addiction of the player > 10, now the raw vaginal sex addiction of the player is 10;
		if the raw vaginal sex addiction of the player < 1, now the raw vaginal sex addiction of the player is 1.
The vaginal sex addiction imprinting rule is listed in the imprinting rules.

This is the semen addiction imprinting rule:
	if the semen-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav]creampie[if bukkake fetish is 1] & bukkake[end if] addiction [if the semen-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the semen-addiction-influence of imprint-target > 0, increase the raw semen addiction of the player by 1;
		otherwise decrease the raw semen addiction of the player by 1;
		if the raw semen addiction of the player > 20, now the raw semen addiction of the player is 20;
		if the raw semen addiction of the player < 1, now the raw semen addiction of the player is 1.
The semen addiction imprinting rule is listed in the imprinting rules.

This is the semen taste addiction imprinting rule:
	if the semen-taste-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav]semen addiction [if the semen-taste-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the semen-taste-addiction-influence of imprint-target > 0, increase the raw semen taste addiction of the player by 1;
		otherwise decrease the raw semen taste addiction of the player by 1;
		if the raw semen taste addiction of the player > 20, now the raw semen taste addiction of the player is 20;
		if the raw semen taste addiction of the player < 1, now the raw semen taste addiction of the player is 1.
The semen taste addiction imprinting rule is listed in the imprinting rules.

This is the urine taste addiction imprinting rule:
	if the urine-taste-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav]urine addiction [if the urine-taste-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the urine-taste-addiction-influence of imprint-target > 0, increase the raw urine taste addiction of the player by 1;
		otherwise decrease the raw urine taste addiction of the player by 1;
		if the raw urine taste addiction of the player > 20, now the raw urine taste addiction of the player is 20;
		if the raw urine taste addiction of the player < 1, now the raw urine taste addiction of the player is 1.
The urine taste addiction imprinting rule is listed in the imprinting rules.

This is the milk taste addiction imprinting rule:
	if the milk-taste-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav]milk addiction [if the milk-taste-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the milk-taste-addiction-influence of imprint-target > 0, increase the raw milk taste addiction of the player by 1;
		otherwise decrease the raw milk taste addiction of the player by 1;
		if the raw milk taste addiction of the player > 20, now the raw milk taste addiction of the player is 20;
		if the raw milk taste addiction of the player < 1, now the raw milk taste addiction of the player is 1.
The milk taste addiction imprinting rule is listed in the imprinting rules.

This is the delicateness imprinting rule:
	if the delicateness-influence of imprint-target is not 0:
		say "[ImprintStartFlav][if the delicateness-influence of imprint-target > 0]submissiveness[otherwise]dominance[end if] increasing effect [run paragraph on]";
		if the delicateness-influence of imprint-target > 0, increase the raw delicateness of the player by 1;
		otherwise decrease the raw delicateness of the player by 1;
		if the raw delicateness of the player > 20, now the raw delicateness of the player is 20;
		if the raw delicateness of the player < 1, now the raw delicateness of the player is 1.
The delicateness imprinting rule is listed in the imprinting rules.

This is the heel skill imprinting rule:
	if the heel-skill-influence of imprint-target is not 0:
		say "[ImprintStartFlav]heel [if the heel-skill-influence of imprint-target < 0]stumbling[otherwise]balancing[end if] effect [run paragraph on]";
		if the heel-skill-influence of imprint-target > 0, increase the raw heel skill of the player by 1;
		otherwise decrease the raw heel skill of the player by 1;
		if the raw heel skill of the player > 10, now the raw heel skill of the player is 10;
		if the raw heel skill of the player < 0, now the raw heel skill of the player is 0.
The heel skill imprinting rule is listed in the imprinting rules.

This is the kneeing imprinting rule:
	if (imprint-target is stockings or (imprint-target is suspenders and there are worn stockings)) and the magic-modifier of imprint-target is not 0:
		say "[ImprintStartFlav]knee [if the magic-modifier of imprint-target < 0]weakening[otherwise]empowering[end if] effect [run paragraph on]";
		if the magic-modifier of imprint-target > 0, increase permanent-knee-bonus by 1;
		otherwise decrease permanent-knee-bonus by 1.
The kneeing imprinting rule is listed in the imprinting rules.

This is the kicking imprinting rule:
	if imprint-target is kicking and the magic-modifier of imprint-target is not 0:
		say "[ImprintStartFlav]kick [if the magic-modifier of imprint-target < 0]weakening[otherwise]empowering[end if] effect [run paragraph on]";
		if the magic-modifier of imprint-target > 0, increase permanent-kick-bonus by 1;
		otherwise decrease permanent-kick-bonus by 1.
The kicking imprinting rule is listed in the imprinting rules.

This is the dignity imprinting rule:
	if the humiliation-influence of imprint-target is not 0:
		say "[ImprintStartFlav][if the humiliation-influence of imprint-target < 0]self-esteem shredding[otherwise]dignity maintaining[end if] effect [run paragraph on]";
		if the humiliation of the player < HUMILIATION-BROKEN:
			if the humiliation-influence of imprint-target > 0, decrease the humiliation of the player by 500;
			otherwise increase the humiliation of the player by 500.
The dignity imprinting rule is listed in the imprinting rules.

This is the diaper addiction imprinting rule:
	if the diaper-addiction-influence of imprint-target is not 0:
		say "[ImprintStartFlav]diaper addiction [if the diaper-addiction-influence of imprint-target < 0]suppressing[otherwise]increasing[end if] effect [run paragraph on]";
		if the diaper-addiction-influence of imprint-target > 0, increase the raw diaper addiction of the player by 1;
		otherwise decrease the raw diaper addiction of the player by 1;
		if the raw diaper addiction of the player > 20, now the raw diaper addiction of the player is 20;
		if the raw diaper addiction of the player < 1, now the raw diaper addiction of the player is 1.
The diaper addiction imprinting rule is listed in the imprinting rules.

Imprinting ends here.
