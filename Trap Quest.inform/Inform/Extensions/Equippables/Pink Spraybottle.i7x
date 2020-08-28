Pink Spraybottle by Equippables begins here.

pink-spraybottle is an equippable. pink-spraybottle is in Dungeon30. The printed name of pink-spraybottle is "[clothing-title-before][if the item described is cloth]pink washcloth[otherwise]pink washcloth and spraybottle[end if][clothing-title-after]". The text-shortcut of pink-spraybottle is "psp". Understand "pink", "rag", "washcloth", "bottle", "spritzer", "wash", "cloth", "spray", "spraybottle" as pink-spraybottle.

pink-spraybottle is zap ready. pink-spraybottle has a number called charge. pink-spraybottle has a number called work ethic. pink-spraybottle is unique. pink-spraybottle can be spray or cloth. pink-spraybottle is spray. pink-spraybottle is projectile. pink-spraybottle is cotton.

Definition: pink-spraybottle is stealable:
	if the class of the player is not maid, decide yes;
	decide no.

Figure of spraybottle is the file "Items/Accessories/Equippables/spraybottle1.png".
Figure of washcloth is the file "Items/Accessories/Equippables/spraybottle2.png".

To decide which figure-name is the clothing-image of (W - pink-spraybottle):
	if W is cloth, decide on figure of washcloth;
	decide on figure of spraybottle.

To BackgroundRender (W - pink-spraybottle) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	if W is spray, display the image figure of washcloth in the current focus window at X1 by Y1 with dimensions DX by DY.

[The maid must periodically find messes to clean up, otherwise she risks a punishment. The spraybottle has a value, charge, but this represents units of cleaning fluid. Its other value, work ethic is the one to really worry about.]

To say ClothingDesc of (W - pink-spraybottle):
	if W is cloth:
		say "A super absorbent pink washcloth. [if the class of the player is maid]It really doesn't feel complete without a bottle to go with it.[end if]";
	otherwise:
		say "A bright pink spray bottle, used for cleaning up the toughest messes. The sides of the bottle are made of cheap, brittle plastic, allowing you to tell how much liquid is inside of it. [if the charge of W < 1]It's empty.[otherwise if the charge of W < 2]There's enough for a use or two.[otherwise if the charge of W < 3]It's about a quarter full[otherwise if the charge of W < 4]It's a little over half full.[otherwise]It's almost completely full.[end if][if the class of the player is maid][line break][variable custom style]I need to be careful not to drop this, I don't know where I could get another one of these.[roman type][end if]".

To say ShortDesc of (W - pink-spraybottle):
	if W is cloth:
		say "washcloth";
	otherwise:
		say "spray bottle".

To say MediumDesc of (W - pink-spraybottle):
	if W is cloth:
		say "pink washcloth";
	otherwise:
		say "bright pink spray bottle".

Definition: pink-spraybottle is immune to change: decide yes.
Definition: pink-spraybottle is pink themed: decide yes.
Definition: pink-spraybottle is fluid immune: decide yes.

Check taking pink-spraybottle when the player is in Dungeon30:
	unless the class of the player is maid:
		let H be a random worn headgear;
		if H is maid headdress or black maid headdress is actually summonable:
			allocate 2 seconds;
			compute maidification of the noun;
			do nothing instead;
		otherwise:
			say "You don't feel all that interested in cleaning duty right now[if there is worn headgear], while you're wearing the [ShortDesc of a random worn headgear][otherwise if the number of worn maid headdress is 0], you're not a maid[end if]. You leave the [ShortDesc of noun] where it is." instead.

To compute maidification of (C - a clothing):
	let H be a random worn headgear;
	unless H is maid headdress:
		now H is black maid headdress;
		summon H cursed;
		say "[bold type]You yelp in surprise as a [ShortDesc of H] [bold type]appears on you!";
	now maid-summoned is 0;
	compute class outfit of H;
	now the outfit-charge of H is 0;
	say "[variable custom style]I guess I'm the maid now[if the bimbo of the player < 8]?[otherwise].[end if][roman type][line break]";
	follow the player class rules;
	now C is worn by the player.

Report taking pink-spraybottle:
	if newbie tips is 1, say "[newbie style][one of]Newbie Tip: You just picked up a spraybottle. It's out of cleaning fluid right now, but you earn some by cleaning up puddles of [if diaper quest is 1]urine[otherwise]semen[end if][if diaper quest is 0 and (watersports fetish is 1 or lactation fetish is 1)] and other fluids[end if] you've left throughout the dungeon. Once you have enough, you can spray it on some dirty clothes to quickly clean them off, or spray it on enemies for a (usually) quite damaging attack.[or][stopping][roman type]".

Check taking off pink-spraybottle:
	let M be a random worn maid headdress;
	if the work ethic of the noun < 0 and M is clothing, say "You try, but it's like the [ShortDesc of M] won't let you put it down.[line break][variable custom style]'Maybe I have to clean something with it first?'[roman type][line break]" instead.

Check going when pink-spraybottle is worn:
	if areYouSure is 1 and total puddle > 0:
		say "There's a puddle in here. You sense that if you leave here without cleaning the puddle, [NameDesc of pink-spraybottle] will be unimpressed. Are you sure you want to try and leave the [location of the player]? ";
		if the player is not consenting, say "You change your mind." instead.

Carry out going when pink-spraybottle is worn:
	if total puddle > 0:
		say "[bold type][BigNameDesc of pink-spraybottle] [bold type]rattles in your hand, clearly unimpressed that you are leaving without cleaning up the puddle![roman type][line break]";
		decrease the work ethic of pink-spraybottle by 100;
		if the work ethic of pink-spraybottle < -400, now the work ethic of pink-spraybottle is -400;
		let N be a random number between -1000 and -130;
		if debuginfo > 0, say "[input-style]Spraybottle work ethic check: RNG(-1000~-130) = [N] | ([work ethic of pink-spraybottle]) work ethic[roman type][line break]";
		if the work ethic of pink-spraybottle < N, compute spraybottle punishment;

To compute (S - pink-spraybottle) breaking:
	if a random number between 1 and the dexterity of the player < 5 or (a random number between 1 and the dexterity of the player < 8 and unlucky is 1):[There is a chance it doesn't break as long as it isn't cursed.]
		say "You can't hold onto your spraybottle and it falls out of your hands, shattering the instant it touches the floor![line break][if the bimbo of the player < 10][line break][variable custom style][one of]Shit, something tells me I'm going to be in trouble with someone for this...[or]No, no, not again![stopping][otherwise][line break][second custom style][one of]Oopsie! I'm such a klutz sometimes![or]Teehee, it happened again! I guess I should go back to the mechanic for my [']punishment[']![stopping][end if][roman type][line break]";
		now S is cloth;
		now the charge of S is 0;
		unless there is a worn cursed maid headdress, now S is cursed;
		if mechanic is reactive:
			say "[speech style of mechanic]'That's coming out of your pay-check you clumsy bitch!'[roman type][line break][BigNameDesc of mechanic] looks furious.";
			now mechanic is interested;
			anger mechanic;
		if the work ethic of S > -100, now the work ethic of S is -100;
	otherwise:
		say "You almost drop your [ShortDesc of S], but with quick fingers, you thankfully manage to hold onto it.[one of][line break][variable custom style]Eek! If I had dropped it, it would have almost certainly broke![roman type][line break][or][stopping]".

To compute spraybottle punishment:
	if pink-spraybottle is worn:
		increase the work ethic of pink-spraybottle by 130;
		let V be a random off-stage plentiful vibrator;
		let O be a random worn overdress;
		let P be a random worn sex toy;
		if P is nothing, let P be a random off-stage basic plug;
		say "[bold type]Your [ShortDesc of a random worn maid headdress] causes you to feel deep shame at your awful work ethic![roman type][line break]";
		if V is vaginally summonable and the player is possessing a vagina:
			say "You feel a stiff, hard object burrowing into your [vagina]. It starts vibrating. ";
			summon V cursed vaginally with quest;
		otherwise if V is actually summonable and the player is sexed male:
			say "You feel a stiff, hard object pushing itself into your [asshole]. It settles right up against your prostate and immediately begins to vibrate! ";
			summon V cursed with quest;
		otherwise if P is penetrating asshole and the size of P < 10 and the size of P < the openness of asshole + 3:
			say "You feel your [P] suddenly increase in size, [if the size of P > the openness of asshole and the openness of asshole < 10]painfully stretching out your poor [asshole] from the inside[otherwise]filling the extra space in your already gaping [asshole][end if]!";
			sizeUp P by 2;
		otherwise if P is not worn and P is actually summonable:
			say "You feel your a hard object prodding at your [asshole], as if trying to get inside. It succeeds, [if the openness of asshole < 10]brutally [end if]stretching you out as it forces its way in.";
			if debugmode > 0:
				say "Toys before maid plug summon:[line break]";
				repeat with C running through worn sex toy:
					say "[C] is penetrating [list of body parts penetrated by C].";
			summon P cursed with quest;
			assign size (the openness of asshole + 2) to P;
			if debugmode > 0:
				say "Toys after maid plug summon:[line break]";
				repeat with C running through worn sex toy:
					say "[C] is penetrating [list of body parts penetrated by C].";
		otherwise if the player is not immobile and a random number between 1 and 4 is 1:
			say "You notice a shadow looming over you, and look around just in time to see a broad wooden paddle colliding harshly with your backside.";
			try kneeling;
			FatigueUp 30;
			bodyruin 1;
			if number of ass covering clothing < 1:
				PainUp 1;
			otherwise:
				say "[variable custom style]Ow, that's mean![roman type][line break]";
		otherwise if a random number between 1 and 3 is 1 and O is transformation chain transformable clothing:
			decrease the raw-magic-modifier of O by 1;
			say "Your clothes suddenly feel very tight, and you feel a wave of magic taking hold of the [clothing-material of O]!";
			potentially transform O;
		otherwise:
			let L be a random number between 1 and 3;
			if watersports fetish is 0 and L is 3, now L is 1;
			if bukkake fetish is 0 and L is 2, now L is 1;
			say "You notice a shadow looming over you, and look up just in time to see a metal bucket tipping itself over in mid-air, splashing you with [if L is 1]ice cold water[otherwise if L is 2]at least a gallon of [semen][otherwise]at least a gallon of [urine][end if]!";
			if L is 1:
				say "You shriek as it cascades over you, soaking your clothes and stinging your skin.";
				repeat with C running through worn currently uncovered fluid vulnerable clothing:
					WaterSoak 1 on C;
				if the fatigue of the player > the tired threshold of the player:
					say "[if the player is not prone]It's so jarring you instantly fall to your knees.[end if]";
					silently try kneeling;
				if the make-up of face > 0 and permanent makeup is 0:
					say "[if the make-up of face > 1]Some of your[otherwise]Your[end if] make up is washed away.";
					FaceDown 1;
				now another-turn is 1;
				if another-turn-flavour is "", now another-turn-flavour is "You [if the player is prone]stay[otherwise]stand[end if] there, shivering in place, recovering from the cold water.";
			otherwise if L is 2:
				say "[if the raw semen addiction of the player < 8]You shriek[otherwise if the raw semen taste addiction of the player > 10]You smile and open your mouth wide[otherwise if the raw semen addiction of the player < 12]You close your eyes[otherwise]You smile and close your eyes[end if] as it cascades over you, soaking your clothes and covering your skin with thick white [semen]!";
				if the raw semen taste addiction of the player > 10:
					StomachSemenUp 2;
				squirt semen on face by 40;
			otherwise:
				say "[if the urine taste addiction of the player < 8]You shriek[otherwise]You smile and open your mouth wide[end if] as it cascades over you!";
				if the urine taste addiction of the player >= 8:
					FaceFill urine by 2;
				squirt urine on face by 40;
		say "[variable custom style][if the player is not a pervert]Fuck! This so unfair![otherwise if the player is not disgraced]Is it really my fault I'm such a terrible maid?[otherwise]I'm a stupid ditz, I deserve to be punished like this...[end if][roman type][line break]".

To compute (M - a mechanic) considering (T - pink-spraybottle):
	if T is cloth:
		say "[speech style of M]'Ugh. Here I was thinking you might [if diaper quest is 1]be able to hold some adult responsibilities[otherwise]be useful as more than a pair of walking tits[end if], but you actually managed to break your only tool. Fucking incredible.'[roman type][line break][big he of M] takes the destroyed pieces of your [ShortDesc of T] and puts them into a small pocket on [his of M] utility belt.[line break][speech style of M]'Honestly, I should fire you, but I'm willing to hold onto it for you until you a figure out a way to make this up to me. Understand? [if diaper quest is 0]There's two things I like - blowjobs and[otherwise]Here's a hint - I like[end if] *ahem* amulets...'[roman type][line break]";
		now M is carrying T;
	otherwise:
		say "[speech style of M]'I can see that it's not broken. Congratulations, you aren't the most useless maid ever. Incredible...'[roman type][line break][big he of M] doesn't seem very interested in the [ShortDesc of the noun].".

To decide which number is the damage improvement of (S - pink-spraybottle):
	if S is spray and the magic power of the player > 0:
		if the class of the player is maid, decide on 7;
		decide on 5;
	decide on 0.

To compute attack of (S - pink-spraybottle) at (M - a monster):
	if S is spray and the magic power of the player > 0:
		say "You pull the trigger of your [ShortDesc of S], sending offensive magic through your arm into the water. It hits [NameDesc of M] stinging [him of M] with acidic liquid!";
	otherwise:
		say "You pull the trigger of your [ShortDesc of S], but you have no magic to empower the water that comes out. It's not very effective!".

Pink Spraybottle ends here.
