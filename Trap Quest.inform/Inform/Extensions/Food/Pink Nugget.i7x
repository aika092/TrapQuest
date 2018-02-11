Pink Nugget by Food begins here.

A pink nugget is a kind of candy. The printed name of pink nugget is "[TQlink of item described]pink nugget[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of pink nugget is "[TQlink of item described]pink nuggets[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pink nugget is "png". The description of pink nugget is "A small pink sweet, still in its wrapper. It glistens slightly, almost as if it is made of pure energy. It seems likely to increase your blood flow, which should hopefully increase your strength for a while.". There are 2 pink nuggets.

pink-nugget-timer is a number that varies.

To decide which number is the crafting key of (C - a pink nugget):
	decide on 40.

To say ShortDesc of (C - a pink nugget):
	say "pink nugget".

To say DevourFlav of (C - a pink nugget):
	say "You unwrap the [C] and pop the small sweet into your mouth before swallowing it whole. ".

Carry out TQeating pink nugget:
	say "[DevourFlav of the noun] As the candy reaches your stomach you suddenly feel ";
	if a random number between 1 and 4 is 1:
		now auto is 1; [required for able to masturbate check to not spit out flavour]
		say "an overpowering arousal flood your entire body. You can actually feel your pupils dilate as your heartbeat thumps loud and fast. [line break][variable custom style][one of]Uh-oh, it seems like some of these nuggets increase a different kind of blood flow...[or][if the bimbo of the player < 7]Oh god, I wanted strength, not this again![otherwise if the bimbo of the player < 14 and the player is able to masturbate]Oh no, not again! I should find somewhere private to sort myself out.[otherwise]Ooh, I need to cum so bad... I'm sure someone here can help me...[end if][stopping][roman type][line break]";
		now auto is 0;
		now refactoryperiod is 0;
		arouse 7000;
		check for arousal change;
	otherwise:
		say "a surge of energy down your arms. You feel yourself getting [if pink-nugget-timer > 0]even [end if]stronger!";
		increase pink-nugget-timer by default-candy-duration.

a time based rule (this is the pink nugget decay rule):
	if pink-nugget-timer > default-candy-duration:
		decrease pink-nugget-timer by time-seconds;
		if pink-nugget-timer <= default-candy-duration:
			say "[bold type]The strength improving effects of the pink nugget have decreased.[roman type][line break]";
	otherwise if pink-nugget-timer > 0:
		decrease pink-nugget-timer by time-seconds;
		if pink-nugget-timer <= 0:
			say "[bold type]The strength improving effects of the pink nugget have ended.[roman type][line break]";
			now pink-nugget-timer is 0.

To compute (M - a robochef) cooking (I - a pink nugget):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 2 and 0;
		now the fat of D is 3;
		now D is retained by M.


Pink Nugget ends here.

