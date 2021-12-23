Glue Trap by Traps begins here.

[Glue can be applied to clothing or (maybe) applied to certain objects like dildos?
 Maybe foes will later decide to do stuff like pull a hand free and stick it to your hip so they walk more like a sissy?
The stickiness of the player now acts as a simple counter, being reduced by various effects.
Stickiness starts as 3 + a random number between 1 and glue-strength / 4.
Strength is used to pull free: but if you pull free with too much strength, you can fall and get re-stuck - maybe worse.
 One day there might be one special glue trap that's a chair/bench with just a seat, back, and legs: i.e. the butt/groin poke through the back.
 "times-stuck": Count of how many times the player has been stuck. Previously used to make it easier to escape by dividing the target for escaping. That made it much too easier, after balancing for the 1st-time case. So now, it's just used to tell if you've just fallen. Hmm. Or maybe that's a kludge that only works the 1st time... ### Yeah. I think I'd need to use is as "already-stuck" and zero it when they escape. Seems a bit clumsy.
]

glu-colour is a kind of value. The glu-colours are pinkish, yellowish, blackish, whiteish.

[Limit how many glue traps, you want, in total, here. 3 means at most 1 in dungeon, at most 1 in hotel, the rest in the jungle: provided that code isn't commented out.]
A glue is a kind of thing. There are 3 glues. A glue has a number called glue-strength. A glue has a glu-colour called the active-colour. A glue has a number called smell-duration. A glue has a number called times-stuck. Understand the active-colour property as describing a glue. The active-colour of a glue is normally pinkish. The glue-strength of a glue is normally 14. The smell-duration of a glue is normally 4. [4 rounds] A glue can be full-strength or weakened. The printed name of glue is "[TQlink of item described]puddle of glue[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of glue is "glu". Understand "glu", "sticky", "blob", "adhesive" as glue. A glue is not portable.

Figure of Glue Cutscene 1 is the file "Special/Cutscene/cutscene-glue1.jpg".
Figure of Glue Cutscene 2 is the file "Special/Cutscene/cutscene-glue2.jpg".
Figure of Glue Trap is the file "Env/MultiFloor/glue1.jpg".
Figure of Glue Pool is the file "Env/MultiFloor/glue2.jpg".

To decide which figure-name is the examine-image of (G - a glue):
	if G is not grabbing the player, decide on figure of glue pool;
	if the stickiness of the player < 3, decide on Figure of Glue Cutscene 2;
	decide on Figure of Glue Cutscene 1.

Definition: a glue is TQedible: decide yes.

Carry out TQeating glue:
	say "You decide that would be a bad idea." instead.

To say ExamineDesc of (G - a glue):
	say "A [if G is full-strength][one of]faintly glowing[or]luminous[stopping] shiny [active-colour of g] patch of sticky exudate[otherwise]thick layer of rubbery-looking [active-colour of G] ooze. It looks like a cross between melted silly-putty and the coating they put on flypaper[end if].".

To say MediumDesc of (G - a glue):
	say "pool of [the active-colour of G] [if the glue is not full-strength]once-[otherwise]mildly [end if]sticky glue".

To say ShortDesc of (G - a glue):
	say "[the active-colour of G] glue".

Understand the glue-strength property as describing a glue.

Tearing off is an action applying to one thing.

[They can rub clothing in glue to soak up glue and weaken the bond. But if they later wear it, it will get stuck!]

A glue trap is a kind of trap. A glue trap can be industrial or organic. A glue trap is usually organic. There are 4 potentially click glue traps.

[!<GlueTrap>@<SayEnvironmentDesc>+

This is what is put in the room description when the trap is visible (revealed).

+@!]
To say EnvironmentDesc of (T - a glue trap):
	say "A [if T is organic]squishy looking rock has split down the middle[otherwise]nozzle sits overhead[end if] here, where glue previously burst out from. ".

To say ShortDesc of (T - a glue trap):
	say "glue trap".

[!<YourselfIsGlueStuck>+

Is there a puddle of glue grabbing the player? Selkie is unsure if this is redundant, given that a non-zero stickiness should indicate this.

+!]
Definition: yourself is glue stuck:
	repeat with G running through glue grabbing the player:
		if G is in the location of the player:
			decide yes;
		otherwise:
			now G is not grabbing the player;
			now the stickiness of the player is 0;
	decide no.
This is the glue stuck immobility rule:
	if the player is glue stuck, rule fails.
The glue stuck immobility rule is listed in the immobility rules.

[!<YourselfIsGluedSeductively>+

Is there a puddle of glue grabbing the player and attracting monsters?

+!]
Definition: yourself is glued seductively:
	[if the thing is the player and the stickiness of the player > 0, decide yes;]
	repeat with X running through all glue:
		if X is grabbing the player and the smell-duration of X > 0:
			[if debugmode is 1, say "DEBUG: Thing is glue stuck and attractive.";]
			decide yes;
	decide no.

To say ExamineDesc of (C - a glue trap):
	if the C is triggered:
		let G be a random glue in the location of the player;
		say "A [if G is full-strength][one of]faintly glowing[or]luminous[stopping] patch of sticky exudate[otherwise]a thick layer of rubbery-looking ooze[end if].";
	otherwise:
		if the C is organic:
			say "There is a swollen, mossy-looking rock on the [one of]wall[or]low ceiling[or]floor[stopping] here with a fold or seam running down its middle. It looks... squishy. Sniffing it, you find it has an interesting smell.";
		otherwise:
			say "Mounted on the [one of]wall[or]low ceiling[or]the floor[stopping] here is an electronic panel with some kind of... sensor, maybe...? with a gnarled knob that looks like the overhead air-vent you get in the cabin of a commercial airliner.".

Definition: a glue is too boring: decide no.

Definition: a glue is stealable: decide no.

This is the spawn initial dungeon glue traps rule:
	let R be a random trappable placed click untrapped unfurnished labyrinth room;
	let T be a random off-stage glue trap;
	deploy T in R.
The spawn initial dungeon glue traps rule is listed in the set up dungeon traps rules.

This is the spawn initial hotel glue traps rule:
	let R be a random trappable placed click untrapped unfurnished modern room;
	let T be a random off-stage glue trap;
	deploy T in R.
The spawn initial hotel glue traps rule is listed in the set up hotel traps rules.

[There are no glue traps in the jungle, with this commented out, naturally.]
[This is the spawn initial jungle glue traps rule:
	let G be the number of glue traps - (the number of off-stage glue traps + the number of on-stage glue traps);
	let N be 1;
	while G is not 0 and N < 10:
		increase N by 1;
		let R be a random pressure untrapped trappable placed jungle room;
		unless there is a hammock in R:
			let T be a random off-stage glue trap;
			decrease G by 1;
			if debugmode is 1, say "[line break]###debug: deployed a glue trap in the Jungle";
			deploy T in R.
The spawn initial jungle glue traps rule is listed in the set up woods traps rules.]

Definition: a thing is gluable: decide no.
Definition: a clothing is gluable:
	if it is not ass plugging and it is not vagina plugging and it is cursable, decide yes;
	decide no.
Definition: a sex toy is gluable: decide no.
Definition: a bondage is gluable: decide no.

To trigger (Y - a glue trap):
	let G be a random off-stage glue;
	if G is glue:
		let R be a random number between 1 and (10 + diaper quest);
		if R <= 4 and diaper quest is 0:
			now the active-colour of G is pinkish;
		otherwise if R <= (7 - diaper quest):
			now the active-colour of G is yellowish;
		otherwise if R <= 9 or diaper quest is 1:
			now the active-colour of G is blackish;
		otherwise:
			now the active-colour of G is whiteish;
		say "As if sensing your proximity, [if Y is organic]a nearby squishy-looking rock splits down the middle with a wet ripping sound and a [active-colour of G] mass explodes from it all over you![otherwise]there's a click and a brief humming sound as a nozzle overhead spins open, instantly spraying a thick mass of sticky [active-colour of G] glue at you![end if]";
		if tough-shit is 0, cutshow Figure of Glue Cutscene 1;
		let C be a random worn removable cursable gluable wearthings;
		if C is clothing and C is not glued clothing:
			say "Your [C] is now stuck to you with glue!";
			gluify C;
			force clothing-focus redraw;
		if tough-shit is 1:
			now G is in the location of the player;
			now the times-stuck of G is 0;
			now Y is not untriggered;
			now Y is triggered;
			now Y is revealed;
			[Sometimes the glue is stronger than normal.]
			now R is a random number between 12 and 18;
			if R > the glue-strength of G:
				now the glue-strength of G is R;
				if the number of triggered glue traps > 1:
					say "This glue seems extra thick and sticky! Hopefully that doesn't mean its other effects are stronger, too!";
				otherwise:
					say "The glue is thick and heavy.";
			update backdrop positions;
			check glue tripping;
			force clothing-focus redraw; [This forces the clothing window to redraw]
			force inventory-focus redraw; [This forces the inventory window to redraw]
		repeat with M running through reactive monsters:
			say GlueTrapReactFlav of M;
	otherwise:
		if debugmode is 1, say "### DEBUG: the glue trap failed to trigger.[line break]".

To say GlueTrapReactFlav of (M - a monster):
	say HarshTrapReactFlav of M.

[Glue trip checking is done when the trap 1st activates, AND when the player tries to struggle free (because while struggling, they can get worse stuck).
The check to see if the player gets stuck depends on their dexterity, modified by how overloaded they are and how well-balanced on their heels they are. If it pulls them off-balance and sticks them, then further mutation effects kick in.
There is a chance they fall so badly they can get more stuck, too, but this is much reduced compared to the chance of falling at first. ]
To check glue tripping:
	if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed:
		say "[one of]You waltz pass the glue puddle nonchalantly[or]Thanks to your cute belt, you nimbly bypass the puddle of glue[or]You gaily skip past the very sticky-looking ooze[at random].";
		stop;
	let Dex be the dexterity of the player;
	if there is a worn sandals, increase Dex by 4; [Them's the rules]
	let G be a random glue in the location of the player;
	if G is a glue:
		let GS be the glue-strength of G;
		let TS be the times-stuck of G;
		[HairDiff only makes it more difficult if you're already stuck. Store it separately so we can say "your [HairDesc] hair trips you" when it makes the difference]
		let BaseDiff be 0;
		let HairDiff be 0;
		let HeelsDiff be 0;
		if the stance of the player is 1:
			now BaseDiff is 5;
			now HairDiff is the largeness of hair - 10;
			if HairDiff < 0, now HairDiff is 0;
		[Heels make it harder to get up if you fall, and more likely to fall]
		let H be a random worn hindrance-enabling shoes;
		if H is shoes:
			now HeelsDiff is the hindrance of H;
		let N be a random number between 1 and Dex;
		[To prevent them getting infinitely stuck, each time they get glued down, we increment times-stuck so the chance tapers off quickly for this trap]
		let X be N - (GS + BaseDiff + HairDiff + HeelsDiff);
		[How negative X is, tells how badly they failed the dexterity check.
		Which difficulty modifier tipped them into failure tells us why they tripped.
			(NB BaseDiff = 0 implies they were standing, > 0 they were kneeling)
			HairDiff = 0 if their hair is short OR they were standing.
		Example 1:
		  Dex 18. glue-str 12, BaseDiff 0, HairDiff 0, HeelsDiff 3 (Tot 15):
			N = 18 --> X =  3 - Dex saved
			N = 15 --> X =  0 - fell due to Heels
			N = 13 --> X = -1 - fell due to Heels
			N = 15 --> X = -2 - fell due to dex
		Example 2:
		  Dex 25. glue-str 10, BaseDiff 5, HairDiff 6, HeelsDiff 2 (Tot 23):
			N = 24 --> X =  1 - saved by dex
			N = 22 --> X = -3 - fell due to Heels
			N = 21 --> X = -2 - fell due to Heels
			N = 20 --> X = -3 - fell due to Hair
			N = 15 --> X = -5 - fell due to kneeling
			N = 10 --> X = -13- fell due to bad dex check
			]
		if debugmode is 1, say "###debug: Check glue tripping: X = [X], dex = [Dex], N = [N]; GS = [GS], BaseDiff =[BaseDiff], HairDiff = [HairDiff], HeelsDiff = [HeelsDiff], TS = [TS], Flat Dex = [saved-flat-dexterity][line break]";
		if X < 0:
			[the player gets (more?) stuck]
			now X is X * -1;
			[X is how much more of them has slipped into the glue. The idea is that they trip really badly, they can be glued over most of their body, i.e. more glued than the strength of the glue.]
			let S be GS;
			if X >= GS:
				let S be X;
			if the player is not glue stuck and the player is not prone:
				[They've just now fallen into it: describe them falling]
				increase the times-stuck of G by 1;
				now the player-motion of the player is 0;
				now G is grabbing the player;
				now the stance of the player is 1;
				if N > GS + BaseDiff + HairDiff:
					say "[one of]A moment of wobbling on your [ShortDesc of H] is your undoing - your heel catches in the glue and sends you tumbling into it![or]Your inadequate heels skill once again sends you into the puddle of glue! Your ankle turns in your [ShortDesc of H]![stopping] [bold type]You are on you knees![roman type][line break]";
				otherwise if N > GS:
					say "[one of]Because you were on your knees, you failed to avoid the mass of glue.[or]On your knees, you feel the familiar sticky grip of the glue seizing your skin.[or]Your knees slide into the glue, and stop.[stopping]";
				otherwise:
					say "[one of]In a display of poor dexterity, you stumble into the glue. It reacts instantly to being stretched, contracting strongly to [bold type]drag you to your knees![roman type][or]Once again you clumsily stumble into the glue, which shrinks and [bold type]drags you to your knees.[roman type][or]You stumble and fall into the glue again. [bold type]You're on your knees.[roman type] In the glue.[stopping][line break]";
				[Let's be kind, and say they might be only partly stuck]
				now the stickiness of the player is 4 + a random number between 1 and S / 4;
				now the smell-duration of G is 4;
				if debugmode is 1, say "###debug: the stickiness of the player is now [the stickiness of the player].";
			otherwise:
				if the player is not glue stuck:
					[They've just now crawled into it, or triggered a trap while on their knees]
					increase the times-stuck of G by 1;
					now the player-motion of the player is 0;
					now G is grabbing the player;
					now the stickiness of the player is 2 + a random number between 1 and S / 4;
					if the times-stuck of G is 1, increase the stickiness of the player by 2; [If they just triggered it, because they were on their knees they get stuck a little worse than they'd crawled up to it or knelt deliberately (the MoreStick, below).]
					now the smell-duration of G is 4;
					if debugmode is 1, say "###debug: the stickiness of the player is now [the stickiness of the player].";
				let MoreStick be a random number between 1 and 3; [Selkie had S; Aika thought 4 was better. NB: we were previously increasing glue-strength, not stickiness. But now, by a number heavily weighted towards 1, and never more than 3.]
				if the strength of the player > the stickiness of the player + MoreStick:
					increase the stickiness of the player by a random number between 1 and MoreStick;
					[They were already glued: now they're glued more!]
					if N > GS + BaseDiff + HeelsDiff:
						say "[one of]Oh, dear! Your [ShortHairDesc] has dipped into the glue and you feel tears rise as you realise you're now even more stuck to the ground![or]Oh no: your [ShortHairDesc] has fallen forward into the glue, too. This is terrible - you're even more firmly stuck![or]Damn this long hair - it's got stuck in the glue [i]again![/i][at random]";
					otherwise if N > GS + BaseDiff:
						say "[one of]Bugger! Your [printed name of H] twists underfoot as you tried to get back to your feet, and slipped deeper into the glue.[or]You can't get your [printed name of H] under you to stand.[or]I think I would've gotten out then, if I was better at wearing high heels![at random]";
					otherwise if N > GS:
						say "[one of]Dammit! If you'd been on your feet, instead of on your knees like a submissive [sissy slut] you feel you might have pulled free. Unfortunately, you wobbled and have become even more stuck.[or]You sob, on your knees in the glue, wondering if this is some kind of sign?[or]Wah - it's so hard to get out of glue when you're stuck helplessly down like this![at random]";
					otherwise:
						say "[one of]In your twisting struggles to get free, you slip and stick yourself even more strongly to the ground![or]You squirm in the glue, trying to pull free, but instead you feel the glue spread further! Your panting struggles to get free brings fresh parts of your body in contact with the glue. Oh no![at random]";
					say "[one of][at random]";
				otherwise:
					[Don't make it even harder if they're already weaker than the glue!]
					if N > GS + BaseDiff + HeelsDiff:
						say "[one of]Your [ShortHairDesc] dips towards the glue, but knowing how awful that would be, you desperately whip it aside at the last moment![or]Oh no: your [ShortHairDesc] falls forward. You almost strain your neck, wrenching your head back. Whew - that was close![or]Damn this long hair - it almost got stuck in the glue again![at random]";
					otherwise if N > GS + BaseDiff:
						say "[one of]Bugger! Your [printed name of H] twists underfoot as you try to get to your feet.[line break][variable custom style]No! I can't let that happen! [roman type][line break]You almost dislocate your hip, wrenching your leg back.[or]Your [printed name of H] almost slips further into the glue.[or]Drat! I would've escaped then, if I was better at wearing high heels![at random]";
					otherwise if N > GS:
						say "[one of][line break][variable custom style]Dammit! If I'd been on my feet instead of kneeling like a submissive [sissy slut], I would've pulled free then.[roman type][line break][or]You sob, on your knees in the glue.[or][line break][variable custom style]I hate this stupid glue![roman type][line break][at random]";
					otherwise:
						say "[one of]In your twisting struggle, you nearly stick yourself even more strongly to the ground![or]You squirm in the glue, trying to pull free, fearing the glue might spread further! [at random]";
					FatigueUp 1;
		otherwise:
			[Remember, X = random # - ((GS + BaseDiff + HairDiff + HeelsDiff) / (TS + 1))]
			if X < HairDiff:
				say "Oh my goodness - my lovely [ShortHairDesc] almost brushed into the glue!";
			otherwise if X < (HairDiff + HeelsDiff):
				say "Ooh, your heels wobbled so much you almost fell[if the player is glue stuck] further into the glue[end if], then!";
			otherwise if X < (BaseDiff + HairDiff + HeelsDiff):
				if the player is prone:
					say "Despite being on your knees, you only just managed to avoid slipping further into the glue!";
				otherwise:
					say "Good thing you weren't kneeling down, then!";
			otherwise:
				say "You dexterously avoid getting [if the player is glue stuck]further [end if]stuck in the glue trap.".

[See if the glue trap gets the player. If so, it knocks them off their feet.
 I believe this function is called while the trap is in effect.]
An all time based rule (this is the glue-stuck-mutation rule):
	if the player is glue stuck:
		[if the player is flying:
			let M be a random monster in the location of the player;
			if M is a monster:
				say "[one of]The [printed name of M] gets a wicked look as you float up in the air, looking down at the glue puddle then back up at you. Uh-oh. You try to scrabble away, but you can't get much traction, and [NameDesc of M] grabs you by one ankle. With no effort, despite your mad flailing and squealing, they push you down into the glue[or]Fuck no, not again! Again you wriggle and flail, but once again you're hauled down off the ceiling and unceremoniously plunged into the glue[stopping]";
			otherwise:
				say "[one of]You bob blissfully above the puddle of glue[or]You feel a bit worried about the glue puddle below you[or][line break][first custom style]I hope I don't land in the glue when I finally descend![roman type][line break][or]The glue puddle seems to draw your eye[or]The glue puddle beckons to you.[stopping]";
				stop;]
		[monsters smelling glue is handled in the compute actions (of M - a monster). Do I need to trigger that here, or is it automatic?]
		let G be a random glue in the location of the player;
		decrease the smell-duration of G by 1;
		if the remainder after dividing the smell-duration of G by 1 is 0, compute the mutation effects of G.

[!<RawGlueEscapingWith>+

 This has no text output if consequences is false, and just breaks the player free of the glue no questions asked.
 For use in various situations - even e.g. when teleporting (which should cause some damage).
 I tried defining this as "raw glue escape (G - a glue) with (consequences - a truth state)" but then could find absolutely no way to pass a literal truth value.
 I tried: true, false, yes, (1 is 1), tried defining "consequences" as a condition instead - nothing worked.

 +]
To compute raw glue escaping (G - an object) with (consequences - a number):
	if G is glue: [just in case it's called with "a random glue in the location of the player": which might evaluate to nothing,]
		if consequences is 1:
			let D be the stickiness of the player / 3;
			say "You are torn [if D is 1]painfully[otherwise if D is 2]brutally[otherwise]agonisingly[end if] free from the glue!";
			[Can't use BodyRuin because that tests for monsters and can drop them down to the ground.
			This should have worse consequences though if they're latex transformed. Hmm... ###]
			if D is 0:
				PainUp 1;
			otherwise if D + the body soreness of the player < 10:
				increase the body soreness of the player by D;
			otherwise:
				now the body soreness of the player is 9;
				say "It [i]really[/i] hurts!";
				PainUp 2;
		now the stickiness of the player is 0;
		now G is not grabbing the player;
		allocate 6 seconds;
		if the player is prone [and autostand is 1]:
			say "You quickly try to stand!";
			try standing.

[!<ComputeGlueEscaping>+

 Glue escaping is more a matter of brute strength. maybe consider using the check glue tripping function instead of the special code here. It is the glue grabbing the player, not the glue trap?
 The check is vs the glue-strength, not the stickiness, unless they've reduced stickiness to 0 somehow; in which case, this function turns off the glue grabbing, too.
 If they do escape, this will do the "try standing" for the player, too.

 +]
To compute glue escaping:
	let G be a random glue in the location of the player;
	let DexChk be a random number between 1 and the dexterity of the player;
	if debugmode is 1, say "DEBUG: glue str =[glue-strength of G], DexChk=[DexChk], player stickiness=[stickiness of the player] (Initially chosen variables).";
	[monsters smelling glue is handled in the compute actions (of M - a monster).]
	if the stickiness of the player is 0:
		say "The glue touching you seems a bit dry and crumbly. You're free![line break]";
		compute raw glue escaping G with 0;
		[###If they stumble and fall or if they're weak and kneel back down, we should probably test for re-gluing; but maybe not here; danger of recursion... ###Aika I don't think we should do that test at all in the name of keeping the game actually fun.]
	otherwise:
		[The mutation effects are handled by compute glue trap]
		say "You tug harder at the glue, trying desperately to get free.";
		[Okay, now the stickiness is basically a countdown timer. The bond-strength represents the surface area of the player stuck in the glue, so the idea is that the more area stuck, the harder it is to escape. And vice versa. So as stickiness decreases, this naturally represents you tearing more of you free. So: we divide the glue strength by the "weakness" (the opposite of the stickiness).]
		let bond-weakness be 4 - the stickiness of the player;
		if bond-weakness < 1, now bond-weakness is 1;
		let bond-grip be the glue-strength of G / bond-weakness;
		[I think max strength is 30]
		if the strength of the player < bond-grip:
			if the strength of the player < 6:
				say "Your [if the player is gendered male]puny, sissy[otherwise]childlike, puny[end if] muscles simply aren't strong enough to even [i]stretch[/i] this tough, rubbery glue, let alone pull free of it, at present!";
			otherwise:
				say "Your [if the strength of the player < 10]weak little [end if]muscles simply aren't strong enough to pull free of this glue as things stand!";
			say "Unless you have clothes to [bold type]rub[roman type] in the glue and scrape it away or soak it up, looks like you might have to wait for the glue to weaken, or for someone to rescue you!";
		let T be a random number between 1 and the strength of the player;
		FatigueUp 2;
		if debuginfo > 0, say "[input-style]Glue escape check: strength roll d[strength of the player] ([T]) | ([bond-grip].5) glue strength[roman type][line break]";
		if T > bond-grip: [Less than this and it's a fail]
			[[decrease the glue-strength of G by T;]] [Aika had said: The whole point of pulling is that we expect it to possibly succeed outright if the player is strong enough! So let's make that at least vaguely possible. Also this now makes it much more realistic that the player could succeed so hard that they fail.]
			[[if the glue-strength of G < 1:]]
			[Selkie: Let's instead measure how much they've weakened their glue bond. We'll then zero stickiness, unless the glue snaps dramatically/suddenly and they fall back in if they fail the Dex check (where "dramatic" means > 6 excess).]
			let drama be T - bond-grip;
			if drama > 0:
				[But if they pulled so hard they snapped free *really* suddenly...]
				[[if the glue-strength of G < -6:]]
				if drama > 6:
					say "[one of]Your strength proves far too much for the final strands of glue, which snap so suddenly your leg flies free. It pulls free so fast you weren't ready for the sudden shift in your centre of balance. [or]Once again, you've pulled so hard you've unbalanced yourself! [stopping]You frantically try to regain your footing...";
					[Stronger glue makes the dex check harder; and the more excessive a pull you did, the more likely you'll fall. stickiness is negative at this point.]
					[if DexChk > the stickiness of the player: stickiness is just a countdown so what we're saying is that the closer we get to the end of the countdown the easier this becomes.]
					[Selkie: Agreed. But I think it's fairer and more realistic to compare the drama of the glue snap to their Dex check]
					if DexChk > drama:
						say "That was a near thing - only your nifty footwork saved you from plunging back down into the glue!";
					otherwise:
						say "Nooo! You fall back into the glue![line break][variable custom style]No, no, no![roman type][line break]";
						now the stickiness of the player is a random number between 1 and drama / 2;
						[[now the glue-strength of G is -1 * the glue-strength of G;]]
				otherwise:
					say "You did it! You've pulled free of the glue! ";
					compute raw glue escaping G with 0;
					if the player is not prone:
						say "You may want to tiptoe out of this room and hope the glue dries.";
					let M be a random reactive monster;
					if M is monster and M is not ghost:
						if M is not acquaintance: [if they like you they're not going to be mean.]
							say "[BigNameDesc of M] smirks at your glue-smeared form, apparently amused by your successful struggle.";
							if a random number between 1 and 3 is 1:
								say "But then, with a gentle shove, [he of M] pushes you again towards the glue! You teeter...";
								allocate 0 seconds;
								check glue tripping;
			[###We could consider decreasing glue-strength of G by 1 here, arguing that they've slightly weakened the glue puddle by pulling some glue free of it.]
		otherwise if T <= 2 and the strength of the player > 3: [Unless they're super weak, consider 1 to 2 a fumble.]
			say "Oh dear: that was such a weak pull that you feel the glue try to strengthen its grip.";
			allocate 0 seconds;
			check glue tripping;
		otherwise:
			let M be a random reactive monster;
			if M is monster and M is acquaintance:
				say GluePullAnnounceFlav of M;
				say "[BigNameDesc of M] grabs you and pulls hard...";
				[check glue G freeing by M;]
				if a random number between 1 and 2 is 1:
					say "[big he of M] pulls you free!";
					compute raw glue escaping G with 0;
				otherwise:
					say "Unfortunately, [he of M] fails. [one of]Strangely, the glue seems not to affect [him of M] at all.[or]Again, the glue doesn't affect [him of M].[stopping]";
					decrease the stickiness of the player by 1;
					say BecomesBoredFlav of M;
					bore M;
			otherwise if M is monster:
				[Selkie: we do this in lieu of counting down stickiness by 1 every round. Instead, we only count it down if something interesting happens. A monster being in the room, watching, is considered interesting. ]
				[Aika: changing this to 0, I don't think a monster doing nothing is interesting. Stickiness already goes down by 1 every turn if the player struggles.]
				decrease the stickiness of the player by 0;
			if the stickiness of the player is 0:
				if G is grabbing the player:
					say "But as you squirm in the glue's grip, you notice it's crumbled!";
				compute raw glue escaping G with 0;
		allocate 6 seconds;
	force clothing-focus redraw; [This forces the clothing window to redraw]
	force inventory-focus redraw. [This forces the inventory window to redraw]

To say GluePullAnnounceFlav of (M - a monster):
	say "[speech style of M]'You poor[one of], weak[or], helpless[or], foolish[or][at random] little thing. Let me see if I can [one of]get you free!'[or]help.'[at random][roman type][line break]".

To compute glue-freeing by (M - a thing):
	if the stickiness of the player > 0:
		let G be a random glue in the location of the player;
		if M is aeromancer:
			say "[first custom style]Hmm, you seem to be in a sticky situation![roman type][line break]";
		say "[big he of M] pulls you free!";
		compute raw glue escaping G with 0.

Check attacking glue:
	try pulling the noun instead.

[!<GlueMorphingInto>+

Compute glue morphing into clothing is what we use to convert some glue into latex or rubber clothing worn by and glued to the player.

@param <Glue>:<G>
@param <Clothing>:<C>
+!]
To compute GlueMorphingInto of (G - a glue) to (C - a clothing):
	if C is headgear:
		summon C cursed;
	otherwise:
		summon C;
		gluify C;
	say "The [active-colour of G] glue suddenly starts spreading out across you, rippling as a change runs through it. Before your eyes it transforms into a [printed name of C], tightly wrapping you!";
	decrease the stickiness of the player by 1;
	if the stickiness of the player < 1:
		now the stickiness of the player is 0;
		compute glue escaping;
		[glue escaping sets seconds to 6, but we set it to 4 since it's faster to escape if stickiness was 0]
		allocate 4 seconds.

[!<MutationEffectsOf>+

Compute the various possible mutation effects the different colour glues can have on the player, if it exceeds some measure of their constitution.
At the end, reduce the stickiness by 1 and compute the glue escaping possibility.

@param <Glue>:<G>
+!]
To compute the mutation effects of (G - a glue):
	[The glue can be one of several types, that causes different effects. The check to see if the player gets stuck depends on their dexterity, modified by how overloaded they are and how well-balanced on their heels they are.]
	let X be 0;
	let StartS be the stickiness of the player;
	let Tough be 20 - the delicateness of the player;
	let R be a random number between 1 and Tough;
	let R2 be a random number between 1 and 10;
	if debuginfo > 0, say "[input-style]Glue effect resist check: dominance d[Tough] ([R]) + d10 ([R2]) = [R + R2] | ([glue-strength of G - 1].5) glue strength[roman type][line break]";
	increase R by R2;
	if R >= the glue-strength of G:
		say "You feel your body [one of]fighting against[or]resisting[at random] a [one of]burning, internal tingle[or]penetrating, icky feeling[or]weird inner sensation[at random].";
	otherwise:
		say "You feel the glue burning, [one of]penetrating your[or]working some inner change deep beneath your[or]transforming beneath your[at random] skin like some weird scientist's menthol ointment.";
		if the active-colour of G is pinkish:
			if the latex-transformation of the player > 2:
				say "The burn tingles through your skin, intensifying the strange feeling it's had since the aeromancer cast [his of a random aeromancer] weird spell on you.";
				if a random number between 1 and 2 is 1:
					compute latex transformation; [But wait, there's more...]
			if the silicone volume of breasts + the silicone volume of hips > 0:
				now X is the flesh volume of breasts + the flesh volume of hips;
				say "The tingling burn from the pink glue drenching you burns through your nerves all the way to your silicone implants. You feel a weird burn, as if the implants are swelling... yet at the same time, you feel a painful leaching. This weird glue... it's not converting my own flesh into silicone somehow, is it?";
				if the silicone volume of breasts > 0 and the flesh volume of breasts > 0:
					decrease the flesh volume of breasts by 1;
					BustImplantsUp 1;
				if the silicone volume of hips > 0 and the flesh volume of hips > 0:
					decrease the flesh volume of hips by 1;
					AssImplantsUp 1;
				if X is (the flesh volume of breasts + the flesh volume of hips):
					say "Failing to draw any flesh from your breasts or hips, the burn moves to your muscles... it really hurts!";
					PainUp 1;
					StrengthDown 1;
			otherwise:
				now X is a random number between 1 and 4;
				[Lip increases have a big effect, so make that rarer]
				if X is 1 and the lips of face < 2 + artificial enhancements fetish:
					say "The painful tingling from the glue seems to concentrate in your lips... you feel some of the glue squeeze through the pores, and see your lips visibly inflate before your eyes!";
					LipsUp 1;
				otherwise if X <= 2:
					say "The burn moves into your breasts, and you can feel it stimulate and stir up the fat deposits and other nearby cells. Before your eyes, your chest swells. ";
					BustUp 1;
				otherwise if X is 3:
					say "The fumes of the glue are strong, making you feel dizzy, interfering with your... those things that happen in your head... thoughts! Yeah, with your, um... what?";
					IntDown 1;
				otherwise:
					if the mystical size of penis > min penis size:
						say "The penetrating fumes burn at your crotch, sending a tingle through your groin. You feel your [mystical ShortDesc of penis] tingling... ";
						SilentlySpecialPenisDown 1; [#LXorDD]
						say "You [if the mystical size of penis < 2]stare in [one of]dismay[or]shock[or]stunned disbelief[or]horror[at random][otherwise]grimace[end if][if players-detached-dick is somewhere-here], somehow sensing your[otherwise] at your now[end if] [mystical ShortDesc of penis].";
					otherwise:
						if plastic-is-fantastic dress is actually summonable:
							compute GlueMorphingInto of G to plastic-is-fantastic dress;
						otherwise:
							let BL be the largeness of breasts;
							BustUp 1;
							say "The fumes make your chest tingle and burn. You feel it swell [if the largeness of breasts is BL]a bit[otherwise]up into [BreastDesc][end if].";
		otherwise if the active-colour of G is yellowish:
			now X is a random number between 1 and 3;
			if X is 1:
				if weight gain fetish is 1:
					say "[one of]The glue smells delicious, and you suddenly have the genius idea of eating your way free - if you can just bite the right parts away[or][stopping]";
					say "[one of]You manage to stretch some of the glue binding you, up as high as your mouth, and bite through it... it's chewy and delicious![or]Once again you nibble at the yummy glue.[or]You bite off some more of the tasty glue[or]The glue stretches like taffy - and tastes even better![at random]";
					decrease the stickiness of the player by 1;
					FatUp 1;
					compute glue escaping;
				otherwise: [Copied from below, for now]
					let M be a random monster in the location of the player;
					say "A weird shiver runs through you, a sense of [i]needing[/i] something... [if M is nothing]You feel desperately lonely here[otherwise]Your heart beats a little faster as you stare hopefully up at the [printed name of M][end if].";
					RandomAddictUp 1;
			otherwise if X is 2:
				if watersports fetish is 1 and a random number between 0 and diaper focus is 0:
					say "You feel... unsettled... thirsty. You picture yourself drinking from an arching stream, and lick your lips.";
					if the stomach-water of the player > 0, decrease the stomach-water of the player by 1;
					SlowUrineTasteAddictUp 1;
				otherwise if diaper lover > 0:
					if incontinence < the max-incontinence of the player and a random number between 1 and 2 is 1:
						say "You shiver, feeling... smaller...? scareder, less sure of yourself. You feel your ability to hold onto your bladder [if diaper messing >= 3]and bowels [end if]weakening.";
						increase incontinence by 1;
					otherwise if the raw diaper addiction of the player < 20:
						DiaperAddictUp 1;
				otherwise:
					let M be a random monster in the location of the player;
					say "A weird shiver runs through you, a sense of [i]needing[/i] something... [if M is nothing]You feel desperately lonely here[otherwise]Your heart beats a little faster as you stare hopefully up at the [printed name of M][end if].";
					RandomAddictUp 1;
			otherwise if X is 3:
				if the player is somehow possessing a penis:
					SpecialPenisDown 1; [#LXorDD]
				otherwise if player is possessing a vagina:
					LabiaUp 1 with comment;
		otherwise if the active-colour of G is blackish: [###TODO: Use X to add further blackish-plausible options here.]
			now X is a random number between 1 and 3;
			if the class of the player is latex fetish model:
				carry out PartialLatexing;
			otherwise:
				say "You see the black goo shimmer, trying to take some kind of shape![line break]";
				let C be nothing;
				now X is 0;
				while X < 8:
					increase X by 1;
					if X is 1:
						now C is a random off-stage black rubber stockings;
					otherwise if X is 2:
						now C is a random off-stage rubber vest top;
					otherwise if X is 3:
						now C is a random off-stage black rubber skirt;
					otherwise if X is 4:
						if ballet heels is off-stage, now C is ballet heels;
					otherwise if X is 5 and black-catsuit is off-stage:
						now C is black-catsuit;
					otherwise if X is 6 and black fetish hobble dress is off-stage:
						now C is black fetish hobble dress;
					otherwise if X is 7:
						now C is a random off-stage fetish business dress;
					otherwise if X is 8 and black hood is off-stage:
						now C is black hood;
					if C is actually summonable, break;
				if C is actually summonable:
					compute GlueMorphingInto of G to C;
				otherwise:
					say "... but then the blackish shape fuzzes out into decoherence.";
					now X is 0; [flag that the effect failed]
					[###Selkie: Yeah, after a few successes, this starts failing, and keeps failing from then on: it's used up the 2 or 3 of the above items that actually exist in the game, perhaps? In which case, maybe detect that via a global variable and do some other effect from then on, instead.
					I wonder if the glue trap should also have the possibility to start the latex-transformation, if certain rare conditions are met?]
			if X is 0:
				do nothing; [Could add more effects here]
		otherwise if the active-colour of G is whiteish:
			now X is a random number between 1 and 3;
			if lactation fetish is 0 and X is 1, increase X by a random number between 1 and 2;
			if X is 1:
				say "[bold type]Your [BreastDesc] feel more active...[roman type][line break]";
				increase the lactation rate of breasts by 1;
			otherwise if X is 2:
				if the semen taste addiction of the player < 20:
					say "[one of]You suddenly realise what this glue's interesting smell reminds you of: semen![or]It really does smell like [semen]![stopping] The aroma seems to send tingles from your nose up into your brain. [if the semen taste addiction of the player < 4]Yuk![otherwise if the semen taste addiction of the player < 7]Hmm.[otherwise][one of]You[or]Once again, you[stopping] find yourself licking your lips...[end if]";
					SilentlySemenTasteAddictUp 1;
			otherwise if X is 3:
				let C be white-diagram briefs;
				if pregnancy fetish is 1 and C is actually summonable:
					compute GlueMorphingInto of G to C;
				otherwise if watersports fetish is 1:
					if WC catsuit is actually summonable:
						compute GlueMorphingInto of G to WC catsuit;
					otherwise:
						say "You feel... unsettled... thirsty. You picture yourself drinking from an arching stream, and lick your lips.";
						if the stomach-water of the player > 0, decrease the stomach-water of the player by 1;
						SlowUrineTasteAddictUp 1;
				otherwise if lactation fetish is 1 or extreme proportions fetish is 1:
					increase the lactation rate of breasts by 2;
					say "You feel the fumes penetrate your [BreastDesc], which flush with an inner warmth.";
				otherwise if TG fetish >= 1 and the mystical size of penis > min penis size:
					SpecialPenisDown 1; [#LXorDD]
				otherwise if artificial enhancements fetish is 1 and extreme proportions fetish is 1:
					say "You feel a burn as tiny tendrils of the glue penetrate your flesh, oozing [i]inside[/i] you! You see the glue shrink... and yourself swell!";
					BustImplantsUp 1;
					AssImplantsUp 1;
					decrease the stickiness of the player by 2;
				otherwise if player is possessing a vagina:
					LabiaUp 1 with comment;
		[This test is mainly here to ensure that if there was some mutation effect, it "costs" the glue by weakening the bond. Some glue effects explicitly decrease the stickiness, like when it morphs into clothing or silicone implants. It's coded as a test of ">=" instead of "is" just in case somehow stickiness got worse!
		This is to help free the player if for some reason they're stuck and can't get out.]
		if the stickiness of the player >= StartS:
			decrease the stickiness of the player by 1;
			if the stickiness of the player < 1:
				now the stickiness of the player is 0;
				compute glue escaping.

To carry out PartialLatexing:
	let O be a random worn stealable destructible transformable clothing;
	let N be a random wrist bond;
	if O is latex:
		if N is wrist bond, say "The glue around your wrists turns into tough rubber, binding them together!";
		now O is the player;
	otherwise if O is an overdress:
		let N be a random off-stage latex overdress;
	otherwise if O is an knickers:
		let N be a random off-stage latex knickers;
	otherwise if O is an bra:
		let N be a random off-stage latex bra;
	otherwise if O is an heels:
		let N be a random off-stage latex thigh high boots;
	otherwise if O is an stockings:
		let N be a random off-stage latex stockings;
	if O is clothing and N is clothing:
		now the upgrade-target of O is N;
		check upgrade target of O;
		if the upgrade-target of O is N:
			say "You feel the material of your [ShortDesc of O] saturating with the rubbery glue, and changing before your eyes into a [ShortDesc of N]. ";
			silently transform O into N;
	if N is bondage:
		if N is actually summonable, summon N locked.

To decide which number is the crafting key of (C - a glue):
	decide on 44. [Check how these numbers are assigned, and what table needs modified. A digestive biscuit was 43. I think it's the Table of Alchemy]

[Sex doll, mannequin, rubber wrestler, mechanic may all have some plausible use for glue. Maybe the patrons too, if we later add a chance for the patron when offered glue to instantly glue the player to the floor, and add that scene?
 There's also the idea of a player getting their hands stuck to their boobs or butt or waist or hair?]

To decide which number is the bartering value of (T - a glue) for (M - a sex doll):
	decide on 3.

To decide which number is the bartering value of (T - a glue) for (M - a latex-clad wrestler):
	decide on 5.

To decide which number is the bartering value of (T - a glue) for (M - a fairy):
	decide on 2.

GlueRubbing it on is an action applying to two things.

Understand "rub [a glue] with [something]" as GlueRubbing it on.
Understand "rub [a glue] on [something]" as GlueRubbing it on.
Understand "rub [something] in [a glue]" as GlueRubbing it on.

[!<GlueMorphingInto>+

Compute glue morphing into clothing is what we use to convert some glue into latex or rubber clothing worn by and glued to the player.
If they rub glue on clothes, the clothes soak up some of the glue - but then become sticky. If they rub worn clothes in the glue, then they've stuck them on right now.
Each time they rub the glue on clothes, the player gets less stuck.

@param <Glue>:<G>
@param <Clothing>:<C>
+!]
[]
To compute GlueClothing (C - a clothing) with (G - a glue):
	allocate 6 seconds;
	gluify C;
	if C is worn:
		if C is diaper:
			say "[one of]There's a crinkling sound as the glue spreads under your diaper, shrinking the plastic slightly. You feel the edges adhere to your skin, and your eyes widen as you realise what that means - when you need to change them...?[or]You feel glue seep under the elasticated edge of your [ShortDesc of C] and tighten against your skin. Uh-oh![or]There's a crinkly, rustling sound as the glue melts into the [ShortDesc of C], bonding it to your flesh.[i]Now[/i] how will it come off?[as decreasingly likely outcomes]";
		otherwise:
			say "You wipe your glue-covered hands on your [ShortDesc of C]. [one of]Uh-oh... the glue spreads under the material and you feel it stick, and set. You tug at the edges, but that only spreads more glue and sticks it down more! Uh-oh... you seem to have glued the clothing onto yourself![or]Once again the glue soaks into the [ShortDesc of C], sticking it to you.[or]Now you've glued your [ShortDesc of C], too.[or]The [ShortDesc of C] is now glued.[stopping]";
		force clothing-focus redraw; [This forces the clothing window to redraw]
	otherwise:
		[They're rubbing something in the glue to wipe it up or scrape it up: clever!]
		say "The [ShortDesc of C] [if C is fluid immune]scrapes away some of the glue holding you, getting seriously coated itself[otherwise]soaks up some of the glue holding you and seems stiffer, and sticky[end if].";
		force inventory-focus redraw; [This forces the inventory window to redraw]
	decrease the stickiness of the player by 1;
	if the stickiness of the player < 0:
		now the stickiness of the player is 0;
		compute glue escaping;

[!<CheckGlueRubbing>+

The player can rub glue on clothes (worn or unworn), or rub it on a body part.
When rubbed on clothes, they become "glued".
When "glued" clothes are worn, they can only be removed by tearing them off.
+!]

Check GlueRubbing:
	[if the noun is not glue and the noun is not ectoplasm, say "I understood the verb as you wanting to apply glue, but then the noun was not glue." instead;]
	if the noun is glue and the second noun is not glue, try GlueRubbing the second noun on the noun instead;
	if the second noun is not glue, say "This verb is for rubbing glue on things." instead;
	[If they rub glue on a specific item of clothing, just that gets glued.]
	if the noun is clothing:
		if the stickiness of the player is 0:
			say "[one of]You brush at the glue with the [noun] but there's no glue left![or]There's no more glue to wipe up![or]All the glue has been wiped up.[stopping]";
			if the player is glue stuck, compute glue escaping;
			do nothing instead;
		if the noun is not gluable, say "You feel like it would be sensible to avoid getting glue on something like that." instead;
		if the noun is worn and the player is wrist bound behind and the second noun is not crotch covering, say "You can't reach that with your wrists bound behind you." instead;
		if the noun is glued, say "The [noun] is already stiff and sticky with glue." instead;
		compute GlueClothing the noun with the second noun;
	[If they rub it on a body part, then as they burrow past each layer of clothing covering that, each gets stuck.]
	otherwise if the noun is a body part:
		[say "You gingerly rub the [printed name of S] [if the noun is fuckhole]around[otherwise]onto[end if] your [ShortDesc of the noun] and wait to see what will happen.[line break]";]
		if the noun is penis and the number of worn crotch covering clothing is 0:
			say "You touch just the tip of your finger to your [ShortDesc of penis] and find it bonds almost instantly! You shriek and start trying to pull it free immediately, before it gets any more stuck!";
			say "It hurts! And the tugging is making your [ShortDesc of penis] stiffen, despite the pain. But you can't walk around here with one hand glued to your dick! You keep pulling, despite the pain, and eventually tug your hand free, your [ShortDesc of penis] now throbbing and burning in pain while tears stream from your eyes.";
			PainUp 1;
			bodyruin 1;
		otherwise if the noun is vagina or the noun is hips:
			if the player is wrist bound behind, say "You can't reach that area with your wrists bound behind you." instead;
			if the number of worn crotch covering clothing is 0:
				if the latex-transformation of the player > 3:
					say "You sense that if you touched even just a part of your shiny new skin to another part while this glue is sticky, it will be joined together forever, stuck there!" instead;
			repeat with C running through worn crotch covering clothing:
				try GlueRubbing C on the second noun instead;
		otherwise if the noun is hips or the noun is asshole:
			if the player is wrist bound in front, say "You can't really reach your butt to wipe off the glue there with your wrists bound in front of you." instead;
			if there is an ass covering clothing:
				if the latex-transformation of the player > 3, say "You sense that if you touched even just a part of your shiny new skin to another part while this glue is sticky, it will be joined together forever, stuck there!" instead;
				if the noun is asshole:
					say "You think that'd be a super [i]bad[/i] idea." instead;
			repeat with C running through ass covering clothing:
				try GlueRubbing C on the second noun instead;
		otherwise if the noun is breasts:
			if the player is wrist bound behind, say "You can't reach your [BreastDesc] with your wrists bound behind you." instead;
			if the number of worn breast covering clothing is 0:
				if the latex-transformation of the player > 3, say "You sense that if you touched even just a part of your shiny new skin to another part while this glue is sticky, it will be joined together forever, stuck there!" instead;
			repeat with C running through breast covering clothing:
				try GlueRubbing C on the second noun instead;
		otherwise if the noun is belly:
			if the player is wrist bound behind:
				say "You can't reach your belly to apply the glue with your wrists bound behind you.";
				rule fails;
			if the number of worn belly covering clothing is 0:
				if the latex-transformation of the player > 3, say "You sense that if you touched even just a part of your shiny new skin to another part while this glue is sticky, it will be joined together forever, stuck there!" instead;
			repeat with C running through belly covering clothing:
				try GlueRubbing C on the second noun instead;
[
		if B is not clothing or B is accessory:
			say "gluify the [B] to you!";
			glue B;
]
	if glue-strength of the second noun is 0, destroy the second noun.

Report GlueRubbing:
	allocate 6 seconds.

[Monsters smelling glue is handled in the compute action of (... - a monster) function]

[!<GluedReactionOf>+

CURRENTLY UNUSED

On a 1 in 3 chance, this just does the kneeling reaction instead.
Otherwise, the monster reacts to seeing the player stuck and struggling and vulnerable in the glue.

@param <Monster>:<M>
+!]
To compute glued reaction of (M - a monster):
	if a random number between 1 and 3 < 3: [+? "and M is intelligent"? ]
		say "[BigNameDesc of M] [if M is intelligent][one of]looks at you with amusement[or]grins at your hampered situation[at random][otherwise][one of]senses your vulnerability[or]sees your helplessness[at random][end if]";
		FavourDown M;
		humiliate 200;
		if M is objectifying the player:
			now M is interested;
			if M is intelligent:
				say "[one of]You hear [NameDesc of M] muttering something about 'smart-glue'...[or][line break][first custom style]'I do love the way this smart-glue only sticks to players!'[roman type][line break][first custom style]'Mmm, a lovely little piggy stuck in smart-glue!'[roman type][line break][at random]";
			otherwise:
				say "[BigNameDesc of M] sees your hampered vulnerability and begins oiling [himself of M] up.[line break][second custom style]Uh-oh, that can't be a good sign![roman type][line break]";
		otherwise if M is friendly and M is interested:
			say "[one of][BigNameDesc of M] rolls [his of M] eyes before [his of M] expression shifts and become s a little more... calculating, then[or]Once again, [his of M] expression alters, making you shiver, before [he of M][stopping] turns to leave you alone.";
			distract M;
		otherwise:
			anger M;
			now the sex-length of M is 3;[probably something to avoid if at all possible]
			say "[BigNameDesc of M] seems to realise your predicament! Oh, no...";
			now M is interested;
	otherwise:
		compute correct kneeling reaction of M.

[!<CheckTearingOffWornClothing>+

Used to try to tear off glued worn clothing. If the player is strong enough, they can tear it free - but it will damage the clothing. Tearing it off will also hurt them. They have a chance of doing it without tearing the cloth or hurting themselves if they're dexterous enough. Checks for hands being tied so the clothing is out of reach should have been called before this function, so we don't need to re-test any of that.
###Later, we should allow monsters to tear worn clothing off too, if they want.

+!]
Check tearing off:
	if the noun is not worn glued clothing, say "That's not [if the noun is not clothing]something you can tear off[otherwise if the noun is not worn]worn[otherwise]glued[end if]." instead;
	if the player is not able to manually use manual dexterity, do nothing instead.
	[if gluePainThreshold > 0, say "Ow, ow, ow! It hurts too much, the pain is bringing tears to your eyes! You'll have to wait a bit longer before trying this again." instead.]

To decide which number is the glue threshold of (C - a clothing):
	decide on 450.

To gluify (C - a clothing):
	now the glue timer of C is the glue threshold of C.
To ungluify (C - a clothing):
	now the glue timer of C is 0.

Definition: a clothing is glued rather than unglued:
	if the glue timer of it > 0, decide yes;
	decide no.

A time based rule (this is the glue time tick rule):
	repeat with C running through glued clothing:
		decrease the glue timer of C by time-seconds;
		if the glue timer of C <= 0:
			now the glue timer of C is 0;
			if C is held or C is in the location of the player:
				say "[bold type]The glue [if C is worn]holding [NameDesc of C] to you has degraded and disappeared. It's no longer stuck to you![otherwise]that was on [NameDesc of C] has dried up.[end if][roman type][line break]".

Carry out tearing off worn clothing:
	let C be the noun;
	allocate 6 seconds;
	say "You start tugging at the [C]... ";
	let R be a random number between 1 and 20;
	if debuginfo > 0, say "[input-style]Glue tugging check: Dexterity ([dexterity of the player].5) | ([R]) d20 Difficulty[roman type][line break]";
	decrease the glue timer of C by 100;
	if the dexterity of the player < R:
		say "You struggle to do it delicately enough, and end up hurting yourself!";
		PainUp 1;
	if the glue timer of C < 0:
		say "Finally! You managed to carefully tear the [ShortDesc of C] free.";
		now the glue timer of C is 0;
	otherwise:
		say "You get more of it free, but there's still [if the glue timer of C < 100]a little bit stuck[otherwise if the glue timer of C < 200]some of it stuck[otherwise]a lot more of it to go[end if].";
		if C is hugger-gag or C is hugger-panties:
			say "The creature goes into a frenzy!";
			let N be 0;
			while C is worn and N < 3:
				increase N by 1;
				compute periodic effect of C.

Check pulling glue:
	if the player is glue stuck, try standing instead.

Glue Trap ends here.
