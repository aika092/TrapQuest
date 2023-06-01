Pink Spraybottle by Equippables begins here.

pink-spraybottle is an equippable. pink-spraybottle is in Dungeon30. The printed name of pink-spraybottle is "[clothing-title-before][if the item described is cloth]pink washcloth[otherwise]pink washcloth and spraybottle[end if][clothing-title-after]". The text-shortcut of pink-spraybottle is "psp". Understand "pink", "rag", "washcloth", "bottle", "spritzer", "wash", "cloth", "spray", "spraybottle" as pink-spraybottle.

pink-spraybottle is zap ready. pink-spraybottle has a number called charge. pink-spraybottle has a number called work ethic. pink-spraybottle is unique. pink-spraybottle can be spray or cloth. pink-spraybottle is spray. pink-spraybottle is projectile. pink-spraybottle is cotton.

Definition: pink-spraybottle is class-relevant:
	if the class of the player is maid, decide yes;
	decide no.

Definition: pink-spraybottle is stealable:
	if it is class-relevant, decide no;
	decide yes.

Definition: pink-spraybottle is never-in-bag: decide yes.

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

Check taking pink-spraybottle when pink-spraybottle is not held:
	if playerRegion is not school:
		if the noun is not actually summonable, say "That requires your dominant hand to be free - you are currently holding [NameDesc of a random worn hand ready clothing]." instead;
		if the class of the player is not maid:
			let H be a random worn headgear;
			if H is maid headdress or H is rubber-bunny-waitress-ears or black maid headdress is actually summonable:
				allocate 2 seconds;
				compute maidification of the noun;
				do nothing instead;
			otherwise if H is bridal veil and housewife dress is worn:
				allocate 2 seconds;
				compute maidification of the noun;
				do nothing instead;
			otherwise:
				say "You don't feel all that interested in cleaning duty right now[if there is worn headgear], while you're wearing the [ShortDesc of a random worn headgear][otherwise if the number of worn maid headdress is 0], you're not a maid[end if]. You leave the [ShortDesc of noun] where it is." instead.

To compute maidification of (C - a clothing):
	if tutorial is 0 and C is actually summonable:
		say "A [C] appears [if C is hand ready]in your hand[otherwise]on you[end if]! It looks like some kind of magic force is demanding that you clean up after you own messes!";
		let H be a random worn headgear;
		if H is rubber-bunny-waitress-ears:
			transform H into frilly bunny ears;
			let M be a random worn overdress;
			if bunny-maid-outfit is not held and M is a removable overdress, transform M into bunny-maid-outfit;
		otherwise if H is bridal veil:
			class summon maid apron;
		otherwise if H is not maid headdress:
			if H is a clothing:
				transform H into black maid headdress;
			otherwise:
				say "[bold type]You yelp in surprise as a [ShortDesc of black maid headdress] [bold type]appears on you!";
				blandify and reveal black maid headdress; [sets it up properly]
				now black maid headdress is worn by the player; [we don't summon it properly, because if we did, confusing things would happen when we compute the class outfit again below]
				now black maid headdress is cursed;
		say "[variable custom style]I guess I'm the maid now[if the bimbo of the player < 8]?[otherwise].[end if][roman type][line break]";
		let H be a random worn headgear;
		follow the player class rules;
		compute class outfit of H;
		summon C.


Report taking pink-spraybottle:
	if the noun is not worn and the player is not in a predicament room:
		now the noun is worn by the player;
	if newbie tips is 1 and the noun is worn, say "[newbie style][one of]Newbie Tip: You just picked up a spraybottle. It's out of cleaning fluid right now, but you earn some by cleaning up puddles of [if diaper quest is 1]urine[otherwise]semen[end if][if diaper quest is 0 and (watersports fetish is 1 or lactation fetish is 1)] and other fluids[end if] you've left throughout the dungeon. Once you have enough, you can spray it on some dirty clothes to quickly clean them off, or spray it on enemies for a (usually) quite damaging attack.[or][stopping][roman type][line break]".

Report taking off pink-spraybottle:
	if the charge of the noun > 0:
		say "[bold type]As you unequip the spraybottle, you feel its stored magical energy fizzling away.[roman type][line break]";
		now the charge of the noun is 0;
	if the work ethic of the noun > 0, now the work ethic of the noun is 0.

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
		say "You can't hold onto your spraybottle and it falls out of your hands, shattering the instant it touches the floor!";
		if S is blessed:
			say "But then you watch as the blessed energy imbued in the bottle sparks to life, pulling all the shards back together until the spraybottle is as good as new![line break][variable custom style]Wow![roman type][line break]The blessing has now expired, but at least your bottle isn't broken.";
			now S is bland;
		otherwise:
			say "[if the bimbo of the player < 10][line break][variable custom style][one of]Shit, something tells me I'm going to be in trouble with someone for this...[or]No, no, not again![stopping][otherwise][line break][second custom style][one of]Oopsie! I'm such a klutz sometimes![or]Teehee, it happened again! I guess I should go back to the mechanic for my [']punishment[']![stopping][end if][roman type][line break]";
			now S is cloth;
			now the charge of S is 0;
			unless there is a worn cursed maid headdress, now S is cursed;
			if mechanic is reactive:
				say "[speech style of mechanic]'That's coming out of your pay-check you clumsy bitch!'[roman type][line break][BigNameDesc of mechanic] looks furious.";
				interest mechanic;
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
		if the player is extremely horny and chastity-belt is off-stage and chastity-belt is actually summonable:
			summon chastity-belt locked;
			say "You suddenly feel a tightness around your loins. You [if there are worn knickers]can feel[otherwise]look down and see[end if] that a [chastity-belt] has appeared around your crotch! [if the bimbo of the player < 10]Even worse, it[otherwise]It[end if] only stops anything from touching your genitals, so your [asshole] remains completely unprotected![line break][variable custom style]I'm a horny maid locked in chastity! But I need to cum so badly...[roman type][line break]";
		otherwise if V is vaginally summonable and the player is possessing a vagina:
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
				PainUp 10;
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
				AnnouncedSquirt water on face by a random number between 2 and 6;
				now another-turn is 1;
				if another-turn-flavour is "", now another-turn-flavour is "You [if the player is prone]stay[otherwise]stand[end if] there, shivering in place, recovering from the cold water.";
			otherwise if L is 2:
				say "[if the raw semen addiction of the player < 8]You shriek[otherwise if the raw semen taste addiction of the player > 10]You smile and open your mouth wide[otherwise if the raw semen addiction of the player < 12]You close your eyes[otherwise]You smile and close your eyes[end if] as it cascades over you, soaking your clothes and covering your skin with thick white [semen]!";
				if the raw semen taste addiction of the player > 10:
					FaceFill semen by 2;
				AnnouncedSquirt semen on hair by 50;
			otherwise:
				say "[if the urine taste addiction of the player < 8]You shriek[otherwise]You smile and open your mouth wide[end if] as it cascades over you!";
				if the urine taste addiction of the player >= 8:
					FaceFill urine by 2;
				AnnouncedSquirt urine on hair by 50;
		say "[variable custom style][if the player is not a pervert]Fuck! This so unfair![otherwise if the player is not disgraced]Is it really my fault I'm such a terrible maid?[otherwise]I'm a stupid ditz, I deserve to be punished like this...[end if][roman type][line break]".

To compute (M - a mechanic) considering (T - pink-spraybottle):
	if T is cloth:
		say "[speech style of M]'Ugh. Here I was thinking you might [if diaper quest is 1]be able to hold some adult responsibilities[otherwise]be useful as more than a pair of walking tits[end if], but you actually managed to break your only tool. Fucking incredible.'[roman type][line break][big he of M] takes the destroyed pieces of your [ShortDesc of T] and puts them into a small pocket on [his of M] utility belt.[line break][speech style of M]'Honestly, I should fire you, but I'm willing to hold onto it for you until you a figure out a way to make this up to me. Understand? [if diaper quest is 0]There's two things I like - blowjobs and[otherwise]Here's a hint - I like[end if] *ahem* amulets...'[roman type][line break]";
		now M is carrying T;
	otherwise:
		say "[speech style of M]'I can see that it's not broken. Congratulations, you aren't the most useless maid ever. Incredible...'[roman type][line break][big he of M] doesn't seem very interested in the [ShortDesc of the noun].".

To decide which number is the zap damage improvement of (S - pink-spraybottle):
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
