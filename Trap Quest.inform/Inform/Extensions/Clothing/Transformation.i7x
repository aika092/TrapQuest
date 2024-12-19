Transformation by Clothing begins here.

clothing has an object called upgrade-target.
clothing has a number called transform-attempts.
clothing has a number called transform-resistance.
A game universe initialisation rule:
	repeat with C running through rare clothing:
		increase the transform-resistance of C by 1.

To decide which number is the transformability of (C - a clothing):
	if diaper quest is 1, decide on 21 - the initial cringe of C;
	decide on 21 - the initial outrage of C.

To decide which object is most-transformable-clothing:
	let LT be the list of worn upgradable clothing;
	if the number of entries in LT is 0:
		let C be a random worn transformation chain transformable clothing;
		if C is nothing, let C be a random worn transformable clothing;
		decide on C;
	let LC be a list of clothing;
	let X be a random worn clothing;
	repeat with C running through LT:
		repeat with N running from 1 to the transformability of C:
			add C to LC; [The lower its outrage level, the more entries in LC i.e. the more chance of it being chosen]
	let E be the number of entries in LC;
	if E > 0:
		let R be a random number between 1 and E;
		now X is entry R in LC;
	decide on X.

To decide which object is most-transformable-uncovered-clothing:
	let LT be the list of currently uncovered upgradable clothing;
	if the number of entries in LT is 0:
		let C be a random worn transformation chain currently uncovered transformable clothing;
		if C is nothing, let C be a random currently uncovered transformable clothing;
		decide on C;
	let LC be a list of clothing;
	let X be a random worn clothing;
	repeat with C running through LT:
		repeat with N running from 1 to the transformability of C:
			add C to LC; [The lower its outrage level, the more entries in LC i.e. the more chance of it being chosen]
	let E be the number of entries in LC;
	if E > 0:
		let R be a random number between 1 and E;
		now X is entry R in LC;
	decide on X.

To decide which object is the potential-upgrade-target of (C - a clothing):
	[THIS IS THE TEMPLATE FOR FINDING THE BEST TRANSFORMATION TARGET.]
	now theme-share-target is C;
	let Z be nothing;
	let L1 be the list of off-stage same-type transformation-eligible fetish appropriate more-outrageous clothing; [Find all items that could be reasonable transformation targets.]
	if debugmode > 1, say "[number of entries in L1] eligible transformation items found.";
	if the number of entries in L1 > 0:
		let L2 be a list of clothing;
		now Z is entry 1 of L1; [If every item is transformation-theme-blocked, we still spit out an item so that the 'is upgradable' function works as intended.]
		repeat with D running through L1:
			now the upgrade-target of C is D;
			if C is not transformation-theme-blocked and C is not transformation-clash-blocked:
				add D to L2; [Disregard ones that the item will refuse to transform into.]
		if debugmode > 1:
			say "Final list is ";
			repeat with D running through L2:
				say "[D] ";
			say line break;
		sort L2 in random order; [Otherwise whatever happens to be the lower object ID in the game's memory would always take priority over other items with the same eligibility]
		let O be 100;
		repeat with D running through L2: [Find the least outrageous of the eligible transformation items. Hopefully makes the choices follow a nice sequence.]
			let IO be the initial outrage of D;
			if IO < O:
				if debugmode > 1, say "[ShortDesc of D] has initial outrage [IO], which is lower than [O].";
				now Z is D;
				now O is IO;
	decide on Z.

[If this resolves to something other than nothing, it will override the above.]
To decide which object is the unique-upgrade-target of (C - a clothing):
	decide on nothing.

To update upgrade target of (C - a clothing):
	now the upgrade-target of C is nothing;
	now the upgrade-target of C is the unique-upgrade-target of C;
	if the upgrade-target of C is nothing and C is not class-transformation-protected, now the upgrade-target of C is the potential-upgrade-target of C;
	check upgrade target of C.

To check upgrade target of (C - a clothing):
	if the upgrade-target of C is clothing and C is worn:
		if debugmode > 1, say "Checking if [upgrade-target of C] can be summoned when [C] is not worn.";
		let L be the list of body parts penetrated by C;
		repeat with B running through L:
			now C is not penetrating B;
		now C is in Holding Pen; [We want to see if the upgrade-target of C is wearable so we can't have it being worn or penetrating orifices while we do that]
		if the upgrade-target of C is not actually summonable:
			now the upgrade-target of C is nothing;
			if debugmode > 1, say "It was not summonable.";
		repeat with B running through L:
			now C is penetrating B;
		now C is worn by the player.

Definition: an object is untransformable: decide yes. ['Nothing' is untransformable.]

Definition: a clothing is transformation-protected: decide no. [Some stuff doesn't get transformed while it is in a certain state.]

Definition: a clothing is disintegration-protected:
	if it is class-transformation-protected, decide yes;
	decide no. [Some stuff doesn't get transformed while it has nothing to turn into]

Definition: a clothing is class-transformation-protected: [Some stuff doesn't get transformed while it has no other class-relevant items to transform into.]
	if it is class-relevant:
		[if the unique-upgrade-target of it is class-relevant clothing, decide no;] [shouldn't be necessary - 'update upgrade target' should handle this logic]
		decide yes;
	decide no.

Definition: a clothing is transformation-theme-blockable:
	if it is not class-transformation-protected, decide yes;
	decide no. [Some stuff refuses to transform when it shares a theme with other items. Class items will always transform into a more slutty class item though, regardless of theme]

Definition: a clothing (called C) is transformation-theme-blocked:
	if C is not transformation-theme-blockable, decide no;
	now theme-target is C;
	now colour-themes-shared is 0;
	now interesting-themes-shared is 0;
	truncate colour-themes-shared-list to 0 entries;
	truncate interesting-themes-shared-list to 0 entries;
	follow the theme blocking rules;
	if colour-themes-shared + interesting-themes-shared > 0, decide yes;
	decide no.

[We don't want to transform a clothing into a clothing that gives the player a uniform penalty for wearing clashing clothing, e.g. trousers worn at the same time as a skirt]
Definition: a clothing (called C) is transformation-clash-blocked:
	if C is not transformation-theme-blockable, decide no;
	let D be the upgrade-target of C;
	if C is unskirted and D is skirted:
		repeat with U running through worn unskirted themed clothing:
			if U is not C and U is not usually autoremovable and C is not usually autoremovable, decide yes;
	if C is not unskirted themed and D is unskirted themed:
		repeat with U running through worn skirted clothing:
			if U is not C and U is not usually autoremovable and C is not usually autoremovable, decide yes;
	decide no.

Definition: a clothing (called C) is untransformable:
	if C is transformation-protected, decide yes;
	if C is disintegration-protected:
		if C is not loop-safe-upgradable, decide yes; [Traps will never even bother trying to transform something disintegration-protected that hasn't been able to find a successful transformation target this turn.]
	decide no.

Definition: a clothing is transformable:
	if it is not untransformable, decide yes;
	decide no.

Definition: an equippable is transformation-protected: decide yes.

Definition: a thing is end of transformation chain: decide no.

Definition: a thing is transformation chain:
	if it is not end of transformation chain, decide yes;
	decide no.

Definition: a clothing (called C) is upgradable:
	if the upgrade-target of C is clothing:
		if C is untransformable, decide no;
		decide yes; [this means we've already worked out that it's upgradable this turn, we don't want to re-check and possibly have RNG decide it's not actually upgradable, so we don't update the target]
	update upgrade target of C;
	if C is untransformable, decide no;
	if the upgrade-target of C is clothing, decide yes;
	decide no.

Definition: a clothing (called C) is loop-safe-upgradable:
	if the upgrade-target of C is clothing, decide yes;
	update upgrade target of C;
	if the upgrade-target of C is clothing, decide yes;
	decide no.

To compute (C - a clothing) inheriting from (D - a clothing):
	if D is cursed:
		now C is cursed;
	otherwise if D is blessed:
		now C is blessed;
	otherwise:
		now C is bland;
	if D is locked, now C is locked;
	otherwise now C is unlocked;
	now the raw-magic-modifier of C is the raw-magic-modifier of D;
	now the clothing-influence of C is the clothing-influence of D;
	now the magic-type of C is the magic-type of D;
	now the augmentation-charging-time of C is the augmentation-charging-time of D;
	now the augmentation-grow-charge of C is the augmentation-grow-charge of D;
	if D is sure, now C is sure;
	otherwise now C is unsure;
	if D is identified, now C is identified;
	otherwise now C is unidentified;
	if D is stuck, now C is stuck;
	otherwise now C is not stuck;
	now the glue timer of C is the glue timer of D;
	if (C is ass plugging and D is ass plugging) or (C is vagina plugging and D is vagina plugging), now the plug size of C is the plug size of D;
	if (C is ass plugging or C is vagina plugging) and D is a sex toy, now the plug size of C is the size of D;
	if (D is ass plugging or D is vagina plugging) and C is a sex toy, now the size of C is the plug size of D;
	repeat with B running through body parts:
		if D is penetrating B:
			if C is sex toy or B is not fuckhole or (B is asshole and C is ass plugging) or (B is vagina and C is vagina plugging):
				now C is penetrating B;
				now D is not penetrating B;
		otherwise:
			now C is not penetrating B; [just to be sure]
	[if D is crotch-displaced and C is crotch covering, now C is crotch-displaced;] [not sure about this one]
	if D is crotch-unzipped and C is crotch-zipped, ZipDown C;
	if D is crotch-ripped and (C is crotch-intact or C is crotch-zipped or C is crotch-skirted) and there is an embodied thing penetrating a fuckhole, now C is crotch-ripped;
	if there is an embodied thing penetrating a fuckhole and (C is crotch-intact or C is crotch-zipped or C is crotch-skirted):
		if C is displacable, now C is crotch-displaced;
		otherwise now C is crotch-ripped;
	if there is an embodied thing penetrating breasts:
		if C is top-displacable:
			now C is top-displaced;
		otherwise if C is not-top-displacable and C is breast covering:
			now C is top-ripped;
	if D is messed knickers and C is soilable knickers:
		now the mess of C is the mess of D;
		if C is diaper:
			if D is diaper, now the perceived-mess of C is the perceived-mess of D;
			otherwise now the perceived-mess of C is the mess of C;
	if C is sex toy and D is sex toy and C is not basic plug:
		if the size of D is 10 or the player is getting lucky, now the size of C is the size of D;
		otherwise now the size of C is the size of D + 1;
	if C is fluid vulnerable and the soak-limit of D > 0:
		now the semen-soak of C is (the semen-soak of D * the soak-limit of C) / the soak-limit of D;
		now the milk-soak of C is (the milk-soak of D * the soak-limit of C) / the soak-limit of D;
		now the water-soak of C is (the water-soak of D * the soak-limit of C) / the soak-limit of D;
		now the urine-soak of C is (the urine-soak of D * the soak-limit of C) / the soak-limit of D;
		if C is diaper and D is diaper:
			now the perceived-semen-soak of C is (the perceived-semen-soak of D * the soak-limit of C) / the soak-limit of D;
			now the perceived-milk-soak of C is (the perceived-milk-soak of D * the soak-limit of C) / the soak-limit of D;
			now the perceived-water-soak of C is (the perceived-water-soak of D * the soak-limit of C) / the soak-limit of D;
			now the perceived-urine-soak of C is (the perceived-urine-soak of D * the soak-limit of C) / the soak-limit of D;
	now the used condoms of C is the used condoms of D;
	add the condom history of D to the condom history of C;
	now the empty condoms of C is the empty condoms of D;
	repeat with M running through things inseminating D:
		now M is inseminating C;
		now M is not inseminating D;
	repeat with K running through specific-keys covering C:
		now K is covering C;
		now K is not covering D;
	now the quest of C is the quest of D;
	if C is actually nipple covering or D is actually nipple covering, now latest-top-malfunction is earnings;
	now the owner of C is the owner of D;
	compute C unique inheriting from D.

To compute (C - a clothing) unique inheriting from (D - a clothing):
	do nothing.

To transform (D - a clothing) into (C - a clothing):
	say "[bold type]Your [ShortDesc of D] transforms into ";
	silently transform D into C;
	say "a [C][bold type][unless D is headgear or the player is in a blindroom] in front of your eyes[end if]![roman type][line break]";
	if transformation cutscenes is 1:
		say FullExamineDesc of C;
	otherwise:
		say ThemeDesc of C;
		say InfluenceDesc of C;
	say TransformReaction of C;
	compute post transformation effect of C.

To say TransformReaction of (C - a clothing): [We make the assumption it's worse. We just need to assess how bad the damage is.]
	if diaper quest is 1 and C is too cringeworthy and the cringe of C >= the outrage of C: [TODO new text that's different from skimpy humiliation]
		if C is not gloves and C is equippable or C is bag of holding:
			if C is cursed, say "[variable custom style][one of]Whaa? And I can't even let go of it?![or]You've GOT to be kidding me! Now I'm really stuck looking like a kid![or]Okay this has gone way too far. And to make things worse this curse means I can't let go![in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]No way... there's just no way I can let myself be seen holding something this childish! I should drop it immediately...[or]This has got to be a joke! They can't expect me to keep holding onto this?[or]Well that's just ridiculous. I'm going to drop it right away... aren't I?[in random order][roman type][line break]";
		otherwise:
			if C is cursed, say "[variable custom style][one of]Whaat? And I can't even take it off?![or]You've GOT to be kidding me! Now I'm really stuck looking like a kid![or]I need to get rid of this curse as soon as possible. This is just too childish.[or]Oh my god, I can't believe I have no choice but to wear this like a little baby![or]What the hell?! Am I really stuck wearing this kiddie stuff?[or]Okay this is just too much. And to make things worse I can't take it off![in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]No way... there's just no way I can let myself be seen in something this childish! I should take it off immediately...[or]This has got to be a joke! They can't expect me to keep wearing this?[or]Well that's just ridiculous. I'm going to take it off right away... aren't I?[or]Oh no! I can't be seen wearing this! People will genuinely think I'm a little child![or]Nope. I'm not considering wearing this for one more second, surely...[or]Okay this is too much. I'd [if the cringe of C < 12]almost [end if]rather be naked.[in random order][roman type][line break]";
	otherwise if C is too outrageous:
		if C is not gloves and C is equippable or C is bag of holding:
			if C is cursed, say "[variable custom style][one of]Holy shit! And I can't even let go of it...[or]I need to get rid of this curse as soon as possible. This is just too ridiculous.[or]What the fuck?! Am I really stuck holding this?[in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]No way... there's just no way I can let myself be seen with this![or]You've GOT to be kidding me![or]This is too far...[or]Oh no! I can't be seen holding this![in random order][roman type][line break]";
		otherwise:
			if C is cursed, say "[variable custom style][one of]Holy shit! And I can't even take it off...[or]You've GOT to be kidding me![or]I need to get rid of this curse as soon as possible. This is just too ridiculous.[or]Oh my god, I can't believe I have no choice but to wear this![or]Noooo! Get it off me![or]What the fuck?! Am I really stuck wearing this?[or]Okay this is too much. If I could take it off, I'd [if the outrage of C < 12]almost [end if]rather be naked.[in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]No way... there's just no way I can let myself be seen in this![or]You've GOT to be kidding me![or]This is too far...[or]Oh no! I can't be seen wearing this![or]You can't be serious![or]Fuck off, I'm not wearing this![or]Okay this is too much. I'd [if the outrage of C < 12]almost [end if]rather be naked.[in random order][roman type][line break]";
	otherwise if diaper quest is 1 and the cringe of C is too humiliating and the cringe of C >= the outrage of C: [TODO new text that's different from skimpy humiliation]
		if C is not gloves and C is equippable or C is bag of holding:
			if C is cursed, say "[variable custom style][one of]How embarrassing! And I can't even drop it...[or]How frustrating... from other people's perspective it will look like I'm holding this by choice![in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]I feel very reluctant to let anyone[if there is an intelligent monster in the location of the player] else[end if] see me holding this...[or]How humiliating. This is definitely too childish for me to be seen with...[in random order][roman type][line break]";
		otherwise:
			if C is cursed, say "[variable custom style][one of]How embarrassing! And I can't even take it off...[or]Oh come on![or]Fuck. I need to get this thing uncursed.[or]Okay, I'm only wearing this because I've literally got no choice![or]Really? This is so unfair.[or]Am I really stuck wearing this? Grr.[or]And it's cursed too. Not cool...[in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]I feel very reluctant to let anyone[if there is an intelligent monster in the location of the player] else[end if] see me like this...[or]What a joke. This is too childish for me.[or]This is too [']little one['] [if the humiliation of the player > HUMILIATION-DISGRACED + 3500]even [end if]for me.[or]I'm not looking forward to people seeing me in this.[or]This is much worse![or]This is not my idea of an upgrade![or]Ugh. I'm really tempted to take this off, it's just too much.[in random order][roman type][line break]";
	otherwise if the outrage of C is too humiliating:
		if C is not gloves and C is equippable or C is bag of holding:
			if C is cursed, say "[variable custom style][one of]How embarrassing! And I can't even drop it...[or]Fuck. I need to get this thing uncursed.[or]Oh my god, if someone sees me like this they'll think I'm carrying it around with me by choice![in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]I feel very reluctant to let anyone[if there is an intelligent monster in the location of the player] else[end if] see me with this...[or]I'm not looking forward to people seeing me holding this.[or]Someone's going to see me holding this and assume I'm a slut![in random order][roman type][line break]";
		otherwise:
			if C is cursed, say "[variable custom style][one of]How embarrassing! And I can't even take if off...[or]Oh come on![or]Fuck. I need to get this thing uncursed.[or]Okay, I'm only wearing this because I've literally got no choice![or]Really? This is just unfair.[or]Am I really stuck wearing this? Grr.[or]And it's cursed too. Not cool...[in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]I feel very reluctant to let anyone[if there is an intelligent monster in the location of the player] else[end if] see me like this...[or]What a joke. This is too trashy for me.[or]This is too nasty [if the humiliation of the player > HUMILIATION-DISGRACED + 3500]even [end if]for me.[or]I'm not looking forward to people seeing me in this.[or]This is much worse![or]This is not my idea of an upgrade![or]Ugh. I'm really tempted to take this off, it's just too much.[in random order][roman type][line break]";
	otherwise if (C is almost too cringeworthy or the unworn cringe of C is too humiliating) and diaper quest is 1:
		if the unworn cringe of C is too humiliating:
			say "[variable custom style][one of]Holy cow! Thank goodness it's covered up.[or]Oh my god, I'm so glad this is covered up at the moment![or]There's no way I could feel comfortable wearing something so childish if it wasn't covered up![in random order][roman type][line break]";
		otherwise if C is not gloves and C is equippable or C is bag of holding:
			say "[variable custom style][one of]I guess this will be OK for now. But only until I find something a bit more appropriate for my age.[or]Hmm, this will have to do for now, I guess![in random order][roman type][line break]";
		otherwise:
			say "[variable custom style][one of]I guess this will do for now.[or]This isn't that grown up, but I'll be fine wearing it.[or]I don't feel too uncomfortable wearing this.[or]Probably not my first choice, but not as babyish as it could be.[or]Fair enough, I'll wear this for now.[or]Hmm, this will have to do, I guess![or]I'll be fine wearing this for now.[in random order][roman type][line break]";
	otherwise if C is almost too much or the unworn outrage of C is too humiliating:
		if the unworn outrage of C is too humiliating:
			say "[variable custom style][one of]Holy shit! Thank goodness it's covered up.[or]Oh my god, I'm so glad this is covered up at the moment![or]There's no way I'd feel comfortable wearing this if it wasn't covered up![in random order][roman type][line break]";
		otherwise if C is not gloves and C is equippable or C is bag of holding:
			say "[variable custom style][one of]I guess this will do for now.[or]This is pretty out there, but I'll be fine using it.[or]I don't feel too uncomfortable using this.[in random order][roman type][line break]";
		otherwise:
			say "[variable custom style][one of]I guess this will do for now.[or]This is pretty out there, but I'll be fine wearing it.[or]I don't feel too uncomfortable wearing this.[or]This wouldn't be my first choice to wear, but it's not bad.[or]Fair enough, I'll wear this for now.[or]Hmm, this will have to do, I guess![or]I'll be fine wearing this for now.[in random order][roman type][line break]";
	otherwise if diaper quest is 1 and the humiliation of the player < HUMILIATION-BROKEN:
		if C is not gloves and C is equippable or C is bag of holding:
			say "[if C is too adult][line break][second custom style][one of]Ugh, this is still way too boring for me![or]*sigh* Isn't there any way to make it even more obvious it's for babies?[in random order][otherwise if the bimbo of the player < 7][line break][first custom style][one of]I don't have any problems with using this.[or]I'm fine holding onto this.[purely at random][otherwise][line break][variable custom style][one of]Ooh, I look even more adorable with this![or]Ooh, how cute! I'm more than happy carrying this.[in random order][end if][roman type][line break]";
		otherwise:
			say "[if C is too adult][line break][second custom style][one of]Ugh, this is still way too adult for me![or]*sigh* Isn't there any way to make it even more cartoony and fun?[or]I would prefer something that properly lets everyone know just how immature I am![or]Hmm, this is better but it doesn't scream 'will you take care of me?' in the way I was hoping.[or]Hmm, better, but still too grown up for me.[in random order][otherwise if the bimbo of the player < 7][line break][first custom style][one of]I don't have any problems with wearing this.[or]I'm fine with wearing this.[purely at random][otherwise][line break][variable custom style][one of]I love wearing this![or]I feel so giddy wearing this![or]Ooh, I'm fine wearing this![or]Ooh, how cute! I'm more than happy wearing this.[or]Wow, I look so adorable in this![in random order][end if][roman type][line break]";
	otherwise if the humiliation of the player < HUMILIATION-BROKEN:
		if C is not gloves and C is equippable or C is bag of holding:
			say "[if C is too boring][line break][second custom style][one of]Ugh, this is still way too practical for me! I need something that yells 'I'M A DISGUSTING WHORE'.[or]*sigh* Isn't there any way to make it even more slutty?[in random order][otherwise if the bimbo of the player < 7][line break][first custom style][one of]I don't have any problems with using this.[or]This is still fine for me.[purely at random][otherwise][line break][variable custom style][one of]Oh nice, I'm going to love showing this off![or]Ooh, how lush! My friends would be so jealous if they could see me with this.[in random order][end if][roman type][line break]";
		otherwise:
			say "[if C is too boring and C is actually dense and C is breast covering or C is belly covering or C is crotch covering][line break][second custom style][one of]Ugh, this is still way too plain for me![or]*sigh* Isn't there any way to make it even more revealing?[or]Aww, I was hoping for something even more slutty![or]Hmm, can't it get even more revealing?[in random order][otherwise if C is too boring][second custom style][one of]Ugh, this is still way too boring for me![or]*sigh* Isn't there any way to make it even more lewd?[or]I would prefer something that properly lets everyone know just how slutty I am![or]Hmm, this is better but it doesn't scream 'FUCK ME' in the way I was hoping.[or]Hmm, better, but still too boring for me.[in random order][otherwise if the bimbo of the player < 7][line break][first custom style][one of]I don't have any problems with wearing this.[or]I'm fine with wearing this.[purely at random][otherwise][line break][variable custom style][one of]I love wearing this![or]I feel AMAZING wearing this![or]Ooh, I'm fine wearing this![or]Ooh, how lush! I'm more than happy wearing this.[or]Wow, I look [beautiful] in this![in random order][end if][roman type][line break]".

To silently transform (D - a clothing) into (C - a clothing):
	blandify and reveal C;
	now C is worn by the player;
	compute C inheriting from D;
	only destroy D;
	if D is headgear, commence recycling of D; [stops that headgear re-appearing for a while]
	layer C correctly;
	if the quest of C is not appropriate, compute quest of C.

To compute post transformation effect of (C - a clothing):
	if C is not cursed and C is blandness and the player is getting very unlucky:
		now C is strength stealing;
		say "[BigNameDesc of C] has gained a new magical effect...  You can sense that it is now [']strength stealing['], and will take some of your strength away if you remove it normally. [GotUnluckyFlav]".

To transform (C - a clothing):
	transform C into the upgrade-target of C.

To silently transform (C - a clothing):
	silently transform C into the upgrade-target of C.

To potentially transform (C - a clothing):
	if C is upgradable:
		if debugmode > 1, say "The [ShortDesc of C] is upgradable.";
		if C is transformation-clash-blocked and the transform-attempts of C <= 1 + the disintegrate-resistance of C + the used condoms of C + the empty condoms of C + the transform-resistance of C:
			increase the transform-attempts of C by 1;
			say "[bold type]The [C] [bold type]manages to resist being transformed this time, because the transformation spell placed upon it would have left you wearing a skirt and bottoms combination that would have looked weird and that you couldn't remove![roman type][line break]";
		otherwise if C is transformation-theme-blocked and the transform-attempts of C <= 1 + the disintegrate-resistance of C + the used condoms of C + the empty condoms of C + the transform-resistance of C:
			increase the transform-attempts of C by 1;
			say "[bold type]The [C] [bold type]manages to resist being transformed this time, thanks to it wanting you to keep wearing multiple ";
			let LN1 be the number of entries in interesting-themes-shared-list;
			let LN2 be the number of entries in colour-themes-shared-list;
			while LN2 > 0:
				say "[entry LN2 of colour-themes-shared-list][if LN2 + LN1 > 2], [otherwise if LN2 + LN1 is 2] and [otherwise] [end if]";
				decrease LN2 by 1;
			while LN1 > 0:
				say "[entry LN1 of interesting-themes-shared-list][if LN1 > 2], [otherwise if LN1 is 2] and [otherwise] [end if]";
				decrease LN1 by 1;
			say "items![roman type][line break]";
		otherwise if the transform-attempts of C >= the transform-resistance of C:
			transform C;
		otherwise:
			if debugmode > 1, say "The transform attempts of it is [transform-attempts of C] and the transform resistance of it is only [transform-resistance of C].";
			compute failed transform of C;
	otherwise:
		compute failed transform of C.

To decide which number is the disintegrate-resistance of (C - a clothing):
	decide on 1.

To decide which number is the disintegrate-resistance of (C - a shoes):
	decide on 2.

To decide which number is the disintegrate-resistance of (C - a heels):
	decide on the heel-height of C.

To compute failed transform of (C - a clothing):
	increase the transform-attempts of C by 1;
	if the transform-attempts of C > the disintegrate-resistance of C + ((the used condoms of C + the empty condoms of C) * 2) + the transform-resistance of C:
		if C is cursed and C is removable:
			say "[bold type]The [C] [bold type]seems to resist being transformed once again, but its curse prevents it from being destroyed. [roman type]";
			if C is dressup or C is audible jiggles or C is audible squelches or C is desperation or C is waddle-walking or C is draining:
				say line break;
			otherwise:
				if a random number between 0 and 4 < game difficulty:
					now C is draining;
					say "Instead, it has gained a new magical effect...  You can sense that it is now [']draining['], and slowly sapping your stats over time.[line break][variable custom style]Oh no![roman type][line break]";
				otherwise if diaper quest is 0 and the largeness of breasts > 3:
					now C is audible jiggles;
					say "Instead, it has gained a new magical effect...  You can sense that it is now [']audible jiggles['], and is going to make your breasts make loud cartoonish jiggling sounds as you move![line break][variable custom style]Uh-oh![roman type][line break]";
				otherwise if diaper quest is 1 and C is somewhat fluid vulnerable knickers:
					now C is audible squelches;
					say "Instead, it has gained a new magical effect...  You can sense that it is now [']audible squelches['], and is going amplify any wet squelching sounds it makes a hundredfold![line break][variable custom style]Oh dear...[roman type][line break]";
				otherwise if diaper quest is 0:
					now C is dressup;
					say "Instead, it has gained a new magical effect...  You can sense that it is now [']dressup['], and is going to summon more outrageous and slutty clothing on you over time![line break][variable custom style]Oh no![roman type][line break]";
				otherwise if a random number between 2 and 8 < diaper messing:
					now C is desperation;
					say "Instead, it has gained a new magical effect...  You can sense that it is now [']desperation['], and is going to make you need to go number two much more frequently than normal![line break][variable custom style]Uh-oh...[roman type][line break]";
				otherwise:
					now C is waddle-walking;
					say "Instead, it has gained a new magical effect...  You can sense that it is now [']waddle walking['], and is going to make you walk with an exaggerated waddle at all times, no matter [if there is a worn diaper]how full or thick your diaper is[otherwise]whether you're even wearing a diaper[end if]![line break][variable custom style]Uh-oh...[roman type][line break]";
		otherwise if the transform-attempts of C is the disintegrate-resistance of C + ((the used condoms of C + the empty condoms of C) * 2) + the transform-resistance of C + 1:
			say "[bold type]The [C] [bold type]seems to resist being transformed, and the transformation effect rebounds, searching for another target!";
			let T be a random worn transformation chain transformable clothing;
			if T is nothing, let T be a random worn transformable clothing;
			if T is a clothing, potentially transform T;
		otherwise:
			say "[bold type]The [C] [bold type]seems to resist being transformed once again, but it struggles to remain corporeal. After a few final shudders, it disappears completely![line break]";
			if the outrage of C is too humiliating or C is too boring, say "[variable custom style][one of]I didn't like it anyway.[or]Good riddance.[or]I don't mind losing that one.[or]Whatever.[in random order][roman type][line break]";
			otherwise say "[variable custom style][if C is cursed]Well at least I don't need to worry about the curse.[otherwise]Nooo! [one of]Come[or]Give it[or]I want it[at random] back![end if][roman type][line break]";
			destroy C;
	otherwise:
		if C is untransformable, say "It doesn't seem like the [C] can be transformed!";
		otherwise say "The [C] seems to [if the transform-attempts of C > 1]once again [end if]resist being transformed!".

Transformation ends here.
