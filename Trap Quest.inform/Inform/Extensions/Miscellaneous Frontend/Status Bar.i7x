Status Bar by Miscellaneous Frontend begins here.

[!<RuleForConstructingTheStatusLine>+

REQUIRES COMMENTING

+!]
Rule for constructing the status line:
	if the player is virtual or the player is in an introductory room:
		if choice in row 19 of Table of Settings is 2:
			fill status bar with Table of Minimal Status;
		otherwise if debuginfo > 0:
			fill status bar with Table of Debug Low Res Status;
		otherwise:
			if choice in row 19 of Table of Settings is 1 or diaper quest is 1, fill status bar with Table of Low Res Status;
			otherwise fill status bar with Table of High Res Status;
	otherwise:
		fill status bar with Table of Empty Status;
	rule succeeds.

Part - Normal Status Bars

Table of High Res Status
left	central	right
"[TitleBimbo]"	""	""
"[MainStatsBar]"	"[HighResBarSecondRow]"	""
"[HighResBarThirdRow]"	"[HighResBarFourthRow]"	""

Table of Low Res Status
left	central	right
"[TitleBimbo]"	""	""
"[MainStatsBar]"	""	""
"[if diaper quest is 0][LowResBarBody][otherwise][LowResBarPotty][end if]"	""	""
"[LowResBarAppearance]"	""	""
"[LowResAddictions]"	""	""
"[LowResStatus]"	""	""
"[LowResCombat]"	""	""

Table of Minimal Status
left	central	right
"[TitleBimbo]	[TQDQ Appearance]"	""	""
"[MinimalBarSecondRow]"	""	""

To say TQDQ Appearance:
	say "APPEARANCE: [if diaper quest is 1 and the saved cringe appearance of the player >= the saved appearance of the player][VagueCringeHumiliation] [VagueCringeAppearance][otherwise][VagueHumiliation] [VagueAppearance][end if]".

To say MainStatsBar:
	say "STR: [VagueStrength] DEX: [VagueDex] INT: [VagueInt]".

To say HighResBarSecondRow:
	say "STATUS: [VagueInternalFeeling]   [TQDQ Appearance] [VagueDignity]   SLAP: [saved-printed-slap-damage] KNEE: [saved-printed-knee-damage][if knee-fatigue > 0](-[knee-fatigue])[end if] KICK: [saved-printed-kick-damage][if kick-fatigue > 0](-[kick-fatigue])[end if][ZapAttacks][if the magic-power of the player > 0] MAGIC: [magic-power of the player][end if][if the class of the player is succubus] SOULS: [souls of the player][end if]".

To say MinimalBarSecondRow:
	say "[MainStatsBar] SLAP: [saved-printed-slap-damage] KNEE: [saved-printed-knee-damage][if knee-fatigue > 0](-[knee-fatigue])[end if] KICK: [saved-printed-kick-damage][if kick-fatigue > 0](-[kick-fatigue])[end if][ZapAttacks][if the magic-power of the player > 0] MAGIC: [magic-power of the player][end if][if the class of the player is succubus] SOULS: [souls of the player][end if]".

To say HighResBarThirdRow:
	say "[if diaper quest is 0]TITS: [VagueBreast] BELLY: [VagueBelly][otherwise]STOMACH: [VagueStomach][end if] [if diaper quest is 1 and there is a worn diaper]DIAPER: [VagueDiaper][otherwise if diaper quest is 1 and there is a worn knickers]UNDIES: [VagueDiaper][otherwise if diaper quest is 0]HIPS: [VagueHips][end if]".

To say HighResBarFourthRow:
	say "HEALTH: [VagueExternalFeeling]   SEXUALITY: [VagueAddiction]   PERSONALITY: [VagueDelicateness]".

To say LowResBarBody:
	say "TITS: [VagueBreast] BELLY: [VagueBelly] HIPS: [VagueHips]".

To say LowResBarPotty:
	say "STOMACH: [VagueStomach] [if there is a worn diaper]DIAPER: [VagueDiaper][otherwise if there is a worn knickers]UNDIES: [VagueDiaper][end if]".

To say LowResBarAppearance:
	say "[TQDQ Appearance] [VagueDignity]".

To say LowResAddictions:
	say "[if diaper quest is 1]DIAPER ATTITUDE: [VagueDiaperAddiction][otherwise]SEXUALITY: [VagueAddiction][end if] PERSONALITY: [VagueDelicateness]".

To say LowResStatus:
	say "STATUS: [VagueInternalFeeling]   HEALTH: [VagueExternalFeeling]".

To say LowResCombat:
	say "SLAP POWER: [saved-printed-slap-damage] KNEE POWER: [saved-printed-knee-damage][if knee-fatigue > 0](-[knee-fatigue])[end if] KICK POWER: [saved-printed-kick-damage][if kick-fatigue > 0](-[kick-fatigue])[end if][ZapAttacks][if the magic-power of the player > 0] MAGIC: [magic-power of the player][end if][if the class of the player is succubus] SOULS: [souls of the player][end if]".

Part - Debug Res Status Bars

Table of Debug High Res Status
left	central	right
"[TitleBimbo]"	""	""
"STR: [saved-flat-strength]/30 DEX: [saved-flat-dexterity]/30 INT: [saved-flat-intelligence]/30"	"STATUS: [VagueInternalFeeling]   APPEARANCE: [saved appearance of the player]/20 DIGNITY: [humiliation of the player]/40000"	""
"TITS: [largeness of breasts]/[max breast size] BELLY: [largeness of belly]/[max belly size] HIPS: [thickness of hips]/[max ass size]"	"HEALTH: [VagueExternalFeeling]   SEX ADDICTION: [sex addiction of the player]/20   DELICATENESS: [delicateness of the player]/20"	""

Table of Debug Low Res Status
left	central	right
"[TitleBimbo]"	""	""
"STR:[saved-flat-strength]/30 DEX:[saved-flat-dexterity]/30 INT:[saved-flat-intelligence]/30 TITS:[largeness of breasts]/[max breast size] BELLY:[largeness of belly]/[max belly size] HIPS:[thickness of hips]/[max ass size]"	""	""
"[DebugLowResAppearance] DIGNITY:[humiliation of the player]/40000 SEX-ADDICTION:[sex addiction of the player]/20 DELICATENESS:[delicateness of the player]/20"	""	""
"FATIGUE:[fatigue of the player] DAMAGE:[body soreness of the player]/10 ASS:[soreness of asshole]/10 [if the player is female]PUSSY:[soreness of vagina]/10 [end if]HYDRATION:[stomach-liquid of the player] FOOD:[stomach-food of the player][if the magic-power of the player > 0] MAGIC:[magic-power of the player][end if][if the class of the player is succubus] SOULS: [souls of the player][end if]"	""	""
"STATUS: [VagueInternalFeeling] SLAP DICE: 2d[saved-printed-slap-damage] KNEE DICE: 2d[saved-printed-knee-damage][if knee-fatigue > 0](-[knee-fatigue])[end if] KICK DICE: 2d[saved-printed-kick-damage][if kick-fatigue > 0](-[kick-fatigue])[end if][ZapAttacks]"	""	""

To say caused by (N - a number):
	if N > 4, say "caused by";
	otherwise say "with".

To say DebugLowResAppearance:
	if diaper quest is 1 and the saved cringe appearance of the player >= the saved appearance of the player, say "BABY APPEARANCE:[saved cringe appearance of the player]/20 [if calculated-cringe-level > 2]([caused by calculated-cringe-level] [MediumAppearanceDesc of appearance-cringe-target] [bracket][calculated-cringe-level][close bracket]) [end if]";
	otherwise say "APPEARANCE:[saved appearance of the player]/20 [if calculated-appearance-outrage-level > 2]([caused by calculated-appearance-outrage-level] [MediumAppearanceDesc of appearance-outrage-target] [bracket][calculated-appearance-outrage-level][close bracket]) [end if]";

To say ZapAttacks:
	repeat with Z running through held zappable things:
		let T be the substituted form of "[ShortDesc of Z]";
		now currentZapper is Z;
		say " [T in upper case]: [zap damage of the player]";

Part - Rose

[!<SayRoseDirection>+

REQUIRES COMMENTING

+!]
To say rose (way - a direction):
	If the way is viable, say "[way abbreviation]"; otherwise say " [if the way is west] [end if]";

[!<SayDirectionAbbreviation>+

REQUIRES COMMENTING

+!]
To say (way - a direction) abbreviation:
	If way is north, say " N ";
	If way is west, say " W";
	If way is east, say "E ";
	If way is south, say " S ";
	If way is up, say "UP";
	If way is down, say "D";
	If way is inside, say " IN";
	If way is outside, say "OUT";

To say top rose:
	say "[rose up][rose north][rose outside]".

To say middle rose:
	say "[if up is viable] [end if][rose west] + [rose east]";

To say bottom rose:
	say "[if up is viable] [end if][rose down][rose south][rose inside]".

Part - Status Descriptions

[!<SayVagueStrength>+

REQUIRES COMMENTING

+!]
To say VagueStrength:
	if saved-flat-strength < 5:
		say "Weakling ";
	otherwise if saved-flat-strength < 10:
		say "Womanly   ";
	otherwise if saved-flat-strength < 15:
		say "Manly	 ";
	otherwise if saved-flat-strength < 20:
		say "Well Built";
	otherwise if saved-flat-strength < 25:
		say "Powerhouse";
	otherwise if saved-flat-strength < 30:
		say "Superhuman";
	otherwise:
		if the bimbo of the player < 14:
			say "HULK SMASH";
		otherwise:
			say "[if diaper quest is 1]BABY[otherwise]BIMBO[end if] SMASH".

[!<SayVagueDex>+

REQUIRES COMMENTING

+!]
To say VagueDex:
	if saved-flat-dexterity < 5:
		say "Stiff	 ";
	otherwise if saved-flat-dexterity < 10:
		say "Sluggish ";
	otherwise if saved-flat-dexterity < 15:
		say "Limber	";
	otherwise if saved-flat-dexterity < 20:
		say "Flexible ";
	otherwise if saved-flat-dexterity < 25:
		say "Acrobat   ";
	otherwise if saved-flat-dexterity < 30:
		say "Superhuman";
	otherwise:
		say "Samus Aran".

[!<SayVagueInt>+

REQUIRES COMMENTING

+!]
To say VagueInt:
	if the bimbo of the player is 20:
		say "Braindead ";
	otherwise if the soreness of asshole is 10 or the soreness of vagina is 10 or the player is very horny:
		say "Distracted";
	otherwise if saved-flat-intelligence < 4:
		say "Air-headed ";
	otherwise if saved-flat-intelligence < 7:
		say "Dumb[if diaper quest is 0] Broad[end if]";
	otherwise if saved-flat-intelligence < 10:
		say "Average   ";
	otherwise if saved-flat-intelligence < 13:
		say "Pensive   ";
	otherwise if saved-flat-intelligence < 16:
		say "Geeky	 ";
	otherwise if saved-flat-intelligence < 20:
		say "Brainy	";
	otherwise if saved-flat-intelligence < 24:
		say "Genius	";
	otherwise if saved-flat-intelligence < 29:
		say "Sage	  ";
	otherwise:
		say "Deep Thought".

[!<SayVagueDignity>+

REQUIRES COMMENTING

+!]
To say VagueDignity:
	let H be the humiliation of the player;
	say "DECENCY: ";
	if H < 2000:
		say "[one of]Narcissistic[or]Egotistical[sticky random]";
	otherwise if H < 5000:
		say "Arrogant";
	otherwise if H < 8000:
		say "Proud";
	otherwise if H < 11000:
		say "Composed";
	otherwise if H < 14000:
		say "Modest";
	otherwise if H < 17000:
		say "Ashamed";
	otherwise if H < 20000:
		say "Disgraced";
	otherwise if H < 22000:
		say "Naughty";
	otherwise if H < 24000:
		say "Poser";
	otherwise if H < 26000:
		say "Show-Off";
	otherwise if H < 28000:
		say "Trashy";
	otherwise if H < 30000:
		say "Exhibitionist";
	otherwise if H < 35000:
		say "Attention Whore";
	otherwise if H < 40000:
		say "Craves Degradation";
	otherwise:
		say "Fully Broken";

[!<SayVagueHumiliation>+

REQUIRES COMMENTING

+!]
To say VagueHumiliation:
	let B be the saved appearance of the player;
	if the player-class is not succubus:
		if the humiliation of the player < HUMILIATION-PROUD:
			say "[if B > 9]Mortified[otherwise if B > 5]Embarrassed[otherwise if B > 1]Uncomfortable[otherwise]Smug[end if]";
		otherwise if the humiliation of the player < HUMILIATION-MODEST:
			say "[if B > 12]Mortified[otherwise if B > 8]Embarrassed[otherwise if B > 5]Uncomfortable[otherwise if B > 2]Bold[otherwise]Dignified[end if]";
		otherwise if the humiliation of the player < HUMILIATION-DISGRACED:
			say "[if B > 8]Embarrassed[otherwise if B > 6]Uncomfortable[otherwise if B > 2]Cheeky[otherwise]Bored[end if]";
		otherwise if the humiliation of the player < HUMILIATION-SHAMELESS:
			say "[if B > 8]Pitiable[otherwise if B > 4]Cheap[otherwise]Bored[end if]";
		otherwise if the humiliation of the player < HUMILIATION-BROKEN:
			say "[if B > 13]Shameless[otherwise if B > 8]Notorious[otherwise]Bored[end if]";
		otherwise:
			say "[if the intelligence of the player > 5]Absent[otherwise if the intelligence of the player > 2]Scatterbrained[otherwise]Unthinking[end if]";
	otherwise:
		if the humiliation of the player < HUMILIATION-PROUD:
			say "In Control";
		otherwise if the humiliation of the player < HUMILIATION-MODEST:
			say "Floaty";
		otherwise if the humiliation of the player < HUMILIATION-DISGRACED:
			say "Suggestible";
		otherwise if the humiliation of the player < HUMILIATION-SHAMELESS:
			say "Fading";
		otherwise if the humiliation of the player < HUMILIATION-BROKEN:
			say "Hollow";
		otherwise:
			say "Possessed".

[!<SayVagueAppearance>+

REQUIRES COMMENTING

+!]
To say VagueAppearance:
	let B be the saved appearance of the player;
	if the class of the player is succubus:
		say "Succubus";
	otherwise if B <= 3:
		say "[if the player is presenting as male]Man[otherwise if the player is male and the largeness of breasts < 3]Trap[otherwise]Woman[end if]";
	otherwise if B < 12 and B > 4 and (there is glazed lewdly exposed body part or breasts is glazed showing cleavage body part):
		say "Cumslut";
	otherwise if the player is naked and B < 10:
		say "Nudist";
	otherwise if B < 6 and the player is presenting as male and (the number of worn nudism-disabling clothing - the number of worn nudism-disabling manly clothing > 0) and the bimbo of the player < 8:
		say "Crossdresser";
	otherwise if B is 4:
		say "Cutie";
	otherwise if B is 5:
		say "Babe";
	otherwise if B is 6:
		say "Flirt";
	otherwise if B < 9:
		say "Floozy";
	otherwise if B < 11:
		say "Slut";
	otherwise if B < 13:
		say "Bimbo";
	otherwise if B < 15:
		say "Pornstar";
	otherwise if B < 17:
		say "Whore";
	otherwise:
		say "[if there is glazed lewdly exposed body part or breasts is glazed showing cleavage body part]Cumdump[otherwise]Fuckdoll[end if]";
	let O be calculated-appearance-outrage-level;
	say "[if debuginfo > 0] [bracket][B + 0]/20[close bracket][end if] ";
	if B > 2 and O > 2:
		say "([caused by B] [MediumAppearanceDesc of appearance-outrage-target][if debuginfo > 0] [bracket][O]/20[close bracket][end if])".

[!<SayVagueCringeHumiliation>+

REQUIRES COMMENTING

+!]
To say VagueCringeHumiliation:
	let B be the saved cringe appearance of the player;
	if the player is proud:
		say "[if B > 9]Mortified[otherwise if B > 5]Embarrassed[otherwise if B > 1]Uncomfortable[otherwise]Proud[end if]";
	otherwise if the player is modest:
		say "[if B > 12]Mortified[otherwise if B > 8]Embarrassed[otherwise if B > 5]Uncomfortable[otherwise if B > 2]Bold[otherwise]Dignified[end if]";
	otherwise if the player is not disgraced:
		say "[if B > 8]Embarrassed[otherwise if B > 6]Uncomfortable[otherwise if B > 2]Cheeky[otherwise]Bored[end if]";
	otherwise if the player is not shameless:
		say "[if B > 8]Disgraced[otherwise if B > 4]Naughty[otherwise]Bored[end if]";
	otherwise if the player is not broken:
		say "[if B > 10]Shameless[otherwise]Bored[end if]";
	otherwise:
		say "Completely Content".

[!<SayVagueCringeAppearance>+

REQUIRES COMMENTING

+!]
To say VagueCringeAppearance:
	let B be the saved cringe appearance of the player;
	if B <= 3:
		say "[if the player is presenting as male]Man[otherwise if the player is male and the largeness of breasts < 3]Trap[otherwise]Woman[end if]";
	otherwise if the player is naked and B < 10:
		say "Nudist";
	otherwise if B < 6 and the player is presenting as male and (the number of worn clothing - the number of worn manly clothing > 0) and the diaper addiction of the player < 3:
		say "Crossdresser";
	otherwise if B is 4:
		say "Cutie";
	otherwise if B is 5:
		say "[if the player is presenting as male]Boy[otherwise]Girl[end if]";
	otherwise if B < 8:
		say "Baby[if the player is presenting as male]boy[otherwise]girl[end if]";
	otherwise if B < 10:
		say "Adult Baby";
	otherwise if B < 12:
		say "Crybaby";
	otherwise if B < 14:
		say "Little One";
	otherwise if B < 16:
		say "Baby";
	otherwise:
		say "Booboo";
	say "[if debuginfo > 0] [bracket][B + 0]/20[close bracket][end if] ";
	if B > 2 and appearance-cringe-level > 2:
		say "([caused by B] [if appearance-cringe-target is body part and appearance-cringe-target is not face and appearance-cringe-target is not hair]nudity[otherwise][MediumAppearanceDesc of appearance-cringe-target][end if][if appearance-cringe-target is body part and appearance-cringe-target is not face and appearance-cringe-target is not hair and cringe-target is clothing] & [MediumAppearanceDesc of cringe-target][end if][if debuginfo > 0] [bracket][appearance-cringe-level]/20[close bracket][end if])".

[!<SayVagueAddiction>+

REQUIRES COMMENTING

+!]
To say VagueAddiction:
	if the sex addiction of the player < 4:
		if the player is male, say "Straight";
		otherwise say "Prude";
	otherwise if the sex addiction of the player < 7:
		if the player is feeling dominant, say "Dominant";
		otherwise say "Reluctant";
	otherwise if the player is feeling dominant and the player is not a nympho:
		say "Dominatrix";
	otherwise if the sex addiction of the player < 10:
		say "Curious";
	otherwise if the sex addiction of the player < 13:
		say "[if the delicateness of the player < 14]Switch[otherwise]Submissive[end if]";
	otherwise if the sex addiction of the player < 16:
		say "Obsessed";
	otherwise if the sex addiction of the player < 20:
		say "Addicted";
	otherwise:
		say "One Track Mind".

[!<SayVagueDiaperAddiction>+

REQUIRES COMMENTING

+!]
To say VagueDiaperAddiction:
	if the diaper addiction of the player < 3:
		say "Disgusted";
	otherwise if the diaper addiction of the player < 6:
		if the delicateness of the player > 6, say "Reluctant";
		otherwise say "Frustrated";
	otherwise if the diaper addiction of the player < 9:
		if the delicateness of the player > 6 or the player is male, say "Curious";
		otherwise say "Irritated";
	otherwise if the diaper addiction of the player < 11:
		say "Comfortable";
	otherwise if the diaper addiction of the player < 13:
		say "Eager";
	otherwise if the diaper addiction of the player < 15:
		say "Excited";
	otherwise if the diaper addiction of the player < 17:
		say "Obsessed";
	otherwise if the diaper addiction of the player < 17:
		say "Addicted";
	otherwise:
		say "Devoted".

[!<SayVagueDelicateness>+

REQUIRES COMMENTING

+!]
To say VagueDelicateness:
	if the delicateness of the player < 4:
		say "[if the bimbo of the player < 5]Strong Willed[otherwise]Brave[end if]";
	otherwise if the delicateness of the player < 7:
		say "[if diaper lover >= 1]Rebellious[otherwise if the bimbo of the player < 6]Resilient[otherwise]Tenacious[end if]";
	otherwise if the delicateness of the player < 10:
		say "Nervous";
	otherwise if the delicateness of the player < 12:
		say "[if the humiliation of the player < 15000]Shy[otherwise]Docile[end if]";
	otherwise if the delicateness of the player < 14:
		say "[if the humiliation of the player < 15000]Sheepish[otherwise]Cowardly[end if]";
	otherwise if the delicateness of the player < 16:
		say "Fearful";
	otherwise if the delicateness of the player < 18:
		say "Weak Willed";
	otherwise if the delicateness of the player < 20:
		say "[if diaper lover >= 1]Crybaby[otherwise]Spineless[end if]";
	otherwise:
		say "Obedient".

[!<SayVagueBreast>+

REQUIRES COMMENTING

+!]
To say VagueBreast:
	if the largeness of breasts < 3:
		say "Flat	 ";
	otherwise if the largeness of breasts < 5:
		say "Tiny	 ";
	otherwise if the largeness of breasts < 7:
		say "Average ";
	otherwise if the largeness of breasts < 9:
		say "Large	";
	otherwise if the largeness of breasts < 12:
		say "V Large ";
	otherwise if the largeness of breasts < 15:
		say "Giant	";
	otherwise if the largeness of breasts < 18:
		say "Monstrous";
	otherwise:
		say "Unreal   ".

[!<SayVagueBelly>+

REQUIRES COMMENTING

+!]
To say VagueBelly:
	if the largeness of belly < 4:
		say "Flat	";
	otherwise if the largeness of belly < 6:
		say "Round   ";
	otherwise if the largeness of belly < 7:
		say "Bulging ";
	otherwise if the largeness of belly < 9:
		say "Inflated";
	otherwise:
		say "Absurd ".

[!<SayVagueHips>+

REQUIRES COMMENTING

+!]
To say VagueHips:
	if the thickness of hips < 4:
		say "Slim	 ";
	otherwise if the thickness of hips < 7:
		say "Curvy	";
	otherwise if the thickness of hips < 11:
		say "Wide	 ";
	otherwise if the thickness of hips < 15:
		say "Huge	 ";
	otherwise:
		say "Unnatural".

[!<SayVagueDiaper>+

REQUIRES COMMENTING

+!]
To say VagueDiaper:
	let D be a random worn knickers;
	if D is perceived messed, say "Messy[if the total-soak of D > 0] & [end if]";
	if the known-total-soak of D >= the soak-limit of D:
		say "[if D is diaper]Full[otherwise]Saturated[end if]";
	otherwise if the known-total-soak of D >= the soak-limit of D / 2:
		say "[if D is diaper]Half-Full[otherwise]Soaked[end if]";
	otherwise if the known-total-soak of D > 0:
		say "[if D is diaper]Used[otherwise]Wet[end if]";
	otherwise if D is not perceived messed:
		say "[if D is diaper]Clean[otherwise]Dry[end if]".

[!<SayVagueInternalFeeling>+

REQUIRES COMMENTING

+!]
To say VagueInternalFeeling:
	say "[VagueInternals]";

[!<SayVagueExternalFeeling>+

REQUIRES COMMENTING

+!]
To say VagueExternalFeeling:
	say "[VagueSoreness]".

[!<DecideWhichNumberIsTheOrificeSorenessOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the orifice soreness of the player:
	if the player is male or the soreness of asshole >= the soreness of vagina, decide on the soreness of asshole;
	otherwise decide on the soreness of vagina.

[!<SayVagueSoreness>+

REQUIRES COMMENTING

+!]
To say VagueSoreness:
	let fine be 1;
	if the player is tired:
		if the body soreness of the player is 10:
			say "Completely Exhausted";
		otherwise:
			if the player is very tired, say "Very ";
			say "Tired";
		now fine is 0;
	if the orifice soreness of the player > 4:
		if fine is 0, say " & ";
		if the orifice soreness of the player is 10:
			say "Ruined";
		otherwise if the orifice soreness of the player > 6:
			say "Very Sore";
		otherwise:
			say "Sore";
		now fine is 0;
	if the body soreness of the player > 2:
		if fine is 0, say " & ";
		if the body soreness of the player > 9 and the player is prone:
			say "Defeated";
		otherwise if the body soreness of the player > 6:
			say "Very Weak";
		otherwise if the body soreness of the player > 4:
			say "Weakened";
		otherwise:
			say "Bruised";
		now fine is 0;
	if diaper quest is 0:
		if the player is thirsty:
			if fine is 0, say " & ";
			if the thirst of the player is 5:
				say "Extremely ";
			otherwise if the thirst of the player is 4:
				say "Very ";
			say "Thirsty";
			now fine is 0;
		otherwise if the thirst of the player > 0:
			if fine is 0, say " & ";
			say "Nearly Thirsty";
			now fine is 0;
		if the player is hungry:
			if fine is 0, say " & ";
			say "Hungry";
			now fine is 0;
		otherwise if the player is nearly hungry:
			if fine is 0, say " & ";
			say "Nearly Hungry";
			now fine is 0;
	if fine is 1, say "Fine".

[!<SayVagueStomach>+

REQUIRES COMMENTING

+!]
To say VagueStomach:
	let fine be 1;
	let but be 0;
	if the player is overly full:
		if fine is 0, say " & ";
		say "Oversatiated";
		now fine is 0;
	otherwise if the player is almost too full:
		if fine is 0, say " & ";
		say "Full";
		now fine is 0;
	if the player is thirsty:
		if fine is 0, say " but ";
		now but is 1;
		if the thirst of the player is 5:
			say "Extremely ";
		otherwise if the thirst of the player is 4:
			say "Very ";
		say "Thirsty";
		now fine is 0;
	otherwise if the thirst of the player > 0:
		if fine is 0, say " but ";
		now but is 1;
		say "Nearly Thirsty";
		now fine is 0;
	if the player is hungry:
		if fine is 0, say " [if but is 0]but[otherwise]&[end if] ";
		say "Hungry";
		now fine is 0;
	otherwise if the player is nearly hungry:
		if fine is 0, say " [if but is 0]but[otherwise]&[end if] ";
		say "Nearly Hungry";
		now fine is 0;
	if fine is 1, say "Fine".

[!<SayVagueInternals>+

REQUIRES COMMENTING

+!]
To say VagueInternals:
	let fine be 1;
	let A be alcohol-level;
	if the player is blinded:
		say "Blinded";
		now fine is 0;
	if A > 0:
		if fine is 0, say " & ";
		say "[if A is 1]Buzzed[otherwise if A is 2]Tipsy[otherwise if A is 3]Drunk[otherwise if A is 4]Very Drunk[otherwise]Extremely Drunk[end if]";
		now fine is 0;
	if hungover > 0:
		if fine is 0, say " & ";
		say "Hungover";
		now fine is 0;
	if the player is grossed out:
		if fine is 0, say " & ";
		say "Grossed Out";
		now fine is 0;
	otherwise if the player is perturbed:
		if fine is 0, say " & ";
		say "Perturbed";
		now fine is 0;
	if the player is overly full and diaper quest is 0:
		if fine is 0, say " & ";
		say "Oversatiated";
		now fine is 0;
	otherwise if the player is almost too full and diaper quest is 0:
		if fine is 0, say " & ";
		say "Full";
		now fine is 0;
	if the total squirtable fill of belly > 0:
		if fine is 0, say " & ";
		say "Holding [if the semen volume of belly > 0]Anal Creampie[otherwise if the total egg fill of belly > 0]Eggs[otherwise if the urine volume of belly > 0]Piss Enema[otherwise if the milk volume of belly > 0]Milk Enema[otherwise]Enema[end if]";
		now fine is 0;
	otherwise if the player is feeling full:
		if fine is 0, say " & ";
		say "Bowels Growling";
		now fine is 0;
	if the player is bursting:
		if fine is 0, say " & ";
		let B be bladder-bursting-level;
		if B >= 2 or the player is fake bursting:
			say "Desperate ";
		otherwise if B >= 0:
			say "Bursting ";
		otherwise:
			say "Need ";
		say "To Pee";
		now fine is 0;
	if the player is a bit horny:
		if fine is 0, say " & ";
		if the player is extremely horny:
			say "Extremely ";
		otherwise if the player is very horny:
			say "Very ";
		if the player is a horny:
			say "Horny";
		otherwise:
			say "Aroused";
		now fine is 0;
	if the player is craving semen:
		if fine is 0, say " & ";
		if the player is desperately craving semen:
			say "Desperately ";
		if the player is craving semen:
			say "Craving [if the player is craving milk]Milk And [end if][if the class of the player is santa's little helper]A Festive Drink[otherwise]Cum[end if]";
			now fine is 0;
	otherwise if the player is craving milk:
		if fine is 0, say " & ";
		if the player is desperately craving milk:
			say "Very ";
		if the player is craving milk:
			say "Cranky";
			now fine is 0;
	if player-immobile is true:
		if fine is 0, say " & ";
		say "[if the player is monster fucked]Being Fucked[otherwise]Stuck[end if]";
		now fine is 0;
	if the player is overburdened:
		if fine is 0, say " & ";
		say "Weighed Down";
		now fine is 0;
	if fine is 1, say "Fine".

The constructing status line while displaying rule is not listed in any rulebook.

[!<RuleForConstructingTheStatusLineWhileDisplaying>+

REQUIRES COMMENTING

+!]
Rule for constructing the status line while displaying:
	if the current menu is Table of Disclaimer:
		fill status bar with Table of Disclaimer Body;
	otherwise if the current menu is Table of Transformation Options:
		fill status bar with Table of Transformation Options Status;
	otherwise if the current menu is the Table of Fetish Options or current menu is the Table of Kink Options or current menu is the Table of Handicap Options or the current menu is the Table of Diaper Fetish Options:
		fill status bar with Table of Fetish Menu Status;
	otherwise if the current menu is the Table of Game Settings or the current menu is the Table of Image Settings or the current menu is the Table of Optional Text Settings or the current menu is the Table of Automatic Actions Settings:
		fill status bar with Table of Game Settings Status;
	otherwise if the current menu is the Table of Gender Options:
		fill status bar with Table of Gender Options Status;
	otherwise if the current menu is the Table of Male Name Options or the current menu is the Table of Female Name Options or the current menu is the Table of Male Name Diaper Quest Options or the current menu is the Table of Female Name Diaper Quest Options:
		fill status bar with Table of Name Options Status;
	otherwise if the current menu is the Table of Benefit Options or the current menu is the Table of Diaper Quest Benefit Options or the current menu is the Table of Secret Options or the current menu is the Table of Background Options or the current menu is the Table of Body Limit Options:
		fill status bar with Table of Benefit Options Status;
	otherwise if the current menu is the table of diaper options:
		fill status bar with table of diaper choice status;
	otherwise if the current menu is the table of toilet allowance options:
		fill status bar with table of toilet allowance status;
	otherwise if the current menu is the table of diaper focus options:
		fill status bar with table of diaper focus status;
	otherwise if the current menu is the table of pregnancy options:
		fill status bar with table of pregnancy choice status;
	otherwise if the current menu is the table of slow pregnancy options or the current menu is the table of slow birth options:
		fill status bar with table of slow pregnancy status;
	otherwise if the current menu is the table of random settings:
		fill status bar with table of random settings status;
	otherwise if the current menu is the table of tg options:
		fill status bar with table of tg status;
	otherwise:
		if the endnode flag is 0,
			fill status bar with Table of Deep Menu Status;
		otherwise fill status bar with Table of Shallow Menu Status;
	rule succeeds.

[!<tableOfGameSettingsStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Game Settings Status
left	central	right
""	"Game Settings"	""

[!<tableOfNameOptionsStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Name Options Status
left	central	right
""	"Choose Your Name"	""

[!<tableOfGenderOptions:Table>*

REQUIRES COMMENTING

*!]
Table of Gender Options Status
left	central	right
"CHOOSE YOUR CHARACTER'S SEX"	""	""
""	""	""
"Men can [if diaper quest is 1]have their penis shrink[otherwise]still get a very womanly body[end if], but they will not get a vagina without TG fetish enabled."	""	""

[!<tableOfFetishMenuStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Fetish Menu Status
left	central	right
"Choose your difficulty points."	""	""
"You will spend these points on benefits on the next page."	""	""
"You will currently get [positive points count] points to spend on the next page."	""	""

[!<tableOfBenefitOptionsStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Benefit Options Status
left	central	right
"Choose how to spend your points."	""	""
"CURRENT POINTS LEFT: [points count]"	""	""

Part - Other Status Bars

[!<tableOfEmptyStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Empty Status
left	central	right
""	""	""
""	"*****[if diaper quest is 1]DIAPER[otherwise]TRAP[end if] QUEST*****"	""
""	""	""

[!<tableOfPregnancyChoiceStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Pregnancy Choice Status
left	central	right
""	""	""
""	"Enable or disable inhuman pregnancy content?"	""
""	""	""

Table of Slow Pregnancy Status
left	central	right
""	""	""
""	"How would you like pregnancies to grow?"	""
""	""	""

Table of TG Status
left	central	right
""	""	""
""	"How would you like the game to handle your sex change?"	""
""	""	""

[!<tableOfDiaperChoiceStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Diaper Choice Status
left	central	right
""	""	""
""	"Enable or disable certain diaper content?"	""
""	""	""

[!<tableOfDiaperFocusStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Diaper Focus Status
left	central	right
""	""	""
""	"Make diapers the main focus of the game?"	""
""	""	""

[!<tableOfToiletAllowanceStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Toilet Allowance Status
left	central	right
""	""	""
""	"Enable the player to pull the diaper to one side when in a room with a toilet?"	""
""	""	""

[!<tableOfRandomSettingsStatus:Table>*

REQUIRES COMMENTING

*!]
Table of Random Settings Status
left	central	right
""	""	""
""	"Randomise Your Setup?"	""
""	""	""

Status Bar ends here.
