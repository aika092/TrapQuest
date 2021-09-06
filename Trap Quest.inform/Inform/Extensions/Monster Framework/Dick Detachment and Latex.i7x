Dick Detachment and Latex by Monster Framework begins here.

[Created via: txt2i7 'lx-detach-dick.tq']

[When you declare something is "a kind of <thing>" you're declaring it's a class called <thing>.
When you say "<X> is a <thing>" you're declaring it as an object of the <thing> class. In that case it's a single thing, so don't then say something like "There is 1 <X>", or the compiler will create a 2nd object called "1 <X>", e.g. "1 players-detached dick".]
players-detached-dick is a sex toy. players-detached-dick is unique. Understand "detached dick" as players-detached-dick. The printed name of players-detached-dick is "[TQlink of item described][LatexFlav]detached dick you lost[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of players-detached-dick is "pdd". The tradability of players-detached-dick is 9.
players-detached-dick has a number called ballsize. The ballsize of players-detached-dick is 0.
The size of players-detached-dick is 0.
players-detached-dick has a number called IsPlastic. The IsPlastic of players-detached-dick is 0.
players-detached-dick has a number called minute-detached. The minute-detached of players-detached-dick is 0.

players-dick-is-detached is a number that varies. players-dick-is-detached is 0.
players-dick-detach-count is a number that varies. players-dick-detach-count is 0.
detach-likelihood is a number that varies. detach-likelihood is 0.
max-wench-detachers is a number that varies. max-wench-detachers is 5. [#### Set to 1 when not testing this!]
A trap can be a-dick-detacher or a-non-detacher. A trap is usually a-non-detacher.

again-DD is a text that varies. again-DD is "".
still-DD is a text that varies. still-DD is "".
YetAgain-DD is a text that varies. YetAgain-DD is "".
latex-love is a number that varies. latex-love is 0.

[#LXorDD
 players-detached-dick --
     the object used and carried around when the player has had the detachable penis fate. It can be taken by monsters and carried around.
     The size of the detached dick is tracked with a value separate from the one usually used, and is a property of it being a sex toy (since that has a size).
     The size of the scrotum (which detaches with the penis) is tracked by a separate value called ballsize.
     These sizes are initialised when the penis is detached.
     We set player's penis (and ball) size (of their body) to zero and block PenisUp (and ScrotumUp), or otherwise most points in the code that check the player's penis size need new qualifiers to check if actually the player's dick isn't in a normal state.
     We also use the IsPlastic value to flag if the penis has been detached from the player AFTER they became a latex doll (so in that case it's set to 1), or else it's set to 0 (meaning it's still living flesh).
     sex toy allows it to be inserted and used against the player, heh.
     I think it would be VERY BAD to summon players-detached-dick vaginally, as that destroys it and then summons it, so I suspect we'd lose its size values.
 detach-likelihood --
     a number between 0 and 10, 10 meaning a dick-detacher monster has for some reason decided to do its special trick.
 players-dick-is-detached --
     flags whether the player's dick is detached.
     If it's still attached, this value is 0.
     If it was removed to leave the player with a doll-like mound, it's 1.
     If it was removed to make a double-ended dildo and give the player a vagina at the same time as part of the process, its value is 2.

 max-wench-detachers is the total number of wenches the game can ever create in a single game, who possess a dick-detaching portal ring. There's a 1 in 20 chance that a wench created can have it. Obviously those numbers are adjustable.
 Some inspiration for this comes from Sei So Tsui Dan Sha by Shiwasu No Okina
 http://www.hbrowse.com/10002/c00001
 NB: if an item is held by the player, it means it is either carried by the player OR worn by the player. You can say "if item is held" and it implies "by the player", too.
Notes to Selkie:
 full description is in Inform/Extensions/Player Description/Overall Description.i7x
 More in Inform/Extensions/Player Description/Appearance.i7x
 displacable defn. is in Inform/Extensions/Clothing/Clothing Adjectives.i7x
]

[ [These rules had to be moved from here and into the main body of the monster definitions (Inform/Extensions/Monster Framework/Monster Adjectives.i7x) to make sure these definitions are seen first - otherwise Inform gets very confused because it interprets them in some other way.]
A monster can be a-dick-detacher or a-non-detacher. A monster is usually a-non-detacher. [These (rare few) monsters can detach the player's dick. At present: djinn, aeromancer. And one wench, who gets a portal-cock-ring.]
A monster can be detached-dick-desiring or detached-dick-ignoring. A monster is usually detached-dick-desiring. [Most monsters are willing to take a player's detached dick if they see it lying around. Several though are not. At present: ghosts, giant wasps.]
]

Definition: players-detached-dick is magic-enhanceable:
	if players-dick-is-detached is not 0:
		decide yes;
	otherwise:
		decide no.
Definition: players-detached-dick is too boring: decide no.
Definition: players-detached-dick is transformation-protected: decide yes.
Definition: players-detached-dick is disintegration-protected: decide yes.

To decide which number is the initial outrage of (S - players-detached-dick):
	decide on 5 + size of S. [C.f. 11 for a sex toy]

To decide which number is the unworn outrage of (S - players-detached-dick):
	let O be (the initial outrage of S) + (the size of S);
	if O > 20, decide on 20;
	if O < 0, decide on 0;
	decide on O.

To decide which number is the outrage of (S - players-detached-dick):
	if S is worn:
		if S is not currently at least partially visible, decide on 0;
		if S is not currently visible, decide on (the initial outrage of S * 2) / 3; [this means it is partially visible]
	decide on the unworn outrage of S.

To say DongSize of (C - players-detached-dick):
	let N be the size of C;
	say DongSize N.

To decide if (C - players-detached-dick) is pick-uppable:
	if players-dick-is-detached is 0, decide no;
	[held means carried by or worn by]
	if a random person holding players-detached-dick is a person, decide no;
	decide yes.

To decide what number is the price of (C - players-detached-dick):
	let X be the size of players-detached-dick + 1;
	if the latex-transformation of the player < 3, increase X by 1;
	decide on X.

To uniquely destroy (C - players-detached-dick):
	now players-dick-is-detached is 0; [#### Maybe this should be -1?]
	now the size of players-detached-dick is 0;
	now the ballsize of players-detached-dick is 0.

[
This function and the next is for when we want to use an existing function on the player's penis just like we would if it were still attached.
]
To swap dick in:
	now the size of penis is the size of players-detached-dick;
	now the size of scrotum is the ballsize of players-detached-dick.

To swap dick out:
	now the size of players-detached-dick is the size of penis;
	now the ballsize of players-detached-dick is the size of scrotum;
	now the size of penis is 0;
	now the size of scrotum is 0.

To DetachedPenisUp (X - a number):
	[We use fake dick swapping]
	swap dick in;
	PenisUp X;
	swap dick out;
	if the size of players-detached-dick is -1:
		[It exploded and now needs to be destroyed]
		destroy players-detached-dick.

To DetachedPenisDown (X - a number):
	[We use fake dick swapping]
	swap dick in;
	PenisDown X;
	swap dick out.

To SpecialPenisUp (X - a number):
	if players-dick-is-detached > 0:
		DetachedPenisUp X;
	otherwise if the player is possessing a penis:
		PenisUp X.

To SpecialPenisDown (X - a number):
	if players-dick-is-detached > 0:
		DetachedPenisDown X;
	otherwise if the player is possessing a penis:
		PenisDown X.

[There is no SilentlyPenisUp function!]
To SilentlySpecialPenisDown (X - a number):
	if players-dick-is-detached is 0:
		SilentlyPenisDown X;
	otherwise:
		swap dick in;
		SilentlyPenisDown X;
		swap dick out.

To decide what number is the mystical size of penis:
	if the players-dick-is-detached > 0, decide on the size of the players-detached-dick;
	decide on the size of penis.

To say mystical ShortDesc of (P - penis):
	if players-dick-is-detached > 0, say "[one of]detached[or]distant[or]missing[in random order] ";
	say PenisFlavour (the mystical size of penis).

To decide if the player is somehow possessing a penis:
	if the player is possessing a penis, decide yes;
	if the players-dick-is-detached > 0, decide yes;
	decide no.

[
Only properly detach the dick from the player. No descriptive text.
We break up the detaching of the dick into two parts; this is the part where we detach it from the player.
If root is 0, it's just the player's dick. If it's 1, it's double-ended with a dildo handle.
]
To compute raw dick detachment by (P - a thing) with (root - a number):
	swap dick out;
	now players-dick-is-detached is 1;
	increase players-dick-detach-count by 1;
	if players-dick-detach-count > 1:
		now again-DD is " again";
		now still-DD is " still";
		now YetAgain-DD is " [one of]once again[or]yet again[or]once more[or]like last time[or]just like before[in random order]";
	if root is not 0, now players-dick-is-detached is 2; [Double-ended: with an ordinary dildo 'root' to refill a pussy created by the player's dick extraction.]
	now the players-detached-dick is in the location of P;
	if the latex-transformation of the player is 8, now IsPlastic of players-detached-dick is 1;
	if debugmode > 0, say "Debug: compute raw dick detachment. Now players-dick-is-detached is [players-dick-is-detached], size of it is [size of players-detached-dick][line break]";
	now the minute-detached of players-detached-dick is (starting-earnings - earnings ) / 60. [The minute at which the dick was detached]

[
Only properly reattach the dick to the player. No descriptive text.
Other half of detaching the dick: the part where we reattach it to the player.
]
To compute raw dick reattachment by (P - a person):
	if the size of penis is 0:
		now the size of penis is size of players-detached-dick;
	if the size of scrotum is 0:
		now the size of scrotum is ballsize of players-detached-dick;
	now the size of players-detached-dick is 0;
	now the ballsize of players-detached-dick is 0;
	now players-dick-is-detached is 0;
	now the players-detached-dick is in the location of the player;
	[Clear all the special flags - curses, glue... - without imprinting the player]
	only destroy players-detached-dick.

[
Give the detached dick to someone. (We break up the transfer of the dick into two parts.)
Giving it is optional: it could instead be dropped on the ground, teleported...
]
To compute handing over detached dick to (P - a person):
	now players-detached-dick is carried by P;
	if P is not the player:
		add players-detached-dick to tradableItems of P;
		add players-detached-dick to the taxableItems of P.

[
A person receives the detached dick.
It's the other half of the transfer of the dick.
]
To compute taking away detached dick from (P - a person):
	if P is not the player:
		remove players-detached-dick from the tradableItems of P;
		remove players-detached-dick from the taxableItems of P;
	[This also removes the players-detached-dick from list of things carried by P:]
	now players-detached-dick is in the location of P.

To compute maybe drop dick by (M - a monster):
	if M is carrying players-detached-dick:
		now players-detached-dick is in the location of M;
		compute taking away detached dick from M;
		if M is not in the location of the player:
			say "You feel your dick hit the ground, bounce once or twice, then roll to a stop. Which is really weird, considering it's been detached!";
		otherwise: [Okay, the monster is in the same location as player]
			say "OMG - [he of M] just fumbled and dropped your detached dick to the ground! You barely notice the feeling of it bouncing and rolling to a stop.";
			let M2 be a random monster in the location of M;
			[If we randomly chose the same monster that just dropped the dick, or if the player is faster than the chosen monster here, let the player snatch it up]
			if M2 is M or ((a random number between 1 and 10) * (the dexterity of the player / 10)) > 5:
				say "But this is your chance! You lunge forward to grab it.";
				compute autotaking penis; [Used to be autotaking players-detached-dick;]
				[### This moment deserves more, and more complexity. Partly we're deferring it. But the player's reaction should take into account bimboness, arousal, whether they (now) have a pussy, etc.]
			if players-detached-dick is carried by the player: [the autotaking worked]
				say "You snatch up your stolen organ, feeling your hands gripping a dick, and at last, finally, simultaneously feeling your dick being once more held in your own hands! But then you wonder how you should try to reattach it - or if you even can?";
			otherwise if M2 is not M: [they couldn't take it for some reason]
				say "But sadly, you stumbled as you reached for it.";
				compute handing over detached dick to M2;
				say "No, no, no! The [printed name of M2] picks up your detached dick before you reach it. You feel [his of M2] grip tighten on your disembodied dick, making you almost want to cry at how unfair this all is!";
				if M2 is shopkeeper:
					say "'[first custom style]Since you didn't seem to want it, I'll shelve it again.'[roman type]";
					now players-detached-dick is in Dungeon41;
					now players-detached-dick is store;
				otherwise:
					say "Looks like you'll have to somehow [']persuade['] [printed name of M2] to give it back to you.";
			otherwise: [no one has picked it up]
				say "You eye your detached dick lying sadly on the ground.".

[This function is to be called in the "compute unique final action" of monsters
 who could wander into the dungeon shop, carrying the player's detached dick.
 in which case, they 'sell' it to the shopkeeper, whether he's there or not.]
To compute maybe donate dick to shop by (M - a monster):
	if players-dick-is-detached > 0 and M is in Dungeon41 and M is carrying players-detached-dick:
		compute maybe drop dick by M; [drop dick here, if carried]
		if players-detached-dick is pick-uppable: [On the ground, no one grabbed it]
			if shopkeeper is in Dungeon41 and shopkeeper is alive and shopkeeper is undefeated:
				now players-detached-dick is store;
				if the player is not in Dungeon41:
					say "You feel a manly pair of hands pick up the [ShortDesc of players-detached-dick] and turn it over, tapping and rubbing it a few times. You feel them attach some sort of tag to it, then put it down on a hard surface.";
				otherwise if M is not shopkeeper:
					say "The shopkeeper takes the [ShortDesc of players-detached-dick] and nods. [speech style of shopkeeper]'Thanks for that, [M]. [if size of players-detached-dick < 3]It could make a fun novelty item[otherwise if size of players-detached-dick < 7]. It's a bit on the small size, but I might be able to sell it[otherwise]. Not the biggest I've seen, but it should fetch a fair price[end if].'[roman type][line break][Big he of shopkeeper] [if players-detached-dick is store][one of]dusts off[or]repositions[or]checks[in random order] the price tag[otherwise]puts a price tag on it[end if] and sits it on [his of shopkeeper] shelf, while you gape in shock at this transaction.";
					now players-detached-dick is store;
				otherwise if M is shopkeeper:
					say "The shopkeeper picks up [ShortDesc of players-detached-dick] and nods. [speech style of shopkeeper]'[if size of players-detached-dick < 3]This could make a fun novelty item[otherwise if size of players-detached-dick < 7]. A bit on the small size, but I might be able to sell it[otherwise]. Not the biggest I've seen, but it should fetch a fair price[end if].'[roman type][line break][Big he of shopkeeper]Puts a price tag on it and sits it on [his of M] shelf, while you gape in shock.";
			otherwise if the player is in Dungeon41:
				say "You swallow, wondering what to do, whether it's safe to pick up [italic type]your own[roman type] dick now it's been brought to the store?";
	otherwise:
		do nothing.

To compute replacement of (DD - players-detached-dick) in (O - an orifice):
	let M be current-monster;
	unless O is actually occupied:
		if M is unintelligent:
			say "[BigNameDesc of M] [one of]idly[or]casually[or]unthinkingly[in random order] [one of]shoves[or]slides[or]thrusts[or]pushes[in random order] your own [printed name of DD] [one of]all the way into[or]fully inside[or]deep into[in random order] your [variable O].";
		otherwise:
			say "[BigNameDesc of M] [one of]watches your expression[or]enjoys your reaction[or]knowingly meets your eyes[in random order] as [he of M] slowly [one of]inserts[or]slides[or]forces[or]pushes[in random order] your own [printed name of DD] [one of]all the way inside[or]fully into[or]all the way into[in random order] your [variable O].";
		if DD is carried by M, compute taking away detached dick from M;
		now DD is worn by the player;
		now DD is penetrating O;
		now DD is not temporarily-removed;
		if O is fuckhole:
			communicate struggling of O;
			ruin O.


[ compute detach-players-dick by (M - a thing) using (method - a number)

 This is called at the climax of some other blowjob or magic or trap
 that's triggered, preferably just before the 'happy ending' so we get
 the normal experience until just before the player's dick is
 magically detached!
 If you want a warning before it happens, then say so just before calling this,
 e.g.
     say "You feel your [semen] about to burst free!";
     compute detach-players-dick by aeromancer using 1;
     Or maybe it's better to allow it to be used mid-sentence or not.
     so this always starts with something like "when suddenly..."

 If you set method to 1 (blowjob), you should first ensure there's no clothing
 in the way.

 method indicates the kind of verb to use for the detachment:
 1: blowjob (either by a trap or a foe)
 2: tugging or pulling
 3: by pure magic variant of 2
 4...?:
    If we extend this in the future with some new method (4+), it will
    probably be something closer to tugging it off than BJ-portal magic,
    so if we add a method and forget to add code for it, this is coded up
    as 'if method is 1, otherwise...'
    (so if we add new a method: 'if method is 1, otherwise if 2, otherwise...')
    so it won't lead to as jarring an error.
]
To compute detach-players-dick by (M - a thing) using (method - a number):
	let X be 0;
	say "[one of]when suddenly[or]when unexpectedly[or]when without warning[or]when all of a sudden[in random order]";
	[Don't detach the penis and balls just yet so we can still use [penis] in descriptions.]
	[Does the detachment cause TG? When fem is 1, dick detachment causes TG.]
	let fem be 0;
	if tg fetish >= 1:
		[the smaller the penis, the higher the chance of TG? Actually, I think not: there's some very cool stuff that can happen if it's stupidly big, so instead of this original approach:]
		[
		let N be (a random number between 0 and size of penis) [ - artificial enhancements fetish];
		if N >= a random number between 0 and size of penis, now fem is 1;
		]
		[... instead, we'll just make it 50-50:]
		if a random number between 1 and 2 is 1, now fem is 1;
	[Some sentence definitions for those used in multiple places, farther below]
	let feel-a-deeply-invasive-weird-change be "feel a deeply invasive weird shift, like your internal organs are changing.";
	let you-feel-a-weird-shift-hard-to-pin be "You feel a weird shift, hard to pin down, like your dick is moving?";
	if M is a person: [ ================================================== ]
		[An active agent: let's assume it's intelligent.]
		if method is 1: [BJ magic sword swallowing trick]
			say " [NameDesc of M] lunges forward, [his of M] mouth[if size of penis > 7] stretching wide and[otherwise if size of penis < 5] easily[end if] swallowing your [player-penis] whole, [his of M] lips sealing around the base of your shaft. You're still blinking in shock as you notice [his of M] lips slowly close up. Like, all the way together. Huh?[line break][variable custom style]How is that even possible?[roman type][line break]";
			say "[Big he of M] stands up and steps back... but you can still feel [his of M] lips around your [player-penis]. How...?";
			if fem is 1: [double-ended dildo, one end normal, other is your dick]
				say "You [feel-a-deeply-invasive-weird-change][line break]";
				say "Protruding from [his of M] lips, you see what looks like your [ShortDesc of scrotum] and a normal dildo.";
				say "[BigNameDesc of M] uses the dildo like it's a handle, and slo-o-owly extracts an exact replica of your [player-penis] from [his of M] mouth.";
			otherwise: [not a double-ended dildo, and you're left with a doll-like mound]
				say "[you-feel-a-weird-shift-hard-to-pin][line break]";
				say "[Big his of M] mouth is closed, [his of M] sealed lips smirking[if size of scrotum > 0], a [ShortDesc of scrotum] dangling from them.";
				say "[BigNameDesc of M] opens [his of M] mouth and reaches in to extract a replica of your [player-penis].";
		otherwise: [method is 2: tugging, or 3: magic; or an un-coded-for method]
			let magic-bypass be 0;
			if method is 3 and not penis-is-detachable by M using 2, now magic-bypass is 1;
			say " [his of M] hand [if magic-bypass is 0]flashes out to grip your[otherwise]makes a casual gesture towards your[end if] [player-penis]. [Big he of M] smirks at you for just a moment, then [if size of penis is 0]peels something small and flat away[otherwise]yanks[end if], but with a such a weird twisting motion that it makes your brain hurt.";
			if fem is 1: [double-ended dildo, one end normal, other is your dick]
				say "You feel a deeply invasive weird change, like part of your insides have just been pulled out. That really hurt!";
				say "[BigNameDesc of M] is now holding a normal dildo[if size of scrotum > 0] with [ShortDesc of scrotum][end if]. [Big his of M] fingers are wrapped around what looks like a disturbingly-exact replica of your own [player-penis], joined to a normal-sized dildo[if size of scrotum > 0], with what looks like a copy of your balls dangling from the junction[end if].";
			otherwise: [not a double-ended dildo and you are left with a doll-like mound]
				say "[You-feel-a-weird-shift-hard-to-pin] ";
				say "[Big he of M]'s holding what looks like an exact replica of your [ShortDesc of penis]. You freeze, feeling a terrible dread, not wanting to look down between your legs, afraid of what you'll see.";
		say "[if size of players-detached-dick > 8][one of][speech style of M]'Wow, that was quite an impressive unit you had. I'll bet you're sorry now you annoyed me?'[roman type][or][speech style of M]'It's probably just as well I took such a dangerous weapon from someone so obviously inexperienced'[roman type][or][speech style of M]'Heh, this is huge! We'll have some real fun with this. Or at least, I will!'[roman type][in random order][otherwise if size of players-detached-dick < 4][one of][speech style of M]'This is so cute! You probably weren't getting much use out of this little thing anyway, right?'[roman type][or][speech style of M]'This is so small it's more like a toy. I wonder if it'd be more fun if it was bigger, or smaller? Hmm.'[roman type][or][speech style of M]'Look at this little thing. It's like a male penis, only miniaturised!'[roman type][in random order][otherwise][one of][speech style of M]'Rather ordinary, but I may still be able to do some interesting experiments with this.'[roman type][or][speech style of M]'I guess they called you [']Mr Average[']? Well, not anymore, honey-bun.'[roman type][in random order][end if][line break]";
		let C be a random worn chastity bond;
		let P be a random worn condom;
		compute raw dick detachment by M with fem;
		[So dick has now been detached by a monster]
		say "[Big he of M] sniffs it, and [if the size of players-detached-dick < 4]sniggers, wiggling it between [his of M] fingers.[otherwise if the size of players-detached-dick > 8]hefts it with some admiration.[otherwise]wobbles it about measuringly.[end if][line break]";
		say "Finally, unable to resist any longer, you look down, staring in cold shock at the junction of your thighs...";
		if players-dick-detach-count > 1, say "[one of][variable custom style]Oh, no, not again![roman type][or][variable custom style]I don't believe it - not again![roman type][or][variable custom style]How could I have fallen for this again?![roman type][or][variable custom style]No, no, no! Don't take my [penis] away again![roman type][in random order][line break]";
		if fem is 1:
			SexChange the player;
			say "There, nestled between your thighs, at your crotch where your dick used to be, you see a doll-like vagina with puffy, hairless and slick, bright maroon-coloured lips.";
		otherwise:
			say "You see a smooth, empty, Barbie-doll like mound.";
		if the player is able to speak, say "[variable custom style]'How DARE you?! Put that back at once!'[roman type][line break]You[still-DD] can't believe that what [he of M] just did is even possible! You squirm in dismay, from the look [he of M] gives you in return - well, that plus the weird feeling of your now detached dick waving around in the air[YetAgain-DD], separate from your body. You swallow.";
		otherwise say "You object as strenuously as you can, but your incoherent objections fail to generate the reaction you wanted. You squirm in dismay at the way [NameDesc of M] simply lets you run down. [Big he of M] waggles your now detached dick at you[YetAgain-DD], gloating.";
		if C is not nothing:
			compute M removing C; ["[BigNameDesc of M] casually slides your dick free of the #C";]
		if P is not nothing, say "With a raised eyebrow, [NameDesc of M] [if C is not nothing]also [end if] peels the [variable P] from the [DetachedPenis] that used to be your dick.";
			if P is a condom of kings, destroy P;
			otherwise now P is in the location of the player;
		say "[BigNameDesc of M]'s lip curls up, studying your expression as [he of M] flicks the end of your now detached dick.";
		if the latex-transformation of the player is 8:
			say "[speech style of M]'I know you felt that, my silly little new sex doll, even if you can't change the delightfully [one of]ready-to-please[or]open-for-business[or]ready-and-waiting[in random order] expression on your slutty face.'[roman type][line break]";
		otherwise:
			say "And you feel the sensation anyway - at [italic type]least[roman type] as intensely as ever[YetAgain-DD]! You stare at [him of M] in shock, your mouth gaping in a big 'O'.";
		say "[Big his of M] subtly mocking expression changes to an open grin as [he of M] squeezes then releases your detached dick a few times. You make an incoherent sound in reaction to the strong sensations. Have you become even [italic type]more[roman type] sensitive?";
		say "[Big he of M] taps your now detached penis against [his of M] thigh in thought, making you shiver as the vibrations transmit themselves to you as tiny thrills.";
		if the latex-transformation of the player > 0 and the latex-transformation of the player < 8:
			say "[speech style of M]'Ooh, nice! I think that made you a bit more... flexible, too.'[roman type][line break]";
			compute latex transformation; [in case we allow detachment before full conversion]
		otherwise:
			say "[one of][speech style of M]'I think you need to be a bit more... flexible.'[roman type][or][speech style of M]'Maybe that'll teach you to be more... flexible.'[roman type][in random order][line break]";
		if the latex-transformation of the player is 8:
			say "[Big he of M] studies your plush lips, and your... lower regions... with a thoughtful look.";
			let oro be a random not actually occupied orifice;
			if oro is not nothing and a random number between 1 and 5 is 1:
				say "About to turn away, [NameDesc of M]'s eyes suddenly twinkle and [he of M] steps back up to you. Before you can react, [he of M] grips you around the neck with one hand and [if oro is not face]reaches down to[end if] jam your own dick into your own [variable oro].";
				if the latex-transformation of the player is 8:
					say "[if the size of players-detached-dick < 4][one of][speech style of M]'I wouldn't want to lose something this small.'[roman type][or][speech style of M]'It's so small it's not much use to anyone else.'[roman type][or][speech style of M]'Well, no one else would want this tiny thing[in random order][otherwise if the size of players-detached-dick < 8][one of][speech style of M]'Ha! Have fun trying to extract that without fingers!'[roman type][or][speech style of M]'I may as well leave this with you to look after. Good luck trying to get it free without an opposable thumb, or even fingers.'[roman type][in random order][otherwise][one of][speech style of M]'I think only a rubber doll could take something this huge!'[roman type][or][speech style of M]'Ha ha, that won't be coming out any time soon.'[roman type][or][speech style of M]'How does it feel to be on the receiving end of your own dick, ha ha?'[roman type][in random order][end if][line break]";
				otherwise:
					say "[if the size of players-detached-dick < 4][one of][speech style of M]'I wouldn't want to lose something this small.'[roman type][or][speech style of M]'It's so small it's not much use to anyone else.'[roman type][or][speech style of M]'Well, no one else would want this tiny thing[in random order][otherwise if the size of players-detached-dick < 8][one of][speech style of M]'Ha! Have fun trying to extract that without fingers!'[roman type][or][speech style of M]'I may as well leave this with you to look after. Wouldn't it be fun if someone locked your hands up so you couldn't reach it?'[roman type][in random order][otherwise][one of][speech style of M]'I would have thought only a rubber doll could take something this huge!'[roman type][or][speech style of M]'Ha ha, that won't be coming out any time soon.'[roman type][or][speech style of M]'How does it feel to be on the receiving end of your own dick, ha ha?'[roman type][in random order][end if][line break]";
				try inserting players-detached-dick into oro;
				[now players-detached-dick is worn by the player; [I think that would be wrong]]
				compute handing over detached dick to the player; [In theory the players-detached-dick is still pick-uppable, if they can get it out]
				stop; [Selkie: this is the right way in i7 to exit a function early, if it returns no value. (break/next are loop controls.) '"Stop" is the plain-jane return statement. It isn't used much, partly because of some other synonyms for return, and partly as fallout from the rules-based structure of the language.' http://inform7.com/book/WI_11_13.html#defn133 ]
			otherwise:
				say "It looked like [he of M] was seriously considering using your own impossibly detached dick on you just then! You're not sure whether to be relieved or horrified by that 'escape'.";
		compute handing over detached dick to M;
		say "With a last mocking glance, [NameDesc of M] leaves.";
		say "[variable custom style][Big he of M] just stole my dick! I have to go after [him of M] and get it back![roman type][line break]You stare after [him of M], telling yourself:[line break][variable custom style][printed name of M] stole my dick. Don't forget that![roman type][line break]You blush at the outrageous thought, and the very idea you might ever forget that it was [NameDesc of M] who just stole your dick[if players-dick-detach-count > 1] this time[end if]. As if you'd fail to remember [italic type]that![roman type][line break]";
		regionally place M; [M won't end up in the same location as the player or nearby.]
		[if the M is an aeromancer, they could do some inflation tricks if you're latex]
		[when you next encounter the monster that has your dick, if you're a latex doll your attacks are going to be pretty ineffective. Heh.]
		[##LXorDD I think it would be delightful if the monster who is carrying your dick would react specifically to you upon your next encounter with them, maybe you could try to fight them for it, or submit to try to beg them to give it back to you, or...?]
		do nothing instead; [I think this stops the normal monster-leaves rule from doubling up and giving another 'he leaves' type note]
	otherwise: [ ================================================== ]
		[It's not alive - this is the case where your cock is teleported away from a BJ with the portal cock ring, or by being unlucky putting on the portal cock ring.]
		say " you get a really [italic type]peculiar[roman type] feeling around your [ShortDesc of penis] as it bottoms out inside the tight-fitting [printed name of M]. Like, super strange. It feels like something is contracting around the base of your [player-penis], which goes rock hard.";
		if fem is 1: [double-ended dildo, one end normal, other is your dick]
			say "But then you [feel-a-deeply-invasive-weird-change][line break]";
		otherwise: [not a double-ended dildo, and you're left with a doll-like mound]
			say "[you-feel-a-weird-shift-hard-to-pin] ";
		say cock ring drops to the ground with "Then the";
		say "[variable custom style]Why- *how* did the ring just drop off like that...?[roman type][line break]There's a moment of disorientation at a sensation of your [PenisShaftFlav the size of penis] moving, [italic type]independently[roman type] of you. You jolt backwards, a terrible certainty settling[YetAgain-DD] in the pit of your stomach and you freeze, not wanting to look down, between your legs.";
		say "Finally, unable to resist any longer, you let your head drop, to stare in cold shock [YetAgain-DD]at the junction of your thighs. There, where your [player-penis] used to be, you [again-DD]see ";
		if fem is 1:
			say "a doll-like vagina with puffy, hairless and slick maroon lips.";
			say "You instinctively clench your muscles, your eyes widening [again-DD]at the feeling that follows, of those new sensitive lips pressing together, and the feeling of something more, somewhere deeper inside, of some other new parts of you pressed together but waiting to be parted.[line break][variable custom style]That's... not possible! I can't- I don't- How can I...?[roman type][line break]";
			say "A neat, plump pussy, a tiny bulge at its top, sits primly between your thighs. You swallow.";
			say "[variable custom style]That little bump[if size of penis < 3] is even smaller than[otherwise if size of penis < 8] is all that's left of[otherwise]is a mockery of[end if] my [player-penis]![roman type][line break]";
			compute raw dick detachment by M with fem; [Do this before sexchange!]
			SexChange the player;
		otherwise:
			say "a smooth, empty, Barbie-doll like mound. You shake your head in denial, in disbelief, in dismay.[if the latex-transformation of the player > 4] You moan.[line break][variable custom style]Now I look even more like some stupid sex doll![roman type][end if][line break][variable custom style]Instead of my [player-penis], I'm now like some neutered doll. How am I supposed to have sex like this?![roman type][line break]";
			compute raw dick detachment by M with fem;
		say "But as you stare at your new [genitals],[YetAgain-DD] you can still feel your erect penis! You peer inside the [ShortDesc of M], but it's empty [one of]and your [manly-penis] is nowhere in sight[or]and your [manly-penis][YetAgain-DD] vanished[cycling].";
		say "Firming your resolve and getting a grip on your emotions, you shake yourself. [one of]You just need to find it. You wonder where it is, now - your detached dick?[or][line break][variable custom style]I won't let this get me down! I just need to find it, and get it back.[roman type][line break][in random order]";
		[I wonder what especially fun locations it could sometimes be put?]
		[E.g.: we could sometimes attach the pdd to a dildo trap.
		By which I mean, flag it as such, and then have each dildo trap have a 1 in 3, say, chance of triggering with the player's own dick on the end, which they could then pluck off at the end. With humiliation if it was really small, or extra fun or gape and difficulty in jumping off if it's larger (i.e. make the escape chance 1 in size of pdd).]
		let X be 0;
		if tough-shit > 0, now X is 2; [More likely to be placed in shop]
		if X + a random number between 1 and 6 >= 5:
			now players-detached-dick is in Dungeon41; [The shop]
		otherwise:
			[Don't teleport their dick to a room with a boss, like the sisters or the vine boss.]
			now X is 30;
			while (players-detached-dick is in the location of the player or players-detached-dick is in a bossed room or players-detached-dick is in a predicament room) and X > 0:
				decrease X by 1;
				if debugmode > 0, say "Debug: re-rolling: not placing detached dick in [location of the players-detached-dick][line break]";
				now players-detached-dick is in a random placed room;
		[Try to give the player a hint as to where their penis has been dropped. Heh.]
		let R be the location of players-detached-dick;
		if R is Dungeon41:
			if shopkeeper is alive and shopkeeper is undefeated:
				now players-detached-dick is store;
				say "It's at that moment you feel a powerful, manly hand grip your dick and lift it! You feel warm water (you hope!) running over it, then squirm as a soft cloth is repeatedly squeezed around your dick. Gawd! It's definitely still erect![line break]Then you feel it set down somewhere, and the hand release it.";
				arouse 50; [We can't passively stimulate penis from shopkeeper because it would convert it to stimulating the vagina.]
			otherwise:
				say "You feel it roll off a shelf and bounce to rest on a hard floor.";
		otherwise:
			say "You feel your now detached dick [if size of players-detached-dick is 0]flutter down[otherwise]and balls fall[end if] onto";
			if R is a labyrinth room:
				say " cold stone, then roll to a stop.";
			otherwise if R is a jungle room:
				say " something damp, then roll into... leaves? A warm breeze blows over it.";
			otherwise if R is a modern room:
				say "... carpet maybe...? then roll to a stop.";
			otherwise if R is a haunted room:
				say " a dusty floor, and you feel like something spooky is aware of it."; ["it's... in danger?";]
			otherwise if R is an academic room:
				say " some kind of smooth, soft flooring and roll to a stop.";
			otherwise:
				say " some strange surface that you somehow sense it was never meant to be. You hear a mental voice saying 'Internal security breach, players detached dick detected in unsanctioned teleport arrival at [location of the players-detached-dick]!'";
		say "[variable custom style]Now what do I do? I just lost my [penis], stolen right off my body![line break]I'm going to need a friendly magic user to fix that, I guess. Unless I can somehow just stick it back on by myself.[roman type][line break]";
		strongHumiliate;
		now M is in the location of the player;
		if M is portal-cock-ring:
			now portal-cock-ring is magic-revealed;
			compute autotaking M.

To only extract detached dick by (M - a monster): [Extract it with no flavour]
	if player is wearing players-detached-dick:
		dislodge players-detached-dick;
		swap dick in;
		stimulate penis from M;
		swap dick out;
		moderateHumiliate;
	now players-detached-dick is in the location of M;
	compute handing over detached dick to M.

To extract detached dick by (M - a monster):
	if player is wearing players-detached-dick:
		if players-detached-dick is penetrating asshole:
			say "[BigNameDesc of M] tugs your dick free of your [AssDesc], and you can't help but clamp down on it as [he of M] does, giving yourself one last double thrill, feeling from your detached dick sliding between your [AssDesc], which in turn feels your [DetachedPenisFlavour] sliding free.";
		otherwise if players-detached-dick is penetrating vagina:
			say "[BigNameDesc of M] tugs your dick free of your [vagina], and you can't help but clamp down on it as [he of M] does, giving yourself one last double thrill, feeling your detached dick sliding between your labia, at the same time feeling your [DetachedPenis] sliding out through them, tugging on them.";
		otherwise if a random worn sex toy is players-detached-dick: [if it's worn and not in arse or pussy, it must be in the player's mouth]
			say "[BigNameDesc of M] slides the [DetachedPenisFlavour] from your mouth, giving you a double thrill as it slips out between your [LipDesc], popping free with a loud slurping sound as if you were trying to suck it back in!";
	only extract detached dick by M.

[This is needed so the player learns that the witch can restore them. I've tried to make it work okay if it's called by someone who can't reattach it though.]
To mention and maybe reattach dick by (M - a monster):
	let reattacher be "me";
	if M is not witch, now reattacher is "a witch";
	if players-dick-is-detached > 0: [#LXorDD]
		say "[one of]About to turn away, [he of M] happens to glance down at your groin, and literally does a double take.[line break][speech style of M]'By the stars, how did you manage that[if the latex-transformation of the player > 0], as well[end if]? You let someone steal your dick[again-DD]?!'[roman type][line break][BigNameDesc of M] shakes [his of M] head in disbelief.[or][Big he of M] happens to glance down at your groin, and blinks, then snorts. [Big he of M] shakes [his of M] head, sniggering.[line break][speech style of M]'Oh my stars, I still can't believe you let someone steal your dick[again-DD]!'[roman type][line break][or][Big he of M] looks down at your groin, and shakes [his of M] head.[line break][speech style of M]'I see you haven't found your dick yet. You really should if you want [reattacher] to reattach it[again-DD].'[roman type][line break][or][speech style of M]'I know they say some men can't find their dicks with their two hands, but you're the first person I've met who that's literally true for[if players-dick-detach-count > 1]! How many times is that, now - [players-dick-detach-count in words] times?'[otherwise]!'[end if][roman type][line break][or][Big he of M] eyes your groin.[line break][speech style of M]'Still no luck finding your dick, I see?'[roman type][line break][or][Big he of M] gives a dismissive glance between your legs.[line break][speech style of M]'Still dickless I see.'[roman type][line break][stopping]";
		if player is wearing players-detached-dick:
			say "[speech style of M]'Oh, wait...'[roman type][line break][BigNameDesc of M] slowly tilts [his of M] head to one side, [one of][his of M] eyes locked on your detached dick stuffed inside you.[line break][speech style of M]'Oh, so you DID find it? I suppose that's one way to carry it around. I don't think I've seen anything to match that for sheer sluttiness though - and I've seen a lot.'[roman type][or]noticing your detached dick stuffed inside you.[line break][speech style of M]'Wow. Talk about a self-indulgent slut - that's taking masturbation to a whole new level.'[roman type][stopping][line break]";
			moderateHumiliate;
			say "You shake your head and [if the player is able to speak]almost snap something back in reply,[otherwise]bristle[end if] but then restrain yourself. Instead, you meekly point to your detached dick with the most entreating expression you can manage.[line break][Big he of M] rolls [his of M] eyes.[line break][speech style of M]'Well, at least you managed to hold onto it.'[roman type][line break]";
			if M is witch:
				compute restoration of dick by M;
		otherwise if player is carrying players-detached-dick:
			say "You nod, but hold out your detached dick to [him of M] with the most entreating expression you can manage. [BigNameDesc of M] rolls [his of M] eyes, but finally seems to relent.[line break][speech style of M]'Well, at least you managed to hold onto it.'[roman type][line break]";
			if M is witch:
				compute restoration of dick by M;
		otherwise:
			if M is witch:
				say "[speech style of M]'If you find it and bring it back here, I may take pity on you and see if I can reattach it for you[again-DD].'[roman type][line break][speech style of M]'[if the latex-transformation of the player is 8][one of]Although there will probably be consequences, given your current state[or]Did I mention there'll probably be consequences, given how far gone you are? Sorry, you should have come see me sooner[or]I'll probably be able to work something out for you[or]You really should have come to me sooner though[stopping].'[otherwise if the latex-transformation of the player > 6]I also suggest you do it soon!'[otherwise]I also suggest you do that before you fully transform into a sex doll, or there may be longer term consequences.'[end if][roman type][line break]";
			otherwise:
				say "[speech style of M]'I suggest you find [reattacher][again-DD].'[roman type][line break][speech style of M]'[if the latex-transformation of the player is 8][one of]Although there could be consequences, judging by your current state[or]I think I mentioned there'll probably be consequences, given perfect a rubber doll you've become, though[or]I hope it works out for you[or]Or you could just stay that way: I'm not gonna judge[or]Unless you're happy that way. To each [his of the player] own I guess[stopping].'[otherwise if the latex-transformation of the player > 6]I also suggest you do it soon!'[otherwise]I also suggest you do that before you fully transform into a sex doll, or there may be longer term consequences.'[end if][roman type][line break]".

To compute restoration of dick by (M - a monster):
	if player is wearing players-detached-dick:
		say "[one of][speech style of M]'You couldn't even be bothered taking it out for me?'[roman type][or][speech style of M]'Wow, I guess you couldn't bear to be separated from that for even a moment, eh?'[roman type][or][speech style of M]'I guess that gives new meaning to the phrase 'Go fuck yourself', eh?'[roman type][in random order][line break]";
		say "Reaching out, [he of M] slo-o-owly extracts it from you, shaking his head at the way quiver, your eyes roll up. But the doubled pleasure is as delicious as it is unnerving - you're kind of sorry to feel your [DetachedPenis] removed. Not that you'd every admit that! [Big he of M] sniffs at it, sniggers, and [if the size of players-detached-dick < 4]pops it in and out of [his of M] mouth a few times, [his of M] tongue flicking it[otherwise if the size of players-detached-dick > 8]manages to force it down [his of M] throat in a feat of sword-swallowing, before gasping as [he of M] extracts it with a loud 'pop'[otherwise]swallows it and sucks, [his of M] cheeks hollowing out as [he of M] sucks at it, [his of M] tongue curling around the shaft[end if], which makes you stagger at the strong burst of sensation.[line break][one of][speech style of M]'Huh, looks like it's still working. Trust you to react like that just because '[roman type][or][speech style of M]'I see it's still working. Don't get any ideas though:'[roman type][in random order] [if M is witch][speech style of M]'I had to, er, attune to it for the restoration.'[roman type][otherwise][speech style of M]'I needed to magically sense who can reattach it for you. You need a witch, I'd say.'[roman type][end if][line break]";
		only extract detached dick by M;
	otherwise if player is carrying players-detached-dick:
		say "[BigNameDesc of M] takes your detached dick.[line break][speech style of M]'Let's hope I can reunite you two[again-DD].'[roman type][line break]";
		say "[BigNameDesc of M] sniffs at it, sniggers, and gives it a big lick, which makes you stagger at the strong burst of sensation.[line break][speech style of M]'Don't get any ideas: '[roman type][if M is witch][speech style of M]'I had to, er, check it out to attune my magic to it for the restoration.'[roman type][otherwise][speech style of M]'I needed to magically sense who can reattach it for you. You probably need a witch.'[roman type][end if][line break]";
		swap dick in;
		stimulate penis from M;
		swap dick out;
		slightHumiliate;
	otherwise if M is carrying players-detached-dick:
		say "[speech style of M]'Okay, let's see if it'll join back on if I do this[again-DD]...'[roman type][line break]";
	otherwise if players-detached-dick is somewhere-here:
		say "[one of][speech style of M]'Well, pick it up and give it to me if you're serious about this'[roman type][or][speech style of M]'I'm not getting it, you lazy thing. That's your job.'[roman type][or][speech style of M]'I'm not bending over for your enjoyment: you fetch it.'[roman type][or][speech style of M]'You want it reattached, you hand it to me.'[roman type][stopping][line break]";
		allocate 4 seconds instead;
	otherwise:
		say "Your detached dick is nowhere in sight." instead;
	[I'm aware this next bit is underwritten, but it can be expanded later.]
	say "[BigNameDesc of M] frowns at the [DetachedPenis], and mutters something under [his of M] breath, the only word you catch being 'Goddess', and then you see the base kind of soften and melt a bit, while you feel[again-DD] a corresponding tingling, a heated flux at your groin.";
	if the IsPlastic of players-detached-dick is 1:
		say "You feel a weird pulsing[again-DD], as the sensations from your [DetachedPenis] ebbs and flows, building and falling. But it goes on and on, and [NameDesc of M] is sweating with effort, struggling. And finally the feelings fade altogether, and [he of M] is just standing there with a [if the size of players-detached-dick is 0]magic token[otherwise]now ordinary-looking dildo. Albeit one that's a pretty faithful recreation of your dick, though clearly just silicone[end if]. WTF?!";
		say "[speech style of M]'I thought I warned you not to wait too long? Did you have this detached after the latex curse had progressed all the way? That was not wise. Not wise at all. Now look what's happened. At least you've got a ";
		let S be a random off-stage magic token;
		if the size of players-detached-dick is 0:
			say "magic token. Huh. So that's where they come from? I always wondered about that.'[roman type][line break]";
		otherwise:
			say "strap-on you could wear, I suppose.'[roman type][line break]";
			now S is a random off-stage strapon-dildo;
			summon S uncursed;
			now the strap-length of S is the size of players-detached-dick;
		if S is nothing:
			say "But a moment later, the last sorry remnant of your detached dick fuzzes and disappears.[line break][speech style of M]'Wow. That thing was so depleted, I guess, it couldn't even manage that much!'[roman type][line break]";
			strongHumiliate;
		otherwise:
			moderateHumiliate;
			now S is in the location of the player;
			compute autotaking S;
		destroy players-detached-dick instead;
	otherwise if the player is possessing a vagina:
		if players-dick-is-detached is 2:
			['2' means the 'root' of their penis is attached, that 'caused' them to have a vagina when it was detached. So replacing it plugs up the vagina and it vanishes.]
			say "[speech style of M]'Luckily I can see this [PenisSizeFlav size of the players-detached-dick] toy still has the root of your manhood attached, as its handle, so you'll soon be fully male again. Well, at least between your legs. Provided this works.'[roman type][line break]";
			passively stimulate vagina from players-detached-dick;
			say "[speech style of M]'Here goes nothing...!'[roman type][line break][Big he of M] slides the [DetachedPenis] into your [vagina] making you shudder in pleasure. Even as [he of M] concentrates on [his of M] spell, you notice [his of M] shaking [his of M] head at your slutty display. The feelings from the normal-sized dildo [']handle['] diffuse out, like everything in there is melting back together. Then [he of M]'s seating your dick and balls down solidly between your thighs[again-DD], still frowning in concentration.";
			devagina the player;
		otherwise if futanari fetish is 0:
			say "[speech style of M]'Brace yourself, this may smart...'[roman type][line break]You feel the [italic type]weirdest[roman type] pulling sensation as things inside you close in and tighten, and finally your pussy lips fuse together. Then [he of M]'s planting your dick and balls down solidly[YetAgain-DD] on the Barbie doll-like mound momentarily visible.";
			devagina the player;
		otherwise:
			say "[Big he of M] plants your dick and balls down directly above your [vagina]![line break][speech style of M]'Looks like you're about to become a futa!'[roman type][line break]";
			if futanari fetish is 2: [No balls: penis + vagina only]
				say "As it touches you, there's a weird fizzing and sparking, and your [ShortDesc of scrotum] quiver and shrink, and shrink, and finally vanish altogether!";
				now the size of scrotum is 0;
	otherwise:
		say "[speech style of M]'Here goes nothing - wish me luck[again-DD]!'[roman type][line break][Big he of M] plants your dick down solidly on the Barbie doll-like mound you've been wandering around with. Wait, did [he of M] have that the right way up?";
	say "You'd hoped it'd be pleasurable, but the sensation is closer to pain as your [DetachedPenis] fuses back to your groin.";
	compute raw dick reattachment by M;
	say "[if players-dick-detach-count is 1][speech style of M]'Whew! Been a while since I had to do that spell. I can't wait to see your next stunt!'[roman type][otherwise][speech style of M]'Whew! That spell doesn't get any easier. I may need to start charging you for that.'[roman type][end if][line break]";
	now penis is penis-erect;
	say "[variable custom style]Oh my god - I did it! I got my [ShortDesc of penis] back[again-DD]![roman type][line break]";
	strongDignify.

[All this hooks in to the start of Monster Framework/Conversation.i7x, usually lines 29-33.]
talk-dick-reattach is a talk-object.

To consider (T - talk-dick-reattach) for (M - a monster):
	if (M is a-dick-detacher or M is witch) and (players-detached-dick is carried by M or players-detached-dick is held by the player):
		now the printed name of T is the substituted form of "[variable custom style]'Please could you help me reattach my dick?'[roman type][line break]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-dick-reattach) for (M - a monster):
	if M is unfriendly:
		if M is a-non-reattacher:
			say "[speech style of M]'Hey, don't ask me how to reattach it, I used a one-shot [']protection['] device to [']draw your weapon['], heh. You probably need a magic user.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'I should think not, but don't worry, I'm sure I can think of something to fill that hole between your legs with!'[roman type][line break]";
			[And we could indeed decide to be a bastard, occasionally, and actually do so by breaking up the insertion code from the dick detachment and make it a separate function, to call here.]
	otherwise if M is buddy:
		if M is a-non-reattacher:
			say "[speech style of M]'Uh, I'm really sorry about this, but I can't. I think you'd need to find a friendly magic user.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Sure buddy, I know just the trick!'[roman type][line break]";
			compute restoration of dick by M;
	otherwise:
		say "[speech style of M]'Aww, but it's so much more fun like this! What's in it for me?'[roman type][line break]".

talk-detached-dick is a talk-object.

To consider (T - talk-detached-dick) for (M - a shopkeeper):
	if players-dick-is-detached > 0 and players-detached-dick is store and the player is in Dungeon41:
		now the printed name of T is the substituted form of "[variable custom style]'Uh, can you tell me about that, ah, [']special['], er, dildo?'[roman type][line break]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-detached-dick) for (M - a shopkeeper):
	if M is unfriendly:
		say "[speech style of M]'[one of]That thing? Ugly, isn't it. Looks like you'd enjoy it, though - if you could afford it[or]You want the weird thing, you pay for it[or]If you want it, cough up the price[stopping].'[roman type][line break]";
	otherwise if M is annoyed:
		say "[speech style of M]'[one of]I don't have time to describe every item in my shop[or]I can let you try it out if you like[or]Just don't leave without paying for it[or]I guess everyone has their own peculiar taste[or]I won't be sorry to sell that weird thing[in random order].'[roman type][line break]";
	otherwise if M is buddy:
		say "[speech style of M]'[one of]It'd suit you, if you could afford it[or]It matches your skin tone remarkably well, don't you think[or]I have a feeling it's magical in some way[or]Could be something from the R&D lab[or]Ha ha, that'd suit you, somehow, you know? You might check out the witch in the woods - she knows some kinky magic. Heh: she might even offer to attach it to you, just for a joke[in random order].'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Realistic-looking, isn't it[or]Weird. It just turned up suddenly in my shop[or]Some poor fool lost it, maybe[or]Could be a new product from the R&D labs. Hard to say, really[or]R&D dropped it off for me. They trust me with some of their experimental trial products you know[or]Sometimes the dwellers here drop off the odd found item to me[or]Why not see if the witch in the woods'll attach it to you for a laugh? You might enjoy having a dick, you never know[in random order].'[roman type][line break]".

[Provided for when you want to optionally mention the latex-ness of a body part.
Note: can't really be built into PenisFlavour as you might think, because that's
also used to describe other entities' penises, and old photos of the player's,
possibly from before they were photographed.
]
To say LatexFlav with (T - a text): [T is the text to end with - e.g. ", "]
	if the latex-transformation of the player is 8:
		say "[one of]shiny[or]glossy[in random order] [one of]plastic[or]latex[or]rubber[or]silicone[in random order][T]";
	otherwise if the latex-transformation of the player > 5:
		say "[one of]oddly[or]curiously[or]strangely[in random order] [one of]slick[or]rubbery[or]plastic-looking[in random order][T]";
	otherwise if the latex-transformation of the player > 2:
		say "[one of]somewhat[or]somehow[or]slightly[or]mildly[in random order] [one of]artificial[or]smooth[or]slick[or]satiny[in random order][T]".

To say LatexFlav:
	if the latex-transformation of the player > 2:
		say LatexFlav with " ".

To say DetachedPenis:
	let L be the size of players-detached-dick;
	if L is:
		-- -1: say "memory of a penis"; [Should really never happen!]
		-- 0: say "[one of]coin-sized disc[or]penis decal[or]dick decal[or]drawing of your dick[or]penis decal[or]penis-picture sticker[or]penis decal[or]penis sticker[or]stick-on dick pic[in random order]"; [Just in case]
		-- 1: say "nubbin";
		-- 2: say "penis-shaped button";
		-- 3: say "[if the latex-transformation of the player > 5]toy[otherwise]miniature[end if] dildo";
		-- 4: say "beginner-sized dildo";
		-- 5: say "small dildo";
		-- 6: say "dildo";
		-- 7: say "sizeable dildo";
		-- 8: say "large dildo";
		-- 9: say "impressive dildo";[10 inch]
		-- 10: say "ludicrous dildo";[12 15, and 20 inches. 12 is natural max]
		-- otherwise: say "monstrous dildo".

To say ShortDesc of (C - players-detached-dick):
	say LatexFlav with ", ";
	say DetachedPenis [PenisFlavour (the size of players-detached-dick)].

To say DetachedPenisFlavour:
	if the size of players-detached-dick is 0: [I'm not sure how/if that can happen]
		say LatexFlav with ", ";
		say "[DetachedPenis][if players-dick-is-detached is 2] stuck on the base of a very ordinary dildo[end if]";
	otherwise:
		say "[if latex-transformation of the player is 0]utterly realistic[otherwise if latex-transformation of the player > 6]plastic[otherwise]fake-looking[end if] duplicate of your [DetachedPenis] and [ShortDesc of scrotum]";
		if players-dick-is-detached is 2, say " (as a kind of handle for a regular dildo)".

To say mystical-player-penis:
	if players-dick-is-detached is 0, say player-penis;
	otherwise say "[one of]detached[or]separated[or]mystically connected[or]magically linked[or]portally-connected[in random order] [player-penis]".

To decide which number is the girth of (C - players-detached-dick):
	if players-dick-is-detached is 2 and size of players-detached-dick is 0, decide on 6; [The only way to use it then is to use the normal sized dildo the decal is stuck to the base of]
	decide on size of players-detached-dick.

To literally self pleasure by (P - a person) in (O - an orifice):
	if P is the player:
		say "[one of][variable custom style]I can't believe I'm doing this - fucking myself with my own [MediumDesc of players-detached-dick], thrusting it in and out of my [O]. But it feels so good![roman type][or][variable custom style]OMG! I think this may be addictive. A-dick-tive! Ungh. So good. To feel it plunge inside, and to be plunged inside of at the same time.[roman type][or][variable custom style]'Ungh! Yeah, baby, ram yourself harder!'[roman type][or][variable custom style]Oh god, oh god, yes! It's double the pleasure![roman type][or][variable custom style]I'm not sure I can stop myself, feeling my [ShortDesc of players-detached-dick] sliding in and out, and at the same time having my [O] forced open and penetrated...[roman type][or][variable custom style]I don't want to stop, but I can, any time I like. Ungh! Ungh! I think...[roman type][or][variable custom style]It's not like I'm conditioning myself, after all. I can stop. If I wanted to...[roman type][or][variable custom style]Ohhhh, so go-o-o-od! I'll probably stop soon. Just a little more.[roman type][or][variable custom style]Mmm-ngh! Yes, yes, yes! Double-team me, [NameBimbo]! Don't stop.[roman type][or][variable custom style]It's too much. I think I'll need to keep doing this forever.[roman type][or][variable custom style]Who'd want to ever stop this? I love this game! Ungh, ungh, ungh![roman type][or][variable custom style]Oh yeah, just like that.[roman type][or][variable custom style]Just like that, just like that. Mmm-ngh![roman type][stopping][line break]";
		say "[one of][variable custom style]I can't believe I'm being fucked llike this: reamed by my own [MediumDesc of players-detached-dick], feeling it thrusting in and out of my [O]. But it feels so good![roman type][or][variable custom style]OMG! I think this may be addictive. A-dick-tive! Ungh. So good. To feel it plunge inside, and at the same time, to be plunged inside of![roman type][or][variable custom style]'Ungh! Yeah, baby, ram me harder!'[roman type][or][variable custom style]Oh god, oh god, yes! [BigNameDesc of P] doesn't know it, but doing me with my own dick is double the pleasure![roman type][or][variable custom style]I'm not sure I ever want [he of P] to stop. The feeling, having my own [ShortDesc of players-detached-dick] sliding in and out, and at the same time, my [O] being forced open, penetrated...[roman type][or][variable custom style]I don't want [him of P] to stop, but I my ask [him of P] to... in a little while. Ungh! Ungh![roman type][or][variable custom style]It's not like [he of P]'s conditioning me, after all. It's not addictive. I can resist the pleasure...[roman type][or][variable custom style]Ohhhh, so go-o-o-od! I'll probably ask [him of P] to stop soon. Just a little longer...[roman type][or][variable custom style]Mmm-ngh! Yes, yes, yes! You're double-teaming me, [NameDesc of P]! Don't stop.[roman type][or][variable custom style]'It's too much. I think I need You to keep doing this forever.'[roman type][or][variable custom style]Who'd ever want this to stop? I love this game! Ungh, ungh, ungh![roman type][or][variable custom style]'Oh yeah, just like that.'[roman type][or][variable custom style]'Yes, yes, never stop. Mmm-ngh![roman type][stopping][line break]";
	[Now serve up a double pleasure: from being simultaneously giver and receiver.]
	passively stimulate O from players-detached-dick;
	if P is the player:
		stimulate O from players-detached-dick;
	otherwise:
		stimulate O from P.

To say SqueezeDesc of players-detached-dick:
	say "[one of]You give it a little squeeze, just for reassurance that it's really yours, and bite your lip at the sensations that run from it into your belly and up your spine.[or]You can't resist giving it another firm squeeze, again biting your lip at the shivery pleasure your touch generates.[or]You give it another subtle but firm squeeze, enjoying the pleasure that shivers from it up your spine, and feeling it stiffen a little in turn. Mmm.[or]You squeeze and relax your grip on it, squeeze and relax, your nipples tightening at the sensations.[then at random]";
	if the player is a pervert:
		say "[one of][variable custom style]Maybe if I just kind of... slip it back inside me, that'll dissolve the spell?[roman type] [or]You wonder what it'd feel like to push it inside yourself? Probably great, since you'd feel the penetration from both sides![line break][or]Maybe if you gave yourself a blowjob, that'd break the spell? You feel kind of eager to try the experiment.[line break][in random order][if the size of players-detached-dick < 4][variable custom style]I mean, it's really small and cute, so there's no harm in trying, right?[roman type][otherwise if the size of players-detached-dick > 7][variable custom style]Especially given its sheer size. It'd feel fucking amazing, I bet![roman type][otherwise][variable custom style]I mean, it's pretty much the perfect size for a sex toy: not too big, not too small.[roman type][end if] [variable custom style]No one would object, since it's my own dick, after all, right?[roman type][line break]".

Report examining players-detached-dick:
	repeat with O running through orifices penetrated by the noun:
		if the size of the noun is 0, say "It is currently stuck above your [variable O] like a small round band-aid[one of][or][or], maybe signifying 'A dick normally goes here'[at random].";
		otherwise say "It is currently inside your [variable O].".

[
I had real problems getting this function to ever be called. I had tried:
	To say ExamineDesc of players-detached-dick:
	To say ExamineDesc of (C - a players-detached-dick):
and I *think* they were the cause of the problem. Maybe 80% sure.
Aika remarked we normally have either ExamineDesc or ClothingDesc, and the pdd is formally clothing but also seems more like an object you interact with, so...?
What worked:
To say ExamineDesc of (C - players-detached-dick):
To say ClothingDesc of players-detached-dick:
]
To say ClothingDesc of players-detached-dick:
	if players-dick-is-detached is 0:
		say "BUG - How are you even able to see this? Your dick isn't detached!" instead;
	otherwise if players-detached-dick is somewhere-here:
		say "[if latex-transformation of the player is 0]An utterly realistic[otherwise if latex-transformation of the player > 6]A plastic[otherwise]A fake-looking[end if] [if the size of players-detached-dick is 0]picture of your [DetachedPenis][otherwise]duplicate of your [DetachedPenis][end if][if the size of players-detached-dick > 0] and [ShortDesc of scrotum][end if], now detached and separate from you";
		if players-dick-is-detached is 2:
			say "[if the size of players-detached-dick is 0] is [one of]stuck onto[or]stuck to[or]stuck on[in random order] the base of a boring dildo[otherwise] [one of]forms a kind of handle for a regular dildo[or]is joined to a regular dildo[or]forms one half of a double-ended dildo[in random order][end if]";
		say ".";
	otherwise:
		say "[one of]You can't really say[or]You're not 100% certain[in random order] what your [one of]dick[or]cock[or]prick[in random order] looks like, [one of]as it's not in sight[or]as it's not in sight right now[or]since it's not here just at the moment[or]since it's not here[or]since it's been a while since you last saw it[as decreasingly likely outcomes].".

To say ExamineDesc of (C - players-detached-dick):
	let sense be "feel";
	if players-detached-dick is somewhere-here, now sense is "look";
	say "A [DetachedPenisFlavour]. It is in fact your own dick, magically detached. [one of]Not something you ever expected to say.[or]Your manhood, literally stolen from you.[or]How humiliating![in random order][line break][if the size of players-detached-dick < 4]It really is small.[otherwise if the size of players-detached-dick > 7]Your surge of pride at its impressive size and girth is sadly deflated by the fact it's no longer attached to you.[end if][if latex-transformation of the player is 8]It's also clearly a soft plastic or silicone, even if it does otherwise [feel] exactly as it did before it was detached.[otherwise if the latex-transformation of the player > 5]It doesn't [feel] entirely real, thanks to the [LatexFlav]it seems to be made from.[end if][line break]";
	if players-detached-dick is held by the player:
		say "The question is, how do you reattach it?";
		say SqueezeDesc of players-detached-dick;
	otherwise:
		say "[one of]The problem is, how to get it back? [or][or]The question is, how do you get to it? [or][in random order]You still have a strong [one of]mystical connection[or]magical link[or]sensory connection[in random order] to it, [one of]feeling everything it feels[or]experiencing its remote adventures[or]somehow really still joined to it, as if by a portal[or]punishments and rewards transferred between you and it as if it were still a part of you[as decreasingly likely outcomes].".

To say MediumDesc of players-detached-dick:
	say ClothingDesc of players-detached-dick.

Figure of pdd is the file "Items/Accessories/Toys/Transthetics.com-EZP.jpg".
To decide which figure-name is the examine-image of (C - players-detached-dick):
	decide on figure of pdd.

portal-cock-ring is a clothing. portal-cock-ring can be magic-hidden or magic-revealed. portal-cock-ring is magic-hidden. The printed name of portal-cock-ring is "[if the item described is magic-hidden]large, shiny nickel [one of][or]cock [cycling]ring[one of], too large to fit on a finger[or][cycling][otherwise if the intelligence of the player < 3]large shiny cock ring, that's got magic[otherwise]large, shiny dick-detaching cock ring[end if]". The text-shortcut of portal-cock-ring is "ckr". Understand "cock ring" as portal-cock-ring. portal-cock-ring is unique.
Definition: a portal-cock-ring is nudism-enabling: decide yes.

Figure of ckr is the file "Items/Accessories/Toys/silver-torus-istockphoto-140408586-612x612.jpg".
To decide which figure-name is the examine-image of (C - portal-cock-ring):
	decide on figure of ckr.

To say ShortDesc of (C - portal-cock-ring):
	say "[one of]large shiny ring[or]large nickel ring[or]heavy gauge ring[in random order]".

To say its-got-my-dick for (P - a person):
	if players-dick-is-detached > 0:
		if P is carrying players-detached-dick:
			say "[one of]But more than that, something else dawns on you, something that's been kind of subliminally bugging you since [he of P] arrived: the ever-present background sensations from your detached and stolen penis, the small movements and shifts of its position, and of things pressing on it... They fit really well with the motion of [NameDesc of P]. You're suddenly sure [he of P] is carrying it![or]From the sensations coming from your detached dick, you're sure [he of P]'s carrying it.[or]You're sure [he of P]'s got your dick.[stopping][if P is intelligent] [one of]And from the look [he of P] gives you as you realise that,[or]Something about [his of P] supercilious look of superiority makes you also sure[or][Big his of P] smirking superiority says[or]And[stopping] [he of P] knows [italic type]you[roman type] know it.[end if][line break]".

Check touching players-detached-dick:
	if players-detached-dick is not somewhere-here:
		say "The [DetachedPenis] that used to be your penis is nowhere in sight.";
		stop;
	if player is not wearing players-detached-dick and player is not carrying players-detached-dick:
		say "You'd need to pick up your dick to do that.";
		stop;
	say "You [one of]gingerly[or]hesitantly[or]nervously[or]bite your lip as you[in random order] touch it. [run paragraph on]";
	if the latex-transformation of the player > 3:
		say "[if the latex-transformation of the player is 8]You can't feel anything at all from your fingertips[otherwise if the latex-transformation of the player > 6]It feels like touching yourself through thick gloves[otherwise]Your fingers feel a little numb[end if][run paragraph on]";
		say ", but you certainly [italic type]can[roman type] feel your [ShortDesc of players-detached-dick], despite it having been removed from your body! In fact, if anything, it's [italic type]more[roman type] sensitive than before![if the latex-transformation of the player > 7] Which makes so little sense, it's a bit worrying.[otherwise]Which must be a good sign, right?[end if][line break]";
	otherwise:
		say "You feel a strangely doubled sensation when your fingertips wrap around the [LatexFlav]shaft.";
	say "[one of]You can't really believe you're holding your own detached dick.[or]You stare at it, nonplussed. Now what?[or]Could there be anything more humiliating than holding your own dick, now it's been turned into some kind of living dildo?[or][variable custom style]What do I do now? Rub it in glue and try to stick it back on?[roman type][in random order][line break]";
	say SqueezeDesc of players-detached-dick;
	if the player is a pervert and Dungeon41 is discovered, say "[one of]You suddenly wonder what sort of price you could get for this if you sold it to the shopkeeper?[or]You once again imagine presenting it to the impressive shopkeeper. Would [he of the shopkeeper] buy it, or would [he of the shopkeeper]... use it on you, instead?[or]You once again imagine trading it to the shopkeeper.[stopping][line break][variable custom style]This game is messing with my head![roman type][line break]You [one of]lick your lips[or]bite your lip[or]swallow unconsciously[in random order], staring at your detached dick.";
	do nothing instead. [This stops it from running on and saying "You feel nothing unexpected.", from elsewhere.]

[So, the sex parts of the body retain their sensation now under the latex doll TF, but the other parts grow progressively more numb.
I really didn't want the game to say "You feel nothing unusual" when you touch yourself in the clearly unusual circumstances of changing into a latex sex doll!
]
Check touching a body part:[when the latex-transformation of the player > 4]
	let B be the noun;
	say "[if the latex-transformation of the player is 8]You can't feel anything at all from your fingertips[otherwise if the latex-transformation of the player > 6]It feels like touching yourself through thick gloves[otherwise if the latex-transformation of the player > 3]Your fingers feel quite numb[otherwise if the latex-transformation of the player > 0]The skin of your fingertips feel somehow different[otherwise]You reach out, [one of]wondering what this will feel like[or]delicately[or]gingerly[or]hesitantly[or]licking your lips[or]biting your lip[or]tentatively[or]gently[in random order][end if][run paragraph on]";
	[To be used e.g. like: "feels/feel [latex-sensitive-weird]" ]
	let feels be "feels"; [Set this to "feel" before using with plurals like breasts]
	let latex-sensitive-weird be "[if the latex-transformation of the player > 6][feels] at least as sensitive as before. Which makes so little sense, it's a bit worrying.[otherwise if the latex-transformation of the player > 0][feels] normal. Which must be a good thing, right?[otherwise][feels] normal.[end if][line break]";
	if B is hair:
		say ", but your [ShortHairDesc] [if the latex-transformation of the player is 0]feels soft and silky, like something from a shampoo commercial[otherwise if latex-transformation of the player < 6]a little coarse[otherwise]coarse and fake, like a cheap wig[end if].";
	otherwise if B is penis: [They're feeling their dick - but is it attached or detached? It depends on whether it's to hand.]
		if debugmode > 1:
			say "Debug: players-dick-is-detached is [players-dick-is-detached].";
		if players-dick-is-detached is 0: [They're feeling their still-attached dick.]
			if size of the penis is 0 and the player is possessing a vagina:
				say ", but you don't have a penis[if TG fetish > 0] anymore[end if]. [one of]You spread your fingers to feel yourself[or]You hesitantly feel between your legs[or]You gently touch yourself down there[or]Your fingers softly trace over your lower lips[or]You softly spread the folds of your [vagina][or]Your fingertips flutter over your [if the labia plumpness of the vagina > 0]swollen [end if]lower folds[in random order]. [TotalDesc of vagina]";
			otherwise: [they can have a doll-like mound: size 0]
				say ", but your [player-penis] [latex-sensitive-weird][if the size of the penis < 5] If embarrassingly small.[end if][line break]";
				say TotalDesc of penis;
				if the sex addiction of the player > a random number between 1 and 25:
					if the size of the penis > 0:
						passively stimulate penis from player;
					otherwise:
						say SqueezeDesc of players-detached-dick;
						arouse 50; [We can't passively stimulate penis from player because it would convert it to stimulating the vagina.]
					if player is wearing portal-cock-ring:
						say cock ring effect of portal-cock-ring; [Touch --> may detach, heh!]
		otherwise if player is carrying players-detached-dick: [Following: all detached]
			say ", but the [DetachedPenisFlavour] feels fine. Maybe even more sensitive than when it was still part of you.";
			if the sex addiction of the player > a random number between 1 and 25:
				say SqueezeDesc of players-detached-dick;
				arouse 50; [We can't passively stimulate penis from player because it would convert it to stimulating the vagina.]
		otherwise if player is wearing players-detached-dick:
			say ", but based on the sensations from the [DetachedPenisFlavour] buried to the hilt inside you, it's still working just fine.";
			if the sex addiction of the player > a random number between 1 and 25:
				say SqueezeDesc of players-detached-dick;
				let oro be a random orifice penetrated by the players-detached-dick;
				passively stimulate oro from players-detached-dick;
		otherwise if the players-detached-dick is in the location of the player:
			say ", but if you pick it up, you [italic type]could[roman type] check it out.";
		otherwise if players-detached-dick is somewhere-here:
			say ", but it's a little out of reach in the circumstances.";
		otherwise:
			say ". [one of]You wish[or]If only[or]Oh, for the days when[in random order] you [italic type]could[roman type] touch your penis. Unfortunately, [one of]you don't know where it is[or]it's not here[or]you can't see it from here[in random order]. [if the player is possessing a vagina]Maybe you were thinking of touching your [vagina] instead?[otherwise]Your [one of]new [stopping][one of]Barbie doll-like mound though feels oddly nice to stroke[or]basically featureless groin does feel oddly sensitive though[or]smooth, empty mound does tingle a bit to your touch however[in random order].[end if][line break]";
	otherwise if B is scrotum:
		now feels is "feel";
		if players-dick-is-detached is 0:
			if size of the penis is 0 and the player is possessing a vagina:
				say ", but you don't have a scrotum[if TG fetish > 0] anymore[end if].";
			otherwise: [they can have a doll-like mound: size 0]
				say ", but your [ShortDesc of scrotum] [latex-sensitive-weird][line break]";
		otherwise if player is carrying players-detached-dick:
			say ", but your testicles - still contained inside your [LatexFlav]ballsack - feel just as sensitive as ever. They seem firmly attached to your [DetachedPenisFlavour]. [one of]Which is probably good[or]At least they're still attached to your dick, even if the whole package is no longer attached to [italic type]you[roman type][or]At least your package is still together[in random order].";
		otherwise if player is wearing players-detached-dick:
			say ", and your testicles - nestled inside your [LatexFlav]ballsack - feel  as sensitive as ever. Even though they're now hanging off the [DetachedPenisFlavour] buried to the hilt inside you, rather than dangling as normal from between your legs.";
			if the sex addiction of the player > a random number between 1 and 25:
				say SqueezeDesc of players-detached-dick;
				arouse 50; [We can't passively stimulate the now detached penis's balls from player because it would convert it to stimulating the vagina.]
		otherwise if the players-detached-dick is in the location of the player:
			say ", but if you pick your dick up off the ground, you [italic type]could[roman type] have a feel.";
		otherwise if players-detached-dick is somewhere-here:
			say ", but just at the moment you don't have your stolen scrotum to hand.";
		otherwise:
			say "You wish you could. Unfortunately, [one of]you don't know where it is[or]it's not here[or]you can't see it from here[in random order]. [if the player is possessing a vagina]Or did you mean to feel up your [vagina] instead?[otherwise]You just have an empty, Barbie doll-like mound where your balls used to hang. Though that area feels quite nice to your touch.[end if][line break]";
	otherwise if B is face: [I don't think lips exist as a separate body part?]
		if the latex-transformation  of the player > 2:
			now feels is "feel"; [For lips]
			say ", and your face feels similarly numb. [italic type]Except[roman type] for your [LipDesc], which feel exactly as sensitive before. [one of]Your fingers are so numb that your lips tingle at their touch, as if it's someone else playing with them, not you.[or]You feel oddly like one of those sex dolls has touched your lips, not you yourself.[or]The touch of those fingertips is strangely thrilling, like it's someone else playing with your lips.[or]They tingle at the touch of your fingers.[in random order] Your lips [latex-sensitive-weird][if the lips of face is 1]They feel a little swollen and tingly[otherwise if the lips of face is 2]They feel swollen, begging to be touched or used[otherwise if the lips of face is 3]They feel like succulent pillows, [one of]and you find you keep running your tongue over their soft plumpness[or]and you find yourself continually biting softly at them[or]and every little touch shoots little bursts of secret pleasure down your spine[or]and just pouting or pursing them together fires little thrills of pleasure through you[or]you picture them wrapped tight around a velvety shaft[or]you know they'd feel [italic type]fine[roman type] sliding up and down... the right object[in random order].[end if][line break]";
		otherwise:
			say ", and your face is smooth. [italic type]Especially[roman type] your [LipDesc], which feel soft and delicate[if the lips of face is 0] but otherwise normal.[otherwise if the lips of face is 1], and a little swollen and tingly[otherwise if the lips of face is 2] and swollen, begging to be touched or used[otherwise if the lips of face is 3] and swollen into two succulent pillows. [one of]You find you keep running your tongue over their soft plumpness[or]You find yourself continually biting softly at them[or]Every little touch shoots little bursts of secret pleasure down your spine[or]Just pouting or pursing them together fires little thrills of pleasure through you[or]You picture them wrapped tight around a velvety shaft[or]You know they'd feel [italic type]fine[roman type] sliding up and down... the right object[in random order][end if].";
	otherwise if B is asshole:
		say ", and your [AssDesc] feels almost as numb. But in contrast, that's not how your [ShortDesc of asshole] feels: it's quite sensitive.";
	otherwise if B is vagina:
		if players-dick-is-detached is 0:
			say ". [TotalDesc of vagina]";
		otherwise:
			let this-minute be (starting-earnings - earnings ) / 60;
			if this-minute + 5 < the minute-detached of players-detached-dick:
				say ", [one of]wondering what a [vagina] will feel like[or]still in shock from having your dick stolen[or]still strggling to come to terms with your recent sex-change[stopping]";
			say ". Instead of your [PenisFlavour size of players-detached-dick], you now have a [vagina]. [one of]A [vagina]! You can't believe it. But it's right there, between your legs. You hesitantly touch it. [TotalDesc of vagina] Oh my goodness![or][TotalDesc of vagina][stopping]";
	otherwise if B is breasts:
		now feels is "feel";
		if the player is wrist bound behind:
			say ", but with your wrists bound behind you as they are, you can only guess how your [BreastDesc] feel.";
			if the sex addiction of the player > a random number between 1 and 20:
				say "You squirm, biting your lower lip, unable to, uh, check they're still okay, and your needy nipples aren't, er, suffering from a lack of blood flow or anything.";
		otherwise:
			say ", but your [BreastDesc] feel... quite nice. They [BreastBounceDesc] as you manipulate them. You squeeze them together, feeling them [if the largeness of breasts < 4]resist the gentle pressure[otherwise if the largeness of breasts <  6]touch delightfully[otherwise if the largeness of breasts < 8]smoosh together deliciously, forming a deep cleavage[otherwise if the largeness of breasts < 11]pressing together like big jiggly pillows[otherwise if the largeness of breasts < 14]barely corralled by your small hands[otherwise]slip and slide, overflowing your two small hands[end if].";
			if the sex addiction of the player > a random number between 1 and 20:
				say "[one of]You give your nipples a little tweak, biting your lip at the sweet sensation[or]You tweak your nipples, and see them perk up[or]You flick your nipples a couple of times, revelling in the shivery pleasure[or]You strum your fingers across your nipples, to a sharp tingle of pleasure[in random order].[if the latex-transformation of the player > 6]They [latex-sensitive-weird][line break][end if]";
			passively stimulate breasts from player;
	otherwise if B is hips:
		say ", as do your [HipDesc].";
	otherwise if B is belly:
		say ", as does your [ShortDesc of belly].";
	otherwise if B is thighs:
		say ", as do your [ShortDesc of thighs].";
	otherwise if B is arms:
		say ", as do your [ShortDesc of arms].";
	do nothing instead.

[
So this function -- Check taking penis -- is a little bit odd and required
some discussion among the developers (i.e.: schooling Selkie).
The penis object is implemented as a background scenery object, so it's
everywhere the player can be. It's NOT the same object as the player's
detached penis.
If the player somehow knows a monster has their (detached) penis, I wanted the
player to get a believable reaction if they could somehow try to take it back.
However, if an object is carried by another person there's no way for the
player to reference it.
So while this won't let them take the penis if it's held by a monster, it's
a way to have a sensible reaction from a monster if they're carrying it.
Since it seems natural a player might type "take penis" if they think their
detached dick is available for the taking, then this can also redirect the
game from the nonsensical action of taking the true penis and instead interpret
that as meaning taking the detached dick when that makes sense.
]
Check taking penis:
	if players-dick-is-detached is 0:
		if the player is possessing a penis:
			say "You already have a penis." instead;
		otherwise:
			say "You don't have a penis. Perhaps you meant to offer to service one instead?" instead;
	if players-detached-dick is carried by the player or players-detached-dick is worn by the player, say "You already have your detached dick!" instead;
	[The check that their hands free etc. is handled by the normal checks when they try to take it.]
	let M be a random person carrying players-detached-dick; [A monster is also a person]
	if M is the player:
		do nothing instead; [When this function was taking players-detached-dick, I had this line as: continue the action; That would be wrong now as it would lead them to the background penis object which would make no sense.]
	otherwise:
		if M is in the location of the player: [They can't take their penis from the monster, but they can annoy it.]
			now M is interested;
			if M is intelligent:
				say "[speech style of M]'Come on then, try to take it - if you can, you weakling.'[roman type][line break]" instead;
			otherwise:
				say "[BigNameDesc of M] tenses, gripping your [DetachedPenis] more tightly, watching you." instead;
		otherwise:
			say "You wish you could. Unfortunately, you last saw it just before it was carried off." instead. [This could be tracked separately with a property called maybe last-taker. But it would only be used for musings like this.]

To say ClothingDesc of (C - portal-cock-ring):
	say "This heavy gauge, gleaming nickel ring is quite weighty, and quite large. Far too large to fit on a finger, toe, or even a thumb. [if C is magic-hidden][one of]What could it be for? Turning it over and around, you have a sudden thought: this is a cock ring, a ring to trap the blood flow in your [penis] to give you bigger, longer-lasting erections! Hmm, interesting...[or]A cock ring.[stopping][otherwise if C is magic-revealed and the intelligence of the player >= 3] It's a magical dick-detaching cock ring.[otherwise if the magic power of the player > 0] You sense a potent magic contained by the heavy ring.[end if] [if the player is wearing C][one of]It feels snug and somehow reassuring against your [player-penis][or]Its solid weight adds a kind of bonus [']heft['] to your [player-penis][or]Its snug grip feels like a steady, slavish recognition of the power of your [player-penis][in random order][otherwise if the size of penis < 3]It's clearly too big for your [sissy-penis], but maybe it could have a beneficial effect?[otherwise if the size of penis < 6] It looks a little big for your [sissy-penis], but it might stay on?[otherwise if the size of penis > 8]Your [manly-penis] looks like it'd be quite tight once you got an erection, but it would look doubly impressive, and keep you rock hard as long as you liked.[end if][line break]".

To say MediumDesc of (C - portal-cock-ring):
	say "[if C is unidentified]large and heavy gauge, expensive-looking solid nickel ring[otherwise if the intelligence of the player < 3]large shiny silver ring that you dimly remember's got yummy magic in it[otherwise]heavy magical dick-detaching cock ring[end if]".

[Wearability rules. Aika wrote:
Essentially, for each thing that would make the item not wearable, there should be a unique rule declared in this format.
summoning will be 0 if the player is putting on the item themselves and 1 if it is being put on by an NPC or being summoned by a magical effect.
if summoning is 0, autowear will be false if the player is manually putting on the item and true if the game is making the player automatically put on the item regardless of user input.
rule fails is what needs to be called if the item cannot be worn. This will end the entire rulebook, so any text you want to output when the player is manually putting the item on (i.e. when summoning is 0 and autowear is false) needs to go before this line.
Something that blocked manual wearing but not summoning would put the summoning is 0 check a line earlier, so for example:

if the player is proud and summoning is 0:
	if autowear is false, say "You're feeling too self-conscious to put that on!";
	rule fails.
because if summoning is 1, we don't want to trigger the "rule fails" line.
]

portal-cock-ring wearability rules is a rulebook. The wearability rules of portal-cock-ring is portal-cock-ring wearability rules.

This is the portal-cock-ring penis is detachable rule:
	if players-dick-is-detached is not 0:
		if debugmode > 0, say "Detachable check: no, already detached [players-dick-is-detached].";
		rule fails.
The portal-cock-ring penis is detachable rule is listed in the portal-cock-ring wearability rules.

This is the portal-cock-ring clashes with chastity rule:
	if there is a worn chastity bond:
		if summoning is 0 and autowear is false, say "You can't get it on past your chastity protection.";
		rule fails.
The portal-cock-ring clashes with chastity rule is listed in the portal-cock-ring wearability rules.

This is the portal-cock-ring dicks only please rule:
	if the player is female:
		if summoning is 0 and autowear is false, say "Only [if the bimbo of the player > 10]a hunk of a man[otherwise]someone [one of]with an actual dick still attached[or]who still had their dick[or]who hadn't had their dick stolen[or]with a dick[stopping][end if] man could wear this.";
		rule fails;
	if the player is not possessing a penis:
		if summoning is 0 and autowear is false, say "Only [if transGender is 1]someone with a penis[otherwise]a real man[end if] could wear this.";
		rule fails.
The portal-cock-ring dicks only please rule is listed in the portal-cock-ring wearability rules.

This is the portal-cock-ring dick accessibility rule:
	if the player is possessing a penis:
		repeat with C running through undisplacable pussy covering clothing:
			if summoning is 0 and autowear is false, say "You can't slip it on past your [printed name of C].";
			rule fails;
		if summoning is 0 and autowear is false:
			if the size of penis < 5:
				say "Your [ShortDesc of penis] looks [if the size of penis < 2]ridiculously [otherwise if the size of penis < 4] far [end if]too small to stay on, yet you sense some magic that makes you hope it will.";
			otherwise if the size of penis > 8:
				say "Your [ShortDesc of penis] looks [if the size of penis > 11]far [otherwise if the size of penis > 10] way [end if]too big for it to fit over it, yet you sense some magic that makes you hope it will.".
The portal-cock-ring dick accessibility rule is listed in the portal-cock-ring wearability rules.

[
Check wearing portal-cock-ring:
	if not penis-is-detachable by player using 1: [A portal detacher acts via BJ]
		[Something is stopping it; try to state the reason.]
		if there is a worn chastity bond, say "You can't get it on past your chastity protection." instead;
		if the player is female, say "Only [if the bimbo of the player > 10]a hunk of a man[otherwise]someone [one of]with an actual dick still attached[or]who still had their dick[or]who hadn't had their dick stolen[or]with a dick[stopping][end if] man could wear this." instead;
		if the player is not possessing a penis, say "Only [if transGender is 1]someone with a penis[otherwise]a real man[end if] could wear this." instead;
		if the size of penis < 5, say "Your [ShortDesc of penis] looks [if the size of penis < 2]ridiculously [otherwise if the size of penis < 4] far [end if]too small to stay on, yet you sense some magic that makes you hope it will. ";
		repeat with C running through undisplacable pussy covering clothing:
			say "You can't slip it on past your [printed name of C]." instead;
		say "Something unusual is making that impossible." instead.
]

Report wearing portal-cock-ring:
	let K be a random worn portal-cock-ring;
	say "You carefully slide the shiny ring over the tip of your [player-penis][if the size of penis > 8], and the ring magically expands to match your size[otherwise if the size of penis < 5], and just as you'd hoped, the ring gently shrinks down[end if]. It fits comfortably around the shaft, neither too snug nor too loose, and you slide it down to the base.[if the size of penis < 3] Of course, it's not like you had to slide it very far. Your tip barely pokes past the ring.[end if]";
	say "It's just nicely tight. A warm pulse vibrates through it, and you feel your organ start to swell.";
	if there is a worn restricting research airhancer:
		say "Unfortunately, that's followed immediately by a stronger pulse from the stupid airhancer thing, and your [ShortDesc of penis] immediately softens again. Dammit!" instead;
	otherwise:
		[ What odds? Without a reason to do so, the player wouldn't often take it off once they've put it on, so the initial chance is from their first attempt. It can also trigger (1 in 10) from the 'cock ring effect', which is called after each ejaculation while wearing it, and sometimes when the player touches it and their sex addiction triggers a bit of gentle self-pleasuring. If we invent some reason that would encourage the player taking the ring off occasionally, then this probability should be reduced. Another approach might be to count the number of wearings (including with an airhancer, which stops it triggering), so that count also adds to the probability.
		# (0/1) + 1..5 > 4 --> 1 in 5, and 2 in 5 if Game Hates You.
		# (0/1) + 1..5 > 3 --> 2 in 5, and 3 in 5 if Game Hates You.
		# (0/1) + 1..5 > 2 --> 3 in 5, and 4 in 5 if Game Hates You.
		]
		if tough-shit + (a random number between 1 and 5) > 4:
			say "With a thrilling feeling of potency your [player-penis] erects, ";
			compute detach-players-dick by portal-cock-ring using 1;
		otherwise:  [I think this was covered by the Check function: if the player is able to get erect:]
			say "A powerful surge of blood fills your shaft, your penis once more ready for action!";
			now penis is penis-erect.

[This determines whether something can get at the player's attached dick to detach it. Some items of clothing will prevent that. As will it already being detached and/or destroyed.
I think I'll allow even a zero-sized dick to be detached, in which case it looks like a flat disc (maybe would like like a 2D drawing of a penis from head on?
A chastity cage is no protection - the penis and cage is detached together.
It's possible in the future we'll want to change this function to take the same
'method' argument that the compute detach-players-dick function does, but at
present this should apply regardless of the method (I think).
]
To decide if penis-is-detachable by (M - a thing) using (method - a number):
	if players-dick-is-detached is not 0:
		if debugmode > 0, say "Detachable check: no, already detached [players-dick-is-detached].";
		decide no; [Currently detached; possibly even destroyed (...-is-detached -1).]
	if there is pussy covering undisplacable clothing: [pussy covering means crotch covering]
		if chastity-belt is worn:
			if debugmode > 0, say "Detachable check: no, chastity belt worn.";
			decide no; [That protects the dick, if they're a futa]
		if there is a worn chastity cage: [If it's the ONLY protection, then the dick and it can be detached as a whole. Otherwise, not.]
			repeat with C running through pussy covering undisplacable clothing:
				if C is not chastity cage:
					if debugmode > 0, say "Detachable check: no, chastity belt AND [printed name of C].";
					decide no;
	if yourself is sexed female:
		if debugmode > 0, say "Detachable check: no, you're sexed female.";
		decide no;
	if M is not a person and method is 1:
		if there is pussy covering clothing:
			if debugmode > 0, say "Detachable check: no, non-person BJ and pussy covering clothing.";
			decide no; [An inanimate portal can't push past clothing or tug it aside]
	if method is 1 and size of penis is 0:
		if debugmode > 0, say "Detachable check: no, BJ and 0-sized penis.";
		decide no; [While maybe a magical being can twist/tear/peel a flat-as-a-disc penis off, I simply can't conceive of how a portal could do the same.]
	decide yes.

Check taking off worn portal-cock-ring:
	if the player is pussy protected, say "Your [printed name of random top level protection clothing worn by the player] is preventing you." instead;
	if there is a worn chastity cage, say "You can't remove it, because of your chastity cage." instead.

Report taking off portal-cock-ring:
	say "[if the size of penis > 8]The shiny ring magically shrinks down to a normal size as you slide it off, and you[otherwise if the size of penis < 5]The shiny ring magically enlarges back to a normal size as you slide it off, and you[otherwise]You slide the shiny ring off and[end if] feel your [ShortDesc of penis] soften.";
	now penis is not penis-erect.

To say cock ring drops to the ground with (T - text):
	say "[T] heavy nickel [manly-penis]-jewellery ";
	now portal-cock-ring is in the location of the player; [drop it to the ground]
	if the location of the player is a labyrinth room:
		say "lands with a loud ringing sound on the cold stone floor, rolling in ever tighter circles before coming to a stop. The sound echoes through the dungeon as if calling to nearby denizens to come and see what happened, before finally coming to rest.";
	otherwise if the location of the player is a jungle room:
		say "drops from between your legs into the leaves and mulch at your feet.";
	otherwise if the location of the player is a modern room:
		say "falls silently to the carpeted floor from between your legs.";
	otherwise if the location of the player is a haunted room:
		say "chimes as it falls with a loud [']clonk['] on the dusty wooden floor, rolling halfway across the room before falling on its side, motionless.";
	otherwise if the location of the player is an academic room:
		say "makes a soft ringing sound as it bounces on the linoleum floor, and rolls round in a spiral before falling flat.";
	otherwise:
		say " some strange surface that you somehow sense it was never meant to be. You hear a mental voice saying 'Internal security breach, players detached dick detected in unsanctioned teleport arrival at [location of the players-detached-dick]!'[line break]".

[Cock ring effect is called after a sexual ejaculation, when first putting it on, and when touching your penis if you're wearing the cock ring. There is a 1 in 10 chance of triggering dick detachment!]
To say cock ring effect of (C - a clothing):
	say "Your [printed name of C] [one of]vibrates and hums for a few seconds[or]warms and tightens for a few seconds[or]throbs and gently squeezes the base of your shaft[or]gently hugs your shaft[in random order], keeping your [ShortDesc of penis] nicely erect.";
	if a random number between 1 and 10 is 1:
		say "[one of]You're just congratulating yourself[or]You're smiling somewhat smugly[or]You can't help grinning rather cockily, heh,[or]You've just given it a congratulatory little flip[in random order]";
		compute detach-players-dick by portal-cock-ring using 1;
		say cock ring drops to the ground with "The";
		say "You stare down at it in dismay.";
		now the portal-cock-ring is magic-revealed. [Because it was used on its own, not as an artifact almost invisible, hidden in some wench's mouth.]

[
Have we just ensured that M either has, or snatches away (or up) the dick?
]
To decide if ensured (M - a monster) has players-detached-dick:
	[If this produces text at the wrong moment, maybe we can store it in a new global text variable, as substituted text, 'delayed-next-utterance'?]
	if players-detached-dick is in the location of M:
		let N be a random person carrying players-detached-dick;
		if N is M, decide yes;
		if N is nothing:
			say "[BigNameDesc of M] casually bends and picks up your detached [DetachedPenis] from the ground.";
		otherwise if N is player:
			say "[one of]Suddenly, [NameDesc of M] snatches your poor[or]In a blinding feat of dexterity, [NameDesc of M] pick-pockets your[or]Without warning, [NameDesc of M] grabs away your[in random order] detached [DetachedPenis]!";
			compute taking away detached dick from player;
		otherwise if N is not M:
			say "[one of][BigNameDesc of M] whispers something to [NameDesc of N], and you see [him of N] hand it over to [NameDesc of M]. Just like that![or][BigNameDesc of M] gets a sneaky grin, then snatches your [DetachedPenis] from [NameDesc of N].[in random order]";
			compute taking away detached dick from N;
		compute handing over detached dick to M;
		decide yes;
	decide no.

[This tries hard to get a bra on the player, and curse it and set it to augmentation, but it won't override an existing curse.]
To decide if successful experimental bra dressup by (P - a person):
	let B be a random worn bra;
	unless B is nothing or B is a training bra:
		say "[BigNameDesc of P] waves [his of P] wand at your existing [printed name of B]";
		if B is augmentation:
			say ". You feel it warm up to cup your [BreastDesc] even more snugly.";
			now the augmentation-charging-time of B is (2 * the augmentation-charging-time of B) / 3;
			if the augmentation-charging-time of B < 5:
				now the augmentation-charging-time of B is 5;
		otherwise:
			if the Magic-type of B is not blandness:
				say ", warping its magic from [magic-type] into augmentation as it shimmers snugly over your [BreastDesc], like two hands gently cupping them.";
				now the Magic-type of B is augmentation;
			otherwise:
				now the Magic-type of B is augmentation;
				say ", transforming it into a [printed name of B] which shimmers snugly over your [BreastDesc], cupping them with reassuring determination.";
	otherwise:
		if B is a training bra:
			say "[speech style of P]'A [printed name of B]? [one of]Ha ha, that won't do at all[or]Hah! You soon won't be needing that[or]No, no, you look like a fast learner[or]Heh. You'll soon be beyond that stage[in random order].'[roman type][line break]With a zap of her bra she [one of]disintegrates[or]destroys[or]evaporates[in random order] your bra!";
			destroy B;
			now B is nothing;
		let N be 0;
		while B is nothing or B is a training bra: [then we'll create one, and make sure it's not a training one]
			if the class of the player is latex fetish model:
				now B is a random off-stage plentiful latex bra; [Try for a latex one, if possible]
			if B is nothing:
				now B is a random off-stage plentiful bra;
				if B is nothing:
					decide no; [I don't understand why this would happen.]
			if B is a training bra:
				increase N by 1;
				if debugmode > 0:
					say "Debug: Re-rolling, training bras that go to arbitrary sizes are silly.[line break]";
				if N > 20:
					decide no; [Only training bras remain? Should probably never happen, but still...]
				now B is nothing;
		[If we fall through the while, it means we have a bra that's not a training bra.]
		summon B;
		now the Magic-type of B is augmentation;
		now the size of B is the largeness of breasts; [Instead of: compute found size of B;]
		say "[BigNameDesc of P] summons up a [ShortDesc of B] which you feel appear over your [BreastDesc], fitting snugly.";
	if B is not cursed:
		say "The [ShortDesc of B] is surrounded by a dark pink glow, as it becomes cursed!";
		now B is cursed;
		compute summoned quest of B;
	now the Magic-type of B is augmentation;
	say "You feel a strange sensation pass through the [ShortDesc of B].";
	now the augmentation-grow-charge of B is the augmentation-charging-time of B; [So it's ready to make the player grow]
	compute periodic augmentation effect of B;
	decide yes.

[The more TF-ed the player is, the more likely an aeromancer is to be seduced by their latex-ness into experimenting.
(Call TF level TF.  There's a "TF in 8" chance, provided TF >= N.)
You can set a minimum though, N: if they're not at least that TF-ed, bored.
So if they're not TF-ed at all, the aeromancer will never be intrigued.
]
To decide if (M - an aeromancer) is latex-intrigued at least (N - a number):
	if the latex-transformation of the player < N, decide no;
	if the latex-transformation of the player >= a random number between 1 and 8, decide yes;
	decide no.

Definition: a thing (called T) is somewhere-here:
	if T is in the location of the player, decide yes;
	if player is wearing T or player is carrying T, decide yes;
	let M be a random monster carrying T;
	if M is not nothing and M is in the location of the player, decide yes;
	decide no.

[
Experiments are grouped into tiers of seriousness:
- tier 8 (top):
	detach dick
	inflate-burst detached dick (only possible if mostly TF-ed and TG fetish on)
- tier 6: abuse detached dick
	steal detached dick
	inflate detached dick (limited by max, unless TG is enabled)
	plug with detached dick
	inflate an already-plugging detached dick
	ruin with plugged detached dick
- tier 4: latex play
	inflate labia, if possessing a vagina
	summon a cursed bra of breast augmentation
	continue a latex transformation
	less likely, start a latex transformation
- tier 2: inflation (just the normal science experiments)
- tier 0: They don't want to mess with the player.
They're even-numbered in case one day we want to insert some in-between tiers.
]
To decide which number is desired science tier of (M - an aeromancer):
	[Might they detach the dick?]
	if M is a-dick-detacher and player is male and players-dick-is-detached is 0:
		[This ensures a detaching aeromancer will only detach latexing males; that the likelihood increases the more latex TF-ed they are; and the TF must be >= 4]
		if M is latex-intrigued at least 4:
			decide on 8;
	if M is friendly:
		decide on 0;
	if players-dick-is-detached > 0 and players-detached-dick is somewhere-here:
		[Might they try inflating a detached dick to bursting, causing TG?]
		if M is latex-intrigued at least 5 and TG fetish > 0 and the size of players-detached-dick >= 10:
			decide on 8;
		[They'll play with a detached dick 3 in 4 times if it's here.]
		if a random number between 1 and 4 > 1:
			decide on 6;
	if M is latex-intrigued at least 1 or inflation fetish > 0:
		decide on 4;
	if the player is possessing a vagina:
		decide on 4; [To give a chance of labia plumping]
	decide on 2.

[
This performs a random experiment from within a given tier.
If the tier is not applicable for some reason, a random experiment from the
next lower tier is tried.
]
To compute aeromancer science tier (tier - a number) of (M - an aeromancer):
	let Xmax be 0; [For selecting at random between experiments at a tier.]
	let Psize be the size of penis;
	if players-dick-is-detached > 0, now Psize is the size of players-detached-dick;
	if the latex-transformation of the player > 4:
		say "[speech style of M]'Does this little inflatable sex doll need a top-up?'[roman type][line break]";
	[------------------ tier 8 ------------------]
	if tier is 8:
		[=== detaching ===]
		if penis-is-detachable by M using 2 and a random number between 0 and 12 <= Psize:
			[Yes, they can peel off a zero-sized dick! The bigger the dick, the more likely they are to inflate it, even if that risks bursting it. If we wand a chance they opt to detach even a size-12 dick, then change the '12' above to a '13'.]
			say "You've just noticed [one of]an unsettling[or]an unnerving[or]a disturbing[in random order] expression on [his of M] face, ";
			compute detach-players-dick by M using 2; [tug magic]
			stop; [But if the RNG above was kind we'll fall through to dick inflation]
		[=== inflate already-massive dick, maybe burst if it's at max (12) ===]
		let thisorthat be "that";
		let Pdesc be the substituted form of "[player-manly-penis]";
		let G be "groin";
		if players-dick-is-detached > 0:
			now thisorthat is "this";
			now Pdesc is the substituted form of "[DetachedPenis]";
			now G is the substituted form of "detached [DetachedPenis]";
		say "[Big he of M] points [his of M] wand at your [G].[line break][one of][speech style of M]'Impressive! But I think I can make [thisorthat] sausage-balloon swell even bigger!'[roman type][or][speech style of M]'A mighty weapon! But it's really just a nerf dick, so let's kick it up a notch, to [']ludicrous['], eh?'[roman type][or][speech style of M]'I love [thisorthat] inflated [Pdesc], but I can't resist blowing balloons, so...'[roman type][in random order][line break]";
		if players-dick-is-detached > 0:
			if size of players-detached-dick is 12:
				if a random number between the latex-transformation of the player and 8 is 8:
					DetachedPenisUp 1; [Will result in TG or doll-like mound!]
					stop; [Experiment completed]
				otherwise:
					say "You groan at the pain transmitted to you as it tries to grow, but just can't. [BigNameDesc of M] looks disappointed.[line break][speech style of M]'Ah well. Maybe next time.'[roman type][line break]";
			otherwise if size of players-detached-dick > 6:
				DetachedPenisUp 1;
				stop; [Experiment completed]
			otherwise if size of players-detached-dick > 0:
				say "[speech style of M]'Ha ha, just kidding. I'd rather see what happens when I apply some SUCTION to that undersized [Pdesc].'[roman type][line break]";
				DetachedPenisDown 1;
				stop; [Experiment completed]
		otherwise:
			if size of penis is 12:
				if a random number between the latex-transformation of the player and 8 is 8:
					PenisUp 1; [Will result in TG or doll-like mound!]
					stop; [Experiment completed]
				otherwise:
					say "You groan at the pain as it tries to grow, but just can't. [BigNameDesc of M] looks disappointed.[line break][speech style of M]'Ah well. Maybe next time.'[roman type][line break]";
			otherwise if size of players-detached-dick > 5:
				PenisUp 1;
				stop; [Experiment completed]
			otherwise if size of players-detached-dick > 0:
				say "[speech style of M]'Actually, on second thought, let's see what happens when I apply some SUCTION to that undersized [Pdesc].'[roman type][line break]";
		stop; [Delete this line if you want failed experiments above to fall through. But I think she's tried hard enough, so let's not.]
	[------------------ tier 6 ------------------]
	if tier >= 6:
		if player is wearing players-detached-dick:
			let oro be a random not actually occupied orifice;
			if a random number between 1 and 4 is:
				-- 1:
					say "[speech style of M]'Uh oh, that [ShortDesc of players-detached-dick] is pitiful. Let's see if I can fix that.'[roman type][line break]";
					say "[one of]Your eyes widen involuntarily as it swells up inside you! So your detached dick just got bigger - pity it happened in such humiliating circumstances![or]Once again your detached dick swells up a size, making you wince.[or][line break][variable custom style]Unf! Why does [he of M] keep growing it while it's stuffed inside me![roman type][or][line break][variable custom style]If [he of M] keeps this up it'll split me open![roman type][or]Not again?![stopping][line break]";
					DetachedPenisUp 1; [Can result in TG!]
					now oro is a random orifice penetrated by the players-detached-dick;
					passively stimulate oro from players-detached-dick;
					stop; [Experiment completed]
				-- 2:
					[deflate dick]
					say "[speech style of M]'Heh, that [ShortDesc of players-detached-dick] is looking a little over-inflated. I'd better fix that.'[roman type][line break]";
					say "[one of]You're not sure whether to laugh at the relief as the pressure on your insides eases, or cry at the fact [he of M] just shrank your [ShortDesc of players-detached-dick]![or]The pressure from your [DetachedPenis] eases further.[or][if the size of players-detached-dick < 4]Your [DetachedPenis] hardly stretches you at all.[otherwise]Why won't [he of M] stop?![end if][stopping][line break]";
					DetachedPenisDown 1; [Can result in TG.]
					stop; [Experiment completed]
				-- 3:
					[extract it then shove it back in (another?) orifice]
					if oro is nothing, now oro is a random orifice penetrated by the players-detached-dick;
					say "[speech style of M]'You poor thing, I'd bet you'd like me to help you out. It must be pretty humiliating to be plugged by your own dick, yeah?'[roman type][line break]";
					extract detached dick by M;
					say "[speech style of M]'Yes, let's just slide this back in here...'[roman type][line break]";
					compute replacement of players-detached-dick in oro;
					stimulate oro from players-detached-dick times 2; [not just passively!]
					stop; [Experiment completed]
				-- otherwise:
					[4: Extract and steal dick]
					say "[speech style of M]'Actually, I've decided I'd like to experiment on this in privacy...'[roman type][line break]";
					now oro is a random orifice penetrated by the players-detached-dick;
					stimulate oro from players-detached-dick; [not just passively!]
					extract detached dick by M;
					if the sex addiction of the player > 10:
						say "[one of][speech style of M]'Oh, sweetie, I can see you didn't really want me to do that, did you?'[roman type][or][speech style of M]'Still, it'd be cruel to take it away entirely, you did look like you were enjoying it.'[roman type][or][speech style of M]'Heh, I can tell by your expression you wish I hadn't done that.'[roman type][or][speech style of M]'Oh, how can I resist those puppy dog eyes? Here, let me give it back to you.'[roman type][in random order][line break][Big he of M] eyes your [oro].";
						say "[speech style of M]'I'll even help you enjoy it a little.'[roman type][line break]";
						stimulate oro from players-detached-dick; [not just passively!]
						compute replacement of players-detached-dick in oro;
					stop;
				stop; [Experiment completed]
		otherwise: [Player is carrying their dick.]
			now Xmax is 3;
			let oro be a random not actually occupied orifice;
			if oro is not nothing and the size of players-detached-dick > 2, now Xmax is 4;
			if a random number between 1 and Xmax is:
				-- 1:
					[inflate dick]
					say "[speech style of M]'Uh oh, that [ShortDesc of players-detached-dick] is pitiful. Let's see if I can fix that.'[roman type][line break]";
					DetachedPenisUp 1; [Can result in TG!]
					stop; [Experiment completed]
				-- 2:
					[deflate dick]
					say "[speech style of M]'Heh, that [ShortDesc of players-detached-dick] is looking a little over-inflated. I'd better fix that.'[roman type][line break]";
					DetachedPenisDown 1; [Can result in TG.]
					stop; [Experiment completed]
				-- 3:
					[try to steal]
					say "[speech style of M]'Oh, thanks for bringing that to me, sweetie. I'll take that now.'[roman type][line break]";
					if the dexterity of the player > a random number between 6 and 12:
						say "[BigNameDesc of M] tries to snatch it from you, but you were too fast![line break][variable custom style]Hah! That showed [him of M]![roman type][line break]";
						if the latex-transformation of the player < 6 or the strength of the player > a random number between 1 and 10:
							[the player kept hold]
							say "[speech style of M]'Oh, you still have some fight in you?'[roman type][line break]";
							[Will fall through to next experiment tier.]
						otherwise: [player failed strength check to keep it]
							say "Unfortunately, [NameDesc of M] still managed to get a hold of the [DetachedPenis] you're holding. And although you try to stop [him of M], [if the latex-transformation of the player >= 6]your inflated arms are far too weak to hold onto[otherwise][he of M] manages to wrench it out of your grip on[end if] your [ShortDesc of players-detached-dick].";
							compute handing over detached dick to M;
							if ensured M has players-detached-dick:
								stop; [Experiment completed]
							otherwise:
								ruin oro; [Actually, I think in this context, the 'if' always succeeds. I'm just being defensive.]
							stop; [Experiment completed]
					otherwise: [The player was too slow and they snatched it away.]
						say "[Big he of M] [if the dexterity of the player < 4]moves way too fast for you, casually plucking[otherwise]takes you by surprise, suddenly snatching[end if] your detached [DetachedPenis] from you.";
						compute handing over detached dick to M;
						if ensured M has players-detached-dick:
							if a random number between 1 and 3 is 1 and size of players-detached-dick > 5:
								say "[speech style of M]'You know what? Maybe I should let you have it, after all?'[roman type][line break][Big he of M] grins wickedly.";
								compute replacement of players-detached-dick in oro;
								ruin oro;
								if size of players-detached-dick < 10:
									DetachedPenisUp 1;
							otherwise if latex-transformation of the player is 0 and inflation fetish is 1:
								say "[speech style of M]'I bet you're proud of that weapon of yours, even if it has been somehow detached, heh. How about I take you down a notch another way? I've come up with a new version of a spell of mine and I've been wanting to try it out on someone. With a dick that size, it could be special fun!'[roman type][line break]";
								say "You feel magic flow from [him of M] through your detached [DetachedPenis] and into you. [LatexTransformClue]";
								now the latex-transformation of the player is 1;
								ruin oro;
								stop; [Experiment completed]
				-- otherwise: [stuff oro with detached dick]
					[4]
					say "[speech style of M]'I could see you were pining for your detached [DetachedPenis], so I've decided to give it back to you.'[roman type][line break][variable custom style]Yippee! [Big he of M]'s going to reattach it![roman type][line break]But your hopes are cruelly dashed as [he of M] [one of][or]once again [stopping]instead [']gives['] it to you in a different way.";
					compute replacement of players-detached-dick in oro;
					if oro is not face:
						ruin oro;
					otherwise: [I thought you could ruin a mouth: apparently not. Quick stopgap.]
						say "[Big he of M] [one of]slides your detached dick in and out of your mouth, holding you by the chin and making sure [he of M] really works your [LipDesc] over it[or]seems to relish your expressions as [he of M] squeezes your cheeks together, making your [LipDesc] tightly wrap over the [LatexFlav]skin of your own [penis][or]stares into your eyes as [he of M] works your own dick in and out of your mouth. [Big he of M] makes sure your [LatexFlav][LipDesc] lips press tight against your [DetachedPenis][in random order]. Which wouldn't be so bad, except you can feel yourself being forced to give a blowjob to *yourself*! Which is both [one of]really pleasurable[or]delicious[or]delightful[or]nice[or]exciting[or]super sensual[in random order] but also [one of]really humiliating[or]deeply embarrassing[or]super embarrassing[in random order]!";
						swap dick in;
						stimulate penis from the player;
						swap dick out;
						moderateHumiliate;
					stop; [Experiment completed]
	[------------------ tier 4 ------------------]
	if tier >= 4: [latex play]
		now Xmax is 3;
		if M is ballooned and the latex-transformation of the player is 0 and inflation fetish is 1, now Xmax is 4;
		if a random number between 1 and Xmax is:
			-- 1:
				if the player is possessing a vagina and labia plumpness of vagina < max labia plumpness:
					say "[BigNameDesc of M] looks you up and down, [his of M] eyes [one of]at last[or]once again[stopping] coming to rest on your crotch. [one of]You try to stiffen your spine, telling yourself [he of M]'s already done [his of M] worst... but as [he of M] stretches out [his of M] wand and aims it between your legs, your nerve fails.[line break]Unfortunately, a twitch of [his of M] wand is enough to keep the tip pointed at you, and a misty violet blob splurts out from it like a glowing purple will o[']wisp, impacting squarely on top of your [vagina].[line break]A blinding flash leaves a dazzling orange after-image on your retinas, and a [italic type]weird[roman type] feeling takes root in your groin, a sticky kind of burning that soaks in[or][line break][variable custom style]No! Not again![roman type][line break]You again try to dodge, turning away, but your eyes are again dazzled by a purple explosion that arcs tightly around your hips to explode into your crotch! Your eyes widen at the surge of heat in your [vagina], and a sensation of pressure that has you biting your lips and squirming in delicious torment[stopping].";
					if ArtificialUp 4 options with override 4 > 0: [labia plumping]
						say TotalDesc of vagina;
					let w be a random magic wand;
					passively stimulate vagina from w;
				otherwise:
					if successful experimental bra dressup by M:
						[Summon a cursed bra that periodically does a BustImplantsUp]
						say "[speech style of M]'There, we should see what develops from that!'[roman type][line break]";
						compute periodic effect of a random worn augmentation bra; [handled by: To compute periodic effect of (C - an augmentation clothing)]
					otherwise:
						say "[BigNameDesc of M] makes a pass with [his of M] wand at your [BreastDesc], then scowls.[line break][speech style of M]'A tough case, eh? All right, let's try this instead.'[roman type][line break]";
						compute aeromancer science of M;
			-- 2:
				if inflation fetish > 0 and the latex-transformation of the player is 0 and a random number between 1 and 2 is 1:
					say "[speech style of M]'You know, you look like a perfect subject for the improved version of an old spell of mine.'[roman type][line break][Big he of M] waves a wand, pinkish-silvery light swelling out from it to bathe you in its glow. It concentrates on your [vagina] and nipples before sinking in and dying down, leaving your sensitive bits all a-tingle. [LatexTransformClue]";
					passively stimulate vagina from nothing;
					now the latex-transformation of the player is 1;
				otherwise:
					compute aeromancer science of M;
			-- 3:
				if the latex-transformation of the player > 0 and the latex-transformation of the player < 8:
					say "[speech style of M]'[one of]I'm getting tired of your slow progress. Take this[or]Oh, this is always fun: daylight RUB-bery[or]Let's speed things along[or]This'll help everyone reLAYT-ex to you[or]Let's speed this spell up[or]Time level you up another notch[in random order]!'[roman type][line break]Zap! A[one of][or]nother[stopping] cloud of purple energy settles over you, running like prickling electricity all across your skin, and sinks in.";
					compute latex transformation;
				otherwise:
					compute aeromancer science of M;
			-- otherwise:
				[4]
				say "[one of][speech style of M]'Yes! I can feel the power! I know you'll love this spell.'[roman type][or][speech style of M]'Oh, I do just love playing with balloons - and dolls! Let's see how you handle the new version of my spell.'[roman type][or][speech style of M]'You look like someone who appreciates rubber. You'll like this.'[roman type][in random order][line break]Silvery-pink light flows from [his of M] wand and settles over your skin, coating it all over, then sinking in. Your skin prickles all over.";
				now the latex-transformation of the player is 1;
		stop; [Experiment completed]
	[------------------ tier 2 ------------------]
	if tier >= 2: [inflation]
		compute aeromancer science of M;
		stop; [Experiment completed]
	[------------------ tier 0 ------------------]
	[This function shouldn't really be called if tier was 0]
	say "[BigNameDesc of M] looks at you as if considering some experimentation, but in the end seems to decide against it.".

To say LatexTransformClue: [#LXorDD]
	say "[one of][bold type]You feel different[roman type], but you can't quite say why. Maybe your fingertips feel a tiny bit... numb?[or]Once again you've been inflicted with the latex doll transformation curse![stopping]".

To say BasicPaymentReceivedFlav of (C - players-detached-dick):
	let M be shopkeeper;
	if the latex-transformation of the player > 6:
		say "[speech style of M]'This place just gets weird and weirder. I don't think I ever expected to sell a [DetachedPenis] to a plastic sex doll.'[roman type][line break]";
	if the size of C < 5:
		slightHumiliate;
		if the size of C < 2 and players-dick-is-detached is 1:
			say "[speech style of M]'I have no idea why I even had that weird little [if the size of C is 0]penis decal[otherwise]button-dick[end if] in here. But I guess it has some kind of curiosity value? Oddly cute, isn't it? The base is sticky, though I can't imagine why.'[roman type][line break]";
			slightHumiliate;
		otherwise if the player is perverted:
			say "[speech style of M]'I'm surprised something that small would be enough to satisfy an obvious thot such as yourself. But the customer is always right!'[roman type][line break]";
		otherwise:
			say "[speech style of M]'That's the spirit. Beginners like yourself should start with something small.'[roman type][line break]";
	otherwise if size of C < 8:
		say "[speech style of M]'It's nothing special, but I think you'll agree it's super realistic[if the latex-transformation of the player < 5]. It's a little creepy, to be honest. It looks almost alive, don't you think?'[otherwise].'[end if][roman type][line break]";
	otherwise:
		if the player is perverted:
			say "[speech style of M]'Excellent choice, for an obvious thot like yourself. Not many of my customers are gaped enough to handle something that size! But I'm sure you'll handle it with no problem.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'I hope you can handle a monster that size - but practice makes perfect, and you look the sort to practice HARD.'[roman type][line break]";
	say "[Big he of M] turns it over in [his of M] strong, [if lady fetish is 1]powerful[otherwise]masculine[end if] hands, making you squirm at the sensations of [him of M] handling your [DetachedPenis]. [Big he of M] flicks the end a few times, and it's all you can do not to moan aloud. [Big he of M] eyes you curiously before handing it over.";
	passively stimulate penis from players-detached-dick;
	slightHumiliate.

To say FriendlyPaymentReceivedFlav of (C - players-detached-dick):
	say BasicPaymentReceivedFlav of C;
	let M be shopkeeper;
	say "[speech style of M]'Thank you for your business!'[roman type][line break]You exchange the jewellery for [printed name of C].".

To say UnfriendlyPaymentReceivedFlav of (C - players-detached-dick):
	let M be shopkeeper;
	say "[speech style of M]'Damn right you'll pay for that![one of][or] If you keep provoking me like that I might just give it away to one of the females.[or] Keep provoking me, buddy, and maybe I'll see about fitting this to one of the sex dolls, to use against you.[or] I swear I'll fit this to one of the sex dolls or mannequins, to use against you.[or] I've realised you wanted me to fit this to a sex doll, or a seat somewhere, don't you?[or] Just pay. Your fetishes are your own business.[cycling]'[roman type][line break]You hand over the jewellery for the [printed name of C].";
	say BasicPaymentReceivedFlav of C.

[
Used immediately after a sex change, for any additional effects from having your dick detached at the time.
]
To compute detached dick bonus SexChange effects:
	let oro be nothing;
	if players-dick-is-detached > 0:
		say "Then a thought strikes you: you just got turned into a girl, while your real dick was detached - will that have... consequences?[run paragraph on]";
		if the player is wearing players-detached-dick:
			now oro is a random orifice penetrated by the players-detached-dick;
			say " It doesn't feel like it changed, you decide, based on, uh, how it feels inside you.[line break]But then, as if in reaction to the thought, you feel it pulsing and vibrating. At the same time you feel a twisting and tightening from your detached dick, even as it shrinks and the muscles of your [oro] automatically clench tighter on it.";
		if the player is carrying players-detached-dick:
			say " It doesn't look like it changed. As if in reaction to your thought, it starts to pulse and vibrate, and you feel a twisting and tightening.";
		otherwise:
			say " As if in reaction to that thought, even though you can't see it, you feel a weird kind of shimmy, and a twisting and tightening.";
		DetachedPenisDown 1;
		say "[variable custom style]Maybe all the effects will be reversed if I can just reattach it? Maybe?[roman type][line break]";
		if oro is not nothing:
			passively stimulate oro from players-detached-dick.

[Ejaculation really. Don't know if it's on the floor or whatever. Try to determine self-penetration case.]
To compute maybe detached dick ejaculation: [Called in Inform/Extensions/Player/Orgasms.i7x]
	if the players-dick-is-detached > 0:
		let where be "";
		let oro be a random orifice penetrated by the players-detached-dick;
		if oro is nothing:
			now where is "";
		otherwise if oro is face:
			now where is "down my own throat. I just gave myself a BJ. And swallowed the [semen]";
		otherwise if oro is asshole:
			now where is "in my own ass";
		otherwise if oro is vagina:
			now where is "in my own [vagina]. Could I make myself pregnant?";
		otherwise:
			now where is "in my [printed name of oro]: how strange";
		[Expand this to cover the humiliating cases of the player cumming and they're giving themselves a BJ, or in the ass, or in their vagina. Placeholder for now.]
		say "[one of][variable custom style]Oh my god: even though my dick is detached, I just came[where]![roman type][stopping]".

Dick Detachment and Latex ends here.
