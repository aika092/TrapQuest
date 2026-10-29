Dick Detachment and Latex by Monster Framework begins here.

[Created via: txt2i7 'Trap Quest.inform/lx-detach-dick.tq']

[When you declare something is "a kind of <thing>" you're declaring it's a class called <thing>.
When you say "<X> is a <thing>" you're declaring it as an object of the <thing> class. In that case it's a single thing, so don't then say something like "There is 1 <X>", or the compiler will create a 2nd object called "1 <X>", e.g. "1 players-detached dick".]
players-detached-dick is a sex toy. players-detached-dick is unique. Understand "detached dick" as players-detached-dick. The printed name of players-detached-dick is "[TQlink of item described][LatexFlav]detached dick you lost[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of players-detached-dick is "pdd". The tradability of players-detached-dick is 9.
players-detached-dick has a number called ballsize. The ballsize of players-detached-dick is 0.
The size of players-detached-dick is 0.
players-detached-dick is biological.
players-detached-dick has a number called minute-detached. The minute-detached of players-detached-dick is 0.
[Doubled - Double-ended dildo that triggered tg when extracted. Can reverse TG
Singled - Single ended dildo that left a flat sex mound]
players-detached-dick can be doubled or singled. players-detached-dick is singled.


To decide which number is the requestability of (C - players-detached-dick):
	if C is held by witch, decide on 101;[She won't give it up even if you pay.]
	otherwise decide on the original price of C.

players-dick-detach-count is a number that varies. players-dick-detach-count is 0.
detach-likelihood is a number that varies. detach-likelihood is 0.
max-wench-detachers is a number that varies. max-wench-detachers is 1. [Set to 1 when not testing this!]
A trap can be a-dick-detacher or a-non-detacher. A trap is usually a-non-detacher.
dickswap-lock is a number that varies. dickswap-lock is 0;

again-DD is a text that varies. again-DD is "".
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

[npc that steals cocks]
A monster can be a-dick-detacher or a-non-detacher. A monster is usually a-non-detacher.
[npc that picks up cocks.]
A monster can be detached-dick-desiring or detached-dick-ignoring. A monster is usually detached-dick-desiring.

Definition: players-detached-dick is magic-enhanceable:
	if penis is detached:
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

To decide which number is the raw-masturbation-bonus of (S - players-detached-dick):
	decide on the sensitivity of penis.[Can range from 3 to 5]

To say DongSize of (C - players-detached-dick):
	let N be the size of C;
	say DongSize N.

To decide if (C - players-detached-dick) is pick-uppable:
	if penis is attached, decide no;
	[held means carried by or worn by]
	if a random person holding players-detached-dick is a person, decide no;
	decide yes.

To decide what number is the original price of (C - players-detached-dick):
	let X be the size of players-detached-dick + 1;
	if the latex-transformation of the player < 3, increase X by 1;
	decide on X.

To uniquely destroy (C - players-detached-dick):
	now penis is attached;
	unless the size of players-detached-dick is -1: [If it exploded, leave it as size -1]
		now the size of players-detached-dick is 0;
	now the ballsize of players-detached-dick is 0.

[
This function and the next is for when we want to use an existing function on the player's penis just like we would if it were still attached.
]
To swap dick in:
	if dickswap-lock is 0:
		now the size of penis is the size of players-detached-dick;
		now the size of scrotum is the ballsize of players-detached-dick;
		now dickswap-lock is 1;
	otherwise if debugmode > 0:
		say "Debug: attempt to swap in an already swapped-in dick!".

[We need to swap them to have penis size changes applied to the pdd; but if there were two swap outs in a row, it would zero the detached dick as a result! This is more defensively coded now, with a lock.]
To swap dick out:
	if dickswap-lock is 1:
		now the size of players-detached-dick is the size of penis;
		now the ballsize of players-detached-dick is the size of scrotum;
	otherwise if debugmode > 0:
		say "Debug: attempt to swap out an already swapped-out dick!";
	now dickswap-lock is 0;
	now the size of penis is 0;
	now the size of scrotum is 0.

To DetachedPenisUp (X - a number):
	[We use fake dick swapping]
	swap dick in;
	PenisUp X;
	swap dick out;
	if the size of players-detached-dick is -1:
		[It exploded and now needs to be destroyed. Actually, this wasn't triggering: I added a uniquely destroy call into OnlyPenisUp (as well). ###]
		destroy players-detached-dick;
	otherwise:
		compute detached dick intimacy 1.

To DetachedPenisDown (X - a number):
	[We use fake dick swapping]
	swap dick in;
	PenisDown X;
	swap dick out;
	compute detached dick intimacy -1.

To SpecialPenisUp (X - a number):
	if penis is detached:
		DetachedPenisUp X;
	otherwise if the player is possessing a penis or player futanari fetish > 0:
		PenisUp X.

To SpecialPenisDown (X - a number):
	if penis is detached:
		DetachedPenisDown X;
	otherwise if the player is possessing a penis:
		PenisDown X.

[There is no SilentlyPenisUp function!]
To SilentlySpecialPenisDown (X - a number):
	if penis is attached:
		SilentlyPenisDown X;
	otherwise:
		swap dick in;
		SilentlyPenisDown X;
		swap dick out.

To decide what number is the mystical size of penis:
	if the penis is detached, decide on the size of the players-detached-dick;
	decide on the size of penis.

To say mystical ShortDesc of (P - penis):
	if penis is detached, say "[if players-detached-dick is somewhere-here][one of]detached[or]separated[or]magically removed[in random order][otherwise][one of]absent[or]distant[or]missing[or]travelling[in random order][end if] ";
	say PenisFlavour (the mystical size of penis).

To decide if the player is somehow possessing a penis:
	if the player is possessing a penis, decide yes;
	if the penis is detached, decide yes;
	decide no.

[
Only properly detach the dick from the player. No descriptive text.
We break up the detaching of the dick into two parts; this is the part where we detach it from the player.
If root is 0, it's just the player's dick. If it's 1, it's double-ended with a dildo handle.
]
To compute raw dick detachment by (P - a thing) with (root - a number):
	now the size of players-detached-dick is the size of penis;
	now the ballsize of players-detached-dick is the size of scrotum;
	now the size of penis is 0;
	now the size of scrotum is 0;
	now penis is detached;
	increase players-dick-detach-count by 1;
	if players-dick-detach-count > 1:
		now again-DD is " again";
		now YetAgain-DD is " [one of]once again[or]yet again[or]once more[or]like last time[or]just like before[in random order]";
	if root is not 0, now players-detached-dick is doubled;[Double-ended: with an ordinary dildo 'root' to refill a pussy created by the player's dick extraction.]
	otherwise now players-detached-dick is singled;
	now the players-detached-dick is in the location of P;
	if the latex-transformation of the player is 8, now players-detached-dick is latex;
	if debugmode > 0, say "Debug: compute raw dick detachment. Now detached penis is [if players-detached-dick is singled]single sided[otherwise]double sized[end if], size of it is [size of players-detached-dick][line break]";
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
	now penis is attached;
	now the players-detached-dick is in the location of the player;
	[Clear all the special flags - curses, glue... - without imprinting the player]
	only destroy players-detached-dick.

[
Give the detached dick to someone. (We break up the transfer of the dick into two parts.)
Giving it is optional: it could instead be dropped on the ground, teleported...
]
To compute handing over detached dick to (P - a person):
	now players-detached-dick is carried by P;
	if debugmode > 0:
		say "Debug pdd handing over to [P].";
	if P is a monster:
		add players-detached-dick to tradableItems of P;
		add players-detached-dick to the taxableItems of P.

[
A person receives the detached dick.
It's the other half of the transfer of the dick.
]
To compute taking away detached dick from (P - a person):
	if debugmode > 0:
		say "Debug: pdd taking away from [P].";
	unless P is the player:
		remove players-detached-dick from the tradableItems of P;
		remove players-detached-dick from the taxableItems of P;
	[This also removes the players-detached-dick from list of things carried by P:]
	now players-detached-dick is in the location of P.

To compute maybe drop dick by (M - a monster):
	if M is carrying players-detached-dick:
		now players-detached-dick is in the location of M;
		compute taking away detached dick from M;
		unless M is in the location of the player:
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
					say "[first custom style]'Since you didn't seem to want it, I'll shelve it again.'[roman type][line break]";
					now players-detached-dick is in Dungeon41;
					now the owner of players-detached-dick is shopkeeper;
				otherwise:
					say "Looks like you'll have to somehow [']persuade['] [printed name of M2] to give it back to you.";
			otherwise: [no one has picked it up]
				say "You eye your detached dick lying sadly on the ground.".

[This function is to be called in the "compute unique final action" of monsters
 who could wander into the dungeon shop, carrying the player's detached dick.
 in which case, they 'sell' it to the shopkeeper, whether he's there or not.]
To compute maybe donate dick to shop by (M - a monster):
	if penis is detached and M is in Dungeon41 and M is carrying players-detached-dick:
		compute maybe drop dick by M; [drop dick here, if carried]
		if players-detached-dick is pick-uppable: [On the ground, no one grabbed it]
			if shopkeeper is in Dungeon41 and shopkeeper is alive and shopkeeper is undefeated:
				now the owner of players-detached-dick is shopkeeper;
				if the player is not in Dungeon41:
					say "You feel a manly pair of hands pick up the [ShortDesc of players-detached-dick] and turn it over, tapping and rubbing it a few times. You feel them attach some sort of tag to it, then put it down on a hard surface.";
				otherwise if M is not shopkeeper:
					say "The shopkeeper takes the [ShortDesc of players-detached-dick] and nods. [speech style of shopkeeper]'Thanks for that, [ShortDesc of M]. [if size of players-detached-dick < 3]It could make a fun novelty item[otherwise if size of players-detached-dick < 7]. It's a bit on the small size, but I might be able to sell it[otherwise]. Not the biggest I've seen, but it should fetch a fair price[end if].'[roman type][line break][big he of shopkeeper] [if players-detached-dick is store][one of]dusts off[or]repositions[or]checks[in random order] the price tag[otherwise]puts a price tag on it[end if] and sits it on [his of shopkeeper] shelf, while you gape in shock at this transaction.";
					now the owner of players-detached-dick is shopkeeper;
				otherwise if M is shopkeeper:
					say "The shopkeeper picks up [ShortDesc of players-detached-dick] and nods. [speech style of shopkeeper]'[if size of players-detached-dick < 3]This could make a fun novelty item[otherwise if size of players-detached-dick < 7]. A bit on the small size, but I might be able to sell it[otherwise]. Not the biggest I've seen, but it should fetch a fair price[end if].'[roman type][line break][big he of shopkeeper] puts a price tag on it and sits it on [his of M] shelf, while you gape in shock.";
			otherwise if the player is in Dungeon41:
				say "You swallow, wondering what to do, whether it's safe to pick up [italic type]your own[roman type] dick now it's been brought to the store?";
	otherwise:
		do nothing.

To compute insertion of (DD - players-detached-dick) in (O - a body part):
	let M be current-monster;
	if O is actually occupied:
		unless players-detached-dick is penetrating O:
			do nothing instead;
	if M is unintelligent:
		say "[BigNameDesc of M] [one of]idly[or]casually[or]unthinkingly[in random order] [one of]shoves[or]slides[or]thrusts[or]pushes[in random order] your own [printed name of DD] [one of]all the way into[or]fully inside[or]deep into[in random order] your [variable O].";
	otherwise:
		say "[BigNameDesc of M] [one of]watches your expression[or]enjoys your reaction[or]knowingly meets your eyes[in random order] as [he of M] slowly [one of]inserts[or]slides[or]forces[or]pushes[in random order] your own [ShortDesc of DD] [one of]all the way inside[or]fully into[or]all the way into[in random order] your [variable O].";
	if DD is carried by M:
		if debugmode > 0:
			say "Debug: [M] was carrying pdd: taking it away from them.";
		compute taking away detached dick from M;
	otherwise if debugmode > 0:
		say "Debug: [M] was not carrying pdd: not taking it away from them.";
	compute handing over detached dick to player;
	now DD is worn by the player;
	now DD is penetrating O;
	now DD is not temporarily-removed;
	if O is fuckhole: [A face is not a fuckhole]
		communicate struggling of O;
		ruin O;
	otherwise: [I thought you could ruin a mouth: apparently not. Quick stopgap.]
		say "[big he of M] [one of]slides your detached dick in and out of your mouth, holding you by the chin and making sure [he of M] really works your [LipDesc] over it[or]seems to relish your expressions as [he of M] squeezes your cheeks together, making your [LipDesc] tightly wrap over the [LatexFlav]skin of your own [penis][or]stares into your eyes as [he of M] works your own dick in and out of your mouth. [big he of M] makes sure your [LatexFlav][LipDesc] lips press tight against your [DetachedPenis][in random order]. Which wouldn't be so bad, except you can feel yourself being forced to give a blowjob to *yourself*! Which is both [one of]really pleasurable[or]delicious[or]delightful[or]nice[or]exciting[or]super sensual[in random order] but also [one of]really humiliating[or]deeply embarrassing[or]super embarrassing[in random order]!";
		swap dick in;
		stimulate penis from the player;
		swap dick out;
		moderateHumiliate.

To say DickDetachLungeFlav of (M - a monster) with (TG - a number):
	say "[NameDesc of M] lunges, [if size of penis > 7]opening wide[otherwise if size of penis < 5]easily[end if] swallowing your [player-penis][if the player is possessing a scrotum] and balls[end if]whole. [big his of M] lips seal around the base and after a moment, close up. Like, all the way together. Completely.[line break][variable custom style]How is that even possible?[roman type][line break][big he of M] stands up and steps back, but.... you can still feel [his of M] lips around your [player-penis]. ";
	if TG is 1: [double-ended dildo, one end normal, other is your dick]
		say "You feel a deeply weird, invasive shift, like your internal organs are being moved around as a glowing pink dildo slowly protrudes from [his of M] lips. [Big he of M] grabs it like it's a handle, and slo-o-owly extracts an exact replica of your [player-penis] from [his of M] mouth, which is fused to the dildo by a silver ring.";
	otherwise:[not a double-ended dildo, and you're left with a doll-like mound]
		say "You feel a weird, and slightly vague shift, like your dick is moving, and you watch as a [player-scrotum] emerges from [his of M] mouth. [big he of M] grabs it like a handle, somehow causing you to wince as [he of M] extracts a replica of your [player-penis] from between [his of M] lips.";

To say DickDetachMagicFlav of (M - a monster) with (TG - a number):
	let magic-bypass be 0;
	say " [his of M] hand makes a casual gesture towards your [player-penis]. [big he of M] smirks at you for just a moment, then yanks, but with a such a weird twisting motion that it makes your brain hurt.";
	if TG is 1: [double-ended dildo, one end normal, other is your dick]
		say "You feel a deeply weird, invasive, and extremely painful change, like part of your insides have just been pulled out.[line break][BigNameDesc of M] is now holding a two-sided dildo, one side glowing and pink, and the other a disturbingly-exact replica of your own [player-penis], joined to the dildo by a silver [if size of scrotum > 0]ring. What looks like a copy of your balls dangling from just behind the junction.[otherwise]ring.[end if]";
	otherwise: [not a double-ended dildo and you are left with a doll-like mound]
		say "You feel a weird, and slightly vague shift, like your dick is moving?[line break][big he of M]'s holding what looks like an exact replica of your [ShortDesc of penis]. You freeze, not wanting to look down between your legs, terribly dreading what you'll see.".

To say DickDetachHandFlav of (M - a monster) with (TG - a number):
	let magic-bypass be 0;
	say "[NameDesc of M] brings both pieces together [if the player is possessing a scrotum]just behind your balls, [otherwise if the size of penis > 0]around your base, [otherwise]where your penis used to be, [end if]smirking as they click together. [big he of M] pauses for just a moment, then [if size of penis is 0]begins to peel. [otherwise]grabs your shaft and yanks! [end if]";
	if TG is 1: [double-ended dildo, one end normal, other is your dick]
		say "You feel a deeply weird, invasive, and painful change, like part of your insides have just been pulled out.[line break][big he of M] is now holding a two-sided dildo, one side glowing and pink, and the other a disturbingly-exact replica of your own [player-penis], joined to the dildo by a silver [if size of scrotum > 0]ring. What looks like a copy of your balls dangling from just behind the junction.[otherwise]ring.[end if]";
	otherwise: [not a double-ended dildo and you are left with a doll-like mound]
		say "You feel a weird pinch, and a slightly vague shift, like your dick is moving.[line break][big he of M] is now holding what looks like an exact replica of your [if the size of scrotum > 0][ShortDesc of penis], complete with its [ShortDesc of scrotum][otherwise][ShortDesc of penis][end if]. You freeze, not wanting to look down between your legs, terribly dreading what you'll see.".

To say DickDetachTaunt of (M - a monster):
	say "[line break][speech style of M]'[if mystical size of penis > 8][one of]Wow, that was quite an impressive unit you had. I'll bet you're sorry now you annoyed me?'[roman type][or]It's probably just as well I took such a dangerous weapon from someone so obviously inexperienced.[or]Heh, this is huge! We'll have some real fun with this. Or at least, I will![in random order][otherwise if mystical size of penis < 4][one of]This is so cute! You probably weren't getting much use out of this little thing anyway, right?[or]This is so small it's more like a toy. I wonder if it'd be more fun if it was bigger, or smaller? Hmm.[or]Look at this little thing. It's like a male penis, only miniaturised![in random order][otherwise][one of]Rather ordinary, but I may still be able to do some interesting experiments with this.[or]I guess they called you [']Mr Average[']? Well, not anymore, honey-bun.[in random order][end if]'[roman type][line break]";

To say DickDetachInspect of (M - a monster):
	say "[big he of M] sniffs it, and [if the size of players-detached-dick < 4]sniggers, wiggling it between [his of M] fingers.[otherwise if the size of players-detached-dick > 8]hefts it with some admiration.[otherwise]wobbles it about measuringly.[end if][line break]";

[ compute dick-detachment by (M - a thing) using (method - a number)

 This is called at the climax of some other blowjob or magic or trap
 that's triggered, preferably just before the 'happy ending' so we get
 the normal experience until just before the player's dick is
 magically detached!
 If you want a warning before it happens, then say so just before calling this,
 e.g.
     say "You feel your [semen] about to burst free!";
     compute dick-detachment by aeromancer using 1;
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

[This is a sometimes true definiton. plan accordingly]
To decide whether penis-detaching is tg causing:
	if event tg is 0, decide no;[no tg is no tg]
	let N be min penis size;
	if N is the size of penis, decide yes;
	if the player is ready for common event tg:
		if a random number between 1 and 2 is 1, decide yes;
	otherwise if the player is ready for uncommon event tg:
		if a random number between N and size of penis is N, decide yes;
	decide no.

To say DetachedDickObserveFlav of (M - a person):
	say "[big he of M] sniffs it, and [if the size of players-detached-dick < 4]snickers, wiggling it between [his of M] fingers.[otherwise if the size of players-detached-dick > 8]hefts it with some admiration.[otherwise]wobbles it about measuringly.[end if]"

To compute dick-detachment by (M - a person) using (method - a number):
	let X be 0;
	say "[one of]when suddenly[or]when unexpectedly[or]when without warning[or]when all of a sudden[in random order]";
	let fem be 0;
	if penis-detaching is tg causing, now fem is 1;
	if method is 1: [BJ magic sword swallowing trick]
		say DickDetachLungeFlav of M with fem;
	otherwise if method is 2:[method is 2: tugging]
		say DickDetachHandFlav of M with fem;
	otherwise:[method is 3: magic or an un-coded-for method]
		say DickDetachMagicFlav of M with fem;
	[Use mystical size of penis to be sure it's right, since she hasn't actually detached it just yet]
	say DickDetachTaunt of M;
	compute raw dick detachment by M with fem;
	compute handing over detached dick to M;[Beyond this point, the player no longer has a penis]
	say "[DetachedDickObserveFlav of M][line break]Finally, unable to resist any longer, you look down, staring in cold shock at the junction of your thighs...[if players-dick-detach-count > 1][one of][variable custom style]Oh, no, not again![roman type][or][variable custom style]I don't believe it - not again![roman type][or][variable custom style]How could I have fallen for this again?![roman type][or][variable custom style]No, no, no! Don't take my [manly-penis] away again![roman type][in random order][line break][end if]";
	if fem is 1:
		SexChange the player;
		say "There, nestled between your thighs, at your crotch where your [manly-penis] used to be, you see a brand new vagina with puffy, hairless and slick, bright maroon-coloured lips. Unable to believe this is even possible, you look up, making eye contact with [NameDesc of M], who simply raises an eyebrow. You swallow.";
	otherwise:
		say "You see a smooth, empty, Barbie-doll like mound. [if the player is able to speak][variable custom style]'How DARE you?! Put it back at once!'[roman type][line break]Unfortunately, when you look up, [NameDesc of M]'s only reaction[otherwise]You object as strenuously as you can, but when you look up, [NameDesc of M]'s only response to your incoherent objections[end if] is a raised eyebrow. You swallow.";
	let C be a random worn chastity bond;
	if C is nothing, now C is a random worn cock-ring;
	let G be a random worn gag;
	if C is condom of kings:
		say "[BigFuckerDesc of M] peels the [ShortDesc of C] from the [DetachedPenis] that used to be your [manly-penis].";
		destroy C;
	otherwise if C is not nothing:
		compute M removing C;
	say "[if C is clothing]Satisfied, [NameDesc of M][otherwise][BigNameDesc of M][end if]flicks the end of your now detached [manly-penis], which you feel at [italic type]least[roman type] as intensely as ever[YetAgain-DD]! You stare at [him of M] in shock, [if the latex-transformation of the player is 8]though that's a given, since your always-ready sex doll mouth is stuck[otherwise if G is clothing]your [Mediumdesc of G] helpfully giving your mouth the appearance of[otherwise], your mouth[end if] gaping in a big 'O'. [big his of M] subtly mocking expression changes to an open grin as [he of M] squeezes then releases your detached [manly-penis] a few times. You make an incoherent sound in reaction to the strong sensations. Has your [manly-penis] become even [italic type]more[roman type] sensitive? ";
	if the latex-transformation of the player > 0 and the latex-transformation of the player < 8:
		compute latex transformation;[in case we allow detachment before full conversion]
	say "[big he of M] studies your body with a thoughtful look, tapping your now detached penis against [his of M] thigh in thought, making you shiver as the vibrations transmit themselves to you.";
	let oro be a random not actually occupied orifice;
	if oro is not nothing and a random number between 1 and 5 is 1:
		let D be the size of players-detached-dick;
		say "Just when it seems [NameDesc of M]'s losing interest, [his of M] eyes twinkle and [he of M] steps back up to you. Before you can react, [he of M] grips you around the neck and [if oro is not face]reaches down to[end if] jam your own [manly-penis] into your own [variable oro].";
		if the latex-transformation of the player is 8, say "[speech style of M]'[if D < 4]Good luck finding anyone willing to fish that tiny thing out.'[otherwise if D < 8]Ha! Have fun trying to extract that without fingers!'[otherwise]Ha ha, that won't be coming out any time soon.'[end if][roman type][line break]";
		otherwise say "[speech style of M]'[if D < 4]You can have this back. That tiny thing isn't much use to anyone else.'[otherwise if D < 8]I may as well leave this with you to look after.'[otherwise]How does it feel to be on the receiving end of your own [manly-penis]?'[end if][roman type][line break]";
		compute insertion of players-detached-dick in oro;
	otherwise:
		say "It dawns on you that [he of M] was seriously considering using your own impossibly detached [manly-penis] on you just then! You're not sure whether to be relieved or horrified by that 'escape'.";
	say "With a last mocking glance, [NameDesc of M] leaves, and you stare after [him of M], telling yourself:[line break][variable custom style]I'll never ever forget who stole my my [manly-penis]![roman type][line break]";
	M wanders off with dick.

[What they feel depending on where their penis is dropped.]
To describe detached dick dropping:
	let R be the location of players-detached-dick;
	let M be a random monster carrying players-detached-dick;
	if R is Dungeon41:
		if shopkeeper is alive and shopkeeper is undefeated:
			now the owner of players-detached-dick is shopkeeper;
			say "It's at that moment you feel a powerful, manly hand grip your dick and lift it! You feel warm water (you hope!) running over it, then squirm as a soft cloth is repeatedly squeezed around your dick. Gawd! It's definitely still erect![line break]Then you feel it set down somewhere, and the hand release it.";
			arouse 50; [We can't passively stimulate penis from shopkeeper because it would convert it to stimulating the vagina.]
		otherwise:
			say "You feel it roll off a shelf and bounce to rest on a hard floor.";
	otherwise if M is monster:
		say "It's at that moment you feel a hand grip your dick and pick it up! Uh oh...";
	otherwise:
		say "You feel your now detached dick [if size of players-detached-dick is 0]flutter down[otherwise]and balls fall[end if] onto";
		if R is a labyrinth room:
			say " cold stone, then roll to a stop.";
		otherwise if R is no-roof:
			say " something damp, then roll into... leaves? A warm breeze blows over it.";
		otherwise if R is a modern room:
			say "... carpet maybe...? then roll to a stop.";
		otherwise if R is a haunted room:
			say " a dusty floor, and you feel like something spooky is aware of it.";["it's... in danger?";]
		otherwise:[facility. Shouldn't happen]
			say " some kind of smooth, soft flooring and roll to a stop.".

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
	if penis is detached: [#LXorDD]
		say "[one of]About to turn away, [he of M] happens to glance down at your groin, and literally does a double take.[line break][speech style of M]'By the stars, how did you manage that[if the latex-transformation of the player > 0], as well[end if]? You let someone steal your dick[again-DD]?!'[roman type][line break][BigNameDesc of M] shakes [his of M] head in disbelief.[or][big he of M] happens to glance down at your groin, and blinks, then snorts. [big he of M] shakes [his of M] head, sniggering.[line break][speech style of M]'Oh my stars, I still can't believe you let someone steal your dick[again-DD]!'[roman type][line break][or][big he of M] looks down at your groin, and shakes [his of M] head.[line break][speech style of M]'I see you haven't found your dick yet. You really should if you want [reattacher] to reattach it[again-DD].'[roman type][line break][or][speech style of M]'I know they say some men can't find their dicks with their two hands, but you're the first person I've met who that's literally true for[if players-dick-detach-count > 1]! How many times is that, now - [players-dick-detach-count in words] times?'[otherwise]!'[end if][roman type][line break][or][big he of M] eyes your groin.[line break][speech style of M]'Still no luck finding your dick, I see?'[roman type][line break][or][big he of M] gives a dismissive glance between your legs.[line break][speech style of M]'Still dickless I see.'[roman type][line break][stopping]";
		if player is wearing players-detached-dick:
			say "[speech style of M]'Oh, wait...'[roman type][line break][BigNameDesc of M] slowly tilts [his of M] head to one side, [one of][his of M] eyes locked on your detached dick stuffed inside you.[line break][speech style of M]'Oh, so you DID find it? I suppose that's one way to carry it around. I don't think I've seen anything to match that for sheer sluttiness though - and I've seen a lot.'[roman type][or]noticing your detached dick stuffed inside you.[line break][speech style of M]'Wow. Talk about a self-indulgent slut - that's taking masturbation to a whole new level.'[roman type][stopping][line break]";
			moderateHumiliate;
			say "You shake your head and [if the player is able to speak]almost snap something back in reply,[otherwise]bristle[end if] but then restrain yourself. Instead, you meekly point to your detached dick with the most entreating expression you can manage.[line break][big he of M] rolls [his of M] eyes.[line break][speech style of M]'Well, at least you managed to hold onto it.'[roman type][line break]";
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
	say "[speech style of M]'Thanks!'[roman type][line break][BigNameDesc of M] snatches your [mystical-player-penis]";
	compute handing over detached dick to M.



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
	if penis is detached and players-detached-dick is store and the player is in Dungeon41:
		now the printed name of T is the substituted form of "[variable custom style]'Uh, can you tell me about that, ah, [']special['], er, dildo?'[roman type][line break]";
		set next numerical response to the substituted form of "[printed name of T]".

To execute (T - talk-detached-dick) for (M - a shopkeeper):
	if M is unfriendly:[currently can't show up]
		say "[one of][speech style of M]'That thing? Ugly, isn't it. Looks like you'd enjoy it, though - if you could afford it'[roman type][or][speech style of M]'You want the weird thing, you pay for it'[roman type][or][speech style of M]'If you want it, cough up the price.'[roman type][stopping][line break]";
	otherwise if M is annoyed:
		say "[one of][speech style of M]'I don't have time to describe every item in my shop'[roman type][or][speech style of M]'I can let you try it out if you like'[roman type][or][speech style of M]'Just don't leave without paying for it'[roman type][or][speech style of M]'I guess everyone has their own peculiar taste'[roman type][or][speech style of M]'I won't be sorry to sell that weird thing.'[roman type][in random order][line break]";
	otherwise if M is buddy:
		say "[one of][speech style of M]'It'd suit you, if you could afford it'[roman type][or][speech style of M]'It matches your skin tone remarkably well, don't you think'[roman type][or][speech style of M]'I have a feeling it's magical in some way'[roman type][or][speech style of M]'Could be something from the R&D lab'[roman type][or][speech style of M]'Ha ha, that'd suit you, somehow, you know? You might check out the witch in the woods - she knows some kinky magic. Heh: she might even offer to attach it to you, just for a joke.'[roman type][in random order][line break]";
	otherwise:
		say "[one of][speech style of M]'Realistic-looking, isn't it'[roman type][or][speech style of M]'Weird. It just turned up suddenly in my shop'[roman type][or][speech style of M]'Some poor fool lost it, maybe'[roman type][or][speech style of M]'Could be a new product from the R&D labs. Hard to say, really'[roman type][or][speech style of M]'R&D dropped it off for me. They trust me with some of their experimental trial products you know'[roman type][or][speech style of M]'Sometimes the dwellers here drop off the odd found item to me'[roman type][or][speech style of M]'Why not see if the witch in the woods'll attach it to you for a laugh? You might enjoy having a dick, you never know.'[roman type][in random order][line break]".

[Provided for when you want to optionally mention the latex-ness of a body part.
Note: can't really be built into PenisFlavour as you might think, because that's
also used to describe other entities' penises, and old photos of the player's,
possibly from before they were photographed.
]
To say LatexFlav with (T - a text): [T is the text to end with - e.g. ", "]
	if the latex-transformation of the player is 8:
		say "[one of]shiny[or]glossy[in random order], perfectly [one of]plastic[or]rubber[in random order][T]";
	otherwise if the latex-transformation of the player > 5:
		say "[one of]oddly[or]curiously[or]strangely[in random order] [one of]slick[or]rubbery[or]plastic-looking[in random order][T]";
	otherwise if the latex-transformation of the player > 2:
		say "[one of]somewhat[or]somehow[or]slightly[or]mildly[in random order] [one of]artificial[or]smooth[or]slick[or]satiny[in random order][T]".

To say ShortLatexFlav:
	if the latex-transformation of the player > 2:
		say LatexFlav with "".

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

To say DetachedScrotum:
	let L be the size of players-detached-dick;
	if L is:
		-- 0: say "missing balls"; [Just in case]
		-- 1: say "barely noticeable balls";
		-- 2: say "tiny balls";
		-- 3: say "[if the latex-transformation of the player > 5]toy[otherwise]miniature[end if] balls";
		-- 4: say "beginner-sized balls";
		-- 5: say "small balls";
		-- 6: say "balls";
		-- 7: say "sizeable balls";
		-- 8: say "large balls";
		-- 9: say "impressive balls";[10 inch]
		-- 10: say "ludicrous balls";[12 15, and 20 inches. 12 is natural max]
		-- otherwise: say "monstrous balls".

To say ShortDesc of (C - players-detached-dick):
	say LatexFlav with ", ";
	say DetachedPenis [PenisFlavour (the size of players-detached-dick)].

To say DetachedPenisFlavour:
	let P be the size of players-detached-dick;
	let S be the ballsize of players-detached-dick;
	if the size of players-detached-dick is 0:[I'm not sure how/if that can happen]
		say LatexFlav with ", ";
		say "[DetachedPenis][if players-detached-dick is doubled] stuck on the base of a very ordinary dildo[end if]";
	otherwise:
		say "[if players-detached-dick is biological]utterly realistic[otherwise][one of]plastic[or]fake-looking[at random][end if] duplicate of your [PenisFlavour P] and [BallsFlav S]";
		if players-detached-dick is doubled, say " (attached like a handle to a regular dildo)".

To say mystical-player-penis:
	if penis is attached, say player-penis;
	otherwise say "[one of]detached[or]separated[or]mystically connected[or]magically linked[or]portally-connected[in random order] [player-penis]".

To decide which number is the girth of (C - players-detached-dick):
	if players-detached-dick is doubled and size of players-detached-dick is 0, decide on 6; [The only way to use it then is to use the normal sized dildo the decal is stuck to the base of]
	decide on size of players-detached-dick.

To literally self pleasure by (P - a person) in (O - an orifice):
	if P is the player:
		say "[one of][variable custom style]I can't believe I'm doing this - fucking myself with my own [ShortDesc of players-detached-dick], thrusting it in and out of my [O]. But it feels so good![roman type][or][variable custom style]OMG! I think this may be addictive. A-dick-tive! Ungh. So good. To feel it plunge inside, and to be plunged inside of at the same time.[roman type][or][variable custom style]'Ungh! Yeah, baby, ram yourself harder!'[roman type][or][variable custom style]Oh god, oh god, yes! It's double the pleasure![roman type][or][variable custom style]I'm not sure I can stop myself, feeling my [ShortDesc of players-detached-dick] sliding in and out, and at the same time having my [O] forced open and penetrated...[roman type][or][variable custom style]I don't want to stop, but I can, any time I like. Ungh! Ungh! I think...[roman type][or][variable custom style]It's not like I'm conditioning myself, after all. I can stop. If I wanted to...[roman type][or][variable custom style]Ohhhh, so go-o-o-od! I'll probably stop soon. Just a little more.[roman type][or][variable custom style]Mmm-ngh! Yes, yes, yes! Double-team me, [NameBimbo]! Don't stop.[roman type][or][variable custom style]It's too much. I think I'll need to keep doing this forever.[roman type][or][variable custom style]Who'd want to ever stop this? I love this game! Ungh, ungh, ungh![roman type][or][variable custom style]Oh yeah, just like that.[roman type][or][variable custom style]Just like that, just like that. Mmm-ngh![roman type][stopping][line break]";
	otherwise:
		say "[one of][variable custom style]I can't believe I'm being fucked like this: reamed by my own [ShortDesc of players-detached-dick], feeling it thrusting in and out of my [O]. But it feels so good![roman type][or][variable custom style]OMG! I think this may be addictive. A-dick-tive! Ungh. So good. To feel it plunge inside, and at the same time, to be plunged inside of![roman type][or][variable custom style]'Ungh! Yeah, baby, ram me harder!'[roman type][or][variable custom style]Oh god, oh god, yes! [BigNameDesc of P] doesn't know it, but doing me with my own dick is double the pleasure![roman type][or][variable custom style]I'm not sure I ever want [him of P] to stop. The feeling, having my own [ShortDesc of players-detached-dick] sliding in and out, and at the same time, my [O] being forced open, penetrated...[roman type][or][variable custom style]I don't want [him of P] to stop, but I my ask [him of P] to... in a little while. Ungh! Ungh![roman type][or][variable custom style]It's not like [he of P]'s conditioning me, after all. It's not addictive. I can resist the pleasure...[roman type][or][variable custom style]Ohhhh, so go-o-o-od! I'll probably ask [him of P] to stop soon. Just a little longer...[roman type][or][variable custom style]Mmm-ngh! Yes, yes, yes! You're double-teaming me, [NameDesc of P]! Don't stop.[roman type][or][variable custom style]'It's too much. I think I need You to keep doing this forever.'[roman type][or][variable custom style]Who'd ever want this to stop? I love this game! Ungh, ungh, ungh![roman type][or][variable custom style]'Oh yeah, just like that.'[roman type][or][variable custom style]'Yes, yes, never stop. Mmm-ngh![roman type][stopping][line break]";
	[Now serve up a double pleasure: from being simultaneously giver and receiver.]
	passively stimulate O from players-detached-dick;
	if P is the player:
		stimulate O from players-detached-dick;
	otherwise:
		stimulate O from P.

To say SqueezeDesc of players-detached-dick:
	say "[one of]You give it a little squeeze, just for reassurance that it's really yours, and bite your lip at the sensations that run from it into your belly and up your spine.[or]You can't resist giving it another firm squeeze, again biting your lip at the shivery pleasure your touch generates.[or]You give it another subtle but firm squeeze, enjoying the pleasure that shivers from it up your spine, and feeling it stiffen a little in turn. Mmm.[or]You squeeze and relax your grip on it, squeeze and relax, your nipples tightening at the sensations.[then at random]";
	if the player is a pervert:
		say "[one of][variable custom style]Maybe if I just kind of... slip it back inside me, that'll dissolve the spell?[roman type] [or][if the player is wearing players-detached-dick]You'd wondered what it would feel like to push it inside yourself, and now you know: it's awesome! Not only do you get the delicious feelings of penetration, you get the full, tight thrill of being the penetrator at the same time![otherwise]You wonder what it'd feel like to push it inside yourself? Probably great, since you'd feel the penetration from both sides![end if][line break][or]Maybe if you gave yourself a blowjob, that'd break the spell? You feel kind of eager to try the experiment.[line break][in random order][if the size of players-detached-dick < 4][variable custom style]I mean, it's really small and cute, so there's no harm in trying, right?[roman type][otherwise if the size of players-detached-dick > 7][variable custom style]Especially given its sheer size. It'd feel fucking amazing, I bet![roman type][otherwise][variable custom style]I mean, it's pretty much the perfect size for a sex toy: not too big, not too small.[roman type][end if] [variable custom style]No one would object, since it's my own dick, after all, right?[roman type][line break]".

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
	if penis is attached:
		say "BUG - How are you even able to see this? Your dick isn't detached!" instead;
	otherwise if players-detached-dick is somewhere-here:
		say "[if latex-transformation of the player is 0]An utterly realistic[otherwise if latex-transformation of the player > 6]A plastic[otherwise]A fake-looking[end if] [if the size of players-detached-dick is 0]picture of your [DetachedPenis][otherwise]duplicate of your [DetachedPenis][end if][if the size of players-detached-dick > 0] and [ShortDesc of scrotum][end if], now detached and separate from you";
		if players-detached-dick is doubled:
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

Figure of pdd is the file "Items/Accessories/Toys/detached1.png".
To decide which figure-name is the examine-image of (C - players-detached-dick):
	decide on figure of pdd.

[The portal cock ring looks like other, non jewelery cock rings, but this one is secretly magic, revealing itself during teleportation. The player can only identify it with the divination skill or by paying attention to its material (silver)]
portal-cock-ring is a cock-ring. portal-cock-ring is metal. The printed name of portal-cock-ring is "[clothing-title-before][CockRingSize of the item described] silver [manly-penis] ring[clothing-title-after]". The text-shortcut of portal-cock-ring is "pckr". Understand "portal", "portal ring" as portal-cock-ring. portal-cock-ring is rare.
Definition: portal-cock-ring is portal themed: decide yes.
[Figure of Cock Portal Ring is the file "Items/Accessories/Toys/cockring2.png".]
To decide which figure-name is the examine-image of (C - portal-cock-ring):
	[if C is magic-revealed, decide on figure of portal cock ring;]
	decide on figure of cock ring.

To say ShortDesc of (C - portal-cock-ring):
	say "silver [manly-penis] ring".

To decide which number is the heaviness of (C - portal-cock-ring):
	decide on 1.

To say ClothingDesc of (C - portal-cock-ring):
	say "This gleaming silver ring is quite lightweight for it's size [if C is worn]It's keeping your [ShortDesc of penis] rock hard.[otherwise]If you put it on, it would help your [ShortDesc of penis] stay hard.[end if]".

To say MediumDesc of (C - portal-cock-ring):
	say "[if C is unidentified]large and heavy gauge, expensive-looking solid nickel ring[otherwise if the intelligence of the player < 3]large shiny silver ring that you dimly remember's got yummy magic in it[otherwise]heavy magical dick-detaching cock ring[end if]".

To compute PortalBust of (P - portal-cock-ring) from (O - a room):
	compute PortalStrain of P from O.

[The cock ring isn't damaged by teleportation like normal portal items.]
To compute PortalStrain of (P - portal-cock-ring) from (O - a room):
	let fem be 0;
	if penis-detaching is tg causing, now fem is 1;
	say "The [ShortDesc of P] tightens and begins to vibrate during the spatial [one of]warp[or]transfer[or]jump[in random order], and you feel a [if fem is 1]deeply invasive, [end if]weird shift. It's super strange, and it gets even stranger when there's a sudden [if fem is 1]YANK[otherwise]pinch[end if] a split second before you arrive at your destination, followed by a [run paragraph on]";
	if the location of the player is a labyrinth room:
		say "loud ringing sound as the ring lands on the cold stone floor, rolling in ever tighter circles before coming to a stop. The sound echoes through the dungeon as if calling to nearby denizens to come and see what happened, before finally coming to rest.";
	otherwise if the location of the player is no-roof:
		say "faint crunch as the ring drops into the old leaves and dirt at your feet.";
	otherwise if the location of the player is a modern room:
		say "faint thud as the ring falls silently to the carpeted floor from between your legs.";
	otherwise if the location of the player is a haunted room:
		say "loud [']clonk['] as the ring hits the dusty wooden floor, rolling halfway across the room before falling on its side, motionless.";
	otherwise:[facility;shouldn't happen]
		say "soft ringing sound as the ring bounces on the linoleum floor, and rolls round in a spiral before falling flat.";
	say "[line break][variable custom style][if the divinationskill of the player is 1]Wha- I knew the ring was magical, but...?[otherwise]Why- *how* did the ring just drop off like that...?[end if][roman type][line break]There's a moment of disorientation at a sensation of your [PenisShaftFlav the size of penis] moving, [italic type]independently[roman type] of you. You jolt backwards, a terrible certainty settling[YetAgain-DD] in the pit of your stomach as you slowly, carefully look down at the junction of your thighs. There, where your [player-penis] used to be, you [again-DD]see ";
	if fem is 1:
		say "a doll-like vagina with puffy, hairless and slick maroon lips. You instinctively clench your muscles, your eyes widening [again-DD]at the feeling that follows, of those new sensitive lips pressing together, and the feeling of something more, somewhere deeper inside, of some other new parts of you pressed together but waiting to be parted.[line break][variable custom style]That's... not possible! I can't- I don't- How can I...?[roman type][line break]A neat, plump pussy, a tiny nub at its top, now sits primly between your thighs. You swallow.[line break][variable custom style]That little bump[if size of penis < 3] is even smaller than[otherwise if size of penis < 8] is all that's left of[otherwise]is a mockery of[end if] my [manly-penis]![roman type][line break]";
		compute raw dick detachment by P with fem; [Do this before sexchange!]
		SexChange the player;
	otherwise:
		say "a smooth, empty, doll-like mound. You shake your head in denial, in disbelief, in dismay.[line break][variable custom style][if the latex-transformation of the player > 4]Now I look even more like some stupid sex[otherwise]Instead of my [player-penis], I'm now like some neutered toy[end if] doll! How am I supposed to fuck like this?![roman type][line break]";
		compute raw dick detachment by P with fem;
	say "But as you stare at your new [genitals], you can still feel your erect [manly-penis]! You peer inside the [ShortDesc of P], but it's empty and your [manly-penis][YetAgain-DD] vanished. Firming your resolve and getting a grip on your emotions, you shake yourself. You just need to retrace your steps. It's still in the [O]... right?";
	compute portal-detach-displacement from O;
	now P is in the location of the player;
	if P is portal-cock-ring:
		[now portal-cock-ring is magic-revealed;]
		compute autotaking P.

[Determines the final destination of the player's detached penis, if it was detached thanks to portal shenanigans]
To compute portal-detach-displacement from (O - a room):
	let X be 0;[Three options; npc, origin, random room.]
	let X be a random number between 1 and 3;
	let D be players-detached-dick;
	now D is in the location of the player;
	if X is 1:
		if tough-shit is 1 and the location of the player is not a labyrinth room, now D is in Dungeon41;[the shop]
		let M be a random intelligent monster in O;
		if M is monster:
			compute handing over detached dick to M;
	if D is in the location of the player or X is 2:
		unless there is a warp portal in O, now D is in O;[Warp portal rooms are technically valid, but you have to be lucky. see below.]
	if D is in the location of the player:[No boss rooms, no ]
		now X is 30;
		while (D is in the location of the player or D is in a bossed room or D is in a predicament room or D is in an academic room) and X > 0:
			decrease X by 1;
			if debugmode > 0, say "Debug: re-rolling: not placing detached dick in [O][line break]";
			now players-detached-dick is in a random placed room;
	[Try to give the player a hint as to where their penis has been dropped. Heh.]
	describe detached dick dropping;
	strongHumiliate.

To say GenericDetachSexChangeFlav by (P - a thing):
	say "a doll-like vagina with puffy, hairless and slick maroon lips. You instinctively clench your muscles, your eyes widening [again-DD]at the feeling that follows, of those new sensitive lips pressing together, and the feeling of something more, somewhere deeper inside, of some other new parts of you pressed together but waiting to be parted.[line break][variable custom style]That's... not possible! I can't- I don't- How can I...?[roman type][line break]A neat, plump pussy, a tiny nub at its top, now sits primly between your thighs. You swallow.[line break][variable custom style]That little bump[if size of penis < 3] is even smaller than[otherwise if size of penis < 8] is all that's left of[otherwise]is a mockery of[end if] my [manly-penis]![roman type][line break]";
	compute raw dick detachment by P with 1;[Do this before sexchange!]
	SexChange the player;

To say GenericDetachFlatFlav by (P - a thing):
	say "a smooth, empty, doll-like mound. You shake your head in denial, in disbelief, in dismay.[line break][variable custom style][if the latex-transformation of the player > 4]Now I look even more like some stupid sex[otherwise]Instead of my [player-penis], I'm now like some neutered toy[end if] doll! How am I supposed to fuck like this?![roman type][line break]";
	compute raw dick detachment by P with 0.

To compute gloryhole-cock-detachment by (G - gloryhole):
	let M be witch;
	let fem be 0;
	if penis-detaching is tg causing, now fem is 1;
	if G is penetrating penis, say "You're just about to explode when the anonymous [boy of M] uses [his of M] tongue to [if the player is possessing a scrotum]pull your [ShortDesc of penis] and [BallsFlav the size of penis] through some kind of metal ring[otherwise]push something metal around the base of your [ShortDesc of penis][end if], which seals itself in place. You can feel [him of M] removing [his of M] lips from your shaft as the ring tightens... and tightens and tightens [run paragraph on]";
	otherwise say "The anonymous lips plant a big, wet kiss on the tip of your [ShortDesc of penis], causing you to react a bit slowly as their owner's hand [if the player is possessing a scrotum]pulls your [BallsFlav the size of penis] through the hole[otherwise]grasps your shaft[end if], and clips an ice cold metal ring around your base. [big he of M] holds you [if the player is possessing a scrotum]by the balls[otherwise]in place[end if] as the ring grows tighter and tighter and tighter [run paragraph on]";
	say "until it closes up. Like, completely. The anonymous [boy of M] giggles as [if fem is 1]your organs undergo a deeply weird, invasive shift[otherwise]something shifts[end if], and it suddenly feels like your [player-penis] [if G is penetrating penis]is falling through the air, only to be caught in a[otherwise]is moving separately from your body, still in [his of M][end if] soft hand.[line break][variable custom style]How is that even possible?[roman type][line break]You jolt backwards, a terrible certainty settling[YetAgain-DD] in the pit of your stomach as you look down at the junction of your thighs. There, where your [player-penis] used to be, you [again-DD]see [run paragraph on]";
	if fem is 1, say GenericDetachSexChangeFlav by G;
	otherwise say GenericDetachFlatFlav by G;
	say "But as you stare at your new [genitals], you can still feel your erect [manly-penis]! You peer inside the gloryhole, but it's too dark to see. Firming your resolve and getting a grip on your emotions, you shake yourself. [line break][variable custom style][big he of M] must be taking it somewhere. I can just look around, and I'll eventually find it, right?[roman type][line break]";
	compute portal-detach-displacement from Dungeon10;[TODO: give it to a random trainee]
	strongHumiliate.

[This triggers when a portal item, like portal pants, explodes during teleportation]
To compute portal-cock-detachment from (O - a room) by (G - a thing):
	let fem be 0;
	if penis-detaching is tg causing, now fem is 1;
	say "[if fem is 1]a deeply invasive, weird shift of your internal organs, [otherwise]a weird shift, hard to pin down, [end if] along with a strangely constricted feeling around the base of your [player-penis], which [if penis is penis-erect]is harder than ever[otherwise]goes rock hard[end if]. There's a moment of disorientation as you arrive at your destination, but you still feel your [PenisShaftFlav the size of penis] moving, [italic type]independently[roman type] of you. You jolt backwards, a terrible certainty settling[YetAgain-DD] in the pit of your stomach as you slowly, carefully look down at the junction of your thighs. There, where your [player-penis] used to be, you [again-DD]see [run paragraph on]";
	if fem is 1, say GenericDetachSexChangeFlav by G;
	otherwise say GenericDetachFlatFlav by G;
	say "But as you stare at your new [genitals], you can still feel your erect [manly-penis]! You peer around, but your [manly-penis][YetAgain-DD] vanished. Firming your resolve and getting a grip on your emotions, you shake yourself. [line break][variable custom style]I won't let this get me down! I just need to retrace my steps... right?[roman type][line break]";
	compute portal-detach-displacement from O;
	strongHumiliate.

[This now happens when you teleport or rarely when you pass through a warp portal]
[Report wearing portal-cock-ring:
	let K be a random worn portal-cock-ring;
	if tough-shit + (a random number between 1 and 5) > 4:
		say "With a thrilling feeling of potency your [player-penis] erects, ";
		compute dick-detachment by portal-cock-ring using 1.]

To say its-got-my-dick for (P - a person):
	if penis is detached:
		if P is carrying players-detached-dick:
			say "[one of]But more than that, something else dawns on you, something that's been kind of subliminally bugging you since [he of P] arrived: the ever-present background sensations from your detached and stolen penis, the small movements and shifts of its position, and of things pressing on it... They fit really well with the motion of [NameDesc of P]. You're suddenly sure [he of P] is carrying it![or]From the sensations coming from your detached dick, you're sure [he of P]'s carrying it.[or]You're sure [he of P]'s got your dick.[stopping][if P is intelligent] [one of]And from the look [he of P] gives you as you realise that,[or]Something about [his of P] supercilious look of superiority makes you also sure[or][big his of P] smirking superiority says[or]And[stopping] [he of P] knows [italic type]you[roman type] know it.[end if][line break]".

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
	if penis is attached:
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
		if M is a monster in the location of the player: [They can't take their penis from the monster, but they can annoy it.]
			say "It seems unlikely that [NameDesc of M] would just let you take it from [him of M]." instead;
		otherwise:
			say "You wish you could. Unfortunately, you last saw it just before it was carried off." instead. [This could be tracked separately with a property called maybe last-taker. But it would only be used for musings like this.]

[You can only have a detached penis if you have a vagina, you can replace it with a vagina, or you can replace with a flat mound.]
Definition: penis is detachable:
	if min penis size > 0, decide no;
	if the player is possessing a vagina, decide yes;
	if event tg > 0, decide yes;
	if penis is detached, decide no;[already]
	decide yes.

[
 method indicates the kind of verb to use for the detachment:
 1: blowjob (either by a trap or a foe)
 2: tugging or pulling
 3: by pure magic variant of 2
 4...?:]
Definition: penis is detachable-via-magic:
	if penis is detachable, decide yes;
	decide no.

Definition: penis is detachable-via-blowjob:
	unless penis is detachable, decide no;
	if the size of penis is 0, decide no;
	if the number of worn pee covering clothing > 0, decide no;
	decide yes.

Definition: penis is detachable-via-tug:
	unless penis is detachable, decide no;
	if the size of penis is 0, decide no;
	let N be the number of worn pee covering actually unavoidable clothing;
	if N > 0:
		let C be a random worn chastity bond;
		if C is chastity-belt, decide no;
		if N is 1 and C is chastity cage, decide yes;
		decide no;
	decide yes.

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
	let N be nothing;
	let B be a random worn bra;
	if (B is unique or B is rare) and B is not augmentation, decide no;
	if B is not cursed and B is not cursable, decide no;
	unless (B is nothing or B is a training bra):
		now N is B;
		say "[BigNameDesc of P] waves [his of P] wand at your existing [printed name of B]";
		if B is augmentation:
			say ". You feel it warm up to cup your [BreastDesc] even more snugly.";
			now the augmentation-charging-time of B is (2 * the augmentation-charging-time of B) / 3;
			if the augmentation-charging-time of B < 5:
				now the augmentation-charging-time of B is 5;
		otherwise:
			if the Magic-type of B is not blandness:
				say ", warping its magic from [magic-type of B] into augmentation as it shimmers snugly over your [BreastDesc], like two hands gently cupping them.";
				now the Magic-type of B is augmentation;
			otherwise:
				now the Magic-type of B is augmentation;
				say ", transforming it into a [printed name of B] which shimmers snugly over your [BreastDesc], cupping them with reassuring determination.";
	otherwise:
		if the class of the player is latex fetish model, now N is a random off-stage plentiful latex bra;
		if B is training bra, now N is a random off-stage transformation-eligible bra;
		if B is nothing, now N is a random off-stage plentiful bra;
		if N is training bra, decide no;[If we randomly roll a training bra, just say the experiment failed.]
		if N is not cursed and N is not cursable, decide no;
		if B is a training bra:
			say "[speech style of P]'A [printed name of B]? [one of]Ha ha, that won't do at all[or]Hah! You soon won't be needing that[or]No, no, you look like a fast learner[or]Heh. You'll soon be beyond that stage[in random order].'[roman type][line break]With a zap of [his of P] wand [he of P] transforms it into a [ShortDesc of N]!";
			unless N is nothing, silently transform B into N;
		otherwise:
			say "[BigNameDesc of P] summons up a [ShortDesc of N] which you feel appear over your [BreastDesc], fitting snugly.";
			summon N;
		now the Magic-type of N is augmentation;
	now the size of N is the largeness of breasts; [Instead of: compute found size of B;]
	if N is not cursed:
		say "The [ShortDesc of B] is surrounded by a dark pink glow and becomes cursed!";
		curse B;
	if the quest of N is no-clothing-quest, compute summoned quest of N;
	say "You feel a strange sensation pass through the [ShortDesc of N].";
	now augmentation-grow-charge of N is augmentation-charging-time of N; [So it's ready to make the player grow]
	compute periodic augmentation effect of N;
	decide yes.

[The more TF-ed the player is, the more likely an aeromancer is to be seduced by their latex-ness into experimenting.
(Call TF level TF. There's a "TF in 8" chance, provided TF >= N.)
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
1 means shrink, 2 means grow.
M is the monster doing it, or nothing if we don't want any flavour text spoken for the exceptional cases (the reversal of M's normal preference).
When M decides to buck the natural probabilities, make some comment then.
Rather than 50/50 up or down, which just makes the aeromancer's actions feel kind of insane and unbelievable, I think it makes much more sense for her to tend to shrink the dick if it's small and grow it if it's big, knowing they can burst at one end or vanish at the other. But it would be nicely teasing to make it 50/50 for the final step at either end of the scale.
So I'm thinking 1/2 whether shrink or grow at size 1 and at max size.
But also 1/2 at sizes 6,7 - decision could go either way.
I know the numbers are equally likely to default to up or down for the input N that came from an RNG, so since N = 1 or 2 are equally likely on the scale, that can cover the selection up/down when I want a 1/2 chance.
Although this is only used for players-detached-dick here, let's pass in the penis size so it could be used if desired for normal penis grow/shrink decisions too.
]
To decide which number is penis (Psize - a number) up or down (N - a number) by (M - an object):
	if Psize is 6 or Psize is 7:
		decide on N;
	if Psize is 1 or Psize is 12:
		if M is not nothing: [say some flavour to explain the shift in behaviour on the brink of the final step]
			if Psize is 1 and N is 2:
				say "[one of][BigNameDesc of M] looks at you with a pitying expression. [or][big he of M] gives you a pitying look. [or]After a glance between your legs, [his of M] expression changes to one of pity. [or][or][BigNameDesc of M] shakes [his of M] head in pity. [or][in random order][one of][speech style of M]'Hmm, maybe you deserve a little boost for a change?'[roman type][or][speech style of M]'Perhaps I've been a little too cruel, you poor thing.'M[or][speech style of M]'Maybe I should dangle a small hope for you, for once?'[roman type][roman type][or][speech style of M]'Maybe we shouldn't rush to that final step though, hmm?'[roman type][or][speech style of M]'Hmm, down or up, down or up? Maybe, this time...'[roman type][or][speech style of M]'Heh. Maybe I should play with you a little longer?'[roman type][in random order][line break]";
			otherwise if Psize is 12 and N is 1:
				say "[one of][BigNameDesc of M] frowns at your cocky expression. [or][or]Your cocky expression seems to annoy [NameDesc of M]. [or][or][big he of M] eyes your humongous dick and frowns. [or][big he of M] looks from your impressive dick to you, [his of M] expression hardening. [or]The sheer size of your massive dong suddenly seems to offend [NameDesc of M]. [in random order][one of][speech style of M]'I think you need to be taken down a peg, for a change.'[roman type][or][speech style of M]'You think this dick makes you special, do you?'[roman type][or][speech style of M]'I think someone has an inflated opinion of themselves.'[roman type][or][speech style of M]'I think maybe someone needs some pride sucked away.'[roman type][or][speech style of M]'Oh, get over yourself.'[roman type][or][speech style of M]'You don't deserve a dick this big.'[roman type][or][speech style of M]'Sucks to be you, sweetie.'[roman type][or][speech style of M]'I think that over-inflated ego needs attention.'[roman type][or][speech style of M]'What can be given, can also be taken away just as easily.'[roman type][in random order]";
		decide on N;
	if Psize < 5:
		decide on 1;
	otherwise: [7 < Psize < 12]
		decide on 2.
	[At first I thought I'd vary between say 100% at 1 away from the midpoint (i.e. at 4 and at 8), down to 70% chance to continue (her small=shrink and big=grow preference) at the ends of the scale (1 and 12).
	But I've commented out this approach as it turned out in practice to still be silly. Just always make it smaller if small, larger if large.
	if Psize < 5:
		[RNG(1:100) <= 70 + (size - 2)x10, i.e. RNG(1:10) <= 7 - 2 + size]
		if a random number between 1 and 10 <= 5 + Psize:
			decide on 1;
		otherwise:
			decide on 2;
	otherwise: [7 < Psize < 12]
		[RNG(1:100) <= 70 + (11 - size)x10, i.e. RNG(1:10) <= 7 + 11 - size]
		if a random number between 1 and 10 <= 18 - Psize:
			decide on 2;
		otherwise:
			decide on 1.]

To (M - a monster) wanders off with dick:
	while M is in the location of the player:
		regionally place M;
	if the player is in Dungeon41: [Did this happen in the store?]
		if the owner of players-detached-dick is shopkeeper: [if it wasn't paid for...]
			if shopkeeper is in Dungeon41:
				say "[one of]You stare at the shopkeeper, who appears not to have noticed [NameDesc of M] just stole [his of shopkeeper] dick. Uh, that is: [i]your[/i] dick, that somehow had wound up in [his of shopkeeper] shop. It's really your dick, not [his of shopkeeper]. That's not what you meant! [big his of shopkeeper] dick is- You feel a prickle of sweat. You are [i]not[/i] going to finish that thought![or]Does the shopkeeper realise [NameDesc of M] just stole [his of shopkeeper] [ShortDesc of players-detached-dick]? You bite your lip: not [i][his of shopkeeper][/i]: that's really a [player-penis], and it really belongs to you! Though, staring at the massive build of the shopkeeper and [his of shopkeeper] commanding expression, you know it'd be a... [i]hard[/i] task to convince [him of shopkeeper] of that.[or]Has the shopkeeper realised [NameDesc of M] just disappeared with some of [his of shopkeeper] goods: namely, your dick, which currently looks like a [ShortDesc of players-detached-dick]? Will you get in trouble if you manage to persuade [him of M] to give it back to you?[or]The shopkeeper appears not to have noticed what [he of M] just did. Or did [he of M] pay and you didn't notice? Oh god, will [he of shopkeeper] blame you if you do get [NameDesc of M] to slip it back to you? And why is the thought of [him of M]... uh, [']giving['] it back to you got you squirming with excitement?[in random order][line break]";
			otherwise if the shopkeeper is alive:
				say "[one of]Will the shopkeeper, when [he of shopkeeper] returns, notice the theft of [his of shopkeeper] dick? Uh, that is: [i]your[/i] dick, that somehow had wound up in [his of shopkeeper] shop. It's really your dick, not [his of shopkeeper]. That's not what you meant! [big his of shopkeeper] dick is- You feel a prickle of sweat. You are [i]not[/i] going to finish that thought![or]Does the shopkeeper realise [NameDesc of M] just stole [his of shopkeeper] [ShortDesc of players-detached-dick]? You bite your lip: not [i][his of shopkeeper][/i]: that's really a [player-penis], and it really belongs to you! Though, recalling the massive build of the shopkeeper and [his of shopkeeper] commanding expression, you know it'd be a... [i]hard[/i] task to convince [him of shopkeeper] of that.[or][BigNameDesc of M] just disappeared with some of the shop's items for sale: namely, your dick, which currently looks like a [ShortDesc of players-detached-dick]? Will you get in trouble if you manage to persuade [him of M] to give it back to you?[or]Did [NameDesc of M] pay for that? Oh god, if you do get [NameDesc of M] to slip it back to you, will the storekeeper think you stole it? And why is the thought of [NameDesc of M]... uh, [']giving['] it back to you got you squirming with excitement?[in random order][line break]";
			otherwise:
				say "Did [NameDesc of M] just steal that? And if the shopkeeper is dead, will you get in trouble if you manage to [']persuade['] [him of M] to give your dick back to you?".

[
Experiments are grouped into tiers of seriousness:
- tier 8 (top):
	detach dick (currently, the aeromancer will only do this if you're partly TFed already)
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
	if M is a-dick-detacher and player is male and penis is attached:
		[This ensures a detaching aeromancer will only detach latexing males; that the likelihood increases the more latex TF-ed they are; and the TF must be >= 4]
		if M is latex-intrigued at least 4:
			decide on 8;
	if M is friendly:
		decide on 0;
	let D be 2;
	if penis is detached and players-detached-dick is somewhere-here:
		increase D by 4;
		[Might they try inflating a detached dick to bursting, causing TG?]
		if M is latex-intrigued at least 5 and TG fetish > 0 and the size of players-detached-dick >= 10:
			increase D by 2;
		[They'll play with a detached dick 3 in 4 times if it's here.]
		decide on a random number between 0 and D;
	if the player is possessing a vagina or (M is latex-intrigued at least 1 or inflation fetish > 0):
		increase D by 2;[To give a chance of labia plumping]
	decide on a random number between 0 and D.

[
This performs a random experiment from within a given tier.
If the tier is not applicable for some reason, a random experiment from the
next lower tier is tried.
]
To compute aeromancer science tier (tier - a number) of (M - an aeromancer):
	let Xmax be 0; [For selecting at random between experiments at a tier.]
	let Psize be the size of penis;
	let experiment-completed be 0;
	if penis is detached, now Psize is the size of players-detached-dick;
	if the latex-transformation of the player > 4:
		say "[speech style of M]'Does this little inflatable sex doll need a top-up?'[roman type][line break]";
	[------------------ tier 8 ------------------]
	if tier is 8:
		[=== detaching ===]
		[What does comparing Psize to RNG(0:12) mean? At Psize 6, means 1/2 of detaching or inflating. At Psize 12 (max), gives certainty of detaching. RNG(0:18) would give 2/3 of detaching for even max dick (12), but Psize 3 would give 1/6 chance of detaching: that seems a bit low. So on balance I feel RNG(1:14) should give the right balance.]
		if penis is detachable-via-tug and Psize > a random number between 0 and 14:
			[Yes, they can peel off a zero-sized dick! The bigger the dick, the more likely they are to detach it rather than inflate it (which risks bursting it).]
			say "You've just noticed [one of]an unsettling[or]an unnerving[or]a disturbing[in random order] expression on [his of M] face, ";
			compute dick-detachment by M using 2; [tug magic]
			satisfy M;
			stop; [But if the RNG above was kind we'll fall through to dick inflation]
		[=== inflate already-massive dick, maybe burst if it's at max (12) ===]
		let thisorthat be "that";
		let Pdesc be the substituted form of "[player-manly-penis]";
		let G be "groin";
		if penis is detached:
			now thisorthat is "this";
			now Pdesc is the substituted form of "[DetachedPenis]";
			now G is the substituted form of "detached [DetachedPenis]";
		say "[big he of M] points [his of M] wand at your [G].[line break][if the mystical size of penis > 6][one of][speech style of M]'Impressive! But I think I can make [thisorthat] sausage-balloon swell even bigger!'[roman type][or][speech style of M]'A mighty weapon! But it's really just a nerf dick, so let's kick it up a notch, to [']ludicrous['], eh?'[roman type][or][speech style of M]'I love [thisorthat] inflated [Pdesc], but I can't resist blowing balloons, so...'[roman type][in random order][otherwise][one of][speech style of M]'Ludicrous. But given its naturally small size, let's continue [thisorthat] cocktail-balloon's natural atrophy.'[roman type][or][speech style of M]'An amusing weapon! But let's deflate your meagre pride another notch.'[roman type][or][speech style of M]'I love [thisorthat] dainty [Pdesc], but I think I can make it cuter still.'M[or][speech style of M]'Let's see what happens when I apply some SUCTION to that undersized [Pdesc].'[roman type][roman type][in random order][end if][line break]";
		[This used to be unnecessarily complicated, but OnlyPenisUp handles it all as of Oct 2021]
		if the mystical size of penis is 12:
			SpecialPenisUp 1; [Might result in TG or doll-like mound!]
			now experiment-completed is 1;
			if the mystical size of penis < 12: [It went boom!]
				say "[one of][BigNameDesc of M] tries to pretend not to be shocked by what just happened[or][BigNameDesc of M] blinks in surprise, then recovers [him of M]self[or]Rather than looking shocked, [NameDesc of M] conceals a smile[or][BigNameDesc of M] pretends innocence[in random order].[line break][one of][speech style of M]'That's your own fault you know, for being so thin-skinned.'[roman type][or][speech style of M]'I hadn't realised you were so thin-skinned.'[roman type][or][speech style of M]'You don't need to thank me.'[roman type][or][speech style of M]'I could tell you were finding that unwieldy.'[roman type][or][speech style of M]'No need to thank me.'[roman type][or][speech style of M]'I can see you're secretly thrilled.'[roman type][or][speech style of M]'Ha ha, I wasn't expecting that!'[roman type][or][speech style of M]'Wow, I bet you'll be pleased not to be lugging that thing around anymore.'[roman type][or][speech style of M]'Well, at least it went out with a bang, right?'[roman type][or][speech style of M]'There, much neater! No need to thank me.'[roman type][in random order][line break]";
			otherwise:
				say "You groan at the pain transmitted to you as it tries to grow, but just can't. [BigNameDesc of M] looks disappointed.[line break][speech style of M]'Ah well. Maybe next time.'[roman type][line break]";
		otherwise if the mystical size of penis > 6:
			SpecialPenisUp 1;
			now experiment-completed is 1;
		otherwise if the mystical size of penis > 0:
			SpecialPenisDown 1;
			now experiment-completed is 1;
	[------------------ tier 6 ------------------]
	if experiment-completed is 0 and tier >= 6:
		if player is wearing players-detached-dick:
			let hole be a random not actually occupied orifice;
			let N be a random number between 1 and 4;
			if N < 3:
				now N is penis Psize up or down N by M; [Adjust Penis Up(s)/Down(1) probabilities]
			if N is:
				-- 2:
					say "[speech style of M]'Uh-oh, that [ShortDesc of players-detached-dick] is pitiful. Let's see if I can fix that.'[roman type][line break]";
					say "[one of]Your eyes widen involuntarily as it swells up inside you! So your detached dick just got bigger - pity it happened in such humiliating circumstances![or]Once again your detached dick swells up a size, making you wince.[or][line break][variable custom style]Unf! Why does [he of M] keep growing it while it's stuffed inside me![roman type][or][line break][variable custom style]If [he of M] keeps this up it'll split me open![roman type][or]Not again?![stopping][line break]";
					DetachedPenisUp 1; [Can result in TG!]
					if penis is detached:
						now hole is a random orifice penetrated by the players-detached-dick;
						passively stimulate hole from players-detached-dick;
				-- 1:
					[deflate dick]
					if Psize is 0: [Already at a minimum]
						say "[speech style of M]'I'm not sure a [DetachedPenis] is enough of a challenge for you. I think it makes more sense for me to take that.'[roman type][line break][big he of M] peels it away, the sensations making you bite your lip.[line break]";
						passively stimulate hole from players-detached-dick;
						passively stimulate penis from players-detached-dick;
						say "[big he of M] struts off without even a backward look.";
						M wanders off with dick instead;
					say "[speech style of M]'Heh, that [ShortDesc of players-detached-dick] is looking a little over-inflated. I'd better fix that.'[roman type][line break]";
					say "[one of]You're not sure whether to laugh at the relief as the pressure on your insides eases, or cry at the fact [he of M] just shrank your [ShortDesc of players-detached-dick]![or]The pressure from your [DetachedPenis] eases further.[or][if the size of players-detached-dick < 4]Your [DetachedPenis] hardly stretches you at all.[otherwise]Why won't [he of M] stop?![end if][stopping][line break]";
					DetachedPenisDown 1; [Can result in TG.]
				-- 3:
					[extract it then shove it back in (another?) orifice]
					if hole is nothing, now hole is a random orifice penetrated by the players-detached-dick;
					say "[speech style of M]'You poor thing, I'd bet you'd like me to help you out. It must be pretty humiliating to be plugged by your own dick, yeah?'[roman type][line break]";
					extract detached dick by M;
					say "[speech style of M]'Yes, let's just slide this back in here...'[roman type][line break]";
					compute insertion of players-detached-dick in hole;
					stimulate hole from players-detached-dick times 2; [not just passively!]
				-- otherwise:
					[4: Extract and steal dick]
					say "[speech style of M]'Actually, I've decided I'd like to experiment on this in private...'[roman type][line break]";
					now hole is a random orifice penetrated by the players-detached-dick;
					stimulate hole from players-detached-dick; [not just passively!]
					extract detached dick by M; [This also hands it over to M]
					if the sex addiction of the player > 10:
						say "[one of][speech style of M]'Oh, sweetie, I can see you didn't really want me to do that, did you?'[roman type][or][speech style of M]'Still, it'd be cruel to take it away entirely, you did look like you were enjoying it.'[roman type][or][speech style of M]'Heh, I can tell by your expression you wish I hadn't done that.'[roman type][or][speech style of M]'Oh, how can I resist those puppy dog eyes? Here, let me give it back to you.'[roman type][in random order][line break][big he of M] eyes your [hole].";
						say "[speech style of M]'I'll even help you enjoy it a little.'[roman type][line break]";
						stimulate hole from players-detached-dick; [not just passively!]
						compute insertion of players-detached-dick in hole; [Hands it back too]
					otherwise: [The aeromancer genuinely steals away with your dick.]
						satisfy M;
						M wanders off with dick instead;
		otherwise: [Tier 6 means it's detached and somewhere here.]
			if players-detached-dick is in the location of the player:
				say "[speech style of M]'Ooh, this looks interesting!'[roman type][line break][big he of M] bends and picks up your [player-penis], which was just lying on the ground.";
				compute handing over detached dick to M;
			otherwise if M is carrying players-detached-dick:
				say "With a rather fiendish smile, [NameDesc of M] [one of]reveals [he of M] was carrying[or]once again brings out[or]takes out[or]holds up[stopping] your detached dick[one of] and meets your eyes[or] and shakes [his of M] head[or] and sniggers[or] and snickers[or], with an air of calm superiority[or], shaking [his of M] head[or], sneering[or], smirking[or][stopping].";
				[now Xmin is 2;] [####Aika: this line was in different places before a merge conflict was resolved. Selkie please check where it might be needed.]
			otherwise if player is not carrying players-detached-dick:
				[Then there must be another monster here, holding it!]
				let N be a random person carrying players-detached-dick;
				if N is nothing:
					say "[BigNameDesc of M] looks very confused, muttering something about Selkie screwing up.";
				otherwise:
					say "[BigNameDesc of M] waves [his of M] wand hypnotically, and you see [NameDesc of N] hand over your detached dick to [him of M]!";
					compute taking away detached dick from N;
				compute handing over detached dick to M;
			now Xmax is 3;
			let hole be a random not actually occupied orifice;
			if hole is not nothing and the size of players-detached-dick > 2, now Xmax is 4;
			let X be a random number between 1 and Xmax;
			if X < 3:
				now X is penis Psize up or down X by M; [Adjust Penis Up(s)/Down(1) probabilities]
			if X is:
				-- 3:
					[try to steal, if they don't already have it; and maybe ruin an orifice]
					if player is holding players-detached-dick:
						say "[speech style of M]'Oh, thanks for bringing that to me, sweetie. I'll take that now.'[roman type][line break]";
						if the dexterity of the player > a random number between 6 and 12:
							say "[BigNameDesc of M] tries to snatch it from you, but you were too fast![line break][variable custom style]Hah! That showed [him of M]![roman type][line break]";
							if the latex-transformation of the player < 6 or the strength of the player > a random number between 1 and 10:
								[the player kept hold]
								say "[speech style of M]'Oh, you still have some fight in you?'[roman type][line break]";
								[Will fall through to next experiment tier.]
							otherwise: [player failed strength check to keep it]
								say "Unfortunately, [NameDesc of M] still managed to get a hold of the [DetachedPenis] you're holding. And although you try to stop [him of M], [if the latex-transformation of the player >= 6]your inflated arms are far too weak to hold onto[otherwise][he of M] manages to wrench it out of your grip on[end if] your [ShortDesc of players-detached-dick].";
								compute taking away detached dick from player;
								compute handing over detached dick to M;
						otherwise: [The player was too slow and M snatched it away.]
							say "[big he of M] [if the dexterity of the player < 4]moves way too fast for you, casually plucking[otherwise]takes you by surprise, suddenly snatching[end if] your detached [DetachedPenis] from you.";
							compute taking away detached dick from player;
							compute handing over detached dick to M;
					otherwise: [They didn't have to steal it from the player]
						now X is 0; [Kludgy flag that the aero has done nothing yet in this case]
					if ensured M has players-detached-dick:
						if (X is 0 or a random number between 1 and 3 is 1) and size of players-detached-dick > 5 and hole is not nothing:
							say "[speech style of M]'You know what? Maybe I should let you have it, after all?'[roman type][line break][big he of M] grins wickedly.";
							compute insertion of players-detached-dick in hole;
							if size of players-detached-dick < 10:
								say "[speech style of M]'I can see you'd like even more.'[roman type][line break][big he of M] flicks [his of M] wand at your [player-penis].";
								DetachedPenisUp 1;
						otherwise if latex-transformation of the player is 0 and inflation fetish is 1:
							say "[speech style of M]'I bet you're proud of that weapon of yours, even if it has been somehow detached, heh. How about I take you down a notch another way? I've come up with a new version of a spell of mine and I've been wanting to try it out on someone. With a dick that size, it could be special fun!'[roman type][line break]";
							say "You feel magic flow from [him of M] through your detached [DetachedPenis] and into you. [LatexTransformClue]";
							now the latex-transformation of the player is 1;
					otherwise if hole is not nothing:
						say "[speech style of M]'You're so determined to hold onto that thing, maybe I can make sure you enjoy it as it is now?'[roman type][line break][big he of M] grins wickedly.";
						compute insertion of players-detached-dick in hole;
					otherwise if X is 0:
						say "[speech style of M]'You think you're so clever, don't you? [one of]Take this![or]Maybe it'll be harder for you to hold onto that if I make it smaller.[or]Let's make it harder for you to hold onto that.[in random order]'[roman type][line break]";
						DetachedPenisDown 1;
				-- 2:
					[inflate dick]
					say "[speech style of M]'Uh-oh, that [ShortDesc of players-detached-dick] is pitiful. Let's see if I can fix that.'[roman type][line break]";
					DetachedPenisUp 1; [Can result in TG!]
				-- 1:
					[deflate dick]
					say "[speech style of M]'Heh, that [ShortDesc of players-detached-dick] is looking a little over-inflated. I'd better fix that.'[roman type][line break]";
					DetachedPenisDown 1; [Can result in TG.]
				-- otherwise: [stuff hole with detached dick]
					[4]
					say "[speech style of M]'I could see you were pining for your detached [DetachedPenis], so I've decided to give it back to you.'[roman type][line break][variable custom style]Yippee! [big he of M]'s going to reattach it![roman type][line break]But your hopes are cruelly dashed as [he of M] [one of][or]once again [stopping]instead [']gives['] it to you in a different way.";
					compute insertion of players-detached-dick in hole;
		now experiment-completed is 1; [I think none of the above experiments can fail, so we can't fall through: thus the 'otherwise' now, rather than a test for 'experiment-completed is 0 and...']
	[------------------ tier 4 ------------------]
	otherwise if tier >= 4: [latex play]
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
					say "[speech style of M]'You know, you look like a perfect subject for the improved version of an old spell of mine.'[roman type][line break][big he of M] waves a wand, pinkish-silvery light swelling out from it to bathe you in its glow. It concentrates on your [if the player is possessing a vagina][vagina][otherwise][one of]crotch[or]groin[or][penis][in random order][end if] and nipples before sinking in and dying down, leaving your sensitive bits all a-tingle. [LatexTransformClue]";
					if the player is possessing a vagina:
						passively stimulate vagina from nothing;
					otherwise:
						passively stimulate penis from nothing;
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
		now experiment-completed is 1; [Again, I think none of the above experiments can fail, so we can't fall through: thus the 'otherwise' now, rather than a test for 'experiment-completed is 0 and...']
	[------------------ tier 2 ------------------]
	otherwise if tier >= 2: [inflation]
		compute aeromancer science of M;
		now experiment-completed is 1;
	[------------------ tier 0 ------------------]
	otherwise:
		[This function shouldn't really be called if tier was 0]
		say "[BigNameDesc of M] looks at you as if considering some experimentation, but in the end seems to decide against it.";
	if experiment-completed is 1:
		satisfy M.

To say LatexTransformClue: [#LXorDD]
	say "[one of][bold type]You feel different[roman type], but you can't quite say why. Maybe your fingertips feel a tiny bit... numb?[or]Once again you've been inflicted with the latex doll transformation curse![stopping]".

To say BasicPaymentReceivedFlav of (C - players-detached-dick):
	let M be shopkeeper;
	if the latex-transformation of the player > 6:
		say "[speech style of M]'This place just gets weird and weirder. I don't think I ever expected to sell a [DetachedPenis] to a plastic sex doll.'[roman type][line break]";
	if the size of C < 5:
		slightHumiliate;
		if the size of C < 2 and players-detached-dick is singled:
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
	say "[big he of M] turns it over in [his of M] strong, [if gyno fetish is 1]powerful[otherwise]masculine[end if] hands, making you squirm at the sensations of [him of M] handling your [DetachedPenis]. [big he of M] flicks the end a few times, and it's all you can do not to moan aloud. [big he of M] eyes you curiously before handing it over.";
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
	if penis is detached:
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
	if penis is detached:
		let where be "";
		let oro be a random orifice penetrated by the players-detached-dick;
		if oro is nothing:
			now where is "";
		otherwise if oro is face:
			now where is " down my own throat. I just gave myself a BJ. And swallowed the [semen]";
		otherwise if oro is asshole:
			now where is " in my own ass";
		otherwise if oro is vagina:
			now where is " in my own [vagina]. Could I make myself pregnant?";
		otherwise:
			now where is " in my [ShortDesc of oro]: how strange";
		[Expand this to cover the humiliating cases of the player cumming and they're giving themselves a BJ, or in the ass, or in their vagina. Placeholder for now.]
		say "[variable custom style]Oh my god: even though my dick is detached, I just came[where]![roman type][line break]".

[For use e.g. when the players-detached-dick is inside them and it grows (X > 0), shrinks (X < 0) or just generally throbs (X = 0)
If they're not being penetrated by their own dick, this does nothing.
I figured that dick +/- happens often enough that variability in the flavour text made sense. It could also be useful for general detached dick general sensation calls (X = 0).
]
To compute detached dick intimacy (X - a number):
	if penis is attached, do nothing instead;
	let oro be a random orifice penetrated by the players-detached-dick;
	if oro is nothing:
		do nothing instead;
	let Z be the size of players-detached-dick;
	let DildoText be "";
	if players-detached-dick is doubled, now DildoText is " [one of]if it weren't for the normal-sized dildo sticking out in plain sight[or]if not for the dildo-handle sticking out obscenely, in plain view[or]if there wasn't a standard dildo jutting lewdly forth[in random order]";
	if oro is face:
		if X > 0:
			say "[if Z > 10][one of]Sweat breaks out on your forehead as your massive shaft presses your tongue flat[or]You try not to panic as the giant shaft buries itself deeper down your gullet[or]You feel the shaft thicken and stretch as it slides even deeper down your throat[or]You feel it wedge inside you, making you suddenly uncertain whether you'll be strong enough to pull it free[or]Even as it plugs your throat, you fantasise that it's now too big for you to be able to pull free[or]You feel your throat spasm as the [LatexFlav]shaft fills and penetrates it even further[in random order][otherwise if Z > 6][one of]You try not to panic as your fat shaft plugs your throat[or]You gag a little at the sudden growth, pressing deeper and harder down your throat[or]You shiver as your own [LatexFlav]shaft pushes further down your gullet[in random order][otherwise if Z > 3][one of]You suck on it reflexively, kind of appreciating the bigger size[or]You blush at the thought of how your little dick is so small that no one would even know you were sucking on it[DildoText][or]Your tongue curls easily around the slightly bigger shaft. It'd be hidden easily[DildoText][in random order][otherwise][one of]You blush as your tongue envelopes your toy-like dicklet[or]No one would know your tiny lollipop is there[DildoText][in random order][end if].";
		otherwise if X < 0:
			say "[if Z > 10][one of]Your panic eases as your massive shaft presses less forcefully against your tongue[or]You calm a little as the giant shaft eases up on your gullet[or]You feel the shaft shrink and pull out a little from your throat[or]You feel it wedged less firmly inside your throat[or]It no longer plugs your throat so fully, ending your fantasy of it being too big to pull free[or]Your throat relaxes as the [LatexFlav]shaft retreats a little[in random order][otherwise if Z > 6][one of]You calm as your shaft thins, plugging your throat less securely[or]You almost sigh at the welcome shrinkage, easing up on the invasion of your throat[or]You swallow then blush as your own [LatexFlav]shaft eases up on its invasion of your gullet[in random order][otherwise if Z > 3][one of]You suck on it reflexively, as if that might reverse the humiliating shrinkage[or]You blush at the thought of how your little dick is now so small that no one could know you were sucking on it[DildoText][or]Your tongue curls easily around the even daintier shaft. It'd be hidden easily[DildoText][in random order][otherwise][one of]You blush as your tongue swamps your tiny, toy-like dicklet[or]No one would know your tiny lollipop is there[DildoText][in random order][end if].";
		otherwise:
			say "[if Z > 10][one of]You feel a little panic at your massive shaft pressing forcefully against your tongue[or]You try to calm yourself despite the giant shaft plunged halfway down your gullet[or]You feel the shaft throb and pulse as it overfills your throat[or]You try to swallow, feeling it wedged solidly inside your throat[or]It plugs your throat so fully, making you wonder whether it's even too big to pull free[or]Your throat spasms around the [LatexFlav]shaft[in random order][otherwise if Z > 6][one of]You try to stay calm even as your shaft plugs your throat[or]You concentrate on not resisting the invasion of your throat[or]You swallow then blush as your own [LipDesc] massage the base of your [LatexFlav]shaft as its invasion of your gullet eases[in random order][otherwise if Z > 3][one of]You suck on it reflexively, wishing it wasn't so small[or]You blush at the thought of how your little dick is now so small that no one could tell you were sucking on it[DildoText][or]Your tongue curls easily around the dainty shaft. It'd be hidden easily[DildoText][in random order][otherwise][one of]You blush as your tongue swamps your tiny, toy-like dicklet[or]No one would know your tiny lollipop is there[DildoText][in random order][end if].";
	otherwise if oro is asshole:
		if X > 0:
			say "[if Z > 10][one of]Sweat breaks out on your forehead as your massive shaft drives deeper into your [asshole][or]You try not to panic as the giant shaft buries itself deeper inside your arse, pressing on your prostate[or]You feel the shaft thicken and stretch as it slides even further up your rear[or]You feel it wedge inside you, making you suddenly uncertain whether you'll be strong enough to pull it free[or]Even as it plugs your [asshole], you fantasise it's grown too big for you to be able to pull it free[or]You feel your sphinctre spasm as the [LatexFlav]shaft fills and opens it even further[in random order][otherwise if Z > 6][one of]You try not to panic as your fat shaft plugs your [asshole][or]You shudder at the sudden growth, as it presses deeper and harder into you[or]You shiver as your own [LatexFlav]shaft pushes further inside you[in random order][otherwise if Z > 3][one of]You clench on it reflexively, kind of appreciating the bigger size[or]You blush at the thought of how your little dick is so small that no one would even know it was impaling you[DildoText][or]Your ass stretches to hold the slightly bigger shaft. It'd be hidden easily[DildoText][in random order][otherwise][one of]You blush as your ass continues to bury your toy-like dicklet[or]No one would know your tiny lollipop is shoved up there[DildoText][in random order][end if].";
		otherwise if X < 0:
			say "[if Z > 10][one of]Your panic eases as your massive shaft shrinks and withdraws a little inside your rear canal[or]You calm a little as the giant shaft eases up on your anus[or]You feel it wedged less firmly inside your ass[or]It no longer plugs your [asshole] end so fully, ending your fantasy of it being too big to pull free[or]Your relax as the [LatexFlav]shaft retreats a little[in random order][otherwise if Z > 6][one of]You calm as your shaft thins, plugging your [asshole] less forcefully[or]You almost sigh at the welcome shrinkage, easing up on the gaping of your asshole[or]You swallow then blush as your chubby shaft eases up on its invasion of your [asshole][in random order][otherwise if Z > 3][one of]You clench on it reflexively, as if that might encourage it to swell up to reverse the humiliating shrinkage[or]You blush at the thought of how your little dick is now so small that no one could know you were impaled on it[DildoText][or]Your anus clamps easily around the even daintier shaft. It'd be hidden easily[DildoText][in random order][otherwise][one of]You blush as your [AssDesc] swamps your tiny, toy-like dicklet[or]No one would know your tiny lollipop is there[DildoText][in random order][end if].";
		otherwise:
			say "[if Z > 10][one of]You feel a little panic at your massive shaft forcefully plugging your anus[or]You try to calm yourself despite the giant shaft plunged halfway up your intestines[or]You feel the shaft throb and pulse as it overfills your bum[or]You clench your [AssDesc], feeling your [manly-penis] wedged solidly inside your [asshole][or]It plugs your [asshole] so fully! It makes you wonder whether it's too big to pull free[or]Your sphinctre spasms around the rigid, fat shaft[in random order][otherwise if Z > 6][one of]You try to stay calm even as your shaft plugs your [asshole][or]You concentrate on not resisting the invasion of your rear[or]You swallow then blush as your [AssDesc] massage the base of your [LatexFlav]shaft, feeling every inch of its invasion of your rear[in random order][otherwise if Z > 3][one of]Your [asshole] clenches on it reflexively, while you wish it wasn't so small[or]You blush at the thought of how your little dick is now so small that no one could tell you were sitting on it[DildoText][or]Your [AssDesc] easily bury the dainty shaft. It'd be hidden easily[DildoText][in random order][otherwise][one of]You blush as your [AssDesc] swamp your tiny, toy-like dicklet[or]No one would know your tiny lollipop is there[DildoText][in random order][end if].";
	otherwise if oro is vagina:
		if X > 0:
			say "[if Z > 10][one of]Sweat breaks out on your forehead as your massive shaft drives deeper into your [vagina][or]You try not to panic as the giant shaft buries itself deeper inside your [vagina], pressing on your clit[or]You feel the shaft thicken and stretch as it slides even deeper into your [vagina][or]You feel it wedge inside you, making you suddenly uncertain whether you'll be strong enough to pull it free[or]Even as it plugs your [vagina], you fantasise it's grown too big for you to be able to pull it free[or]You feel your [LabiaDesc] spasm as the [LatexFlav]shaft fills and opens you even further[in random order][otherwise if Z > 6][one of]You try not to panic as your fat shaft plugs your [LatexFlav][vagina][or]You shudder at the sudden growth, as it presses deeper and harder into you[or]You shiver as your own [LatexFlav]shaft pushes further inside your [LabiaDesc][in random order][otherwise if Z > 3][one of]Your [LabiaDesc] clench on it reflexively, as if appreciating the bigger size[or]You blush at the thought of how your little dick is so small that no one would even know it was impaling you[DildoText][or]Your [LatexFlav][LabiaDesc] stretch to hold the slightly bigger shaft. It'd be hidden easily[DildoText][in random order][otherwise][one of]You blush as your [vagina] continues to engulf your toy-like dicklet[or]No one would know your tiny lollipop is shoved up there[DildoText][in random order][end if].";
		otherwise if X < 0:
			say "[if Z > 10][one of]Your panic eases as your massive shaft shrinks and withdraws a little inside your [vagina][or]You calm a little as the giant shaft eases up on your [vagina][or]You feel it wedged less firmly inside your [LabiaDesc][or]It no longer plugs your [vagina] so fully, ending your fantasy of it being too big to pull free[or]Your relax as the [LatexFlav]shaft retreats a little[in random order][otherwise if Z > 6][one of]You calm as your shaft thins, plugging your [LabiaDesc] less forcefully[or]You almost sigh at the welcome shrinkage, easing up on the gaping of your [vagina][or]You swallow then blush as your chubby shaft eases up on its invasion of your [vagina][in random order][otherwise if Z > 3][one of]Your [LabiaDesc] clench on it reflexively, as if trying to encourage it to swell up and reverse the humiliating shrinkage[or]You blush at the thought of how your little dick is now so small that no one could know it was impaling you[DildoText][or]Your [LabiaDesc] clamp easily around the even daintier shaft. It'd be hidden easily[DildoText][in random order][otherwise][one of]You blush as your [vagina] swamps your tiny, toy-like dicklet[or]No one would know your tiny lollipop is there[DildoText][in random order][end if].";
		otherwise:
			say "[if Z > 10][one of]You feel a little panic at your massive shaft forcefully plugging your [vagina][or]You try to calm yourself despite the giant shaft plunged all the way up to what you guess must be your cervix[or]You feel the shaft throb and pulse as it gapes your [vagina][or]You clench your [LabiaDesc], feeling your [manly-penis] wedged solidly inside your [vagina][or]It plugs your [vagina] so fully! It makes you wonder whether it's too big to pull free[or]Your [LabiaDesc] spasm around the rigid, fat shaft[in random order][otherwise if Z > 6][one of]You try to stay calm even as your shaft plugs your [vagina][or]You concentrate on not resisting the invasion of your [vagina][or]You swallow then blush as your [vagina] massages the base of your [LatexFlav]shaft, feeling every inch of its invasion of your [vagina][in random order][otherwise if Z > 3][one of]Your [LabiaDesc] clench on it reflexively, while you wish it wasn't so small[or]You blush at the thought of how your little dick is now so small that no one could tell you were impaled on it[DildoText][or]Your [vagina] easily buries the dainty shaft. It'd be hidden easily[DildoText][in random order][otherwise][one of]You blush as your [LabiaDesc] swamp your tiny, toy-like dicklet[or]No one would know your tiny lollipop is there[DildoText][in random order][end if].".

Dick Detachment and Latex ends here.
