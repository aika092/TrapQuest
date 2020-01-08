Liquorice by Food begins here.


A liquorice is a kind of candy. The printed name of liquorice is "[TQlink of item described]liquorice[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of liquorice is "[TQlink of item described]pieces of liquorice[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of liquorice is "lq". There are 3 liquorice. Understand "pieces" as liquorice.

To say ExamineDesc of (C - a liquorice):
	say "A strand of black liquorice. You hate the taste of liquorice almost as much as the taste of pineapple pizza!'".

Figure of liquorice is the file "Items/Collectibles/liquorice1.jpg".

To decide which figure-name is the examine-image of (F - liquorice):
	decide on figure of liquorice.

To say ShortDesc of (C - a liquorice):
	say "liquorice".

liquorice-timer is a number that varies.

Definition: a liquorice (called C) is low tier:
	decide yes.

To say DevourFlav of (C - a liquorice):
	say "You quickly chew the [C] before swallowing it. ".

To decide which number is the crafting key of (C - a liquorice):
	decide on 41.

Carry out TQeating liquorice:
	say "[DevourFlav of the noun]";
	if a random number between 1 and 4 > 1:
		say "You manage to tolerate the bittersweet taste without suffering any [if liquorice-timer > 0]further [end if]negative effects.";
	otherwise:
		say "Yuck! You feel your body weaken [if liquorice-timer > 0]even further[otherwise]slightly. You feel that it's going to stay that way until the bittersweet taste fades from your mouth[end if].";
		increase liquorice-timer by default-candy-duration.

a time based rule (this is the liquorice decay rule):
	if liquorice-timer > default-candy-duration:
		decrease liquorice-timer by time-seconds;
		if liquorice-timer <= default-candy-duration:
			say "[bold type]The strength decreasing effects of the liquorice have diminished.[roman type][line break]";
	otherwise if liquorice-timer > 0:
		decrease liquorice-timer by time-seconds;
		if liquorice-timer <= 0:
			say "[bold type]The strength decreasing effects of the liquorice have disappeared![roman type][line break]";
			now liquorice-timer is 0.

To compute (M - a robochef) cooking (I - a liquorice):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 0 and -2;
		now the fat of D is 1;
		now D is retained by M.


Liquorice ends here.

