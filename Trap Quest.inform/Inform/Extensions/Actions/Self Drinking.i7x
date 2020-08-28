Self Drinking by Actions begins here.

Check drinking breasts:
	try SelfDrinking breasts instead.

[This action is the player drinking their own breasts.]
SelfDrinking is an action applying to one thing.

Check SelfDrinking:
	if the noun is not breasts, say "This verb can't be used for that!" instead;
	if the milkskill of the player is 0, say "[variable custom style]I don't really see how that would work.[roman type]" instead;
	if the milk volume of breasts is 0, say "Your [ShortDesc of breasts] are empty of [milk]." instead;
	if the largeness of breasts < 7, say "Your [ShortDesc of breasts] are [if the largeness of breasts < 5]nowhere near[otherwise]not[end if] big enough." instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the player is wrist bound behind, say "You would need the proper use of your arms and hands for that." instead;
	if there is worn actually nipple covering clothing, say "Your nipples are not exposed." instead.

Carry out SelfDrinking:
	allocate 6 seconds;
	MilkDown 2;
	FaceFill milk by 2;
	say "You [if the player is proud]cringe with humiliation[otherwise]giggle nervously[end if] as you bring your own nipple to your mouth. You suck gently, [one of]surprised about how amazing it feels. Feeling your own nipple stiffen with arousal, so it pokes into the soft flesh of your lips, sends a humiliating surge of excitement straight to your groin. You can't resist flicking the erect bud with your tongue, and even gently biting on it as you suck. Or [i]suckle[/i], really. You flush with the knowledge that you're both lactating and drinking yourself, like some hot, slutty babe in a porno, and a curious thrill of shame ripples through you at the thought of what your friends would think if they could see you now.[if the size of penis < 3] You burn with hot shame as your tongue tells you your [i]nipple[/i] is now bigger than your [PenisFlavour real size of penis]![otherwise if the size of penis < 4] You realise your nipple isn't [i]that[/i] much smaller than your [PenisFlavour real size of penis]![end if] It doesn't stop you, though[or]enjoying the delicate pleasurable feeling[or]once again enjoying the stimulation[stopping]. You shiver with pleasure as the [milk] exits your body and re-enters onto your tongue. It tastes great and you swallow it greedily.";
	slightHumiliate;
	say "[if the player is not disgraced][line break][variable custom style]Yes it was humiliating, but at least it was tasty![otherwise][line break][second custom style]Oh my, I'm such a naughty girl, drinking my own [milk] straight from the tap![end if][roman type][line break]";
	if the total volume of face > 0, suggest swallowing;
	if the milk volume of face > 0, MilkTasteAddictUp 1. [You can't avoid the taste addiction increase by not swallowing]

Self Drinking ends here.
