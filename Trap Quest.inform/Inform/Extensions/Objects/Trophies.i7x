Trophies by Objects begins here.

[!<Trophy>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A trophy is a kind of thing. The printed name of a trophy is usually "[TQlink of item described]trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of a trophy is usually "tphy". Understand "trophy" as trophy.
Figure of trophy is the file "Env/School/trophy1.png".

To decide which figure-name is the examine-image of (C - trophy):
	decide on figure of trophy.

To decide which number is the trophy-colour of (T - a trophy):
	if the trophy-mode of T > 0, decide on lightModeFullGreen; [normal green]
	decide on 16720896. [scarlet - off]

To BackgroundRender (T - trophy) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle trophy-colour of T in the current focus window at X1 by Y1 with size DX by DY.

A trophy has a number called trophy-mode.

Check taking trophy:
	if the player is in School31, say "Unfortunately it seems to have been fixed in place!" instead.

TrophySwitching is an action applying to one thing.

Check TrophySwitching:
	if the noun is not trophy, say "This verb is used for manipulating trophies." instead;
	if the player is immobile, say "Aren't you a bit busy?" instead.

Check drinking trophy:
	try TrophySwitching the noun instead.

Check pushing trophy:
	try TrophySwitching the noun instead.

Check rubbing trophy:
	try TrophySwitching the noun instead.

Carry out TrophySwitching:
	if the noun is carried, force inventory-focus redraw; [Forces redraw of inventory window]
	allocate 3 seconds.

bbc-trophy is a trophy. The printed name of bbc-trophy is "[TQlink of item described]big black cock trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of bbc-trophy is "bbct". Understand "big", "black", "black cock" as bbc-trophy.

To say ExamineDesc of (T - bbc-trophy):
	say "This heavy metal trophy depicts a huge thick black [manly-penis] coiled around a much smaller limp white [sissy-penis]. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that it is actively enhancing black virility whilst dampening white virility[otherwise]red glow, which allows you to sense that its powers of enhancing black virility whilst dampening white virility are currently inactive[end if].".

Definition: bbc-trophy is fetish appropriate if interracial fetish is 1.

Carry out TrophySwitching bbc-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of bbc-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that [bold type]black [men of shopkeeper] are now more virile and white [men of shopkeeper] are now finding it more difficult to satisfy their lovers.[roman type][line break]";
		now the trophy-mode of bbc-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type][men of shopkeeper] of all races have returned to their normal levels of virility.[roman type][line break]";
		now the trophy-mode of bbc-trophy is 0.

pain-trophy is a trophy. The printed name of pain-trophy is "[TQlink of item described]dominatrix trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pain-trophy is "dmnt". Understand "dominatrix" as pain-trophy.

To say ExamineDesc of (T - pain-trophy):
	say "This smooth silver trophy depicts a curvy woman wielding a spanking paddle. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that experiencing pain will make you more perverted rather than more submissive[otherwise]red glow, which allows you to sense that its powers of turning pain into pleasurable perverted thoughts are inactive[end if].".

Carry out TrophySwitching pain-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of pain-trophy is 0:
		if the raw sex addiction of the player >= 20:
			say "The trophy's glow doesn't change from red. Perhaps this means that you can't become more perverted than you already are, so you can no longer enable this magical effect.";
		otherwise:
			say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]experiencing pain will feel weirdly pleasurable and make you more perverted rather than more submissive.[roman type][line break]";
			now the trophy-mode of pain-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]your experience of pain has returned to normal, and exposure to it will gradually make you more submissive.[roman type][line break]";
		now the trophy-mode of pain-trophy is 0.

expel-trophy is a trophy. The printed name of expel-trophy is "[TQlink of item described]sphincter trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of expel-trophy is "spht". Understand "sphincter" as expel-trophy.

To say ExamineDesc of (T - expel-trophy):
	say "This trophy is in the shape of a tight butthole. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that expelling things from your butthole now happens automatically, and never happens when you're plugged, and it no longer hurts to hold things in[otherwise]red glow, which allows you to sense that you can control when you release liquid from your butthole, but holding it is painful over time[end if].".

Definition: expel-trophy is fetish appropriate if diaper quest is 0.

Carry out TrophySwitching expel-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of expel-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]expelling things from your butthole now happens automatically, and never happens when you're plugged, and it no longer hurts to hold things in.[roman type][line break]";
		now the trophy-mode of expel-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]you can now once again control when you release liquid from your butthole, but holding it is painful over time.[roman type][line break]";
		now the trophy-mode of expel-trophy is 0.

bust-trophy is a trophy. The printed name of bust-trophy is "[TQlink of item described]bust trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of bust-trophy is "bstt". Understand "bust" as bust-trophy.

To say ExamineDesc of (T - bust-trophy):
	say "This trophy is in the shape of a large round pair of breasts. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that your breasts are more sensitive, but less provocative[otherwise]red glow, which allows you to sense that its magical powers to make your breasts more sensitive but less provocative is currently inactive[end if].".

Definition: bust-trophy is fetish appropriate if diaper quest is 0 and the largeness of breasts > 5.

Carry out TrophySwitching bust-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of bust-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]others will consider your naked breasts or cleavage less offensive, but they feel more sensitive.[roman type][line break]";
		now the trophy-mode of bust-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]your breast sensitivity and outrageousness has returned to normal.[roman type][line break]";
		now the trophy-mode of bust-trophy is 0.

trip-trophy is a trophy. The printed name of trip-trophy is "[TQlink of item described]heel trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of trip-trophy is "helt". Understand "heel" as trip-trophy.

To say ExamineDesc of (T - trip-trophy):
	say "This trophy is in the shape of a pair of high heels. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that you are more steady in heels, but more likely to be targeted by trip attacks whilst wearing them[otherwise]red glow, which allows you to sense that its magical powers to make you more steady in heels but more prone to tripping attacks is currently inactive[end if].".

Carry out TrophySwitching trip-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of trip-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]you will be more steady in heels, but enemies are more likely to use trip attacks whilst you're wearing them.[roman type][line break]";
		now the trophy-mode of trip-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]your heel balance and likeliness to be tripped has returned to normal.[roman type][line break]";
		now the trophy-mode of trip-trophy is 0.

condom-trophy is a trophy. The printed name of condom-trophy is "[TQlink of item described]condom trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of condom-trophy is "cdmt". Understand "condom" as condom-trophy.

Definition: condom-trophy is fetish appropriate if diaper quest is 0.

To say ExamineDesc of (T - condom-trophy):
	say "This trophy is in the shape of a realistic erect penis protected by a condom. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that people are much more likely to be willing to wear a condom, and your brain and body will much more quickly become addicted to creampies if you receive any[otherwise]red glow, which allows you to sense that its magical powers to make condoms more reliable and creampies more addictive are inactive[end if].".

Carry out TrophySwitching condom-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of condom-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]people will be much more likely to be willing to wear a condom, and your brain and body will much more quickly become addicted to creampies if you receive any.[roman type][line break]";
		now the trophy-mode of condom-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]people's attitude to condoms and the addictiveness of creampies has returned to normal.[roman type][line break]";
		now the trophy-mode of condom-trophy is 0.

ejaculate-trophy is a trophy. The printed name of ejaculate-trophy is "[TQlink of item described]semen trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of ejaculate-trophy is "smnt". Understand "semen" as ejaculate-trophy.

Definition: ejaculate-trophy is fetish appropriate if ((the player is female or TG fetish > 0) and pregnancy fetish is 1) or bukkake fetish is 1.

To say ExamineDesc of (T - ejaculate-trophy):
	say "This trophy is in the shape of a realistic erect penis in the middle of ejaculating a veritable fountain of semen. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that drinking [semen] is no longer addictive, but also everyone in this world now ejaculates huge amounts of [semen][otherwise]red glow, which allows you to sense that its magical powers to make ejaculations much more voluminous and creampies less addictive are inactive[end if].".

Carry out TrophySwitching ejaculate-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of ejaculate-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]drinking and digesting [semen] is no longer addictive, but also everyone in this world will now ejaculate huge amounts of [semen].[roman type][line break]";
		now the trophy-mode of ejaculate-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]the volume of everyone's ejaculation has returned to normal and that drinking and digesting [semen] will once again increase your addiction to it.[roman type][line break]";
		now the trophy-mode of ejaculate-trophy is 0.

diaper-trophy is a trophy. The printed name of diaper-trophy is "[TQlink of item described]diaper trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of diaper-trophy is "dipt". Understand "diaper" as diaper-trophy.

Definition: diaper-trophy is fetish appropriate if diaper quest is 1.

To say ExamineDesc of (T - diaper-trophy):
	say "This trophy is in the shape of a ballerina, clearly with thick padding underneath her leotard. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that people no longer consider [bold type]the shape of a diaper being visible through other clothing[roman type] outrageous, but also people who have instructed you to stay in diapers will never give you permission to stop wearing them[otherwise]red glow, which allows you to sense that its magical powers to make the shape of a diaper being visible through other clothing not embarrassing, and to make people never give you permission to stop wearing diapers, are inactive[end if].".

Carry out TrophySwitching diaper-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of diaper-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]people will no longer consider the shape of a diaper being visible through other clothing outrageous, but also people who have instructed you to stay in diapers will never give you permission to stop wearing them.[roman type][line break]";
		now the trophy-mode of diaper-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]people will once again consider the shape of a diaper being visible through other clothing to be childish, and also people who have instructed you to stay in diapers will once again give you permission to stop wearing them after finding that you have managed to stay dry enough times when they check you.[roman type][line break]";
		now the trophy-mode of diaper-trophy is 0.

magic-trophy is a trophy. The printed name of magic-trophy is "[TQlink of item described]magic wand trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of magic-trophy is "mgwt". Understand "magic", "wand" as magic-trophy.

To say ExamineDesc of (T - magic-trophy):
	say "This trophy is in the shape of a vibrating magic wand. It is surrounded by a mystical ";
	if the trophy-mode of T is 1, say "green glow, and you can feel that casting magic spells doesn't deplete your magic power, but also every time you cast a spell, your belly will be filled with [if egg laying fetish is 1]eggs[otherwise if diaper quest is 1]water[otherwise if watersports fetish is 1][urine][otherwise][semen][end if]!";
	otherwise say "red glow, which allows you to sense that its magical powers to make magic spells not cost magic power but summon stuff inside your belly are inactive.".
A magic consequences rule (this is the trophy magic consequence rule):
	if the trophy-mode of magic-trophy is 1:
		let BS be belly limit - the total fill of belly;
		say "Instead of your magic power decreasing, your belly explodes with [if BS > 0]contents until completely full[otherwise]even more liquid. Your belly can't hold it all[end if]!";
		if BS > 0:
			if egg laying fetish is 1:
				AssFill (BS / 2) medium eggs;
				if the remainder after dividing BS by 2 is 1, AssFill 1;
			otherwise if diaper quest is 1:
				AssFill BS water;
			otherwise if watersports fetish is 1:
				AssFill BS urine;
			otherwise:
				AssFill BS;
		otherwise if diaper quest is 1:
			AssFill 1 water; [should trigger overflow]
		otherwise:
			AssFill 1. [should trigger overflow]

Carry out TrophySwitching magic-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of magic-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]casting magic spells doesn't deplete your magic power, but also every time you cast a spell, your belly will be filled with [if egg laying fetish is 1]eggs[otherwise if diaper quest is 1]water[otherwise if watersports fetish is 1][urine][otherwise][semen][end if].[roman type][line break]";
		now the trophy-mode of magic-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]you once again will need to spend magic power to cast spells, but the trophy will not summon things into your belly each time you do.[roman type][line break]";
		now the trophy-mode of magic-trophy is 0.

Trophies ends here.
