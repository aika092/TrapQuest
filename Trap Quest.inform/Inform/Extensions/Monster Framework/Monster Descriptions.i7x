Monster Descriptions by Monster Framework begins here.

The printed name of a monster is usually "[monster-title-before of item described][MediumDesc of item described][monster-title-after of item described]".
The printed plural name of a monster is usually "[monster-title-before of item described][MediumDesc of item described]s[monster-title-after of item described]".

Understand "NPC", "enemy" as a monster.

Figure of Missing NPC is the file "NPCs/missing.jpg".

To say ShortDesc of (M - a monster):
	say MediumDesc of M.

To say MediumDesc of (M - a monster):
	say "ERROR - NPC missing title".

To say monster-title-before of (M - a monster):
	say "[if M is in the location of the player][TQlink of M][end if][input-style]".

To say monster-title-after of (M - a monster):
	say "[if debuginfo > 0 or M is threatening] (lvl [difficulty of M])[end if][if M is asleep] (fast asleep)[end if][shortcut-desc][roman type][if M is in the location of the player][TQxlink of M][verb-desc of M][end if]".

To say FullExamineDesc of (M - a monster):
	say FullMonsterDesc of M.

To say FullMonsterDesc of (M - a monster):
	say FullTitle of M;
	say ImageDesc of M;
	say MonsterDesc of M;
	say MonsterComment of M;
	if M is messy, say MessyMonsterFlav of M.

To say MonsterDesc of (M - a monster):
	say "This NPC seems to be missing [his of M] description!".

To say MonsterComment of (M - a monster):
	do nothing.

To say MonsterFaceDesc of (M - a monster):
	say "[if M is human]face[otherwise]head[end if]".

To say MonsterFaceDesc of (M - a robot):
	say "metal head".

To say MonsterFaceDesc of (M - a tentacle monster):
	say "single eye".

To say MonsterFaceDesc of (M - a fairy):
	say "entire body".

To say MessyMonsterFlav of (M - a monster):
	say "The back of [his of M] diaper is bulging out and [his of M] face is red with embarrassment. It seems that someone has done a stinky.".

To decide which number is the health-colour of (M - a monster):
	let HP be the health of M * 1.0;
	let MHP be the maxhealth of M * 1.0;
	if HP < 0.0 or M is defeated, now HP is 0.0;
	if MHP < HP, now HP is MHP;
	let HPU be 255 / MHP;
	let green-component be (HP * HPU) to the nearest whole number;
	let red-component be ((MHP - HP) * HPU) to the nearest whole number;
	decide on (green-component * 256) + (red-component * 65536).

To ForegroundRender (M - a monster) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	if M is alive and M is not dying:
		now DX is DX / 20;
		if DX < 4, now DX is 4;
		increase X1 by 4;
		increase Y1 by 4;
		decrease DY by 8;
		draw a rectangle 0 in the current focus window at X1 by Y1 with size DX by DY;
		let HP be the health of M;
		if HP > the maxhealth of M, now HP is the maxhealth of M;
		if HP < 0 or M is defeated, now HP is 0;
		let HPR be (DY * HP) / the maxhealth of M;
		if HPR < 0, now HPR is 0;
		increase Y1 by DY - HPR;
		now DY is HPR;
		draw a rectangle health-colour of M in the current focus window at (X1 + 1) by (Y1 + 1) with size (DX - 2) by (DY - 2).

[This is their main profile image, or 'bust'.]
To decide which figure-name is the monster-image of (M - a monster):
	decide on figure of Missing NPC.

To decide which figure-name is the sex-profile of (M - a monster):
	if diaper quest is 0 and M is penetrating a body part:
		if M is penetrating asshole, decide on anal-sex-monster-image of M;
		if M is penetrating vagina, decide on vaginal-sex-monster-image of M;
		if M is penetrating breasts, decide on titfuck-monster-image of M;
		if M is penetrating face, decide on oral-sex-monster-image of M;
	decide on figure of Missing NPC. [Defaults back to the non-sex stuff.]

To decide which figure-name is the anal-sex-monster-image of (M - a monster):
	decide on figure of Missing NPC.
To decide which figure-name is the vaginal-sex-monster-image of (M - a monster):
	if the latex-transformation of the player > 6 and M is male and M is human and M is not dark skinned, decide on figure of latex curse 6;
	decide on figure of Missing NPC.
To decide which figure-name is the oral-sex-monster-image of (M - a monster):
	decide on figure of Missing NPC.
To decide which figure-name is the titfuck-monster-image of (M - a monster):
	decide on figure of Missing NPC.

To decide which figure-name is the pacified-image of (M - a monster):
	decide on figure of Missing NPC.

To decide which figure-name is the non-sex-profile of (M - a monster):
	if M is interested:
		if M is friendly:
			decide on the friendly-monster-image of M;
		otherwise:
			if the health of M <= the maxhealth of M / 2, decide on the damaged-monster-image of M;
			decide on the unfriendly-monster-image of M;
	decide on the monster-image of M. [Final default!]

[If there's no custom defined image for when the NPC is paying attention and friendly, we just use the normal bust.]
To decide which figure-name is the friendly-monster-image of (M - a monster):
	decide on the monster-image of M.

[If there's no custom defined image for when the NPC is paying attention and unfriendly, we just use the normal bust.]
To decide which figure-name is the unfriendly-monster-image of (M - a monster):
	decide on the monster-image of M.

[If there's no custom defined image for when the NPC is paying attention and unfriendly and hurt, we just use the normal unfriendly image.]
To decide which figure-name is the damaged-monster-image of (M - a monster):
	decide on the unfriendly-monster-image of M.

[This is the image we'll display for the monster. It's usually the 'bust' unless something specific is going on.]
To decide which figure-name is the examine-image of (M - a monster):
	unless the temporary-image of M is figure of no-image-yet, decide on the temporary-image of M;
	if M is defeated:
		let F be the pacified-image of M;
		unless F is figure of Missing NPC, decide on F;
	let F be the sex-profile of M;
	unless F is figure of Missing NPC, decide on F;
	decide on the non-sex-profile of M.

After examining a monster:
	unless the noun is unintelligent or the noun is robot:
		say "[FavourDesc of the noun]";
	if the noun is undefeated:
		if the health of the noun < the maxhealth of the noun / 4:
			say "[BigNameDesc of noun] looks near defeat.";
		otherwise if the health of the noun < the maxhealth of the noun / 2:
			say "[BigNameDesc of noun] seems to be quite injured.";
	if the noun is wrapped, say "[BigNameDesc of noun] is wearing a condom around [his of the noun] [manly-penis].".

To say FavourDesc of (M - a monster):
	let O be a random body part penetrated by M;
	if O is body part:
		say "You have a very intimate relationship with [NameDesc of M]. [big he of M][']s [if diaper quest is 0]fucking[otherwise]got access to[end if] your [variable O]!";
	otherwise if M is unfriendly:
		if M is unconcerned, say "For whatever reason, it doesn't seem like [he of M][']s interested in fighting you right now.";
		otherwise say "You have a bad relationship with [NameDesc of M]. It seems like [he of M] wants to fight. [if M is interested][big he of M] is looking right at you![otherwise][big he of M] doesn't seem interested in you right now.[end if]";
	otherwise if M is undefeated and M is not caged:
		if M is guardian:
			say "You have a very solid relationship with [NameDesc of M], and would expect [him of M] to help you out in a fight and share resources with you.";
		otherwise if M is ally:
			say "You have a very good relationship with [NameDesc of M], and you think there's a chance [he of M] might even help you out in a fight.";
		otherwise if M is buddy:
			say "You have a good relationship with [NameDesc of M], and feel confident that [he of M] would be more than happy to share advice with you.";
		otherwise if M is acquaintance:
			say "You have a neutral relationship with [NameDesc of M]; [he of M] is unlikely to help you out too much but also isn't acting aggressive.";
		otherwise if M is annoyed:
			say "You do not have a very good relationship with [NameDesc of M]; in fact [he of M] probably considers you somewhat of an annoyance.".


Monster Descriptions ends here.
