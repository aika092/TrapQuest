Shopkeeper by Monster begins here.

A shopkeeper is a kind of monster.  A shopkeeper is usually male.  A shopkeeper is usually intelligent.  A shopkeeper is usually dark skinned.  A shopkeeper is usually raunchy.  A shopkeeper is usually father material.  A shopkeeper is usually willing to do anal.  A shopkeeper is usually willing to do vaginal.  A shopkeeper is usually willing to do oral.  A shopkeeper is usually willing to urinate.  The leftover-type of a shopkeeper is usually 108. A shopkeeper is usually willing to do titfucks.

1 shopkeeper is in Dungeon41.  Understand "shop", "keeper" as shopkeeper.  The printed name of shopkeeper is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]well built shopkeeper[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The description of shopkeeper is usually "[ShopKeeperDesc]".  The text-shortcut of shopkeeper is "sh".  Understand "well", "built", "sk" as shopkeeper.

Figure of clothed shopkeeper is the file "shopkeeper4.png".

To say ShopKeeperDesc:
	if images visible is 1:
		if diaper quest is 1:
			display the Figure of Clothed Shopkeeper;
		otherwise if the bimbo of the player > 10:
			display the Figure of Shopkeeper 2;
		otherwise:
			display the Figure of Shopkeeper 1;
	if diaper quest is 1:
		say "This tall well dressed black man looks very friendly, but you also can't help but notice that he is very well built.  He exudes an air of dominance.";
	otherwise:
		say "[one of]The shopkeeper is a chiselled black man with thick, sinewy muscles covering his entire body. Despite the fact that he's naked, you can tell from his posture that it doesn't bother him in the least. The above average penis dangling freely between his legs probably has something to do with his confidence, but the subtle tattoos on his biceps suggest that he is actually a very skilled martial artist. He constantly scans the room with a hawk-like gaze.[or]The shopkeeper is a giant naked black man with an above average penis dangling freely between his legs. His body is ripped with muscles, and his posture gives you the feeling that he's a very skilled martial artist. He constantly scans the room with a hawk-like gaze, seemingly not bothered by the fact you can see his junk.[sticky random]";
		say "[if interracial fetish is 1 and the bimbo of the player < 4][first custom style]Ugh, that [manly-penis] is so big, there's nowhere else I can look![otherwise if interracial fetish is 1 and the bimbo of the player < 7][first custom style]Why can't I look away from his massive black [manly-penis]?[otherwise if interracial fetish is 1 and the bimbo of the player < 11][variable custom style]Wow, it's just so big, and... majestic...[otherwise if interracial fetish is 1 and the bimbo of the player < 14][variable custom style]I'm getting weak at the knees just looking at that majestic monster...[otherwise if interracial fetish is 1][second custom style]I hope he'll let me worship his godly [manly-penis].[otherwise if the player is female and the bimbo of the player < 6][first custom style][one of]Ugh. Put your [manly-penis] away, sicko.[or]Oh I get it, he doesn't trust women so he has to watch me all the time. Misogynist.[or]This Neanderthal isn't even wearing clothes. Who does he think he is?[or]He looks so sure of himself. Typical. Men are so obsessed with their penises.[or]A man in charge of the shop. How original.[in random order][otherwise if the bimbo of the player < 6][first custom style][one of]I probably shouldn't steal anything. He'd definitely notice.[or]That dude is cut! Maybe I should get him to give me some workout tips.[or]This guy looks like he knows his stuff. Wish he'd put some pants on, but still.[in random order][otherwise if the bimbo of the player < 10][variable custom style][one of]I can't stop staring at his penis.[or]He looks strong. I wonder what it would feel like if he let me touch his muscles.[or]I shouldn't steal anything. Who knows how he might punish me.[or]I don't think I could outrun him if I stole something. His body is just, wow.[in random order][otherwise][second custom style][one of]He's really sexy![or]What a yummy looking penis![or]I want to touch his muscles.[or]What a HUNK![or]I can't stop staring at his penis! It looks so yummy![or]He's YUMMY[in random order][end if][roman type][line break]".
	
To set up (M - a shopkeeper):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 14;
	now the health of M is the maxhealth of M.

This is the spawn initial shopkeeper rule:
	if debugmode > 1, say "Now summoning shopkeeper.";
	let M be a random shopkeeper;
	if M is alive, now M is in Dungeon41.
The spawn initial shopkeeper rule is listed in the setting up dungeon monsters rules.

To decide which number is the girth of (M - a shopkeeper):
	decide on 5.

To decide which number is the semen load of (M - a shopkeeper):
	decide on 3.

Definition: a shopkeeper (called M) is able to remove plugs: [Can the monster remove uncursed butt plugs?]
	decide yes.

Definition: A shopkeeper (called M) is willing to shag:
	if the sleep of M is 0 and the scared of M is 0 and the boredom of M < 120 and M is released, decide yes;
	decide no.

To say PregGrowth of (M - a shopkeeper):
	say "the shopkeeper's [child]".

To compute labour to (M - a shopkeeper):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue!  He[end if] kneels down on one knee and delivers the beautiful mixed race human baby.  He takes it into his arms and begins to cradle it.  [first custom style]'A baby girl!  [if the father is mating]A wonderful addition to our family.[otherwise]My first child.  I will remember this moment for ever.  From now on, you can take what you want from the store, free of charge.  We are family now, through this child, and so what is mine is yours.'[roman type][line break]Without giving you a chance to react, never mind reply, he leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment.  You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

Definition: a shopkeeper (called M) is human:
	decide yes.

To say LeftoverDesc (N - 108):
	say "The dead crumpled corpse of the shopkeeper is on the ground here.[line break]";

Part 1 - Misc Flavour

To say MonsterOfferAcceptFlav of (M - a shopkeeper) to (T - a thing):
	if M is unfriendly:
		say "The [M] smirks.  [speech style of M]'[if there is stolen clothing]Fair enough.  Next time, just pay first, [bitch].  [otherwise]I'm not going to turn that down, I'm not an idiot.  But I'm still going to fuck you the next time I see you.  [end if]Now get out of here.'[roman type][line break]";
		let N be the bartering value of T for M;
		repeat with C running through stolen clothing:
			if N >= the price of C:
				decrease N by the price of C;
				now C is normal;
			if total stolen value is 0, calm M;
	otherwise:
		say "The [M] seems very touched.  [speech style of M]'I was not expecting a gift!  How very decent of you.'[roman type][line break]".

To decide which number is the bartering value of (T - an accessory) for (M - a shopkeeper):
	if T is plentiful accessory, decide on the price of T;
	decide on 0.

To decide which number is total stolen value:
	let N be 0;
	repeat with C running through stolen clothing:
		increase N by the price of C; 
	decide on N.

To say FloorPeeReaction of (M - a shopkeeper):
	if the player is in Dungeon41:
		if diaper quest is 1:
			if M is friendly:
				say "The [M] looks furious.  [speech style of M]'What are you doing?!  This is a shop, not a toilet!  [if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], you clearly need to be diapered and punished!'[roman type][line break]";
				anger M;
			otherwise:
				say "The [M] frowns angrily.  [speech style of M]'This is why you need to be in diapers!'[roman type][line break][if M is uninterested]Uh-oh...[end if]";
				now M is interested;
		otherwise:
			if M is friendly:
				say "The [M] looks furious.  [speech style of M]'What are you doing?!  This is a shop, not a toilet!  [if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], I'm going to make you wish you never stepped foot in here!'[roman type][line break]";
				anger M;
			otherwise:
				say "The [M] frowns angrily.  [speech style of M]'You are an utter disgrace!'[roman type][line break][if M is uninterested]Uh-oh...[end if]";
				now M is interested;
	otherwise:
		say "[speech style of M]'Hmph.  At least it's not in my shop.  I hate it when people pee in my shop.'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a shopkeeper) to (T - a thing):
	say "The [M] frowns.  [speech style of M]'[if total stolen value > 0]Not good enough.  Either [bold type]pay[speech style of M] me properly or accept your punishment.'[otherwise if convincing power > 0 and M is unfriendly]You're not going to get let off that easy.'[otherwise]Why the hell would I want that?'[end if][roman type][line break]".

To say BecomesBoredFlav of (M - a shopkeeper):
	say "The [M] seems to lose interest in you for now.".

To say DiaperReaction of (M - a shopkeeper):
	if M is interested, say "The [M] frowns as he watches you.  It's very clear that he can tell what is happening.  [variable custom style][if the humiliation of the player < 17000]Why did this have to happen to me?![otherwise if the humiliation of the player < 25000]If he was kind, he would look away![otherwise]Yep that's right Sir, I'm going right now in my nappy![end if][roman type][line break]";
	otherwise say "The [M] doesn't look at you directly or say anything, so it's hard to gauge [if the humiliation of the player < 31000]if [he of M] saw[otherwise][his of M] reaction[end if].".

To compute (M - a shopkeeper) using sex doll (N - 1):
	let MPlug be a random thing penetrating face;
	let APlug be a random thing penetrating asshole;
	let VPlug be a random thing penetrating vagina;
	say "[speech style of M]'Oh wow, a female sex doll!  There are plenty of traps and male ones walking around, but you're the first female one I've seen!  Come here, I could do with blowing off some steam!'[roman type][line break]";
	anger M;
	[shopkeeper new sex scene with female doll]
	say "[if the sex addiction of the player < 8]You try to turn and back out, but the [M] doesn't even notice your paltry escape attempt, one hand gripping your stiff but slender forearm and towing you[otherwise]The [M] tows you[end if] effortlessly back behind the counter, not even noticing as you bump against the clothing racks, and bounce off. He leans forward, looking you carefully in the face, as one large finger reaches out to trace the swollen round orifice that your glistening plastic lips now make. [if MPlug is not nothing][speech style of M]'A sex doll with a [printed name of MPlug], eh?  Kinky!  I wonder if I should remove it?'[roman type][line break][end if]";
	say "[one of]But then he frowns, as if puzzled.  [speech style of M]'You look familiar, somehow...'[roman type][or][speech style of M]'You still remind me of someone, though...'[roman type][stopping][line break]";
	say "[one of]You nod, hoping he'll have some way of fixing you, and try to tell him, [variable custom style]Yes, it's me, [NameBimbo]![roman type] But you're kind of horrified afresh when the sound that emerges is a kind of sexy girlish moan - like a girl who's desperate for sex - rather than the words in your head![line break][speech style of M]'What does it mean when you nod like that? You want to give me a blowjob, is that what you're programmed for?'[roman type][line break][or][stopping]"; [Might this be a good place to give the player a chance to do something?]
	say "[if the sex addiction of the player < 7]Your eyes widen in horror at the thought - or they would if you could change your expression any more from its permanently-surprised 'O' of 'Please fuck my mouth' - and you freeze, not wanting to make any further head movements that he might misinterpret.  Nor any more attempts at speech, judging by the delighted grin that last emanated from your voice-box!  [end if]He watches you, one eyebrow raised as if he's hoping for a response from sex-doll you, his expression changing to one of mild disappointment at your doll-like inertness.[line break]";
	say "[speech style of M]'[one of]Damn! I thought they must have improved the doll-program: for a moment there, it looked like you were going to struggle, or something.'[roman type] He gives your inflated arm a squeeze and shakes you.  [speech style of M]'Are you sure you don't want to squirm and try to run away?  Hmm?'[or]Aww, it's more fun when they struggle.  Oh well, this'll do for now!'[stopping][roman type][line break]";
	say "[if the sex addiction of the player < 9]You stay perfectly still, hoping he might grow bored and let you go, all too aware of your perfectly made up face and inviting lips gaping vulnerably open. [end if]You sneak a look down at his groin, and blink in [if the sex addiction of the player < 6]dismay[otherwise]awe[end if] at the sight of the enormous cock straining up, pointing like a huge magnetised dowsing-rod at your [BreastDesc]. You look back up, and [if the humiliation of the player < 175000]cringe when you [end if]see a slow smile dawn on his face, and realise he watched you stare down at his quivering cock, and then back up to meet his gaze.";
	say "[speech style of M]'[one of]Huh: that's new, and strangely appealing. Like you're desperate for my cock, but don't want to admit it, right?  Hmm... '[or]Am I experiencing deja vu, or can you not get enough of looking at my cock?'[stopping][roman type][line break]";
	say "He flips one brightly-coloured nipple, and the surprise makes you squeak out in that voice that sounds like Barbie moaning with her mouth stuffed full of... something or other.  He grins, his fingers moving to the other nipple and gives it a fierce squeeze and then tugs on it, once again forcing a girlish moan from you before you can gather your resistance.  He doesn't let go, though - instead, pulling harder on the nipple, and you watch in some fright - and a toe-curling shock of pleasure - as your rubbery skin stretches out impossibly, drawing your boob into something of a sharpened peak, behind it.  Then he lets go, and your nipple [']twangs['] back into place, just as perkily erect as before.  Except now it's throbbing with an intense pleasure.";
	say "[speech style of M]'[one of]Responsive little thing, aren't you?'[or]That never gets old!'[stopping][roman type] He turns you round, and back, [if asshole is not actually occupied and vagina is not actually occupied]seemingly careless of the hand gripping you by pussy and taint, [end if]as he [one of]considers the orifices on offer, like a gourmet surveying a range of desserts, wondering which to pick.  Briefly, his hand grips you around the throat, turning you this way and that. [speech style of M]'Hmm, maybe I could suggest they could add some kind of pull-string to tug on while you're being used, so you could tell me how much you're enjoying my massive dick!'[roman type][line break]Finally, though, he seems to make up his mind, and stands up[or]once again considers the orifices on offer[stopping].";
	now the stance of the player is 1;
	now current-monster is M;
	follow the sex attempt rules.

To compute (M - a shopkeeper) using sex doll (N - 2):
	let MPlug be a random thing penetrating face;
	let APlug be a random thing penetrating asshole;
	if size of the penis is 0:
		say "[speech style of M]'With those [BreastDesc], I kind of assumed you'd be anatomically correct, but maybe they designed you for patrons who are into Barbie dolls, eh?'[roman type] he muses aloud, with an amused grin.  [speech style of M]'Never mind, baby, you've still got a couple of openings for a willing partner, eh?'[roman type]  One hand around the back of your neck presses you forward, so you seem to nod in agreement.[line break]";
	otherwise if size of the penis is less than 4:
		say "His eyes drift down to your groin, and he frowns, in a kind of puzzled way, shaking his head.  Before you realise what he's doing, he slips one hand between your spread-open thighs and with just the tip of one finger, bends your [genitals] back, then releases it so it [if size of the penis is greater than 2]*sproings* back upright with a tiny quiver.  [speech style of M]'Man, that's small.  I'm trying to decide if that's a plus-sized clitoris or the smallest damn prick I've ever seen!  I guess it's been designed as some kind of miniature carry-handle, not as something for actual penetration.  Weird.'[roman type][line break][otherwise]pops back into place like a tiny button. [speech style of M]'Cute clit, girl, even if it is a bit swollen.  Looks like it'd be sensitive if it wasn't rubber.  But where's your pussy got to, baby momma?  Or don't you and Ken go in for that kind of stuff?'[roman type] he leers.[end if]";
	otherwise if asshole is not actually occupied and vagina is not actually occupied:
		say "He turns you round, tips you over, and you feel one meaty paw slip between your legs, and then his large thumb slides up your butt-hole while two fingers curve around and into your snatch.  He releases your wrist, and bounces you up and down in the air with one hand, angling you this way and that.  You imagine him enjoying the view.[line break]Which is apparently exactly what he was doing, you realise, as his other hand caresses the shiny smooth 'skin' of your [AssDesc], rubbing and sliding over the slick surface. [speech style of M]'Oh, baby, I'm spoiled for choice here!'[roman type][line break]Twisting his wrist, he bends you half around to face him, his eyes roaming between your face and his hand as it moves up from your booty to [one of]slip into the valley between your [BreastDesc][or]explore the shiny aperture formed by your [LipDesc][or]your soft cheek, cupping it as he considers your face and how it [MakeUpDesc].[at random].";
	otherwise:
		say "[speech style of M]'I see you've already been [']plugged in['], eh?'[roman type][line break]He eyes your [if MPlug is not nothing][printed name of MPlug][otherwise][printed name of APlug][end if], then moves his hands up to your inflated [BreastDesc], groping and squooshing the nicely-inflated soft domes.";
	now the stance of the player is 1;
	now current-monster is M;
	follow the sex attempt rules.

To compute (M - a monster) stomping (N - a shopkeeper):
	if diaper quest is 1:
		if M is in the location of the player, say "The [M] leaps into the air and lands on the [N], who disappears underneath the monster.  There's a scream, but it's not from beneath the beast, it's from above you - the [N] has somehow appeared above you, hog-tied and suspended from the ceiling, with a large sagging diaper, a tight blindfold and a large ballgag.  It doesn't look like he'll be getting down any time soon.";
		otherwise say "You hear the shopkeeper cry out in terror from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
	otherwise:
		if M is in the location of the player, say "The [M] forcefully pushes the [N] to the ground and stamps on his body.  The [N] is now motionless on the ground.";
		otherwise say "You hear the shopkeeper cry out in pain from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Part 2 - Perception

To decide which number is the aggro limit of (M - a shopkeeper): [The number at which they turn unfriendly]
	decide on 8. [The shopkeeper is slightly more friendly than others at the beginning of the game]

To decide which number is the bimbo tolerance of (M - a shopkeeper):
	if interracial fetish is 1, decide on 10;
	decide on 14.

To compute perception of (M - a shopkeeper):
	if diaper quest is 1, say "The [M] notices you[if the player is sluttily dressed][one of], and seems to be smiling politely enough[or][stopping].[otherwise]![end if]";
	otherwise say "The [M] notices you[if the player is sluttily dressed], grinning at how you're dressed[one of] even though he is completely naked himself[or][stopping].[otherwise]![end if]";
	now M is interested;
	if the class of the player is living sex doll:
		if the player is female, compute M using sex doll 1;
		otherwise compute M using sex doll 2;
	otherwise if M is mating:
		say "[speech style of M]'Welcome back, my love!'[roman type][line break]";
		calm M;
	otherwise if there is held stolen clothing:
		say "[speech style of M]'How dare you taunt me with that stolen clothing?  Give it back at once, or pay the price!'[roman type][line break]";
	otherwise if the class of the player is vixen:
		say "[speech style of M]'[one of]Hey, what are you doing in here! Don't think I'm going to just let you steal from my shop!'[or]Who do you think you're fooling coming into my shop like that? Get out of my shop, thief!'[or]Hey! I can tell you're a thief just by looking at you, so leave my shop right now or face the consequences!'[at random][roman type]";
		anger M;
	otherwise if M is babifying the player:
		say "[speech style of M]'[one of]Holy shit, you are just begging to be teased, aren't you?  Well, I'm not going to hold back then!'[or]Hey kid, ready for another round?'[stopping][roman type][line break]";
		anger M;
	otherwise if M is objectifying the player:
		say "[speech style of M]'[one of]Holy shit, you are just begging to be fucked, aren't you!  Well, I'm not going to hold back then!'[or]Hey slut, ready for another round?'[stopping][roman type][line break]";
		anger M;
	otherwise if the diaper-duration of M > 0:
		if the player is immobile:
			say "The [M] seems to want to leave you be for now.";
			distract M;
		otherwise	if there is a worn diaper:
			compute diaper check of M;
		otherwise:
			say "[speech style of M]'OI!  I'm pretty sure I told you that you were being potty trained!  Oh you're in big trouble now, kiddo!'[roman type][line break]";
			FavourDown M by 4;
			anger M;
	otherwise if M is friendly and M is in Dungeon41:
		say "[speech style of M]'Welcome to the [if M is in the Dungeon]Dungeon [end if]clothes shop!  If you have any jewellery to pay with, feel free to look around.  Don't you dare leave the shop without [bold type]pay[speech style of M]ing for something, though.'[roman type][line break]";
	otherwise if M is unfriendly and total stolen value > 0:
		say "[speech style of M]'There you are, thief!  Now I've got you!'[if the player is flying][line break]'Well, at least when you get down from there...'[end if][roman type][line break]";
	otherwise if M is unfriendly:
		say "[speech style of M]'I think you still need to be taught some better manners!'[roman type]  Uh-oh...";
	otherwise:
		say "[speech style of M]'I should go back to the shop.'[roman type][line break]";
		send M home;
	if M is unfriendly, now the blue-balls of M is 1;
	if the player is queen of spades and the bimbo of the player > a random number between 6 and 13:
		compute racial submission to M;
	if newbie tips is 1, say "[one of][item style]Newbie tip: The shopkeeper is pretty tough, so unless you're looking for a rough [if diaper quest is 1]punishment[otherwise]fucking[end if] I wouldn't mess with him!  You can buy stuff from him by picking it up and then typing 'pay'.  It's also definitely worth asking him a question - sometimes he'll be in a good mood and teach you a new skill![roman type][line break][or][stopping]".

To compute friendly boredom of (M - a shopkeeper):
	if the player is not in the location of M, now M is uninterested.


Part 3 - Motion and Seeking

To compute motion of (M - a shopkeeper):
	if M is not in Dungeon41: [If the shopkeeper is not interested in chasing the player, he just returns to the Dungeon Shop.]
		if M is in the location of the player, say "The [M] walks off to the [the best route from location to Dungeon41], presumably to get back to the shop.";
		now M is in Dungeon41.
			
To compute (M - a shopkeeper) seeking (D - a direction):
	if M is unfriendly, try M going D;
	compute motion reactions of M. [The shopkeeper moves with excellent purpose when seeking, but also doesn't follow the player around if friendly.]

Part 4 - Combat

Section 1 - Attack

[Lots of this was written by Kat, based off MG's content for the Guard.]

To compute kneeling reaction of (M - a shopkeeper):
	say "The [M] continues to keep his guard up, even as you kneel before him. The sheer size of the man is something he's ready to use if you try to run, and given how many muscles he's sporting, it wouldn't be the best idea. Simply kneeling is enough to coax a good laugh from the [M] as he closes the gap between you and him, his [manly-penis] springing to life between his legs in a matter of seconds. His gaze fixates on you, as if he's waiting for you to make the first move.";
	humiliate 75.

To compute delay of (M - a shopkeeper):
	say "The shopkeeper stands there, clearly expecting you to present yourself to him. [if the humiliation of the player < 23000]As if he deserves anything from you![otherwise if the bimbo of the player < 14]Not that you'd have a problem doing so, of course.[otherwise][second custom style]He is the man, after all, and deserves a good show~![roman type][line break][end if]".
	
To say waitingflav of (M - a shopkeeper):
	if diaper quest is 1:
		say "[variable custom style][if the delicateness of the player < 7]As if I'm going to let [him of M] scare me.[otherwise if the delicateness of the player < 13]I've got to hide the fact I'm scared...[otherwise]I'll just do whatever he tells me and hopefully he won't hurt me too much.[end if][roman type][line break]";
	otherwise if the sex addiction of the player < 8:
		say "[one of]Your gaze shoots up at the shopkeeper's face, your mouth slightly ajar in disbelief. He wasn't really expecting you to... do anything, was he?[or]Your mind struggles to grasp the situation, your body equally shocked into paralysis.[or]Clearly the [M] expects too much from you, and you're not having it! You turn away with the slightest of pouts on your lips. [first custom style]'Hmmph.'[roman type][line break][or]For a moment you stay still, finding it hard to believe he's waiting for your move. [first custom style]'Look, I didn't mean to piss you off! Just, take it easy!'[roman type][line break][or]The Shopkeeper looks far too tough to fight, there's no way you can escape with him on your tail. Maybe you should just please him and get it over with.[or][first custom style]'[if the player is male]Look, um, sir, I'm not gay. So can I just leave?'[otherwise]There's no way in hell I'm touching THAT!'[end if][roman type][line break][or][first custom style]'[if the player is male]I'm not here to get fucked, asshole, so just let me go so I can get out of this hell hole.'[otherwise]What, do you think I'm just some slut? Fuck off.'[end if][roman type][line break][or][first custom style]'[if the player is male]Just put away that disgusting [manly-penis] already, it's gross.'[otherwise]I'm not saying you're not a... large guy, but I'm not here for that!'[end if][roman type][line break][or][first custom style]'Please, just let me go, I didn't mean it.'[roman type][line break][in random order]";
	otherwise if the sex addiction of the player < 13:[Some here might cause issues if shopkeeper is aggroed in the wrong way]
		say "[one of]Seeing such a handsome, strong looking man makes you quiver with subdued anticipation.[or]You don't dare move, mostly because he's so... big... and... ... big...[or]The [M] is just too strong to fight, it'd be easier just to submit to him~[first custom style]'Please don't use me like the slut I am...'[roman type][line break] You clasp a palm over your mouth in shock for a second before lowering it back to your side.[or][first custom style]'You mean I can't just pay with sex?'[roman type][line break][or][if the player is male]You can't help but start to think some oddly 'gay' thoughts.[otherwise]His size has even you cupping your [vagina]. It's unclear whether in anticipation or dread.[end if][or][second custom style]'[if the player is male]I hope my [manly-penis] doesn't bother you...'[otherwise]Am I really a slut if I let him do... this?'[end if][roman type][line break][or][if the player is male]It's hard to ignore how attracted to his [manly-penis] you are... It's just so... Mmph...[otherwise][variable custom style]'With your size there's no way it'll fit!'[end if][roman type][line break][in random order]";
	otherwise:
		say "[one of]There's just no possible way you're going to pass up on such a thick, lengthy [manly-penis].[or][second custom style]'Fuck me hard, I've been a bad little girl!'[roman type][line break][or][second custom style]'Being pent up in this room all day must make you so horny~!'[roman type][line break][or][second custom style]'I like being fucked by strong men like you, so pick a hole~!'[roman type][line break][or][second custom style]'Don't hold back, I can take it!'[roman type][line break] You hope.[or][second custom style]'[if the size of penis > 3]Maybe the [M] will get me off too!'[otherwise]I'm a woman, so my opinion doesn't matter, Hee hee!'[end if][roman type][line break][or][if the player is male]Just looking at that [manly-penis] makes me want to get railed by it![otherwise]You hype yourself up, unsure of whether or not he'll fit. You cross your fingers and hope for the best~![end if][roman type][line break][or][second custom style][if the player is male]I'm the sissy here, so I should find out which hole he wants to use![otherwise]I hope he fucks my cunt, I'm so wet down there... But really, it's his choice, not mine~![end if][roman type][line break][or][second custom style]'Oh, I can't quite decide which way I want to be used!'[roman type][line break][or][second custom style]He looks like he's got tons of experience, I should let him decide![roman type][line break][or][second custom style]'I'm too horny to think straight, just jam it in!'[roman type][line break][in random order]".

The latex punishment rule of a shopkeeper is usually the no latex punishment rule.

To compute (M - a shopkeeper) urinating:
	say "[UrinationFlav of M]";
	FacePiss;
	send M home.

To compute (M - a shopkeeper) entering mouth:
	if the class of the player is living sex doll: [Should any of this move into another function?]
		say "[speech style of M]'I just can't resist those plump and welcoming lips, Momma!'[roman type][line break]";
		let MPlug be a random thing penetrating face;
		if MPlug is not nothing:
			say "It's only a few seconds work for the [M] to release you from the [printed name of MPlug], tapping it briefly on the end of your cute nose before placing it carefully on his counter top.[speech style of M]'I'll decide later if I put that back in, or not.  It'll depend on you.  Know what I mean, doll-face?'[roman type][line break]";
			follow the monster removing gag rule;
		now M is penetrating face;
		if the sex-length of M < 3, now the sex-length of M is 3;
		say "What happens then is [if the oral sex addiction of the player < 5]awful, but wonderful at the same time[otherwise]wonderful[end if].  He thrusts his thick tool unceremoniously between your wide open and inviting lips, and plunges in to the hilt!  You're treated to an eye-crossingly close look at the base of his belly, and that's when things get weird!";
		say "Three things happen, all at the same time.  First, a rush of pleasure shoots through you, just from the touch of his dick on your inflated lips!  Second, you feel your body stiffen, and some kind of inner tensioning and shifting as your insides kind of hollow out even further.  The purpose becomes dismayingly obvious, though, as your lips seal tightly around his shaft and you feel a vacuum form around around it, even as the end shoves roughly down your throat, halfway down your oesophagus!";
		say "[speech style of M]'Oh, yeah, that's what I want!  Suck me, girl!'[roman type][line break]";
		say "Indeed, looking down your nose, you can see your cheeks have sunken in, while your lips are compressed and swollen tightly around the invading shaft in that classic, hollow-cheeked desperate BJ-queen appearance of Japanese manga.  He pulls carefully back, and it seems you're somehow lubricating there, because his shaft slides slickly out, making him groan as the suction increases, by the volume of his withdrawal, before he thrusts back in.";
		say "Your lips are so smooth and oiled his skin hardly makes a whisper of sound as it slips in and out, and his pace accelerates dramatically.[line break]And the third thing?  The third thing is that the suction and slick friction make you start helplessly generating sounds like a squealing, sex-crazed teen girl.  Your grunts are muffled by your well-plugged throat, even more incoherent than when you don't have a meaty rod plunging in and out of your face.  You find yourself helpless to do anything but avidly suck and squeal as he pounds your face.";
	otherwise if face is not occupied:
		now M is penetrating face;
		if the sex-length of M < 3, now the sex-length of M is 3;
		if presented-orifice is face:
			say "[one of]The [M] cracks off a booming chuckle as he pulls your head close to his lap, soon groaning with pleasure as his ebony [manly-penis] sinks into your parted lips. It seems all this time spent in the shop has given him little time for pleasure, as evident by the greedy thrusts against your face.[or]The [M] gives his [manly-penis] a few good strokes before placing his tip at your lips, grunting as he shoves himself into your mouth with one hearty thrust and a lusty groan. His [manly-penis] stiffens even further thanks to your wet maw and tight throat.[or]The [M] grabs you by the back of your head, entwining your hair between his fingers to make sure you won't escape easily. Before long his girthy rod is sliding into your mouth, gracing your tongue with salty pre. The [M] starts to lose himself in pleasure as he forces your head to bob along his ebony [manly-penis].[or][if the oral sex addiction of the player < 4]The [M] slides his fat rod into your slightly gaped maw with a huff, tilting his head back to let a groan vibrate the air. The blush on your cheeks only magnifies as he begins to guide your head back and forth along his [manly-penis].[otherwise if the oral sex addiction of the player < 6]The [M] crams his [manly-penis] in your mouth without a second thought, clearly pleased if his moans were anything to go by. You can't help but feel arousal tickling your skin as your chest heats up in the moment, making you start to second-guess how much you're enjoying this.[otherwise]The [M] gives his [manly-penis] a few good strokes before presenting it to your face. You feel yourself perking just a tad before staring down his [manly-penis]. And, with a sudden burst of lust, you lunge forward to wrap your lips around him. Before long you're bobbing happily in his lap, much to his enjoyment.[end if][or][ShopkeeperPresentedFaceFlav of M][in random order]";
		otherwise if there is a worn latex hood or the latex-transformation of the player > 6:
			let R be 1;
			if R is 1:
				say "[one of]The [M] puts his hand on the back of your head, guiding his [manly-penis] through your [if there is a worn latex hood]gag[otherwise]lips[end if] and into your mouth with a subdued groan, dragging his [manly-penis] along your spit-slick tongue forcefully.[or]The [M] slides his [manly-penis] through your [if there is a worn latex hood]gag[otherwise]gaping lips[end if] without resistance, keeping a hand at the back of your head to make sure you don't try to get off his [manly-penis]. With a grip now on your head, he starts to guide you along, groaning with pleasure as he slides in and out of your [if there is a worn latex hood]gag[otherwise]gaping lips[end if].[or]The [M] cracks a wide smile as he presses his head into the ring of your hood, his [manly-penis] beading pre steadily as he begins to gently slide to and fro. You can easily hear his huffs and grunts above you over the sound of [if there is a worn latex hood]wet sloshes of spit[otherwise]squeaky plastic[end if] in your maw. He pulls back with an even wider grin, [if there is a worn latex hood]inspecting the strands and ropes of saliva still connect your tongue to his [manly-penis] before[otherwise]using his fingers to test the elastic stretchiness of your mouth before[end if] giving himself a good few pumps with his large hand and sliding back in with a moan.[in random order]";
			otherwise:
				if the oral sex addiction of the player < 4:
					say "[one of]The [M] slides his [manly-penis] through your [if there is a worn latex hood]gag[otherwise]gaping lips[end if]. You emit a muffled grunt of indignation as he begins to thrust. [if there is a worn latex hood]Wet sloshes of spit[otherwise] Muffled squeaks[end if] sound from your mouth as he gets into a rhythm, his little grunts breaking the otherwise quiet air.[or]Your eyes widen in horror as the [M] slides his [manly-penis] through your [if there is a worn latex hood]gag[otherwise]gaping lips[end if] and into your mouth, your protests soon muffled against his ebony [manly-penis] and his much louder grunts of obvious pleasure. You brace your hands against his thighs the best you can, but it seems like he's intent on using you as a cock sleeve.[at random]";
				otherwise if the oral sex addiction of the player < 6:
					say "[one of][if there is a worn latex hood]The [M] slides his [manly-penis] through your gag. You emit a muffled grunt as he begins to thrust, his flavour staining your taste-buds immediately as pre leaks from his massive [manly-penis].[otherwise]The [M] slides his [manly-penis] through your gaping lips. You emit a muffled grunt as he begins to thrust, quiet *shlicking* sounds reaching your ears as his sticky precum lubricates your plastic hole.[end if][or]Your eyes widen with shame and excitement as the [M] slides his [manly-penis] through your [if there is a worn latex hood]gag and into your mouth, the pool of drool that had accumulated at the bottom of your maw coming in more than handy for this situation. It isn't long before your spit is coating his ebony [manly-penis], making it shine like a new penny, which in turn makes him crack a smile.[otherwise]soft plastic lips and into your mouth, the subtle warmth of his massive schlong making you wish you had a tongue to feel it with.[end if][at random]";
				otherwise:
					say "[one of]Your eyes roll back in your head as the [M] slides his [manly-penis] through your [if there is a worn latex hood]gag[otherwise]soft plastic lips[end if] and into your mouth, a slutty little moan escaping your gaping maw as he starts to pick up the pace, his hips driving in and out of you with reckless abandon.[or][if there is a worn latex hood]The [M] slides his [manly-penis] through your gag as drool starts flowing free, your lips unable to stop the flow thanks to the ring keeping them wide open. You moan like a whore in heat as he begins to piston his hips against your face, his thick [manly-penis] quickly dripping pre like a leaky faucet down against your greedy tongue as it bats up against his [manly-penis].[otherwise]The [M] slides his [manly-penis] into your mouth, immediately beginning to piston his hips against your face, leaking so much precum that you begin to hear wet squelching noises as his hips move back and forth. You desperately crane your neck, attempting to cradle his massive meat with your immobile lips, and moaning like the obedient little fucktoy you are.[end if][at random]";
		otherwise:
			if a random number between 1 and 3 is 1:
				say "[one of][if the oral sex addiction of the player < 4]The [M] barks out a hearty laugh as his large palm comes to rest on your chin, his thumb and fingers pushing in against your cheeks to force your lips to pucker. Before long his [manly-penis] is drooling pre inches from your face, which causes you to stare daggers up at him. With a thrust of his hips he slides in and grunts happily, slowly beginning to fuck your mouth with soft grunts and groans, a hand soon coming to rest on the back of your head to help steady himself.[otherwise if the oral sex addiction of the player < 7]The [M] takes a second to stroke his [manly-penis], getting himself harder with every passing second. You can't help but stare at his [manly-penis] with slightly widened, eager eyes, your mouth opening quickly without input from your brain, and before you can think to stop you're already muffling out a sigh, sinking down into his lap.[otherwise]The [M] grabs the back of your head before you can react, grabbing a fistful of hair to better help steer your skull as he sinks his hips a bit to better align his [manly-penis] with your pouty lips. He cracks off a chuckle as you open your mouth up to accept his length, leaning forward to engulf more and more of his [manly-penis].[end if][or][if the oral sex addiction of the player < 4]The [M] grabs at your locks with one of his strong, sizeable hands, grinning ear to ear as he stares down at you. You open your mouth to insult him, but he immediately inserts his [manly-penis] and begins to thrust, sliding his ebony [manly-penis] over your tongue and forcefully down your throat, forcing you to gag slightly in surprise.[otherwise if the oral sex addiction of the player < 6]The [M] spreads his stance and lowers his hips enough to align his [manly-penis] with your mouth, a deviant smile creeping over his visage. It's obvious what he wants at this point, and with only the slightest bit of hesitance you lean in to wrap your lips around his [manly-penis], his soft groan a clear indicator of his enjoyment.[otherwise]The [M] snaps his fingers to steady your slightly absent mind on his hand, a hand that quickly points to your mouth. Before you can even think of what to do your body reacts for you, your tongue snaking out to hang from your lips, a steady stream of drool starting to leak from your maw. His [manly-penis] pulses in excitement as he slides in, pre seeping out to glaze your tongue, much to your delight.[end if][in random order]";
			otherwise if a random number between 1 and 2 is 1:
				say "[one of][if the oral sex addiction of the player < 3]The [M] places a palm on your forehead to tilt your head back. You stare daggers back up at him as he strokes himself in front of you. Sneering, you feel him slide his [manly-penis] between your lips with a satisfied sigh of pleasure. He releases your head and begins to idly buck his hips against you, much to your displeasure. You stare at him lividly as he continues to thrust.[otherwise if the oral sex addiction of the player < 6]The [M] takes a second to hover over you, positioning his hips down enough to get on level with your head. With a snap of his fingers, he gets your attention, then points at your mouth. You part your lips and loll out your tongue, trying your best not to make eye-contact with him as his [manly-penis] slides over your tongue, pouring thick beads of pre along your taste-buds as he sinks in. As he steadily begins to thrust, he grabs the back of your head, guiding you up and down his [manly-penis] with a cocky smirk.[otherwise]The [M] grins as you lean forward, your hand reaching up to pump his [manly-penis] a few more times to get him fully erect. Your eyes meet as he places a hand on your shoulder, letting you lunge forward to wrap your lips around his [manly-penis] with a happy moan. He grunts as you bob greedily atop the first few inches of his [manly-penis], sucking to your heart's content. You gag a bit when he slides down your throat, although you can't help but to enjoy yourself as you start fellating him a bit more aggressively.[end if][in random order]";
			otherwise:
				say "[if the oral sex addiction of the player < 4]The [M] strokes himself a few times, his free handing pointing at your mouth. You spit at his feet without a second thought. [first custom style]'Go fuck yourself assh-'[roman type] he cuts you off by immediately shoving his [manly-penis] in your mouth with a little grin dancing on his lips. Your cheeks flush with embarrassment as you glare up at him, cringing a bit as his pre pours down to coat your tongue and pool in your mouth, mixing with your saliva.[otherwise if the oral sex addiction of the player < 6 and the delicateness of the player > 9]The [M] begins stroking himself again in no time, eyes peering down at your kneeling form with a bit of hunger. His gaze is so captivating that you barely notice him snap his fingers to grab your attention, the third snap finally breaking through to snap you from your trance. You slowly and fearfully open your mouth, not wishing to cause trouble with such a muscled man, and shudder as his [manly-penis] slides past your lips and over your tongue. Each inch forces the slightest of cringes out of you, but before long you find yourself getting strangely used to the feel of a [manly-penis] in your mouth.[otherwise if the oral sex addiction of the player < 7]The [M] places his hand on your shoulder, pressing the head of his [manly-penis] against your lips with the other. You find yourself obediently opening your mouth to allow him inside, softly moaning as his flavour rocks your tongue. He's surprisingly tasty, you think as you slowly begin to bob along his [manly-penis], just a bit shocked at what you're starting to become.[otherwise]The [M] puts his hand on the back of your head, pulling your skull close to his lap and in turn his [manly-penis]. It throbs in front of you for a moment before you submissively part your lips, moaning softly as his [manly-penis] slides into your mouth. As you begin to slide up and down his [manly-penis], he emits his own little groans and moans of clear pleasure, his hips gently bucking back against your movements. [speech style of M]'Mmm... It's been a while...'[roman type] he says as your tongue wriggles up against his [manly-penis], his taste rooting deeply in your mouth.[end if]";
	otherwise:
		say "The [M] sees that you are already occupied and loses interest.";
		send M home.

To say ShopkeeperPresentedFaceFlav of (M - a monster):
	say "[if the oral sex addiction of the player < 4]The [M] cracks a grin as he grabs your chin in his palm, squeezing at your cheeks with his thumb and fingers to make you pucker up for him. He places his [manly-penis] on your lips without pause and slowly starts to slide into your mouth. Such a shameful act has forced a good blush on your face, the [M] grinning even wider as he notices.[otherwise if the oral sex addiction of the player < 6]The [M] grabs the top of your head with one of his large hands, some of your hair getting tied up in his digits. His rather sizeable [manly-penis] throbs in front of you expectantly for a moment, the [M] nodding down at it as you glance up at him. With a bit of hesitance, you lean in and wrap your lips around his [manly-penis], slowly beginning to bob along his lap.[otherwise]The [M] presents his [manly-penis] in front of you, his girthy [manly-penis] drooling precum at quite a pleasant pace. You don't even give him a chance to order you to suck before lunging forward, licking a particularly thick bead of pre from his tip before gluing your cocksuckers on his [manly-penis]. You moan like a slut as you eagerly begin to slide up and down, drool running from the corners of your lips and down your chin.[end if]".

To compute facial sex of (M - a shopkeeper):
	if the oral sex addiction of the player > 6, arouse 200;
	if the sex-length of M is 1:
		[#####Selkie: a special sex doll bit here too would be a small improvement: especially for any bits related to breathing]
		say "[one of]The [M] lets out a grunt as he thrusts steadily, the hand on your head only tightening its grip. Drool starts to dribble from your lips as he continues to violate your throat![or]The [M] takes a moment to slow your head, savouring every little buck of his hips as he stares down at you with obvious hunger. He lets out a more guttural moan as he forces your nose to his pubis, his [manly-penis] twitching with pride as it rests in your gullet.[or]The [M]'s grip never wavers as he continues to rut at your face, excess saliva starting to gush from your cheeks lewdly to splatter his lap. As time goes on, his rolling hips speed up, starting to complement the bobbing of your head.[or]The [M] gasps as he bobs your head on his first few inches, your lips growing thin as they glide over his [manly-penis]. But, no matter how much he seems to be enjoying himself, his grip never loosens on your skull.[or]The [M] guides your head up and down his [manly-penis] emitting satisfied grunts and groans all along the way. Your hair bobs along with your head and it's starting to get hard to keep out of your face.[or]The [M] can't help but groan as he slams your head down against his lap, roughly ramming his [manly-penis] down your throat. He holds your head still as his hips make tiny, muted rolls forward to stretch out your jaw.[or]The [M] doesn't seem concerned with your lack of air as he pins you down against his pelvis, soft groans fleeing his throat as he rests in yours. It isn't until your face is a flushed out pale mess that he finally pulls your head off his knob, forcing a desperate gasp from your lips. You catch at least some air before he pushes his [manly-penis] back into your mouth.[or]Each little thrust of his hips is met with a wet sloshing noise sounding from your drool-filled maw. Clearly the [M] is pleased with this, as he teases you about it with little mock-sloshes of his own mouth.[or]The [M]'s grip on your head tightens for a moment as he lets out a particularly sharp gasp, throwing his head back for a second to give your head a few more good ruts. He jerks his hips back to pop his [manly-penis] out of your mouth, stroking it a few times to evenly spread out the drool you left on it, only to push it back in with a wide grin.[in random order]";
		say "[if the semen taste addiction of the player < 7][first custom style]Uh-oh, I think he's about to cum![otherwise if the semen taste addiction of the player < 12][variable custom style]He's gonna cum really soon![otherwise][second custom style]He's gonna jizz soon! I'm gonna taste it![end if][roman type]";
		decrease the sex-length of M by 1;
	otherwise:
		if the reaction of the player is 0:
			if a random number between 1 and 2 is 1, say "[one of]You try to pull your head off his [manly-penis] but his grip only tightens more! As if angered by your resistance, he shoves your skull down again, spearing your throat with his overly large [manly-penis]![or]You pull up, but he makes sure to shove you right back down, shaking his head in disappointment. He pins your nose against his pubis as he begins counting. [speech style of M]'One... Two... Three...'[roman type] It isn't until he reaches ten that he pulls you back up and off his black [manly-penis] with a hearty chuckle, something you find hard to hear over your heavy gasps. He pulls your face back down his [manly-penis] and continues forcing you to bob.[or]You grunt and try your best to pull back, but his large hands and obvious muscles are more than enough to keep you held down. As if punishing you, he slams your head against his lap, sinking his [manly-penis] down your throat, forcing your eyes to roll back in their sockets. A moment later he yanks you back, using his free hand to stroke all of your throat-slime along his [manly-penis].[or]You claw at his hands, but it's obvious he doesn't care. Lucky for you he doesn't decide that your weak bats at his mitts are cause for punishment. He does, however, force you to bob just a bit faster as a lighter version of punishment for your retaliation.[or]You fight his grip as much as you can, but in the end, his [manly-penis] stays in your mouth and you keep sucking it. His grip tightens as he pulls his hips back, keeping your head at his tip, before thrusting forward aggressively, bottoming out in your throat, his balls slapping your chin. [speech style of M]'Fuck, girl, stop fighting it!'[roman type][or]You try to pull his hands away, but come on, he's much too strong for you. Every time you try and get a grip on his mitts, he grunts and thrusts your head down particularly hard, your cheeks starting to turn red from the heat of his lap.[or]You push on his legs for leverage, but this only makes him growl in anger. He leans over you for a moment as his [manly-penis] slides particularly deep, your throat stretching quite wide to accommodate his rather large [manly-penis]. You struggle for air as he maintains the position for a good while, before finally pulling back and out of your mouth, making you gasp for air.[in random order]";
			otherwise say "[one of]The [M] seems determined to get himself off with or without your help! As if it weren't obvious already from the almost desperate thrusts against your head he's making, not to mention the pleasured grunts and moans occasionally fleeing his lips.[or]It seems like the [M] doesn't care about your struggles as much as he lets on, his thrusts only gaining speed. You wonder if he's just doing this to spite you at this point.[or]The [M] doesn't care about your protests, and it seems his [manly-penis] is going to fuck your face whether you like it or not![or]The [M] slides in much deeper than usual as he lets out a shivering groan, his [manly-penis] throbbing happily inside you. Even with a pale look on your face, it seems he doesn't care if you can breath or not![or]The [M] cracks a grin as he pulls back, his [manly-penis] sliding out of your mouth, spit ropes connecting his [manly-penis] to your mouth. He takes a second to slap your cheeks with his spit-slicked [manly-penis] to calm your protests before sliding right back in.[or]The [M] seems intent on getting off![or][if the oral sex addiction of the player < 3]You stay still, not wanting to help the [M] get off in any way. It's already humiliating enough being used as a [manly-penis] sleeve without you willingly sucking or tonguing at his [manly-penis].[otherwise if the oral sex addiction of the player < 7]You stay completely still, knowing that if you willingly pleasure him you might like it and not stop. It doesn't help that he's already much larger than the other guards you've seen, and when it comes to [manly-penis]s, size matters- Or at least you've been told![otherwise]You almost giggle as you stop pleasing him, batting your eyelashes up at him in hopes that he might get the signal that you really deserve *punishment* for slacking off.[end if][in random order]";
			if a random number between 1 and 2 is 1 or the lips of face > 2, decrease the sex-length of M by 1;
		otherwise:
			say "[one of]The [M] lets out a grunt as he thrusts steadily, the hand on your head only tightening its grip. Drool starts to dribble from your lips as he continues to violate your throat![or]The [M] takes a moment to slow your head, savouring every little buck of his hips as he stares down at you with obvious hunger. He lets out a more guttural moan as he forces your nose to his pubis, his [manly-penis] twitching with pride as it rests in your gullet.[or]The [M]'s grip never wavers as he continues to rut at your face, excess saliva starting to gush from your cheeks lewdly to splatter his lap. As time goes on, his rolling hips speed up, starting to complement the bobbing of your head.[or]The [M] gasps as he bobs your head on his first few inches, your lips growing thin as they glide over his [manly-penis]. But, no matter how much he seems to be enjoying himself, his grip never loosens on your skull.[or]The [M] guides your head up and down his [manly-penis] emitting satisfied grunts and groans all along the way. Your hair bobs along with your head and it's starting to get hard to keep out of your face.[or]The [M] can't help but groan as he slams your head down against his lap, roughly ramming his [manly-penis] down your throat. He holds your head still as his hips make tiny, muted rolls forward to stretch out your jaw.[or]The [M] doesn't seem concerned with your lack of air as he pins you down against his pelvis, soft groans fleeing his throat as he rests in yours. It isn't until your face is a flushed out pale mess that he finally pulls your head off his knob, forcing a desperate gasp from your lips. You catch at least some air before he pushes his [manly-penis] back into your mouth.[or]Each little thrust of his hips is met with a wet sloshing noise sounding from your drool-filled maw. Clearly the [M] is pleased with this, as he teases you about it with little mock-sloshes of his own mouth.[or]The [M]'s grip on your head tightens for a moment as he lets out a particularly sharp gasp, throwing his head back for a second to give your head a few more good ruts. He jerks his hips back to pop his [manly-penis] out of your mouth, stroking it a few times to evenly spread out the drool you left on it, only to push it back in with a wide grin.[in random order]";
			decrease the sex-length of M by 1.

To say FacialBrokenFree of (M - a shopkeeper):
	say "[one of]As the [M] gets caught up in his impending orgasm, you quickly make your move at just the right time, popping off his [manly-penis] quick enough to free yourself![or]The [M] shivers with delight as he nears his orgasm, both of his hands soon off your form and focusing on his [manly-penis] with quick strokes. You take advantage of the slight distraction by pulling away and off his [manly-penis]. You free yourself with a gasp![or]You struggle valiantly as he lets out a particularly loud moan, finally pulling free from his grasp. You freed yourself![or]Quickly pushing against his legs you manage to pull your head away from his lap, gasping for air as he begins stroking himself to finish![in random order]".

To say SuccessfulFacialDodge of (M - a shopkeeper):
	say "[one of]The [M] lets out a booming moan as he tries to grab at you, unable to really get a grip before he fires off rope after thick rope of [semen], all if it completely missing you and sailing over your shoulder, forming a puddle on the floor behind you. He struggles for a second to regain composure, as do you.[or]The [M] huffs a bit as he flinches a few times, launching jet after thick jet of [semen] onto the floor in front of you both. You can't help but take your eyes from him as you sit, paralysed in fear.[or]The [M] stumbles a bit as you jerk away, quickly diving out of the way as his [semen] launches past your body to form a thick, sizeable puddle on the floor behind you. In a small fit of panic, you try to crawl away, but you're too late.[or]All that struggling seems to have paid off! You pull yourself out of his lap just in time for his [semen] to rocket from his tip, thick wads of [semen] crashing on the floor moments later as he shivers in place.[or]You pull back from his [manly-penis] just in time! As soon as your face is out of splash range, he groans and clenches up. You can hear him cursing to himself as a thick gush of [semen] flies from his tip, launching a few good feet before forming a sizeable puddle on the floor.[or]The [M] blurts out a happy moan as he nears his orgasm. Luckily, you manage to free yourself just in time! You dive away from the large [M] before any of his gooey, off-white [semen] can hit you or your face![or][if the semen addiction of the player < 8]The [M] tries to step forward and grab your shoulder, but he's already too far gone to stop now! You smile triumphantly as his [semen] jets out of his [manly-penis] onto the floor with subdued splashes.[otherwise if the semen addiction of the player < 13]The [M] throws his arm out to grab at you again, but you manage to get just out of his reach! You almost feel a little regret as the [M]'s black [manly-penis] shoots out rope after rope of [semen] directly onto the floor. You try to push back thoughts of how much nicer it would've been to have that thick [semen] coat your face.[otherwise]The [M] groans as he throws his arm out to grab you, but his sudden orgasm causes him to clench up. You watch in awe as his [manly-penis] pours [semen] onto the floor. You really have to restrain yourself from lunging forward and licking that [tasted-semen] up off the floor as he readjusts, your mouth still watering just a bit from the head you just gave him.[end if][in random order]".

To say FailedFacialDodge of (M - a shopkeeper):
	if a random number between 1 and 2 is 1, say "[one of]But it's too late to escape his line of fire! The [M] unleashes a guttural groan as rope after thick rope of hot [semen] splatters across your visage, painting you in an off-white. You flinch every time one of those ropes connects with your face.[or]Unfortunately, the [M] pulls you back in no time, keeping a solid grip on your head as he ejaculates, forcing you to catch wad after thick wad of [semen] on your face, the heat of his load soon making you blush.[or]The [M] busts his nut anyway! You don't act quick enough to dodge the sudden launch of [semen] at your face! The [M] groans as he continues stroking himself, forcing a sizeable amount of [semen] out of his [manly-penis]. You gasp in shock, flinching as every rope strikes you.[or]The [M] groans, far past the point of no return. Before you can even think to move he's already cumming! His gooey [semen] coats your visage in a thick layer as he strokes himself in a lusty haze, his hand soon grabbing your head to pull it in close for a few good ropes over your lips. Your cheeks burn red as the heat of his load sinks in.[or]But you're just not fast enough to escape! The [M] bites his lip as he grabs your head again, floating his [manly-penis] in front of your nose for a moment before unleashing a torrent of [semen] with a lewd groan of pleasure. His thick ropes drape over your eyebrows and lips as he pumps out quite the ample load, something that makes you shiver substantially.[or]With a sharp gasp, you manager to get yourself caught again! The [M] grabs you before you have a chance to get far enough away, and holds you in place to accept his hot and sticky load, each shot from the end of his [manly-penis] making you clench your face up.[or][if the semen addiction of the player < 7]However, you just can't get away in time. The [M] laughs as you struggle in vain, his large hand stroking away at his [manly-penis] as he stares down at you. Only moments later does he finally cum, his [semen] shooting out in gooey strands to coat your face, ropes of the stuff clinging to your skin and heating it up, a massive blush burning at your cheeks.[otherwise if the semen addiction of the player < 12]The [M] has no problem catching you again, however, and you can't really bring yourself to put up a good fight. You give a few lazy tugs at his hand before sighing and just accepting your fate, closing your eyes just in time to feel a few warm ropes of hot [semen] catch against your face. You barely flinch as you accept the facial.[otherwise]But it's too late! You  can't escape quick enough and as a result he's able to grab you again with ease. You can't help but giggle stupidly as you look up at him, batting your lashes just in time for him to paint your face with his gooey treat! Your giggle continues for quite some time as he unloads, his thick [semen] sticking to your skin, much to your delight.[end if][in random order]";
	otherwise say "[one of][if the semen addiction of the player < 7]You try your best to dodge out of the way, but it's too late. By the time you've moved your head, he's readjusted and pointed his large, ebony [manly-penis] at your face again. You clench up and try not to breath through your nose as he paints your visage with his off-white [semen], the thick substance easily sticking on your face. You blush uncontrollably in humiliation.[otherwise if the semen addiction of the player < 12]Sadly, you just can't find the will to get out of the way as the [M] takes hold of your head once more, quickly forcing you to take a hot, sticky facial. You barely cringe as wad after wad of his creamy [semen] paints your face, a small blush starting to surface at your cheeks.[otherwise]You let out a fake gasp as he grabs you again, shooting a wink up at the [M] as he takes hold of your skull once more and puts it right in front of his [manly-penis] with a wide grin. You giggle stupidly as he coats your cheeks, mouth, forehead, and nose with his hot treat.[end if][or][if the semen addiction of the player < 9]You try your best to dodge out of the way, but it's too late. By the time you've moved your head, he's readjusted and pointed his large, ebony [manly-penis] at your face again. You clench up and try not to breath through your nose as he paints your visage with his off-white [semen], the thick substance easily sticking on your face. You blush uncontrollably in humiliation.[otherwise if the semen addiction of the player < 13]You know what's coming but can't get away in time to avoid it! You're far to slow to move out of the way in time, and by the time you can even think to do so the [M] already has a firm grip on your head again. There's nothing you can do to stop the sudden crash of hot [semen] against your face. You gasp in delight as he paints you with rope after rope of his [tasted-semen].[otherwise]You giggly stupidly as you continue to stare at his [manly-penis], completely captivated by how huge it is! You can't even think about anything else at the moment, and you giggle again as it comes closer, the [M] stepping in to grab your head again with one of his strong hands. You tilt your head back to provide a better canvas for him to paint, something he clearly appreciates given the big smirk resting on his lips. With a sultry lick of your lips, you close your eyes and accept your fate, something that comes fairly quick! You smile as you feel his hot ropes cling to your skin, the [M] groaning above as he feverishly masturbates in front of you, coaxing out quite a few good ropes from his [manly-penis] before letting go of you and stepping back.[end if][in random order]".

Definition: A shopkeeper (called M) is willing to bukkake:
	if the class of the player is living sex doll, decide yes;
	if the player is a blowjob slut, decide no;
	if a random number between 1 and 2 is 1, decide yes;
	decide no.

To say UnavoidedFacial of (M - a shopkeeper):
	if the class of the player is living sex doll:
		say "The [M]'s mighty staff suddenly leaves your O-shaped suction-hole with a cartoonish rubber squeak.  One hand clasps you behind your slender neck, holding you helplessly still while his other hand starts jerking with crazy speed and aiming his thick firehose at your face.  There's nothing you can do as the bulbous end pulses and you get a close-up view as jet after jet explodes out all over your face, each spurt sounding exactly like water striking balloon-tight rubber.";
		say "[speech style of M]'Man, that was the best one yet! Your muffled squeals really add something to the experience.  I've gotta convince them to let me add you to my product line.  We could give demonstrations to potential customers, doll-face!'[roman type][line break]";
		say "He leers at you, and you wonder whether he might decide to keep you here! [variable custom style]Then again, would that be so bad?[roman type]  Part of you considers the possibility of hanging around, maybe poking him again?  After all, you have other orifices your new friend could play with.[line break]";
	otherwise:
		if a random number between 1 and 2 is 1, say "[one of]The [M] pulls your head off his ebony [manly-penis] with a gasp, one of his rather large palms coming down to stroke at his length. It's not long before the [M] goes over the edge, shot after shot of his creamy [semen] shooting out to strike your face, the warmth of it all making you cringe uncomfortably.[or]The [M] shoves you off his lap, gasping, as he quickly moves a hand down to stroke at his sizeable [manly-penis]. Before long his [semen] is launching forward to splatter your visage, each jet bigger than the last![or]Finally reaching his peak, the [M] releases his orgasm with a rather loud groan, bending forward just a tad as his mind focuses on release. And release he does, pearly jets of [semen] shooting from his tip to splatter along your face. You cringe just a bit as each rope connects.[or]The [M] withdraws with a hiss, gritting his teeth and tensing up above you. You barely have time to close your eyes before you're hit with his hot load. A shiver shoots up your spine as you sit there and take it, paralysed by fear as to what just happened.[or]Pulling out of your mouth, the [M] keeps a hand at the back of your neck to keep you steady. Your eyes widen just as you see white start to jet from his [manly-penis]'s head and fly at you. Thankfully you're able to get your eyes closed before his [semen] finds its new home on your face, clinging to your skin as it collects on the surface.[or]The [M] slides out of your maw with a pull of his hips, quickly grabbing his [manly-penis] and giving it a few frantic strokes. His free hand goes back to grip your head, forcing your face to tilt upwards for a better angle to catch [semen] with. And catch you do. You shut your eyes tight as he moans, the [M] releasing a torrent of thick [semen] upon your face.[or][if the semen addiction of the player < 7]The [M] lets loose with a deep groan, pulling his [manly-penis] out of your mouth and quickly bringing a hand down to stroke at it. You gasp quite audibly and cringe as he paints your face with volley after volley of thick, smelly [semen].[otherwise if the semen addiction of the player < 12]The [M] lets loose with a deep groan, pulling his [manly-penis] out of your mouth and quickly bringing a hand down to stroke at it. You shiver visibly and quickly shut your eyes as he shoots rope after rope of creamy [semen] onto your face, breathing a sigh of relief as he finishes with the sizeable orgasm.[otherwise]The [M] lets loose with a deep groan, pulling his [manly-penis] out of your mouth and quickly bringing a hand down to stroke at it, your eyes locked on his length for a moment before you close them and happily lean forward, giving him your face as a canvas for his oncoming orgasm. As the first ropes of [semen] strike your face, you shiver and moan, happily accepting his facial. It isn't until quite a bit later that he finishes, wiping the last dribble of [semen] on your cheek with a chuckle.[end if][in random order]";
		otherwise say "[one of][if the semen addiction of the player < 7]The [M] frantically withdraws from your lips with a soft *pop*, leaning in to position his [manly-penis] over your face. You shudder and cringe as he pours rope after thick rope of smelly [semen] over your visage.[otherwise if the semen addiction of the player < 12]The [M] frantically withdraws from your lips with a moderately loud *pop*, your eyes struggling to break their gaze from his throbbing [manly-penis]. He lets out a few hefty grunts as he strokes himself in front of you, giving a good warning that his orgasm is quite close. You barely have time to close your eyes before his launches his load, his gooey [semen] finding its new home on your visage. Volley after volley of [semen] crashes against your face and before long the fat, creamy substance is dripping down your cheeks and forehead in thick clumps.[otherwise]The [M] frantically withdraws from your lips with quite the loud *pop*, much to your dismay. You quickly smile again as you notice his throbbing [manly-penis] and the frantic stroking of it, your eyes looking back up to lock gazes with his. Without complaint, you stick out your tongue and close your eyes, making a cute little [variable custom style]'Ahhh...'[roman type] as he ejaculates, those thick and chunky ropes of [semen] draping all over your features in no time.[end if][or][if the semen addiction of the player < 8]The [M] only gives a grunt and a shove of your head off his lap before his [manly-penis] erupts huge ropes of [semen]. You close your mouth just in time before those thick volleys of gooey [semen] splatter your face and stick to your skin.[otherwise if the semen addiction of the player < 12]The [M] only gives a grunt and a shove of your head off his lap before his [manly-penis] erupts huge ropes of [semen]. He doesn't give you much time to react, at least that's what you tell yourself as you realize your mouth is still wide open as his [semen] drapes over your face, clinging against it like glue.[otherwise]The [M] only gives a grunt and a shove of your head off his lap before his [manly-penis] erupts huge ropes of [semen]. You manage to get your eyes closed fast enough to stop him from blinding you as his thick, gooey [semen] splatters across your skin. You can't help but shiver with delight as the heat from his [semen] rests on your face, the raunchy smell and acrid taste of his load only adding that extra bit of naughtiness that you enjoy so much.[end if][in random order]".

To say ResistedOralCreampie of (M - a shopkeeper):
	say "[one of]The [M] keeps a firm grip on your skull as his [tasted-semen] pours out to pool in your mouth, your eyes going wide as his acrid taste clings to your taste-buds.[or]The [M] makes sure you can't move your head as he slows his fucking of your mouth. You're completely helpless as he fills your mouth with an absurdly large amount of [tasted-semen], your cheeks puffing out and turning a bright shade of red in no time flat.[or]The [M] grunts a few times as he quickens his thrusts, his [manly-penis] soon tightening up, only to let loose with an explosion of [semen]. He fills your mouth with the [semen-adjective] taste of [semen], thin strands of drool still connecting his [manly-penis] to your lips as he slides his [manly-penis] out.[or]The [M] lets out a booming groan as he tightens his grip on your head, now stabilizing himself by using both hands on your skull. You try to resist but can't, his grip far too strong now, and before long his [tasted-semen] is being slung into your mouth. The sheer size of his orgasm leads you to believe he must've been pent up for days, and by the time he's finished and pulling out, your cheeks convex as if signalling your struggle to keep his load in your mouth.[or][if the semen taste addiction of the player < 9]The [M] pulls his hips back until only the tip of his [manly-penis] is nestled in your mouth before he lets loose. You muffle out a series of indignant noises as rope after rope of [tasted-semen] splatters your tongue. By the time he's finished, your cheeks are puffed out and you find yourself struggling to keep his entire load in your mouth at one time.[otherwise if the semen taste addiction of the player < 12]The [M] pulls his hips back until only the tip of his [manly-penis] is nestled in your mouth before he lets loose. You shiver in restrained delight as his thick, [tasted-semen] drapes across your tongue, his virile load quickly filling your mouth to excess, making your cheeks puff out.[otherwise]The [M] pulls his hips back until only the tip of his [manly-penis] is nestled in your mouth before he lets loose. You bat your tongue against his glans as he rockets forth rope after rope of [tasted-semen], a muffled and slutty moan rumbling out of your throat as he fills up your mouth. Your tongue rolls around the creamy treat as he pulls back, making sure you taste every last bit of his [tasted-semen].[end if][in random order]".

To say AutomaticSwallow of (M - a shopkeeper):
	say "[one of]You struggle for a moment, swallowing his surprisingly large load in a few gulps.[or]You struggle down his load with a few cringes, only realizing that you've done so moments after the fact.[or]You swallow it in a few gulps, blushing redder than a tomato after.[or]Without thinking, you swallow his virile, [tasted-semen] in a few gulps.[or]You're too thirsty to even object, and before you can even think for yourself, your body reacts first. It takes a few swallows and gulps to get all of his [tasted-semen] down your throat.[or]You can't stop yourself from gulping his thick load down, surprised it takes you more than one swallow to do so.[or][if the semen taste addiction of the player < 6]You know how much you want to spit, but for some odd reason you just can't! His slime slithers down your throat after a few gulps, leaving you to reflect on how horrible you've become.[otherwise if the semen taste addiction of the player < 10]Before you can object you're already gulping down his load, struggling a bit as the sheer size means you swallow more than once. You try to rationalize why you swallowed, insisting it was so you didn't have to get punished by the [M], but some small part of you knows otherwise.[otherwise]It's obvious you weren't looking for anything but spunk to drink, otherwise you wouldn't be in this situation. You're far too thirsty and his [tasted-semen] is just too much of a delight to pass up on~! You swallow a few times to let his treat run down your throat, feeling quite full after gulping down such a sizeable load.[end if][in random order]".

To say VoluntarySwallow of (M - a shopkeeper):
	say "[if the humiliation of the player < 15000][one of]You drop your eyes, swallowing his load along with what's left of your pride.[or]You swallow his load of your own free will, thoroughly humiliating yourself in the process.[or]Thoroughly humiliated, you swallow his load. At least nobody else will know what happened.[in random order][otherwise if the semen addiction of the player < 8][one of]You reluctantly swallow, interested in no part of his potential punishment.[or]You shiver as you allow the foul-tasting fluid to slide down your throat and into your stomach.[in random order][otherwise if the semen addiction of the player < 14][one of]You shiver as the gooey fluid slides down your throat and into your stomach, knowing it will feed your growing addiction.[or]You swallow his load after a brief moment of hesitation.[or]You swallow obediently, knowing full well that you didn't have to.[or]You swallow without complaint, feeling strangely proud you did it all in one gulp.[or]You swallow every last drop, insisting to yourself it's because you didn't want to make a mess.[in random order][otherwise][one of]You open wide so he can see the [tasted-semen] in your mouth before swallowing it with a smile.[or]You make a show of playing with it before swallowing it all in one gulp.[or]You obediently swallow, licking the leftovers off your lower lip.[or]You gulp it down like the greedy little slut you are.[or]You swallow like an obedient little slut.[in random order][end if]".

To say VoluntarySpit of (M - a shopkeeper):
	say "[if the semen taste addiction of the player < 8][one of]In a rather uppity way, you crinkle your nose and spit out his load, letting it form a puddle on the floor.[or]You spit his [semen] out and into a puddle on the floor as quickly as possible, using your teeth to scrape the taste off your tongue.[or]Even though you feel intimidated you manage to glare up at him as you let the [semen] dribble from your lips.[or]You shiver with an almost liquid spine as you gape your lips and let the [semen] pour from your mouth in thick, gooey clumps.[in random order][otherwise if the semen taste addiction of the player < 12][one of]You know he isn't going to be happy, but you just can't swallow. Avoiding his gaze, you look off to the side and let his thick [semen] dribble out of your mouth.[or]You hope that he won't be too mad as you let his [semen] slowly escape your mouth. You take occasional glances up at him as you do so, obviously regretting your actions as his sneer grows intense.[or]You lean to the side with a soft whimper leaving your throat as his [semen] spills from your lips to splatter on the floor below.[or]You spit it out, pushing uncomfortable thoughts of how satisfying it was to be face-fucked so hard to the back of your mind.[in random order][otherwise][one of]You take a second to lean in, lewdly pressing your [BreastDesc] together as his [semen] falls out of your mouth in thick clumps.[or]You reluctantly part with his [semen], letting it spill from your lips. You opening your mouth wide and roll your tongue around as if to ask him to replace it.[or]You can't help but look up at him as you defiantly spit his [semen] onto the floor, hoping it was enough to coax a punishment out of him.[or]You giggle stupidly as his [semen] gushes out of your mouth and onto the floor. Without thinking (as if you could at this point), you push your [BreastDesc] together and smile up at him, waiting for your punishment.[in random order][end if]".

To say DeepthroatCreampie of (M - a shopkeeper):
	if the class of the player is living sex doll:
		say "When one large hand grabs the hair at the back of your head, bunching it up into a rope handle that he uses to really hammer into your face hole, you kind of white out in pleasure as he uses you, finally jetting stream after stream of [semen] deep inside you, before finally pulling free with an embarrassingly-loud 'pop' as he breaks the seal of your eager lips.";
		say "[speech style of M]'Man!  That's the best model yet!  Those R&D guys know their stuff.  Maybe I should keep you here as my new stress-relief toy?'[roman type][line break]";
		say "But he releases you, and turns away, and for a moment you have the crazy idea of poking him, just, you know, kind of making the point that he shouldn't be just thinking of his own pleasure?  Right?";
	otherwise:
		if a random number between 1 and 2 is 1, say "[one of]The [M] doesn't even waver as he reaches his peak and shoves your head into his lap, his booming groan filling the room as his [tasted-semen] rockets down your throat, filling your belly quite nicely.[or]His [manly-penis] throbs without restraint as he shoves your nose into his pubis, burying his rather large [manly-penis] in your throat. It doesn't take much long after that before he's firing off volley after volley of hot [semen] down your oesophagus. [or]The [M] keeps your head pinned against his hips as he moans with obvious delight. Before long his creamy [semen] is being shot directly into your stomach, making you strain against his lap for air.[or]The [M] keeps your head still as he thrusts forward, his balls slapping your chin as he buries his [manly-penis] in your oesophagus. Thankfully he doesn't take long after to erupt, his thick [semen] rushing down your throat to fill your stomach quickly. He pulls out before long, making you cough and sputter, breaking the little strands of spit still connecting your lips to his length.[or]You barely have time to react before the [M] buries his [manly-penis] as far into your mouth as it will go, his balls soon resting on your chin and your nose digging against his pubis. Jet after jet of hot, thick [semen] rockets down your throat to greet your stomach, your cheeks soon burning red with embarrassment. He removes his length before long and lets out a hearty chuckle of victory, quickly losing interest again.[or]The [M] forces himself down your throat once more, groaning as he fills your belly with quite sizeable load. Wave after wave of [semen] rushes to fill you up, and before long you feel much more bloated than before, even as he removes his [manly-penis] and wipes the tip off on your cheek.[or]The [M] forces his [manly-penis] all the way to the hilt, letting out a booming groan of satisfaction in the process. With such a tight grip on your skull, you can do nothing but wait helplessly with your cheeks puffed out as he pumps shot after shot of disgustingly thick [semen] directly into your belly. After finishing, he pulls himself out and wipes his tip on your cheek, making sure you get every last bit of his [semen] in or on you.[in random order]";
		otherwise say "[one of][if the semen taste addiction of the player < 10]The [M] crams your head into his lap, gritting his teeth as he pumps his hips a few more times. You feel completely helpless as he shoots his [semen] directly into your stomach, his soft hissing the only thing you can focus on besides the massive pain in your throat.[otherwise if the semen taste addiction of the player < 13]The [M] crams your head into his lap, gritting his teeth as he pumps his hips a few more times. You obediently swallow as his [manly-penis] fires rope after rope of thick [semen] directly into your stomach. For some odd reason you feel slightly disappointed that you didn't get to taste it...[otherwise]The [M] crams your head into his lap, gritting his teeth as he pumps his hips a few more times. If your mouth wasn't so full you're sure you'd giggle as he fires volley after volley of thick, chunky [semen] directly down your throat, a coarse moan coming from you as you stay still to accept every drop with a struggled smile.[end if][or][if the semen taste addiction of the player < 9]The [M] forces his [manly-penis] further and further down your throat until his balls rest happily on your chin. Your eyes go wide as you realize just how long he really is, that thick, veiny [manly-penis] throbbing against your inner walls. With burning cheeks you accept his thick and virile load, shutting your eyes and trying to imagine yourself somewhere other than here right after.[otherwise if the semen taste addiction of the player < 12]The [M] forces his [manly-penis] further and further down your throat until his balls rest happily on your chin. Your eyelids fall halfway down as your pupils vibrate, your focus less on his lap and more on the pain in your throat. As he fills your stomach with his hot and creamy load, you can't help but feel somehow proud that you were able to coax so much out of him.[otherwise]The [M] forces his [manly-penis] further and further down your throat until his balls rest happily on your chin. Your eyes roll back in their sockets as tears stream down your cheeks, the heat of his lap finally starting to wear you down- not to mention the burning sensation in your throat. His sheer size is enough to make you emit muffled little moans of content as his soothing [semen] rushes down your throat to fill your belly, something that leaves you utterly satisfied and ready for more.[end if][in random order]".

To satisfy (M - a shopkeeper) for (N - a number) seconds:
	if M is interested:
		bore M for N seconds;
		FavourUp M;
		if M is in the location of the player, say "[SatisfiedFlav of M]";
	otherwise:
		bore M for N seconds;
	send M home. [This makes sure the shopkeeper always makes it back to the shop.]

To say SwallowDemand of (M - a shopkeeper):
	say "[speech style of M][one of]'You best swallow, [if the class of the player is princess]princess[otherwise][whore][end if], if you know what's good for you. Or else.'[or]'Be a good little slut and swallow my load. I've got a shop to run, stop stalling, I'm really not in the mood for your stupid games.'[or]'Mmnf, that was some good head. You better swallow to show how grateful you are... Or I might just take some of my pent up rage out on you.'[or]'I like a slut who knows her place, swallow and I won't have to remind you who's in charge.'[or]'I hope you learned your lesson, whore, but let's make it even more entertaining. Swallow, or else.'[or]'I don't know, [if M is objectifying the player]I still feel like abusing you[otherwise]I'm still mad at you[end if]. If you swallow, I might just forget about it.'[or]'You better start swallowing, whore, I don't have time for your games.'[or]'Do I look like I'm playing around? Swallow my load or face the consequences.'[in random order][roman type][line break]".

To say angry punishment insult of (M - a shopkeeper):
	if M is friendly-fucking, say "[speech style of M]Heh, you'll get over yourself soon enough.'[roman type][line break]";
	otherwise say "[speech style of M][one of]'Are you serious? Come here so I can punish you!'[or]'You little bitch! Get ready for punishment!'[or]'If you're gonna to be so ungrateful, I'm gonna to have to teach you a lesson!'[or]'You little slut! How dare you!?'[or]'Oh you're gonna to regret that you little whore!'[or]'I guess I'm gonna to have to punish you after all!'[in random order][roman type][line break]".

To say angry punishment accessory confiscation of (M - a shopkeeper):
	say "[speech style of M]'I'm gonna keep this for my own personal stash. Don't expect it back from me any time soon, [bitch].'".

To say angry punishment clothing destruction of (M - a shopkeeper) on (C - a clothing):
	say "[speech style of M]'[if C is nipple covering and the largeness of breasts > 3]Don't worry, with such good cocksucking skills I'm sure you'll find another soon!'[otherwise if C is ass covering]I hope you don't mind your fuckholes out in the open. I'm guessing not after that display!'[otherwise if the number of worn clothing > 1]Too bad, just buy another from my shop you fucking whore.[otherwise]Sluts don't need clothes![end if]".

To compute the flying player taunting of (M - a shopkeeper):
	if a random number from 1 to 6 is 1:
		say "The [M] hurls abuse at you.  [speech style of M]'[if M is objectifying the player][one of]When you've finished playing balloon with your body, I'm going to balloon your body with something else!'[or]You look like a whore, so I wouldn't be surprised if you actually enjoy what I'm about to do to you.'[or]I'm willing to wager you haven't taken a [manly-penis] this big.  Well it won't be long until you float down here, and then I'm going to leave you gaping.'[or]You're lucky, I like fucking fat chicks.  Fucking them until they cry no more and promise to never steal from me again, that is.'[in random order][otherwise][one of]You fucking thief!  You just wait until I get my hands on you!'[or]You're going to wish you never stole from my shop!'[or]In this land, criminals get prosecuted in a unique way.  I'm sure you'll enjoy it.'[or]Haha!  Your escape attempt was foiled by your own ridiculous body.  I can't wait until you come down here and I get to show you how we treat criminal scum in these parts.'[in random order][end if][roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.[end if]";
		humiliate 20.

To say LandingTaunt of (M - a shopkeeper):
	say "The [M] laughs at the sight of you.  [speech style of M]'[one of]About time!  Prepare yourself, criminal scum.[or]Life is full of ups and downs I guess.  Mainly downs for you from here on out, though.[in random order]'[roman type][line break]";
	humiliate 50.

To decide which number is the rounds of sex left of (M - a shopkeeper):
	if M is penetrating face, decide on the sex-length of M;
	if a random number between 1 and 4 is 1 and the reaction of the player is 1, decide on 0;
	if a random number between 1 and 3 is 1 and the reaction of the player is 2, decide on 0;
	decide on 1.

To send (M - a shopkeeper) home:
	now M is in Dungeon41;
	bore M.

To say CondomPieFlav of (M - a shopkeeper) in (F - a fuckhole):
	say "[speech style of M]'Fuck, this is so good!  [one of]I'm almost there, baby!'[or]Ooh Shit! Shii-iit! Here it comes!'[stopping][roman type]  The [M] buries his entire length inside of you, groaning with pleasure as the condom fills with his [semen]. You can feel it slowly bulging inside you, stretched thinner with every passing second as it struggles to contain his massive load, miraculously staying intact as he slowly pulls out and carefully peels it off without spilling a drop. [speech style of M]'[if the reaction of the player is 2 or the class of the player is cheerleader]Didn't actually mean to come inside you, but I guess it's ok since I was wearing a condom. [otherwise if the class of the player is living sex doll]Wow, you are one amazing sex doll.  I hope you come back here again soon!'[otherwise if there is a worn sissy black cock whore tattoo][one of]I bet you wish this load actually ended up inside you, eh slut? Come back[or]Come[stopping] back when you're ready for this black dick to breed you for real.'[otherwise if M is friendly-fucking]That was fucking amazing.  Feel free to ask me to do that again any time!'[otherwise]I hope you learned your lesson, otherwise I might have to do it without the condom sometime.'[end if][roman type][line break]".

To say CreampieFlav of (M - a shopkeeper) in (F - vagina):
	if the class of the player is living sex doll:[#####Selkie: could do much better here]
		say "You're vaguely aware you've been hearing some hot chick squealing and squeaking and grunting without words for a long, long time, and then finally fireworks are exploding through your mind and body. When next you come to your senses, you can feel [semen] dripping down your thighs and the [M] watching you with one eyebrow raised in smug amusement.";
		CumThighsUp 2;
	otherwise:
		say "[speech style of M]'Fuck, this is so good!  [one of]I haven't properly fucked anyone in way too long...'[or]Don't worry, I've still got lots of jizz left for you...'[stopping][roman type]  The [M] loses control over himself and orgasms, burying his entire length inside of you and releasing his hot load.  You can almost hear it flowing inside of you.  [speech style of M]'[if the reaction of the player is 2 or the class of the player is cheerleader]Sorry about that, to be fair I didn't mean to come inside you.  [otherwise if the class of the player is living sex doll]Wow, you are one amazing sex doll.  I hope you come back here again soon!'[otherwise if there is a worn sissy black cock whore tattoo][one of]Congratulations, you're at least good for one thing, getting bred by black cock.  What do you want, a gold star?  Now piss off and come[or]Come[stopping] back when you're ready for more black cock, slut.'[otherwise if M is friendly-fucking]That was fucking amazing.  Feel free to ask me to do that again any time!'[otherwise]I hope you learned your lesson.'[end if][roman type][line break]".

To say CreampieFlav of (M - a shopkeeper) in (F - asshole):
	if the class of the player is living sex doll:
		say "The [M]'s hands suddenly leave your hips, [if the player is female and vagina is not actually occupied]one descending onto your pussy to help you thrust your [AssDesc] back against its impaling shaft, while his other arm presses[otherwise]pressing[end if] across the small of your back so you're held immobile and utterly helpless as his hips start jack-hammering with insane speed. Moments later, you and he both explode in a huge crescendo of ecstasy, and you feel jet after jet after jet spurting inside you, with the characteristic sound of water spraying against balloon-tight rubber.";
		say "[speech style of M]'Whoah!'[roman type], he exclaims, pulling his dick free with a cartoonish rubber squeak, your puckered flange squee-geeing his dick clean of [semen]. [speech style of M]'Man, that was the best one yet! The sounds this new model makes really add something special to the experience.  I wonder if I could convince them to let me add you to my product line? I could even give demonstrations, to potential customers.  What say, [']doll[']?'[roman type][line break]";
		say "He leers at you, and you wonder whether he might [italic type]really[roman type] decide to keep you here! [variable custom style]Then again, would that be so bad?[roman type]  Part of you wonders about the possibility of hanging around, maybe poking him again?  After all, you have other orifices your new friend could play with.[line break]";
	otherwise:
		say "[speech style of M]'Fuck, this is so good!  [one of]I haven't properly fucked anyone in way too long...'[or]Don't worry, I've still got lots of jizz left for you...'[stopping][roman type]  The [M] loses control over himself and orgasms, burying his entire length inside of you and releasing his hot load.  You can almost hear it flowing inside of you.  [speech style of M]'[if the reaction of the player is 2 or the class of the player is cheerleader]Sorry about that, to be fair I didn't mean to come inside you.  [otherwise if the class of the player is living sex doll]Wow, you are one amazing sex doll.  I hope you come back here again soon!'[otherwise if there is a worn sissy black cock whore tattoo][one of]Congratulations, you're at least good for one thing, getting bred by black cock.  What do you want, a gold star?  Now piss off and come[or]Come[stopping] back when you're ready for more black cock, slut.'[otherwise if M is friendly-fucking]That was fucking amazing.  Feel free to ask me to do that again any time!'[otherwise]I hope you learned your lesson.'[end if][roman type][line break]".

To compute post climax effect of (M - a shopkeeper) in (F - a fuckhole):
	if M is friendly, say "[line break][speech style of M]'That was awesome! Feel free to return to the shop if you start feeling horny, I[']m down to fuck you anytime! ";
	otherwise say "[line break][unless M is objectifying the player]'Feel free to return to the shop, but don't you dare leave without paying again.'  [end if][roman type]The [M] pulls out and leaves you alone to recover.";
	compute happy reward of M;
	let T be a random off-stage interracial related tattoo;
	if T is drawable and there is a worn tattoo:
		summon T;
		say "Four large words appear on your chest in permanent black ink:";
		try examining T;
		say "[variable custom style]Holy shit.  [if the outrage of T is too humiliating]I have to keep this covered up.  There's no way I can let anyone see such a nasty tattoo.[end if][roman type][line break]";
	send M home.

To decide if (M - a shopkeeper) is willing to creampie (F - asshole):
	if the class of the player is cheerleader, decide yes;
	if the reaction of the player is 2:
		if the player is a butt slut and a random number between 1 and 2 is 1, decide yes;
		decide no;
	if the player is not a butt slut and a random number between 1 and 4 is 1, decide no;
	decide yes.

To decide if (M - a shopkeeper) is willing to creampie (F - vagina):
	if the reaction of the player is 2 or the class of the player is cheerleader:
		if the player is a pussy slut and a random number between 1 and 3 is 1, decide yes;
		decide no;
	if the player is not a pussy slut and a random number between 1 and 2 is 1, decide no;
	decide yes.
	

To say PullOutFlav of (M - a shopkeeper) in (F - a fuckhole):
	say "[speech style of M]'Since you've been so much fun, I'll let you off - I won't [if pregnancy fetish is 1 and M is penetrating vagina and the pregnancy of the player is 0]risk getting you pregnant[otherwise]come inside you[end if]!'[roman type]  The [M] suddenly pulls out and ejaculates over the stone floor.  [speech style of M]'I hope you learned your lesson though.'".

To compute fuckhole sex of (M - a shopkeeper):
	let F be a random fuckhole penetrated by M;
	if the class of the player is cheerleader:
		say "The [M] keeps using your [variable F].[if the reaction of the player is 2][speech style of M]'[one of]Haha, yes, more dirty talk like that, you cheerleader slut!'[or]Yeah, that's right, I'm the boss of you, you naughty minx!'[or]It's difficult to go softly when fucking such a hot cheerleader!'[cycling][roman type][line break][otherwise][one of][speech style of M]'I've always wanted to fuck a cheerleader!'[roman type][line break][or][stopping][end if]";
	otherwise if the reaction of the player is 0:
		say "The [M] keeps using your [variable F].  You try as hard as possible to resist, but there's no getting away[one of][or][or][or][or][or] It's almost like he can keep going forever, and is waiting until you finally give in before blowing his load[stopping]!  [unless the latex-transformation of the player > 2]You're getting more and more sore.[end if]";
	otherwise if the reaction of the player is 1:
		say "The [M] keeps using your [variable F].  [if the relevant sex addiction of M < 7]You try as hard as possible not to resist[otherwise if the relevant sex addiction of M < 10]You find it's easiest to just let it happen[otherwise]You relax and allow yourself to enjoy the sensation of his massive [manly-penis] ploughing in and out of your body[end if].";
	otherwise if the reaction of the player is 2:
		say "The [M] keeps using your [variable F], but gently.  [speech style of M]'Haha, now you're realising your place.  Go on, keep begging, I like it.'[roman type][line break]";
	if M is penetrating asshole, ruin asshole;
	otherwise ruin vagina.

To compute anal sex of (M - a shopkeeper):
	compute fuckhole sex of M.

To compute vaginal sex of (M - a shopkeeper):
	compute fuckhole sex of M.

To say FriendlyAssholePenetrationFlav of (M - a shopkeeper):
	say FriendlyFuckholePenetrationFlav of M.

To say FriendlyVaginaPenetrationFlav of (M - a shopkeeper):
	say FriendlyFuckholePenetrationFlav of M.

To say FriendlyFuckholePenetrationFlav of (M - a shopkeeper):
	say "The [M] [one of]growls powerfully[or]bends over and smells your hair[or]grips your hips tightly[or]roughly gropes your right breast[or]roughly tweaks your left nipple[or]repeatedly slaps your ass cheeks[at random] as he thrusts his [one of]massive [or]huge [or]thick [or][or][or][or][at random][manly-penis] in and out of your [if chosen-orifice of M is asshole][asshole][otherwise][vagina][end if].";

To compute default waiting of (M - a shopkeeper):
	say "[one of]The [M] waits patiently.[or][stopping]".

The monster fucked taunting rule of shopkeeper is usually the shopkeeper cockslaps the player rule.
This is the shopkeeper cockslaps the player rule:
	let M be current-monster;
	say "[if bukkake fetish is 1 and the semen coating of face is 0]The [M] takes this opportunity to smack your face with his [manly-penis].  After slapping each cheek a couple of times, he wipes some of his precum from the tip of his penis onto your face, in between your eyes.[otherwise]The [M] toys with your face with his [manly-penis], waiting for his turn.[end if]";
	if bukkake fetish is 1 and the semen coating of face < 8, CumFaceUp 1;
	rule succeeds.

The unique punishment rule of a shopkeeper is usually the shopkeeper reclaiming clothing rule.
This is the shopkeeper reclaiming clothing rule:
	let X be the number of held stolen clothing;
	if X > 0:
		say "[speech style of current-monster]'[if the number of dangerous royal guards in the location of the player > 1]Thank you for your help, officers[otherwise if the number of dangerous royal guards in the location of the player > 0]Thank you for your help, officer[otherwise]Oh you are in trouble now bitch[end if].  This bitch is going to get what's coming to her.  [if X > 1]I'll be taking these back!'[otherwise if X is 1]I'll be taking this back!'[end if][roman type][line break][if X > 1]The [current-monster] takes the stolen items from you.[otherwise if X is 1]The [current-monster] takes the [printed name of random stolen clothing] from you.[end if]";
		repeat with C running through held stolen clothing:
			now C is store;
			now C is in Dungeon41;
			dislodge C;
		decrease the health of current-monster by 7; [This is so he is not on full health and so won't do nice things]
		rule succeeds.

To say BreastsPenetrationFlav of (M - a shopkeeper):
	if the class of the player is living sex doll:
		say "He shakes his head. [speech style of M]'I just gotta try those beautiful balloons!'[roman type][line break]";
		say "The next moment, he shoves you down so your face presses into his chest while each hand grabs one of your [BreastDesc], and without any problem, trapping his engorged cock between then.  Moments later, he's thrusting you up and down and you feel his rod pistoning between your orbs, squeaking like a rubber toy. The vibration caused by the squeaking rubber seems to really be getting him off![line break][speech style of M]'Oh, yeah, baby, that's go-oo-ood!  Keep that up, little Momma!'[roman type][line break]";
		say "He sets up a rhythmic thrusting, each stroke of his making a squeaking sound, like it's a violin bow and your rubberised [BreastDesc] are the strings.  Squeak-squeak, SQUEAK-squeak, squeak-squeak... It's not your imagination, he really is using you to make a tune, and horrifyingly, the longer it runs, the more the vibrations of his thrusting tool saw between your boobies, the deeper the sense of pleasure runs through you, spreading out from your chest and down to your groin, and all of a sudden you're squealing and grunting like a hot chick off her face, and your girly grunts seem to be really inflaming his passions!";
	otherwise:
		say "The [M] forces [his of M] [manly-penis] in between your [ShortDesc of breasts]!".

To compute cleavage climax of (M - a shopkeeper):
	increase the raw sensitivity of breasts by 1;
	if the class of the player is living sex doll:
		say "He begins taunting you as he thrusts harder, and suddenly ropey gobs of [semen] are jetting up between your breasts, liberally coating your face and some splashing across your cleavage and onto the generous swell of your chest.";
		say "[speech style of M]'Not bad!'[roman type]  He grips the back of your neck and briefly, shockingly, and casually, thrusts his dick into your rounded mouth and uses your lips to scrape off the remaining juice from his rod, then releases you.[line break][speech style of M]'Yeah, this new model gets three thumbs up from me!'[roman type][line break]";
		CumFaceUp the girth of M;
	otherwise:
		say "[if the titfuck addiction of the player < 6]You lay still and let him thrust in and out of your [BreastDesc][otherwise]You use your hands to squeeze your [BreastDesc] together and rub them up and down his throbbing shaft[end if] until he climaxes, spraying his [semen] all over your tits.[line break]";
		if M is friendly, say "[speech style of M]'Unf, that was so good!  Personally, I reckon you should leave my cum on your [if breasts is exposed]clothes[otherwise]chest[end if] as a souvenir.'[roman type][line break]";
		otherwise say "[speech style of M]'Now wear that cum on your [if breasts is exposed]clothes[otherwise]chest[end if] as a reminder of your shame[unless M is objectifying the player]!  And next time, pay before leaving[end if]!'[roman type][line break]";
	CumTitsUp the girth of M;
	TimesFuckedUp M by 1;
	compute happy reward of M;
	send M home.

To say VaginaPenetrationFlav of (M - a shopkeeper):
	if the class of the player is living sex doll:
		say "The [M]'s fingers brush up and down your slick, pre-oiled pussy, and he shakes his head at how soft and plump and inflated those lips are. [speech style of M]'Oh, baby, now that looks fine.  I hope they made you deep enough: I wouldn't want to prick your balloon!'[roman type][line break]And without further ado, he slowly sheaths you over his throbbing dick, inch by inch.  [speech style of M]'Damn, girl, that's tight! That's no cheap-ass pussy they got there, the R&D boys must've strengthened the flubber cocktail, it's like you got real pussy-muscles holding on for dear life!'[roman type][line break]";
		say "Your mouth, if you could control it, would be stretched open in a shocked 'O' of stunned pleasure by the intense sensations ripping through you - and then you remember, that's exactly how you do look, right now![line break]";
		say "He walks across the room, taking his hands off you, but you're so tightly impaled on the huge throbbing length of meat thrust deep within you, that you stay stuck, your feet a few inches above the ground, and there's nothing you can do about it!";
		say "[speech style of M]'That's what I like to see: a pussy so hungry that she won't let go once she's clamped on, am I right?'[roman type][line break]You don't think you've ever felt so completely helpless and toy-like as your [BreastDesc] [BreastBounceDesc] as he waddles across the room, with you moving before him like the figurehead of a ship, but facing the wrong way.  He leers at you as he finally reaches the wall, pressing you against it and making your [ShortDesc of hips] spread slightly against the cold surface, but bracing you in place for what looks like it's going to be a truly epic screwing.";
		say "But instead of moving, he just stands there, grinning down at you, and if your doll-like expression could change from its surprised 'Oh my gosh!' expression, it would.  Because there's a peculiar heat building in your plastic pussy, and you can feel something down there tightening, squeezing and clenching around his cock like an internal hand you didn't know you had.  And each ratcheting increase of tension and pressure ups the pleasure you realise has been stealthily building inside you from his first thrust! You feel his cock grow even tighter and harder inside you, plugging you, and feel it twitch and throb in reaction, which forces another involuntary squeal from your throat.";
		say "He nods, like he expected all that to happen, and then his hand is bending down to your face, his eyes apparently hypnotised by your lush, puckered-open lips.  His mouth locks over your bright red lower lip, gently biting it in a way that has you terrified he might bite down hard enough to puncture you - and there where would you be? - and squealing into his mouth from the shivery thrill of his lips against yours.";
		say "[variable custom style]I'm kissing a man, and I'm a sex doll![roman type]  What would this little scene look like, if any of your friends were watching it?  [if the humiliation of the player < 22000]Oh, god, you'd want to die of the shame, except the pleasure from his impaling cock and his lips and tongue are sending you so crazy with delight and hungry yearnings for still more, that they dwarf the shame, making it seem insignificant.[end if]";
		say "And then he begins to thrust in earnest, manhandling your [BreastDesc], or releasing them briefly to squeeze your waist, or to grip and knead your [AssDesc]... and you just kind of lose it.";
	otherwise:
		say "The [M] forces [himself of M] into your [vagina]!". 

To say PresentAcceptanceFlav of (M - a shopkeeper):
	say "The [M] smirks at your request.  [speech style of M]'That's fine by me!'[roman type][line break]".

The shopkeeper jab rules is a rulebook.  The attack rules of a shopkeeper is usually the shopkeeper jab rules.

This is the shopkeeper jab rule:
	let M be current-monster;
	say "The [M] skilfully jabs at your weak points!  You feel your muscles quickly growing tired...";
	FatigueUp a random number between the difficulty of M and the buckle threshold of the player / 5.
The shopkeeper jab rule is listed in the shopkeeper jab rules.

To compute happy reward of (M - a shopkeeper):
	if M is friendly:
		let C be a random held store clothing;
		if C is clothing:
			if the favour of M - the aggro limit of M > a random number between 1 and the price of C:
				now C is normal;
				say "[speech style of M]'That was incredible! Go on, take the [C], it's yours.  And please do come again!'[roman type][line break]";
			otherwise:
				say "[speech style of M]'That was good, but the [C] is worth too much I'm afraid.  But feel free to try and earn more credit points again in the future!'[roman type][line break]";
		otherwise if the blue-balls of M <= 0:
			say "[speech style of M]'That was incredible!  [one of]In fact, I think I[']ll knock some off my prices just to make sure you give me another visit.'[or]Discount is still on, just so you know!'[stopping][roman type][line break]";
			if the blue-balls of M is 0, now the blue-balls of M is -1.

This is the shopkeeper punishes diaper rule:
	if there is a worn stolen diaper or there is a carried stolen diaper:
		compute diaper donating of current-monster;
		rule succeeds;
	otherwise if the player is diaper focused and there is a worn unsoiled diaper:
		compute diaper use of current-monster;
		rule succeeds.
The diaper punishment rule of a shopkeeper is usually the shopkeeper punishes diaper rule.

To compute diaper donating of (M - a shopkeeper):
	let D be a random worn stolen diaper;
	if D is diaper:
		say "[speech style of M]'Did you really think you could just get away with stealing my shit?  You're going to regret this.'[roman type]  The [M] kicks you hard in your side!  [variable custom style]Fuck![roman type][line break]";
	otherwise:
		now D is a random carried stolen diaper;
		if D is diaper:
			say "[speech style of M]'Did you really think you could just get away with stealing my shit?  You're going to regret this.  Here, if you are so desperate to be in diapers, let me help you out!'[roman type]";
			repeat with P running through worn pee covering clothing:
				if P is removable:
					say "The [M] brutally rips off your [P]!";
					destroy P;
				otherwise:
					say "The shopkeeper can't remove the [P]!  Please report this bug.";
			say "The [M] forces the [D] onto your body, and then begins spanking you roughly through the padding!  He is so strong that it still feels very painful.  [variable custom style][if the player is able to speak]'[end if]Ow ow ow ow owwwwww![if the player is able to speak]'[end if][roman type][line break]";
			now D is worn by the player;
		otherwise:
			say "Shopkeeper can't find a diaper to interact with.  Please report the bug along with as complete details as possible on what happened in the last few turns.";
	DelicateUp 1;
	say "It hurts so much that ";
	if the player is bursting:
		say "you begin to wet yourself.";
		now delayed urination is 1;
		try urinating;
	otherwise:
		say "a little bit of wee comes out, soiling your diaper.";
		increase the urine-soak of D by 1;
	say "[speech style of M]'How disgusting!  I can't sell this now.  Fuck!  Fine, you keep this one but I'd better not see you trying this again.'[roman type][line break]";
	repeat with Z running through stolen diapers held by the player:
		now Z is normal;
	if the number of held stolen clothing is 0:
		say "The [M], still angry but rapidly calming down, leaves you alone.";
		send M home.

To compute diaper use of (M - a shopkeeper):
	let D be a random worn diaper;
	if D is diaper:
		say "The [M] begins masturbating furiously.  [speech style of M]'Looks like you haven't used that diaper yet... let me help you get started!'[roman type][line break]Pulling the front of your [D] away from your waist, he points the tip of his cock inside your warm padding.  [speech style of M]'Ugh, yes.....'[roman type]  He shoots ropes and ropes directly onto your [genitals], where it starts to drip and soak into your padding.  He lets go of the waistband, and it snaps back into place.";
		say "[variable custom style][if the semen addiction of the player > 12 and the semen taste addiction of the player > the semen addiction of the player]Ooh it feels nice and warm, but I'd have preferred he'd let me drink it all![otherwise if the semen addiction of the player > 8]It feels so warm and comforting... I could get used to being used like this.[otherwise if the humiliation of the player < 18500]Somehow having my diaper used like this feels even more humiliating than when I'm used for sex.[otherwise]Oh gosh, it feels so hot and slimy.  And there's so much[one of].  I'm going to squelch as I move now[or], I could swear he's filled it even more than last time[stopping]...[end if][roman type][line break]";
		cumsoak the semen load of M on D;
		humiliate 400;
		say "The [M] seems satisfied and docile now, and leaves you alone to recover.";
	otherwise:
		say "Bug: the [M] can't find a diaper to use.  Please report the issue giving as much detail as you can about your fetish options and what led up to this event!";
	send M home.

Section 2 - DQ


shopkeeper-retrieves-stolen is a diaper punishment.  The priority of shopkeeper-retrieves-stolen is 5.
Definition: a shopkeeper-retrieves-stolen (called P) is appropriate:
	if current-monster is not shopkeeper, decide no;
	if there is held stolen clothing, decide yes;
	decide no.

To compute punishment of (P - shopkeeper-retrieves-stolen):
	if there is a held stolen diaper, compute diaper donating of current-monster;
	otherwise follow the the shopkeeper reclaiming clothing rule.

Definition: a shopkeeper (called M) is willing to spank:
	decide yes.

Definition: a shopkeeper (called M) is willing to deliver enemas:
	decide yes.

Definition: a shopkeeper (called M) is willing to confiscate:
	decide yes.

Definition: a shopkeeper (called M) is diaper disciplining:
	decide yes.

Definition: a shopkeeper (called M) is willing to change diapers:
	if there is stolen clothing, decide no;
	decide yes.

Definition: a shopkeeper (called M) is willing to donate diapers:
	decide yes.


		
Section 3 - Damage

To compute damage of (M - a shopkeeper):
	if the blue-balls of M < 0, now the blue-balls of M is 0;
	if the health of M > 0:
		if the sleep of noun is 0:
			if M is captive:
				say "[speech style of M]'Guards!  Guards!  It's an armed robbery!'[roman type][line break]";
				now M is interested;
				anger M;
				now M is released;
			otherwise:
				say DamageReaction (the health of M) of M;
				now M is interested;
				anger M;
		otherwise:
			anger M;
			now M is interested;
			now M is released;
			now the sleep of M is 0;
			say "He wakes up, and takes a fighting stance!";
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a shopkeeper):
	if N > (the maxhealth of M / 4):
		say "[one of]The [M] is clearly an experienced fighter, as [he of M] seems unaffected by[or]continues to ignore[stopping] the pain.";
	otherwise:
		say "The [M] recoils slightly. [big he of M] definitely felt that.".

To compute unique death of (M - a shopkeeper):
	say "He drops to his knees, defeated.  He then fades into nothingness, leaving behind a few valuable gems.";
	loot M;
	loot M;
	loot M;
	repeat with C running through on-stage store clothing:
		now C is normal;
	destroy M.
		
Part 4 - Conversation

Section 1 - Greetings

[The shopkeeper uses the default greeting and response functions]

To say FirstResponse of (M - a shopkeeper):
	if M is not in Dungeon41:
		say "[speech style of M]'We can talk when I get back to the shop.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]So, do you like anything you see?'[or]So, anything here you'd like to take home?'[or]Welcome to my shop. See anything you like?'[at random][roman type][line break]";
		if the bimbo of the player > 10:
			say "[one of]He grins, clearly aware that you are staring at his [manly-penis].[or]He gives you a knowing look, clearly aware that you are staring at his [manly-penis].[or]He chuckles, following your gaze to his [manly-penis].[or]He winks, clearly aware that your eyes are glued to his [manly-penis].[or]He follows your gawking stare and breaks into a grin.[at random]".

To say RepeatResponse of (M - a shopkeeper):
	if M is not in Dungeon41:
		say "[speech style of M]'We can talk when I get back to the shop.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Welcome back to the shop. Saved up for something you liked?'[or]Welcome back. Am I about to make a sale?'[at random][roman type][line break]".

To say UnfriendlyResponse of (M - a shopkeeper):
	if the number of held stolen clothing + the number of worn stolen clothing > 0:
		say "[speech style of M]'[one of]Give me what you stole!'[or]Don't think you can get away with stealing my property!'[or]That's my property you took! I'm not stopping until I get it back!'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]You're going to pay for this!'[or]Assault is a capital offence!'[or]Your attack was hello enough!'[in random order][roman type][line break]".

To say DominantResponse of (M - a shopkeeper):
	if M is mating:
		say "[speech style of M]'[one of]It's always good to see the mother of my daughter.'[or]Hey there. Feel free to take anything you like.'[or]Don't be afraid to raid the shop. Can't have you walking around here naked, now can I?'[at random][roman type][line break]";
	otherwise if the relevant sex addiction of M < 10:
		say "[speech style of M]'[one of]That's how it works. You steal from my shop, you get punished.'[or]If you steal from my shop, I punish you. Deal with it.'[or]Maybe next time you'll think before you try stealing from my shop.'[or]Maybe next time you'll keep those sticky fingers to yourself.'[or]I have no sympathy for anybody willing to steal from my shop.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I'm glad you enjoyed yourself, but that was supposed to be a punishment.'[or]I admit I enjoyed myself,  but I was only protecting my interests.'[or]I guess you were fun, but I was only trying to protect my property.'[at random][roman type][line break]".

[This should be really rare to appear, so I've made it a little skimpy.]
To say midDominanceResponse of (M - a shopkeeper):
	let N be a random monster penetrating a body part;
	if the bimbo of the player < 12 and M is unfriendly:
		say "[speech style of M]'[one of]Ha. Thieves like you deserve whatever you get.'[or]You deserve it. But don't worry, after [if N is male]he's[otherwise]she's[end if]done, I'm going to punish you personally.'[or]If it were up to me, every criminal would get tossed in jail and gangfucked until they passed out. You're getting off easy.'[or]I[']m not here because I want to help you. I[']m here because I[']m going to punish you personally once [he of N]'s done.'[at random][roman type][line break]";
	otherwise if M is unfriendly and the class of the player is cheerleader:
		say "[speech style of M]'[one of]It's not every day I get to fuck a cheerleader. I want you to myself.'[or]I'll wait. It's not every day I get to fuck a cheerleader.'[at random][roman type][line break]";
	otherwise if M is released:
		say "[speech style of M]'[one of]Don[']t worry, I[']m going to fuck you. I just want some one on one time.'[or]Heh, all you thieves end up like this. On their knees, begging to get fucked.'[at random][roman type][line break]";
	otherwise if N is aeromancer:
		say "[speech style of M]'Ha! Get her!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I'm staying out of this.'[or]Sort this out yourself.'[at random][roman type][line break]".

[This section, on the other hand, is very robust, since sex with the shopkeeper can last a very long time!]
To say AsDominantResponse of (M - a shopkeeper):
	let F be a random body part penetrated by M;
	if the class of the player is cheerleader:
		say "[speech style of M]'[one of]No way I'm stopping, you look way too hot in that uniform!'[or]I'll never stop, you're too hot in that uniform!'[or]I'd never throw away a chance to fuck a cheerleader!'[at random][roman type][line break]";
	otherwise if the number of lubricants covering F > 0 and the relevant sex addiction of M < 12:[reusing the value defined by the default ToDominantGreeting function]
		say "[speech style of M]'[one of]If you didn't want me to fuck you, then why did you use so much lube?'[or]You obviously knew this would happen if you took the time to lube yourself up beforehand.'[or]Please. You knew you'd be taking my [manly-penis], that's why you covered yourself in lube, didn't you?'[or]If it hurts, all that means is you need to do a better job lubing up next time.'[at random][roman type][line break]";
	otherwise if the relevant sex addiction of M < 12:
		say "[speech style of M]'[one of]You should have thought harder before you decided to steal from me!'[or]Maybe next time you'll think a little harder before stealing from me!'[or]You've been a naughty little thief, and I'm going to punish you until I'm sure you've learned your lesson!'[or]Shut up and take it like the thieving slut you are!'[or]Shut up and take it you little thief!'[or]So what you're saying is, I need to punish you even harder!'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Yeah! Take it!'[or]Take it you naughty slut!'[or]Enjoying yourself you naughty minx?'[or]That's right, slut! Take it!'[or]Take it you naughty thief!'[or]Just like a thief to actually enjoy their punishment!'[at random][roman type][line break]".

To say BimboSeduced of (M - a shopkeeper):
	if M is interested and the class of the player is cheerleader and diaper quest is 0:
		say "The [M] even more turned on by your incessant chattering!";[The chatterbox is his dream girl!]
	otherwise:
		say "Something seems to suddenly switch in the [M]'s head and [his of M] [if M is friendly]friendly[otherwise]idle[end if] smile changes into a devilish grin.  Uh oh... [line break][variable custom style]Was it something I said?![roman type][line break]";
	anger M;
	now the boredom of M is 0.

Section 2 - Questions

[The shopkeeper uses a custom "to question" function, so he can give us his all-important discount.]
To compute talk option (N - 2) to (M - a shopkeeper):
	let I be the intelligence of the player;
	if I < 6, now I is 6;
	let R be a random number between 1 and I;
	let S be a random number between 1 and 3; [This is for the discount. We store the value so we can easily modify it.]
	let B be a random number from 1 to 4; [this is for bimboseduce. We define the variable so we can use it in the next function.]
	let Q be a random number between 2 and 12;
	if the throatskill of the player is 1:[TODO This should probably be sensitive to some type of tattoo]
		now S is 1;
	if discount is -1 or discount > 0 or M is uninterested or diaper quest is 1 or M is unfriendly:
		now S is 0; [This happens after the check for throatskill so the discount can't happen when it shouldn't.]
	if debugmode is 1:
		say "[R] = R. [Q] = Q.";
	if player is seductive and M is raunchy and B is 1:
		say "[BimboSeduce of M]";
		say "[BimboSeduced of M]";
		anger M;
		now M is interested;
	otherwise if S is 1:
		compute shopkeeperDiscount of M;
	otherwise if R > 4:
		say "[TeachQuestion of M]";
		if the questioned of M > 190 or M is unfriendly or M is uninterested:
			compute annoyance of M;
		otherwise:
			compute teaching of M;
	otherwise:
		if Q < 4:
			say "[WhereQuestion of M]";
		otherwise if Q < 6:
			say "[WhoQuestion of M]";
		otherwise if Q < 8:
			say "[StoryQuestion of M]";
		otherwise if Q < 10:
			say "[EscapeQuestion of M]";
		otherwise:
			say "[AdviceQuestion of M]";
		compute answer of M to Q;
	now the question-asked of M is 1.

To compute annoyance of (M - a shopkeeper):
	if M is uninterested:
		say "The [M] doesn't seem to realize that you're talking to him.";
	otherwise if M is unfriendly:
		say "The [M] ignores your question.";
	otherwise:
		say "[speech style of M]'Please, I have a shop to run, I can't stand around all day answering questions.'[roman type][line break]".

To compute shopkeeperDiscount of (M - a shopkeeper):
	if the bimbo of the player < 6:
		say "[speech style of M]'[one of]Is there any chance I can get a bit of a discount?'[or]Is there any way you could lower some of these prices?'[or]I know you're a business man or whatever, but don't you have sales or something?'[at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Is there anything a girl can do to get a discount around here?[or]So, what would I have to do for a discount?'[or]I'm dying to get into some of these clothes, but I just don't have the money for it right now. Oh well...'[or]Is there something I can do to lower some of these prices?[if the bimbo of the player > 12] With my body, maybe?'[otherwise]'[end if][at random][roman type][line break]";
	say "[speech style of M]'[one of]Heh, you are a slutty one aren't you.  Tell you what, if you can take this whole length in your mouth, I'll give you a small discount for a while.'[or]How can I refuse to let you try again after last time! I'm definitely ready for another round.'[stopping][roman type][line break][line break]Give it a go? [yesnolink] ";
	if the player consents:
		now keriaxshopblow is 1;
		humiliate 400;
		say "You get on your knees and take his enormous length in your hands.  The giant tool starts to grow even larger as the shopkeeper is aroused with anticipation.  [if the bimbo of the player < 7]You close your[otherwise]You stare deeply into his[end if] eyes and open your mouth as you stretch your mouth as wide open as possible in order to get your lips around the head.  As you move your face down the first half of the monster, you [if the bimbo of the player < 10]shiver with shame as you feel his sex organ expand to fill your entire mouth.[otherwise]feel your own arousal build as your mouth fills with [manly-penis].[end if][line break]The next part of the member is a challenge, you have to force the head right to the back of your throat which takes some work, you have to move your head backwards and forwards a few times which causes you to make a lewd gagging sound.  You can tell that the shopkeeper is greatly enjoying himself by [if the bimbo of the player > 6]the look in his eyes and [end if]the moans he has started to make.  ";
		if the throatskill of the player is 1 or a random number between 0 and 1 < the number of lubricants covering face or the oral sex addiction of the player > a random number between 0 and 10:
			say "[if the throatskill of the player is 1]Using your newly obtained deepthroating techniques[otherwise if there is a lubricant covering face]With the help of the slippery lubricant coating your mouth and throat[otherwise]Licking your lips nervously[end if], you try to open your throat and accept his length inside it.  [if the oral sex addiction of the player < 5]It takes several attempts to mentally steel yourself and allow your throat to relax, but you eventually manage to swallow the entirety of his [manly-penis].[otherwise]You blank out your mind and find it surprisingly easy to relax your throat muscles.  You take his entire [manly-penis] and allow your throat to pulse around it by repeatedly making a swallowing motion.[end if][line break]Before you can react, whilst his [manly-penis] is deep in your throat, he starts to climax.  [if the semen taste addiction of the player > 9]Without thinking you stay still and let him ejaculate directly into your belly.  After he finishes filling your stomach with his seed, he slowly deflates, and eventually pulls his entire length from your throat and mouth.[otherwise]you pull yourself back as fast as possible, but not before you are forced to swallow several strings of his salty gift.[end if][line break][speech style of M]'Unf, that was incredible.  All right, you definitely deserve a discount for that performance.  I'm going to give you 4 credits off everything in the store, for a while at least.'[roman type][line break]";
			now discount is 1000;
			StomachSemenUp 4;
		otherwise:
			say "[if the number of lubricants covering face > 0]With the help of the slippery lubricant coating your mouth and throat, you try to open your throat and accept his length inside it. However, you soon realize it's not enough.[end if]As much as you try, you can't get the last part into your mouth.  There's just no room!  Your mouth is already 100% full of [if the bimbo of the player > 7]man meat[otherwise]'meat'[end if] and even though you try bulging out your cheeks, pulling out and pushing back in, and moving your tongue around to different points in your mouth, nothing works.  What it does manage to do, though, is cause the shopkeeper to lose control.  Before you can react, whilst his [manly-penis] is as deep in your mouth as it can go, he starts to climax, and [if the semen taste addiction of the player > 8]without thinking you start gulping it down so that you can continue to breathe.  After he finishes filling your stomach with his seed, he slowly deflates, and eventually pulls his entire length from your mouth.[otherwise]you pull yourself back as fast as possible, but not before you are forced to swallow two or three strings of his salty gift.[end if]";
			now M is penetrating face; [This allows gagging to potentially happen]
			StomachSemenUp 4;
			now M is not penetrating face;
			say "[speech style of M]'Unf, good try, but you couldn't quite manage the last bit.  Such a shame.  Still, it was an admirable attempt.  I sure had fun.  Maybe I'll let you have another go in a while.'[roman type][line break]";
			now discount is -500;
	otherwise:
		if the bimbo of the player < 8 and the player is female:
			say "[first custom style]'[one of]Hell no, sicko. I'm not that kind of girl.'[or]Fuck you, asshole. I'd rather die.'[or]No thanks. Creep.'[or]Fuck off. I'm not some cheap floozy.'[at random][roman type][line break]";
		otherwise if the bimbo of the player < 8:
			say "[first custom style]'[one of]Excuse me? I'm not a chick, brah.'[or]No way dude, I'm straight.'[or]Haha, is this a prank show? No way dude.'[or]Is that your way of telling me to fuck off?'[at random][roman type][line break]";
		now discount is -1;
		say "[speech style of M]'Fair enough, I won't hold it against you!  I won't offer again, though.'[roman type][line break]".
	
To compute teaching of (M - a shopkeeper):
	say "[speech style of M]'You know, sometimes you can tell if an item is cursed from some tell-tale hints.  Let me tell you a few...'[roman type][line break]";
	teach identifying;
	if the questioned of M <= 290:
		increase the questioned of M by 150;
	otherwise:
		increase the questioned of M by 75.

To say WhereAnswer of (M - a shopkeeper):
	say "[speech style of M]'The best and only clothes shop in these lands!'[roman type][line break]".

To say WhoAnswer of (M - a shopkeeper):
	say "[speech style of M]'Well, I'm the shopkeeper!  Is that not obvious?'[roman type][line break]".

To say StoryQuestion of (M - a shopkeeper): [Custom question here]
	if diaper quest is 1:
		say "[variable custom style]'What's with this place?!'[roman type]";
	otherwise if the bimbo of the player < 7:
		say "[first custom style]'So why are you naked?'[roman type]";
	otherwise if the bimbo of the player < 14:
		say "[variable custom style]'So how did you end up in charge of the shop?'[roman type]";
	otherwise:
		say "[second custom style]'So how does a **[one of]sexy[or]yummy[or]gorgeous[at random]** guy like you end up in a place like this?'[roman type]";
	say "[line break]".

To say StoryAnswer of (M - a shopkeeper):
	if diaper quest is 1:
		say "[variable custom style]'I don't know what you mean, how are things different where you come from?'[roman type]";
	otherwise if the bimbo of the player < 7:
		say "[speech style of M]'When I first started out, I didn't get many customers, but that changed when I started wearing more revealing clothing.  It turns out that the girls that shop here tend to like a bit of eye candy, so I end up making most sales when I'm nude! Which suits me just fine.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Well, I may not look like it, but once I was actually one of the first members of R&D to test this game! I was the first one to ever win, and the higher ups were so impressed they offered me a permanent job here as the shopkeeper! Sure, I'm not allowed to leave my post for long, but there's plenty of girls that pass through here, if you catch my meaning.'[or]I've been in charge of the shop for as long as I can remember, so I guess I don't know.'[or]The Nintendolls offered me a sweet deal. All the hot women I could fuck, and all I had to do was take care of the shop! Pretty sweet deal, right?'[sticky random][roman type][line break]".

To say EscapeAnswer of (M - a shopkeeper):
	say "[speech style of M]'The key to travelling through this world successfully is to intelligently manage your fatigue.  Don't start a fight unless you've rested up recently!  Also, things you are wearing count a lot less against your weight than things you are just carrying.  So try to wear as many things as possible!'[roman type][line break]".

To say AdviceAnswer of (M - a shopkeeper):
	say "[speech style of M]'[one of]How about this - don't be fooled by the height of platform heels.  For all intents and purposes they're really just like normal heels that are a couple of inches shorter.'[or]Hmm, you know those gladiators? Try not to fight them if they're not interested in fighting you. Don't give them a reason to go all out.'[or][if the player is male]I know the wenches seem hot, but they're smarter than you might guess. I had an awesome threesome with a pair of them, and by the time it was over, I was so tired I couldn't stop them stealing everything from my shop!'[otherwise]I know the wenches may seem friendly at first, but if you get too slutty they might turn on you. Trust me, I've seen that story play out 100 times. Heh, who knows,  maybe you'll be 101.'[end if][or][if inflation fetish is 1]The aeromancers can be bothersome, but they're helpless if you can find a way to disarm them. Heh, I remember the first time one of them came into my shop.'[otherwise]Sometimes, the most challenging fight can be pretty rewarding.'[end if][at random][roman type][line break]".

Section 3 - Drink Requesting

To compute friendly drink of (M - a shopkeeper):
	let L be a random off-stage vibrating plug panties;
	if M is not in Dungeon41:
		compute unfriendly drink of M;[since the default function does not check for captivity, we just link back to unfriendly drink since the shopkeeper has the same reaction when both are true.]
	otherwise if M is mating:
		say "[speech style of M]'Anything for the mother of my daughter.  Here, drink from this bottle.'[roman type][line break]You feel completely refreshed!";
		while the player is thirsty:
			StomachUp 1;
		StomachUp 1;
	otherwise if L is actually summonable:
		say "A glint appears in his eye.  [speech style of M]'Hmm, I have a proposition for you.  I'll give you a glass of water, but only if you do something for me.  I've got loads of these latex plug panties that are not selling because the girls are all worried that it's going to hurt, or whatever.  So I'll give you some water, and these panties for free, if you can walk around in them for me, to, you know, show any other potential customers that it's fun and not torture!  What do you say? [roman type][yesnolink] ";
		if the player consents:
			now the effect of L is 2;
			summon L;
			if a random number between 1 and 5 > 3, now L is cursed;
			now seconds is 6;
			now L is sure;
			say "[speech style of M]'Haha, excellent, well here's your drink, and let me just slip these on you...'[roman type][line break]You feel refreshed!  But then the shopkeeper gets busy with your end of the deal.  The latex is pulled up your legs and the [if the player is male]plug goes[otherwise]plugs go[end if] in.  [if L is cursed]As soon as it's fully in, it immediately starts vibrating!  You can tell by the shopkeeper's face he has no idea what's going on.[line break][speech style of M]'Hmm, I've never seen that happen before.  How weird.  Oh well, all the more to enjoy, right?'[roman type][line break]It would appear that these panties are cursed![otherwise]Luckily he never made a deal for how long you had to wear them, so you guess you can just take them off whenever you want?[end if]";
			while the player is thirsty:
				StomachUp 1;
			StomachUp 2;
			ruin asshole;
			if the player is female, ruin vagina;
		otherwise:
			say "[speech style of M]'That's too bad.  Well, good luck with finding a drink!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I don't see why not.  Here, drink from this bottle.'[roman type][line break]You feel completely refreshed!";
		while the player is thirsty:
			StomachUp 1;
		StomachUp 1.

To compute unfriendly drink of (M - a shopkeeper):
	say "The shopkeeper ignores your question.".

Section 4 - Food Requesting

Definition: a shopkeeper (called M) is willing to give snacks:
	decide yes.


Shopkeeper ends here.
