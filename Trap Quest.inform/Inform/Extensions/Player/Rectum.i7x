Rectum by Player begins here.


[!<ComputeSoiling>+

REQUIRES COMMENTING

+!]
To compute soiling:
	if the player is upset about mess and the delicateness of the player < 20:
		say "You shiver uncontrollably as you continue to wallow in your own mess.";
		DelicateUp 1;
	unless asshole is actually occupied or the latex-transformation of the player > 4:
		if diaper lover is 3, compute scene messing;
		if diaper lover >= 4:
			if there is a matron in the location of the player, compute scene messing;
			otherwise compute real messing.

[!<ComputeSceneMessing>+

REQUIRES COMMENTING

+!]
To compute scene messing:
	let M be a random alive matron;
	if there is a worn total protection diaper and the player is not immobile and the player is not in danger and M is matron and a random number between 1 and rectum > 3:
		if the player is in the hotel:
			if a random number between 3 and (10 - rectum) > incontinence:
				say "[bold type][one of]Out of nowhere, you suddenly become acutely aware of how much food you've eaten recently, and[or]Once again[stopping] you feel the immediate desperate need to [if the bimbo of the player < 7]have a bowel movement[otherwise]go number two[end if][one of] and use your [random worn diaper][bold type] for its true purpose[or][stopping].[roman type]  [MatronResponsible]Do you fight back against the cramps and try and hold it in? [yesnolink] ";
				if the player consents:
					if the player is upright:
						say "You succeed in holding it in, but the pain of the cramps forces you to your knees.";
						try kneeling;
					otherwise:
						say "You somehow manage to hold it in for now.";
				otherwise:
					now diaper-scene-unhandled is 1;
					compute messing;
			otherwise:
				say "[bold type][if the player is upright]As you stand there[otherwise]As you rest on your hands and knees[end if] you start to realise there is a squishy feeling growing between your butt cheeks.  You stop in shock as you realise you're messing yourself[one of][or] again[stopping]![roman type][line break][MatronResponsible]";
				now diaper-scene-unhandled is 1;
				compute messing;
		otherwise if rectum + the incontinence of the player < a random number between 5 and 10:
			say "Your tummy rumbles ominously[one of].  Something tells you that you should return to the hotel sooner rather than later...[or].[stopping]";
		otherwise:
			say "Your tummy cramps [if rectum < 10]painfully[otherwise]brutally[end if][if the player is upright], forcing you onto your knees[end if].  You feel a burning need to find the [M].";
			try kneeling;
			if rectum >= 10:
				say "It takes you several moments to recover.";
				now another-turn is 1.

[!<ComputeRealMessing>+

REQUIRES COMMENTING

+!]
To compute real messing:
 	let can-mess-now be 0;
	if rectum > 1 and there is a worn total protection soilable knickers and asshole is not actually occupied and the number of live things penetrating vagina is 0 and (the number of things grabbing the player is 0 or diaper quest is 1), now can-mess-now is 1;
 	let I be 9 - (incontinence + suppository);
 	if I < 4, now I is 4;
	if debugmode >= 1 and rectum > I and can-mess-now is 1, say "Rectum of [rectum] vs continence of [I * 1].";
	if rectum >= I and can-mess-now is 1:
 		say "All of a sudden, you feel your rectal muscles spasming and you have absolutely no control as it begins to empty itself of its contents!  ";
 		compute messing;
	otherwise if rectum >= I - 4 and can-mess-now is 1 and the player is feeling full:
		say "[bold type]Your body is trying to go number two![roman type]  Do you want to try and hold it in? [yesnolink] ";
		if the player consents:
			say "You manage to hold it in for now.";
		otherwise:
			say "";
			compute messing;
	if (can-mess-now is 1 or suppository > 0) and the player is feeling full:
		let D be a random eligible diaper;
		say "[one of][bold type][or][stopping]Your tummy rumbles ominously[one of].  [variable custom style]That can't be a good sign[if the incontinence of the player < 4].  I'm starting to feel like I need to go number two[end if]...[or][stopping].[roman type][line break]";
		if the number of worn soilable knickers is 0 and diaper focus is 1 and D is diaper:
			say "As if reacting to your tummy, ";
			let K be a random worn knickers;
			if K is knickers:
				say "your [ShortDesc of K] suddenly morphs into ";
				only destroy K;
			otherwise:
				say "your loins are suddenly surrounded by ";
			summon D cursed;
			say "a [ShortDesc of D]![one of][line break][variable custom style][if the delicateness of the player < 14]Oh my god, the game is trying to make me mess myself...[otherwise]At least now I have a toilet to go in.  Thank you game![end if][roman type][line break][or][stopping]";
		otherwise if suppository > 0 or a random number between 1 and 5 is 1:
			say "Your tummy cramps [if rectum + suppository < 8]painfully[otherwise]brutally[end if][if the player is upright], forcing you onto your knees[end if].  You feel a desperate need to find [if the diaper addiction of the player < 12]a toilet[otherwise]a diaper[end if].";
			try kneeling;
			if rectum + suppository >= 8:
				say "It takes you several moments to recover.";
				now another-turn is 1.

[!<ComputeMessing>+

REQUIRES COMMENTING

+!]
To compute messing:
	if rectum < 2, now rectum is 2;
	now the alert of the player is 1;
	let D be random worn knickers;
	let M be a random matron;
	let reactions-suppressed be 0;
	if the total squirtable fill of belly > 0:
		now reactions-suppressed is 1;
		asssquirt;
	otherwise:
		if D is diaper:
			diaperaddictup 1;
			if rectum < 3:
				say "A small amount of squishy mush finds its way out of your butt and into your [ShortDesc of D]."; [Should be a rare occurrence that only happens from suppositories]
			otherwise if rectum < 5:
				say "A reasonable amount of squishy mush forces its way out of your butt and fills your [ShortDesc of D].  It's instantly noticeably heavier and any movement you make [if the diaper addiction of the player < 3]completely disgusts you[otherwise if the diaper addiction of the player < 6]feels all weird and gross[otherwise if the diaper addiction of the player < 9]feels strange[otherwise if the diaper addiction of the player < 11]feels weirdly enjoyable[otherwise if the diaper addiction of the player < 13 or the player is not able to get horny]turns you on[otherwise if the diaper addiction of the player < 15]makes your [genitals] feel [italic type]amazing[roman type][otherwise if the diaper addiction of the player < 17]makes your [genitals]feel so [italic type]amazing[roman type] that you instantly want to rub your diaper[otherwise]makes your [genitals] feel so [italic type]amazing[roman type] that you instantly want to find a grown-up to give you [italic type]cummies[roman type][end if].";
			otherwise if rectum < 8:
				say "A large amount of squishy mush forces its way out of your butt over several seconds, fills your [ShortDesc of D] out so much that you almost grow concerned about the limits of what it can hold.  You're shocked by how heavy it now feels, and how impossible it is for you to close your legs.  You can feel it squelching against your butt as you move.";
			otherwise if rectum < 10:
				say "Your [asshole] gapes wide as a huge bulky log starts to force its way out of your rear.  You can feel your [ShortDesc of D] stretching and straining as the massive piece of excrement continues to snake out, emptying your gut but filling your pants.  There's so much that part of the mush has to force its way between your thighs and squelch its way into the front of your nappy.  To be honest you're just glad that your [ShortDesc of D] was somehow able to contain your mega bowel movement.  Moving is almost out of the question - every time you try you can feel the [if the diaper addiction of the player < 9]gross[otherwise if the diaper addiction of the player < 13]strange[otherwise if the diaper addiction of the player < 15]pleasant[otherwise]sexy[end if] sludge sliding against your skin.";
			otherwise:
				say "With the least dignified noise you've ever heard, you overly full guts begin to excavate themselves.  Your [ShortDesc of D] rapidly expands outwards, forced to in every direction by the veritable truckloads of smelly goop that is forcing its way out of your [asshole].  You are unable to stop the flow as log after log pushes its way out of your rectum, each one finding it more difficult than the one before to find a resting place.  Soon your [ShortDesc of D] is almost twice its previous size, straining under the pressure as your poop forces itself between your legs and into the front of your nappy, filling that side too.  Completely stunned, you can do nothing but shudder, moan and press your hands against your padding as the biggest shit of your life continues, warm foamy sludge following swiftly behind your uncountable number of solid chunks, filling up the small amounts of gaps left for it to find.  [one of]Your [ShortDesc of D] has become a padded [if the diaper addiction of the player < 13]prison[otherwise]paradise[end if] [if the diaper addiction of the player < 13]within[otherwise]from[end if] which you are almost completely unwilling to [if the diaper addiction of the player < 13]move[otherwise]leave[end if].  You [if the diaper addiction of the player < 13]have no idea what to do[otherwise]had no idea messing yourself would feel this good[end if]![or]Once again your [ShortDesc of D] has become your messy [if the diaper addiction of the player < 13]prison[otherwise]paradise[end if]![stopping]";
		otherwise:
			say "A [if rectum < 3]a small amount of mush[otherwise if rectum < 5]reasonable amount of squishy mush forces its way[otherwise if rectum < 8]large amount of lumpy mush[otherwise if rectum < 10]huge bulky log forces its way[otherwise]seemingly unending series of large mushy lumps become one giant ball which stretches you on its journey[end if] out of your butt and fills your [ShortDesc of D].  You feel it bulge out behind you, and you're almost afraid to move at all.  A diaper would at least shield and properly contain your shame but the [ShortDesc of D] threatens to buckle at any moment.  You need a change, and you need one now!";
	if (diaper lover is 3 or M is in the location of the player) and diaper-scene-unhandled is 1: [We only do this if the messing was triggered from a scene that can't handle the mess on its own]
		now diaper-scene-unhandled is 0;
		say "[variable custom style][if the diaper addiction of the player < 7 and voluntary-messing is 0]How did I let this happen?![otherwise if the diaper addiction of the player < 12]Am I really just as pathetic as an incontinent child now?[otherwise if the diaper addiction of the player < 15]I can't believe how good that felt...[otherwise]Uh-oh, I did a naughty thing[one of]!  But it was so fun[or]again, and that means I get a change from Nanny!  Yay[stopping]![end if][roman type][line break]";
		repeat with N running through monsters in the location of the player:
			unless N is M:
				say "The [N] makes a speedy exit!";
				regionally place N;
				dislodge N;
		if M is in the location of the player:
			say "The [M] [if M is changing the player]continues to hold her hand pressed against your rear, making sure you realise that she is a full witness to your shame[otherwise]instantly notices your sagging incontinence aid and before you can move a muscle she is standing over you, one hand pressed firmly against the warm posterior of your padding[end if].  [speech style of M]'[one of]Uh-oh, what do we have here?!  How have you managed this, you naughty baby!  Only the most pathetic of babies can't control their number twos!  [or]Again?!  You're so lucky I'm always here when you need me, really now.  If you can't control your bottom you're going to have to be in nappies for a long, long time.  [stopping][if rectum > 6][one of]And how in the heavens is there so much?!  How long has it been since you last went potty?!  [or][stopping][end if]Let's get you [if the player is not in Hotel22]back to the nursery and [end if]changed[one of] into something less stinky[or][stopping].";
		otherwise:
			say "Just as you finish [if the diaper addiction of the player < 9]one of the most humiliating experiences of your life[otherwise if the diaper addiction of the player < 15]your potty pants session[otherwise]you're incredibly fun potty pants session[end if], the [M] suddenly arrives, adding to your shame.  She [if M is changing the player]continues to hold her hand pressed against your rear, making sure you realise that she is a full witness to your shame[otherwise]instantly notices your sagging incontinence aid, and before you can move a muscle she is standing over you, one hand pressed firmly against the warm posterior of your padding[end if].  [speech style of M]'[one of]Uh-oh, what do we have here?!  How have you managed this, you naughty baby!  Only the most pathetic of babies can't control their number twos!  [or]Again?!  You're so lucky I'm always here when you need me, really now.  If you can't control your bottom you're going to have to be in nappies for a long, long time.  [stopping][if rectum > 6][one of]And how in the heavens is there so much?!  How long has it been since you last went potty?!  [or][stopping][end if]Let's get you [if the player is not in Hotel22]back to the nursery and [end if]changed[one of] into something less stinky[or][stopping].'[roman type][line break]";
		if the player is not in Hotel22, say "[line break][bold type]The [M] [bold type]lifts you into the air and [if the player is in the Hotel]without a word swiftly carries you all the way to[otherwise]snaps her fingers, and after a brief moment of feeling like you are flying, suddenly you are back in[end if] the Nursery![roman type][line break]";
		if M is off-stage, set up M;
		if M is not in Hotel22, now M is in Hotel22;
		if the player is not in Hotel22, drag to Hotel22 by M;
		now busy is 0;
		say "She drops you down onto the giant changing table.  She smoothly and efficiently binds your wrists and ankles tightly with the inbuilt straps.";
		now M is interested;
		anger M;
		now M is grabbing the player;
		now M is changing the player;
		now the stance of the player is 1;
		let C be a random worn crotch covering clothing;
		now C is a random worn top level protection clothing; [Top level takes priority]
		if C is worn no protection overdress or C is chastity cage, now C is nothing; [These are allowed to stay around!]
		if C is nothing and there are worn knickers, now C is a random worn knickers;
		while C is clothing:
			if C is zippable and C is not diaper:
				say "[UnzipFlav of M at C]";
				now C is crotch-unzipped;
			otherwise if C is displacable overdress:
				say "The [M] pulls at your [C].";
				compute M displacing C;
			otherwise:
				say "The [M] [if C is diaper]slowly peels your [ShortDesc of C] away, revealing your ultimate shame.  [speech style of M]'You really should thank me for taking care of this for you.'[roman type]  The messy diaper is removed and set aside, still within your view.  Your face turns redder than a strawberry as the [M] works speedily with a small power hose and a bag of wet wipes to remove every last smelly molecule of evidence from around your butt.  You find yourself sighing quietly in relief[otherwise]rips off your [ShortDesc of C][end if].";
				if C is diaper, humiliate 100 * rectum;
				only destroy C;
			now C is a random worn crotch covering clothing;
			now C is a random worn top level protection clothing; [Top level takes priority]
			if C is worn no protection overdress or C is chastity cage, now C is nothing; [These are allowed to stay around!]
			if C is nothing and there are worn knickers, now C is a random worn knickers;
		now the variety of M is 99;
		now current-monster is M;
		reset rectum;
		follow the matron changes a diaper rule;
	otherwise:
		increase the mess of D by rectum - 1;
		if the player is upset about mess:
			say "[variable custom style][if the diaper addiction of the player < 7 and voluntary-messing is 1]I'd better be able to find a way to clean up fucking quickly.  This is nasty.[otherwise if (the diaper addiction of the player < 12 and voluntary-messing is 1) or D is not diaper]I guess I should try and find a way to change now, before I make myself cry...[otherwise if the diaper addiction of the player < 7]How did I let this happen[one of][or] again[stopping]?![otherwise if the diaper addiction of the player < 12][one of]Am I really just as pathetic as an incontinent child now?[or]I guess it's time to accept that this is who I am now.  A useless baby who can't even control when she goes number two.[stopping][otherwise if the diaper addiction of the player < 15][one of]I can't believe how good that felt...[or]Mmmmph, that feels way too good...[stopping][otherwise]Uh-oh, I did a naughty thing[one of]!  But it was so fun[or]again, now I have to find a Mummy or Daddy to change me again[or]again, but it feels so good when I can't help myself[or]again[stopping]![end if][roman type][line break]";
 		otherwise:
			say "[variable custom style][if the diaper addiction of the player < 10][one of]I feel weirdly... comfortable.  It must be this baby outfit I'm wearing affecting my mind![or]I can't believe how comfortable I feel in a messy diaper.[stopping][otherwise if the diaper addiction of the player < 15][one of]I wanna make it go ever bigger![or]I bet I can fit even more in here![at random][otherwise]Feels... soo... good![end if][roman type][line break]";
			arouse 300 + (rectum * 50);
		if the player is desperate to pee:
			now diaper-reaction-said is 1;
			now delayed urination is 1;
			say "The act of messing your diaper also makes you wet yourself.";
			try urinating;
		if reactions-suppressed is 0: [If it's set to 1 then we already computed enema reactions and we don't want the NPCs to have two separate reactions to the same event.]
			if there is an intelligent monster in the location of the player and the player is able to speak:
				let M2 be a random intelligent monster in the location of the player;
				say "[diaper mess declaration of M2]";
			repeat with N running through intelligent monsters in the location of the player:
				compute diaper mess reaction of N;
 		reset rectum;
		if M is alive, now the boredom of M is 0; [Next time she sees the player she should probably pay attention!]
		now seconds is 6;
		now diaper-reaction-said is 0;
		now another-turn is 1.

[!<SayDiaperMessDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say diaper mess declaration of (M2 - a monster):
	say "[variable custom style]'[if the humiliation of the player < 15000]Noooo!  Don't watch!'[otherwise if the diaper addiction of the player > 15]Ooh [daddy of M2], I think I'm gonna need a change...'[otherwise if the humiliation of the player > 31000]Please watch me and laugh at me as I [one of]mess my stinky bottom[or]do a poopy in my pants[or]go number two[at random]!'[otherwise if the diaper addiction of the player < 8]Fuck fuck fuck, I can't believe this[one of][or] is happening again[stopping].  Please don't look!'[otherwise][one of]That was... bad timing...'[or]Uh-oh, it happened again...'[stopping][end if][roman type][line break]".

[!<ComputeDiaperMessReactionOfMonster>+

REQUIRES COMMENTING

+!]
To compute diaper mess reaction of (M - a monster):
	if diaper quest is 1:
		say "The [M] looks at you with [one of]a smug expression[or]a judging expression[or]a caring expression[or]a mildly disgusted sneer[or]a smirk[in random order].  [speech style of M]'[one of]Pathetic.'[or]It's not polite to do that in front of people, you disgusting baby.  Or can you not control yourself?'[or][if player-squatting is 1]Pooping yourself on purpose in front of me?  You really are a naughty little baby aren't you?'[otherwise]If you can't control your bum-bum then you're just a stinky little baby who doesn't deserve any respect.'[end if][or]It looks like you definitely need to be kept in diapers.'[or]Good.  Your potty untraining seems to be going well.'[or]I can't believe you'd do that right in front of me!'[in random order][roman type][line break]";
		humiliate 400;
		if player-squatting is 1, humiliate 500;
		FavourDown M by 4;
		distract M;
	otherwise:
		say "The [M] looks at you with [one of]disgust[or]shock[or]horror[or]disbelief[or]distress in [his of M] eyes[or]a wide open mouth[as decreasingly likely outcomes].  [speech style of M]'[one of]Holy shit, you can't be serious...  You're fucked up in the head.'[or]Please please PLEASE tell me you did not just crap yourself in front of me?!'[or]What the fuck are you doing?! Yuck, stop!!!'[or]What in the world?! Can you not control your own body?!  How disgusting.'[or]You're sick, you know that?'[or]This can't be real.  Gross!'[in random order][roman type][line break]";
		humiliate 400;
		if player-squatting is 1, humiliate 500;
		if M is friendly or M is uninterested:
			if M is friendly, say "Unable to stomach what [he of M][']s seeing, the [M] abandons you.";
			bore M;
			while M is in the location of the player:
				compute room leaving of M.

[!<SayMatronResponsible>+

REQUIRES COMMENTING

+!]
To say MatronResponsible:
	if the times-met of a random matron > 0 and diaper quest is 0, say "[one of]Somehow you know that matron is responsible for this!  [or][stopping]".

[!<voluntaryMessing:Integer>*

REQUIRES COMMENTING

*!]
voluntary-messing is a number that varies.

[!<messing:Action>*

REQUIRES COMMENTING

*!]
Messing is an action applying to nothing.
Understand "poo", "poop", "crap", "shit", "mess" as messing.

[!<CheckMessing>+

REQUIRES COMMENTING

+!]
Check messing:
	if the total squirtable fill of belly > 0, try squatting instead;
	if the player is not full, say "You don't feel the need." instead;
	if the incontinence of the player > 7, say "You've become so incontinent that you cannot feel or control this anymore! No matter how much you push, you feel absolutely nothing!" instead;
	if the player is able to use a toilet and the location of the player is toilets:
		now seconds is 6;
		compute toilet use instead;
	if the location of the player is toilets and the player is flying and the diaper addiction of the player < 15:
		say "[variable custom style]I'll need to wait until I land to use that toilet.[roman type][line break]" instead;
	otherwise if the location of the player is toilets and there is a worn total protection diaper:
		say "Do you want to go inside your diaper? [yesnolink]";
		if the player consents, do nothing;
		otherwise say "[variable custom style]I can't use the toilet like that right now, I need to remove some clothing first.[roman type][line break]" instead;
	otherwise if the location of the player is toilets:
		say "[variable custom style]I can't use the toilet right now.[roman type][line break]" instead;
	if the number of worn total protection diapers is 0, say "[variable custom style]I have no safe way to do that.  [if the diaper addiction of the player >= 8 and the diaper addiction of the player <= 16 and (the humiliation of the player >= 30000 or the number of intelligent monsters in the location of the player is 0)]I guess if I was wearing a diaper...[roman type][line break]";
	if the diaper addiction of the player < 4 and suppository is 0, say "[variable custom style]I can't bring myself to do that on purpose.[roman type][line break]" instead;
	unless diaper lover >= 4 or (there is a worn total protection diaper and the player is not immobile and the player is not in danger and there is an alive matron and a random number between 1 and rectum > 3 and the player is in the hotel), say "Something tells you that if you did this, there would be no way to immediately get changed.  [variable custom style]No way am I doing that.[roman type][line break]" instead;
	if the humiliation of the player < 30000 and there is an intelligent awake monster in the location of the player and the diaper addiction of the player < 17:
		if the player is a march 2017 top donator and debugmode > 0, say "If debug mode was disabled, the player would refuse.";
		otherwise say "[variable custom style]I can't bring myself to do that with people watching.[roman type][line break]" instead.

[!<CarryOutMessing>+

REQUIRES COMMENTING

+!]
Carry out messing:
	now voluntary-messing is 1;
	compute messing;
	now seconds is 6;
	now voluntary-messing is 0.

[!<targetMessing:Action>*

REQUIRES COMMENTING

*!]
TargetMessing is an action applying to one thing.
Understand "poo in [something]", "poop in [something]", "crap in [something]", "shit in [something]", "mess in [something]", "mess [something]", "soil [something]" as TargetMessing.

[!<CheckTargetMessing>+

REQUIRES COMMENTING

+!]
Check TargetMessing:
	try messing instead.



Rectum ends here.
