Transformation by Clothing begins here.


clothing has an object called upgrade-target.
clothing has a number called transform-attempts.
clothing has a number called transform-resistance.

To decide which object is the potential-upgrade-target of (C - a clothing):
	decide on nothing.

To decide which object is the unique-upgrade-target of (C - a clothing):
	decide on nothing.

To update upgrade target of (C - a clothing):
	now the upgrade-target of C is nothing;
	now the upgrade-target of C is the unique-upgrade-target of C;
	if the upgrade-target of C is nothing, now the upgrade-target of C is the potential-upgrade-target of C;
	if the upgrade-target of C is clothing:
		if C is worn:
			now C is in Holding Pen; [We want to see if the upgrade-target of C is wearable so we can't have it being worn while we do that]
			if the upgrade-target of C is not actually summonable, now the upgrade-target of C is nothing;
			now C is worn by the player.

Definition: an object (called C) is untransformable: ['Nothing' is untransformable.]
	decide yes.

Definition: a clothing (called C) is untransformable: [Some traps will never even bother trying to transform this stuff.]
	decide no.

Definition: a clothing (called C) is transformable:
	if C is untransformable, decide no;
	decide yes.

Definition: a headgear (called C) is untransformable:
	decide yes.

Definition: an accessory (called C) is untransformable:
	decide yes.

Definition: an equippable (called C) is untransformable:
	decide yes.

Definition: a clothing (called C) is upgradable:
	if C is untransformable, decide no;
	if the upgrade-target of C is clothing, decide yes; [this means we've already worked out that it's upgradable this turn, we don't want to re-check and possibly have RNG decide it's not actually upgradable, so we don't update the target]
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
	now the raw-magic-modifier of C is the raw-magic-modifier of D;
	now the clothing-influence of C is the clothing-influence of D;
	now the magic-type of C is the magic-type of D;
	if D is sure, now C is sure;
	otherwise now C is unsure;
	if D is identified, now C is identified;
	otherwise now C is unidentified;
	if D is stuck, now C is stuck;
	if D is glued, now C is glued;
	if (C is ass plugging and D is ass plugging) or (C is vagina plugging and D is vagina plugging), now the plug size of C is the plug size of D;
	repeat with B running through body parts penetrated by D:
		now C is penetrating B;
		now D is not penetrating B;
	[if D is crotch-displaced and C is crotch covering, now C is crotch-displaced;] [not sure about this one]
	if D is crotch-unzipped and C is crotch-zipped, now C is crotch-unzipped;
	if D is crotch-ripped and (C is crotch-intact or C is crotch-zipped or C is crotch-skirted), now C is crotch-ripped;
	if D is messed knickers and C is soilable knickers, now the mess of C is the mess of D;
	if C is fluid vulnerable and the soak-limit of D > 0:
		now the semen-soak of C is (the semen-soak of D * the soak-limit of C) / the soak-limit of D;
		now the milk-soak of C is (the milk-soak of D * the soak-limit of C) / the soak-limit of D;
		now the water-soak of C is (the water-soak of D * the soak-limit of C) / the soak-limit of D;
		now the urine-soak of C is (the urine-soak of D * the soak-limit of C) / the soak-limit of D;
	now the used condoms of C is the used condoms of D;
	now the empty condoms of C is the empty condoms of D;
	compute C unique inheriting from D.

To compute (C - a clothing) unique inheriting from (D - a clothing):
	do nothing.

To transform (D - a clothing) into (C - a clothing):
	say "Your [D] transforms into ";
	silently transform D into C;
	say "a [C] in front of your eyes!  ";
	if transformation cutscenes is 1, say "[description of C]";
	say "[TransformReaction of C]".

To say TransformReaction of (C - a clothing): [We make the assumption it's worse. We just need to assess how bad the damage is.]
	if diaper quest is 1 and C is too cringeworthy and the cringe of C >= the outrage of C: [TODO new text that's different from skimpy humiliation]
		if C is equippable or C is bag of holding:
			if C is cursed, say "[variable custom style][one of]Whaat?  And I can't even let go of it?![or]You've GOT to be kidding me!  Now I'm really stuck looking like a kid![or]Okay this has gone way too far. And to make things worse this curse means I can't let go![in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]No way... there's just no way I can let myself be seen holding something this childish!  I should drop it immediately...[or]This has got to be a joke! They can't expect me to keep holding onto this?[or]Well that's just ridiculous. I'm going to drop it right away... aren't I?[in random order][roman type][line break]";
		otherwise:
			if C is cursed, say "[variable custom style][one of]Whaat?  And I can't even take it off?![or]You've GOT to be kidding me!  Now I'm really stuck looking like a kid![or]I need to get rid of this curse as soon as possible. This is just too childish.[or]Oh my god, I can't believe I have no choice but to wear this like a little baby![or]What the hell?!  Am I really stuck wearing this kiddie stuff?[or]Okay this is just too much. And to make things worse I can't take it off![in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]No way... there's just no way I can let myself be seen in something this childish!  I should take it off immediately...[or]This has got to be a joke! They can't expect me to keep wearing this?[or]Well that's just ridiculous. I'm going to take it off right away... aren't I?[or]Oh no!  I can't be seen wearing this!  People will genuinely think I'm a little child![or]Nope. I'm not considering wearing this for one more second, surely...[or]Okay this is too much. I'd [if the cringe of C < 12]almost [end if]rather be naked.[in random order][roman type][line break]";
	otherwise if C is too outrageous:
		if C is equippable or C is bag of holding:
			if C is cursed, say "[variable custom style][one of]Holy shit!  And I can't even let go of it...[or]I need to get rid of this curse as soon as possible. This is just too ridiculous.[or]What the fuck?!  Am I really stuck holding this?[in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]No way... there's just no way I can let myself be seen with this![or]You've GOT to be kidding me![or]This is too far...[or]Oh no!  I can't be seen holding this![in random order][roman type][line break]";
		otherwise:
			if C is cursed, say "[variable custom style][one of]Holy shit!  And I can't even take it off...[or]You've GOT to be kidding me![or]I need to get rid of this curse as soon as possible. This is just too ridiculous.[or]Oh my god, I can't believe I have no choice but to wear this![or]Noooo!  Get it off me![or]What the fuck?!  Am I really stuck wearing this?[or]Okay this is too much. If I could take it off, I'd [if the outrage of C < 12]almost [end if]rather be naked.[in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]No way... there's just no way I can let myself be seen in this![or]You've GOT to be kidding me![or]This is too far...[or]Oh no!  I can't be seen wearing this![or]You can't be serious![or]Fuck off, I'm not wearing this![or]Okay this is too much. I'd [if the outrage of C < 12]almost [end if]rather be naked.[in random order][roman type][line break]";
	otherwise if diaper quest is 1 and the cringe of C is too humiliating and the cringe of C >= the outrage of C: [TODO new text that's different from skimpy humiliation]
		if C is equippable or C is bag of holding:
			if C is cursed, say "[variable custom style][one of]How embarrassing!  And I can't even drop it...[or]How frustrating... from other people's perspective it will look like I'm holding this by choice![in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]I feel very reluctant to let anyone[if there is an intelligent monster in the location of the player] else[end if] see me holding this...[or]How humiliating. This is definitely too childish for me to be seen with...[in random order][roman type][line break]";
		otherwise:
			if C is cursed, say "[variable custom style][one of]How embarrassing!  And I can't even take it off...[or]Oh come on![or]Fuck. I need to get this thing uncursed.[or]Okay, I'm only wearing this because I've literally got no choice![or]Really?  This is so unfair.[or]Am I really stuck wearing this?  Grr.[or]And it's cursed too. Not cool...[in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]I feel very reluctant to let anyone[if there is an intelligent monster in the location of the player] else[end if] see me like this...[or]What a joke. This is too childish for me.[or]This is too [']little one['] [if the humiliation of the player > HUMILIATION-DISGRACED + 3500]even [end if]for me.[or]I'm not looking forward to people seeing me in this.[or]This is much worse![or]This is not my idea of an upgrade![or]Ugh. I'm really tempted to take this off, it's just too much.[in random order][roman type][line break]";
	otherwise if the outrage of C is too humiliating:
		if C is equippable or C is bag of holding:
			if C is cursed, say "[variable custom style][one of]How embarrassing!  And I can't even drop it...[or]Fuck. I need to get this thing uncursed.[or]Oh my god, if someone sees me like this they'll think I'm carrying it around with me by choice![in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]I feel very reluctant to let anyone[if there is an intelligent monster in the location of the player] else[end if] see me with this...[or]I'm not looking forward to people seeing me holding this.[or]Someone's going to see me holding this and assume I'm a slut![in random order][roman type][line break]";
		otherwise:
			if C is cursed, say "[variable custom style][one of]How embarrassing!  And I can't even take if off...[or]Oh come on![or]Fuck. I need to get this thing uncursed.[or]Okay, I'm only wearing this because I've literally got no choice![or]Really?  This is just unfair.[or]Am I really stuck wearing this?  Grr.[or]And it's cursed too. Not cool...[in random order][roman type][line break]";
			otherwise say "[variable custom style][one of]I feel very reluctant to let anyone[if there is an intelligent monster in the location of the player] else[end if] see me like this...[or]What a joke. This is too trashy for me.[or]This is too nasty [if the humiliation of the player > HUMILIATION-DISGRACED + 3500]even [end if]for me.[or]I'm not looking forward to people seeing me in this.[or]This is much worse![or]This is not my idea of an upgrade![or]Ugh. I'm really tempted to take this off, it's just too much.[in random order][roman type][line break]";
	otherwise if C is almost too cringeworthy or the unworn cringe of C is too humiliating:
		if the unworn cringe of C is too humiliating:
			say "[variable custom style][one of]Holy cow!  Thank goodness it's covered up.[or]Oh my god, I'm so glad this is covered up at the moment![or]There's no way I could feel comfortable wearing something so childish if it wasn't covered up![in random order][roman type][line break]";
		otherwise if C is equippable or C is bag of holding:
			say "[variable custom style][one of]I guess this will be ok for now. But only until I find something a bit more appropriate for my age.[or]Hmm, this will have to do for now, I guess![in random order][roman type][line break]";
		otherwise:
			say "[variable custom style][one of]I guess this will do for now.[or]This isn't that grown up, but I'll be fine wearing it.[or]I don't feel too uncomfortable wearing this.[or]Probably not my first choice, but not as babyish as it could be.[or]Fair enough, I'll wear this for now.[or]Hmm, this will have to do, I guess![or]I'll be fine wearing this for now.[in random order][roman type][line break]";
	otherwise if C is almost too much or the unworn outrage of C is too humiliating:
		if the unworn outrage of C is too humiliating:
			say "[variable custom style][one of]Holy shit!  Thank goodness it's covered up.[or]Oh my god, I'm so glad this is covered up at the moment![or]There's no way I'd feel comfortable wearing this if it wasn't covered up![in random order][roman type][line break]";
		otherwise if C is equippable or C is bag of holding:
			say "[variable custom style][one of]I guess this will do for now.[or]This is pretty out there, but I'll be fine using it.[or]I don't feel too uncomfortable using this.[in random order][roman type][line break]";
		otherwise:
			say "[variable custom style][one of]I guess this will do for now.[or]This is pretty out there, but I'll be fine wearing it.[or]I don't feel too uncomfortable wearing this.[or]This wouldn't be my first choice to wear, but it's not bad.[or]Fair enough, I'll wear this for now.[or]Hmm, this will have to do, I guess![or]I'll be fine wearing this for now.[in random order][roman type][line break]";
	otherwise if diaper quest is 1 and the humiliation of the player < HUMILIATION-BROKEN:
		 if C is equippable or C is bag of holding:
			say "[if C is too adult][line break][second custom style][one of]Ugh, this is still way too boring for me![or]*sigh* Isn't there any way to make it even more obvious it's for babies?[in random order][otherwise if the bimbo of the player < 7][line break][first custom style][one of]I don't have any problems with using this.[or]I'm fine holding onto this.[purely at random][otherwise][line break][variable custom style][one of]Ooh, I look even more adorable with this![or]Ooh, how cute!  I'm more than happy carrying this.[in random order][end if][roman type][line break]";
		otherwise:
			say "[if C is too adult][line break][second custom style][one of]Ugh, this is still way too adult for me![or]*sigh* Isn't there any way to make it even more cartoony and fun?[or]I would prefer something that properly lets everyone know just how immature I am![or]Hmm, this is better but it doesn't scream 'will you take care of me?' in the way I was hoping.[or]Hmm, better, but still too grown up for me.[in random order][otherwise if the bimbo of the player < 7][line break][first custom style][one of]I don't have any problems with wearing this.[or]I'm fine with wearing this.[purely at random][otherwise][line break][variable custom style][one of]I love wearing this![or]I feel so giddy wearing this![or]Ooh, I'm fine wearing this![or]Ooh, how cute!  I'm more than happy wearing this.[or]Wow, I look so adorable in this![in random order][end if][roman type][line break]";
	otherwise if the humiliation of the player < HUMILIATION-BROKEN:
		 if C is equippable or C is bag of holding:
			say "[if C is too boring][line break][second custom style][one of]Ugh, this is still way too practical for me!  I need something that yells 'I'M A DISGUSTING WHORE'.[or]*sigh* Isn't there any way to make it even more slutty?[in random order][otherwise if the bimbo of the player < 7][line break][first custom style][one of]I don't have any problems with using this.[or]This is still fine for me.[purely at random][otherwise][line break][variable custom style][one of]Oh nice, I'm going to love showing this off![or]Ooh, how lush! My friends would be so jealous if they could see me with this.[in random order][end if][roman type][line break]";
		otherwise:
			say "[if C is too boring and C is actually dense and C is breast covering or C is belly covering or C is crotch covering][line break][second custom style][one of]Ugh, this is still way too plain for me![or]*sigh* Isn't there any way to make it even more revealing?[or]Aww, I was hoping for something even more slutty![or]Hmm, can't it get even more revealing?[in random order][otherwise if C is too boring][second custom style][one of]Ugh, this is still way too boring for me![or]*sigh* Isn't there any way to make it even more lewd?[or]I would prefer something that properly lets everyone know just how slutty I am![or]Hmm, this is better but it doesn't scream 'FUCK ME' in the way I was hoping.[or]Hmm, better, but still too boring for me.[in random order][otherwise if the bimbo of the player < 7][line break][first custom style][one of]I don't have any problems with wearing this.[or]I'm fine with wearing this.[purely at random][otherwise][line break][variable custom style][one of]I love wearing this![or]I feel AMAZING wearing this![or]Ooh, I'm fine wearing this![or]Ooh, how lush!  I'm more than happy wearing this.[or]Wow, I look [beautiful] in this![in random order][end if][roman type][line break]".

To silently transform (D - a clothing) into (C - a clothing):
	now C is worn by the player;
	compute C inheriting from D;
	only destroy D;
	layer C correctly.

To transform (C - a clothing):
	transform C into the upgrade-target of C.

To silently transform (C - a clothing):
	silently transform C into the upgrade-target of C.

To potentially transform (C - a clothing):
	if C is upgradable and the transform-attempts of C >= the transform-resistance of C:
		transform C;
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
		say "[bold type]The [C] [bold type]seems to resist being transformed once again, but it struggles to remain corporeal. After a few final shudders, it disappears completely![line break]";
		if the outrage of C is too humiliating or C is too boring, say "[variable custom style][one of]I didn't like it anyway.[or]Good riddance.[or]I don't mind losing that one.[or]Whatever.[in random order][roman type][line break]";
		otherwise say "[variable custom style][if C is cursed]Well at least I don't need to worry about the curse.[otherwise]Nooo!  [one of]Come[or]Give it[or]I want it[at random] back![end if][roman type][line break]";
		destroy C;
	otherwise:
		if C is untransformable, say "It doesn't seem like the [C] can be transformed!";
		otherwise say "The [C] seems to [if the transform-attempts of C > 1]once again [end if]resist being transformed!".


Transformation ends here.

