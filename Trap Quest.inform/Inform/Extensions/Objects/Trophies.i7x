Trophies by Objects begins here.

[!<Trophy>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A trophy is a kind of thing. The printed name of a trophy is usually "[TQlink of item described]trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of a trophy is usually "tphy". Understand "trophy" as trophy.
Figure of trophy is the file "Env/School/trophy1.png".

To decide which figure-name is the examine-image of (T - trophy):
	decide on figure of trophy.

To update background colour of (T - a trophy):
	if the trophy-mode of T > 0, now the backgroundColour of T is lightModeFullGreen; [normal green]
	otherwise now the backgroundColour of T is 16720896. [scarlet - off]

A trophy has a number called trophy-mode.

Definition: a trophy is necessary-in-bag: decide no. [Things that are not necessary-in-bag don't take up an item slot when the player has no bag.]

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

Report examining a trophy:
	say "[bold type]You can tell that thanks to having earned this trophy, you are permanently a bit more lucky.[roman type][line break]".

bbc-trophy is a trophy. The printed name of bbc-trophy is "[TQlink of item described]big black cock trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of bbc-trophy is "bbct". Understand "big", "black", "black cock" as bbc-trophy.

Figure of bbc trophy is the file "Env/School/trophy2.png".
To decide which figure-name is the examine-image of (C - bbc-trophy):
	decide on figure of bbc trophy.

To say ExamineDesc of (T - bbc-trophy):
	say "This heavy metal trophy depicts a huge thick black [manly-penis] with a much smaller, limp white [plain-sissy-penis] coiled around its base, dribbling its premature ejaculation. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that it is actively enhancing black virility whilst dampening white virility[otherwise]red glow, which allows you to sense that its powers of enhancing black virility whilst dampening white virility are currently inactive[end if].".

Definition: bbc-trophy is fetish appropriate:
	if interracial fetish is 1, decide yes;
	decide no.

Carry out TrophySwitching bbc-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of bbc-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that [bold type]black [men of male-m] are now more virile and white [men of male-m] are now finding it more difficult to satisfy their lovers.[roman type][line break]";
		now the trophy-mode of bbc-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type][men of male-m] of all races have returned to their normal levels of virility.[roman type][line break]";
		now the trophy-mode of bbc-trophy is 0.

pain-trophy is a trophy. The printed name of pain-trophy is "[TQlink of item described]dominatrix trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pain-trophy is "dmnt". Understand "dominatrix" as pain-trophy.
Figure of pain trophy is the file "Env/School/trophy5.png".
To decide which figure-name is the examine-image of (C - pain-trophy):
	decide on figure of pain trophy.

To say ExamineDesc of (T - pain-trophy):
	say "This smooth silver trophy depicts a curvy woman wielding a spanking paddle. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that experiencing pain will make you more perverted rather than more submissive[otherwise]red glow, which allows you to sense that its powers of turning pain into pleasurable perverted thoughts are inactive[end if].".

Carry out TrophySwitching pain-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of pain-trophy is 0:
		if the raw sex addiction of the player >= 20:
			say "The trophy's glow doesn't change from red. Perhaps this means you can't become more perverted than you already are, so you can no longer enable this magical effect.";
		otherwise:
			say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]experiencing pain will feel [one of]weirdly[or]strangely[or]oddly[or]oddly[or]kind of[or]amusingly[or]intriguingly[or]appealingly[or]cutely[or]nicely[or]deliciously[or]delightfully[stopping] pleasurable and make you more perverted rather than more submissive.[roman type][line break]";
			now the trophy-mode of pain-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]your experience of pain has returned to normal, and wonder whether exposure to it will gradually make you more submissive.[roman type][line break]";
		now the trophy-mode of pain-trophy is 0.

expel-trophy is a trophy. The printed name of expel-trophy is "[TQlink of item described]sphincter trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of expel-trophy is "spht". Understand "sphincter" as expel-trophy.

Figure of expel trophy is the file "Env/School/trophy7.png".
To decide which figure-name is the examine-image of (C - expel-trophy):
	decide on figure of expel trophy.

To say ExamineDesc of (T - expel-trophy):
	say "This trophy is in the shape of a tight butthole. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that expelling things from your butthole now happens automatically, and never happens when you're plugged, and it no longer hurts to hold things in[otherwise]red glow, which allows you to sense that you can control when you release liquid from your butthole, but holding it is painful over time[end if].".

Definition: expel-trophy is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

Carry out TrophySwitching expel-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of expel-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]expelling things from your butthole will now happen automatically, though never when you're plugged, and it will no longer hurt to hold things in.[roman type][line break]";
		now the trophy-mode of expel-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]you can now once again control when you release liquid from your butthole, but holding it will be painful over time.[roman type][line break]";
		now the trophy-mode of expel-trophy is 0.

bust-trophy is a trophy. The printed name of bust-trophy is "[TQlink of item described]bust trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of bust-trophy is "bstt". Understand "bust" as bust-trophy.

Figure of bust trophy is the file "Env/School/trophy3.png".
To decide which figure-name is the examine-image of (C - bust-trophy):
	decide on figure of bust trophy.

To say ExamineDesc of (T - bust-trophy):
	say "This trophy is in the shape of a large round pair of breasts. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that your breasts are more sensitive, but less provocative[otherwise]red glow, which allows you to sense that its magical powers to make your breasts more sensitive but less provocative is currently inactive[end if].".

Definition: bust-trophy is fetish appropriate:
	if diaper quest is 0 and the largeness of breasts > 5, decide yes;
	decide no.

Carry out TrophySwitching bust-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of bust-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]your breasts will feel more sensitive, but others will consider your cleavage or naked breasts less offensive.[roman type][line break]";
		now the trophy-mode of bust-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]your breast sensitivity and outrageousness has returned to normal.[roman type][line break]";
		now the trophy-mode of bust-trophy is 0.

trip-trophy is a trophy. The printed name of trip-trophy is "[TQlink of item described]heel trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of trip-trophy is "helt". Understand "heel" as trip-trophy.

Figure of trip trophy is the file "Env/School/trophy8.png".
To decide which figure-name is the examine-image of (C - trip-trophy):
	decide on figure of trip trophy.

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

Figure of condom trophy is the file "Env/School/trophy6.png".
To decide which figure-name is the examine-image of (C - condom-trophy):
	decide on figure of condom trophy.

Definition: condom-trophy is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To say ExamineDesc of (T - condom-trophy):
	say "This trophy is in the shape of a used condom, bloated with [semen]. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that people are much more likely to be willing to wear a condom, and your brain and body will much more quickly become addicted to creampies if you receive any[otherwise]red glow, which allows you to sense that its magical powers to make condoms more reliable and creampies more addictive are inactive[end if].".

Carry out TrophySwitching condom-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of condom-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]people will be much more likely to be willing to wear a condom, and your brain and body will much more quickly become addicted to creampies if you receive any.[roman type][line break]";
		now the trophy-mode of condom-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]people's attitude to condoms and the addictiveness of creampies has returned to normal.[roman type][line break]";
		now the trophy-mode of condom-trophy is 0.

ejaculate-trophy is a trophy. The printed name of ejaculate-trophy is "[TQlink of item described]semen trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of ejaculate-trophy is "smnt". Understand "semen" as ejaculate-trophy.
Figure of ejaculate trophy is the file "Env/School/trophy4.png".
To decide which figure-name is the examine-image of (C - ejaculate-trophy):
	decide on figure of ejaculate trophy.

Definition: ejaculate-trophy is fetish appropriate:
	if ((the player is possessing a vagina or TG fetish > 0) and pregnancy fetish is 1) or bukkake fetish is 1, decide yes;
	decide no.

To say ExamineDesc of (T - ejaculate-trophy):
	say "This trophy is in the shape of a realistic erect penis in the middle of ejaculating a veritable fountain of semen. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow. You can feel that drinking [semen] is no longer addictive, but also everyone in this world now ejaculates huge amounts of [semen][otherwise]red glow, which allows you to sense that its magical powers to make ejaculations much more voluminous and [semen] less addictive are inactive[end if].".

Carry out TrophySwitching ejaculate-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of ejaculate-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]swallowing [semen] is no longer addictive, but also everyone in this world will now ejaculate huge amounts of [semen].[roman type][line break]";
		now the trophy-mode of ejaculate-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]the volume of everyone's ejaculation has returned to normal and that swallowing [semen] will once again increase your addiction to it.[roman type][line break]";
		now the trophy-mode of ejaculate-trophy is 0.

diaper-trophy is a trophy. The printed name of diaper-trophy is "[TQlink of item described]diaper trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of diaper-trophy is "dipt". Understand "diaper" as diaper-trophy.
Figure of diaper trophy is the file "Env/School/trophy12.png".
To decide which figure-name is the examine-image of (C - diaper-trophy):
	decide on figure of diaper trophy.

Definition: diaper-trophy is fetish appropriate:
	if diaper quest is 1, decide yes;
	decide no.

To say ExamineDesc of (T - diaper-trophy):
	say "This trophy is in the shape of a ballerina, clearly with thick padding underneath her leotard. It is surrounded by a mystical [if the trophy-mode of T is 1]green glow, and you can feel that people no longer consider [bold type]the shape of a diaper being visible through other clothing[roman type] outrageous, but also people who have instructed you to stay in diapers will never give you permission to stop wearing them[otherwise]red glow, which allows you to sense that its magical powers to make the shape of a diaper being visible through other clothing not embarrassing, and to make people never give you permission to stop wearing diapers, are inactive[end if].".

Carry out TrophySwitching diaper-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of diaper-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]people will no longer consider the shape of a diaper being visible through other clothing outrageous, but also people who have instructed you to stay in diapers will never give you permission to stop wearing them.[roman type][line break]";
		now the trophy-mode of diaper-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]people will once again consider the shape of a diaper being visible through other clothing to be childish, and also people who have instructed you to stay in diapers will once again give you permission to stop wearing them after finding you have managed to stay dry enough times when they check you.[roman type][line break]";
		now the trophy-mode of diaper-trophy is 0.

magic-trophy is a trophy. The printed name of magic-trophy is "[TQlink of item described]magic wand trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of magic-trophy is "mgwt". Understand "magic", "wand" as magic-trophy.

Figure of magic trophy is the file "Env/School/trophy9.png".
To decide which figure-name is the examine-image of (C - magic-trophy):
	decide on figure of magic trophy.

To say ExamineDesc of (T - magic-trophy):
	say "This trophy is in the shape of a vibrating magic wand. It is surrounded by a mystical ";
	if the trophy-mode of T is 1, say "green glow, and you can feel that casting magic spells depletes your magic power much more slowly, but also every time you cast a spell, your [if egg laying fetish is 1]womb[otherwise]belly[end if] will be filled with [if egg laying fetish is 1]eggs[otherwise if watersports fetish is 1][urine][otherwise if diaper quest is 1]water[otherwise][semen][end if]!";
	otherwise say "red glow, which allows you to sense that its magical powers to make magic spells cost less magic power but summon stuff inside your belly are inactive.".
A magic consequences rule (this is the trophy magic consequence rule):
	if the trophy-mode of magic-trophy is 1:
		if egg laying fetish is 1 and the player is possessing a vagina and (the pregnancy of the player <= 0 or the pregnancy of the player is 3):
			say "Less of your magic power is depleted than normal. But at the same time, you feel an egg manifest itself inside your womb!";
			WombFill 1 medium eggs;
			if the number of egg-fathering things penetrating vagina is 0:
				if mythical creatures fetish is 1 and buzzing giant wasp is not listed in the medium-egg-origins of vagina, add buzzing giant wasp to the medium-egg-origins of vagina;
				otherwise add the throne to the medium-egg-origins of vagina;
		otherwise:
			say "Less of your magic power is depleted than normal. But at the same time, you feel ";
			if egg laying fetish is 1:
				say "an egg manifest itself inside your belly!";
				AssFill 1 medium eggs;
				if the number of egg-fathering things penetrating asshole is 0:
					if mythical creatures fetish is 1 and buzzing giant wasp is not listed in the medium-egg-origins of vagina, add buzzing giant wasp to the medium-egg-origins of vagina;
					otherwise add the throne to the medium-egg-origins of vagina;
			otherwise if a random number between 0 and watersports fetish is 1:
				say "some [urine] appear inside your belly!";
				AssFill 2 urine;
			otherwise if diaper quest is 1:
				say "some water appear inside your belly!";
				AssFill 2 water;
			otherwise:
				say "some [semen] appear inside your belly!";
				AssFill 2.

Carry out TrophySwitching magic-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of magic-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]casting magic spells depletes less of your magic power, but also every time you cast a spell, your [if egg laying fetish is 1]womb[otherwise]belly[end if] will be filled with [if egg laying fetish is 1]eggs[otherwise if watersports fetish is 1][urine][otherwise if diaper quest is 1]water[otherwise][semen][end if].[roman type][line break]";
		now the trophy-mode of magic-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]you once again will need to spend more magic power to cast spells, but the trophy will not summon things into your belly each time you do.[roman type][line break]";
		now the trophy-mode of magic-trophy is 0.

candy-trophy is a trophy. The printed name of candy-trophy is "[TQlink of item described]candy trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of candy-trophy is "cndt". Understand "candy" as candy-trophy.

Figure of candy trophy is the file "Env/School/trophy10.png".
To decide which figure-name is the examine-image of (C - candy-trophy):
	decide on figure of candy trophy.

To say ExamineDesc of (T - candy-trophy):
	say "This trophy is the bust of a woman licking a lollipop.";
	if the trophy-mode of T is 1, say "green glow, and you can feel that all candy heals you a bit when eaten, but you will always eat any candy you have as soon as physically possible!";
	otherwise say "red glow, which allows you to sense that its magical powers to make all candy heal you a bit, but also make you always automatically eat candy as soon as possible, are inactive.".

Carry out TrophySwitching candy-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of candy-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]eating candy heals you a little, but all candy eating happens immediately and automatically.[roman type][line break]";
		now the trophy-mode of candy-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]you can once again choose when you eat your candy, but it will no longer all give you bonus healing.[roman type][line break]";
		now the trophy-mode of candy-trophy is 0.

fat-trophy is a trophy. The printed name of fat-trophy is "[TQlink of item described]fat trophy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of fat-trophy is "fatt". Understand "fat" as fat-trophy.

Figure of fat trophy is the file "Env/School/trophy11.png".
To decide which figure-name is the examine-image of (C - fat-trophy):
	decide on figure of fat trophy.

Definition: fat-trophy is fetish appropriate:
	if weight gain fetish is 1, decide yes;
	decide no.

To say ExamineDesc of (T - fat-trophy):
	say "This trophy is made in the shape of a chubby woman lifting up a dumbell.";
	if the trophy-mode of T is 1, say "green glow, and you can feel that exercise will no longer burn fat, but instead all go straight to building muscle!";
	otherwise say "red glow, which allows you to sense that exercising will currently burn fat over building muscle unless you're very skinny.".

Carry out TrophySwitching fat-trophy:
	say "You rub the trophy[if the player is wrist bound behind] with your nose[end if]. ";
	if the trophy-mode of fat-trophy is 0:
		say "The trophy's glow changes from red to green. You can tell that from now on, [bold type]exercise will no longer burn fat, but instead all go straight to building muscle.[roman type][line break]";
		now the trophy-mode of fat-trophy is 1;
	otherwise:
		say "The trophy's glow changes from green to red. You can tell that [bold type]exercise will now only build muscles if there is no excess fat left to burn.[roman type][line break]";
		now the trophy-mode of fat-trophy is 0.

Trophies ends here.
