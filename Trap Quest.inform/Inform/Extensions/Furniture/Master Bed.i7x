Master Bed by Furniture begins here.

A master bed is a kind of furniture. There is 1 master bed. The printed name of master bed is "[TQlink of item described]master bed[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "master", "bed" as master bed. The text-shortcut of master bed is "vmb". A master bed has a number called charge.

To say ExamineDesc of (C - a master bed):
	say "A huge bed with black sheets and a heavy scarlet comforter, which is stencilled with a strangely mesmerising pattern. The pillows are large, embroidered with the same pattern on the blankets, and purposefully arranged around the headboard. It looks impossibly comfortable, and a weird twinge in the back of your mind tells you it's just as sturdy.".

To decide which figure-name is the examine-image of (C - a master bed):
	decide on figure of hotel bed.

Definition: yourself is bed-stuck:
	if there is a furniture grabbing it, decide yes;
	decide no.

[NO COLLAR:

vampiress:
bed "drains" the player. Fatigue and arousal increased for every point of body soreness healed. Being very horny when entering the bed may attract the vampiress.

no vampiress:
bed "drains" the player. Fatigue and arousal increased for every point of body soreness healed. Being very horny upon entering the bed may summon a collar for the player.

vampiress gone:
doubled fatigue and body soreness recovery rate.

]

[COLLAR:

vampiress:
doubled fatigue and body soreness recovery rate. Depending on how satiated the vampiress is, may summon her. Arousal increases slowly.

no vampiress:
doubled fatigue and body soreness recovery rate. Arousal increases over time. There is a random effect when the player finishes resting.
vampiress gone:
doubled fatigue and body soreness recovery rate.
]

To compute furniture resting on (F - a master bed):
	let V be a random alive vampiress;
	if V is monster and the refractory-period of V <= 0 and (there is a worn submissive collar or the player is horny):
		if there is a worn submissive collar:
			say "You climb onto the bed and begin to pull back the covers, but a sudden flash of warmth from your collar makes you stop what you're doing, turn around, and immediately lay spread-eagled over the comforter.[line break][variable custom style]'Wait, what?'[roman type][line break]Glowing pink chains billow out from underneath the bed, instantly latching onto your wrists and ankles, securing them to the bedposts.[line break][second custom style]'My mistress will be here to take me shortly.'[roman type][line break]";
		otherwise:
			say "You climb onto the bed and begin to pull back the covers, but a sudden rush of warmth makes you stop what you're doing, turn around, and immediately lay spread-eagled over the comforter. Just as the feeling ends, glowing pink chains billow out from underneath the bed, latching onto your limbs and securing them to the bedposts before you regain full control of your body. A strange thought comes to the front of your mind, but for some reason you know it belongs to someone else[line break][second custom style]'My mistress will be here to take me shortly.'[roman type][line break]";
		now V is interested;
		anger V;
		now the stance of the player is 1;
		compute chain rest of F;
	otherwise:
		if there is a worn submissive collar and the player is horny and V is nothing:
			now V is a random off-stage vampiress;
			set up V;
			say "You climb onto the bed and slip under the covers. The normally soft mattress is as hard as rock, and the sheets seem to bristle excitedly at your presence. Waves of heat blossom from the silky throw-pillows, and suddenly, shrieking bats burst out from underneath the bed, filling the air with deafening shrieks as they converge on the space in front of the doorway. Their bodies become harder and harder to tell apart from one another as their cries slowly lower in pitch, and patches of chalky white flesh begin to peek out between the vigorously flapping wings. The covers suddenly fly off the bed, leaving you totally exposed as a [printed name of V] steps out of the swirling mass of bats, grinning at you as the rest of the flock disperses through a small open window near the ceiling.[line break][speech style of V]'I can practically taste your anticipation, darling. Offer yourself to your new mistress and prepare to be satisfied!'[roman type][line break]";
			now V is interested;
			anger V;
			now the stance of the player is 1;
		otherwise if the player is very horny and lipstick collar is actually summonable:
			say "You climb onto the bed and slip under the covers. The normally soft mattress is as hard as rock, and the sheets seem to bristle excitedly at your presence. Comfortable waves of heat blossom from the silky throw-pillows cradling your head, and you feel a tingling sensation along the nape of your neck, like a tongue on your skin slowly tracing its way all the way around. You hear a sound like someone breathily moaning in your ear as a leather collar materialises around your neck.";
			summon lipstick collar cursed;
		otherwise if there is a worn submissive collar:
			say "You climb into the bed and slip under the covers. The mattress is even more comfortable than you expected it to be, cradling your body as if it were made of wisps of cloud.";
		otherwise:
			say "You climb into the bed and slip under the covers. The mattress is lumpy, and the bedding is so thick it feels a bit humid under the covers, but it's better than lying on the ground.";
		compute normal rest of F.

To compute chain rest of (F - a master bed):
	now F is grabbing the player;
	let V be a random alive vampiress;
	let N be 5;
	while V is not in the location of the player and N > 0:
		if diaper quest is 0, say "[one of]Images of being face-fucked by [italic type]your [literalMistress of V][roman type] force their way into your mind.[or][line break][second custom style]I want to feel my [literalMistress of V] cum.[roman type][line break][or]An image of a pale [manly-penis] flashes in your vision, covered in your spit.[or]Your thoughts swirl around an image of yourself on all fours[or][line break][second custom style]My [literalMistress of V] needs a warm hole.[roman type][line break][or]You hear your own voice echoing inside your head, moaning breathlessly as [italic type]your [literalMistress of V][roman type] takes you.[or][line break][second custom style]My [literalMistress of V] makes me so horny.[roman type][line break][then at random]";
		otherwise say "[one of]Images of being pampered by [italic type]your [literalMistress of V][roman type] force their way into your mind.[or][line break][second custom style]I want to feel my [literalMistress of V]'s hand on my padding.[roman type][line break][or]An image of two pale, round breasts flashes in your vision, dripping with [italic type]delicious [milk][roman type].[or]Your thoughts swirl around an image of yourself on all fours[or][line break][second custom style]My [literalMistress of V] needs a new slave.[roman type][line break][or]You hear your own voice echoing inside your head, moaning breathlessly as [i]your [literalMistress of V][/i]cuddles you.[or][line break][second custom style]My [literalMistress of V] makes me so horny.[roman type][line break][then at random]";
		decrease N by 1;
		compute extra turn;
	unless V is in the location of the player:
		say "You hear high pitched shrieking as dozens of bats fly in through some narrow, high windows, converging in a twisting mass of flapping wings and black fur. Just as suddenly as they appeared, the bats disperse, leaving a [printed name of V] standing in the doorway.";
		now V is in the location of the player;
	say "[speech style of V]'Mmm, what do we have here?'[roman type][line break][big he of V] purrs, snapping [his of V] fingers as the chains release you and recede back into the bed.";
	now F is not grabbing the player.

To compute normal rest of (F - a master bed):
	now resting is 1;
	compute fat burning reset;
	now the stance of the player is 1;
	now the alert of the player is 0;
	while the fatigue of the player > 0 and the alert of the player is 0 and there is a worn submissive collar:[player must be wearing a collar to lose fatigue]
		compute fatigue refresh of F;
	while the body soreness of the player > 0 and the alert of the player is 0:
		compute soreness refresh of F;
	if the alert of the player is 1:
		compute alerting of F;
	otherwise:
		compute rest completion of F;
	now resting is 0;
	compute rest ending of F.

To say RestingDesc of (F - a master bed):
	if there is a worn submissive collar:
		say "You continue to rest on the [one of]soft[or]luxurious[or]comfortable[at random] mattress. The covers seem to massage your body, shifting ever so slightly as they drain the soreness and fatigue from your muscles.";
	otherwise:
		say "You continue to rest on the lumpy mattress. The warmth continues to intensify, sapping your strength the longer you remain under the covers.";
	unless there is an alive vampiress, say "[one of][line break]You hear something very faint, almost like a whisper. Something about it makes you feel incredibly turned on.[or][or][or][cycling]".

To compute unique fatigue effect of (F - a master bed):
	FatigueDown 1;[fatigue loss is doubled]
	if there is an alive vampiress, Arouse 20;
	otherwise Arouse 40.

To compute unique soreness effect of (F - a master bed):
	if there is a worn submissive collar:
		BodyHeal 1;[healing rate is doubled. Remember, computeFurnitureSorenessRefresh calls BodyHeal 1 already,]
		if there is an alive vampiress, Arouse 100;
		otherwise Arouse 200;
	otherwise:
		FatigueUp 2;[this way there should be a net gain of fatigue]
		if there is an alive vampiress, Arouse 10;
		otherwise Arouse 20.

To compute rest completion of (F - a master bed):
	if there is a worn submissive collar and vampiress is not alive:
		let A be the arousal of the player / 1000;
		say "You feel completely rested, but instead of throwing off the covers and climbing out of bed, you find yourself huddling even deeper under the sheets, eyes fluttering as your body tries to go to sleep.[line break]";
		if a random number between 5 and (the intelligence of the player - A) < 7:
			[let R be a random number between 1 and 3;]
			let V be vampiress;
			say "Shaking your head doesn't make the lethargy go away, but you manage to will yourself to pull off the blankets and sit up on the side of the bed. Someone clears their throat, and you look up to see your lover standing in the doorway, both hands on [his of V] hips. You share an electrifying stare with each other as [he of V] saunters across the room, anticipation blossoming in your belly[run paragraph on]";
			if diaper quest is 0:
				say " as [his of V] [DickDesc of V] quickly grows erect.[line break][first custom style]'You were looking forward to this, weren't you, darling?'[roman type][line break]You nod, tenderly [if V is a balls-haver]fondling [his of V] balls[otherwise]caressing [his of V] nether lips[end if] and pumping [his of V] shaft as you polish it with your tongue. It tastes like every delicious flavour in the world all wrapped up into one package, throbbing mouth-wateringly as you guide it fully into your mouth. You start to [i]suck[i], and the more you [i]keep sucking[/i], the better it tastes, and the more your hunger seems to grow. You [i]keep sucking[/i], knowing [his of V] [semen] will taste even better. If you [i]keep sucking[/i], you know you'll get the [semen], so you have to [i]keep sucking. Keep sucking. Keep sucking, [NameBimbo]. Keep sucking[/i]...[paragraph break]";
			otherwise:
				say ".[line break][first custom style]'You were looking forward to this, weren't you, darling?'[roman type][line break]You nod, tenderly fondling [his of V] breasts and tentatively flicking one of [his of V] nipples with your tongue. It tastes like every delicious flavour in the world all wrapped up into one package, and your mouth waters as you take it into your mouth. You begin to [i]suck[/i], and the more you [i]keep sucking[/i], the better it tastes, and the more your hunger seems to grow. You [i]keep sucking[/i], knowing [his of V] [milk] will taste even better. If you [i]keep sucking[/i], you know you'll get the [milk], so you have to [i]keep sucking. Keep sucking. Keep sucking, [NameBimbo]. Keep sucking[/i]...[paragraph break]";
			say "Your eyes snap open and you realise you're still lying in bed, half pulling back the covers. You shake the remnants of the dream from your head and climb out of the bed.";
			if diaper quest is 0, SemenTasteAddictUp 1;
			otherwise MilkTasteAddictUp 1;
		otherwise:
			say "You quickly shake your head, ousting the lingering lethargy as you remove the blankets and return to your feet.";
	otherwise:
		if the bimbo of the player < 11, say "[first custom style]I feel so much better![roman type][line break]";
		otherwise say "[second custom style]I'm full of energy again. Yum![roman type][line break]";
	now resting is 0;
	now auto is 1;
	try standing;
	now auto is 0.

Master Bed ends here.
