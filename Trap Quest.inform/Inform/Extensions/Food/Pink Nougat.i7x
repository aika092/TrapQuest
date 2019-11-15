Pink Nougat by Food begins here.

A pink nougat is a kind of candy. The printed name of pink nougat is "[TQlink of item described]pink nougat[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of pink nougat is "[TQlink of item described]pink nougats[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pink nougat is "png". There are 2 pink nougats.

Definition: a pink nougat is pink themed: decide yes.

Figure of pink nougat is the file "Items/Collectibles/pinknougat1.jpg".


To decide which figure-name is the examine-image of (C - a pink nougat):
	decide on figure of pink nougat.

To say ExamineDesc of (C - a pink nougat):
	say "A small pink nougat with nuts. It glistens slightly, almost as if it is made of pure energy. It seems likely to increase your blood flow, which should hopefully increase your strength for a while.".

pink-nougat-timer is a number that varies.

To decide which number is the crafting key of (C - a pink nougat):
	decide on 40.

To say ShortDesc of (C - a pink nougat):
	say "pink nougat".

To say DevourFlav of (C - a pink nougat):
	say "You chew on the nutty sweet for a few moments before swallowing the delicious treat. ".

Carry out TQeating pink nougat:
	say "[DevourFlav of the noun] As the candy reaches your stomach you suddenly feel ";
	if a random number between 1 and 4 is 1 and (diaper quest is 0 or diaper messing < 3):
		say "an overpowering arousal flood your entire body. You can actually feel your pupils dilate as your heartbeat thumps loud and fast. [line break][variable custom style][one of]Uh-oh, it seems like some of these nougats increase a different kind of blood flow...[or][if the bimbo of the player < 7]Oh god, I wanted strength, not this again![otherwise if the bimbo of the player < 14 and the player is able to automatically masturbate]Oh no, not again! I should find somewhere private to sort myself out.[otherwise]Ooh, I need to cum so bad... I'm sure someone here can help me...[end if][stopping][roman type][line break]";
		now refactoryperiod is 0;
		arouse 7000;
		check for arousal change;
	otherwise:
		say "a surge of energy down your arms. You feel yourself getting [if pink-nougat-timer > 0]even [end if]stronger!";
		increase pink-nougat-timer by default-candy-duration.

a time based rule (this is the pink nougat decay rule):
	if pink-nougat-timer > default-candy-duration:
		decrease pink-nougat-timer by time-seconds;
		if pink-nougat-timer <= default-candy-duration:
			say "[bold type]The strength improving effects of the nougat have decreased.[roman type][line break]";
	otherwise if pink-nougat-timer > 0:
		decrease pink-nougat-timer by time-seconds;
		if pink-nougat-timer <= 0:
			say "[bold type]The strength improving effects of the nougat have ended.[roman type][line break]";
			now pink-nougat-timer is 0.

To compute (M - a robochef) cooking (I - a pink nougat):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 2 and 0;
		now the fat of D is 3;
		now D is retained by M.


Pink Nougat ends here.

