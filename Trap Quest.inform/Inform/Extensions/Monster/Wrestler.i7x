Wrestler by Monster begins here.

A wrestler is a kind of monster.  A wrestler is usually hotel dwelling.  A wrestler is usually intelligent.  A wrestler is usually raunchy.  A wrestler is usually willing to do vaginal.  A wrestler is usually willing to do anal.  A wrestler is usually willing to urinate.    A wrestler has a number called fingers.  The favour of a wrestler is usually 7. The leftover-type of a wrestler is usually 120. A wrestler is usually wenchy. A wrestler has a number called excitement. The excitement of a wrestler is usually 0.

The printed name of wrestler is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style][monster-adjective of item described] wrestler[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The description of wrestler is usually "[WrestlerDesc]".


A latex-clad wrestler is a kind of wrestler.  There is 1 latex-clad wrestler.    The text-shortcut of latex-clad wrestler is "lwr".
The printed name of latex-clad wrestler is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]latex-clad wrestler[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". Understand "latex", "clad" as latex-clad wrestler.
A rubberdoll wrestler is a kind of wrestler.  There is 1 rubberdoll wrestler.  Understand "rubber", "doll" as rubberdoll wrestler.    The text-shortcut of rubberdoll wrestler is "rwr".
The printed name of rubberdoll wrestler is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]rubberdoll wrestler[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". Understand "rubber", "doll" as rubberdoll wrestler.

To say WrestlerDesc:
	if images visible is 1, display the Figure of wrestler;
	say "This woman is covered head to toe in a black latex catsuit.  It covers almost every inch of her skin, except her fingers.  There are two small holes for her eyes and another small hole for her mouth.  Her reddish-brown hair flows in pigtails from two more small holes at the top of the outfit.  Except for this she appears completely sealed in, except for a zip at the crotch.  The figure-hugging rubber outfit gives you a perfect impression of her figure, she has enormous, perfectly round breasts that must be at least G cup if not larger.  Her whole body is very curvy, from her alluring hips to her strong thighs[if diaper quest is 0], balancing on two high black platform fetish heels[end if].  A yellow stripy pattern on her hands, forearms and forehead give the impression of some kind of wrestling outfit.";
	if diaper quest is 0, say "[variable custom style][if the bimbo of the player < 5 and the player is male][one of]Man, that's a pretty hot outfit.  I wouldn't mind a poster of her on my wall.[or]She's definitely my type.[stopping][otherwise if the bimbo of the player < 5]How can she look so happy when she's wearing something so constricting?[otherwise if the bimbo of the player < 8][one of]I wonder if she actually knows how to wrestle.[or]She looks pretty darn strong.  I should be careful.[stopping][otherwise if the bimbo of the player < 11][one of]She looks like she could teach me a thing or two...[or]I wonder what it feels like in there.[or]I wish I was as happy as she looks.[in random order][otherwise if watersports fetish is 1]She seems kinky.  I wonder if I'll be able to keep up?[otherwise if the bimbo of the player < 14]Fuck, she is hot.  I wish I was that hot.[otherwise]Pff, I bet I can fuck better than her, no matter how flexible she looks.[end if][roman type][line break]";

To set up (M - a wrestler):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 8;
	now the health of M is the maxhealth of M.

To decide which number is the girth of (M - a wrestler):
	let F be a random fuckhole penetrated by M;
	if F is fuckhole:
		if the openness of F >= 10:
			decide on 10;
		otherwise:
			decide on the openness of F + 1;
	decide on 1.

This is the spawn initial wrestler rule:
	if diaper quest is 1 and watersports fetish is 0:
		repeat with M running through wrestlers:
			now M is not hotel dwelling;
	otherwise if the number of alive wrestlers is 0:
		if debugmode > 0, say "Summoning wrestler in hotel.";
		let M be a random wrestler;
		summon M in the hotel.
The spawn initial wrestler rule is listed in the setting up hotel monsters rules.

Definition: a wrestler (called M) is human:
	decide yes.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a wrestler):
	say "You hear the sound of squeaky rubber clothing coming from another part of the hotel.".

To say DiaperReaction of (M - a wrestler):
	say "The [M] smirks and looks directly at your dampening crotch.  [speech style of M]'[one of]Wow, you're even more kinky than me.  There's no way I would let anyone see me wetting myself into such a humiliating diaper.'[or]Hey, you must really get off on humiliation if you keep doing that in front of me.  How does it feel to be the filthiest skank in this hotel, especially when there are people like me here?  You're right at the bottom of the pecking order, you know that?'[stopping][roman type][line break]";
	if the humiliation of the player < 15000, say "[one of]You are so ashamed you wish the ground would just open up and swallow you.  [or][stopping]You turn bright red and refuse to look at the [M] in the eye.".

To say ToiletPeeReaction of (M - a wrestler):
	say "The [M] licks her lips.  [speech style of M]'[if watersports fetish is 1]You know, it's unusual getting to watch someone else pee without me being on my knees underneath them[otherwise]Is the big girl trying to prove she doesn't need diapers?  How adorable[end if]!'[roman type][line break]".

To say LeftoverDesc (N - 119):
	say "An unconscious latex clad wrestler on the ground here has a bulging belly and still has [semen] slowly flowing out of her [vagina].[line break]".

To IdentifiablePosterReaction of (M - a wrestler):
	say "The [M] looks at you, blinks, then looks back to the banner.  Upon realising that it is you, she grins widely and gives you a sly wink.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a wrestler):
	say "[second custom style]'I'm jealous of whoever that is.  I wish there were banners of me up around the place!'[roman type][line break]";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Part 2 - Perception

To decide which number is the bimbo tolerance of (M - a wrestler):
	decide on 8.

To compute perception of (M - a wrestler):
	now M is interested;
	say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the latex-transformation of the player > 6 or there is a worn messed knickers: 
		say "She seems a little intrigued by you but leaves you alone.";
		bore M;
	otherwise if M is unfriendly and the times-met of M > 0:
		say "[second custom style]'Hey hot stuff, ready for another round?'[roman type][line break]";
	otherwise if the bimbo of the player > 10 and the player-class is succubus:[The succubus is intimidating enough that it takes a bit longer for the wrestler to turn]
		say "[second custom style]'Heh, you[']re trying to look scary but you don[']t have me fooled for a minute!'[roman type][line break]";
		anger M;
	otherwise if M is unfriendly or the class of the player is the royal slave or the class of the player is the latex fetish model or the class of the player is maid or the player is a sissy:
		if the player is flying:
			say "[second custom style]'What are you doing up there, you crazy bitch?!'[roman type][line break]";
		otherwise if the class of the player is the royal slave:
			say "[second custom style]'Ooh, another slave!  Can I be your friend?  [if watersports fetish is 1]Winner chooses the game we play!'[otherwise]Do you want to meet my mistress?'[end if][roman type][line break]";
		otherwise if the class of the player is the latex fetish model:
			say "[second custom style]'Hey, sister!  I didn't know mistress had another rubber slave.  Let's fight to see who gets to be on top!'[roman type][line break]";
		otherwise if the class of the player is maid:
			say "[second custom style]'[if watersports fetish is 1 and the variety of M is 0]Oooh, a slutty maid!  If you're staff, I guess that kind of makes me your boss?  I know a job that's perfect for you.  Come with me!'[otherwise]Hey, you're staff, aren't you?  That means you have to let me do whatever I want to you, right?'[end if][roman type][line break]";
		otherwise if the player is a sissy:
			say "[second custom style]'Oooh!  A real life sissy!  My Mistress has been looking for a good sissy slave for ages.'[roman type][line break]";
		otherwise:
			say "[second custom style]'Hey, wanna wrestle?  Winner gets to be on top!'[roman type][line break]";
		anger M;
	if M is interested and M is friendly:
		say "[second custom style]'[one of]Hi there, sexy.  Are you enjoying your stay in this fetish hotel?'[or]Hey there hot stuff.  Having a good time?'[stopping][roman type]".

Part 3 - Combat

Section 1 - Protection

To compute (M - a wrestler) protecting against (X - a monster):
	say "[second custom style]'Haha, that looks like fun!  Can I join in?'[roman type][line break]";
	anger M;
	compute attack of M.

Section 2 - Attack

To compute kneeling reaction of (M - a wrestler):
	say "[one of]The [M] stands over you, a smug grin clearly visible through her latex hood.  [or]The [M] stands over you, her eyes shining with glee through the holes in her latex hood.  [or]You hear an excited chuckle escape her lips.  [or]The [M] looms over you. She leers down at you, grinning.  [in random order]";
	say "[second custom style]'[if the class of the player is royal slave][one of]Slaves will be slaves.'[or]Aww, I was hoping I'd get a bit more fight out of you than that.'[in random order][otherwise if the class of the player is latex fetish model][one of]Subs will be subs.'[or]You look even sexier than me on your knees.'[in random order][otherwise if watersports fetish is 1][one of]Looks like you get to be the toilet today!'[or]Looks like we know who is going to be the piss bucket tonight.'[cycling][otherwise][one of]To the victor, the spoils!'[or]Pff, that was too easy.'[in random order][end if][roman type][line break]";
	humiliate 75.

To compute flying player taunting of (M - a wrestler):
	if a random number from 1 to 6 is 1:
		say "The [M] jeers at you.  [second custom style]'[one of]Look at this [if weight gain fetish is 1]fat [end if]bitch stuck on the ceiling!  Haha![or]When you get down I'll show you who's boss![or]I can't believe you're still up there![or]I hope you're as disgusted with yourself as I am with you.  You can't even move![or]What kind of dumb bitch gets herself stuck on the ceiling?[or]You look absolutely disgraceful, you know that, right?[or][if weight gain fetish is 1]Fatty[otherwise]Someone[end if][']s going to get a pounding when she gets back down here![in random order]'[roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
		humiliate 20.

To say LandingTaunt of (M - a wrestler):
	say "The [M] giggles.  [second custom style]'That's it, come here [if weight gain fetish is 1]fatty[otherwise][bitch][end if]...'[roman type][line break]";
	humiliate 50.

The wrestler unique punish rules is a rulebook.  
This is the wrestler unique punishment rule:
	follow the wrestler unique punish rules;
	if the rule succeeded, rule succeeds.
The unique punishment rule of a wrestler is usually the wrestler unique punishment rule.

This is the wrestler lets the matron take over rule:
	if there is a dangerous matron in the location of the player:
		bore current-monster;
		rule succeeds.
The wrestler lets the matron take over rule is listed first in the wrestler unique punish rules.

This is the wrestler puts slaves in the urinal rule:
	let M be current-monster;
	let R be 0;
	if the latex-transformation of the player <= 4 and (the class of the player is latex fetish model or the class of the player is maid or the player is a sissy or the class of the player is human toilet or the class of the player is royal slave), now R is 1;
	if watersports fetish is 1 and (the variety of M is 0 or the class of the player is human toilet) and R is 1:
		if Hotel31 is the location of the player:
			now M is grabbing the player;
			now the sex-length of M is a random number between 10 and 30;
			say "The [M] forces your back against the wall in between the two urinals.  Before you can move, she has secured your ankles to two strong metal anklecuffs connected by short chains to the wall.  [if the bimbo of the player < 10]As you fruitlessly pull at the chains, [otherwise if the class of the player is human toilet]You hold the chains in silent obedience as[otherwise]You hold the chains in silent bemusement as [end if] she clamps two more cuffs around your wrists, securing them strictly to your ankles and preventing you from even standing up. Finally she gives you a passionate kiss on the lips as she pulls a thick woolly blindfold over your eyes.[line break][second custom style]'I'll be back for you in a bit, beautiful.  Enjoy yourself!'[roman type][line break]";
			now the player is in Blindfolded;
			now the variety of M is 0;
		otherwise:
			say "[one of][second custom style]'I know a place where you'll have some good fun!'[roman type][line break][or][stopping]";
			drag to Hotel31 by M;
		rule succeeds.
The wrestler puts slaves in the urinal rule is listed in the wrestler unique punish rules.

To say DragArrival of (M - a wrestler) to (R - Hotel31):
	say "[second custom style]'Here we are!'[line break][variable custom style][one of][if the bimbo of the player < 8]Oh god, why is there a gap between those urinals?[otherwise]Why are we here I wonder?[end if][or][if the bimbo of the player < 13]No no no please not again![otherwise]Uh-oh, looks like it's toilet time again![end if][stopping][roman type][line break]".

A time based rule (this is the wrestler urinal punishment rule):
	let M be a random wrestler grabbing the player;
	if M is monster:
		if a random number between 1 and 9 is 1:
			if the variety of M is 0: [First urination]
				say "Your thoughts are interrupted by the sound of heavy footsteps entering the room.  You here a manly sigh and then the sound of a zip.  [variable custom style][one of][if the humiliation of the player is 40000]I should hold still to make sure he doesn't miss a drop.[otherwise if the bimbo of the player < 12]Oh no, please no....[otherwise]This is new...[end if][or][if the humiliation of the player is 40000]I guess this is my life now.[otherwise if the bimbo of the player < 12]How has this happened to me again...[otherwise]Ooh, it's starting again...[end if][stopping][roman type][line break]Unable to see, you are force to wait there for a tense few moments until suddenly you feel the warm blast of the [urine] hit you straight on the nose.";
			otherwise:
				say "You again hear manly footsteps!  [one of]This man chuckles quietly to himself before unzipping and touching your [if there is a worn ballgag][random worn ballgag][otherwise]lips[end if] with the tip of his [manly-penis] and releasing his bladder.[or][first custom style]'Another watersports fetishist.  I can't believe you enjoy getting pissed on, how disgusting.'[roman type][line break]That is all you hear before the stream of [urine] hits your face.[or][first custom style]'Open wide, slave.'[roman type][line break]You're not even given a chance to react before a strong, warm stream of [urine] hits your face.[in random order]";
			FacePiss;
			increase the variety of M by 1;
		otherwise if a random number between 2 and 50 < the variety of M:
			compute M releasing the player.

To UrinalWait:
	let M be a random wrestler grabbing the player;
	let N be the variety of M;
	while the variety of M is N and the player is in Blindfolded:
		say "You continue [one of]kneeling[or]waiting[or]waiting for the wrestler to return[or]kneeling between the two urinals[or]impatiently waiting for something to happen[or]waiting, straining with your ears to try and hear anything[as decreasingly likely outcomes].";
		now seconds is 6;
		compute extra turn.

To compute (M - a wrestler) releasing the player:
	bore M for 700 seconds;
	FavourUp M;
	say "Suddenly you hear high heeled footsteps.  You feel your [urine]-soaked blindfold removed and you see the [M] standing over you, grinning.  [second custom style]'Oooh, looks like you really did have fun!  Well, I guess I should let you go recover for now.'[roman type][line break]The [M] releases you from your bondage and then loses interest.";
	now the urine-puddle of Blindfolded is the urine-puddle of Hotel31;
	now the player is in Hotel31.

This is the wrestler feeds you to master rule:
	let M be current-monster;
	let N be a random alive dominatrix;
	if N is not monster and the times-met of M <= 1, now N is a random alive matron; [We don't want to do this if the wrestler has already dragged the player to the dominatrix earlier in the game] [The test is <= 1 because times-met gets set to 1 as soon as the wrestler first perceives the player.  This action will come directly after that, hence a times-met of 1 means this is their first interaction, and anything higher than that means it's a future interaction.]
	if N is monster and the times-met of N is 0 and the times-met of M < 2:
		let Q be Hotel22;
		if N is dominatrix, now Q is Hotel37;
		if Q is not the location of M:
			say "[one of][second custom style]'I'm going to take you to meet my owner!'[roman type][line break][or][stopping]";
			drag to Q by M;
		if N is in Q:
			say "[second custom style]'[if N is matron]Mommy, look I've brought a friend!  She needs your special care.'[otherwise]Mistress, I've made a friend!  She wants to learn how to be like me.'[end if][line break]";
			if the player is able to speak, say "[variable custom style]'[if the bimbo of the player < 8]No I don[']t!'[otherwise]Who are you?'[end if]";
			otherwise say "[variable custom style][if the bimbo of the player < 8]If I could speak I could tell her it's all a big mistake!![otherwise]Who is she?[end if]";
			say "[roman type][line break]";
			say "The [M] dumps you in front of the [N] in this room, and then promptly skips away, humming to herself merrily.";
			if N is friendly or N is uninterested, check perception of N;
			bore M;
			compute motion of M;
		otherwise: [Should never happen since the matron / dominatrix shouldn't be wondering around until their times-met is higher than 0.  But just in case.]
			say "[second custom style]'Oh, she's not here.  That's unusual.  Oh well, I guess we can wait for her here.  I've got an idea of something we can do to pass the time...'[roman type][line break]";
			now the times-met of M is 2;
		rule succeeds.
The wrestler feeds you to master rule is listed last in the wrestler unique punish rules.

To say DragArrival of (M - a wrestler) to (R - a room):
	say "[speech style of M]'Here we are!'[roman type][line break]".

To compute (M - a wrestler) urinating:
	say "The [M] reaches down to her crotch and slowly unzips her catsuit, revealing her rosy, engorged vulva.  [one of]She is clearly very aroused.  [or][stopping][one of]She[or]Once again she[stopping] casually starts urinating over your hair and face. [if the humiliation of the player >= 40000]You feel strangely comforted, once again in your place as an object to be used and then discarded.[otherwise if the humiliation of the player > 30000]Deep down, you feel that you deserve this degradation.[otherwise]You can't tell if most of the warmth is coming from the heat of the [urine] or your cheeks burning red with humiliation.[end if]";
	FacePiss;
	say "[second custom style]'That was fun.  Let's do it again soon.'[roman type][line break]The [M] seems to lose interest in you for now.";
	FavourUp M;
	bore M.

This is the wrestler pisses on the player rule:
	let M be current-monster;
	let R be a random number between 1 and 3;
	if the latex-transformation of the player > 4, now R is 3;
	if watersports fetish is 1 and R < 3:
		if the number of monsters penetrating face > 0:
			compute the default taunting of M;
			rule succeeds;
		say "[second custom style]'[one of]This is how we punish losers in this hotel!'[or]Open wide, loser!'[or]You know the drill by now, bitch!'[stopping][roman type][line break]";
		compute M urinating;
		rule succeeds.
The wrestler pisses on the player rule is listed last in the wrestler unique punish rules.

To compute the default taunting of (M - a wrestler):
	say "[one of]The [M] watches happily with a mixture of excitement and envy.[or][or][cycling]";

To compute the dildo stuck taunting of (M - a wrestler):
	compute the default taunting of M.

This is the wrestler monster fucked taunting rule:
	say "[one of][second custom style]'I can't wait until it's my turn!'[roman type][line break]The [current-monster] is getting impatient.[or][or][or][or][in random order]";
	rule succeeds.
The monster fucked taunting rule of a wrestler is usually the wrestler monster fucked taunting rule.

To say PresentAcceptanceFlav of (M - a wrestler):
	say "[second custom style]'Haha, okay, you asked for it, here I come!'[roman type][line break]".

To compute (M - a wrestler) getting fingers into (F - a fuckhole):
	if the openness of F is 10:
		now the fingers of M is 6;
	otherwise:
		now the fingers of M is the (openness of F + 1) / 2;
	if the fingers of M <= 0, now the the fingers of M is 1.

To say VaginaPenetrationFlav of (M - a wrestler):
	compute M diving into vagina.

To say AssholePenetrationFlav of (M - a wrestler):
	compute M diving into asshole.

To compute (M - a wrestler) diving into (F - a fuckhole):
	say "[second custom style]'Okay, let's see just how much we can stretch you out!'[roman type][line break]";
	now the sex-length of M is a random number between 2 and 4;
	compute M getting fingers into F;
	if the fingers of M is 1:
		say "The [M] slides a single finger into your extremely tight [variable F].";
		if image cutscenes is 1, display figure of wrestler cutscene 1;
	otherwise if the fingers of M is 2:
		say "The [M] slides two fingers into your tight [variable F].";
	otherwise if the fingers of M is 3:
		say "The [M] slides a full three fingers into your [variable F].";
	otherwise if the fingers of M is 4:
		say "The [M] forces all four of her fingers into your [variable F].";
	otherwise if the fingers of M is 5:
		say "The [M] slides all four of her fingers [italic type]and[roman type] her thumb into your [variable F], all the way up to her knuckles.  She can't manage to push it in any further than that!";
	otherwise:
		say "The [M] slides all four of her fingers [italic type]and[roman type] her thumb into your [variable F], all the way up to her knuckles.  She keeps pushing with all her might, and all of a sudden, her whole fist slides in!";
		if image cutscenes is 1:
			if the player is male or F is vagina, display figure of wrestler cutscene 2;
			otherwise display figure of wrestler cutscene 3;
	say "[variable custom style][if the relevant sex addiction of M < 9][one of]Oof[or]'That's too much!'[or]I'm being stretched![in random order][otherwise][one of]This is new..![or]Oof, I feel more loose already...[or]Here we go again![stopping][end if][roman type][line break]";
	say "She starts moving her [if the fingers of M is 6]fist[otherwise]fingers[end if] in a thrusting motion.".

To compute anal sex of (M - a wrestler):
	compute M fisting asshole;
	ruin asshole.

To compute vaginal sex of (M - a wrestler):
	unless M is penetrating face:
		compute M fisting vagina;
		ruin vagina.

To compute (M - a wrestler) fisting (F - a fuckhole):
	if the reaction of the player is 0:
		say "You try to get away, but she's much too strong for you.";
	let old-fingers be the fingers of M;
	compute M getting fingers into F;
	if the fingers of M > old-fingers:
		if the fingers of M is 6:
			say "The [M] keeps pushing with all her might, and all of a sudden, her whole fist slides in!";
			say "[variable custom style][if the relevant sex addiction of M < 8]'AAAAAAAAAH!'[otherwise if the relevant sex addiction of M < 14]There's no way...?!?! Oh my god, it's really happening, I'm being fisted![otherwise]She got the whole fist in, I'm so proud!  Fist fuck me, baby![end if][roman type][line break]";
			if image cutscenes is 1:
				if the player is male or F is vagina, display figure of wrestler cutscene 2;
				otherwise display figure of wrestler cutscene 3;
		otherwise:
			say "The [M], having loosened you up, finds room for another finger!  She now has [fingers of M] fingers inside your [variable F].  She continues her furious thrusting!";
	otherwise:
		say "The [M] keeps thrusting away, [one of]using her strong muscles to keep the pounding strong and hard[or]varying the speed of her pumps to keep you on your toes[or]putting her body weight into it[in random order].  Your [variable F] struggles to keep up with her girth and speed!";
	decrease the sex-length of M by 1.

To TimesFuckedUp (M - a wrestler):
	if the excitement of M > 0:
		DifficultyDown M by 5 + the times-dominated of M;
		decrease the excitement of M by 1;
	increase the times-fucked of M by 1.

To compute unique climax of (M - a wrestler) in (F - a fuckhole):
	compute M leaving F.

To compute (M - a wrestler) leaving (F - a fuckhole):
	say "The [M] pulls her [if the fingers of M is 6]fist out of your [variable F] with a loud POP.  [otherwise]fingers slowly out of your [variable F].  [end if]It looks like she's satisfied with herself.";
	say "[second custom style]'That was fun.  Let's do it again soon.'[roman type][line break]The [M] seems to lose interest in you for now.";
	FavourUp M;
	bore M.
	
To say StrikingFlav of (M - a wrestler) on (B - a body part):
	say "The [M] grapples you, gripping your [if B is breasts][BreastDesc][otherwise]waist[end if] tightly!  She throws you into the close-by wall!  Oof.  ".

To say StrikingSuccessFlav of (M - a wrestler) on (B - a body part):
	say "[StrikingFlav of M on B]";
	say "[if there are worn heels]You barely manage to stay on your feet.[otherwise]You stagger slightly as you regain your footing.[end if]".

To say StrikingFailureFlav of (M - a wrestler) on (B - a body part):
	say "[StrikingFlav of M on B]";
	say "You manage to recover gracefully without any [unless the body soreness of the player is 0]more [end if]bruises.".

This is the wrestler friendly convinced rule:
	if presented-orifice is face:[she rejects you if you're gagged.]
		if there is a worn chastity cage or the player is gagged or (the player is male and the size of penis is 0) or (the player is female and vagina is actually occupied):
			if watersports fetish is 1, compute friendly drink of current-monster;
			otherwise say "[PresentFriendlyRejectionFlav of current-monster]";
		otherwise:
			say "The [current-monster] unzips her catsuit revealing a very wet, rosy [vagina]. [one of]She eagerly pushes your head between her legs, spreading her engorged outer lips as [if the oral sex addiction of the player < 3]you hesitantly push your tongue into her needy folds.[otherwise]you begin to using your tongue to please her tender folds.[end if] [speech style of current-monster]'Hey, wait a sec. Why don[']t I get down there and do some licking of my own? You keep going, and we[']ll see who comes first!'[or][speech style of current-monster]'Want to see which of us comes first? I[']m betting on you!'[stopping][roman type][line break]";
			if the player consents:
				now chosen-orifice of current-monster is face;
				now current-monster is friendly-fucking;
				compute current-monster entering mouth;
			otherwise if watersports fetish is 1:
				say "[speech style of current-monster]'Oh. Well, this should be fun at least!'[roman type] She rubs her clit as she begins to pee in your face!";
				FacePiss;
			otherwise:
				say "[speech style of current-monster]'Oh well. I'll be up for it if you change your mind!'[roman type]";
	otherwise if presented-orifice is a reasonable target:
		now the chosen-orifice of current-monster is presented-orifice;
		say "[PresentFriendlyAcceptanceFlav of current-monster]";
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentFriendlyRejectionFlav of current-monster]".
The monster friendly convinced rule of a wrestler is usually the wrestler friendly convinced rule.

To say PresentFriendlyRejectionFlav of (M - a wrestler):
	say "[speech style of M]'Not really interested, sorry!'[roman type][line break]".
	
To compute (M - a wrestler) entering mouth:
	now the sex-length of M is the blue-balls of M + 3;
	if the sex-length of M > 7, now the sex-length of M is 7;
	say "[FriendlyMouthPenetrationFlav of M]";
	now M is penetrating face;
	if the player is female, now M is penetrating vagina;

To say FriendlyMouthPenetrationFlav of (M - a wrestler):
	let C be a random worn top level protection clothing;
	if C is clothing:
		if C is displacable, displace C;
		otherwise now C is in the location of the player;
	say "The [M] joins you on the floor, [if C is clothing and the size of penis <= the armour of C and the size of penis > 2]fishing your [ShortDesc of penis] out of your [printed name of C][otherwise if C is clothing]pulling down your [printed name of C][otherwise if the player is male]stroking your [ShortDesc of penis][otherwise]eagerly licking your outer lips[end if] as she pulls you on top of her. [if the oral sex addiction of the player < 3][one of]Already feeling her probing tongue on your [genitals], you lean in and start some hesitant probing of your own.[or]You take the time to build up some extra courage before hesitantly forcing your tongue to work.[at random][otherwise if the oral sex addiction of the player < 7][one of]Already feeling her probing tongue on your [genitals], you lean in and do some eager probing of your own.[or]You find yourself ruminating on how enticing her [vagina] looks for a moment before diving in.[at random][otherwise][one of]You don't even wait for her to start, eagerly shoving your face in her crotch and sending your tongue to work[or]You immediately dive in, desperate to get a taste of her beautiful crotch.[at random][end if]".

To compute facial sex of (M - a wrestler):
	let P be a random patron in the location of the player;
	unless P is patron:
		let N be a random off-stage patron;[we use N so it's not picked up by the next clause]
		let R be a random number between 1 and the sex-length of M;
		decrease R by the blue-balls of M;
		if R < 0:[if her blue-balls is 2 or more, a patron has a chance of showing up. Chance gets higher the closer she is to orgasm.]
			now N is in the location of the player;
			say "A stranger walks past the doorway and does a double take. [speech style of N]'What do we have here?'[roman type] You watch as he strips off his pants and immediately begins stroking his rapidly hardening cock. He must think this is some sort of show!";
	if the reaction of the player is 0:
		say OralResisting of M;
	if P is patron and P is not penetrating asshole and a random number between 1 and 2 is 1 and the number of things penetrating asshole is 0:
		say "The [M] suddenly stops what she[']s doing to talk to the [P]![line break][speech style of M]'Hey, why don[']t you join in? We have a spot for you right here!'[roman type] She pushes your asscheeks apart, and [if the anal sex addiction of the player < 4]to your horror[otherwise if the anal sex addiction of the player < 8]to your [italic type]total[roman type] surprise[otherwise]to your delight[end if] the [P] immediately climbs on top of you and [if the openness of asshole < 2]forces[otherwise if the openness of asshole < 6]pushes[otherwise]slides[end if] his [manly-penis] into your [asshole].[line break][speech style of P]'[one of]Sweet![or]Finally.[or]About time.[or]I hope this is ok!'[at random][roman type][line break]";
		if the sex-length of M < 4, now the sex-length of M is 4;
		now P is penetrating asshole;
	otherwise if P is patron and P is penetrating asshole:
		say OralResistingResponse of M;
	otherwise:
		say OralSubmissionResponse of M;		
	if P is patron:
		if P is penetrating asshole:
			say "[WrestlerAnal of P]";
		otherwise:
			say "The [P] continues jerking off to the sight in front of him.[line break]";
	unless (the reaction of the player is 0 and the number of patrons penetrating asshole is 0), decrease the sex-length of M by 1.


To say WrestlerAnal of (P - a patron):
	say "The [P] grunts with pleasure as he pounds your [asshole].[line break]";
	
To say OralResisting of (M - a wrestler):
	say "[one of]You refuse to lick out the [M].[or]You refuse to pleasure the [M].[or]You keep your tongue in your mouth, away from the [M]'s pussy.[or]You neglect the needy pussy in front of you.[or]You keep your mouth tightly closed, unwilling to pleasure the [M].[at random][line break]".

To say SexSubmissionFlav of (M - a wrestler):
	let P be a random patron in the location of the player;
	if (P is patron and P is penetrating asshole) or M is not penetrating face, say "[one of]You lie still and endure the punishment.[or]You submit to being used as a plaything.[or]You don't resist her punishment.[purely at random]";
	otherwise say "[one of]You dig your tongue into the [M]'s pussy, taking in her feminine smell and taste[or]You roll the tip of your tongue around the [M]'s clit, trying to tease out an orgasm![or]You stroke the [M]'s labia with your tongue as your [LipDesc] bump her clit.[or]You [if the oral sex addiction of the player > 5]happily[otherwise]hesitantly[end if] stroke her delicate folds with your tongue.[or]You push your tongue into the [M]'s [vagina], [if the oral sex addiction of the player > 6]eagerly[otherwise]dutifully[end if] licking up her feminine moisture.[at random]".

To say FriendlySexSubmissionFlav of (M - a wrestler):
	if the number of patrons penetrating asshole > 0:
		say "You lie there and accept the invasion";
	otherwise if M is penetrating face:
		say SexSubmissionFlav of M;
	otherwise:[You're getting fisted]
		say "[one of]You lie there, forcing yourself to endure the [M]'s brutal punishment.[or]You endure the brutal punishment.[or]You force yourself to sit through the punishment.[at random]".

To say OralSubmissionResponse of (M - a wrestler):[This is only called if the player is not currently getting fucked by a patron.]
	if the size of penis > 6:
		say "[one of]The [M] slurps away at your [ShortDesc of penis], moaning to herself as her tongue strokes your throbbing length.[or]The [M] eases your [ShortDesc of penis] into her throat, pleasuring you with expert movements of her tongue and neck.[or]The [M] makes noisy slurping noises as she works your shaft from below.[or]The [M] sucks your [manly-penis] with unbridled enthusiasm.[or]The [M]'s nose bumps your sack as she works your [manly-penis], stimulating it with expert movements of her tongue and throat.[at random]";
	otherwise if the size of penis > 2:
		say "[one of]The [M] slurps away at your [Shortdesc of penis], teasing your most sensitive parts with her tongue.[or]The [M] keeps her lips firmly sealed to the base of your [manly-penis], mercilessly pleasuring you with her tongue.[or]The [M] sucks relentlessly, practically torturing you with expert stimulation from her lips and tongue.[or]The [M] hums as she suckles your [ShortDesc of penis], having no issue at all driving you insane with pleasure.[or]The [M] pleasures you mercilessly, swirling her tongue around your tip as she steadily works you over with her lips.[at random]";
	otherwise if the player is male:
		say "[one of]The [M] relentlessly teases your [Shortdesc of penis] with her tongue[or]The [M] skilfully runs her tongue over your genitals, coating the entire area in spit.[or]The [M] teases your [Shortdesc of penis] with the very tip of her tongue, as if stimulating a clitoris[or]The [M] pleasures you mercilessly with her tongue.[or]The [M]'s tongue dances over your [sissy-penis] and taint, driving you insane with expert stimulation.[at random]";
	otherwise:
		say "[one of]The [M] teases your clit with the tip of her tongue, driving you insane with expert stimulation[or]The [M] pushes her tongue in and out of your [vagina], hugging your clit with her lower lip.[or]The [M] stimulates your labia and clit with her tongue, pistoning her fingers in and out of your pussy[or]The [M] slurps away at your pussy, practically torturing you with her expert tongue.[at random]";
	let O be 0;
	let R be male orgasm chance;
	decrease R by (3 - the sex-length of M);
	let C be a random number between 1 and R;
	if C <= 1:
		now O is 1;
		say "[line break][one of]It's just too much for you, and you cum[or]You try to hold back, but it's too good! Your eyes roll back as you cum[or]It feels way too good to hold back, and you cum[at random], [run paragraph on]";
	if O is 1:
		if the sex-length of M is 0, now the sex-length of M is 1;[this way we know the player is the one having the orgasm.]
		compute facial climax of M;
	say "[line break]".

To say OralResistingResponse of (M - a wrestler):
	let P be a random patron in the location of the player;
	say "[line break][one of]The [M] continues holding you for the [P].[or]The [M] holds you down to make sure the [P] can fuck you as deep and hard as possible[or]The [M] eggs on the [P]. [speech style of M]'Fuck [if the player is male]him[otherwise]her[end if] harder!'[roman type][or]The [M] spreads your asscheeks for the [P], egging him on[at random][line break]".

	
To compute facial climax of (M - a wrestler):
	let P be a random patron in the location of the player;
	if the sex-length of M > 0:[we know at this point that the patron isn't inside you so no point checking for butt stuff.]
		if the player is male:
			say "[if the size of penis > 4]groaning[otherwise]moaning[end if] with pleasure as [if the size of penis < 4]your [sissy-penis] dribbles a pitifully tiny load into the [M]'s mouth[otherwise if the size of penis < 7]you shoot your load straight into the [M]'s mouth[otherwise]shoot a massive load straight down the [M]'s throat[end if]. She [if the size of penis > 6]releases your [manly-penis] from her mouth, swallowing[otherwise]swallows it [end if] with a self-satisfied giggle and crawls out from underneath you.";
		otherwise:
			say "moaning with pleasure as you squirt all over the [M]'s face. She giggles, slowly crawling out from underneath you.";
		say "[line break][speech style of M][one of]Looks like I win![or]I win! I'm game if you want another try later, though.[or]I win again![cycling][roman type]";
		now the sex-length of M is 0;
		now player-fucking is 1;
		orgasm;
		now player-fucking is 0;
		now refactoryperiod is 3;
		decrease the blue-balls of M by 1;[no change]
	otherwise if P is not patron or P is not penetrating asshole:
		let G be a random off-stage accessory;
		now G is sapphire;
		if the blue-balls of M > 2, now G is emerald;
		if the blue-balls of M > 4, now G is ruby;
		now G is held by the player;
		say "The [M] bucks her hips, moaning with pleasure as she sprays you with fem cum. [speech style of M]Ooooh! Yeah! That was awesome![roman type] [line break]She lies there panting for a few seconds before gently pushing you off and climbing to her feet. [speech style of M]I was going a little easy on you, but I still came first, so...[roman type] She grins, pulling out a [printed name of G] and places it in your hand.";
	otherwise:
		say "[one of]The [P] slams himself home, groaning with pleasure as he floods your [asshole] with thick, warm [semen][or]The [M] shoves his [manly-penis] in as deep as it will go, grunting like an animal as he unloads straight up your ass[or]The [P]'s cock throbs powerfully, shooting rope after rope of warm [semen] directly into your [asshole][or]The [P] groans with pleasure, driving his [manly-penis] in nice and deep as it shoots its load directly into your [asshole][at random].";
		now P is not penetrating asshole;
		say "[if the reaction of the player is 0]You do your best to struggle, but the [M] easily holds[otherwise]You don't struggle, but the [M] insists on holding[end if] you down, only letting go when he is completely and thoroughly finished emptying himself inside you. [speech style of M]Join us anytime baby![roman type]";
	if P is patron and P is not penetrating asshole:
		say "[line break]The [P] jizzes on the floor and leaves the same way he came.";
		SemenPuddleUp the semen load of P;
	now M is not penetrating face;
	now M is not penetrating vagina;
	increase the blue-balls of M by 1;
	if P is patron, destroy P.

This is the wrestler uses your diaper rule:
	let M be current-monster;
	if the player is diaper focused:
		let D be a random worn diaper;
		if watersports fetish is 1:
			let C be the coverer of D;
			if C is clothing:
				compute M attacking C;
			otherwise:
				now C is a random worn overdress;
				say "The [M] pulls up the rear of the waistband of your [D] and squats over your back.  She starts peeing!";
				PissSoak 6 on D;
				if C is clothing, PissSoak 6 on C;
				satisfy M;
		otherwise:
			say "The [M] gives you a strong spanking through your [D]!  [speech style of M]'[one of]Do you like to get treated like a bad girl, huh?  Take this!'[or]Time for your punishment, loser!'[or]When you're in a big nappy like that, there's only one appropriate way to punish you!'[in random order][roman type][line break]SMACK SMACK THWACK SMACK[line break][variable custom style]Ow ow ow![roman type][line break]";
			DelicateUp 1;
			satisfy M;
		rule succeeds.
The diaper punishment rule of a wrestler is usually the wrestler uses your diaper rule.	

Section 2 - Damage	

To compute damage of (M - a wrestler):
	if the health of M > 0:
		if M is uninterested:
			say "The girl looks shocked.  [second custom style]'Ooh, I didn't know you wanted to fight!  Why didn't you just say so?'[roman type][line break]";
			now M is interested;
			anger M;
		otherwise if the health of M < the maxhealth of M / 2 and the excitement of M is -1 and the times-dominated of M > 0:
			say "[speech style of M]Haha, is that really all you[']ve got? Looks like its my turn to be on top![roman type] The [M] seems to change her stance! Looks like this will be harder than you thought!";
			DifficultyUp M by 5 + the times-dominated of M;
			increase the health of M by 15;
			now the excitement of M is 1;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		now the sleep of M is 0;
		if the health of M <= 0:
			compute death of M.

To say DamageReaction (N - a number) of (M - a wrestler):
	if N > (the maxhealth of M / 4) * 3:
		say "[big he of M] looks [one of][or]even [stopping]more excited than [he of M] did already!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "[big he of M] takes the hit, [one of]somehow [or][stopping]even more turned on by the pain!";
	otherwise if N > (the maxhealth of M / 4):
		say "[big he of M] yelps in pain!  [one of]It was a very sexual yelp, though...[or][line break][stopping]";
	otherwise:
		say "[big he of M] [i]coos[/i] in pain, [if the intelligence of the player > 5]intentionally jiggling her tits[otherwise]causing her tits to jiggle[end if] as she fights to maintain her balance.".

To compute unique death of (M - a wrestler):
	say "She [if the sleep of M is 0]drops to the ground, dead[otherwise]stops breathing[end if].  Her body disappears.";		
	loot M.

Section 3 - Dominant Sex

To say DominanceSuccess of (M - a wrestler):
	say "You slam the [M] against a wall, pushing her to her knees as you [if there is bottom level protection clothing]fish your [ShortDesc of penis] out of your pants[otherwise if the player is a bit horny]slowly pump your [ShortDesc of penis][otherwise]slowly pump your hardening cock[end if].[line break]";
	if the size of penis > 8:
		say "[speech style of M]'So...BIG...'[roman type] A little bit of drool rolls out of the [M]'s mouth as she stares at your [manly-penis]. [if watersports fetish is 1 and the player is desperate to pee][speech style of M]'Please make me your toilet. Please let me drink your [one of]urine[or]piss[or]pee[at random]...'[roman type][otherwise][speech style of M]'Please fuck my mouth. Please give me all your [semen]...'[end if] She pulls her mouth wide open, tongue lolling out as she gazes up at you, begging desperately for a taste of whatever you have to give her. You slam it in without a moment of hesitation, pinning her wrists against the wall as your [manly-penis] hits the back of her throat. She doesn't put up a shred of resistance, moaning reverently as you repeatedly gag her on your monstrous tool.  She face-fucks herself with even more enthusiasm whenever there's any space between strokes. It's too intense, and before you've had a chance to really show her what you've got, your [ShortDesc of penis] is buried in her throat, pumping a [load] directly into her hungry belly.";
		orgasm;
		if watersports fetish is 1 and the player is desperate to pee:
			say "But even as she swallows wave after wave of [semen], the look in her eye as you pull out tells you she still isn[']t satisfied. You tilt her head up, relief washing over your body as you empty your bladder directly into her mouth, and then all over her face. She swallows as you step away, straightening up.";
			Dignify 100;
			now the bladder of the player is 0;
			say "[AfterDominationComment 1 of M]";
		otherwise:
			say "You pull out slowly, allowing her to fully clean your softening shaft with her tongue as you stretch and straighten up.";
			Dignify 50;
			say "[AfterDominationComment 2 of M]";
	otherwise if the size of penis > 3:[TODO: below]
		say "[if watersports fetish is 1 and the player is desperate to pee][speech style of M]'Looks like it's my turn to be the toilet! Don't worry, I'll swallow every drop of your [one of]urine[or]piss[or]pee[at random].'[roman type][otherwise][speech style of M]'I'm on the bottom again! Ooh! I'm gonna swallow every last drop! Just watch!'[roman type][end if] She grabs your [ShortDesc of penis] with [if the size of penis > 6]both hands[otherwise]one hand[end if], glancing up at you as she accepts it into her mouth. Her eyes roll as she pushes further and further onto your meat, her tongue lapping at the underside of your shaft. She soon removes [if the size of penis > 6]her hands, emitting a happy noise[otherwise]her hand, humming proudly[end if] as her nose bumps up against your belly, and you feel her lower lip against your sack.";
		if watersports fetish is 1 and the player is desperate to pee:
			say "It's just not in you not to give her what she wants, and with a heavy sigh you allow all your stress to flow out directly [if the size of penis > 6]into her belly, filling it with frothy warmth[otherwise]into her mouth, filling her belly with frothy warm[end if]. True to her word she swallows every drop, licking her lips as you step away and straighten up.";
			Dignify 50;
			now the bladder of the player is 0;
			say "[AfterDominationComment 1 of M]";
		otherwise:
			say "It's just not in you not to give her what she wants, and with a guttural groan you come [if the size of penis > 6]straight down her throat.[otherwise]directly into her mouth[end if], filling her hungry belly with your [load].";
			orgasm;
			Dignify 25;
			say "[AfterDominationComment 2 of M]";
	otherwise if the size of penis > 0:
		say "[if watersports fetish is 1 and the player is desperate to pee][speech style of M]'[one of]Oh wow! I didn't even know dicks could get that small! Please, I have to know what your piss tastes like!'[or]I never get tired of your tiny cock! Let me have another taste of that yummy piss!'[stopping][roman type][otherwise][speech style of M]'[one of]Is that actually your penis? So cute! Please let me taste your cum!'[or]I don't care how your penis got so small, all I know is that tiny sissy penises make the best-tasting cum!'[stopping][roman type][end if] She opens her mouth wide, gesturing to her outstretched tongue with a latex-clad finger. When you got her to on knees, you thought it was too good to be true, but now here she is, begging for a drink of your [if watersports fetish is 1 and the player is desperate to pee][urine][otherwise][semen][end if]!";
		if watersports fetish is 1 and the player is desperate to pee:
			say "You immediately release your hold on your bladder, allowing a shudder of relief to pass through your body as you douse the [M] in a stream of golden [urine]. She pushes her breasts together enticingly as she captures it in her mouth, making a show of swallowing it in one huge gulp as she suddenly gets up and kisses you square on the lips. Wow!";
			Dignify 10;
			now the bladder of the player is 0;
			if a random number between 1 and 2 is 1:
				Dignify 10;
				UrineTasteAddictUp 1;
		otherwise:
			orgasm;
			say "You immediately begin to masturbate, moaning uncontrollably as you blow your load in [if the player is horny]six[otherwise if the player is a bit horny]eight[otherwise]ten[end if] seconds flat, filling her mouth with a disproportionally large helping of fresh [semen]. She slowly stands up, beaming through her mouthful of cum as she suddenly kisses you on the lips! You have no choice but to drink some of your own load, torn between arousal and [if the semen taste addiction of the player < 7]disgust[otherwise]thirst[end if] as she pulls away and swallows the rest herself.";
			Dignify 5;
			if a random number between 1 and 2 is 1:
				SemenAddictUp 1;
			otherwise:
				StomachSemenUp 1;
		say "[AfterDominationComment 2 of M]";
	otherwise:
		oral dominate M.

To oral dominate (M - a wrestler):[TODO: update so it fits the wrestler]
	Dignify 20;
	if the player is male:
		say "You force the [M] onto her back, sitting on her face. [if the bimbo of the player < 12][first custom style]'[one of]No offence meant[or]Nothing personal[at random], I promise.'  [otherwise][second custom style]'Let's see how you like it!'  [end if][roman type]Pulling your asscheeks apart, you position your [asshole] over her mouth, scooting back slightly to cut off any airflow to her nose. She whines petulantly, trying to squirm free, failing because she is weak from the preceding fight. Reluctantly, she opens her mouth and begins to massage your sphincter with her tongue. ";
		if the semen volume of belly > 0:
			say "You sigh in pleasure, the sensations causing your anal muscles to loosen and push [semen] out onto her face. The wench immediately starts enjoying herself a lot more, grabbing your thighs and beginning to eagerly thrust her tongue in and out of your [asshole]. It's fun having someone clean out your [asshole] when everyone else here seems bent on violating it, but eventually you grow bored and get up.";
			decrease the semen volume of belly by a random number between 1 and the semen volume of belly;
		otherwise:
			say "You take the opportunity to play with her breasts, pinching and rubbing her [one of]pink[or]brown[stopping] nipples until they are tight and red. However, it doesn't really feel all that great for you, so you eventually grow bored and climb to your feet.";
		say "[AfterDominationComment 2 of M]";
	otherwise:
		if the player is desperate to pee and watersports fetish is 1:
			say "You force the [M] to her knees, pulling apart your pussy lips as you release your hold on your bladder.  She closes her eyes and angles her face toward your [vagina] as best she can. You sigh as your [urine] streams onto her face and breasts.";
			now the bladder of the player is 0;
			say "[AfterDominationComment 1 of M]";
		otherwise:
			say "You force the [M] onto her back, sitting on her face. [if the bimbo of the player < 12][first custom style]'[one of]No offence meant[or]Nothing personal[at random], I promise.'  [otherwise][second custom style]'Let's see how you like it!'  [end if][roman type] ";
			if the semen volume of vagina > 0 and the pregnancy of the player is 0:
				say "Pulling your asscheeks apart, you position your dripping wet folds over her mouth and your [asshole] over her nose, cutting off her airflow. She squirms petulantly, weakly clawing at your thighs to try and make you get up, but fails because she is weakened from the preceding fight. Reluctantly, she opens her mouth and pushes her tongue into your [vagina].  You sigh in pleasure, the massaging your breasts as the sensations cause your vaginal muscles to loosen and allow [semen] to dribble out onto her face. The wench grabs your thighs, suddenly a lot more eager to fuck you with her tongue. You reach back to rub her gash, which she was probably planning to have you clean out yourself. You're sure you'd be able to orgasm if the wench continued on like this, but the slipperiness of the [semen] drooling out of your pussy makes you a lot less sensitive. So, you eventually grow bored and stand up.";
				now the semen volume of vagina is 0;
			otherwise if the player is a bit horny:
				say "Pulling your asscheeks apart, you position your dripping wet folds over her mouth and your [asshole] over her nose, cutting off her airflow. She squirms petulantly, weakly clawing at your thighs to try and make you get up, but fails because she is weakened from the preceding fight. Reluctantly, she opens her mouth and pushes her tongue into your [vagina].  You massage your [BreastDesc], cooing happily as the pleasure builds. She doesn't forget to work your clitoris, stroking it faster and faster as your voice rises. You tighten your thighs, groaning with pleasure as your arousal subsides and orgasm wracks your body. Having thoroughly soaked the wench with your girlcum, you stand up.";
				orgasm;
			otherwise:
				say "Pulling your asscheeks apart, you position your [vagina] over her mouth and your [asshole] over her nose, cutting off her airflow. She squirms petulantly, weakly clawing at your thighs to try and make you get up, but fails because she is weakened from the preceding fight. Reluctantly, she opens her mouth and pushes her tongue into your folds.  You take the opportunity to play with her breasts, pinching and rubbing her [one of]pink[or]brown[stopping] nipples until they are tight and red. She doesn't forget about your clit, gently pushing it back and forth in hopes of making you orgasm. It feels good, but eventually you grow bored and climb to your feet.";
			say "[AfterDominationComment 2 of M]".

To compute successful dominance of (M - a wrestler):[She doesn't increase her difficulty until later]
	compute unique dominance reward of M;
	if the player is male, check virginity;
	increase the times-dominated of M by 1;
	now the excitement of M is -1;
	say "[line break]The [M] slinks away as soon as she has the strength.[line break]You feel more [if the player is male]manly[otherwise]dominant[end if]!".

To say AfterDominationComment (N - a number) of (M - a wrestler):
	if N is 1, say "[second custom style]'[one of]Thanks for the yummy piss!'[or]Thanks for making me your toilet!'[or]I love toilet time...'[at random][roman type]";
	if N is 2, say "[second custom style]'[one of]You should come see my mistress sometime![or]There's no way I'm gonna let myself lose to you again! Get ready, hot stuff!'[or]Let's see if you can beat me like that next time, sexy!'[at random][roman type]".

[To compute failed dominance punishment of (M - a wrestler):TODO
	humiliate 30;
	if the number of worn not sissifying removable clothing > 0:
		compute angry punishment of M;
	otherwise:
		say "The [M] seems to lose interest you and begins walking off, but it looks like the game isn[']t done with you yet!";
		compute sissification.]

Part 4 - Friendly Sex	

To compute FriendlySexRelease of (M - a wrestler):
	if M is penetrating asshole and the fingers of M > 5:
		say "[speech style of M]'No way! Try again when I meet someone else who can take the whole fist!'[roman type] The [M] refuses to let you go!";
	otherwise if the number of patrons penetrating asshole > 0:
		say "[speech style of M]'[one of]Come on, he[']s having fun!'[or]But he[']s so into it!'[or]But this is so fun!'[at random][roman type] The [M] refuses to let you go!";
	otherwise if watersports fetish is 1:
		say "[speech style of M]'Aww, alright.'[roman type] The [M] [if M is penetrating asshole]gently removes her fingers from your [asshole], unzipping her crotch as she rises to her feet.[otherwise]crawls out from under you and rises to her feet.[end if][speech style of M]'If you couldn[']t handle that...I guess I'll have to settle for toilet time!'[roman type] She mashes her pussy into your face, and before you can react, begins pissing straight into your mouth. You know there[']s nothing you can do as the warm, salty [urine] hits your tongue, and [if the humiliation of the player < 34000]reluctantly[otherwise]eagerly[end if] allow her to use you as a literal human toilet.";
		StomachUp 3;
		increase the blue-balls of M by 1;[In the future, watersports players will use this for greetings.]
		dislodge M;
	otherwise if M is willing to let go:
		say FriendlySexReleaseFlav of M;
		increase the blue-balls of M by 1;
		dislodge M;
	otherwise:
		say FriendlySexReleaseRefusalFlav of M;
	if the number of monsters penetrating face + the number of monsters penetrating asshole is 0:
		repeat with P running through patrons in the location of the player:
			destroy P.

To decide which number is the blue-balls-limit of (M - a wrestler):
	decide on 5.

To say FriendlySexReleaseFlav of (M - a monster):
	if M is intelligent, say FriendlySexReleaseSpeech of M;
	say "The [M] [if M is penetrating asshole]pulls out.[otherwise]crawls out from underneath you.[end if].".

To say FriendlySexReleaseSpeech of (M - a wrestler):
	say "[speech style of M]'Alright, but I won[']t go easy on you like this forever!!'[roman type][line break]".

To say FriendlySexReleaseRefusalSpeech of (M - a wrestler):
	say "[speech style of M]'[one of]No way! Playing with you is way too fun!'[or]Don[']t wimp out, I know you can take it!'[or]I know you can take it, sexy!'[or]No way, I know you can take it!'[in random order][roman type][line break]".

Part 5 - Conversation

Section 1 - Greeting

To compute talk option (N - 1) to (M - a wrestler):
	if times-met is 0, now times-met is 1; [this is a failsafe to make sure the first time greeting never displays twice.]
	let B be a random number from 1 to 4; [variable used so we can refer to bimbo seduce in the next function]
	let seduced be 0;
	if the player is seductive and B is 1 and M is raunchy:
		say "[BimboSeduce of M]";
		now seduced is 1;
		now M is interested; [This is to make sure we pass to the greeting response function]
	otherwise if M is penetrating a fuckhole and M is unfriendly:
		say "[ToDominantGreeting of M]";
	otherwise if M is penetrating a fuckhole:
		say "[ToPartnerGreeting of M]";
	otherwise if there is a monster penetrating a fuckhole:
		if a random monster penetrating a fuckhole is unfriendly, say "[midDominanceGreeting of M]"; [is the player currently being dominated by another monster?]
		otherwise say "[InSexGreeting of M]"; [is the player currently having consensual sex]
	otherwise if the times-fucked of M > the times-dominated of M and M is unfriendly:[Allows times-fucked to increment without causing weird things]
		say "[DominantGreeting of M]";
	otherwise if the times-dominated of M > the times-fucked of M:
		say "[DominantGreeting of M]";
	otherwise if the times-met of M < 2:[by adding the unfriendly check we should go straight here.]
		say "[FirstGreeting of M]";
	otherwise:
		say "[RepeatGreeting of M]";
	if M is interested:
		if seduced is 0:
			compute greeting response of M;[This is something that should be specific to every monster]
		otherwise:
			say "[BimboSeduced of M]";
	otherwise:
		if M is intelligent, now the boredom of M is 0;
		check perception of M.

To say FirstResponse of (M - a wrestler):
	say "[second custom style]'Ooh, pleased to meet you!  Can we be friends?'[roman type][line break]".

To say RepeatResponse of (M - a wrestler):
	say "[second custom style]'[one of]Hey sexy.  How have things been going for you?'[or]Hey babe! Remind me to wrestle you sometime.'[or]Hi! [if largeness of breasts > 3]You know, I[']d really like a chance to play with those tits if you'd let me[otherwise]You know, I think you'd look really hot with big tits[end if].'[or]Hey! Have you met my mistress yet?'[or]Hey there. Maybe you and I should go put on a show for my mistress.'[at random][roman type][line break]".

To say UnfriendlyResponse of (M - a wrestler):
	say "[one of]The [M] ignores you.[or]The [M] smiles, silently retaining her aggressive stance[at random]".

To say SubmissiveResponse of (M - a wrestler):
	say "[second custom style]'[one of]Ooh, it[']s you again.  This time I[']m going to win!'[or]Ooh, I'm going to punch you for what you did to me. In a fun way!'[or]Earlier was SO much fun! Let's wrestle for next turn on top![or]Don[']t get used to winning! I[']ve been working out!'[or]I[']m always ready to wrestle some more! Losing is so much fun, though, you should try it some time.'[or]Oh yeah? I[']ll let my fingers do the talking on this one!'[or]This one is for the title of biggest slut! You[']re gonna win for sure!'[at random][roman type][line break]".

To say DominantResponse of (M - a wrestler):
	if M is friendly:
		say RepeatResponse of M;
	otherwise:
		say "[second custom style]'[one of]Ooh, I remember you.  Does this mean you want to go again?'[or]Hi! I hope you[']re ready to lose to me again because I'm ready to beat you!'[or]Hi there! You[']re not a very good wrestler, but don[']t worry, you[']re an awesome loser!'[or]What[']s up loser! Ready to wrestle again?'[at random][roman type][line break]".

To say midDominanceResponse of (M - a wrestler):
	if M is uninterested:
		say "The [M] grins.";[The wrestler should always aggro when she notices the player in combat, so there's not much reason to have her say anything here since she says something when she becomes aggressive.]
	otherwise:
		say "[second custom style]'[one of]Haha, I[']m going to join in too, don[']t worry!'[or]Get ready, we[']re going to gang up on you!'[or]If you can talk, it means you have room for one more!'[or]Hmm...'[or]I[']m gonna help out for sure!'[at random][roman type][line break]".
		
To say AsDominantResponse of (M - a wrestler):
	say "[second custom style]'[one of]Haha! Take it!'[or]Take it, loser!'[or]I know you love it!'[or]Wow, are you this talkative when guys fuck you?'[or]Scream, girl! I won[']t let up!'[at random][roman type][line break]".

Section 2 - Questioning

To say WhereAnswer of (M - a wrestler):
	say "[second custom style]'This is the fetish hotel Premier Sinn.  But since you're here, and dressed like that, surely you know that?'[roman type][line break]".

To say WhoAnswer of (M - a wrestler):
	say "[second custom style]'My owner just calls me [if watersports fetish is 1]Toilet[otherwise]Cumslut[end if]!'[roman type][line break]".
		
To say StoryAnswer of (M - a wrestler):
	say "[second custom style]'I love being dominated, and my owner loves dominating me.  We make a good match.  We come here to unwind and meet new playmates!'[roman type][line break]".

To say EscapeAnswer of (M - a wrestler):
	say "[second custom style]'What do you mean escape?  Who would want to leave this paradise?'[roman type][line break][if the bimbo of the player < 10][first custom style]'Wow, useful...'[roman type][end if]".

To say AdviceAnswer of (M - a wrestler):
	say "[second custom style]'[one of]Sometimes, it[']s better to crawl around than walk.  And I[']m not saying that just because I love to serve!'[or]Latex isn[']t absorbent like other materials, so it's easy clean up if you end up making a mess. It's not just fun to wear, it's practical too!'[or]Acting like a slut gets easier and easier as time goes on, but it never gets any harder. You can fight it, if you hate fun or something, but if you let a guy cum in your mouth once, you remember that feeling forever.'[or]Don[']t just eat candy as soon as you find it. Save it for when you need some energy!'[or]If you don't want the butler to force you to do stuff, always carry around a little bit of jewellery.'[or]Latex isn[']t very flexible. If you[']ve got rubber blocking your crotch, it's easier to tear it off than to move it out of the way. Sure, latex is durable, but it won't hold up forever. If you care about your clothes, take them off before a fuck, or you can just use a zipper like me!'[at random][roman type][line break]".

To compute annoyance of (M - a wrestler):
	if M is uninterested:
		say "The [M] doesn't seem to realize you are talking to her.[line break]";
	otherwise if M is unfriendly:
		say "The [M] ignores your question.  [second custom style]'You should stop talking and start moving if you want any chance of beating me in a fight!'[roman type][line break]";
	otherwise:
		say "[second custom style]'I'm bored of your questions.  I just want to follow you and watch your adventure unfold...'[roman type][line break]";

To compute teaching of (M - a wrestler):
	say "[second custom style]'When someone's shoving their massive cock up your you-know-where, it's important to be able to stay loose and let it happen, otherwise you won't enjoy it properly!  Here, let me show you how...'[roman type][line break]";
	teach relaxing;
	if the questioned of M <= 290:
		increase the questioned of M by 100;
	otherwise:
		increase the questioned of M by 50.

Section 3 - Drink Requesting

To compute friendly drink of (M - a wrestler):
	if the player is prone and watersports fetish is 1:
		say "The [M]'s eyes light up.  [second custom style]'One Toilet Special, coming right up!'[roman type][line break]The [M] doesn't give you a chance to ask what that means before she has unzipped her crotch and starting pissing straight at you!  [variable custom style][if the bimbo of the player < 6]Shit shit shit![otherwise if the bimbo of the player < 13]That's not what I meant...[otherwise]Ooh, yum![end if]";
		FacePiss;
	otherwise:
		say "[if watersports fetish is 1]You notice a naughty look in her eyes.  [second custom style]'[one of]Get on your knees and ask me again.'[or]Haha, sure! But only if you get on your knees first!'[or]Of course, why didn[']t you ask sooner? Get on your knees and open wide!'[or]Totally. Get on your knees and say the word, I[']ve got plenty for you.'[at random][otherwise][second custom style]Haha, no, does it look like this outfit has pockets?[end if][roman type]".
	
To compute unfriendly drink of (M - a wrestler):
	say "[second custom style]'[if watersports fetish is 1]Oh I'll give you a drink all right!'[otherwise]You should stop talking and start moving if you want any chance of beating me in a fight!'[end if][roman type][line break]";
	now M is interested;
	now the boredom of M is 0.

To say MonsterOfferAcceptFlav of (M - a wrestler) to (T - a thing):
	say "[speech style of M]'Oh wow, [if T is clothing]that'll look amazing on me[otherwise]that's perfect for my mistress[end if]!  Sure, I'll take that off your hands.'[roman type][line break]".

Section 4 - Food Requesting

Definition: a wrestler (called M) is willing to give snacks:
	decide yes.


Wrestler ends here.
