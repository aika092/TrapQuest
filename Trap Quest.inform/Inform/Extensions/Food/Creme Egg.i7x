Creme Egg by Food begins here.


A creme egg is a kind of candy. The printed name of creme egg is "[TQlink of item described]creme egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of creme egg is "[TQlink of item described]creme eggs[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of creme egg is "ce". There are 2 creme eggs.
To say ExamineDesc of (C - a creme egg):
	say "A small chocolate egg, still in its wrapper. A mystery filling awaits inside.".

Figure of creme egg is the file "Items/Collectibles/creme1.jpg".
Figure of golden creme egg is the file "Items/Collectibles/creme2.jpg".

To decide which figure-name is the examine-image of (F - creme egg):
	decide on figure of creme egg.


A golden creme egg is a kind of creme egg. There is 1 golden creme egg. The printed name of golden creme egg is "[TQlink of item described]golden creme egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of golden creme egg is "gce".
To say ExamineDesc of (C - a golden creme egg):
	say "A small chocolate egg with a mystery filling, still in its wrapper. Its golden wrapping indicates that it's of a higher quality than usual.".

Definition: a golden creme egg is top tier: decide yes.

To decide which figure-name is the examine-image of (F - a golden creme egg):
	decide on figure of golden creme egg.

creme-egg-timer is a number that varies.

To decide which number is the crafting key of (C - a creme egg):
	decide on 39.

To say ShortDesc of (C - a creme egg):
	say "creme egg".

To say DevourFlav of (C - a creme egg):
	say "You unwrap the [C] and pop the entire thing into your mouth before biting into it. ".

Carry out TQeating creme egg:
	say "[DevourFlav of the noun] As your tongue hits the centre, you ";
	if a random number between 1 and 4 is 1 and (diaper quest is 0 or diaper messing < 3):
		if diaper quest is 1 or (diaper lover > 0 and a random number between 1 and 2 is 1):
			if diaper messing >= 4 and a random number between 1 and 3 > 1:
				say "taste something extremely sour. [line break][variable custom style]Castor oil[one of][or] again[stopping]?![roman type][line break]Almost immediately you feel a growing pressure in your bowels...";
				increase suppository by 1;
			otherwise:
				say "taste something bitter. Moments later, you feel a slight twinge in your bladder as your control over it weakens.";
				increase incontinence by 1;
		otherwise:
			say "are [if the semen taste addiction of the player > 12]thrilled[otherwise if the semen taste addiction of the player > 8]surprised[otherwise if the semen taste addiction of the player > 4]dismayed[otherwise]disgusted[end if] to find that it is filled with [semen]!  You [if the semen taste addiction of the player > 10]happily swallow it[otherwise]reluctantly force it[end if] down.";
			StomachSemenUp 2;
	otherwise:
		say "find that the tasty tangy liquid sends a tingle down your legs. You feel yourself getting [if the noun is golden creme egg]much [otherwise if creme-egg-timer > 0]even [end if]faster!";
		if the noun is golden creme egg, increase creme-egg-timer by default-candy-duration;
		increase creme-egg-timer by default-candy-duration.

a time based rule (this is the creme egg decay rule):
	if creme-egg-timer > default-candy-duration:
		decrease creme-egg-timer by time-seconds;
		if creme-egg-timer <= default-candy-duration:
			say "[bold type]The dexterity improving effects of the creme egg have decreased.[roman type][line break]";
	otherwise if creme-egg-timer > 0:
		decrease creme-egg-timer by time-seconds;
		if creme-egg-timer <= 0:
			say "[bold type]The dexterity improving effects of the creme egg have ended.[roman type][line break]";
			now creme-egg-timer is 0.

To compute (M - a robochef) cooking (I - a creme egg):
	let D be a random off-stage truffle;
	if D is food:
		now the quality of D is a random number between 0 and -2;
		if D is golden creme egg, increase the quality of D by a random number between 1 and 2;
		now the fat of D is 2;
		if D is golden creme egg, increase the fat of D by 1;
		now D is retained by M.


Creme Egg ends here.

