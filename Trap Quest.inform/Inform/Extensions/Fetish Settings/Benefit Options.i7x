Benefit Options by Fetish Settings begins here.

Table of Benefit Options
title	subtable	description	toggle
"[roman type]Confirm Choices (shortcut: press Q)"	--	--	quit rule
"Reset Choices"	--	--	reset rule
"CHOOSE A BACKGROUND (5 points) [if background-selected is 0]not [otherwise][bold type][end if]chosen[roman type]"	Table of Background Options	--	--
"CHOOSE SECRETS (6/5/4[if artificial enhancements fetish is 1]/3[end if] points) - [if total-chosen-secrets > 0][bold type][end if][total-chosen-secrets] chosen[roman type]"	Table of Secret Options	--	--
"CHOOSE BODY SHAPE LIMITATIONS"	Table of Body Limit Options	--	--
"Extra Strength: [bonus strength] ([bonus strength points] points used. [bonus strength cost].)"	--	--	bonus strength rule
"Extra Dexterity: [bonus dexterity] ([bonus dexterity points] points used. [bonus dexterity cost].)"	--	--	bonus dexterity rule
"Extra Intelligence: [bonus intelligence] ([bonus intelligence points] points used. [bonus intelligence cost].)"	--	--	bonus intelligence rule
"Mindbreak protection (player can't get broken: humiliation, bimbo and sex addiction cap slightly lowered) ([if mindbreak protection is 0]Not enabled - costs 4 points to enable[otherwise][bold type]Enabled[roman type] - 4 points used[end if])"	--	--	mindbreak protection toggle rule
"Bondage protection ([if bondage protection is 0]Not enabled - costs 2 points to partially enable[otherwise if bondage protection is 1][bold type]Partially Enabled[roman type] (skeleton keys are less rare and even work on clothing NPCs lock on you with specific keys) - 2 points used[otherwise if bondage protection is 2][bold type]Mostly Enabled[roman type]  (NPCs don't randomly put bondage items on you after defeating you but before punishing you) - 4 points used[otherwise][bold type]Fully Enabled[roman type] (bondage, including chastity, only happens from rare scenes when absolutely required) - 6 points used[end if])"	--	--	bondage protection toggle rule
"Spontaneous tattoos (If this is enabled, tattoos can spontaneously appear on their own in response to what you do in the game. Otherwise this only starts happening after you get your first tattoo voluntarily) ([if spontaneous tattoos is 0]Not enabled - free to enable[otherwise][bold type]Enabled[roman type] - free to disable[end if])"	--	--	spontaneous tattoos toggle rule
"Starting headgear rule (If this is enabled, a class headgear will appear in the pink wardrobe and you can choose to start that class journey straight away. You won't get that headgear the normal way until you've worn it.) - ([if roleplay fetish is 0]Not enabled - costs 1 point to enable[otherwise][bold type]Enabled[roman type] - 1 point used[end if])"	--	--	roleplay fetish toggle rule
"Slower timers (Things like the royal training session bell and doom quest ritual are more forgiving.) - ([if slower timers is 1]Not enabled - costs 2 points to enable[otherwise][bold type]Enabled[roman type] - 2 points used[end if])"	--	--	slower timers toggle rule
"Easy Teaching (NPCs won't ask for a favour before teaching you a skill) - ([if easy teaching is 0]Not enabled - costs 2 points to enable[otherwise][bold type]Enabled[roman type] - 2 points used[end if])"	--	--	easy teaching toggle rule
"Minimum tank liquid: [if bonus liquid is 0]nearly empty[end if][if bonus liquid is 1]mostly empty[end if][if bonus liquid is 2]half full[end if][if bonus liquid is 3]over halfway full[end if][if bonus liquid is 4]mostly full[end if][if bonus liquid is 5]nearly full[end if][if bonus liquid is 6]completely full[end if] ([(bonus liquid * (1 + bonus liquid)) / 2] points used. [bonus liquid cost].)"	--	--	bonus liquid toggle rule
"No Gag Reflex - ([if super gag reflex is 0]Not enabled - costs 3 points to enable[otherwise if super gag reflex is 1][bold type]Partially enabled[roman type] (player never has problems deepthroating, never pukes the cum back up afterwards, but some rare situations can still cause puking) - 3 points used; costs 1 more point to fully enable[otherwise][bold type]Fully enabled[roman type] (player never has problems deepthroating, never pukes ever) - 4 points used[end if])"	--	--	super gag reflex toggle rule
"Fantastic Elastic (You can always insert any size sex toy) - ([if fantastic elastic is 0]Not enabled - costs 1 point to enable[otherwise if fantastic elastic is 1][bold type]Enabled[roman type] - 1 point used[end if])"	--	--	fantastic elastic toggle rule
"Remove Guest NPC (lets you get rid of the random fan-designed NPC that spawns each game): [if the player is not the donator]Beta testers only, sorry![otherwise if supportersEnabled is 0][bold type]Removed[roman type] (1 point used)[otherwise]Not removed (costs 1 point to enable)[end if]"	--	--	supporters enabled toggle rule
"Smart Start (start with uncursed business clothing) - ([if the player is not the donator]Supporters only for now[otherwise if smart start is 0]Not enabled - costs 1 point to enable[otherwise if smart start is 1][bold type]Enabled[roman type] - 1 point used[end if])"	--	--	smart start toggle rule
"Combat visor (lets you see some of the behind-the-scenes numbers being calculated. Can be removed but then can't be worn again): [if combatvisor is 1][bold type]Enabled[roman type] - 1 point used[otherwise]Disabled - costs 1 point to enable[end if]"	--	--	combat visor toggle rule
[ALL NON-DONATOR BENEFIT OPTIONS MUST GO ABOVE THE COMBAT VISOR LINE, WHICH IS REMOVED WHEN THE PLAYER IS THE DONATOR]

To compute random benefits:
	let N be 0;
	follow the reset rule;
	while N < 500 and points count > 0:
		increase N by 1;
		choose a random row in the Table of Benefit Options;
		if diaper quest is 1, choose a random row in the Table of Diaper Quest Benefit Options;
		if there is toggle entry and toggle entry is not quit rule and toggle entry is not reset rule and toggle entry is not spontaneous tattoos toggle rule and toggle entry is not combat visor toggle rule and toggle entry is not supporters enabled toggle rule and toggle entry is not super gag reflex toggle rule and (a random number between 1 and 3 is 1 or toggle entry is not bonus liquid toggle rule):
			follow toggle entry;
		otherwise if there is subtable entry:
			if subtable entry is Table of Secret Options or subtable entry is Table of Background Options:
				choose a random row in subtable entry;
				if there is toggle entry and toggle entry is not quit rule, follow toggle entry.

The reset rules is a rulebook.

This is the reset rule:
	follow the empty secret rules;
	follow the reset rules.

[!<SayMaxBreastsSizeDesc>+

This is the max size that breasts can go to.

+!]
To say MaxBreastSizeDesc:
	say BreastCup max breast size.

[!<DecideWhichNumberIsMaxBellySizeModifier>+

Used for calculating what the max belly size is. This is how much less than normal max it is.

+!]
To decide which number is max belly size modifier:
	let M be max belly size points;
	if max belly size points > 0, increase M by 2;
	if max belly size points > 1, increase M by 2;
	if max belly size points > 2, increase M by 2;
	decide on M.

[!<DecideWhichNumberIsMaxBellySize>+

Normal max is 10. We reduce by 3 per rank of max belly size points.

+!]
To decide which number is max belly size:
	decide on 10 - max belly size modifier.

To say MaxBellySizeDesc:
	if max belly size is 1, say "completely flat";
	if max belly size is 4, say "curvy";
	if max belly size is 7, say "full";
	if max belly size is 10, say "bulging".

To say bonus strength cost:
	if bonus strength < 2:
		say "Next increase costs 2 points";
	otherwise if bonus strength < 4:
		say "Next increase costs 3 points";
	otherwise if bonus strength < 6:
		say "Next increase costs 4 points";
	otherwise if bonus strength < 8:
		say "Next increase costs 5 points";
	otherwise:
		say "You are at maximum bonus strength".

This is the bonus strength rule:
	if bonus strength < 2:
		if points count > 1:
			[increase choice in row 21 of the Table of Player Options by 2;]
			increase choice in row 24 of the Table of Player Options by 1;
	otherwise if bonus strength < 4:
		if points count > 2:
			[increase choice in row 21 of the Table of Player Options by 3;]
			increase choice in row 24 of the Table of Player Options by 1;
	otherwise if bonus strength < 6:
		if points count > 3:
			[increase choice in row 21 of the Table of Player Options by 4;]
			increase choice in row 24 of the Table of Player Options by 1;
	otherwise if bonus strength < 8:
		if points count > 4:
			[increase choice in row 21 of the Table of Player Options by 5;]
			increase choice in row 24 of the Table of Player Options by 1.

This is the bonus strength reset rule:
	[now choice in row 21 of the Table of Player Options is 0;]
	now choice in row 24 of the Table of Player Options is 0.
The bonus strength reset rule is listed in the reset rules.

To say bonus dexterity cost:
	if bonus dexterity < 2:
		say "Next increase costs 2 points";
	otherwise if bonus dexterity < 4:
		say "Next increase costs 3 points";
	otherwise if bonus dexterity < 6:
		say "Next increase costs 4 points";
	otherwise if bonus dexterity < 8:
		say "Next increase costs 5 points";
	otherwise:
		say "You are at maximum bonus dexterity".

This is the bonus dexterity rule:
	if bonus dexterity < 2:
		if points count > 1:
			[increase choice in row 22 of the Table of Player Options by 2;]
			increase choice in row 25 of the Table of Player Options by 1;
	otherwise if bonus dexterity < 4:
		if points count > 2:
			[increase choice in row 22 of the Table of Player Options by 3;]
			increase choice in row 25 of the Table of Player Options by 1;
	otherwise if bonus dexterity < 6:
		if points count > 3:
			[increase choice in row 22 of the Table of Player Options by 4;]
			increase choice in row 25 of the Table of Player Options by 1;
	otherwise if bonus dexterity < 8:
		if points count > 4:
			[increase choice in row 22 of the Table of Player Options by 5;]
			increase choice in row 25 of the Table of Player Options by 1.

This is the bonus dexterity reset rule:
	[now choice in row 22 of the Table of Player Options is 0;]
	now choice in row 25 of the Table of Player Options is 0.
The bonus dexterity reset rule is listed in the reset rules.

To say bonus intelligence cost:
	if bonus intelligence < 2:
		say "Next increase costs 2 points";
	otherwise if bonus intelligence < 4:
		say "Next increase costs 3 points";
	otherwise if bonus intelligence < 6:
		say "Next increase costs 4 points";
	otherwise if bonus intelligence < 8:
		say "Next increase costs 5 points";
	otherwise:
		say "You are at maximum bonus intelligence".

This is the bonus intelligence rule:
	if bonus intelligence < 2:
		if points count > 1:
			[increase choice in row 23 of the Table of Player Options by 2;]
			increase choice in row 26 of the Table of Player Options by 1;
	otherwise if bonus intelligence < 4:
		if points count > 2:
			[increase choice in row 23 of the Table of Player Options by 3;]
			increase choice in row 26 of the Table of Player Options by 1;
	otherwise if bonus intelligence < 6:
		if points count > 3:
			[increase choice in row 23 of the Table of Player Options by 4;]
			increase choice in row 26 of the Table of Player Options by 1;
	otherwise if bonus intelligence < 8:
		if points count > 4:
			[increase choice in row 23 of the Table of Player Options by 5;]
			increase choice in row 26 of the Table of Player Options by 1.

This is the bonus intelligence reset rule:
	[now choice in row 23 of the Table of Player Options is 0;]
	now choice in row 26 of the Table of Player Options is 0.
The bonus intelligence reset rule is listed in the reset rules.

This is the mindbreak protection toggle rule:
	if mindbreak protection is 0 and points count >= 4, now choice in row 35 of the Table of Player Options is 1;
	otherwise now choice in row 35 of the Table of Player Options is 0.

This is the mindbreak protection reset rule:
	now choice in row 35 of the Table of Player Options is 0.
The mindbreak protection reset rule is listed in the reset rules.

This is the spontaneous tattoos toggle rule:
	if spontaneous tattoos is 0, now choice in row 36 of the Table of Player Options is 1;
	otherwise now choice in row 36 of the Table of Player Options is 0.

[This doesn't cost points and the player will probably want to choose the same thing each time.]
[This is the spontaneous tattoos reset rule:
	now choice in row 36 of the Table of Player Options is 0.
The spontaneous tattoos reset rule is listed in the reset rules.]

This is the roleplay fetish toggle rule:
	if choice in row 47 of the Table of Player Options is 0 and points count >= 1:
		now choice in row 47 of the Table of Player Options is 1;
	otherwise if choice in row 47 of the Table of Player Options is 1:
		now choice in row 47 of the Table of Player Options is 0.

This is the roleplay fetish reset rule:
	now choice in row 47 of the Table of Player Options is 0.
The roleplay fetish reset rule is listed in the reset rules.

This is the bondage protection toggle rule:
	if bondage protection < 3 and points count >= 2, increase choice in row 64 of the Table of Player Options by 1;
	otherwise now choice in row 64 of the Table of Player Options is 0.

This is the bondage protection reset rule:
	now choice in row 64 of the Table of Player Options is 0.
The bondage protection reset rule is listed in the reset rules.

To say bonus liquid cost:
	if bonus liquid < max bonus liquid, say "Next increase costs [bonus liquid + 1] points";
	if bonus liquid is max bonus liquid, say "You are at maximum bonus liquid".
This is the bonus liquid toggle rule:
	if bonus liquid < max bonus liquid and points count > bonus liquid, increase choice in row 63 of the Table of Player Options by 1.
This is the bonus liquid reset rule:
	now choice in row 63 of the Table of Player Options is 0.
The bonus liquid reset rule is listed in the reset rules.

This is the combat visor toggle rule:
	if combatvisor is 0 and points count >= 1, now choice in row 76 of the Table of Player Options is 1;
	otherwise now choice in row 76 of the Table of Player Options is 0.

This is the supporters enabled toggle rule:
	if supportersEnabled is 1 and points count >= 1, now choice in row 77 of the Table of Player Options is 0;
	otherwise now choice in row 77 of the Table of Player Options is 1.

This is the super gag reflex toggle rule:
	if super gag reflex is 0 and points count >= 3:
		now choice in row 82 of the Table of Player Options is 1;
	otherwise if super gag reflex is 1 and points count >= 1:
		now choice in row 82 of the Table of Player Options is 2;
	otherwise:
		now choice in row 82 of the Table of Player Options is 0.

This is the super gag reflex reset rule:
	now choice in row 82 of the Table of Player Options is 0.
The super gag reflex reset rule is listed in the reset rules.

To decide which number is slower timers:
	if choice in row 87 of the Table of Player Options <= 0, decide on 1;
	decide on 2.

This is the slower timers toggle rule:
	if choice in row 87 of the Table of Player Options <= 1 and points count >= 2:
		increase choice in row 87 of the Table of Player Options by 1;
	otherwise:
		now choice in row 87 of the Table of Player Options is -1.

This is the slower timers reset rule:
	now choice in row 87 of the Table of Player Options is 1.
The slower timers reset rule is listed in the reset rules.

This is the fantastic elastic toggle rule:
	if choice in row 89 of the Table of Player Options < 1 and points count >= 1:
		increase choice in row 89 of the Table of Player Options by 1;
	otherwise:
		now choice in row 89 of the Table of Player Options is 0.

This is the fantastic elastic reset rule:
	now choice in row 89 of the Table of Player Options is 0.
The fantastic elastic reset rule is listed in the reset rules.


To decide which number is easy teaching:
	if choice in row 92 of the Table of Player Options <= 0, decide on 0;
	decide on 1.
This is the easy teaching toggle rule:
	if choice in row 92 of the Table of Player Options < 1 and points count >= 2, increase choice in row 92 of the Table of Player Options by 1;
	otherwise now choice in row 92 of the Table of Player Options is 0.
This is the easy teaching reset rule:
	now choice in row 92 of the Table of Player Options is 0.
The easy teaching reset rule is listed in the reset rules.

This is the smart start toggle rule:
	if choice in row 93 of the Table of Player Options < 1 and points count >= 1:
		increase choice in row 93 of the Table of Player Options by 1;
	otherwise:
		now choice in row 93 of the Table of Player Options is 0.

This is the smart start reset rule:
	now choice in row 93 of the Table of Player Options is 0.
The smart start reset rule is listed in the reset rules.



Book - New Benefit Selection Window

[
BENEFIT MENU ID CHEAT SHEET
1) Background
2) Secrets
3) Strength
4) Dexterity
5) Intelligence
6) Mindbreak Protection
7) Bondage protection
8) Spontaneous tattoos
9) Starting headgear
10) Slower timers
11) Easy Teaching
12) Minimum tank liquid
13) No Gag Reflex
14) Fantastic Elastic
15) Remove Guest NPC
16) Smart Start
17) Combat Visor
]

Figure of 0_off_buttons is the file "Special/Menus/BenefitSelection/0_off_buttons.png".
Figure of 0_on_buttons is the file "Special/Menus/BenefitSelection/0_on_buttons.png".
Figure of 1_off_buttons is the file "Special/Menus/BenefitSelection/1_off_buttons.png".
Figure of 1_on_buttons is the file "Special/Menus/BenefitSelection/1_on_buttons.png".
Figure of 2_off_buttons is the file "Special/Menus/BenefitSelection/2_off_buttons.png".
Figure of 2_on_buttons is the file "Special/Menus/BenefitSelection/2_on_buttons.png".
Figure of 3_off_buttons is the file "Special/Menus/BenefitSelection/3_off_buttons.png".
Figure of 3_on_buttons is the file "Special/Menus/BenefitSelection/3_on_buttons.png".
Figure of 4_off_buttons is the file "Special/Menus/BenefitSelection/4_off_buttons.png".
Figure of 4_on_buttons is the file "Special/Menus/BenefitSelection/4_on_buttons.png".
Figure of 5_off_buttons is the file "Special/Menus/BenefitSelection/5_off_buttons.png".
Figure of 5_on_buttons is the file "Special/Menus/BenefitSelection/5_on_buttons.png".
Figure of 6_off_buttons is the file "Special/Menus/BenefitSelection/6_off_buttons.png".
Figure of 6_on_buttons is the file "Special/Menus/BenefitSelection/6_on_buttons.png".
Figure of 7_off_buttons is the file "Special/Menus/BenefitSelection/7_off_buttons.png".
Figure of 7_on_buttons is the file "Special/Menus/BenefitSelection/7_on_buttons.png".
Figure of 8_off_buttons is the file "Special/Menus/BenefitSelection/8_off_buttons.png".
Figure of 8_on_buttons is the file "Special/Menus/BenefitSelection/8_on_buttons.png".
Figure of bg_dnd_nerd_off_buttons is the file "Special/Menus/BenefitSelection/bg_dnd_nerd_off_buttons.png".
Figure of bg_exhibitionist_off_buttons is the file "Special/Menus/BenefitSelection/bg_exhibitionist_off_buttons.png".
Figure of bg_none_off_buttons is the file "Special/Menus/BenefitSelection/bg_none_off_buttons.png".
Figure of bg_nurse_off_buttons is the file "Special/Menus/BenefitSelection/bg_nurse_off_buttons.png".
Figure of bg_pure_off_buttons is the file "Special/Menus/BenefitSelection/bg_pure_off_buttons.png".
Figure of bg_rich_bitch_off_buttons is the file "Special/Menus/BenefitSelection/bg_rich_bitch_off_buttons.png".
Figure of bg_sporty_off_buttons is the file "Special/Menus/BenefitSelection/bg_sporty_off_buttons.png".
Figure of bg_waitress_off_buttons is the file "Special/Menus/BenefitSelection/bg_waitress_off_buttons.png".
Figure of bg_dnd_nerd_on_buttons is the file "Special/Menus/BenefitSelection/bg_dnd_nerd_on_buttons.png".
Figure of bg_exhibitionist_on_buttons is the file "Special/Menus/BenefitSelection/bg_exhibitionist_on_buttons.png".
Figure of bg_none_on_buttons is the file "Special/Menus/BenefitSelection/bg_none_on_buttons.png".
Figure of bg_nurse_on_buttons is the file "Special/Menus/BenefitSelection/bg_nurse_on_buttons.png".
Figure of bg_pure_on_buttons is the file "Special/Menus/BenefitSelection/bg_pure_on_buttons.png".
Figure of bg_rich_bitch_on_buttons is the file "Special/Menus/BenefitSelection/bg_rich_bitch_on_buttons.png".
Figure of bg_sporty_on_buttons is the file "Special/Menus/BenefitSelection/bg_sporty_on_buttons.png".
Figure of bg_waitress_on_buttons is the file "Special/Menus/BenefitSelection/bg_waitress_on_buttons.png".
Figure of bp_full_protection_off_buttons is the file "Special/Menus/BenefitSelection/bp_full_protection_off_buttons.png".
Figure of bp_full_protection_on_buttons is the file "Special/Menus/BenefitSelection/bp_full_protection_on_buttons.png".
Figure of bp_not_enabled_off_buttons is the file "Special/Menus/BenefitSelection/bp_not_enabled_off_buttons.png".
Figure of bp_not_enabled_on_buttons is the file "Special/Menus/BenefitSelection/bp_not_enabled_on_buttons.png".
Figure of bp_punishment_protection_off_buttons is the file "Special/Menus/BenefitSelection/bp_punishment_protection_off_buttons.png".
Figure of bp_punishment_protection_on_buttons is the file "Special/Menus/BenefitSelection/bp_punishment_protection_on_buttons.png".
Figure of bp_skeleton_key_off_buttons is the file "Special/Menus/BenefitSelection/bp_skeleton_key_off_buttons.png".
Figure of bp_skeleton_key_on_buttons is the file "Special/Menus/BenefitSelection/bp_skeleton_key_on_buttons.png".

Figure of tl_full_icon is the file "Special/Menus/BenefitSelection/tl_full_icon.png".
Figure of tl_full_off_icon is the file "Special/Menus/BenefitSelection/tl_full_off_icon.png".
Figure of tl_half_full_icon is the file "Special/Menus/BenefitSelection/tl_half_full_icon.png".
Figure of tl_half_full_off_icon is the file "Special/Menus/BenefitSelection/tl_half_full_off_icon.png".
Figure of tl_mostly_empty_icon is the file "Special/Menus/BenefitSelection/tl_mostly_empty_icon.png".
Figure of tl_mostly_empty_off_icon is the file "Special/Menus/BenefitSelection/tl_mostly_empty_off_icon.png".
Figure of tl_mostly_full_icon is the file "Special/Menus/BenefitSelection/tl_mostly_full_icon.png".
Figure of tl_mostly_full_off_icon is the file "Special/Menus/BenefitSelection/tl_mostly_full_off_icon.png".
Figure of tl_nearly_empty_icon is the file "Special/Menus/BenefitSelection/tl_nearly_empty_icon.png".
Figure of tl_nearly_empty_off_icon is the file "Special/Menus/BenefitSelection/tl_nearly_empty_off_icon.png".
Figure of tl_nearly_full_icon is the file "Special/Menus/BenefitSelection/tl_nearly_full_icon.png".
Figure of tl_nearly_full_off_icon is the file "Special/Menus/BenefitSelection/tl_nearly_full_off_icon.png".
Figure of tl_over_half_full_icon is the file "Special/Menus/BenefitSelection/tl_over_half_full_icon.png".
Figure of tl_over_half_full_off_icon is the file "Special/Menus/BenefitSelection/tl_over_half_full_off_icon.png".

Figure of gr_enabled_button is the file "Special/Menus/BenefitSelection/gr_enabled_button.png".
Figure of gr_enabled_off_button is the file "Special/Menus/BenefitSelection/gr_enabled_off_button.png".
Figure of gr_not_enabled_button is the file "Special/Menus/BenefitSelection/gr_not_enabled_button.png".
Figure of gr_not_enabled_off_button is the file "Special/Menus/BenefitSelection/gr_not_enabled_off_button.png".
Figure of gr_partially_enabled_button is the file "Special/Menus/BenefitSelection/gr_partially_enabled_button.png".
Figure of gr_partially_enabled_off_button is the file "Special/Menus/BenefitSelection/gr_partially_enabled_off_button.png".
Figure of npc_not_removed_button is the file "Special/Menus/BenefitSelection/npc_not_removed_button.png".
Figure of npc_not_removed_off_button is the file "Special/Menus/BenefitSelection/npc_not_removed_off_button.png".
Figure of npc_removed_button is the file "Special/Menus/BenefitSelection/npc_removed_button.png".
Figure of npc_removed_off_button is the file "Special/Menus/BenefitSelection/npc_removed_off_button.png".

Figure of background_dnd_nerd is the file "Special/Menus/BenefitSelection/background_dnd_nerd.png".
Figure of background_dnd_nerd_bg is the file "Special/Menus/BenefitSelection/background_dnd_nerd_bg.jpg".
Figure of background_exhibitionist is the file "Special/Menus/BenefitSelection/background_exhibitionist.png".
Figure of background_exhibitionist_bg is the file "Special/Menus/BenefitSelection/background_exhibitionist_bg.jpg".
Figure of background_none is the file "Special/Menus/BenefitSelection/background_none.png".
Figure of background_none_bg is the file "Special/Menus/BenefitSelection/background_none_bg.jpg".
Figure of background_nurse is the file "Special/Menus/BenefitSelection/background_nurse.png".
Figure of background_nurse_bg is the file "Special/Menus/BenefitSelection/background_nurse_bg.jpg".
Figure of background_pure is the file "Special/Menus/BenefitSelection/background_pure.png".
Figure of background_pure_bg is the file "Special/Menus/BenefitSelection/background_pure_bg.jpg".
Figure of background_pure_male_bg is the file "Special/Menus/BenefitSelection/background_pure_bg.jpg".
Figure of background_rich_bitch is the file "Special/Menus/BenefitSelection/background_rich_bitch.png".
Figure of background_rich_bitch_bg is the file "Special/Menus/BenefitSelection/background_rich_bitch_bg.jpg".
Figure of background_sporty is the file "Special/Menus/BenefitSelection/background_sporty.png".
Figure of background_sporty_bg is the file "Special/Menus/BenefitSelection/background_sporty_bg.jpg".
Figure of background_waiter_bg is the file "Special/Menus/BenefitSelection/background_waiter_bg.jpg".
Figure of background_waitress is the file "Special/Menus/BenefitSelection/background_waitress.png".
Figure of background_waitress_bg is the file "Special/Menus/BenefitSelection/background_waitress_bg.jpg".

Figure of bondage_protection_bg1 is the file "Special/Menus/BenefitSelection/bondage_protection_bg1.jpg".
Figure of bondage_protection_bg2 is the file "Special/Menus/BenefitSelection/bondage_protection_bg2.jpg".
Figure of bondage_protection_bg3 is the file "Special/Menus/BenefitSelection/bondage_protection_bg3.jpg".
Figure of bondage_protection_enhanced is the file "Special/Menus/BenefitSelection/bondage_protection_enhanced.png".
Figure of bondage_protection_full is the file "Special/Menus/BenefitSelection/bondage_protection_full.png".
Figure of bondage_protection_none is the file "Special/Menus/BenefitSelection/bondage_protection_none.png".
Figure of bondage_protection_punishment is the file "Special/Menus/BenefitSelection/bondage_protection_punishment.png".
Figure of combat_visor_bg is the file "Special/Menus/BenefitSelection/combat_visor_bg.jpg".
Figure of combat_visor_enabled is the file "Special/Menus/BenefitSelection/combat_visor_enabled.jpg".
Figure of combat_visor_not_enabled is the file "Special/Menus/BenefitSelection/combat_visor_not_enabled.jpg".
Figure of combat_visor_ss_bg is the file "Special/Menus/BenefitSelection/combat_visor_ss_bg.jpg".
Figure of easy_teaching_always is the file "Special/Menus/BenefitSelection/easy_teaching_always.png".
Figure of easy_teaching_bg is the file "Special/Menus/BenefitSelection/easy_teaching_bg.jpg".
Figure of easy_teaching_never is the file "Special/Menus/BenefitSelection/easy_teaching_never.png".
Figure of easy_teaching_not_now is the file "Special/Menus/BenefitSelection/easy_teaching_not_now.png".
Figure of easy_teaching_this_time is the file "Special/Menus/BenefitSelection/easy_teaching_this_time.png".
Figure of extra_dexterity_0 is the file "Special/Menus/BenefitSelection/extra_dexterity_0.png".
Figure of extra_dexterity_1 is the file "Special/Menus/BenefitSelection/extra_dexterity_1.png".
Figure of extra_dexterity_2 is the file "Special/Menus/BenefitSelection/extra_dexterity_2.png".
Figure of extra_dexterity_3 is the file "Special/Menus/BenefitSelection/extra_dexterity_3.png".
Figure of extra_dexterity_4 is the file "Special/Menus/BenefitSelection/extra_dexterity_4.png".
Figure of extra_dexterity_5 is the file "Special/Menus/BenefitSelection/extra_dexterity_5.png".
Figure of extra_dexterity_6 is the file "Special/Menus/BenefitSelection/extra_dexterity_6.png".
Figure of extra_dexterity_7 is the file "Special/Menus/BenefitSelection/extra_dexterity_7.png".
Figure of extra_dexterity_8 is the file "Special/Menus/BenefitSelection/extra_dexterity_8.png".
Figure of extra_dexterity_bg1 is the file "Special/Menus/BenefitSelection/extra_dexterity_bg1.jpg".
Figure of extra_dexterity_bg2 is the file "Special/Menus/BenefitSelection/extra_dexterity_bg2.jpg".
Figure of extra_dexterity_bg3 is the file "Special/Menus/BenefitSelection/extra_dexterity_bg3.jpg".
Figure of extra_dexterity_bg4 is the file "Special/Menus/BenefitSelection/extra_dexterity_bg4.jpg".
Figure of extra_dexterity_bg5 is the file "Special/Menus/BenefitSelection/extra_dexterity_bg5.jpg".
Figure of extra_dexterity_bg6 is the file "Special/Menus/BenefitSelection/extra_dexterity_bg6.jpg".
Figure of extra_dexterity_bg7 is the file "Special/Menus/BenefitSelection/extra_dexterity_bg7.jpg".
Figure of extra_dexterity_bg8 is the file "Special/Menus/BenefitSelection/extra_dexterity_bg8.jpg".
Figure of extra_intelligence_0 is the file "Special/Menus/BenefitSelection/extra_intelligence_0.png".
Figure of extra_intelligence_1 is the file "Special/Menus/BenefitSelection/extra_intelligence_1.png".
Figure of extra_intelligence_2 is the file "Special/Menus/BenefitSelection/extra_intelligence_2.png".
Figure of extra_intelligence_3 is the file "Special/Menus/BenefitSelection/extra_intelligence_3.png".
Figure of extra_intelligence_4 is the file "Special/Menus/BenefitSelection/extra_intelligence_4.png".
Figure of extra_intelligence_5 is the file "Special/Menus/BenefitSelection/extra_intelligence_5.png".
Figure of extra_intelligence_6 is the file "Special/Menus/BenefitSelection/extra_intelligence_6.png".
Figure of extra_intelligence_7 is the file "Special/Menus/BenefitSelection/extra_intelligence_7.png".
Figure of extra_intelligence_8 is the file "Special/Menus/BenefitSelection/extra_intelligence_8.png".
Figure of extra_intelligence_bg1 is the file "Special/Menus/BenefitSelection/extra_intelligence_bg1.jpg".
Figure of extra_intelligence_bg2 is the file "Special/Menus/BenefitSelection/extra_intelligence_bg2.jpg".
Figure of extra_intelligence_bg3 is the file "Special/Menus/BenefitSelection/extra_intelligence_bg3.jpg".
Figure of extra_intelligence_bg4 is the file "Special/Menus/BenefitSelection/extra_intelligence_bg4.jpg".
Figure of extra_intelligence_bg5 is the file "Special/Menus/BenefitSelection/extra_intelligence_bg5.jpg".
Figure of extra_intelligence_bg6 is the file "Special/Menus/BenefitSelection/extra_intelligence_bg6.jpg".
Figure of extra_intelligence_bg7 is the file "Special/Menus/BenefitSelection/extra_intelligence_bg7.jpg".
Figure of extra_intelligence_bg8 is the file "Special/Menus/BenefitSelection/extra_intelligence_bg8.jpg".
Figure of extra_strength_0 is the file "Special/Menus/BenefitSelection/extra_strength_0.png".
Figure of extra_strength_1 is the file "Special/Menus/BenefitSelection/extra_strength_1.png".
Figure of extra_strength_2 is the file "Special/Menus/BenefitSelection/extra_strength_2.png".
Figure of extra_strength_3 is the file "Special/Menus/BenefitSelection/extra_strength_3.png".
Figure of extra_strength_4 is the file "Special/Menus/BenefitSelection/extra_strength_4.png".
Figure of extra_strength_5 is the file "Special/Menus/BenefitSelection/extra_strength_5.png".
Figure of extra_strength_6 is the file "Special/Menus/BenefitSelection/extra_strength_6.png".
Figure of extra_strength_7 is the file "Special/Menus/BenefitSelection/extra_strength_7.png".
Figure of extra_strength_8 is the file "Special/Menus/BenefitSelection/extra_strength_8.png".
Figure of extra_strength_bg1 is the file "Special/Menus/BenefitSelection/extra_strength_bg1.jpg".
Figure of extra_strength_bg2 is the file "Special/Menus/BenefitSelection/extra_strength_bg2.jpg".
Figure of extra_strength_bg3 is the file "Special/Menus/BenefitSelection/extra_strength_bg3.jpg".
Figure of extra_strength_bg4 is the file "Special/Menus/BenefitSelection/extra_strength_bg4.jpg".
Figure of extra_strength_bg5 is the file "Special/Menus/BenefitSelection/extra_strength_bg5.jpg".
Figure of extra_strength_bg6 is the file "Special/Menus/BenefitSelection/extra_strength_bg6.jpg".
Figure of extra_strength_bg7 is the file "Special/Menus/BenefitSelection/extra_strength_bg7.jpg".
Figure of extra_strength_bg8 is the file "Special/Menus/BenefitSelection/extra_strength_bg8.jpg".
Figure of fantastic_elastic_bg is the file "Special/Menus/BenefitSelection/fantastic_elastic_bg.jpg".
Figure of fantastic_elastic_enabled is the file "Special/Menus/BenefitSelection/fantastic_elastic_enabled.png".
Figure of fantastic_elastic_not_enabled is the file "Special/Menus/BenefitSelection/fantastic_elastic_not_enabled.png".
Figure of mindbreak_protection_always is the file "Special/Menus/BenefitSelection/mindbreak_protection_always.png".
Figure of mindbreak_protection_bg is the file "Special/Menus/BenefitSelection/mindbreak_protection_bg.jpg".
Figure of mindbreak_protection_never is the file "Special/Menus/BenefitSelection/mindbreak_protection_never.png".
Figure of mindbreak_protection_not_now is the file "Special/Menus/BenefitSelection/mindbreak_protection_not_now.png".
Figure of mindbreak_protection_this_time is the file "Special/Menus/BenefitSelection/mindbreak_protection_this_time.png".
Figure of minimum_tank_liquid_bg1 is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_bg1.jpg".
Figure of minimum_tank_liquid_bg2 is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_bg2.jpg".
Figure of minimum_tank_liquid_bg3 is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_bg3.jpg".
Figure of minimum_tank_liquid_bg4 is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_bg4.jpg".
Figure of minimum_tank_liquid_bg5 is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_bg5.jpg".
Figure of minimum_tank_liquid_bg6 is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_bg6.jpg".
Figure of minimum_tank_liquid_full is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_full.png".
Figure of minimum_tank_liquid_half_full is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_half_full.png".
Figure of minimum_tank_liquid_mostly_empty is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_mostly_empty.png".
Figure of minimum_tank_liquid_mostly_full is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_mostly_full.png".
Figure of minimum_tank_liquid_nearly_empty is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_nearly_empty.png".
Figure of minimum_tank_liquid_nearly_full is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_nearly_full.png".
Figure of minimum_tank_liquid_over_half_full is the file "Special/Menus/BenefitSelection/minimum_tank_liquid_over_half_full.png".
Figure of no_gag_reflex_bg1 is the file "Special/Menus/BenefitSelection/no_gag_reflex_bg1.jpg".
Figure of no_gag_reflex_bg2 is the file "Special/Menus/BenefitSelection/no_gag_reflex_bg2.jpg".
Figure of no_gag_reflex_enabled is the file "Special/Menus/BenefitSelection/no_gag_reflex_enabled.png".
Figure of no_gag_reflex_not_enabled is the file "Special/Menus/BenefitSelection/no_gag_reflex_not_enabled.png".
Figure of no_gag_reflex_partially_enabled is the file "Special/Menus/BenefitSelection/no_gag_reflex_partially_enabled.png".
Figure of remove_guest_npc_bg is the file "Special/Menus/BenefitSelection/remove_guest_npc_bg.jpg".
Figure of remove_guest_npc_bg_ss is the file "Special/Menus/BenefitSelection/remove_guest_npc_bg_ss.jpg".
Figure of remove_guest_npc_not_removed is the file "Special/Menus/BenefitSelection/remove_guest_npc_not_removed.png".
Figure of remove_guest_npc_removed is the file "Special/Menus/BenefitSelection/remove_guest_npc_removed.png".

Figure of secret_humiliation_bg is the file "Special/Menus/BenefitSelection/secret_humiliation_bg.jpg".
Figure of secret_piercings_bg is the file "Special/Menus/BenefitSelection/secret_piercings_bg.jpg".
Figure of secret_silicone_bg is the file "Special/Menus/BenefitSelection/secret_silicone_bg.jpg".
Figure of secret_tattoos_bg is the file "Special/Menus/BenefitSelection/secret_tattoos_bg.jpg".
Figure of secret_humiliation_off is the file "Special/Menus/BenefitSelection/secret_humiliation_off.png".
Figure of secret_piercings_off is the file "Special/Menus/BenefitSelection/secret_piercings_off.png".
Figure of secret_silicone_off is the file "Special/Menus/BenefitSelection/secret_silicone_off.png".
Figure of secret_tattoos_off is the file "Special/Menus/BenefitSelection/secret_tattoos_off.png".
Figure of secret_humiliation_on is the file "Special/Menus/BenefitSelection/secret_humiliation_on.png".
Figure of secret_piercings_on is the file "Special/Menus/BenefitSelection/secret_piercings_on.png".
Figure of secret_silicone_on is the file "Special/Menus/BenefitSelection/secret_silicone_on.png".
Figure of secret_tattoos_on is the file "Special/Menus/BenefitSelection/secret_tattoos_on.png".
Figure of secrets_0 is the file "Special/Menus/BenefitSelection/secrets_0.jpg".
Figure of secrets_1 is the file "Special/Menus/BenefitSelection/secrets_1.jpg".
Figure of secrets_2 is the file "Special/Menus/BenefitSelection/secrets_2.jpg".
Figure of secrets_3a is the file "Special/Menus/BenefitSelection/secrets_3a.jpg".
Figure of secrets_3b is the file "Special/Menus/BenefitSelection/secrets_3b.jpg".
Figure of secrets_4 is the file "Special/Menus/BenefitSelection/secrets_4.jpg".

Figure of slower_timers_always is the file "Special/Menus/BenefitSelection/slower_timers_always.png".
Figure of slower_timers_bg is the file "Special/Menus/BenefitSelection/slower_timers_bg.jpg".
Figure of slower_timers_never is the file "Special/Menus/BenefitSelection/slower_timers_never.png".
Figure of slower_timers_not_now is the file "Special/Menus/BenefitSelection/slower_timers_not_now.png".
Figure of slower_timers_this_time is the file "Special/Menus/BenefitSelection/slower_timers_this_time.png".
Figure of smart_start_always is the file "Special/Menus/BenefitSelection/smart_start_always.jpg".
Figure of smart_start_bg is the file "Special/Menus/BenefitSelection/smart_start_bg.jpg".
Figure of smart_start_never is the file "Special/Menus/BenefitSelection/smart_start_never.jpg".
Figure of smart_start_not_now is the file "Special/Menus/BenefitSelection/smart_start_not_now.jpg".
Figure of smart_start_this_time is the file "Special/Menus/BenefitSelection/smart_start_this_time.jpg".
Figure of spontaneous_tattoos_always is the file "Special/Menus/BenefitSelection/spontaneous_tattoos_always.png".
Figure of spontaneous_tattoos_bg is the file "Special/Menus/BenefitSelection/spontaneous_tattoos_bg.jpg".
Figure of spontaneous_tattoos_never is the file "Special/Menus/BenefitSelection/spontaneous_tattoos_never.png".
Figure of spontaneous_tattoos_not_now is the file "Special/Menus/BenefitSelection/spontaneous_tattoos_not_now.png".
Figure of spontaneous_tattoos_this_time is the file "Special/Menus/BenefitSelection/spontaneous_tattoos_this_time.png".
Figure of starting_headgear_always is the file "Special/Menus/BenefitSelection/starting_headgear_always.png".
Figure of starting_headgear_bg is the file "Special/Menus/BenefitSelection/starting_headgear_bg.jpg".
Figure of starting_headgear_never is the file "Special/Menus/BenefitSelection/starting_headgear_never.png".
Figure of starting_headgear_not_now is the file "Special/Menus/BenefitSelection/starting_headgear_not_now.png".
Figure of starting_headgear_this_time is the file "Special/Menus/BenefitSelection/starting_headgear_this_time.png".


Figure of Benefit Selection Backdrop is the file "Special/Menus/BenefitSelection/backdrop1.jpg".
Figure of Benefit Selection Backdrop Disabled is the file "Special/Menus/BenefitSelection/backdrop2.jpg".

Figure of Backdrop Overlay 6 is the file "Special/Menus/BenefitSelection/bg_overlay_6.png".
Figure of Backdrop Overlay 11 is the file "Special/Menus/BenefitSelection/bg_overlay_11.png".
Figure of Backdrop Overlay 15 is the file "Special/Menus/BenefitSelection/bg_overlay_15.png".
Figure of Backdrop Overlay 18 is the file "Special/Menus/BenefitSelection/bg_overlay_18.png".

To decide which number is benefitSelectionTotalOptions:
	decide on 17.

To decide which number is benefitSelectionTotalButtons:
	decide on benefitSelectionTotalOptions + 3.

latestSecretSelected is initially 1.

To compute new benefit selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 4;
	now current menu selection is 1;
	[wait 50 ms before continuing;]
	while fetishMenuInProgress is 4:
		update the status line;
		refresh the graphics-window;
		let __x be the chosen letter;
		if __x is 81 or __x is 113:
			now fetishMenuInProgress is 0;
			now waitingForChar is false;
			now current menu selection is 1;
		otherwise if __x is -2: [up]
			if current menu selection is 1, now previous menu selection is 1;
			if current menu selection is greater than 1, decrease current menu selection by 1;
			otherwise now current menu selection is benefitSelectionTotalButtons;
		otherwise if __x is -3: [down]
			if current menu selection is benefitSelectionTotalOptions, now previous menu selection is benefitSelectionTotalOptions;
			if current menu selection is less than benefitSelectionTotalButtons, increase current menu selection by 1;
			otherwise now current menu selection is 1;
		otherwise if __x is -5:
			compute benefit toggle up;
		otherwise if __x is -4:
			compute benefit toggle down;
		otherwise if __x is -6 or __x is 13 or __x is 32 or candidate replacement command is "quit":
			compute benefit toggle select;
	close the graphics-window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To decide which number is benefitMenuRow of (X - a number):
	let N be 0;
	if X is 1:
		now N is 52;
	otherwise if X is 2:
		now N is 56;
	otherwise if X is 3:
		now N is 24;
	otherwise if X is 4:
		now N is 25;
	otherwise if X is 5:
		now N is 26;
	otherwise if X is 6:
		now N is 35;
	otherwise if X is 7:
		now N is 64;
	otherwise if X is 8:
		now N is 36;
	otherwise if X is 9:
		now N is 47;
	otherwise if X is 10:
		now N is 87;
	otherwise if X is 11:
		now N is 92;
	otherwise if X is 12:
		now N is 63;
	otherwise if X is 13:
		now N is 82;
	otherwise if X is 14:
		now N is 89;
	otherwise if X is 15:
		now N is 77;
	otherwise if X is 16:
		now N is 93;
	otherwise if X is 17:
		now N is 76;
	decide on N.

To compute benefit toggle (D - a direction):
	if current menu selection is 2:
		if D is down:
			if artificial enhancements fetish is 1 and choice in row 59 of the Table of Player Options is 0:
				now choice in row 59 of the Table of Player Options is 1;
				now latestSecretSelected is 4;
			otherwise:
				now choice in row 59 of the Table of Player Options is 0;
				if choice in row 58 of the Table of Player Options is 0:
					now choice in row 58 of the Table of Player Options is 1;
					now latestSecretSelected is 3;
				otherwise:
					now choice in row 58 of the Table of Player Options is 0;
					if choice in row 57 of the Table of Player Options is 0:
						now choice in row 57 of the Table of Player Options is 1;
						now latestSecretSelected is 2;
					otherwise:
						now choice in row 57 of the Table of Player Options is 0;
						if choice in row 56 of the Table of Player Options is 0, now choice in row 56 of the Table of Player Options is 1;
						otherwise now choice in row 56 of the Table of Player Options is 0;
						now latestSecretSelected is 1;
		otherwise:
			if artificial enhancements fetish is 1 and choice in row 59 of the Table of Player Options is 1:
				now choice in row 59 of the Table of Player Options is 0;
				now latestSecretSelected is 4;
			otherwise:
				now choice in row 59 of the Table of Player Options is 1;
				if choice in row 58 of the Table of Player Options is 1:
					now choice in row 58 of the Table of Player Options is 0;
					now latestSecretSelected is 3;
				otherwise:
					now choice in row 58 of the Table of Player Options is 1;
					if choice in row 57 of the Table of Player Options is 1:
						now choice in row 57 of the Table of Player Options is 0;
						now latestSecretSelected is 2;
					otherwise:
						now choice in row 57 of the Table of Player Options is 1;
						if choice in row 56 of the Table of Player Options is 1, now choice in row 56 of the Table of Player Options is 0;
						otherwise now choice in row 56 of the Table of Player Options is 1;
						now latestSecretSelected is 1;
	otherwise:
		let N be benefitMenuRow of current menu selection;
		if N > 0:
			let T be the Table of Player Options;
			let minN be -1;
			let maxN be 2;
			if current menu selection <= 5 or current menu selection is 7 or (current menu selection >= 12 and current menu selection <= 15) or current menu selection is 17:
				let minN be 0;
				let maxN be 8;
				if current menu selection is 1, now maxN is 7;
				if current menu selection is 7, now maxN is 3;
				if current menu selection is 12, now maxN is 6;
				if current menu selection is 13, now maxN is 2;
				if current menu selection is 14 or current menu selection is 15 or current menu selection is 17, now maxN is 1;
			if D is down:
				if choice in row N of T < maxN, increase choice in row N of T by 1;
				otherwise now choice in row N of T is minN;
			otherwise:
				if choice in row N of T > minN, decrease choice in row N of T by 1;
				otherwise now choice in row N of T is maxN;
			now status_int is choice in row N of T.

To compute benefit toggle select:
	if current menu selection is benefitSelectionTotalOptions + 3:
		if points count >= 0:
			now fetishMenuInProgress is 0;
			now current menu selection is 1;
			now waitingForChar is false;
	otherwise if current menu selection is benefitSelectionTotalOptions + 2:
		now returnToBodyLimits is true;
		now fetishMenuInProgress is 0;
		now current menu selection is 1;
		now waitingForChar is false;
	[otherwise if current menu selection is benefitSelectionTotalOptions + 2:
		follow the nightmare mode rules;]
	otherwise if current menu selection is benefitSelectionTotalOptions + 1:
		compute random benefits;
	otherwise:
		compute benefit toggle down.

To decide which figure-name is benefit menu banner:
	let CMS be current menu selection;
	if CMS > benefitSelectionTotalOptions, now CMS is previous menu selection;
	if CMS is 1:
		if background-nurse is 1:
			decide on figure of background_nurse_bg;
		otherwise if background-sporty is 1:
			decide on figure of background_sporty_bg;
		otherwise if background-waitress is 1:
			if the player is sexed male, decide on figure of background_waiter_bg;
			decide on figure of background_waitress_bg;
		otherwise if background-pure is 1:
			if the player is sexed male, decide on figure of background_pure_male_bg;
			otherwise decide on figure of background_pure_bg;
		otherwise if background-magic is 1:
			decide on figure of background_dnd_nerd_bg;
		otherwise if background-rich is 1:
			decide on figure of background_rich_bitch_bg;
		otherwise if background-exhibitionist is 1:
			decide on figure of background_exhibitionist_bg;
		otherwise:
			decide on figure of background_none_bg;
	otherwise if CMS is 2:
		if latestSecretSelected is 2:
			decide on figure of secret_piercings_bg;
		otherwise if latestSecretSelected is 3:
			decide on figure of secret_humiliation_bg;
		otherwise if latestSecretSelected is 4:
			decide on figure of secret_silicone_bg;
		otherwise:
			decide on figure of secret_tattoos_bg;
	otherwise if CMS is 3:
		if bonus strength <= 1:
			decide on Figure of extra_strength_bg1;
		otherwise if bonus strength is 2:
			decide on Figure of extra_strength_bg2;
		otherwise if bonus strength is 3:
			decide on Figure of extra_strength_bg3;
		otherwise if bonus strength is 4:
			decide on Figure of extra_strength_bg4;
		otherwise if bonus strength is 5:
			decide on Figure of extra_strength_bg5;
		otherwise if bonus strength is 6:
			decide on Figure of extra_strength_bg6;
		otherwise if bonus strength is 7:
			decide on Figure of extra_strength_bg7;
		otherwise:
			decide on Figure of extra_strength_bg8;
	otherwise if CMS is 4:
		if bonus dexterity <= 1:
			decide on Figure of extra_dexterity_bg1;
		otherwise if bonus dexterity is 2:
			decide on Figure of extra_dexterity_bg2;
		otherwise if bonus dexterity is 3:
			decide on Figure of extra_dexterity_bg3;
		otherwise if bonus dexterity is 4:
			decide on Figure of extra_dexterity_bg4;
		otherwise if bonus dexterity is 5:
			decide on Figure of extra_dexterity_bg5;
		otherwise if bonus dexterity is 6:
			decide on Figure of extra_dexterity_bg6;
		otherwise if bonus dexterity is 7:
			decide on Figure of extra_dexterity_bg7;
		otherwise:
			decide on Figure of extra_dexterity_bg8;
	otherwise if CMS is 5:
		if bonus intelligence <= 1:
			decide on Figure of extra_intelligence_bg1;
		otherwise if bonus intelligence is 2:
			decide on Figure of extra_intelligence_bg2;
		otherwise if bonus intelligence is 3:
			decide on Figure of extra_intelligence_bg3;
		otherwise if bonus intelligence is 4:
			decide on Figure of extra_intelligence_bg4;
		otherwise if bonus intelligence is 5:
			decide on Figure of extra_intelligence_bg5;
		otherwise if bonus intelligence is 6:
			decide on Figure of extra_intelligence_bg6;
		otherwise if bonus intelligence is 7:
			decide on Figure of extra_intelligence_bg7;
		otherwise:
			decide on Figure of extra_intelligence_bg8;
	otherwise if CMS is 6:
		decide on Figure of mindbreak_protection_bg;
	otherwise if CMS is 7:
		if bondage protection >= 3:
			decide on figure of bondage_protection_bg3;
		otherwise if bondage protection is 2:
			decide on figure of bondage_protection_bg2;
		otherwise:
			decide on figure of bondage_protection_bg1;
	otherwise if CMS is 8:
		decide on figure of spontaneous_tattoos_bg;
	otherwise if CMS is 9:
		decide on figure of starting_headgear_bg;
	otherwise if CMS is 10:
		decide on figure of slower_timers_bg;
	otherwise if CMS is 11:
		decide on figure of easy_teaching_bg;
	otherwise if CMS is 12:
		if bonus liquid <= 1:
			decide on figure of minimum_tank_liquid_bg1;
		otherwise if bonus liquid is 2:
			decide on figure of minimum_tank_liquid_bg2;
		otherwise if bonus liquid is 3:
			decide on figure of minimum_tank_liquid_bg3;
		otherwise if bonus liquid is 4:
			decide on figure of minimum_tank_liquid_bg4;
		otherwise if bonus liquid is 5:
			decide on figure of minimum_tank_liquid_bg5;
		otherwise:
			decide on figure of minimum_tank_liquid_bg6;
	otherwise if CMS is 13:
		if super gag reflex >= 2:
			decide on figure of no_gag_reflex_bg2;
		otherwise:
			decide on figure of no_gag_reflex_bg1;
	otherwise if CMS is 14:
		decide on figure of fantastic_elastic_bg;
	otherwise if CMS is 15:
		if the player is the donator, decide on figure of remove_guest_npc_bg;
		otherwise decide on figure of remove_guest_npc_bg_ss;
	otherwise if CMS is 16:
		decide on figure of smart_start_bg;
	otherwise:
		if the player is the donator, decide on figure of combat_visor_bg;
		otherwise decide on figure of combat_visor_ss_bg.

To decide which figure-name is benefit menu banner overlay:
	let CMS be current menu selection;
	if CMS > benefitSelectionTotalOptions, now CMS is previous menu selection;
	if CMS is 2:
		if total-chosen-secrets >= 4:
			decide on figure of Backdrop Overlay 18;
		otherwise if total-chosen-secrets is 3:
			decide on figure of Backdrop Overlay 15;
		otherwise if total-chosen-secrets is 2:
			decide on figure of Backdrop Overlay 11;
		otherwise:
			decide on figure of Backdrop Overlay 6;
	decide on figure of small image.

To render full new benefit selection menu:
	redraw status line;
	let CMS be current menu selection;
	if CMS > benefitSelectionTotalOptions, now CMS is previous menu selection;
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W2 be (W * 2) / 3;
	let BDF be Figure of Benefit Selection Backdrop;
	if points count < 0, now BDF is Figure of Benefit Selection Backdrop Disabled;
	display the image BDF in the graphics-window at 0 by 0 with dimensions W by H;
	[check page number and render appropriate image - 60 / 1080; height 917 / 1080]
	let bannerYR be 60.0 * H / 1080.0;
	let bannerY be bannerYR to the nearest whole number;
	let bannerHR be 917.0 * H / 1080.0;
	let bannerH be bannerHR to the nearest whole number;
	display the image benefit menu banner in the graphics-window at 0 by bannerY with dimensions W by bannerH;
	if benefit menu banner overlay is not figure of small image, display the image benefit menu banner overlay in the graphics-window at 0 by bannerY with dimensions W by bannerH;
	[render all benefit strips, and add links]
	[top left corner 65 x 614; top left of next one 177 x 614]
	let optionYR be 614.0 * H / 1080.0;
	let optionY be optionYR to the nearest whole number;
	let optionHR be 330.0 * H / 1080.0;
	let optionH be optionHR to the nearest whole number;
	[let optionXR be 65.0 * W / 1920.0;
	let optionX be optionXR to the nearest whole number;]
	let optionNMax be 1920 / benefitSelectionTotalOptions;
	let optionWR be 110.0 * W / 1920.0;
	let optionW be optionWR to the nearest whole number;
	let optionNR be 112.0 * W  / 1920.0;
	let optionN be optionNR to the nearest whole number;
	if optionN > optionNMax:
		now optionW is optionNMax - 2;
		now optionN is optionNMax;
	[let optionX be (W - (optionN * benefitSelectionTotalOptions)) / 2;]
	let optionX be (W2 - (optionN * benefitSelectionTotalOptions)) / 2;
	[if optionX < 0:]
	now optionX is 2;
	if (((W2 / benefitSelectionTotalOptions) - 2) * 3) < optionH: [assuming this makes the boxes smaller than max height allowed]
		now optionN is W2 / benefitSelectionTotalOptions;
		now optionW is optionN - 2;
		increase optionY by (optionH - (optionW * 3)) / 2; [centre new height in the available space]
		now optionH is optionW * 3;
	otherwise: [if it would make the boxes bigger, we need to go with the original height]
		now optionW is optionH / 3;
		now optionN is optionW + 2;
	let F be figure of alcohol_never;
	let CC be 0;
	let FBTN be 1;
	let BTNS be 4;
	repeat with X running from 1 to benefitSelectionTotalOptions:
		let C be choice in row (benefitMenuRow of X) of the Table of Player Options;
		if X is 1:
			if X is CMS, now BTNS is 8;
			if background-nurse is 1:
				now F is figure of background_nurse;
			otherwise if background-sporty is 1:
				now F is figure of background_sporty;
			otherwise if background-waitress is 1:
				now F is figure of background_waitress;
			otherwise if background-pure is 1:
				now F is figure of background_pure;
			otherwise if background-magic is 1:
				now F is figure of background_dnd_nerd;
			otherwise if background-rich is 1:
				now F is figure of background_rich_bitch;
			otherwise if background-exhibitionist is 1:
				now F is figure of background_exhibitionist;
			otherwise:
				now F is figure of background_none;
		otherwise if X is 2:
			if X is CMS:
				now BTNS is 3;
				if artificial enhancements fetish is 1, now BTNS is 4;
			let TCS be total-chosen-secrets;
			if TCS is 0:
				now F is figure of secrets_0;
			otherwise if TCS is 1:
				now F is figure of secrets_1;
			otherwise if TCS is 2:
				now F is figure of secrets_2;
			otherwise if TCS is 3:
				if artificial enhancements fetish is 1, now F is figure of secrets_3b;
				otherwise now F is figure of secrets_3a;
			otherwise if TCS is 4:
				now F is figure of secrets_4;
		otherwise if X is 3:
			if X is CMS, now BTNS is 9;
			if bonus strength <= 0:
				now F is Figure of extra_strength_0;
			otherwise if bonus strength is 1:
				now F is Figure of extra_strength_1;
			otherwise if bonus strength is 2:
				now F is Figure of extra_strength_2;
			otherwise if bonus strength is 3:
				now F is Figure of extra_strength_3;
			otherwise if bonus strength is 4:
				now F is Figure of extra_strength_4;
			otherwise if bonus strength is 5:
				now F is Figure of extra_strength_5;
			otherwise if bonus strength is 6:
				now F is Figure of extra_strength_6;
			otherwise if bonus strength is 7:
				now F is Figure of extra_strength_7;
			otherwise:
				now F is Figure of extra_strength_8;
		otherwise if X is 4:
			if X is CMS, now BTNS is 9;
			if bonus dexterity <= 0:
				now F is Figure of extra_dexterity_0;
			otherwise if bonus dexterity is 1:
				now F is Figure of extra_dexterity_1;
			otherwise if bonus dexterity is 2:
				now F is Figure of extra_dexterity_2;
			otherwise if bonus dexterity is 3:
				now F is Figure of extra_dexterity_3;
			otherwise if bonus dexterity is 4:
				now F is Figure of extra_dexterity_4;
			otherwise if bonus dexterity is 5:
				now F is Figure of extra_dexterity_5;
			otherwise if bonus dexterity is 6:
				now F is Figure of extra_dexterity_6;
			otherwise if bonus dexterity is 7:
				now F is Figure of extra_dexterity_7;
			otherwise:
				now F is Figure of extra_dexterity_8;
		otherwise if X is 5:
			if X is CMS, now BTNS is 9;
			if bonus intelligence <= 0:
				now F is Figure of extra_intelligence_0;
			otherwise if bonus intelligence is 1:
				now F is Figure of extra_intelligence_1;
			otherwise if bonus intelligence is 2:
				now F is Figure of extra_intelligence_2;
			otherwise if bonus intelligence is 3:
				now F is Figure of extra_intelligence_3;
			otherwise if bonus intelligence is 4:
				now F is Figure of extra_intelligence_4;
			otherwise if bonus intelligence is 5:
				now F is Figure of extra_intelligence_5;
			otherwise if bonus intelligence is 6:
				now F is Figure of extra_intelligence_6;
			otherwise if bonus intelligence is 7:
				now F is Figure of extra_intelligence_7;
			otherwise:
				now F is Figure of extra_intelligence_8;
		otherwise if X is 6:
			if C is -1:
				now F is figure of mindbreak_protection_never;
			otherwise if C is 0:
				now F is figure of mindbreak_protection_not_now;
			otherwise if C is 1:
				now F is figure of mindbreak_protection_this_time;
			otherwise:
				now F is figure of mindbreak_protection_always;
		otherwise if X is 7:
			if bondage protection >= 3:
				now F is figure of bondage_protection_full;
			otherwise if bondage protection is 2:
				now F is figure of bondage_protection_punishment;
			otherwise if bondage protection is 1:
				now F is figure of bondage_protection_enhanced;
			otherwise:
				now F is figure of bondage_protection_none;
		otherwise if X is 8:
			if C is -1:
				now F is figure of spontaneous_tattoos_never;
			otherwise if C is 0:
				now F is figure of spontaneous_tattoos_not_now;
			otherwise if C is 1:
				now F is figure of spontaneous_tattoos_this_time;
			otherwise:
				now F is figure of spontaneous_tattoos_always;
		otherwise if X is 9:
			if C is -1:
				now F is figure of starting_headgear_never;
			otherwise if C is 0:
				now F is figure of starting_headgear_not_now;
			otherwise if C is 1:
				now F is figure of starting_headgear_this_time;
			otherwise:
				now F is figure of starting_headgear_always;
		otherwise if X is 10:
			if C is -1:
				now F is figure of slower_timers_never;
			otherwise if C is 0:
				now F is figure of slower_timers_not_now;
			otherwise if C is 1:
				now F is figure of slower_timers_this_time;
			otherwise:
				now F is figure of slower_timers_always;
		otherwise if X is 11:
			if C is -1:
				now F is figure of easy_teaching_never;
			otherwise if C is 0:
				now F is figure of easy_teaching_not_now;
			otherwise if C is 1:
				now F is figure of easy_teaching_this_time;
			otherwise:
				now F is figure of easy_teaching_always;
		otherwise if X is 12:
			if X is CMS, now BTNS is 7;
			if bonus liquid <= 0:
				now F is figure of minimum_tank_liquid_nearly_empty;
			otherwise if bonus liquid is 1:
				now F is figure of minimum_tank_liquid_mostly_empty;
			otherwise if bonus liquid is 2:
				now F is figure of minimum_tank_liquid_half_full;
			otherwise if bonus liquid is 3:
				now F is figure of minimum_tank_liquid_over_half_full;
			otherwise if bonus liquid is 4:
				now F is figure of minimum_tank_liquid_mostly_full;
			otherwise if bonus liquid is 5:
				now F is figure of minimum_tank_liquid_nearly_full;
			otherwise:
				now F is figure of minimum_tank_liquid_full;
		otherwise if X is 13:
			if X is CMS, now BTNS is 3;
			if super gag reflex <= 0:
				now F is figure of no_gag_reflex_not_enabled;
			otherwise if super gag reflex is 1:
				now F is figure of no_gag_reflex_partially_enabled;
			otherwise:
				now F is figure of no_gag_reflex_enabled;
		otherwise if X is 14:
			if X is CMS, now BTNS is 2;
			if C <= 0:
				now F is figure of fantastic_elastic_not_enabled;
			otherwise:
				now F is figure of fantastic_elastic_enabled;
		otherwise if X is 15:
			if X is CMS, now BTNS is 2;
			if C <= 0:
				now F is figure of remove_guest_npc_removed;
			otherwise:
				now F is figure of remove_guest_npc_not_removed;
		otherwise if X is 16:
			if C is -1:
				now F is figure of smart_start_never;
			otherwise if C is 0:
				now F is figure of smart_start_not_now;
			otherwise if C is 1:
				now F is figure of smart_start_this_time;
			otherwise:
				now F is figure of smart_start_always;
		otherwise if X is 17:
			if X is CMS, now BTNS is 2;
			if C <= 0:
				now F is figure of combat_visor_not_enabled;
			otherwise:
				now F is figure of combat_visor_enabled;
		display the image F in the graphics-window at optionX by optionY with dimensions optionW by optionH;
		let TXT be the substituted form of "fet[if X < 10]0[end if][X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from optionX by optionY to (optionX + optionW) by (optionY + optionH) as TXT, ignoring redundant links;
		if X is current menu selection:
			now CC is C;
			[say "[X] is [current menu selection]. C was hopefully set to choice in row [benefitMenuRow of X] - [choice in row (benefitMenuRow of X) of the Table of Player Options]; Setting CC to [C].";]
			let lineY be optionY - ((14 * H) / 1080);
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at optionX by lineY with size optionW by lineH;
		increase optionX by optionN;
	repeat with BX running from (benefitSelectionTotalOptions + 1) to (benefitSelectionTotalOptions + 3):
		let boxYR be 1000.0 * H / 1080.0;
		let boxY be boxYR to the nearest whole number;
		let boxHR be 55.0 * H / 1080.0;
		let boxY2 be (boxYR + boxHR) to the nearest whole number;
		let boxXR be 679.0 * W / 1920.0;
		let boxX be boxXR to the nearest whole number;
		let boxWR be 146.0 * W / 1920.0;
		let TXT be "fet41";
		if BX is benefitSelectionTotalOptions + 2:
			now boxXR is 846.0 * W / 1920.0;
			now boxX is boxXR to the nearest whole number;
			now boxWR is 230.0 * W / 1920.0;
			now TXT is "fet42";
		otherwise if BX is benefitSelectionTotalOptions + 3:
			now boxXR is 1097.0 * W / 1920.0;
			now boxX is boxXR to the nearest whole number;
			now boxWR is 146.0 * W / 1920.0;
			now TXT is "fet43";
		let boxX2 be (boxXR + boxWR) to the nearest whole number;
		if current menu selection is BX: [draw box over selected bottom button]
			draw a box 16029161 in the graphics-window from boxX by boxY to boxX2 by boxY2 with 2 pixel line-weight, inset;
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from boxX by boxY to boxX2 by boxY2 as TXT, ignoring redundant links;
	[top left corner 115 x 385; top left of next one 216 x 385]
	let buttonYR be 385.0 * H / 1080.0;
	let buttonY be buttonYR to the nearest whole number;
	let buttonHR be 128.0 * H / 1080.0;
	let buttonH be buttonHR to the nearest whole number;
	let buttonXR be 115.0 * W / 1920.0;
	let buttonX be buttonXR to the nearest whole number;
	let buttonWR be 81.0 * W / 1920.0;
	let buttonW be buttonWR to the nearest whole number;
	let buttonNR be 101.0 * W  / 1920.0;
	let buttonN be buttonNR to the nearest whole number;
	[render current menu's buttons, and add links]
	unless (current menu selection is 15 or current menu selection is 17) and the player is not the donator:
		unless current menu selection > benefitSelectionTotalOptions:
			repeat with X running from FBTN to BTNS:
				let Z be X;
				if current menu selection is 1:
					decrease Z by 1;
					if Z is 0:
						if CC <= 0, now F is figure of bg_none_on_buttons;
						otherwise now F is figure of bg_none_off_buttons;
					otherwise if Z is 1:
						if CC is Z, now F is figure of bg_nurse_on_buttons;
						otherwise now F is figure of bg_nurse_off_buttons;
					otherwise if Z is 2:
						if CC is Z, now F is figure of bg_sporty_on_buttons;
						otherwise now F is figure of bg_sporty_off_buttons;
					otherwise if Z is 3:
						if CC is Z, now F is figure of bg_waitress_on_buttons;
						otherwise now F is figure of bg_waitress_off_buttons;
					otherwise if Z is 4:
						if CC is Z, now F is figure of bg_pure_on_buttons;
						otherwise now F is figure of bg_pure_off_buttons;
					otherwise if Z is 5:
						if CC is Z, now F is figure of bg_dnd_nerd_on_buttons;
						otherwise now F is figure of bg_dnd_nerd_off_buttons;
					otherwise if Z is 6:
						if CC is Z, now F is figure of bg_rich_bitch_on_buttons;
						otherwise now F is figure of bg_rich_bitch_off_buttons;
					otherwise:
						if CC is Z, now F is figure of bg_exhibitionist_on_buttons;
						otherwise now F is figure of bg_exhibitionist_off_buttons;
				otherwise if current menu selection is 2:
					if Z is 1:
						if tattoo-fetish is 1, now F is figure of secret_tattoos_on;
						otherwise now F is figure of secret_tattoos_off;
					otherwise if Z is 2:
						if piercing-fetish is 1, now F is figure of secret_piercings_on;
						otherwise now F is figure of secret_piercings_off;
					otherwise if Z is 3:
						if humiliation-fetish is 1, now F is figure of secret_humiliation_on;
						otherwise now F is figure of secret_humiliation_off;
					otherwise if Z is 4:
						if artificial-fetish is 1, now F is figure of secret_silicone_on;
						otherwise now F is figure of secret_silicone_off;
				otherwise if current menu selection is 3 or current menu selection is 4 or current menu selection is 5:
					decrease Z by 1;
					if Z is 0:
						if CC <= 0, now F is figure of 0_on_buttons;
						otherwise now F is figure of 0_off_buttons;
					otherwise if Z is 1:
						if CC is Z, now F is figure of 1_on_buttons;
						otherwise now F is figure of 1_off_buttons;
					otherwise if Z is 2:
						if CC is Z, now F is figure of 2_on_buttons;
						otherwise now F is figure of 2_off_buttons;
					otherwise if Z is 3:
						if CC is Z, now F is figure of 3_on_buttons;
						otherwise now F is figure of 3_off_buttons;
					otherwise if Z is 4:
						if CC is Z, now F is figure of 4_on_buttons;
						otherwise now F is figure of 4_off_buttons;
					otherwise if Z is 5:
						if CC is Z, now F is figure of 5_on_buttons;
						otherwise now F is figure of 5_off_buttons;
					otherwise if Z is 6:
						if CC is Z, now F is figure of 6_on_buttons;
						otherwise now F is figure of 6_off_buttons;
					otherwise if Z is 7:
						if CC is Z, now F is figure of 7_on_buttons;
						otherwise now F is figure of 7_off_buttons;
					otherwise:
						if CC is Z, now F is figure of 8_on_buttons;
						otherwise now F is figure of 8_off_buttons;
				otherwise if current menu selection is 7:
					decrease Z by 1;
					if Z is 0:
						if CC <= 0, now F is figure of bp_not_enabled_on_buttons;
						otherwise now F is figure of bp_not_enabled_off_buttons;
					otherwise if Z is 1:
						if CC is Z, now F is figure of bp_skeleton_key_on_buttons;
						otherwise now F is figure of bp_skeleton_key_off_buttons;
					otherwise if Z is 2:
						if CC is Z, now F is figure of bp_punishment_protection_on_buttons;
						otherwise now F is figure of bp_punishment_protection_off_buttons;
					otherwise:
						if CC is Z, now F is figure of bp_full_protection_on_buttons;
						otherwise now F is figure of bp_full_protection_off_buttons;
				otherwise if current menu selection is 12:
					decrease Z by 1;
					if Z is 0:
						if CC <= 0, now F is figure of tl_nearly_empty_icon;
						otherwise now F is figure of tl_nearly_empty_off_icon;
					otherwise if Z is 1:
						if CC is Z, now F is figure of tl_mostly_empty_icon;
						otherwise now F is figure of tl_mostly_empty_off_icon;
					otherwise if Z is 2:
						if CC is Z, now F is figure of tl_half_full_icon;
						otherwise now F is figure of tl_half_full_off_icon;
					otherwise if Z is 3:
						if CC is Z, now F is figure of tl_over_half_full_icon;
						otherwise now F is figure of tl_over_half_full_off_icon;
					otherwise if Z is 4:
						if CC is Z, now F is figure of tl_mostly_full_icon;
						otherwise now F is figure of tl_mostly_full_off_icon;
					otherwise if Z is 5:
						if CC is Z, now F is figure of tl_nearly_full_icon;
						otherwise now F is figure of tl_nearly_full_off_icon;
					otherwise:
						if CC is Z, now F is figure of tl_full_icon;
						otherwise now F is figure of tl_full_off_icon;
				otherwise if current menu selection is 13:
					decrease Z by 1;
					if Z is 0:
						if CC <= 0, now F is figure of gr_not_enabled_button;
						otherwise now F is figure of gr_not_enabled_off_button;
					otherwise if Z is 1:
						if CC is Z, now F is figure of gr_partially_enabled_button;
						otherwise now F is figure of gr_partially_enabled_off_button;
					otherwise:
						if CC is Z, now F is figure of gr_enabled_button;
						otherwise now F is figure of gr_enabled_off_button;
				otherwise if current menu selection is 14 or current menu selection is 17:
					decrease Z by 1;
					if Z is 0:
						if CC <= 0, now F is figure of gr_not_enabled_button;
						otherwise now F is figure of gr_not_enabled_off_button;
					otherwise:
						if CC is Z, now F is figure of gr_enabled_button;
						otherwise now F is figure of gr_enabled_off_button;
				otherwise if current menu selection is 15:
					decrease Z by 1;
					if Z is 0:
						if CC <= 0, now F is figure of npc_not_removed_off_button;
						otherwise now F is figure of npc_not_removed_button;
					otherwise:
						if CC is Z, now F is figure of npc_removed_off_button;
						otherwise now F is figure of npc_removed_button;
				otherwise:
					if Z is 1:
						if CC < 0, now F is figure of never_on_buttons;
						otherwise now F is figure of never_off_buttons;
					otherwise if Z is 2:
						if CC is 0, now F is figure of not_now_on_buttons;
						otherwise now F is figure of not_now_off_buttons;
					otherwise if Z is 3 or Z is 5 or Z is 7 or Z is 9:
						if CC is Z - 2, now F is figure of yes_this_time_on_buttons;
						otherwise now F is figure of yes_this_time_off_buttons;
					otherwise:
						if CC is Z - 2, now F is figure of always_on_buttons;
						otherwise now F is figure of always_off_buttons;
				display the image F in the graphics-window at buttonX by buttonY with dimensions buttonW by buttonH;
				let TXT be the substituted form of "fet5[Z]";
				set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from buttonX by buttonY to (buttonX + buttonW) by (buttonY + buttonH) as TXT, ignoring redundant links;
				increase buttonX by buttonN;



Benefit Options ends here.
