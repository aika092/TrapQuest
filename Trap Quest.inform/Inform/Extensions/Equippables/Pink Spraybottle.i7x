Pink Spraybottle by Equippables begins here.

A pink spraybottle is a kind of equippable.  1 pink spraybottle is in Dungeon30. The printed name of pink spraybottle is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc][if the item described is cloth]pink washcloth[otherwise]pink washcloth and spraybottle[end if][clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of pink spraybottle is "psp". Understand "rag", "washcloth", "bottle", "spritzer", "wash", "cloth", "spray" as pink spraybottle.

A pink spraybottle is usually slap ready. A pink spraybottle has a number called charge. The charge of a pink spraybottle is usually 0. A pink spraybottle has a number called work ethic. The work ethic of a pink spraybottle is usually 0. A pink spraybottle is usually unique. A pink spraybottle can be spray or cloth. A pink spraybottle is usually spray. A pink spraybottle is usually projectile. A pink spraybottle is usually cotton.

[The maid must periodically find messes to clean up, otherwise she risks a punishment. The spraybottle has a value, charge, but this represents units of cleaning fluid. Its other value, work ethic is the one to really worry about.]

To say ClothingDesc of (W - a pink spraybottle):
	if W is cloth:
		say "A super absorbent pink washcloth. [if the player is a maid]It really doesn't feel complete without a bottle to go with it.[end if]";
	otherwise:
		say "A bright pink spray bottle, used for cleaning up the toughest messes. The sides of the bottle are made of cheap, brittle plastic, allowing you to tell how much liquid is inside of it. [if the charge of W < 0]It's empty.[otherwise if the charge of W <= 40]There's enough for a use or two.[otherwise if the charge of W < 200]It's about a quarter full[otherwise if the charge of W < 400]It's a little over half full.[otherwise]It's almost completely full.[end if][if the player is a maid][line break][variable custom style]I need to be careful not to drop this, I don't know where I could get another one of these.[roman type][end if]".

To say ShortDesc of (W - a pink spraybottle):
	if W is cloth:
		say "pink washcloth";
	otherwise:
		say "bright pink spray bottle".

Check taking pink spraybottle:
	unless the player is a maid:
		let M be a random black maid headdress;
		let O be nothing;
		repeat with R running through off-stage maid outfits:
			if R is actually summonable:
				now O is R;
				break;
		if M is actually summonable and O is clothing:
			summon M cursed;
			summon O cursed;
			say "[bold type]You yelp in surprise as a [M] [bold type]and a [O][bold type] appear on you![line break][variable custom style]I guess I'm the maid now[if the bimbo of the player < 8]?[otherwise].[end if][roman type][line break]";
			follow the player class rules;
			now maid-summoned is 1;
			now the noun is worn by the player instead;
		otherwise:
			say "You don't feel all that interested in cleaning duty right now. You leave the [ShortDesc of noun] where it is." instead.

Report taking pink spraybottle:
	if newbie tips is 1, say "[item style][one of]You just picked up a spraybottle. It's out of cleaning fluid right now, but you earn some by cleaning up puddles of semen[if watersports fetish is 1 or lactation fetish is 1] and other fluids[end if] you've left throughout the dungeon. Once you have enough, you can spray it on some dirty clothes to quickly clean them off, or spray it on enemies for a (usually) quite damaging attack.[or][stopping][roman type]".

Check taking off pink spraybottle:
	if the work ethic of the noun < 20 and the player is a maid, say "You try, but it's like the [noun] won[']t let you put it down. [variable custom style]'Maybe I have to clean something with it first?'[roman type]" instead.

To compute periodic effect of (C - a pink spraybottle):
	if C is cloth and the work ethic of C > 200:
		say "Your [printed name of C] lights up, emitting a lemony scent as a matching pink spraybottle materializes in your other hand!";
		now C is spray;
		now the charge of C is 1;
	if the player is a maid and the work ethic of C > -400, decrease the work ethic of C by 2.[The bottle gains charge automatically if you uncurse it. Note that it must be worn.]


To compute (S - a pink spraybottle) breaking:
	if a random number between 1 and the dexterity of the player < 5 or (a  random number between 1 and the dexterity of the player < 8 and unlucky is 1):[There is a chance it doesn't break as long as it isn't cursed.]
		say "You can't hold onto your spraybottle and it falls out of your hands, shattering the instant it touches the floor![line break][if the bimbo of the player < 10][variable custom style][one of]Shit, something tells me I'm going to be in trouble with someone for this...[or]No, no, not again![stopping][otherwise][second custom style][one of]Oopsie!  I'm such a klutz sometimes![or]Tee hee, it happened again!  I guess I should go back to the mechanic for my [']punishment[']![stopping][end if][roman type][line break]";
		let M be a random mechanic in the location of the player;
		now S is cloth;
		now the charge of S is 0;
		now S is cursed;
		if M is monster:
			say "[speech style of M]'That[']s coming out of your pay-check you clumsy bitch!'[roman type]  The [M] looks furious.";
			now M is interested;
			anger M;
		if the work ethic of S > -100, now the work ethic of S is -100;
	otherwise:
		say "You almost drop your [printed name of S], but with quick fingers, you thankfully manage to hold onto it.[one of][line break][variable custom style]Eek!  If I had dropped it, it would have almost certainly broke![roman type][line break][or][stopping]".

To compute spraybottle punishment:[Punishments: buttplug + bucket + vibrator]
	let S be a random pink spraybottle;
	increase the work ethic of S by 150;
	if S is clothing:
		let V be a random off-stage vibrator;
		if the number of worn plugs > 0, let P be a random worn plug;
		otherwise let P be a random off-stage plug;
		say "[bold type]Your [printed name of a random worn maid headdress][bold type] causes you to feel deep shame at your awful work ethic![roman type][line break]";
		if V is vaginally summonable and the player is female:
			say "You feel a stiff, hard object burrowing into your [vagina]. It starts vibrating. ";
			summon V vaginally;
		otherwise if V is actually summonable and the player is male:
			say "You feel a stiff, hard object pushing itself into your [asshole]. It settles right up against your prostate and immediately begins to vibrate! ";
			summon V cursed;
		otherwise if P is worn and the size of P < 10 and the size of P < the openness of asshole + 3:
			let P be a random worn plug penetrating asshole;
			say "You feel your [P] suddenly increase in size, [if the size of P > the openness of asshole and the openness of asshole < 10]painfully stretching out your poor [asshole] from the inside![otherwise]filling the extra space in your already gaping [asshole]![end if][line break]";
			sizeUp P by 2;
		otherwise if P is actually summonable:
			assign size (the openness of asshole + 2) to P;
			summon P cursed;
			say "You feel your a hard object prodding at your [asshole], as if trying to get inside. It succeeds, [if the openness of asshole < 10]brutally [end if]stretching you out as it forces its way in.";
		otherwise if the number of monsters grabbing the player is 0 and a random number between 1 and 4 is 1:
			say "You notice a shadow looming over you, and look around just in time to see a broad wooden paddle colliding harshly with your backside.[variable custom style]Ow ow ow![roman type][line break]";
			try kneeling;
			FatigueUp 30;
			bodyruin 1;
			if number of ass covering clothing < 1, DelicateUp a random number between 0 and 1;
		otherwise if a random number between  1 and 3 is 1:
			let O be a random worn overdress;
			if O is clothing:
				decrease the raw-magic-modifier of O by 1;
				say "Your clothes suddenly feel very tight, and you feel a wave of magic taking hold of the [clothing-material of O]![line break]";
				potentially transform O;
		otherwise:
			let L be a random number between 1 and 3;
			if watersports fetish is 0 and L is 3, now L is 1;
			if bukkake fetish is 0 and L is 2, now L is 1;
			say "You notice a shadow looming over you, and look up just in time to see a metal bucket tipping itself over in mid-air, splashing you with [if L is 1]ice cold water[otherwise if L is 2]at least a gallon of [semen][otherwise if L is 3]at least a gallon of [urine][end if]!";
			if L is 1:
				say "You shriek as it cascades over you, soaking your clothes and stinging your skin.";
				repeat with C running through worn currently uncovered fluid vulnerable clothing:
					WaterSoak 1 on C;
				if the fatigue of the player > the tired threshold of the player:
					say "[if the player is not prone]Its so jarring you instantly fall to your knees.[end if]";
					silently try kneeling;
				say "You [if the player is prone]stay[otherwise]stand[end if] there, shivering in place, from the cold.";
				if the make-up of face > 0 and permanent makeup is 0:
					say "[if the make-up of face > 1]Some of your[otherwise]Your[end if] make up is washed away.";
					FaceDown 1;
				now another-turn is 1;
			otherwise if L is 2:
				say "[if the raw semen addiction of the player < 8]You shriek[otherwise if the raw semen taste addiction of the player > 10]You smile and open your mouth wide[otherwise if the raw semen addiction of the player < 12]You close your eyes[otherwise]You smile and close your eyes[end if] as it cascades over you, soaking your clothes and covering your skin with thick white [semen]!";
				if the raw semen taste addiction of the player > 10:
					StomachSemenUp 2;
				squirt semen on face by 40;
			otherwise:
				say "[if the urine taste addiction of the player < 8]You shriek[otherwise]You smile and open your mouth wide[end if] as it cascades over you!";
				if the urine taste addiction of the player >= 8:
					StomachUp 2;
					UrineTasteAddictUp 1;
				squirt urine on face by 40;
		if V is worn, say "[variable custom style][if the raw sex addiction of the player < 7]Fuck! This so unfair![otherwise if the raw sex addiction of the player < 13]Is it really my fault I'm such a terrible maid?[otherwise]I'm a stupid ditz, I deserve to be punished like this...[end if][roman type]".
			

To compute (M - a mechanic) considering (T - a pink spraybottle):
	if T is cloth:
		say "[speech style of M]'Ugh. Here I was thinking you might [if diaper quest is 1]be able to hold some adult responsibilities[otherwise]be useful as more than a pair of walking tits[end if], but you actually managed to break your only tool. Fucking incredible.'[roman type] He takes the destroyed pieces of your [printed name of T] and puts them into a small pocket on his utility belt. [speech style of M]'Honestly, I should fire you, but I[']m willing to hold onto it for you until you a figure out a way to make this up to me. Understand?  [if diaper quest is 0]There's two things I like - blowjobs and[otherwise]Here's a hint - I like[end if] *ahem* amulets...'[roman type]";
		now T is in Holding Pen;
		now M is retaining T;
		now M is withholding T;
	otherwise:
		say "[speech style of M]'I can see that it's not broken. Congratulations, you aren[']t the most useless maid ever. Incredible...'[roman type] He doesn[']t seem very interested in the [noun].".
	


Pink Spraybottle ends here.
