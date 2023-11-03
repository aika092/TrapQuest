Drinking by Actions begins here.

autodrink is a number that varies.
drinking-target is an object that varies.

The global drinkability rules is a rulebook.
The default drinkability rules is a rulebook.
A bottle has a rulebook called drinkability rules. The drinkability rules of a bottle is usually the default drinkability rules.

Definition: a bottle (called B) is actually drinkable:
	now drinking-target is B;
	follow the drinkability rules of B;
	if the rule failed:
		now drinking-target is nothing;
		decide no;
	follow the global drinkability rules;
	if the rule failed:
		now drinking-target is nothing;
		decide no;
	now drinking-target is nothing;
	decide yes.

Definition: yourself is resisting taste addiction:
	if the player is taste obsessed:
		let DT be drinking-target;
		if DT is nothing, now DT is the noun;
		if DT is bottle:
			if debugmode > 0, say "[input-style]Fill colour of [MediumDesc of DT] is [fill-colour of DT].[roman type][line break]";
			let L be water;
			if the fill-colour of DT is creamy, now L is semen;
			if the fill-colour of DT is golden, now L is urine;
			if the fill-colour of DT is white, now L is milk;
			if DT is cursed or (the fill-type of DT >= lowest-cursed and the fill-type of DT <= highest-cursed):
				if DT is squirt dildo or (DT is teapot and diaper quest is 0), now L is semen;
				if DT is baby's bottle or DT is novelty mug, now L is milk;
			if L is highest addicted liquid, decide no;
		if DT is DungeonScenery01 and semen is highest addicted liquid, decide no;
		if DT is cock pacifier and semen is highest addicted liquid, decide no;
		if DT is breasts and milk is highest addicted liquid, decide no;
		decide yes;
	decide no.

This is the addicts refuse to drink other liquids rule:
	if the player is resisting taste addiction:
		if autodrink is 0:
			if the player is taste engulfed:
				say OnlyDrinksSemen;
				rule fails;
			otherwise:
				say "You are so obsessed with drinking [AddictedFluids] that you will feel rubbish for a while after drinking this. Are you sure you want to?";
				if the player is not consenting:
					say "Action cancelled.";
					rule fails;
		otherwise:
			rule fails.
The addicts refuse to drink other liquids rule is listed last in the global drinkability rules.

This is the just use your mouth to drink rule:
	if drinking-target is carried and (the player is not able to use their hands or the player is wrist bound behind):
		if autodrink is 0, say "Since you don't have the use of your hands, you're going to have to put that on the ground[if the player is upright] and kneel down[end if] if you want to drink it.";
		rule fails.
The just use your mouth to drink rule is listed in the global drinkability rules.

This is the empty bottles can't be drunk rule:
	if drinking-target is empty bottle:
		if autodrink is 0, say "The [ShortDesc of drinking-target] is empty.";
		rule fails.
The empty bottles can't be drunk rule is listed in the global drinkability rules.

This is the bottles can't be drunk while inside you rule:
	if drinking-target is penetrating a fuckhole:
		if autodrink is 0, say "How would you manage that while it's inside of you?";
		rule fails.
The bottles can't be drunk while inside you rule is listed in the global drinkability rules.

Check drinking food:
	try eating the noun instead.

Check drinking pink pill:
	try eating the noun instead.

To say OnlyDrinksSemen:
	say "[second custom style]I won't drink that, [one of]it'll fill up my stomach and then I won't be able to drink as much [AddictedFluids]![or]I am on a strict diet of [AddictedFluids].[cycling][roman type][line break]".

To say AddictedFluids:
	say "[list of highest addicted liquid liquid-objects]".

Understand "suck [something]", "suck on [something]", "gulp [something]", "gulp from [something]", "drink from [something]", "dr [something]", "dri [something]" as drinking.

Check drinking a bottle:
	if the noun is not actually drinkable, do nothing instead;
	if the noun is not held:
		if the player is prone or (the player is able to use their hands and the player is not wrist bound behind):
			try taking the noun;
			if the noun is held:
				compute extra turn;
				if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type][line break]" instead;
		otherwise:
			say "You're going to have to kneel down if you want to drink that." instead;
	if the noun is not held, do nothing instead; [We need to double check that the player still has the drink. The Drink Me Tattoo, for example, could cause it to have already been consumed during the above 'compute extra turn' function.]
	if autodrink is 0 and the player is overly full and the stomach-water of the player > 2:
		say "You are already feeling very full. Are you sure you want to force even more down (you will have a significantly reduced chance of gaining positive effects)? ";
		unless the player is bimbo consenting, do nothing instead.

Carry out drinking a bottle when the player is prone:
	if the noun is not held, say "You bend forward and grab the [noun] with your teeth.".

Definition: an object is drinkable: decide no.
Definition: a bottle is drinkable: decide yes.
Definition: DungeonScenery01 is drinkable: decide yes.
Definition: water-body is drinkable: decide yes.
Definition: water-body-scenery is drinkable: decide yes.
Definition: lubricant is drinkable: decide yes.
Definition: cock pacifier is drinkable: decide yes.
Definition: pedestal is drinkable: decide yes.

Definition: yourself (called Y) is able to drink:
	if the latex-transformation of the player > 4:
		if autodrink is 0, say "You can no longer drink, you're too far through your transformation into a doll and your body doesn't need hydration any more.";
		decide no;
	if drinking-target is a thing and drinking-target is not breasts:
		if drinking-target is not drinkable:
			if autodrink is 0, say "How would you drink that?";
			decide no;
		if drinking-target is not held and the player is flying:
			if autodrink is 0, say "You can't reach!";
			decide no;
	if face is actually occupied:
		let T be a random thing penetrating face;
		if T is cock pacifier and T is cursed:
			unless the drinking-target is cock pacifier:
				if autodrink is 0, say "The cock pacifier is so tightly connected to your face that there's no way you can drink anything else with it on!";
				decide no;
		otherwise if T is cursed ballgag and drinking-target is held bottle:
			if T is baby pacifier or (autodrink is 0 and (artificial enhancements fetish is 0 and a random number between 1 and 3 > 1) or (artificial enhancements fetish is 1 and a random number between the lips of face and 5 > 2)):[3 > 2!]
				if autodrink is 0, say "You manage to stretch your [LipDesc] wide enough to get some past your [ShortDesc of T].";
			otherwise if autodrink is 0:
				if the doses of drinking-target is 1:
					say "You try to stretch your [LipDesc] wide enough to get some past your [ShortDesc of T], but you don't manage it! The liquid drips down your chin to the ground.";
					DoseDown drinking-target;
					if drinking-target is can:
						say "You discard the empty can.";
						destroy drinking-target;
						decide no;
					otherwise:
						say "The [ShortDesc of drinking-target] is now empty.";
						decide no;
				otherwise:
					DoseDown drinking-target;
					say "You try to stretch your [LipDesc] wide enough to get some past your [ShortDesc of T], but you don't manage it! The liquid drips down your chin to the ground.";
					decide no;
		otherwise:
			if autodrink is 0, say "The [T] is preventing you from doing that!";
			decide no;
	decide yes.

Check drinking:
	now drinking-target is the noun;
	if the player is not able to drink:
		now drinking-target is nothing;
		do nothing instead;
	now drinking-target is nothing.

Check drinking a dispenser:
	say "You can't reach!" instead.

Check drinking an alchemy product:
	try quaffing the noun instead.

Check drinking water-body-scenery:
	try drinking water-body instead.

Check drinking water-body:
	if a random lake monster is in the location of the player, say "You don't dare go near the tentacle monster." instead;
	allocate 2 seconds;
	say "You try tasting it. Ugh, it tastes horrible! That is definitely not good for you. You [if the thirst of the player < 5]would rather faint[otherwise]stop[end if]." instead.

Carry out drinking water-body:
	say "You place your lips in the water and sip. It tastes healthy enough[if the thirst of the player > 2] and quenches your thirst[end if].";
	allocate 6 seconds;
	StomachUp 2;
	if the stomach-water of the player < 0, now the stomach-water of the player is 0.

Carry out drinking a vessel:
	allocate 6 seconds;
	if the noun is a squirt dildo:
		say "You put the dildo in your mouth and squeeze. You gulp down the liquid that comes out.";
		moderateHumiliate;
	if the noun is a baby's bottle:
		say "You put the bottle in your mouth and suck. You gulp down the liquid as it comes out.";
		moderateHumiliate;
	compute drinking the noun;
	if the fill-colour of the noun is not creamy and the fill-colour of the noun is not golden and the fill-colour of the noun is not white and the fill-colour of the noun is not murky, StomachUp 2;
	DoseDown the noun;
	if the doses of the noun is 0, say "[BigNameDesc of the noun] is now empty.".


tasteAddictionPenaltyTime is a number that varies.

To decide which number is TasteAddictionCooldown:
	decide on 300.

Report drinking:
	if the player is resisting taste addiction, compute taste addiction resist punishment.

To compute taste addiction resist punishment:
	increase tasteAddictionPenaltyTime by TasteAddictionCooldown;
	say "[bold type]Drinking something other than [AddictedFluids] is making you feel very low! [roman type]Your intelligence will be reduced for [if tasteAddictionPenaltyTime > TasteAddictionCooldown]a few minutes more, and by even more than before[otherwise]a few minutes[end if].".


An all time based rule (this is the taste addiction penalty cooldown rule):
	if tasteAddictionPenaltyTime > 0 and the player is not in a predicament room:
		let pTA be the remainder after dividing tasteAddictionPenaltyTime by TasteAddictionCooldown;
		decrease tasteAddictionPenaltyTime by time-seconds;
		if pTA <= time-seconds:
			say "[bold type]Your intelligence has [if tasteAddictionPenaltyTime > 0]partially [end if]recovered from feeling low after failing to follow your [AddictedFluids] diet.[roman type][line break]";
			if tasteAddictionPenaltyTime < 0, now tasteAddictionPenaltyTime is 0;



Report drinking a vessel:
	if the doses of the noun is 0, cancel father material of the noun.

Carry out drinking a carried bottle:
	force inventory-focus redraw. [Forces redraw of inventory window]

The block drinking rule is not listed in the check drinking rulebook.

Check drinking breasts:
	if the milkskill of the player is 0, say "[variable custom style]I don't really see how that would work.[roman type][line break]" instead;
	if the milk volume of breasts is 0, say "Your [ShortDesc of breasts] are empty of [milk]." instead;
	if the largeness of breasts < 7, say "Your [ShortDesc of breasts] are [if the largeness of breasts < 5]nowhere near[otherwise]not[end if] big enough." instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the player is wrist bound behind, say "You would need the proper use of your arms and hands for that." instead;
	now drinking-target is breasts;
	if the player is not able to drink, do nothing instead;
	if there is worn actually nipple covering clothing, say "Your nipples are not exposed." instead;
	allocate 6 seconds;
	MilkDown 2;
	FaceFill milk by 2;
	say "You [if the player is proud]cringe with humiliation[otherwise]giggle nervously[end if] as you bring your own nipple to your mouth. You suck gently, [one of]surprised about how amazing it feels. Feeling your own nipple stiffen with arousal, so it pokes into the soft flesh of your lips, sends a humiliating surge of excitement straight to your groin. You can't resist flicking the erect bud with your tongue, and even gently biting on it as you suck. Or [i]suckle[/i], really. You flush with the knowledge that you're both lactating and drinking yourself, like some hot, slutty babe in a porno, and a curious thrill of shame ripples through you at the thought of what your friends would think if they could see you now. [if the player is possessing a penis and the size of penis < 3]You burn with hot shame as your tongue tells you your [i]nipple[/i] is now bigger than your [PenisFlavour real size of penis]! [otherwise if the player is possessing a penis and the size of penis < 4]You realise your nipple isn't [i]that[/i] much smaller than your [PenisFlavour real size of penis]! [end if]It doesn't stop you, though[or]enjoying the delicate pleasurable feeling[or]once again enjoying the stimulation[stopping]. You shiver with pleasure as the [milk] exits your body and re-enters onto your tongue.";
	slightHumiliate;
	if the player is resisting taste addiction:
		compute taste addiction resist punishment;
	otherwise:
		say "[if the player is not disgraced][line break][variable custom style]Yes it was humiliating, but at least it was tasty![otherwise][line break][second custom style]Oh my, I'm such a naughty girl, drinking my own [milk] straight from the tap![end if][roman type][line break]";
	suggest swallowing with milk consequences; [You can't avoid the taste addiction increase by not swallowing]
	do nothing instead.

Swallowing is an action applying to nothing.
Check Swallowing:
	let T be a random actual throater thing penetrating face;
	if T is a thing, say "[BigNameDesc of T] is inside your throat, making this impossible." instead.
Carry Out Swallowing:
	allocate 3 seconds;
	compute swallowing.
Understand "swallow" as swallowing.

Spitting is an action applying to nothing.
Check Spitting:
	let T be a random thing penetrating face;
	if T is a thing, say "[BigNameDesc of T] is blocking your mouth, making this impossible." instead.
Carry Out Spitting:
	allocate 3 seconds;
	let collecting be nothing;
	if the total volume of face > 0 and the player is not flying and (the player is not in a nonstandard room or the player is in a predicament room) and the player is not immobile:
		let LV be a list of things;
		repeat with V running through carried lid topped vessels:
			add V to LV;
		repeat with V running through carried open topped vessels:
			add V to LV;
		if the player is upright:
			if there is a monster in the location of the player, add yourself to LV;
			if HotelScenery04 is in the location of the player, add HotelScenery04 to LV;
		repeat with P running through closed pedestals in the location of the player:
			if P is fertile or P is chilled or P is parched, add P to LV;
		if the location of the player is not use-the-floor:
			if water-body is in the location of the player:
				let T be a random water-body-scenery in the location of the player;
				if T is water-body-scenery:
					add T to LV;
				otherwise:
					add water-body to LV;
			otherwise if the location of the player is urinals:
				add urinal to LV;
			otherwise:
				add toilet to LV;
		if HotelScenery01 is in the location of the player, add HotelScenery01 to LV;
		if the number of entries in LV > 0:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			truncate LV to 9 entries;
			say "Where do you want to spit the liquid?[line break]";
			let L be mouthful-liquid;
			repeat with V running through LV:
				if V is bottle:
					set next numerical response to "Into the [ShortDesc of V][unless the doses of V is 0 or (L is semen and the fill-colour of V is creamy) or (L is urine and the fill-colour of V is golden) or (L is milk and the fill-colour of V is white) or (L is murkwater and the fill-colour of V is murky)] (You'll lose its current contents of [PotionType of V])[end if]";
				otherwise if V is pedestal:
					set next numerical response to "Into the [V] (which contains [a list of things in V])";
				otherwise if V is yourself:
					set next numerical response to "Someone's face";
				otherwise:
					set next numerical response to "[BigNameDesc of V]";
			set numerical response 0 to "spit onto the ground";
			compute multiple choice question;
			if player-numerical-response > 0, now collecting is entry player-numerical-response in LV;
	if collecting is a thing:
		let L be water;
		if urine volume of face > 0:
			if semen volume of face > 0 or milk volume of face > 0, now L is murkwater;
			otherwise now L is urine;
		otherwise if milk volume of face > 0:
			if semen volume of face > 0, now L is murkwater;
			otherwise now L is milk;
		otherwise:
			now L is semen;
		if collecting is yourself:
			let LM be the list of monsters in the location of the player;
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			truncate LM to 10 entries;
			say "At whom do you wish to spit?[line break]";
			repeat with M running through LM:
				set next numerical response to "[BigNameDesc of M]";
			compute multiple choice question;
			let M be entry player-numerical-response in LM;
			say "You unleash the [L] right into [NameDesc of M][']s face!";
			if the blind-status of M is not -1:
				let BS be 2;
				if L is not urine and the total volume of face > 1, now BS is the total volume of face;
				increase the blind-status of M by BS;
				say "[big he of M] is [if BS is 2]briefly [otherwise if BS > 3]significantly [end if]blinded!";
			if M is friendly or M is not interested, compute standard damage of M;
			repeat with RM running through reactive people:
				if M is not RM and the semen volume of face <= 0 and the urine volume of face <= 0:
					compute boring spit reaction of RM;
				otherwise:
					compute disgusting spit reaction of RM;
			MouthEmpty;
		otherwise:
			say "You let the [L] run out of your mouth and into [NameDesc of collecting].";
			if collecting is pedestal:
				compute PedestalFilling collecting with L by the total volume of face;
			otherwise if collecting is HotelScenery01:
				now the noun is a random off-stage can;
				if the noun is can:
					if L is semen, now the fill-colour of the noun is creamy;
					if L is urine, now the fill-colour of the noun is golden;
					if L is milk, now the fill-colour of the noun is white;
					if L is murkwater, now the fill-colour of the noun is murky;
					let T be nothing;
					let inspiration-understood be 0;
					if debugmode is 1, say "List of potential inspired tattoos: [list of drawable eligible tattoos].";
					if debugmode is 2:
						repeat with A running through tattoos:
							say "Looking at [A].";
							say "It is [unless A is eligible]not [end if]eligible.";
							say "It is [unless A is drawable]not [end if]drawable.";
					now T is a random drawable eligible tattoo;
					if T is tattoo:
						now inspiration-understood is 1;
					otherwise:
						now T is a random drawable tattoo;
					if T is tattoo:
						say "Metal robotic arms fly out of concealed holes in the ceiling and grab onto your limbs. They pin you to the table, with your head facing the screen. [if T is tattoo and inspiration-understood is 1]The screen now says 'Inspiration understood.' [otherwise]The screen now says 'Inspiration not understood, selecting template at random.' [end if][inking-flav]Another arm descends carrying a mirror, to allow you to see your new ink:[line break]";
						summon T;
						try examining T;
						now focused-thing is T;
					otherwise:
						say "The screen says 'ERROR: Canvas already full. No appropriate templates found.' The arms let go of you and recede into the ceiling.";
			otherwise if collecting is bottle:
				unless (L is semen and the fill-colour of collecting is creamy) or (L is urine and the fill-colour of collecting is golden) or (L is milk and the fill-colour of collecting is white) or (L is murkwater and the fill-colour of collecting is murky):
					dump collecting;
					if L is semen, now the fill-colour of collecting is creamy;
					if L is urine, now the fill-colour of collecting is golden;
					if L is milk, now the fill-colour of collecting is white;
					if L is murkwater, now the fill-colour of collecting is murky;
				SetDose collecting to (the total volume of face + 1) / 2;
				now the drink-origin of collecting is the drink-origin of face;
				compute father material of face into collecting;
			repeat with M running through reactive people:
				if the semen volume of face <= 0 and the urine volume of face <= 0:
					compute boring spit reaction of M;
				otherwise:
					compute disgusting spit reaction of M;
			MouthEmpty;
	otherwise:
		compute spitting;
	if the implant of pledge-lesson-spit is 1:
		say "[second custom style]Only prudes spit![bold type][line break]The magic pledge you've just broken activates. [roman type]You become extremely tired and thirsty!";
		StomachDown 40;
		now the fatigue of the player is the buckle threshold of the player;
	if the player is in a predicament room and current-predicament is gloryhole-predicament:
		increase the semen-spat of gloryhole-predicament by 1;
		if the semen-spat of gloryhole-predicament is 1, say "[variable custom style]I'm going to have earned a penalty point from doing that.[roman type][line break]".
Understand "spit", "spit on ground", "spit on the ground", "spit on floor", "spit on the floor" as spitting.
This is the automatic spitting rule:
	let nextTimeFlav be false;
	if the semen volume of face > 0 and the semen taste addiction of the player is 1:
		compute addictive tasting of semen;
		now nextTimeFlav is true;
	if the urine volume of face > 0 and the urine taste addiction of the player is 1:
		compute addictive tasting of urine;
		now nextTimeFlav is true;
	if the milk volume of face > 0 and the milk taste addiction of the player is 1:
		compute addictive tasting of milk;
		now nextTimeFlav is true;
	try spitting;
	if nextTimeFlav is true, say "[variable custom style]...Whoops. Okay, that was unfortunate. But next time, I'll be able to hold it. I think.[roman type][line break]".

Drinking ends here.
