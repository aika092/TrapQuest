Demoness by Monster begins here.

A demoness is a kind of monster.  A demoness is usually woods dwelling.  A demoness is usually intelligent.  A demoness is usually raunchy.  A demoness is usually willing to do anal.  A demoness is usually willing to urinate. The favour of a demoness is usually 8. The leftover-type of a demoness is usually 105.

A demoness has a number called excitement. The excitement of a demoness is usually 0.

Understand "demon" as demoness. The description of demoness is usually "[DemonessDesc]".  

An infernal demoness is a kind of demoness.  There is 1 infernal demoness.
The printed name of infernal demoness is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]infernal demoness[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of infernal demoness is "ide".
An cackling demoness is a kind of demoness.  There is 1 cackling demoness.
The printed name of cackling demoness is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]cackling demoness[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of cackling demoness is "cde".
An fiery demoness is a kind of demoness.  There is 1 fiery demoness.
The printed name of fiery demoness is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]fiery demoness[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of fiery demoness is "fde".
An unholy demoness is a kind of demoness.  There is 1 unholy demoness.
The printed name of unholy demoness is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]unholy demoness[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of unholy demoness is "ude".

To say DemonessDesc:
	if images visible is 1, display the Figure of Demoness;
	say "An aura of terrifying evil surrounds this woman.  The demoness has a statuesque humanoid figure[if the item described is abyssal demoness], but her skin is a rich sea blue and although her face is slightly obscured by a black silk veil, you can tell her eyes are completely yellow. The air around her seems to shift and move as if covered in a fine layer of constantly moving water, and two curved horns give her head a decidedly aquatic profile[otherwise if the item described is abyssal demoness and pregnancy fetish is 1]. She is completely naked except for a pair of tall black heels with glass dildos for heels, and at least 3 months pregnant[otherwise if the item described is abyssal demoness]. She is wearing an extremely provocative black bikini top, tall black high heels with glass dildos for heels, and a matching nylon miniskirt, which only barely covers her crotch[otherwise if diaper quest is 1] and shiny red clothing[otherwise]. Her body is just a bit too perfect, and so much heat is emanating from her that the air around her slightly shimmers.  She is wearing an extremely provocative shiny red dress, and tall black heels with glass dildos for heels.  Two red horns rise up from her long blonde hair[end if][if doomed is 5]. Pink lightning ominously crackles around her...[otherwise].[end if]";
	if diaper quest is 0:
		if the bimbo of the player < 7:
			if the player is male, say "[first custom style][one of]She's smoking hot. I think it's a bad idea to ask if she wants to fuck, though.[or]This chick looks like she's DTF.[or]I normally think eating pussy is only for Beta faggots, but...I'd do a lot if I could fuck that chick.[or]Man, what is up with those heels? I'd hate to get hit with one of those.[or]Whoa, are those dildos on her heels? Maybe she'd let me stick one up her butt.[in random order]";
			otherwise say "[first custom style][one of]Wow, I can't believe how she's dressed. Slut.[or]Even someone that beautiful has to play to the male fantasies of this game. Ugh.[or]There is something supernatural about this woman.[or]Why not wear a T-shirt that says 'Hey men, come and get me!' Disgusting.[or]Those heels look like they pack a punch, even if they look ridiculous.[or]There's something foreboding about this woman.[in random order]";
		otherwise if the bimbo of the player < 12:
			say "[variable custom style][one of]She's stunning. I'm jealous.[or]Where did she get her outfit? It looks...comfy.[or]I don't think I'd win a fight against her, but for some reason...I want to try anyway?[or]Something about her makes me want to get on my knees.[or]She's so tall! If I want her to see me as an equal I'll have to find a way to get myself to her level.[or]She towers over me. I know it's only those heels, but it's strangely intimidating.[or]Something tells me I could be in a lot of pain if I don't submit to her wishes.[in random order]";
		otherwise:
			say "[second custom style][one of]Hee hee, I can almost see her boobs![or]Those heels look nice. I bet she'd be my friend if I had some of my own.[or]She looks like a skank. Just like me![or]She's so tall in those heels! Maybe looking down on guys is just as fun as going down on them?[in random order]";
		say "[roman type][line break]".
	
To set up (M - a demoness):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 7;
	if doomed is 5, DifficultyUp M by 1;
	now the health of M is the maxhealth of M;
	now the variety of M is 0;
	if diaper quest is 0:
		now M is willing to do oral;
		if trap fetish is 0, now M is willing to do vaginal.[disabled for non-futa people for now.]

To decide which number is the default favour of (M - a demoness):
	decide on 15.

This is the spawn initial demoness rule:
	if the number of alive demoness is 0:
		let M be a random woods dwelling demoness;
		summon M in the woods.
The spawn initial demoness rule is listed in the setting up woods monsters rules.

To decide which number is the girth of (M - a demoness):
	decide on 4.

To decide which number is the semen load of (M - a demoness):
	decide on 1 + the excitement of M.[if you don't resist, you have to deal with a much smaller load]

Definition: a demoness (called M) is concealment immune: [Can the monster ignore salves of concealment, butt slut, etc.]
	decide yes.

Definition: a demoness (called M) is able to remove cursed plugs: [Can the monster remove all butt plugs?]
	decide yes.

Definition: A demoness (called M) is willing to shag:
	if the sleep of M is 0 and the scared of M is 0 and the boredom of M < 120 and M is released and the difficulty of M > 4, decide yes;
	decide no.

Definition: a demoness (called M) is objectifying the player:
	if the class of the player is cheerleader, decide no;
	if (the bimbo of the player >= 20 or the appearance of the player >= 20), decide yes;
	if the appearance of the player > the bimbo tolerance of M, decide yes;
	if the delicateness of the player > 6 + the favour of M / 4, decide yes;
	decide no.

Part 1 - Misc Flavour

To say big he of (M - a demoness):
	say "She".

To say he of (M - a demoness):
	say "she".
To say big he of (M - a demoness):
	say "She".

To say him of (M - a demoness):
	say "her".

To say big his of (M - a demoness):
	say "Her".

To say his of (M - a demoness):
	say "her".

To say himself of (M - a demoness):
	say "herself".

To say SummoningFlav of (M - a demoness):
	if the location of the player is Woods30, say "You hear a piercing shriek from inside the statue, followed by a rash of cruel laughter. The patch of grass between the statue's legs catches fire, and a [printed name of M] materializes in a burst of flames, licking...something off her lower lip.";
	otherwise say "You hear the sound of inhuman laughter.".

To say speech style of (M - a demoness):
	say first custom style.

To compute (M - a monster) stomping (N - a demoness):
	if M is in the location of the player, say "Before she can react, the [N] has been pinned to the wall by the [M], and his [manly-penis] slid into her asshole.  She shrieks [first custom style]'You dare defile me?!'[roman type] but this turns into an undecipherable wail as he starts cumming.  Her belly stretches to contain all the [semen].  After she is full, he tosses her to the ground, where she promptly faints.";
	otherwise say "You hear a demoness screech [first custom style]'You dare defile me?!'[roman type] [if N is nearby]nearby, [otherwise]somewhere in the dungeon, [end if] followed by a wail of shame.";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

To say LeftoverDesc (N - 105):
	say "An unconscious demoness on the ground has a [if pregnancy fetish is 1]pregnant looking[otherwise]fully stretched[end if] belly and [semen] slowly flowing out of her [asshole].  The gem around her neck has shattered.[line break]".

Part 2 - Perception	

To decide which number is the bimbo tolerance of (M - a demoness):
	decide on 14.

Definition: a demoness (called M) is uniquely unfriendly:
	if M is objectifying the player, decide yes;
	if M is babifying the player, decide yes;
	if the class of the player is priestess, decide yes;
	decide no.

Definition: a demoness (called M) is ally:
	decide no.

Definition: a demoness (called M) is guardian:
	decide no.

Definition: a demoness (called M) is dealing:
	[unless the player is souled, decide no;]
	if the player is female:[The demoness is really eager to do business with virgins. She also offers an emergency plan B for pregnant customers!]
		if the virgin of the player is 1 and M is willing to do vaginal, decide yes;
		if the pregnancy of the player is 1 and M is willing to do vaginal, decide yes;
	unless M is willing to do oral, decide no;
	let S be the raw sex addiction of the player + the raw semen taste addiction of the player;[calculate once instead of twice]
	if S is 40, decide no;
	if S < the favour of M + 2, decide yes;
	if the class of the player is faerie, decide yes;
	decide no;

To compute perception of (M - a demoness):
	now M is interested;
	say "The [M] notices you[if the player is sluttily dressed][end if].  "; [The output for if the player is sluttily dressed occurs within the check itself.]
	let T be 1;
	if there are worn heels:
		repeat with H running through worn heels:
			if H is dildo heels or the heel-height of H > 3, now T is 0;
	if the player is flying:
		say "The demoness has noticed the player flying, this should be impossible since she lives in the woods.  Report the bug to Aika please!";
		anger M;
	otherwise if the latex-transformation of the player > 3:
		say "She doesn't seem interested for some reason.";
		bore M;
	otherwise if M is uniquely unfriendly:
		anger M;
		if the class of the player is priestess:
			say "Immediately upon seeing you, she shrieks: [speech style of M]Your holy aura has no power out here, mortal!  Get on your knees and submit to me as your new Mistress, or I will make you!'[roman type][line break][if M is friendly]Apparently she doesn't like priestesses...[end if]";
			if image cutscenes is 1, display figure of demoness interact 7;
			say "Your holy aura does seem to have some effect against her, as you are easily able to resist her dominating aura which tries to make you kneel on command.";
		otherwise:
			say "[speech style of M]'[if M is uninterested]You, whore!  [otherwise]You know what?  [end if][if the player is upright]Kneel down, I feel like ruining someone.'[otherwise]Stay down there, I'm going to punish you.'[end if][roman type][line break]Uh-oh...";
			if image cutscenes is 1, display figure of demoness interact 8;
			if a random number between 1 and 15 < the bimbo of the player and the player is upright and the player is not dildo stuck:
				say "The [M] has such a powerful dominating aura that you mindlessly drop to your knees in front of her[if the bimbo of the player > 8], nearly drooling at the thought of her heel drilling inside you[end if].";
				now seconds is 1;
				try kneeling;
	otherwise if T is 0 or the player-class is succubus:
		say "[speech style of M]'[if T is 0][one of]Oh wow, nice heels!  Where did you get them from?'[or]Glad to see you're still wearing proper heels.'[stopping][otherwise]Ah, a fellow servant of the Master.'[end if][roman type][line break]";
		calm M;
		if image cutscenes is 1, display figure of demoness interact 6;
	otherwise if the player is prone:
		if the thickness of hips > 4 and the number of worn cursed plug panties is 0 and the player is not diapered:
			say "[speech style of M]'Oh my, what a [tasty] looking ass you have.  I might just have to use it.'[roman type][line break]Uh-oh...";
			if image cutscenes is 1, display figure of demoness interact 8;
			anger M;
		otherwise if M is dealing:
			compute appearance assessment of M;[if you look worthy of a deal, she'll be interested]
		otherwise:
			say "[speech style of M]'Keep crawling, girl, nothing to see here.'[roman type][line break]";
			distract M;
			if image cutscenes is 1, display figure of demoness interact 5;
	otherwise if there are worn heels and T is 1:[we know by now that the player is upright]
		if M is friendly:
			say "[speech style of M]'Those heels are tiny.  How pathetic.'[roman type][line break]";
			distract M;
			if image cutscenes is 1, display figure of demoness interact 5;
		otherwise:
			say "[speech style of M]'I cannot abide you walking around in those awful shoes!  Get on your knees or face my wrath!'[roman type][line break]";
			if image cutscenes is 1, display figure of demoness interact 9;
			anger M;
			if a random number between 1 and 15 < the bimbo of the player and the player is not dildo stuck:
				say "The [M] has such a powerful dominating aura that you mindlessly drop to your knees in front of her[if the bimbo of the player > 8], nearly drooling at the thought of her heel drilling inside you[end if].";
				now seconds is 1;
				try kneeling;
	otherwise:[She's looking for suckers, not smart women who wear high heels.]
		compute appearance assessment of M.

To compute appearance assessment of (M - a demoness):
	say "[line break]She looks you up and down[run paragraph on]";
	if M is dealing:
		let R be a random number between 1 and 6;
		if the player is female and M is willing to do vaginal and the virgin of the player is 1:
			say ", unabashedly licking her lips as her eyes pass over your [vagina]. [one of][speech style of M]'[if R < 3]You know, that cherry of yours...it's worth a lot. I[']ll buy if you[']re selling, baby.'[otherwise if R is 3]Hey. I know a virgin when I see one, baby. Let me break you in and...let[']s say I can make it worth your while.'[otherwise if R is 4]You[']re still pure, aren[']t you, baby. Must be stressful. Tell you what. I[']ll help you relax. I[']ll even pay you. Sound good?'[otherwise]Wow, that's a pretty cute cherry you[']ve got there. Ever think about selling it? I[']d buy...'[end if][or][speech style of M]Deal is still open. Never too early...'[stopping][roman type][line break]";
			if image cutscenes is 1, display figure of demoness interact 1;
		otherwise if the pregnancy of the player is 1 and M is willing to do vaginal:
			say ", smoothly stepping toward you as she clicks her tongue. [speech style of M]'[one of][if R < 3]Wow, knocked up, huh? You know, I could fix that if you let me fuck you.'[otherwise if R < 5]I bet that belly of yours is a burden. If you let me fuck you, I can make it go away.'[otherwise]Wow, I bet you[']re regretting all that unprotected sex now, right? Lucky for you, when I fuck without a condom I can make pregnant bellies...go away. Deal?'[end if][or]Deal is still open. I know that belly must be heavy.'[stopping][roman type][line break]";
			if image cutscenes is 1, display figure of demoness interact 2;
		otherwise:
			say ", smoothly stepping toward you with a smirk. [speech style of M]'[one of][if R is 1]You know, if you need extra spending money, I could get you some. Or anything else, really. All you need to do is get on your knees and show me where you want it.'[otherwise if R is 2]Hey, if you[']re having trouble getting through here safely, I could help. All you need to do is get on your knees and tell me where you want it.'[otherwise if R < 5]Hey there, just letting you know...I have a way to help out if you feel a little overwhelmed...You[']ll just need to do a little job for me. Use whatever hole you want.'[otherwise]You[']re someone with very specific things to gain, am I right? Tell you what. Lend me your body and in return...I[']ll give you something you need.'[end if][or][if R is 5]My offer is still open, you know.'[otherwise if R is 1]I[']m still up for that deal, if you are.'[otherwise if R is 2]Deal is still on, by the way.'[otherwise if R is 3]I have things you want. The price isn't even that high. I just want to see what you[']re is capable of.'[otherwise if R is 4 and M is willing to do oral]It[']ll be easy, I promise. Like sucking on a lollipop.'[otherwise if R is 5]Just think of what you gain. Loads of people have done this before, do you see any of them trapped in here?'[otherwise]What[']s so scary about a great deal? You[']re missing out on so many possibilities.'[end if][stopping][roman type][line break]";
			if image cutscenes is 1, display figure of demoness interact 3;
		calm M;
	otherwise:
		say "[if there are worn heels], pausing briefly on your heels before losing interest.[otherwise], glancing at your feet before losing interest.[end if]";
		if image cutscenes is 1, display figure of demoness interact 4;
		distract M.

To compute DQ perception of (M - a demoness):
	now M is interested;
	say "The [M] notices you.  "; [The output for if the player is sluttily dressed occurs within the check itself.]
	if the player is flying:
		say "The demoness has noticed the player flying, this should be impossible since she lives in the woods.  Report the bug to Aika please!";
		anger M;
	otherwise if M is uniquely unfriendly:
		anger M;
		if the class of the player is priestess:
			say "Immediately upon seeing you, she shrieks: [speech style of M]Your holy aura has no power out here, mortal!  Get on your knees and submit to me as your new Mistress, or I will make you!'[roman type][line break][if M is friendly]Apparently she doesn't like priestesses...[end if]";
			say "Your holy aura does seem to have some effect against her, as you are easily able to resist her dominating aura which tries to make you kneel on command.";
		otherwise:
			say "[speech style of M]'[if M is uninterested]You, child!  [otherwise]You know what?  [end if][if the player is upright]Kneel down, I feel like punishing someone.'[otherwise]Stay down there, I'm going to punish you.'[end if][roman type][line break]Uh-oh...";
			if a random number between 1 and 15 < the bimbo of the player and the player is upright and the player is not dildo stuck:
				say "The [M] has such a powerful dominating aura that you mindlessly drop to your knees in front of her.";
				now seconds is 1;
				try kneeling;
	otherwise if (there is a worn diaper or the diaper-duration of M > 0) and the player is immobile:
		say "[big he of M] seems to decide to leave you alone for now.";
		distract M;
	otherwise if M is aware that the player needs a change: [Unless she's diaper training you, he demoness only checks diapers she knows are going to need a change]
		compute diaper check of M;
	otherwise if the diaper-duration of M > 0:
		if there is a worn diaper:
			compute diaper check of M;
		otherwise:
			say "[speech style of M]'Did you really think it was wise to disobey me?!  Did you think I wouldn't find out you have been ignoring my direct order to stay in diapers?  Oh, I'm going to make you regret that decision, little one...'[roman type][line break]";
			FavourDown M by 4;
			anger M;
	otherwise if M is unfriendly:
		say "[speech style of M]'You have yet to demonstrate your capacity for adulthood, little one.  There's only one proper way to treat someone like you...'[roman type][line break]";
		anger M;
		if a random number between 1 and 15 < the bimbo of the player and the player is not dildo stuck:
			say "The [M] has such a powerful dominating aura that you mindlessly drop to your knees in front of her.";
			now seconds is 1;
			try kneeling;
	otherwise:
		compute DQ appearance assessment of M;
		if M is interested: [She hasn't finished talking]
			if M is friendly and permanent makeup is 1:
				say "You know, there's a powerful well somewhere in these woods that I bet could help you with the magic charm on your face, if you donate generously enough.'[roman type][line break]";
			otherwise if M is acquaintance:
				say "For now, I give you permission to remain and bask in my glory.'[roman type][line break]";
			otherwise if M is friendly:
				say "You're not worth my trouble.'[roman type]  She turns to leave you alone.";
				distract M;
			otherwise:
				say "I believe it is my responsibility to teach you a lesson...'[roman type] She turns aggressive!".

To compute DQ appearance assessment of (M - a demoness):
	if there is a worn currently visible messed knickers: [probably impossible to happen now]
		say "[speech style of M]'[one of]Ugh, what a disgusting mess you've made for yourself!  You mortals are so revolting.  Don't expect me to ever treat you with respect again.'[or]You again!  Did you not learn from what I said last time?  How horribly revolting.'[stopping][roman type][line break]She turns to leave you alone.";
		FavourDown M by 6;
		distract M;
	otherwise if the cringe appearance of the player > 6:
		if M is buddy, say "[speech style of M]'Hmm, I'm not used to being seen with mortals who dress so... childishly.  I will excuse it this time, but I must demand that you change your attire soon.  ";
		otherwise say "[speech style of M]'You look like a pathetic child, which is the only thing worse than a pathetic moral adult.  Bear that in mind before you disgust me further.  ";
		FavourDown M by 2;
	otherwise if the appearance of the player > 7:
		say "[speech style of M]'Your slutty appearance betrays you, mortal.  You do know how we punish whores in this region, right?  I doubt you'd enjoy it.  ";
		FavourDown M by 2;
	otherwise:	
		say "[speech style of M]'Oh look, a puny mortal.  ".

Part 3 - Seeking

To compute (M - a demoness) seeking (D - a direction):
	try M going D;
	if M is in the location of the player and M is unfriendly and there is a worn heels:
		now the variety of M is 0;
		say "[one of][speech style of M]'Did you not hear me?!  On your knees bitch before I end you!'[roman type][line break][or][stopping]";
	compute motion reactions of M.


Part 4 - Combat

Carry out kneeling in the presence of a demoness:
	repeat with M running through dangerous demonesses in the location of the player:
		if M is abyssal demoness and the variety of M is 1:
			now the variety of M is 0;
			say "The [M] finishes her spell, and steps toward you intimidatingly.";
		otherwise if the variety of M is 1:
			now the variety of M is 0;
			say "The [M] stops channelling her energy into the floor, and it returns to its normal cold temperature.";
			HairRedUp 1;
	repeat with H running through worn clothing:
		now H is not stuck;
	repeat with H running through clothing in the location of the player:
		now H is not stuck.

To compute kneeling reaction of (M - a demoness):
	say "[one of]The [M]'s lips break into a smug grin. Soon enough the [M] is tapping her heel on the ground below with growing impatience. She closes the gap between you two with a few steps, her hips swaying elegantly. There's a dominating aura around the [M] that makes you feel quite [if the bimbo of the player < 4]scared[otherwise if the bimbo of the player < 8]uneasy[otherwise if the bimbo of the player < 12]interested[otherwise if the bimbo of the player < 16]excited[otherwise]enticed[end if]. You stare at her [if the bimbo of the player < 4]fearfully[otherwise if the bimbo of the player < 7]uneasily[otherwise if the bimbo of the player < 10]nervously[otherwise if the bimbo of the player < 13]anxiously[otherwise if the bimbo of the player < 16]hungrily[otherwise]eagerly[end if].[or]The [M] sighs, pulling a foot upwards behind her to adjust her heels. She closes the gap between you and her, those phallic heels digging against the dirt below yet somehow staying clean. She slows to a stop in front of you, waiting for you to make the next move, not even threatened by your presence.[or][if the bimbo of the player < 4]You can't believe you're in such a humiliating situation as you keep your gaze fixed on the ground below, the [M] snapping her fingers a few times to make sure you're paying attention.[otherwise if the bimbo of the player < 7]You glance over the demoness with a subtle interest in her presence, maybe this could be fun in some weird, twisted way... Right?[otherwise if the bimbo of the player < 10]You can't help but stare at her phallic heels for extended periods of time, a small amount of drool starting to pool in your mouth as you decide what to do next.[otherwise if the bimbo of the player < 13]You take a moment to admire the [M]'s heels and gnaw at your lower lip in excitement. Your eyes fixate on those large phallic stilettos and you are unable to tear your gaze away, a steady stream of saliva pooling at your mouth as lewd thoughts start to creep into your mind, well, more so than usual.[otherwise if the bimbo of the player < 16]The [M] perks a brow down at you as she snaps her fingers to part your gaze from her heels. You hadn't even noticed how fixated you were until she tore your attention away from them. [speech style of M]'So?'[roman type] She says with growing impatience. [speech style of M]'Present yourself!'[roman type][line break][otherwise]You can't fight back the dominating presence this woman is projecting, your chest dips towards the ground as your elbows support it, and you absent-mindedly wiggle your hips and bits by extension. The [M]'s grin couldn't be wider.[end if][in random order]";
	humiliate 75.
	
To compute delay of (M - a demoness):
	say "[one of]The [M] continues to patiently tap her heel to the ground. You feel like she's waiting for you to continue.[or]The [M] hovers her hands by her hips, letting you know she's prepared if you try anything funny. She just wants you to make the first move.[or]The [M] keeps a keen eye on your subtle movements, ready to stop you if you try to run.[or]You notice that the [M] is waiting for your next move.[or][speech style of M]'We haven't got all day, sugartits.'[roman type] The [M] says with a wink.[line break][or][speech style of M]'Go on, make my day.'[roman type][line break][or][speech style of M]'Oh this is gonna be good. Now, give me your ass pathetic human.'[roman type][line break][or][speech style of M]'[if the flesh volume of hips < 8]It's not the biggest butt, but I'm not complaining[otherwise]Now that's what I call a [tasty] butt[end if]. Hope you're not too sore!'[roman type][line break][in random order]".

To say WaitingFlav of (M - a demoness):
	if the player is not able to speak:
		say "[if the player is able to make sounds][variable custom style][muffled sounds][roman type][line break][otherwise]You look up at the [M] silently.[end if]";
	otherwise if the soreness of asshole > 7 and the times-fucked of M > 0:
		say "You [if the anal sex addiction of the player < 4]shiver with dread[otherwise]hesitate[end if] - you are worried that your [asshole] is much too sore right now for another round with the [M]!";
	otherwise if the anal sex addiction of the player < 4:
		say "[one of]You stare up at the demoness, still in shock.[or]You pause and wonder if staying downstairs would be the better option.[or]You turn away with a sway of your hips. [first custom style]'Hmmph.'[roman type][line break][or][first custom style]'Please don't do that thing you clearly want to do.'[roman type][line break][or]You look away, knowing full well you have no chance of escape.[or][first custom style]'[if the player is male]Look, I'm not really into weird otherworldly creatures.'[otherwise]I'd rather be on top.'[end if][roman type][line break][or][first custom style]'[if the player is male]I like women and stuff, but this is just too freaky for me.'[otherwise]I'm not some sort of slut that'll just do as she's told.'[end if][roman type][line break][or][first custom style]'[if the player is male]Look, just don't let those heels anywhere near me.'[otherwise]I'd never fuck some freak like you.'[end if][roman type][line break][or][first custom style]'I'm sorry, all right? Please let me go, just this once.'[roman type][line break][in random order]";
	otherwise if the anal sex addiction of the player < 7:
		say "[one of]You bite your lip, embarrassed by your own excitement.[or]You wait obediently, but only because the [M] is really threatening you.[or]A small part of you seems to get a rush out of following her orders.[first custom style]'Just don't get me too dirty, all right?'[roman type][line break][or][first custom style]'It's just sex. Don't get too into it.'[roman type][line break][or][if the player is male]You try to stifle some decidedly 'submissive' thoughts.[otherwise]You focus on keeping your hands away from your [vagina].[end if][or][second custom style]'[if the size of penis < 5]Does my [sissy-penis] not bother you?[otherwise if the player is male]Does my [manly-penis] not bother you?'[otherwise]Am I a slut for letting her do what she wants?'[end if][roman type][line break][or][if the player is male]You can't help but feel excited at the thought of the [M] treating you like she is.[otherwise][variable custom style]'You'll be gentle, right?'[end if][roman type][line break][in random order]";
	otherwise:
		say "[one of]You feel thoroughly ready to get fucked any way the demoness pleases.[or][second custom style]'I'll do anything for you, sexy.'[roman type][line break][or][second custom style]'We're both horny, so do whatever you want to me. I'm sure I'll like it.'[roman type][line break][or][second custom style]'It feels good anywhere!'[roman type][line break][or][second custom style]'Don't be afraid to be rough, baby. I love a rough fuck!'[roman type][line break][or][second custom style]'[if the size of penis > 3]I hope she doesn't mind my small [manly-penis]!'[otherwise]I'm a woman, so my opinion doesn't matter, Hee hee!'[end if][roman type][line break][or][if the player is male]Hee hee, she's going to make me sore![otherwise]You jill yourself vigorously, eager to be used like the slutty tart you are.[end if][roman type][line break][or][second custom style][if the player is male]I'm the submissive sissy, so I should wait to find out what she wants most.[otherwise]I really feel like getting fucked in my pussy, but she's the dominant so she should choose.[end if][roman type][line break][or][second custom style]'I don't know what I want, teehee!'[roman type][line break][or][second custom style]She's the dominant, she should choose.[roman type][line break][or][second custom style]'I'm always up for a good fuck, doesn't matter what type it is!'[roman type][line break][in random order]".
		
To say SexSubmissionFlav of (M - a demoness):
	say "[if the bimbo of the player < a random number between 8 and 13][one of]You lie still and accept the invasion.[or]You submit to being used as a plaything.[or]You don't resist being used.[in random order][otherwise][one of]You purposefully loosen up and accept the demoness's thrusts to easily slide fully in and out.[or]You push back at the dildo footwear enthusiastically in the same rhythm that she is fucking you.[in random order][end if]";
	say "[variable custom style][one of][if the relevant sex addiction of M > 11]'Fuck me, baby!'[otherwise if the virgin of the player is 1 and the player is female]At least I still have my virginity.[otherwise]Maybe if I relax, this will hurt less?[end if][or][if the relevant sex addiction of M > 12]This feels sooooo good![otherwise if the bimbo of the player > 5]Why am I letting her do this? Am I a whore?[otherwise]Owwww, it still hurts![end if][or][if the relevant sex addiction of M > 13]'That feels good! Go faster! Nnnf, fuck!'[otherwise if the bimbo of the player > 7]Maybe I really am a slut?[otherwise]Please, just let her finish quickly...[end if][or][if the relevant sex addiction of M > 14]'Fuck me harder!'[otherwise if the relevant sex addiction of M > 8]Am I actually enjoying this?[otherwise if there is a demoness penetrating asshole and the player is female]At least she's not abusing my pussy...[otherwise]'Oh just please finish fast!  I can't take much more.'[end if][purely at random][roman type][line break]".

To say MercyReaction of (M - a demoness):
	say "The [M] just laughs, almost like she is getting off on your pain!".

Section 1 - Protect and Attack

To  compute (M - a demoness) protecting against (X - a monster):
	if X is demoness:
		say "[speech style of M]'I'm afraid I would ally with any of my sisters over an inconsequential mortal any day of the year!'[roman type][line break]The [M] stands next to the [X].";
		anger M;
	otherwise:
		say "[speech style of M]'Don't go [if the player is monster stuck]having too much fun[otherwise]getting yourself caught[end if] now!'[roman type][line break]The [M] cackles and wanders off.";
		bore M.

To compute the orifice choosing of (M - a demoness):
	if M is unfriendly, now the chosen-orifice of M is asshole.[Unless she's friendly, she always goes for your ass.]

This is the demoness punishes diaper rule:
	let P be a random sex toy penetrating asshole;
	let D be a random worn diaper;
	if P is a thing:
		say "The [current-monster] cackles.  [speech style of current-monster]'I can [if P is currently visible]see[otherwise]sense[end if] that toy you're wearing underneath your nappy, you know.  You really are a pervert aren't you?  Here, let me help you out...'[roman type][line break]";
		if the size of P < a random number between 6 and 10:
			say "Smirking, the [current-monster] uses her infernal magic to make your [P] grow inside of your [asshole]!";
			increase the size of P by 1;
			if the size of P > the openness of asshole, say "You're being stretched even wider than before!";
		otherwise if the player is able to get horny:
			say "With a snap of her fingers, the [P] begins twisting, shaking and vibrating violently!  Your [if the anal sex addiction of the player < 5]poor [end if][asshole] is quickly overstimulated, and you shudder [if the humiliation of the player < 25000]with shame [end if] as you are brought to a quick and brutal climax.";
			anally orgasm shamefully;
			if the soreness of asshole < 7:
				say "Your [asshole] feels [if the soreness of asshole < 5]significantly [end if] worse for wear!";
				now the soreness of asshole is 7;
		otherwise:
			say "With a snap of her fingers, the [P] begins twisting, shaking and vibrating violently!  Your [if the anal sex addiction of the player < 5]poor [end if][asshole] is powerfully stimulated.";
			AssRuin 2;
		say "The [current-monster] seems satisfied, and leaves you alone.";
		bore current-monster;
		rule succeeds;
	otherwise if D is total protection and (the urine-soak of D > 0 or the player is diaper focused):
		compute prostate plugging of current-monster;
		rule succeeds.
The diaper punishment rule of a demoness is usually the demoness punishes diaper rule.

To compute prostate plugging of (M - a demoness):
	let P be a random off-stage prostate massager plug;
	let D be a random worn diaper;
	if diaper quest is 0, now current-monster is willing to do oral; [From now on there's an alternative method the demoness can use on the player]
	if P is plug:
		say "[if D is messed]The [current-monster] has a sour expression on her face when she realises the state of your [D].  [speech style of current-monster]'Oh my word, you've actually crapped in your nappy? How disgusting, there is no way I'm touching that.  Here's something to make sure that doesn't happen again...'[otherwise if the urine-soak of D > 0]The [current-monster] has a sour expression on her face when she realises the state of your [D].  [speech style of current-monster]'Oh my word, you've actually used your nappy? How disgusting, there is no way I'm touching that.  You know what?  If you love pissing yourself so much, then this should make your life more interesting...'[otherwise]The [current-monster] has a sour expression on her face when she looks at your [D].  [speech style of current-monster]'Ugh, you disgust me.  If you really are perverted enough to like using one of those rather than a grown up toilet, then this should make your life more interesting...'[end if][roman type][line break]She shapes her hands like claws and points them towards your diapered butt.  You yelp as you feel an invasion inside your [asshole]!  It feels like a plug but it's shaped weirdly, and it's pressing against sensitive spots on the inside of your body, including your bladder!  [if the player is not bursting]You instantly feel you need to pee, but when you try to release, nothing comes out.  You quickly realise it must be the plug!  It's going to make it feel like you constantly need to go...[end if]";
		summon P cursed;
		now the size of P is the openness of asshole;
		say "With a quick cackle, the [current-monster] seems satisfied, and leaves you alone.";
	otherwise if watersports fetish is 1:
		say "[speech style of current-monster]'If you want to be treated like a toilet, I'll treat you like a toilet.'[roman type][line break]The [current-monster] stands over you and grabs you by the head with a surprisingly strong hand, directing your face towards her crotch. Before long she lifts up her dress, and releases a torrent of piss over your hair and face.";
		FacePiss;
	otherwise:
		say "The [current-monster] looks at your [D] with distaste.  [speech style of current-monster]'Sorry, but I only play with grown ups who can control their own bladder.'[roman type][line break]It look like she's decided to leave you alone.";
	satisfy current-monster.

To compute anal sex of (M - a demoness):
	say "The [M] keeps fucking you with her dildo heel, [if the anal sex addiction of the player <= 3]every little shove of her foot driving the fat girth of phallic glass into you, forcing your ass to stretch uncomfortably.[otherwise if the anal sex addiction of the player <= 5]every little push of her heel into you making your body loosen up, and your skin crawl.[otherwise]each shove of her heel into your body causing you to stifle a moan.[end if] [line break][if the delicateness of the player - the soreness of asshole < 6][first custom style]Ouch ouch ouch...[otherwise][second custom style]Oof![end if][roman type][line break]";
	if the reaction of the player > 0:
		let R be a random number between 1 and 11;
		say "You relax your [asshole] and let her fuck you.  [if R > 6]You manage to prevent yourself becoming any more sore.[otherwise]However her thrusting is so deep and strong that it's still constantly stimulating the inside of your poor [asshole].[end if]";
		if R < 7, AssRuin 1;
		if M is friendly-fucking, decrease the excitement of M by 1;
		otherwise decrease the excitement of M by 2;
	otherwise:[resisting makes it last twice as long, but you have a better chance of killing her when she's finished.]
		AssRuin 1;
		decrease the difficulty of M by 1.

To decide which number is the rounds of sex left of (M - a demoness):
	unless M is penetrating asshole, decide on the sex-length of M;
	if the soreness of asshole < 10:
		if the excitement of M > 1 and the difficulty of M > 1, decide on 1;[She'll keep going as long as you're interesting enough to torture, and she has enough power]
	decide on 0.

To compute anal climax of (M - a demoness):
	TimesFuckedUp M by 1;
	if M is friendly-fucking:
		say "[if bukkake fetish is 1]The [M] slows down, cackling as she removes her heel from your [asshole]. You think that[']s the end of it, but a portal opens up above your head, and you find yourself looking down the barrel of a huge candy-red [manly-penis] as it ejaculates all over your face.[otherwise]The [M] slows down, and you hear a hearty cackle as she removes her heel from your [asshole].[end if]";
		if bukkake fetish is 1:
			if the semen load of M > 6, CumFaceUp 6;
			otherwise CumFaceUp the semen load of M;
		compute happy reward of M;
		satisfy M;
	otherwise if the excitement of M < 2 or the difficulty of M < 2:
		say "[if the excitement of M < the difficulty of M]The [M] slows down, and you[otherwise]The [M] looks exhausted!  You[end if] feel the magic grip on your body fade all at once as she removes her heel from your [asshole].";
		if image cutscenes is 1, display figure of demoness cutscene 3;
		if there is an insertable object held by M:
			let P be a random insertable object held by M;
			say "  The [M] uses the last of her energy to magically force the [P] back into your [asshole], smugly bearing a grin at the resulting [if the anal sex addiction of the player <= 3]gasp[otherwise if the anal sex addiction of the player <= 5]moan[otherwise]squeal[end if].";
			summon P;
			if the girth of P > the openness of asshole + 2:
				say "[variable custom style]Oof!  It's so big![roman type][line break]";
				AssRuin 1;
		if the excitement of M > the difficulty of M, bore M;
		otherwise satisfy M;[If you help get it out of her system, she might not come back for more.]
	otherwise:
		say "Only once you have been reduced to a puddle of tears does the [M] stop fucking your [asshole].  She cackles again and starts to wander off.";
		if there is an insertable object held by M:
			let P be a random insertable object held by M;
			say "Before she does, she makes sure to magically force the [P] back into your [asshole].";
			summon P;
			if the girth of P > the openness of asshole + 2:
				say "[variable custom style]Oof!  It's so big![roman type][line break]";
				AssRuin 1; [we don't want this to cause fainting]
		if the difficulty of M < 5, now the difficulty of M is 5;
		FavourUp M;
		satisfy M.

To compute the dildo stuck taunting of (M - a demoness):
	if there are worn heels:
		say "[if the variety of M is 1]The [M] stops channelling her energy into the floor, and it returns to its normal cold temperature.[line break][end if]The [M] cackles at your situation on the dildo, and mutters a curse while pointing at your heels.";
		now the variety of M is 0;
		repeat with H running through heels worn by the player:
			now H is not stuck;
			if the heel-height of H >= 8:
				DexDown 1;
			otherwise if H is cursed:
				increase the heel-height of H by 1;
			otherwise:
				curse H;
	otherwise:
		say "The [M] cackles at your situation on the dildo, and mutters a curse while pointing at your feet.";
		if a random number between 1 and 2 is 1:
			say "You feel more lethargic.";
			DexDown 1.

To compute the busy waiting of (M - a demoness):
	say "The [M] seems to be channelling energy into the gem hanging from her neck... and her stare is getting more[one of][or] and more[stopping] intense.";
	DifficultyUp M by 1.

To make the player soulless:
	if the player is souled:
		now the player is soulless;
		increase the xavier-power of a random mechanic by 3.

This is the demoness doesn't care for skinny bitches rule:
	let M be current-monster;
	if the player is souled and (the class of the player is priestess or the virgin bonus of the player > 0):
		say "[speech style of M]'Your soul shines so brightly... Perhaps it can sate my hunger!'[roman type][line break]";
		if image cutscenes is 1, display figure of demoness cutscene 1;
		say "The [M] places her hand on your chest and begins to chant, and you suddenly feel cold inside! She then walks off, laughing.";
		bore M;
		make the player soulless;
		rule succeeds;
	otherwise if the thickness of hips < 5 and the bimbo of the player < 9 and a random number between 1 and 3 is 1 and presented-orifice is nothing:
		say "[speech style of M]'You're not even worth my trouble.'[roman type][line break]The [M] loses interest.";
		if image cutscenes is 1, display figure of demoness interact 5;
		bore M;
		rule succeeds.
The unique punishment rule of demoness is usually the demoness doesn't care for skinny bitches rule.

This is the demoness monster convinced rule:
	let M be current-monster;
	if presented-orifice is asshole:
		say "The [M] laughs.  [speech style of M]'That's right, accept it like a good slut.  Let's see if you can last as long as I can...'[roman type][line break]";
		now the chosen-orifice of M is asshole;
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "The [M] scowls.  [speech style of M]'Insolent human, don't you dare try and tell me where I can and can't use you!  Your ass is mine.'[roman type][line break]";
		now the chosen-orifice of M is asshole;
		rule succeeds.
The monster convinced rule of demoness is usually the demoness monster convinced rule.
		
This is the demoness monster fucked taunting rule:
	let M be current-monster;
	if the latex-transformation of the player > 4:
		say SelectionFrustrated of M;
	otherwise if watersports fetish is 1 and the number of monsters penetrating face is 0:
		say "[speech style of M]'Drown bitch, drown.'[roman type][line break]The [M] stands over you and grabs you by the head with a surprisingly strong hand, directing your face towards her crotch. Before long she lifts up her dress, and releases a torrent of piss over your hair and face. As the warm liquid cascades down your visage you cough and splutter, struggling to keep your eyes open as little droplets of the yellow fluid stray from your lips and cheeks to splash at your peepers.";
		FacePiss;
		satisfy M;
	otherwise:
		say "The [M] laughs hysterically and winds a hand back up above her head, before swinging it down to crash her palm over your ass with a sickening crack.  Oww!";
		BodyRuin 1;
	rule succeeds.
The monster fucked taunting rule of a demoness is usually the demoness monster fucked taunting rule.

This is the demoness punishing occupied assholes rule:
	let M be current-monster;
	let T be a random thing penetrating asshole;
	if T is vibrating plug panties:
		say "The [M] mutters a curse from under her breath.  You yelp uncontrollably as you feel the plug in your [asshole] suddenly grow and increase in vibration speed.  You howl and hold your hands to your ass, as if that could help.";
		AssRuin 2;
		say "Luckily the plug returns to its original size and vibration speed after the [M] stops concentrating.  She seems to lose interest in you... for now.";
		FavourUp M;
		bore M;
	otherwise if T is insertable and the size of T < 10:
		say "The [M] mutters a curse from under her breath.  You yelp uncontrollably as you feel the plug in your [asshole] suddenly grow!  [if the openness of asshole  <= the size of T]You howl and hold your hands to your ass, as if that could help[otherwise]It now is a better fit for your [asshole][end if].";
		increase the size of T by 1;
		if the openness of asshole < the size of T, AssRuin 1;
	otherwise if watersports fetish is 1 and the number of monsters penetrating face is 0  and the latex-transformation of the player <= 4:
		say "[speech style of M]'Drown bitch, drown.'[roman type][line break]The [M] stands over you and grabs you by the head with a surprisingly strong hand, directing your face towards her crotch. Before long she lifts up her dress, and releases a torrent of piss over your hair and face. As the warm liquid cascades down your visage you cough and splutter, struggling to keep your eyes open as little droplets of the yellow fluid stray from your lips and cheeks to splash at your peepers.";
		FacePiss;
		satisfy M;
	otherwise if the openness of asshole < 7:
		say "The [M] smirks and mutters a curse from under her breath.  [if the openness of asshole < 10]You yelp as you feel the very strange sensation of your [asshole] loosening without anything actually touching it.  [end if]The [M] seems to lose interest in you for now.";
		gape asshole times 2;
	otherwise:
		compute SelectionFailure of M.

To compute SelectionFailure of (M - a demoness):
	say "[speech style of M]'Bah!  You're not even worth my time.'[roman type]  She growls in irritation and then leaves you alone.";
	if image cutscenes is 1, display figure of demoness interact 5;
	bore M;
	DifficultyUp M by 2.

The demoness insertion rules is a rulebook.  The insertion rules of a demoness are usually the demoness insertion rules.

This is the demoness asshole insertion rule:
	if the chosen-orifice of current-monster is asshole, follow the demoness asshole insertion rules.
The demoness asshole insertion rule is listed in the demoness insertion rules.

The demoness asshole insertion rules is a rulebook.

This is the demoness too tired to attack rule:
	let M be current-monster;
	if the difficulty of M <= 4:
		compute the busy waiting of M;
		rule succeeds.
The demoness too tired to attack rule is listed last in the demoness asshole insertion rules.

This is the demoness attacking ass covering clothing rule:
	let C be a random worn top level ass protection clothing;
	if C is clothing:
		compute current-monster attacking C;
		rule succeeds.
The demoness attacking ass covering clothing rule is listed last in the demoness asshole insertion rules.

To compute (M - a demoness) attacking (C - a clothing):
	say "The [M] touches a finger to the crotch of your [C] and you can feel the heat... she's trying to burn them off!";
	let R be a random number between the difficulty of M and 6 + a random number between the difficulty of M and 6;
	if debugmode is 1, say "Player [the defence of the player].5 | [R] Demoness[line break]";
	if R > the defence of the player:
		say "She burns them completely off!";
		destroy C;
	otherwise if R > the defence of the player - 3 and C is rippable:
		say "She has managed to create a hole at the crotch of your [printed name of C]!";
		rip C;
	otherwise:
		say "She's slowly burning them off!";
		damage C.

This is the demoness removing butt plug rule:
	let C be a random worn insertable thing penetrating chosen-orifice of current-monster;
	if C is a thing:
		compute current-monster removing C;
		rule succeeds.
The demoness removing butt plug rule is listed last in the demoness asshole insertion rules.

To compute (M - a demoness) removing (P - a clothing):
	let O be chosen-orifice of M;
	say "Using her otherworldly powers, the [M] pulls the [printed name of P] from your [variable O] without even touching it.[if the grip of P > 5 and O is asshole]  Its size and shape means that it creates a lewd 'PLOP' sound as your [asshole]'s sphincter collapses on itself.[end if]";
	if P is cursed, now P is held by M;
	otherwise now P is in the location of the player;
	now P is not penetrating O.
	
To compute (M - a demoness) removing (P - an anal beads):
	let O be chosen-orifice of M;
	say "The [M] catches the hooked end of your [printed name of P] with the spike of her heel, cackling cruelly as she yanks them out one by one. [if the grip of P > 5 and O is asshole]The last of them makes a lewd 'PLOP' sound as your [asshole]'s sphincter collapses in on the newly emptied space.[end if]";
	now the notch-taken of P is 0;
	if P is cursed, now P is held by M;
	otherwise now P is in the location of the player;
	now P is not penetrating O.

This is the demoness penetrating asshole rule:
	compute current-monster entering asshole;
	rule succeeds.
The demoness penetrating asshole rule is listed last in the demoness asshole insertion rules.

To compute (M - a demoness) entering asshole:
	if the excitement of M < the difficulty of M, now the excitement of M is the difficulty of M;
	say "The [M] lifts up one of her feet, on which are her unique black shoes with [one of]dulled[or]shiny[sticky random] glass dildos for heels.  She continues cackling and pushes the heel into your [asshole]! As the demoness sinks in, she curls her lips into a wicked grin, gritting her teeth and going wide-eyed. Clearly she enjoys herself behind you as a cackle rings out to rustle the trees. Either she is really pent up or just enjoys ruining the players.  Some kind of magic grasp is preventing you from moving.";
	if image cutscenes is 1, display figure of demoness cutscene 2;
	now M is penetrating asshole;
	if the soreness of asshole < 10, AssRuin 1.

This is the demoness mouth insertion rule:
	if the chosen-orifice of current-monster is face, follow the demoness mouth insertion rules.
The demoness mouth insertion rule is listed in the demoness insertion rules.

The demoness mouth insertion rules is a rulebook.

This is the demoness removing gag rule:
	let C be a random worn clothing penetrating face;
	if C is a thing:
		compute current-monster removing C;
		rule succeeds.
The demoness removing gag rule is listed last in the demoness mouth insertion rules.

This is the demoness penetrating mouth rule:
	compute current-monster entering mouth;
	rule succeeds.
The demoness penetrating mouth rule is listed last in the demoness mouth insertion rules.

This is the demoness vagina insertion rule:
	if the chosen-orifice of current-monster is vagina, follow the demoness vagina insertion rules.
The demoness vagina insertion rule is listed in the demoness insertion rules.

The demoness vagina insertion rules is a rulebook.

The demoness removing butt plug rule is listed last in the demoness vagina insertion rules.[remove any plugs]

This is the demoness penetrating vagina rule:
	compute current-monster entering vagina;
	rule succeeds.
The demoness penetrating vagina rule is listed last in the demoness vagina insertion rules.

The demoness attack rules is a rulebook.  The attack rules of demoness is usually the demoness attack rules.

To decide which number is the melting point of (H - a clothing):
	let T be 1;
	if H is glass, now T is 6;
	if H is leather, now T is 4;
	if H is satin, now T is 3;
	if H is pvc, now T is 2;
	if H is latex, now T is 2;
	decide on T.

This is the demoness floor heating rule:
	let M be current-monster;
	unless M is abyssal demoness:
		let H be a random worn heels;
		if the variety of M is 0, say "The [M] places her hands on the ground and concentrates.  The floor suddenly turns bright red!  She's making the ground uncomfortably hot!";
		otherwise say "The [M] is still concentrating on making the floor hot!";
		if image cutscenes is 1, display figure of demoness cutscene 4;
		if H is heels:
			if H is cursed:
				say "Your cursed heels seem to magically conduct the heat perfectly, heating up the soles of your feet!  You jump from foot to foot, but the heat is very quickly becoming unbearable!";
				if there are worn stockings, BodyRuin 1;
				BodyRuin 2; [###Selkie: Should this be "otherwise?]
			otherwise if a random number from 1 to the melting point of H is 1:
				if H is stuck:
					if the heel-height of H > 1:
						say "Your [printed name of H] continue to melt, and are getting shorter!";
						decrease the heel-height of H by 1;
					otherwise:
						say "Your [printed name of H] melt away into nothingness!";
						now H is not stuck;
						destroy H;
				otherwise:
					say "Your [printed name of H] start to melt, and are now stuck to the floor!";
					now H is stuck;
			otherwise if the variety of M is 0:
				say "Your heels look like they might melt into the surface!";
		otherwise:
			say "You jump from foot to foot, but the heat of the ground on your [unless there are worn shoes]bare [end if]feet is very quickly becoming unbearable!";
			if there are worn stockings, BodyRuin 1;
			otherwise BodyRuin 2;
		now the variety of M is 1.
The demoness floor heating rule is listed in the demoness attack rules.


To say FriendlySexReleaseRefusalSpeech of (M - a demoness):
	unless M is penetrating asshole:
		if trap fetish is 0:
			say "[speech style of M]'[one of]Yes! Fight me! I love it when you fight!'[or]Ooh! Yeah! Fight me! Fucking fight me!'[or]You can[']t keep resisting forever! Hahaha!'[or]I always get what I want!'[or]Resist me, slut! Show me how pure you are!'[or]Ooh...you are going to taste so good!'[in random order][roman type][line break]";
			if image cutscenes is 1, display figure of demoness cutscene 5;
		otherwise:
			say "[speech style of M]'[one of]Shhh....'[or]That[']s right, get all that fight out of your system...'[or]Sh-sh-shhh...'[or]That[']s right sweetie, keep fighting. He loves that.'[or]No running away now sweetheart...'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I[']m not stopping until you[']re in tears!'[or]Stop? No! I want to make you suffer!'[or]Yes! Suffer for me! Tell me how much you hate it!'[or]Oooh! Yes! Hate me! Tell me you hate me!'[or]Struggle harder! I want it to HURT!'[or]Why stop when I have so much pain to give?'[or]Never!  HAHAHAHA!'[in random order][roman type][line break]";
		if image cutscenes is 1, display figure of demoness cutscene 6;
	increase the excitement of M by 1.

Definition: a demoness (called M) is willing to let go:
	decide no.

To compute (M - a demoness) entering mouth:
	now the excitement of M is 0;
	if face is not actually occupied and trap fetish is 1:
		say "The [M] kneels down next to you, [one of]drawing a glowing circle in the soil underneath you. She holds you down as a candy red tentacle emerges and shoves itself into your mouth.[or]using an incantation to open a portal on the ground underneath you. She holds you down as a candy red tentacle emerges and shoves itself into your mouth.[at random]";
		if image cutscenes is 1, display figure of demoness cutscene 7;
		now the sex-length of M is 3;
		now M is penetrating face;
	otherwise if face is not actually occupied:
		say "[one of]You watch in [if the oral sex addiction of the player < 4]horror[otherwise if the oral sex addiction of the player < 6]shock[otherwise]awe[end if][or]You watch[stopping] as the [M] lifts up her skirt, her clit throbbing and shaking as it swells into a massive candy red penis, standing proudly erect from her hairless labia.";
		say "[FriendlyMouthPenetrationFlav of M]";
		if image cutscenes is 1, display figure of demoness cutscene 8;
		now the sex-length of M is 3;
		now M is penetrating face;
	otherwise:
		say "The [M] sees that you are already occupied and loses interest.";
		distract M.

To say FriendlyOralRequest of (M - a demoness):
	if the oral sex addiction of the player < 4:
		say "[first custom style]'[one of]I[']m taking the deal. That's all I'm doing. [if the player is male]This isn't a gay thing.'[otherwise]Don't get any sick ideas.'[end if][or]I'll take the deal. [if bukkake fetish is 1]But don[']t you fucking dare cum on my face.'[otherwise]But I[']m not going to pretend I enjoy sucking dick. Got it?'[end if][or]I'm hoping this deal isn't what I think it is...'[at random]";
		if image cutscenes is 1, display figure of demoness cutscene 9;
	otherwise if the player is craving:
		say "[second custom style]'[one of]Cum is part of my reward right? I'm desperate for a taste...'[or]I really need to wet my throat, give me whatever you want...'[or]Let me have a taste of your cum. I promise I[']ll take whatever reward you want...'[at random]";
		if image cutscenes is 1, display figure of demoness cutscene 9;
	otherwise if the oral sex addiction of the player < 7:
		say "[variable custom style]'[one of]I...I[']ll take your deal.'[or]So, all I have to do is suck your dick, right? That[']s really it?'[or]I guess if I get something out of it, it's ok...'[or]Alright, it's a deal. It's still on, right?'[or]I could really use your help. Sucking your dick is totally worth that.'[at random]";
		if image cutscenes is 1, display figure of demoness cutscene 10;
	otherwise:
		say "[variable custom style]'[one of]Looking for a throat to fuck[or]How would you like a sloppy blowjob[or]Care for me to swallow your load[or]Are you going to let me taste your [manly-penis][in random order], [one of]big boy[or]handsome[or]stud[purely at random]?'";
		if image cutscenes is 1, display figure of demoness cutscene 10;
		say "[roman type][line break]".

To say TakeMyVirginity of (M - a demoness):
	if M is unfriendly:
		if the sex addiction of the player < 6:
			say "[first custom style]'Please, whatever you do, just don't stick it in my butt.  I'd even prefer you took my virginity...'";
		otherwise if the sex addiction of the player < 11:
			say "[variable custom style]'Go ahead, deflower me.  It was only a matter of time anyway.'";
		otherwise:
			say "[second custom style]'I've been waiting a long time for the cock worthy of this [vagina]... alright, go ahead, take my virginity - break me in!'";
	otherwise:
		if the sex addiction of the player < 5:
			say "[first custom style]'[one of]Alright, I[']m taking your deal, but you WILL NOT cum inside me.'[or]I will take your deal, but before you defile me, could you go over what I get out of it again?'[or]Ugh, if I'm going to lose my purity in this game I might as well get something for it.'[at random]";
		otherwise if the sex addiction of the player < 8:
			say "[variable custom style]'[one of]I guess it's about time I lost my virginity. Might as well get something out of it...'[or]Most people would just take my virginity without asking, so I guess I should accept.'[at random]";
		otherwise:
			say "[second custom style]'[one of]So I finally get to punch my V-card and I get a paycheck?! Sign me up, girl!'[or]I don[']t really care about your deal or whatever, I[']m just dying to have you break me in!'[at random]".

To say NearingClimaxOral of (M - a demoness):
	if trap fetish is 1:
		say "[one of]The tentacle seems to be speeding up![or][speech style of M]'He's almost there. I hope you're ready'[roman type] whispers the [M], tightening her grip as the tentacle speeds up.[or]The [M] tightens her grip on your head, chuckling as the tentacle speeds up.[or][speech style of M]'He's gonna cum'[roman type] she whispers in your ear as the [M] begins to pump the muscular red tentacle, speeding up.[at random]";
	otherwise:
		say "[one of]The [M] grabs you tightly, leering down at you as her thrusts get closer and closer together...[or]The [M]'s chest rises as her breaths get closer and closer together, giving you a toothy grin as she begins thrusting in earnest.[or][speech style of M]'Get ready,'[roman type] the [M] hisses, her grip on your head noticeably tightening.[or]The [M] tightens her grip on your head, thrusting faster and faster...[in random order]".

To say OralResisting of (M - a demoness):
	if trap fetish is 1:
		say "[one of]The [M] ensures that your attempts to resist amount to nothing at all, cackling at your [if the oral sex addiction of the player < 4]pained[otherwise]weary[end if] expression[or]The [M] easily thwarts your attempts to escape with inhuman strength, her muscles barely straining as she effortlessly overpowers you.[or]The [M] whispers an incantation in your ear at the first sign of struggling, which instantly drains all fight from your body.[or]The [M] holds you tightly, preventing more than an inch of movement in any direction with inhuman strength.[at random]";
	otherwise:
		say "[one of]You try as hard as you can to pull away, but her grip is inhumanly strong![or]The [M] effortlessly holds you in place, forcing you to sit still.[or][if the oral sex addiction of the player < 3]You stay completely still, blatantly refusing to do anything at all to pleasure [him of M].[otherwise if the oral sex addiction of the player < 7]You stay completely still, knowing that if you willingly pleasure [him of M] you might like it and not stop.[otherwise]You stay completely still, hoping [he of M] might *punish* you for slacking off.[end if][in random order]".

To say OralResistingResponse of (M - a demoness):
	if trap fetish is 1:[could be expanded some more]
		say "[one of]The [M] forces you to stay still as the tentacle jams itself in and out of your mouth[or]The tentacle continues to jam itself in and out of your mouth, seemingly unaware of your struggling[or]The tentacle continues thrusting without acknowledging your protests, lewd squelching noises ringing through the clearing as it aggressively pumps your throat.[or][speech style of M]'Fighting won't help, this only ends when he's ready to cum,'[roman type] the [M] whispers, holding you still as the tentacle continues to fuck your throat.[at random]";
	otherwise:
		DifficultyUp M by 1;
		say "[one of]The [M] seems to be actively turned on by your lack of cooperation, thrusting faster and harder with every moment of resistance[or]The [M] maintains a firm grip on the back of your head, her [manly-penis] seeming to get harder with every attempt at resisting![or]The [M], as if she knew your intent before you acted on it, immediately grabs you and begins aggressively face-fucking you the instant you try to resist.[or]The [M] cackles, grabbing you with both hands and aggressively face-fucking you until the very idea of resisting makes you sick to your stomach.[or]The [M] thrusts with undisguised malicious intent, keeping your throat fully plugged with [manly-penis] any time you try to breathe in.[or]The [M] seems to thrust faster and harder in response to your protests![in random order]".

To say OralSubmissionResponse of (M - a demoness):
	if trap fetish is 1:
		say "[one of]The [M] holds the tentacle with one hand, helping it to repeatedly shove itself down your throat.[or]The [M] nibbles on your ear as the tentacle fucks your throat, distracting you with the practised ministrations of her tongue.[or]The [M] tweaks your nipples and nips at your ear as the tentacle fucks your throat, somehow turning the experience into something bordering on pleasurable.[or][speech style of M]'That's right...Let him use you,'[roman type] the [M] whispers, gently groping your [BreastDesc] and teasing your nipples as the tentacle repeatedly jams itself down your throat.[at random]";
	otherwise:
		say "[one of]You bob your head up and down, [if the bimbo of the player < 7]eyes screwed shut in shame[otherwise if the sex addiction of the player < 12]avoiding eye contact[otherwise]looking up at the [M][end if] as you submissively polish [his of M] shaft.[or]You make [if the oral sex addiction of the player < 3]quiet[otherwise if the oral sex addiction of the player < 6]distinct[otherwise]exaggerated[end if] slurping noises as you suck the [M]'s [manly-penis], [if the oral sex addiction of the player < 4]determined to get this over and done with as soon as possible.[otherwise if the oral sex addiction of the player < 6]determined to get [him of M] off as soon as possible[otherwise]determined to get [him of M] shooting off in your mouth as soon as possible[end if][or]The [M] guides the movement of your head as you [if the oral sex addiction of the player < 3]quietly [otherwise if the oral sex addiction of the player > 6]noisily [end if] suck her [manly-penis], [if the oral sex addiction of the player < 4]making you feel even more like a dirty slut. If that was even possible.[otherwise if the oral sex addiction of the player < 6]silently assuring you that you[']re doing a good job.[otherwise]allowing you to do all the work like the dirty slut you are.[end if][or]The [M] rolls [his of M] hips to complement the [if the oral sex addiction of the player > 5]enthusiastic [otherwise if the oral sex addiction of the player < 4]slow [end if]bobbing of your head.[or]The [M] allows you to do most of the work, [if the sex addiction of the player < 7]picking up the slack whenever the shame gets to be too much[otherwise if the oral sex addiction of the player < 6]picking up the slack whenever you get tired.[otherwise]grunting with pleasure as you drag your tongue up [his of M] shaft.[end if][in random order]".

To compute facial climax of (M - a demoness):
	if trap fetish is 1:[This means the demoness is having a tentacle facefuck you as part of your deal, and it always finishes in your mouth.]
		say SuccessfulFacialDodge of M;
		compute happy reward of M;
		now M is not penetrating face;
		StomachSemenUp the semen load of M;
	otherwise if the reaction of the player is 0:
		if bukkake fetish is 1 and a random number between 1 and 2 is 1 and the player is not a blowjob slut:
			compute failed facial dodging of M;
		otherwise:
			compute oral creampie of M;
	otherwise:
		if bukkake fetish is 1 and a random number between 1 and 2 is 1 and the player is not a blowjob slut:
			compute facial accepting of M;
		otherwise:
			compute deepthroat creampie of M;
	[increase the times-dominated of M by 1;][Aika thinks this was wrong so has commented it out; MG was reusing this value to determine whether or not the player had acknowledged the demoness' offer before without using [stopping] ]
	satisfy M.

To compute oral creampie of (M - a demoness):
	say ResistedOralCreampie of M;
	if image cutscenes is 1, display figure of demoness cutscene 11;
	say SwallowDemand of M;
	now M is not penetrating face;[This prevents the player from puking]
	if M is coercing a swallow:[Automatic swallow]
		compute auto swallow of M;
	otherwise:
		compute swallow choice of M.

To compute failed facial dodging of (M - a demoness):
	say FacialBrokenFree of M;
	say FailedFacialDodge of M;[demoness is too fast for you to dodge]
	CumFaceUp the semen load of M;
	compute angry punishment of M.

To compute facial accepting of (M - a demoness):
	say UnavoidedFacial of M;
	CumFaceUp the semen load of M;
	humiliate 300;
	compute happy reward of M;
	now M is not penetrating face;
	StomachSemenUp 1.

To compute deepthroat creampie of (M - a demoness):
	say DeepthroatCreampie of M;
	if image cutscenes is 1, display figure of demoness cutscene 11;
	StomachSemenUp the semen load of M;
	humiliate 100;
	compute happy reward of M.

To say SuccessfulFacialDodge of (M - a demoness):
	say "The [M] grabs the tentacle as it tenses, pushing it in as deep as it can go as [one of]spurt after spurt[or]gush after gush[or]a huge amount of[at random] [tasted-semen] [one of]rushes[or]shoots[at random] down your throat, keeping it there until your gag reflex subsides and every last drop of its demonic seed has settled fully in your belly.".

To say FailedFacialDodge of (M - a demoness):
	say "[one of]The [M] grabs you again with inhuman speed, her [manly-penis] bobbing in your face as it paints you with rope after rope of sticky white [semen].[or]The [M] catches you with inhuman speed, forcing you to sit still as she ejaculates all over your face.[or]The [M] catches you with seemingly inhuman reflexes, groaning as her [manly-penis] unleashes its massive load all over your face.[or]The [M] catches you in an instant, cackling as she shoots rope after rope of sticky white [semen] all over your face.[or]The [M] catches you almost instantly, leaving you to [if the semen addiction of the player < 8]struggle in vain as [he of M] unloads all over your face.[otherwise if the semen addiction of the player < 12]half-heartedly struggle as [he of M] unloads all over your face.[otherwise]giggle to yourself as [he of M] unloads all over your face.[end if][at random]".

To say UnavoidedFacial of (M - a demoness):[in your mouth, then on your face.]
	say "[one of]The [M] moans with pleasure as she ejaculates, shooting several ropes of thick warm [semen] straight down your throat before pulling out and finishing all over your face.[or]The [M] groans with pleasure, spurting in your mouth before shoving you off and finishing all over your face.[or]The [M] holds you down, forcing you to swallow as her [manly-penis] shoots directly into your mouth. You [if the semen taste addiction of the player < 7]sigh in relief[otherwise if the semen taste addiction of the player < 12]sigh[otherwise]emit a grunt of displeasure[end if] as she pushes you off, only to take the second half of her load all over your face.[at random]";

To say SwallowDemand of (M - a demoness):
	say "[speech style of M]Eat up. You want your reward, don[']t you?[roman type][line break]".

To compute happy reward of (M - a demoness):
	let R be a random number between 1 and 5;
	let J be a random off-stage plentiful accessory;
	let A be a random number between 2 and 3;
	if M is not dealing or (R is 5 and J is not clothing) or (R is 3 and the strength of the player is 30) or (R is 4 and the dexterity of the player is 30):
		now R is 6;
	if debugmode > 0, say "Original choice is [R].[line break]";
	if R is 1 and the player is male and the size of penis < 10:
		say "[speech style of M]Good boy. I bet you get confused for a girl a lot, am I right? You just need a bigger [manly-penis]. Trust me.[roman type] The [M] points at your [ShortDesc of penis], which glows with purple light as it spontaneously grows.";
		let N be a random number between 2 and 3;
		if N + the size of penis > 10, now N is 10 - the size of penis;
		increase the size of penis by N;
	otherwise if R is 1 and M is not penetrating vagina and the player is female and the openness of vagina > 0:
		say "[speech style of M]Good girl. You remind me of myself before the dark lord made me into his eternal servant.[roman type] The [M] points at your [vagina], which glows with unnatural light as it spontaneously tightens.";
		let N be a random number between 2 and 3;
		PussyClose N;
	otherwise if R is 2 and M is not penetrating asshole and the openness of asshole > 0:
		say "[speech style of M]'[if the player is male]Such a good boy...but with a loose hole like that it's obvious to everyone you make a better girl. I can keep a secret if you can.'[otherwise]Such a good girl...you deserve a fresh, tight asshole, don't you. It's not your fault if everyone wants to fuck you. I understand.'[end if][roman type] The [M] utters a short incantation, and you gasp as you feel your [asshole] spontaneously tighten.";
		let N be a random number between 2 and 3;
		AssClose N;
	otherwise if R is 3:
		say "[speech style of M]'[if the player is male]Such a good boy...but I really think you need some nice, big sexy muscles. That[']s what I like.'[otherwise]Such a good girl...but it must be tough getting overpowered by everybody that wants to fuck you. Let's fix that.'[end if][roman type] The [M] bends over and breathes a red mist over your body, which causes your muscles to suddenly bulge with new strength and definition.";
		StrengthUp A - 1;
	otherwise if R is 4:
		say "[speech style of M]'So obedient. I like that about you, but you don't have to be so rigid. Why don't I loosen you up a little?[roman type] The [M] lifts your chin, locking lips with you as thick, acrid smoke rushes into your mouth. A tingle moves up your spine as it fills your lungs, and you feel more flexible.";
		DexUp A - 1;
	otherwise if R is 5:
		say "[speech style of M]Good [if the player is male and the size of penis > 3]boy[otherwise]girl[end if]. Now, as promised...[roman type]";
		let N be a random number between 1 and 9;
		if N > 7, now J is solid gold;
		otherwise now J is ruby;
		set shortcut of J;
		say "The [M] snaps her fingers, and a [printed name of J] materialises into your hands.";
		now J is held by the player;
	otherwise:
		say "[speech style of M]Good [if the player is male and the size of penis > 3]boy[otherwise]girl[end if]. You always do as you[']re told. Come find me when you're ready to be my cumdu-...I mean business partner again.'[roman type] [if M is penetrating vagina]The [M] scoops a bit of cum out of your [vagina] and sensually licks it off her fingers[otherwise if bukkake fetish is 1]The [M] uses a finger to wipe a bit of cum from your lower lip and sensually licks it off[otherwise]The [M] readjusts her skirt[end if] as she disappears in a burst of flames.";
		if M is penetrating vagina:
			decrease the semen volume of vagina by 1;
		otherwise if the semen coating of face > 0:
			decrease the semen coating of face by 1;
		distract M;
		regionally place M;
		FavourUp M by A;[Double the favour increase]
		now A is 0;
	if A + the raw sex addiction of the player > 20, now the raw sex addiction of the player is 20;
	otherwise sexaddictup A;[Don't want to game over here so we intentionally shy back from going over the limit.]
	sementasteaddictup A;
	FavourUp M by A.

To compute spit choice of (M - a demoness):
	let V be nothing;
	if the player is not flying and the player is not monster stuck, now V is the juice-collector;
	if V is held:
		compute semen catching from M in V;
		say "[speech style of M]'Hmm. Guess I'll have to save your reward for later too, huh?'[roman type][line break] The [M] cackles, disappearing in a burst of flames.";
		unless the raw sex addiction of the player is 20, sexaddictup 1;
		unless the raw semen taste addiction of the player is 20, sementasteaddictup 1;
	otherwise:
		compute voluntary spitting of M.
		[compute angry punishment of M.]

To compute angry punishment of (M - a demoness):
	say "[speech style of M]'Oh well, I got what I wanted anyway. Hahahaha!'[roman type] The [M] disappears in a burst of flames.[line break]";
	unless the raw sex addiction of the player is 20, sexaddictup 1;
	unless the raw semen taste addiction of the player is 20, sementasteaddictup 1;
	FavourDown M by a random number between 1 and 0.

To say PresentFriendlyAcceptanceFlav of (M - a demoness):
	unless presented-orifice is asshole:
		say "[speech style of M]'[one of]It's a deal.'[or]Heheheh...great.'[or]Good. Let's start with my payment.'[or]Haha, mortals are so stupid!'[or]You[']re a bit of an idiot, aren[']t you? Oh well.'[at random][roman type]";
	otherwise:
		say "[speech style of M]'[one of]You think you can handle this? Cute.'[or]I exist to punish perverts like you!'[at random][roman type][line break]".

To say PresentFriendlyRejectionFlav of (M - a demoness):
	say "[speech style of M]'[if presented-orifice is a potential target]Not interested.'[otherwise]Not today, honey.  I don't feel like it.'[end if][roman type][line break]".

To compute (M - a demoness) entering vagina:
	if face is not actually occupied and trap fetish is 1:
		say "The [M] kneels down next to you, [one of]drawing a glowing circle in the soil underneath you. She holds you down as a candy red tentacle emerges and shoves itself into your [vagina].[or]using an incantation to open a portal on the ground underneath you. She holds you down as a candy red tentacle emerges and shoves itself into your [vagina].[at random]";
		now the sex-length of M is 3;
		now the excitement of M is 0;
		now M is penetrating vagina;
	otherwise if vagina is not actually occupied:
		let V be the virgin of the player;
		say "[FriendlyVaginaPenetrationFlav of M]";
		if image cutscenes is 1, display figure of demoness cutscene 13;
		if V > 0:
			now the excitement of M is 10 + the virgin bonus of the player;
			say "[speech style of M]All gone! Hahaha![roman type]";
		now the sex-length of M is 3;
		now M is penetrating vagina;
	otherwise:
		say "The [M] sees that you are already occupied and loses interest.";
		distract M.

To say VaginaPenPrep of (M - a demoness):
	say "[one of]You watch in [if the oral sex addiction of the player < 4]horror[otherwise if the oral sex addiction of the player < 6]shock[otherwise]awe[end if][or]You watch[stopping] as the [M] lifts up her skirt, her clit throbbing and shaking as it swells into a massive candy red penis, which stands proudly erect as she lines it up with your [vagina].";

Definition: a demoness (called M) is virginity taking:
	decide yes.

To compute vaginal climax of (M - a demoness):
	TimesFuckedUp M by 1;
	if the excitement of M >= 10:
		say PullOutFlav of M;
		now M is not penetrating vagina;
		now a random demon lord is penetrating vagina;
		WombFill the excitement of M - 9;[If the bonus is 0, she still creampies you for 1]
		now a random demon lord is not penetrating vagina;
	otherwise:[TODO: making her wear a condom gives no reward]
		let P be the pregnancy of the player;
		say CreampieFlav of M;
		if image cutscenes is 1, display figure of demoness cutscene 12;
		WombFill the semen load of M;
		if P > 0 and the pregnancy of the player is 0, now the semen volume of vagina is 0;
	now the excitement of M is 0;
	satisfy M.

To say PullOutFlav of (M - a demoness):
	say "The [M] hilts herself deep inside your [vagina], cackling madly as she floods you with her load. An instant chill, like a candle being blown out, falls over your body as her [semen] flows into your [vagina], and a [if the virgin bonus of the player < 0]second, stronger feeling of shame[otherwise]strange feeling of emptiness[end if] settles heavily in your chest.[line break][speech style of M]Could you feel, that, baby? I just fucked that juicy soul straight out of your body, and you just let it happen! Hahaha! I hope it was worth it!'[roman type] She pulls out, cackling madly as she pinches your clit between two ominously glowing fingertips. You feel an explosion of pleasure radiate out from your crotch, causing powerful waves of euphoria to crash through your body. You feel incredible...but in an empty way.";
	vaginally orgasm shamefully;
	make the player soulless;
	humiliate 1000;[being soulless isn't really all that bad, so we do this as well!]
	IntUp 5;
	DexUp 5;
	StrengthUp 5.

To say CreampieFlav of (M - a demoness):
	let F be a random orifice penetrated by M;
	if the pregnancy of the player is 1:
		say "The [M] [one of]roars with pleasure,[or]emits a drawn out moan[or]moans throatily,[at random] tightening her grip as a wave of warmth enters your pussy and quickly spreads outward into your [ShortDesc of Belly]. You hear an ominous rumble, and with a snap of her fingers, your belly instantly shrinks down to normal. She smirks, wiping the leftover cum off her [manly-penis] and licking it off her fingers as she pulls out. [speech style of M]And now, I'll just take my payment![roman type][line break]";
		let R be a random number between 2 and 4;
		SexAddictUp R;
		SemenAddictUp R - 5;
		say "She loses interest.";
		now the father is the throne;
 		now the pregnancy of the player is 0;
 		now the semen volume of vagina is 0;
	otherwise:
		say "[one of]The [M] grunts, her [manly-penis] throbbing as she unloads her lust directly into your [vagina]. She sighs in satisfaction, raking a hand across your [AssDesc] as she pulls out.[or]The [M] tightens her grip, nails digging into your tender skin as she grunts in pleasure. [if the semen addiction of the player < 7]You shudder and look over your shoulder[otherwise if the semen addiction of the player < 15]You gasp and look over your shoulder[otherwise]You look over your shoulder and grin[end if] as piping hot [semen] flows into your [variable F]. She leers back at you, pulling out with an exaggerated sigh of contentment.[or]The [M] coos and tightens her grip. You [if the semen addiction of the player < 7]whimper[otherwise if the semen addiction of the player < 11]sigh quietly[otherwise]moan happily[end if] as her [manly-penis] pumps wave after wave of hot, hot [semen] directly into your [variable F]. She roughly squeezes your [AssDesc] as she pulls out.[at random]";
		compute happy reward of M.

Section 2 - Damage

To decide which number is the damage modifier of (M - a demoness):
	[50% chance of +2 damage with priestess vs demoness]
	if the class of the player is priestess and M is demoness and a random number between 1 and 2 is 1:
		now critical is 1;
		decide on 2;

To compute damage of (M - a demoness):
	if the health of M > 0:
		if the sleep of M is 0:
			if M is uninterested:
				say "She hisses and her eyes turn red!";
				now M is interested;
				anger M;
			otherwise:
				if M is friendly:
					say "She hisses and her eyes turn red!";
					anger M;
				otherwise:
					say DamageReaction (the health of M) of M;
					increase the excitement of M by 1;
		otherwise:
			anger M;
			now M is interested;
			now the sleep of M is 0;
			if the difficulty of M < 6, now the difficulty of M is 6;
			say "She wakes up, and immediately rises to her full height with a fierce howl!  ";
	otherwise:
		compute death of M;

To say DamageReaction (N - a number) of (M - a demoness):
	if N > (the maxhealth of M / 4) * 3:
		say "She hisses, easily taking the hit!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "She takes the hit with an ear-splitting shriek!";
	otherwise if N > (the maxhealth of M / 4):
		say "She wails at you with a piercingly high voice!";
	otherwise:
		say "Her wailing seems to be weaker than before!".

To compute unique death of (M - a demoness):
	let R be a random number between 1 and 5;
	say "The [noun] screams as she falls to the floor, and then you watch as her essence is sucked back into her home dimension.";
	now M is not penetrating asshole;
	repeat with F running through shoes worn by the player:
		now F is not stuck;
	let H be a random off-stage dildo heels;
	let G be a random off-stage infernal gem;
	[Soul Restoration]
	if the player is soulless:
		say "You feel your soul re-enter your body!";
		now the player is souled;
		if the player-class is succubus:
			now the humiliation of the player is the souled-humiliation of the player;
	if R  < 3 and H is heels:
		now H is in the location of the player;
		now the raw-magic-modifier of H is a random number between 0 and 2;
		now H is kicking;
		now H is cursed;
		say "All that remains are her dildo heels.";
		compute autotaking H;
	otherwise if R < 5 and G is infernal gem:
		say "All that remains is her [G].";
		now G is in the location of the player;
		compute autotaking G;
	otherwise:
		loot M.

To uniquely destroy (M - a demoness):
	repeat with S running through stuck clothing:
		now S is not stuck;
	now the variety of M is 0.

Part 5 - DQ

demoness-plug is a diaper punishment.  The priority of demoness-plug is 5.
Definition: a demoness-plug (called P) is appropriate:
	if current-monster is not demoness, decide no;
	if there is a worn diaper and there is an off-stage prostate massager plug, decide yes;
	decide no.

To compute punishment of (P - demoness-plug):
	compute prostate plugging of current-monster.

Definition: a demoness (called M) is willing to change diapers:
	decide yes.

Definition: a demoness (called M) is diaper disciplining:
	decide yes.

Definition: a demoness (called M) is willing to masturbate:
	if there is a sex toy penetrating asshole, decide yes;
	decide no.

 Definition: a demoness (called M) is able to carry out masturbation:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if refactoryperiod > 0, decide no;
	decide yes.

To say MasturbationDeclarationFlav of (M - a demoness):
	say "[speech style of M]'Let's take that [random sex toy penetrating asshole] for a spin, shall we?'[roman type]  ".

To say MasturbationStartFlav of (M - a demoness):
	say "The [M] focuses [his of M] mystical energy on your [random sex toy penetrating asshole].  It begins vibrating!".

To say MasturbationFlav of (M - a demoness):
	say "The vibrations in your [asshole] send erotic sensations through your body!".

To say MasturbationAfterFlav of (M - a demoness):
	say "The [M] seems satisfied, and removes [his of M] mystical grip from your [asshole].[if the player is a bit horny][MasturbationTeaseFlav of M][end if]".

Definition: a demoness (called M) is eager to confiscate:
	if M is able to confiscate, decide yes;
 	decide no.

Definition: a demoness (called M) is willing to confiscate:
	decide yes.

To say ConfiscationAfterFlav of (M - a demoness) on (C - a clothing):
	say "[speech style of M]'[one of]You should be thankful that I don't punish you further.'[or]Mortal babies don't get to double-guess the decisions of immortal adults.'[or]Silence, mortal! You have no rights compared to a being such as myself.'[in random order][roman type][line break]".


			
Part 6 - Conversation

To IdentifiablePosterReaction of (M - a demoness):
	say "The [M] looks at you, blinks, then looks back to the poster.  Upon realising that it is you, she starts laughing uncontrollably.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a demoness):
	say "[speech style of M]'Now that's is one [tasty] piece of ass.'[roman type][line break]";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Section 1 - Greeting

To say FirstResponse of (M - a demoness):
	say "[speech style of M]'Hey.  Like my heels?'[roman type][line break]";
	if images visible is 1, display figure of dildo heels;

To say RepeatResponse of (M - a demoness):
	say "[speech style of M]'[one of]Hi. Know any weaklings I can crush? I[']m getting a bit bored.'[or]Hey. Do me a favor and don't give that witch anything.'[or]Hey there. Tell Xavier I said hi. You[']ll know him when you see him.'[at random][roman type][line break]";
	
To say UnfriendlyResponse of (M - a demoness):
	if the player is a sissy:
		say "[speech style of M]'[one of]Come here looking for a dick to suck? How about I ruin your sissy ass instead?'[or]I can tell just by looking at you that you[']re going to love having your asshole ruined.'[or]Did you come all the way here for me to punish you, sissy?[or]I love crushing weaklings like you. Are you ready?'[at random][roman type][line break]";
	otherwise if the class of the  player is priestess:
		say "[speech style of M]'[one of][if M is uninterested]YOU![otherwise]You will BURN![end if]'[or]You will suffer for your god, priestess.'[or]When I am finished torturing you...send the goddess my regards.'[or]Pray all you like, priestess, it will not help you now!'[or]So, the goddess sends another priestess for me to ruin. I'd be annoyed if it weren[']t so much fun.'[or]Say your prayers, priestess!'[or]So, you came here seeking to challenge me, but you did not bring a cross. You will pay dearly for that mistake.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]All mortals are beneath me, but especially vermin like you.'[or]Not intimidated by me, mortal? I can fix that.'[or]Addressing me directly...you[']ll suffer for that.'[or]I will cook your soul at a slow burn, mortal.'[or]The power of speech is wasted on creatures like you.'[at random][roman type][line break]".
	
To say DominantResponse of (M - a demoness):
	if M is unfriendly, say "[speech style of M]'[one of]Hmm, strange decision to show your face here again.'[or]Ready to get tortured again, are we?'[or]Hahaha...your eagerness for punishment pleases me!'[or]I won't make you bleed...but you'll wish I did.'[at random][roman type][line break]";
	otherwise say "[speech style of M]'[one of]Hmm, strange decision to bring that up.  Are you trying to tempt me to give you another round?'[or]Unless you want to get tortured again, I'd suggest talking about something else, child.'[at random][roman type][line break]".

To say midDominanceResponse of (M - a demoness):
	let N be a random monster penetrating asshole;[we need not check for buttplugs since the demoness can take them out.]
	if N is not a monster:
		say "[speech style of M]'[one of]Why help you when I could torture you?'[or]I can help you out of this bind. But instead I[']m going to punish you. Haha!'[or]You look like you could use a good ruining.'[at random][roman type][line break]";
	otherwise if watersports fetish is 1:
		say "[speech style of M]'[one of]If it's help you want, I[']m just going to punish you.'[or]I[']m going to ruin you later, but I guess I can settle.'[or]I[']m happy to contribute. Don[']t worry, this is just an appetizer for the ruining I[']ll give you later.[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I[']d love to torture you, but I'll leave you for now.'[or]I[']ll torture you another time. Don[']t worry.'[at random][roman type][line break]".[skimpy but this is uncommon]

To say AsDominantResponse of (M - a demoness):
	if the relevant sex addiction of M < 8: [somewhere around here.]
		say "[speech style of M]'[one of]Didn[']t you know? Whining makes me horny.'[or]Your suffering is music to my ears...'[or]Beg for mercy and there[']s a chance I'll spare you.'[or]I[']m going to ruin you!'[or]I[']m not stopping until you[']re in tears!'[or]It's alright. I[']m only trying to hurt you.'[or]You[']ll learn to like this pain...or you won[']t. Either way, I[']m enjoying myself.'[or]Your suffering is *delicious*.'[or]Suffer, worm! I want to see your tears...'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Shut up, you[']re annoying me.'[or]Ugh, I know you[']re slutty, now shut up.'[or]Silence![or]Shut up, I[']m enjoying myself.'[at random][roman type][line break]".

Section 2 - Questioning

To compute answer of (M - a demoness) to (Q - a number):
	if the questioned of M > 290 or M is uninterested:
		compute annoyance of M;
	otherwise if Q < 4:
		say "[WhereAnswer of M]";
	otherwise if Q < 6:
		say "[WhoAnswer of M]";
	otherwise if Q < 8:
		say "[StoryAnswer of M]";
	otherwise if Q < 10:
		say "[EscapeAnswer of M]";
	otherwise:
		say "[AdviceAnswer of M]";
	if the questioned of M <= 290:
		increase the questioned of M by 200;[The demoness is not very tolerant of mortals]
	otherwise:
		increase the questioned of M by 50.


[I think it makes sense to have her be a little more standoffish than everyone else.]
To compute annoyance of (M - a demoness):
	if M is uninterested:
		say "The [M] ignores your question.";
	otherwise if M is unfriendly:
		say "[speech style of M]Silence, worm. Submit to me!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'What am I, your carer? Cease disturbing me, mortal.'[roman type][line break]".

To compute teaching of (M - a demoness):
	say "[speech style of M]'Why not try strutting around in those heels like a proper whore?  You might think that sluts just wave their ass around with fully stretched legs to attract the guys, but actually it's just the easiest way to walk.  Sure you might look like a bimbo, but you'll find that your body is more free to move around.'[roman type][line break]";
	if image cutscenes is 1, display figure of demoness cutscene 14;
	teach strutting;
	if the questioned of M <= 290:
		increase the questioned of M by 150;[She's always happy to teach you more about heels, though.]
	otherwise:
		increase the questioned of M by 50.

To say WhereAnswer of (M - a demoness):
	say "[speech style of M]'The mortal realm.  Is that not obvious?'[roman type][line break]".
	
To say WhoAnswer of (M - a demoness):
	say "[speech style of M]'A servant of malice and lust from the eternal realm[if the player-class is succubus], just like you are now![end if]'[roman type][line break]";
	if image cutscenes is 1, display figure of demoness interact 10.
	
To say StoryAnswer of (M - a demoness):
	say "[speech style of M][if the player-class is not succubus]'I have come to show unbearable pleasure and pain to all mortals![otherwise]'Oh, need someone to explain the ropes to you? It[']s simple, just strut around devouring the souls of the weak, giving your service only to the mighty demon lord.[end if]'[roman type][line break]".
	
To say EscapeAnswer of (M - a demoness):
	say "[speech style of M]'For me, if I lose too much energy I will be banished back to my home dimension[if the player-class is succubus]. It works a bit differently for you though.'[roman type] She points to the stone in your chest. [speech style of M]'The demon soul within that stone will devour your identity slowly if it thinks you are acting unbecoming one of us. If you make it mad enough, it[']ll completely erase whatever was left of you[end if]!'[roman type][line break]".
	
To say AdviceAnswer of (M - a demoness):
	say "[speech style of M]'Anything in your location when you are banished back to your home realm, will remain there and not disappear. Except creatures of course.'[roman type][line break]".

Section 3 - Drink Requesting

To compute unfriendly drink of (M - a demoness):
	if M is unfriendly:
		say "[speech style of M]'Silence!  Do you not understand what is happening here?!'[roman type][line break]";
		now the boredom of M is 0;
	otherwise:
		say "[speech style of M]'Do not attempt to talk to me, mortal.'[roman type][line break]".

To compute friendly drink of (M - a demoness):
	let H be a random worn heels;
	if (the class of the player is succubus or H is clothing and the heel-height of H > 3) and M is dealing:[only a dummy would ask anything from a demoness!]
		say "[one of]The [M] seems surprised for a second and smirks. [speech style of M]'I can do more than quench your thirst, you know. Get on your knees and open wide. I[']ll do the rest.'[roman type][or][speech style of M]'You[']re dumber than you look. Accept my deal and you get something to drink.'[roman type][stopping]";
	otherwise if M is dealing:
		say "[speech style of M]'[one of]I don[']t give handouts. But I promise a drink and more if you lend me your mouth for a while.'[or]I told you about the deal already, don[']t waste my time if you aren[']t interested.'[stopping][roman type]";
	otherwise if watersports fetish is 1:
		say "[speech style of M]'You don[']t really have anything I want, but I suppose it would be fun to watch you drink my urine. [if the player is upright]Kneel.[otherwise]Open wide.[end if]'[roman type][line break]";
		if the humiliation of the player > 17500 or the thirst of the player is 5:
			say "[if the player is upright]You instantly get on your knees.  [end if]You [if the humiliation of the player > 17500]are happy to submit to the degradation[otherwise]are desperate enough to drink absolutely anything[end if].";
			DrinkPiss;
			if the player is upright, try kneeling;
		otherwise:
			say "You aren't [if the thirst of the player < 4]nearly [end if]thirsty enough to drink her [urine]!";
	otherwise if M is interested:
		say "[speech style of M]'You don[']t have anything I want.'[roman type]";
	otherwise:
		say "She doesn't seem to realize that you're talking to her.".
	
To compute desperate drinking to (M - a demoness):
	say "You spot a [M]! You [if the player is upright]drop to your knees and [end if]beg [him of M] to give you something to drink.";
	now the stance of the player is 1;
	if M is unfriendly:
		compute unfriendly drink of M;
	otherwise:
		now M is interested;
		compute friendly drink of M.

Part 7 - Variants

Section 1 - Abyssal Demoness

An abyssal demoness is a kind of demoness. There is 1 abyssal demoness.
The printed name of abyssal demoness is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]abyssal demoness[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". An abyssal demoness is usually mansion dwelling. An abyssal demoness is usually not woods dwelling. The text-shortcut of abyssal demoness is "ade".

To compute perception of (M - an abyssal demoness):
	now M is interested;
	say "The [M] notices you[if the player is sluttily dressed][end if].  "; [The output for if the player is sluttily dressed occurs within the check itself.]
	let T be 1;
	if there are worn heels:
		repeat with H running through worn heels:
			if H is dildo heels or the heel-height of H > 3, now T is 0;
	if the player is flying:
		say "What are you doing on my ceiling! Do you believe yourself ABOVE ME?! How dare you!";
		anger M;
	otherwise if the latex-transformation of the player > 3:
		say "She doesn't seem interested for some reason.";
		bore M;
	otherwise if T is 0:
		say "[speech style of M]'[if T is 0][one of]Oh wow, nice heels!  Where did you get them from?'[or]Glad to see you're still wearing proper heels.'[stopping][otherwise]Ah, a fellow servant of the Master.'[end if][roman type][line break]";
		calm M;
	otherwise if M is uniquely unfriendly:
		anger M;
		if the class of the player is priestess:
			say "Immediately upon seeing you, she shrieks: [speech style of M]Your holy aura has no power out here, mortal!  Get on your knees and submit to me as your new Mistress, or I will make you!'[roman type][line break][if M is friendly]Apparently she doesn't like priestesses...[end if]";
			say "Your holy aura does seem to have some effect against her, as you are easily able to resist her dominating aura which tries to make you kneel on command.";
		otherwise:
			say "[speech style of M]'[if M is uninterested]You, whore!  [otherwise]You know what?  [end if][if the player is upright]Kneel down, I feel like ruining someone.'[otherwise]Stay down there, I'm going to punish you.'[end if][roman type][line break]Uh-oh...";
			if a random number between 1 and 15 < the bimbo of the player and the player is upright and the player is not dildo stuck:
				say "The [M] has such a powerful dominating aura that you mindlessly drop to your knees in front of her[if the bimbo of the player > 8], nearly drooling at the thought of her heel drilling inside you[end if].";
				now seconds is 1;
				try kneeling;
	otherwise if the player is prone:
		say "[speech style of M]'[if the class of the player is cultist]Servant.'[otherwise if the class of the player is succubus]Good practice, sister. Glad to see some of his servants aren't idiots.'[otherwise]Get used to crawling, girl, all will be servants eventually.'[end if][roman type][line break]";
		distract M;
	otherwise: [We know by know that the player must be upright.]
		if the class of the player is succubus:
			say "[speech style of M]'The mortals here are mine, sister. Do not forget that.'[roman type][line break]";
			distract M;
		otherwise:
			say "[speech style of M]'[if the class of the player is cultist][one of]You, servant. I don't recognize you, but then again you mortals all blend together for me. Standing in my presence is a direct challenge to my authority. Get on your knees. Now.'[or]KNEEL! KNEEL IN MY PRESENCE, PEON!'[stopping][otherwise]Kneel in my presence, mortal. Quickly, I wouldn't want to hurt you. HAHAHA!'[end if][roman type][line break]Obey?[line break]";
			if a random number between 3 and 22 < the delicateness of the player and the player is not dildo stuck:[I'm not sure if this is redundant.]
				say "The [M] has such a powerful dominating aura that you mindlessly drop to your knees in front of her[if the anal sex addiction of the player > 6], nearly drooling at the thought of what she could do to you with those heels.[end if].";
				now seconds is 1;
				try kneeling;
				calm M;
			otherwise if the player is not dildo stuck and the player consents:
				say "You drop to your knees.";
				now seconds is 1;
				try kneeling;
				calm M;
			otherwise:
				anger M.

This is the demoness ghost summoning rule:
	let M be current-monster;
	if M is abyssal demoness:
		if the variety of M is 0,	say "The [M] places her hands out on front of her, forming a triangle with her fingers as she concentrates. It's like she's draining the heat from the air around you.";
		otherwise say "The [M] is still concentrating on...whatever it is she's doing!";
		repeat with G running through on-stage ghosts:
			now G is interested;
		increase creepiness by 10;
		now the variety of M is 1.
The demoness ghost summoning rule is listed in the demoness attack rules.

To compute the busy waiting of (M - an abyssal demoness):
	say "The [M] seems to be channelling energy into the gem hanging from her neck. The heavy feeling in the air is getting more[one of][or] and more[stopping] intense.";
	DifficultyUp M by 1;
	increase creepiness by 3.

To compute (M - an abyssal demoness) entering asshole:
	say "The [M] lifts up one of her feet, on which are her unique black shoes with [one of]dulled[or]shiny[sticky random] glass dildos for heels.  She continues cackling and pushes the heel into your [asshole]! As the demoness sinks in, she curls her lips into a wicked grin, gritting her teeth and going wide-eyed. Clearly she enjoys herself behind you as a cackle rings out to echo off the walls. Either she is really pent up or just enjoys ruining the players.  Some kind of magic grasp is preventing you from moving.";
	now M is penetrating asshole;
	if the soreness of asshole < 10, AssRuin 1.

To say SummoningFlav of (M - a demoness):
	if M is in the location of the player, say "The air around you grows unbearable cold and hot at the same time, as the mummy's wrappings darken, as if rapidly soaking up water. An [M] comes into view as the old fabric slowly unravels, laughing cruelly as the soggy cloth struggles to reform behind her.";
	otherwise say "You hear the sound of inhuman laughter.".


Demoness ends here.
