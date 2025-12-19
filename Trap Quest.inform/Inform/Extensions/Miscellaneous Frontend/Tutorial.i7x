Tutorial by Miscellaneous Frontend begins here.

tutorial is a number that varies.

Table of Tutorial
title	subtable	description	toggle
"I'm a new player, please show me the ropes (and chains)!"	--	--	quit rule
"I'm not a noob, my preferences file just got moved or deleted."	--	--	skip tutorial rule

This is the skip tutorial rule:
	now tutorial is 0;
	follow the quit rule.

This is the tutorial start rule:
	if earnings is starting-earnings, now tutorial is 1;
	follow the quit rule.

To say TutorialCapsule:
	if tutorial is 1:
		if the player is sexed female, now the flesh volume of breasts is 6;
		say "[paragraph break][newbie style]Hello and welcome to [if diaper quest is 1]Diaper[otherwise]Trap[end if] Quest! In this tutorial (and in the main game as long as you keep newbie tips enabled) you'll get some instructions, direction and advice from these green text paragraphs. Please pay good attention whenever you see one, since without this information you will probably get confused, frustrated and abandon the game, and nobody wants that.[paragraph break][if inline hyperlinks < 2]You have disabled in-line hyperlinks which is going to make your life much more miserable. It is strongly recommended to type 'settings' and navigate the menus to change this immediately. However if you really really hate the hyperlinks then you can use the keyboard to enter all commands so it is possible to play this way. But some verbs may not be obvious to you![otherwise]The game uses hyperlinks for your convenience, to try and help you understand what commands are available to you at any time. It is very important to understand both the power and the limits of the hyperlinks. The power is that you can examine and usually interact with any item using clicks. But these intelligent options are not always perfect - you can miss out on some options if you aren't aware that [bold type]you can use the keyboard to manually enter any commands. [newbie style]For example, maybe you want to examine a specific part of your body, such as your face. Rather than slow down the interpreter by providing a hyperlink for this every single round, we're leaving it up to you to realise that you can type 'examine face' (or even 'x face') at any time.[end if][if inline hyperlinks < 2]You can always use the keyboard to manually enter commands. For example, maybe you want to examine a specific part of your body, such as your face. So you can type 'examine face' (or even 'x face') at any time.[end if][line break]Note that most commands also have a shortcut/abbreviated form - like 'w' to go west, or 'x' for eXamine.[line break]";
		say "Anyway, in this room there is only one option! You are stuck in the capsule with nothing to interact with except for the big red button. You can examine it by [if inline hyperlinks < 2]typing 'x button'[otherwise]clicking on the main body of its hyperlink[end if] and then when you are ready to move on, you can push the button itself by [if inline hyperlinks < 2]typing 'push button'[otherwise]clicking on the 'push' option next to its name[end if]. Sometimes there might be too much text (and/or images) output to the main text window at one time, at which point you'll get a red [input-style][bracket]More[close bracket][newbie style] prompt at the bottom of the screen, and you'll need to [bold type]press any keyboard key[newbie style] on your keyboard to see the rest. And if at any time too much text has scrolled past and you need to remind yourself what is in the room[if inline hyperlinks >= 2] and regain access to the relevant hyperlinks[end if], just [if inline hyperlinks < 2]type[otherwise]click on[end if] 'look'. And if you're using Windows Git as recommended, you can always press [bold type]CTRL+L[newbie style] to scroll back through the entire transcript history.[roman type][line break]".

Check going west when tutorial is 1:
	say "There's no going back in this tutorial!" instead.
Check going north when tutorial is 1:
	say "There's no going back in this tutorial!" instead.

Tutorial01 is an introductory room. "A weird room with a stone ground and pink walls. Something tells you this is a practise area.[paragraph break][newbie style]Surprise, graphics! Your character starts off [if diaper quest is 1]naked and proud[otherwise]looking rather flat and androgynous[end if] but by the end of the game that will almost certainly not be the case. Anyway, as you're about to be told, there's a container in this room. Containers are your main way of obtaining loot. [bold type]You can click on the picture of the container to open a menu of buttons you can use to interact with that container.[newbie style] You can also enable text hyperlinks in the main game, and we have enabled them here to give you a sample of what that's like. The hyperlink shortcut 'op' stands for 'open'. When you find an item, it'll automatically be added to your bag of holding (a magic item which helps you hold infinite items) unless it's something you eat or drink. There's a limit on how many of these items you can carry so you'll have to actively choose to take them manually.[roman type][line break]". The printed name of Tutorial01 is "A pink room". The shape of Tutorial01 is L10/0-0-0-1-0-0. The grid position of Tutorial01 is <10,11,12>. Tutorial01 is discovered.

Check going east when the player is in Tutorial01:
	unless navy-monokini is worn, say "You should probably make sure that your naughty bits aren't on display before you continue.[unless navy-monokini is held] What's in that sack, I wonder?[end if]" instead.

Tutorial02 is an introductory room. "An identical room to the one before, but this one has a different container in the middle of it![paragraph break][newbie style]Looks like another thing you can open. This game is easy! Surely nothing can go wrong? Also, you'll notice you can see a guard in the next room, but not yet interact or even examine [him of a random royal guard]. You can only do actions to things in the same location as yourself.[roman type][line break]". Tutorial02 is east of Tutorial01. The printed name of Tutorial02 is "Another pink room". The shape of Tutorial02 is L10/0-0-0-1-0-1. The grid position of Tutorial02 is <10,12,12>.

Check going east when the player is in Tutorial02:
	unless there is a worn heels and navy-monokini is worn, say "You should probably make sure you're obtaining and wearing all possible equipment before moving forward." instead.

Report wearing:
	if tutorial is 1:
		if the noun is dress and the player is in Tutorial01, say "[newbie style]Great! [if diaper quest is 1]It's worth noting that this item has not appeared on your character's artwork: this is because the current version of the game you're playing is a work-in-progress, and we haven't drawn all the art yet! You'll encounter a large range of placeholder images that don't appear in the character window that will slowly disappear as we churn out more and more art. [end if]Now you should proceed to the east.[roman type][line break]";
		if the noun is heels, say "[newbie style]Uh-oh, these heels are cursed! A lot of items you'll find in this game will be cursed, and this means you won't be able to remove them easily. Also, it subtracts a further 1 from the effective magic modifier of the item, meaning that this '-1' item actually has an effective magic modifier of -2. This means that whatever stat it [bold type]influences[newbie style] (and most items will influence something) will be worse for you by two points. It turns out that this is an intelligence-influencing pair of heels, so your intelligence is currently being reduced by 2. There are only a few ways to get rid of cursed items, and the most common way is to get them blessed at an altar. Let's see if we can find one later!

		NB: Most items in the real game that you find in containers like this will come with a 'decurse quest' which gives you an alternate method of getting rid of the item. But usually the task will be something you should probably be trying to avoid...".

Tutorial03 is an introductory room. "An identical room to the one before, but this one has a scary looking [man of a random royal guard] in it![paragraph break][newbie style]Here's a non-player character! But clearly [he of a random royal guard] is currently facing a wall or something because [he of a random royal guard] hasn't noticed you. But never fear, you can force NPCs to notice you by using the 'talk' command. Let's hope [he of a random royal guard]'s friendly![roman type][line break]". Tutorial03 is east of Tutorial02. The printed name of Tutorial03 is "And another pink room". The shape of Tutorial03 is L10/0-0-0-1-0-1. The grid position of Tutorial03 is <10,13,12>.

Check going east when the player is in Tutorial03:
	unless there is an interested royal guard, say "You should probably get the guard's attention first." instead.

Carry out going east when the player is in Tutorial03:
	let M be a random royal guard in Tutorial03;
	try M going east.

Tutorial04 is an introductory room. "Another pink room with another container. How original.[paragraph break][newbie style]Let's open this container and find some more cool loot! There's also a tank of liquid but we don't have any way to scoop out the liquid yet.[roman type][line break]". Tutorial04 is east of Tutorial03. The printed name of Tutorial04 is "Yet another pink room". The shape of Tutorial04 is L10/0-0-0-0-1-1. The grid position of Tutorial04 is <10,14,12>.

Check going south when the player is in Tutorial04:
	let M be a random royal guard in Tutorial04;
	if M is interested, say "[if M is unfriendly]Because this is a tutorial, you can't leave until you've dealt with [NameDesc of M]![otherwise]Let's open that container first![end if]" instead.

Check talking when the player is in Tutorial04:
	if the noun is uninterested monster, say "That would be a bad idea for this tutorial!" instead.

Check standing when tutorial is 1:
	if the player is prone and the number of interested monsters is 0, say "Please only make changes to your stance (kneel, or stand) when asked to!" instead.
Check kneeling when tutorial is 1:
	if the player is upright and the player is not in danger, say "Please only make changes to your stance (kneel, or stand) when asked to!" instead.

Tutorial05 is an introductory room. "This room has some kind of stone altar in the middle of it. [newbie style]Nice, we're now alone now, so the player will be willing to relieve themselves. So the first thing you should do is that, with 'expel'[if diaper quest is 1]! Don't worry, it's just clean water, nothing more gross.[otherwise]![end if][roman type][line break]". Tutorial05 is south of Tutorial04. The printed name of Tutorial05 is "Altar room". The shape of Tutorial05 is L10/0-0-1-0-0-0. The grid position of Tutorial05 is <10,14,11>.

Check going east when the player is in Tutorial05:
	if there is an in-play uncursed grey string monokini or there is an in-play uncursed teddybear playsuit or the body soreness of the player > 0, say "Make sure you've followed all the instructions before moving on." instead.

Tutorial06 is an introductory room. "This room has no other exit. It must be the final room! [newbie style]This room has a 'candy machine' in it. These are important rooms because they provide you with awesome edibles. These edibles [if diaper quest is 1]usually have great effects, but if you enable messing, it will contribute to how quickly nature calls[otherwise]not only stave off hunger but usually have great effects[end if]. Let's get one now.[roman type][line break]". Tutorial06 is east of Tutorial05. The printed name of Tutorial06 is "Final Room". The shape of Tutorial06 is L10/0-0-0-1-0-0. The grid position of Tutorial06 is <10,15,11>.

Check CandyObtaining when tutorial is 1:
	if starting-pack-given is 1, say "You have already done this! [if the number of held candy is 3]You just need to eat the toffee now.[otherwise]The tutorial has finished. Please close and open the program again and begin the game properly with 'Normal Start'.[end if]" instead.

Report CandyObtaining when tutorial is 1:
	say "[newbie style]As this was the first candy machine you used, you just got given your 'starter pack' of candy, which contains three candies. Usually you'll only get one. The candy machines give you a reason to move from region to region in the main game: When you use a candy machine it'll only spit out boring candy with no positive effects until you've used a candy machine in another region. So staying in one region for a long time is going to quickly mean you're not getting the awesome bonuses that candy can give you. Anyway, you may have noticed that you are (almost certainly!) now injured thanks to your fight with the royal guard. To solve this, let's eat a toffee. This will be in your held items tab, because food and liquids are not allowed to go inside your bag of holding.[roman type][line break]".

Check TQeating when the player is in Tutorial06:
	unless the noun is toffee, say "Please only eat the toffee for this tutorial." instead.

Report TQeating when tutorial is 1:
	say "[newbie style]Nice, you're healed! But you were also poisoned, oh no! That's because [if diaper quest is 1][bold type]when messing is disabled[newbie style], candy has a 25% chance to have a negative effect. When messing is [italic type]enabled[newbie style]... well you can guess what the main downside of eating lots of food might be[otherwise]candy has a 25% chance to have a negative effect[end if]. But don't let that dissuade you, it's still usually awesome, and the bad stuff like this poison will wear off eventually![paragraph break]Anyway that's the end of the tutorial. Please [if darkMode is 0]use [TQlink]RESTART[TQdlink] to start[otherwise]close and open[end if] the program again and begin the game properly with 'Normal Start'. There's a LOT more to learn but hopefully you now understand enough to at least give it a go! You can attempt to use the horribly outdated wiki or ask us on the TQ Discord channel if you need more information while playing![roman type][line break]" instead.

The TutorialArea is a region. Tutorial01, Tutorial02, Tutorial03, Tutorial04, Tutorial05, Tutorial06 are in the TutorialArea.

To compute tutorial treasure to (X - a container):
	if X is in Tutorial01:
		blandify navy-monokini;
		now the owner of navy-monokini is nothing;
		now navy-monokini is not-influencing;
		now navy-monokini is in X;
		say Discovery of navy-monokini;
		compute autotaking navy-monokini;
		say "[newbie style]As you are currently naked, you should probably try wearing this! It will make your appearance much more respectable and less humiliating. First click on the bag icon underneath your health meter to open your bag. Then click on the swimsuit. The buttons below the swimsuit are to drop or wear it respectively, and you can click on the magnifying glass to zoom in and view a description![roman type][line break]";
	if X is in Tutorial02:
		now the raw-magic-modifier of leather-peep-toe-heels is -1;
		now leather-peep-toe-heels is cursed;
		now leather-peep-toe-heels is blandness;
		now the owner of leather-peep-toe-heels is nothing;
		now leather-peep-toe-heels is intelligence-influencing;
		now leather-peep-toe-heels is in X;
		now the heel-height of leather-peep-toe-heels is 2;
		say "You find a [leather-peep-toe-heels]! Wow!";
		compute autotaking leather-peep-toe-heels;
		HipUp 5;
	if X is in Tutorial04:
		now cocktail-glass is bland;
		now cocktail-glass is in X;
		say "[Discovery of cocktail-glass]".

Report opening a container:
	if the player is in Tutorial02:
		check for arousal change;
		say "[newbie style]Wow, so a lot just happened! Firstly you got hit by a trap. That happens a lot I'm afraid, and there's not too much you can do about it. The higher intelligence you have, the more chance you have to avoid triggering traps, either by noticing tripwires or detecting trapped containers, and the higher your dexterity, the higher your chance of dodging triggered traps, and sometimes escape traps that have caught you. Except for that, traps are just one of those parts of the game that are kind of inevitable. In general, being on your knees can help you avoid traps and make them less likely to affect you, but this is not always the case. Anyway, this particular trap increased your arousal, as I'm sure you noticed.[paragraph break]Next, you have found some heels. Heels are interesting... they make your appearance a bit more slutty and at the beginning of the game they make you grow tired more quickly because you are not skilled at walking in them. But they increase the power of your kick attacks, which is very useful. For this tutorial, we will wear them. In the real game, it is up to you.[roman type][line break]".

To say TutorialGreet of (M - a royal guard):
	say "[speech style of M]'Oh, I didn't notice you there! Erm... that's an interesting choice of attire you have on there. But it's not inappropriate enough for me to be forced to arrest you. You may proceed unhindered for now.'[paragraph break][newbie style]Looks like [he of M]'s friendly! But now that [he of M]'s interested, [he of M] will follow you from room to room until [he of M] gets bored, so you'd better hope that nothing happens that makes [him of M] change [his of M] mind! Also, since [he of M]'s interested and friendly you can ask [him of M] questions. To do this simply use the 'talk' verb again. Each different type of NPC can teach you a skill if you ask the right question (random chance based on your intelligence), but you can only ask a certain number of questions before the NPC gets annoyed and stops answering. When you are bored with asking questions, feel free to move on.[roman type][line break]".

Report opening a container:
	if the player is in Tutorial04:
		say "[newbie style]Your swimsuit was transformed! This happens a lot in this game, and almost always makes the clothing more [if diaper quest is 1]slutty or childish, neither of which will impress NPCs[otherwise]slutty, which makes NPCs more likely to become lustful after you, and aggressive towards you[end if]. You'll need to keep lots of backup clothing items so you can try to keep your appearance looking reasonable. Clothing also has other natural uses - you can use clothing as rags to wipe away bodily fluids or sticky glue traps.[roman type][paragraph break]";
		let M be a random royal guard in the location of the player;
		anger M;
		say "[BigNameDesc of M] seems to be looking at you differently![line break][first custom style]'That is not appropriate attire for these halls! I have no choice but to punish you in a suitable manner...'[roman type][line break]";
		compute attack of M;
		say "[newbie style]Uh-oh, it looks like your [if diaper quest is 1]childish[otherwise]slutty[end if] appearance means the guard wants to fight, and probably [if diaper quest is 1]treat you like a little baby afterwards[otherwise]fuck[end if]! In the real game you lose NPC's 'favour' over time but in this tutorial we've made the guard super-offended straight away so we can explain combat. Let's try and fight back! Since kicking is your strongest attack (you can see this towards the bottom of the status bar at the top of the screen), let's stick with that for now.[roman type][line break]".

Check slapping when tutorial is 1:
	if the noun is not monster, say "This verb is for attacking NPCs." instead;
	if the noun is friendly, say "Let's not antagonise [him of the noun]." instead;
	say "We're going to only use [bold type]kick[roman type]ing in this fight." instead.

Check kneeing when tutorial is 1:
	try slapping the noun instead.

Check kicking when tutorial is 1:
	if the noun is not monster, say "This verb is for attacking NPCs." instead;
	if the noun is friendly, say "Let's not antagonise [him of the noun]." instead.

Check waiting when tutorial is 1:
	say "There's no waiting around allowed in this scripted tutorial!" instead.

Report kicking:
	if tutorial is 1:
		if the player is upright:
			compute attack of the noun;
		if the player is prone:
			let C be a random worn crotch-in-place dress;
			if C is clothing:
				compute the noun displacing C;
			otherwise if diaper quest is 1:
				compute enema of the noun;
			otherwise:
				compute the noun entering anally;
		say "[newbie style][one of]Nice one! Fights tend to last more than just a single round in this game, so you should repeat your action! However there's something else to note, if you look at the status bar you'll see a '-1' next to your kick stat: every time you use a knee or a kick attack, it gains 'combat fatigue' which means that it'll do 1 less damage next time. Combat fatigue recovers by 1 every turn after the first one that you don't use that particular attack. Don't worry about this for the tutorial though, we're only going to use kicking, to keep it simple and to prove a point.[or]Woah, the guard managed to trip you! Some NPCs will periodically try to trip you up, which has a high chance of success if your most recent attack was a kick, a moderate chance of success if you kneed, and a near zero chance of success if you slapped. The amount you are off-balance influences the NPC's chances of success, and since you are wearing cursed heels you are currently quite off-balance. The higher your dexterity, the more chance you have of staying on your feet.[paragraph break]When you are on your knees, you are unable to use combat commands and the only things you can really do to avoid punishment are to try to crawl away (which hardly ever works) or to try to [bold type]stand[newbie style] back up[if the graphics-window is g-present] [bold type]by clicking the leftmost icon underneath the map window[newbie style][end if]. But in fact quite often you won't get a chance to stand back up, because the NPC just immediately starts... err... 'punishing' you. However in this situation thanks to your swimsuit, the guard had to take a turn to displace it before he could punish you. So you have a turn's grace period which you can use to stand back up and carry on fighting. Just count yourself lucky you were wearing a proper outfit and not something like jeans - if he had pulled some pants down to your ankles then you wouldn't be able to kick any more![or]Keep it up, maybe you can win the fight? (Spoilers: you can't because this is a mean scripted tutorial!)[or]Let's keep going![or]Well that escalated quickly! Once an NPC begins having their way with you there's no way to end the punishment session early, except using your safe word to revoke consent (you'll learn more about that in the prologue of the main game). The only things you can do are [bold type]submit[newbie style] or [bold type]resist. [newbie style]Submitting tends to make the punishment hurt less[if diaper quest is 0], reduces the chance of shamefully orgasming[end if] and sometimes makes it last less time, but is humiliating. Resisting maintains your dignity but can make the NPC more angry, which could result in even more hurt through spanking, and might mean the NPC stays unfriendly for a longer time rather than being friendly again the next time you meet them. For this tutorial, let's try and maintain our self-esteem by using [bold type]resist.[or][stopping][roman type][line break]".

Check submitting when tutorial is 1:
	say "In this tutorial, we will only resist." instead.

Report resisting when tutorial is 1:
	let M be a random royal guard in the location of the player;
	if M is monster, compute attack of M;
	if the sex-length of M is 0 and diaper quest is 0 and refractoryperiod <= 0:
		anally orgasm shamefully;
	if refractoryperiod >= maxrefractoryperiod, say "[line break][newbie style]Sometimes during sex you can end up orgasming. Any orgasm you didn't cause yourself (i.e. any situation which isn't you masturbating or having sex where you're on top) is considered 'shameful' which means it increases your addiction to submissive sex[if the player is possessing a penis] and shrinks your penis size[end if]. It also adds to your fatigue meaning you'll probably need a rest soon afterwards. The higher your arousal the higher your chance of orgasming from stimulation, but for this tutorial we made you orgasm anyway just so you can see how it works.[roman type][line break]";
	if M is asleep or (diaper quest is 1 and the sex-length of M is 0):
		now the sleep of M is 0;
		now M is uninterested;
		calm M;
		say "[line break][newbie style]You're now holding an [if diaper quest is 1]enema[otherwise]anal creampie[end if]! This is one example of [if watersports fetish is 1 or diaper lover > 0]several states, including things like a full bladder, [otherwise]a state [end if]where your stats and adventuring capabilities are hampered until you can relieve yourself. The verb for expelling an [if diaper quest is 1]enema[otherwise]anal creampie[end if] is [bold type]expel[newbie style], or you can click on the new button underneath the map (the one with a red hue). But if you try and use it in this room, your character will refuse because your dignity is too high to do this in front of someone. This can be a real pain when there is an NPC following you around from room to room! Luckily, as long as we don't annoy the guard further, [he of M] will be happy to leave us alone and we can move south without [him of M] coming along for the ride. In the main game, you can try to [bold type]dismiss[newbie style] NPCs to get them to leave you alone, but if you don't have a good reason, they might just decide to follow you around for even longer![roman type][line break]".

Report squatting when the player is in Tutorial05:
	say "[newbie style]Nice one! [if bukkake fetish is 1]Of course there is a slight problem with expelling when you are on your knees, which is that your thighs get covered in cum, lowering your dexterity. Cum can be wiped off in bodies of water or by using unworn clothing as rags. [end if]When you finish expelling, you should[if diaper quest is 0] do two things: fix the crotch of your swimsuit ('replace') and[end if] use the altar to help you escape these heels. Just click on your worn items tab, click on the heels, and then click on the button that looks like the altar. Or you could type phrases along the lines of 'place heels on altar'.[roman type][line break]".

Check replacing when tutorial is 1:
	if the semen volume of belly + the water volume of belly > 0, say "[newbie style]You should wait until the tutorial instructs you to do this![roman type][line break]" instead.

Check praying something with when the player is in Tutorial05:
	if the noun is not heels and there is worn cursed heels, say "You should use the altar to uncurse your heels instead." instead;
	if (the noun is not swimsuit and the noun is not baby-dress) and the number of worn cursed heels is 0, say "You should use the altar on your [if diaper quest is 1]outfit[otherwise]swimsuit[end if]." instead.

Check entering furniture when the player is in Tutorial05:
	if there is worn cursed heels, say "You should use the altar to uncurse your heels first." instead;
	now the body soreness of the player is 0;
	say "You rest on the kneeling stool.[paragraph break]Time passes.[paragraph break]Time passes.[paragraph break]Time passes.[paragraph break]Time passes.[paragraph break]You feel fully rested![paragraph break][newbie style]Awesome, that was straightforward, wasn't it! It can be really difficult to play this game if you don't take good notice of where the furniture is that can allow you to heal up, because otherwise you'll spend most of the game on your knees, unable to fight or flee. Anyway, now that you've healed up, and tested out the altar a couple of times, let's move to the east.[roman type][line break]" instead.

Report praying something with when the player is in Tutorial05:
	if the noun is heels:
		say "[newbie style]Great! [if the noun is worn]You should remove the heels too, since they're still a -1 item so are still reducing your intelligence by 1. [end if]Next let's see what happens if you try to use the altar again straight away, when it's not glowing. Place your [if diaper quest is 1]outfit[otherwise]swimsuit[end if] on the altar.[roman type][line break]" instead.

Check masturbating when tutorial is 1:
	say "No masturbating in this tutorial, sorry!" instead.

Every turn when tutorial is 1:
	update appearance level;
	check for arousal change.

To start the tutorial:
	now temporaryYesNoBackground is figure of small image;
	let var1 be the class of the player; [For some currently unknown reason, if we don't check the class of the player once at the start, the TitleBimbo function fails on turn 1 of the game.]
	now a random large sack is in Tutorial01;
	now a random wooden crate is in Tutorial02;
	now a random metal crate is in Tutorial04;
	let T be a random off-stage needle trap;
	now T is click;
	deploy T in Tutorial02;
	set up solemn royal guard;
	now solemn royal guard is in Tutorial03;
	now T is a random tank;
	now the fill-colour of T is appearance corresponding to an Magic of 6 in the Table of Drinks;
	SetDose T to 1;
	now T is in Tutorial04;
	now T is a random discombobulator laser trap;
	now T is click;
	deploy T in Tutorial04;
	now the dungeon altar is in Tutorial05;
	now a random kneeling stool is in Tutorial05;
	now a random candy machine is in Tutorial06;
	now the player is in Tutorial01;
	set up debug stuff;
	display stuff;
	if the player is able to automatically slap or the player is able to automatically knee or the player is able to automatically kick, do nothing.


Figure of Tutorial Selection Backdrop is the file "Special/Menus/tutorialbackdrop1.jpg".
Figure of Tutorial Font Backdrop is the file "Special/Menus/tutorialbackdrop2.jpg".

To compute new tutorial selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 3;
	now fetishSelection is 2;
	now current menu selection is 1;
	[wait 50 ms before continuing;]
	close the status window;
	while fetishMenuInProgress is 3:
		update the status line;
		refresh the graphics-window;
		let __x be the chosen letter;
		if __x is 81 or __x is 113 or __x is -6 or __x is 13 or __x is 32 or candidate replacement command is "quit":
			now fetishMenuInProgress is 0;
			now waitingForChar is false;
		otherwise if __x is -2 or __x is -5: [up or right]
			if current menu selection is 1, now previous menu selection is 1;
			if current menu selection is greater than 1, decrease current menu selection by 1;
			otherwise now current menu selection is 2;
		otherwise if __x is -3 or __x is -4: [down or left]
			if current menu selection is 2, now previous menu selection is 2;
			if current menu selection is less than 2, increase current menu selection by 1;
			otherwise now current menu selection is 1;
	if current menu selection is 1:
		if earnings is starting-earnings, now tutorial is 1;
	otherwise:
		now tutorial is 0;
	now current menu selection is 1;
	close the graphics-window;
	open the status window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To render full new tutorial selection menu:
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W2 be W / 2;
	display the image Figure of Tutorial Selection Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	repeat with X running from 1 to 2:
		let X2 be 1 + (W2 * X);
		let X1 be X2 - W2;
		let TXT be the substituted form of "fet6[X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from X1 by 1 to X2 by H as TXT, ignoring redundant links;
		if X is current menu selection:
			let lineY be (130 * H) / 1080;
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at X1 by lineY with size W2 by lineH;


To compute new tutorial font window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 3;
	now fetishSelection is 5;
	now current menu selection is 1;
	[wait 50 ms before continuing;]
	close the status window;
	while fetishMenuInProgress is 3:
		update the status line;
		refresh the graphics-window;
		let __x be the chosen letter;
		if __x is 81 or __x is 113 or __x is -6 or __x is 13 or __x is 32 or candidate replacement command is "quit":
			now fetishMenuInProgress is 0;
			now waitingForChar is false;
	close the graphics-window;
	open the status window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To render full new tutorial font menu:
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	display the image Figure of Tutorial Font Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from 0 by 0 to (W - 1) by (H - 1) as "fet61", ignoring redundant links;

Tutorial ends here.
