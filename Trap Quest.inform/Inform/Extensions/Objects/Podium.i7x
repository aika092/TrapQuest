Podium by Objects begins here.

podium is a thing. podium is not portable. podium is in Dungeon31. The printed name of podium is "[TQlink of item described]stage[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of podium is "st". Understand "stage" as podium. podium has a number called charge. Figure of podium is the file "Env/Dungeon/podium1.png".

To say ExamineDesc of (C - podium):
	say "A small stage with a podium.".

To decide which figure-name is the examine-image of (C - podium):
	decide on figure of podium.

Definition: podium is immune to change: decide yes.

Check climbing podium:
	try entering the podium instead.

Check entering podium:
	if the player is immobile, say "Aren't you a bit tied up at the moment?" instead;
	if the player is in danger, say "You would, but you are currently in a fight." instead;
	[if the player is not able to use manual dexterity, say "You don't have the manual dexterity needed to climb up there." instead;]
	if the player is prone, say "You would need to be standing up." instead;[now we can assume the player can get onto the podium]
	allocate 6 seconds;
	if the class of the player is bride and bride-consort is an alive undefeated monster:
		if there is a worn bridal dress or sheer-open-front-skirt is worn:
			say "[BigNameDesc of bride-consort] appears from the doorway, dressed the same as ever but with added pride and jubilation in [his of bride-consort] step. As [he of bride-consort] joins you on-stage, traditional wedding music fills the room. Suddenly, [NameDesc of Icarus] descends from above to stand before you both, ready to officiate the wedding.[line break][speech style of Icarus]'Beloved guests, we are gathered here today to witness this marriage. [NameBimbo] is dedicating [his of the player] life to serving [his of the player] new lord and master. If anyone knows of any reason this marriage cannot proceed, please state so now or forever hold your peace.'[roman type][line break]Unsurprisingly, [if the number of monsters in the location of the player is 0]with absolutely nobody in the audience, [end if]there is no reply.[line break][speech style of Icarus]'Then I pronounce you [man of bride-consort] and wife!'[roman type][line break]";
			class summon floral bouquet;
			now the ceremony of betrothal-quest is true;
			focus-consider Icarus;
			say "[variable custom style]Wait, don't we have to say [']I do['] or something?![roman type][line break]But apparently it has all already been done. [BigNameDesc of Icarus] is already ascending back into the air and waving [his of Icarus] goodbyes.[line break][speech style of bride-consort]'This calls for a celebration!'[roman type][line break][BigNameDesc of bride-consort] clicks [his of bride-consort] fingers.";
			let C be a random worn bridal dress;
			if C is long bridal dress:
				say "A large section of your [C][']s skirt detaches and falls to the ground, leaving you in what suddenly feels a lot more like a party dress!";
				now C is short;
			otherwise if C is sexy bridal dress:
				transform C into slutty bridal dress;
			otherwise if C is nothing:
				class summon burning love crop top;
				if sheer-open-front-skirt is not cursed:
					say "Your [sheer-open-front-skirt] becomes cursed!";
					now sheer-open-front-skirt is cursed;
					compute summoned quest of sheer-open-front-skirt;
			say "[speech style of bride-consort]'I must go spread the news of our joy with the others! Soon it will be our wedding night. You know what that means, right? I will be making a woman of you.'[roman type][line break][big he of bride-consort] points to your [vagina].[line break][speech style of bride-consort]'Meet me in the Kama Sutra Penthouse Suite.'[roman type][line break]Before you can reply, [he of bride-consort] has left.";
			focus-consider bride-consort;
			progress quest of podium-quest;
		otherwise:
			say "You want to have a wedding ceremony but you realise you can't do that without a wedding dress[if the number of carried bridal dress is 0]! Perhaps there is a [bold type]magic wardrobe[roman type] somewhere that would enable you to reclaim your wedding outfit[end if].";
	otherwise if diaper quest is 0 and the player is the donator and floral bridal veil is off-stage and the player is possessing a vagina and the vaginalvirgin of the player is 1 and floral bridal veil is actually summonable:
		say "You find yourself dreaming of a wedding ceremony. You are the bride, holding a bouquet of flowers, as some noble [man of shopkeeper] dedicates [his of shopkeeper] life to you in front of the world.[line break][variable custom style]That wouldn't be so bad.[roman type][line break]As if reacting to your thoughts, a [MediumDesc of floral bridal veil] appears on your head!";
		summon floral bridal veil cursed;
		progress quest of podium-quest;
	otherwise:
		say "[if seconds > 0]Giving in to temptation, you[otherwise]You[end if] quickly climb up on the stage and [if diaper quest is 1]suddenly feel compelled to turn and look out. Looking around you can imagine what it would be like to be part of such a humiliating performance - you can feel the warm clammy feeling of a full diaper, the laughs of the crowd as you struggle to move around normally, pawing at your nappy with fists locked within tight pink mittens, and sucking nervously on your pacifier[otherwise]turn to look out. Looking around, you can imagine the cold bite of the iron cuffs around your wrists and ankles, chaining you, while bidders shout out their offers for you, their eyes raking you over, making you feel defenceless. You shiver once more as the Auctioneer steps up and manhandles you, [his of shopkeeper] hands exposing your assets to the onlookers all while calling out for higher bids, urging them on[end if].[line break][line break][line break][line break][line break]Closing your eyes, you can feel another shiver run though you. Taking a deep breath you hold it for a moment before finally letting it out slowly. ";
		progress quest of podium-quest;
		passively stimulate thighs from podium;
		passively stimulate arms from podium;
		let B be a random off-stage plentiful bracelet;
		let P be a random eligible piercing;
		if the charge of podium > 0 or the class of the player is princess or the class of the player is royal slave or timeBombTime > 0:
			if debuginfo > 0, say "[input-style]Stage roll: bad scenes not possible ([if the charge of podium > 0]stage already used recently[otherwise if the class of the player is princess]princess can't be sold[otherwise if the class of the player is royal slave]royal slave can't be sold[otherwise]temporary unique situation[end if]); so gold bracelet not available.[roman type][line break]";
			now the charge of the podium is 500;
			say "[if (the sex addiction of the player < 10 and diaper quest is 0) or (the diaper addiction of the player < 10 and diaper quest is 1)]You realise you're actually getting aroused by the thought! You push the bizarre fantasy to the back of your mind, and[otherwise]Your imagination runs wild! You feel a bit more aroused from the experience. You[end if] get down from the stage." instead;
		otherwise if B is bracelet and the number of on-stage solid gold bracelets is 0 and the player is getting lucky:
			now B is solid gold;
			set shortcut of B;
			now B is in the location of the player;
			say "[if (the sex addiction of the player < 10 and diaper quest is 0) or (the diaper addiction of the player < 10 and diaper quest is 1)]You realise you're actually getting aroused by the thought! You push the bizarre fantasy to the back of your mind, and[otherwise]Your imagination runs wild! You feel a bit more aroused from the experience. You[end if] open your eyes. Looking down you see that a shiny [printed name of B] has fallen down to the ground behind the stage. It looks valuable! Maybe it was stealthily dropped by a slave who didn't want it becoming the property of her new master.[line break][GotLuckyFlav]";
			compute autotaking B;
		otherwise if a random number between 1 and 2 is 1 and there is an alive undefeated royal guard:
			if debuginfo > 0 and (B is not bracelet or there is an on-stage solid gold bracelet), say "[input-style]Stage roll: bracelet scene not possible ([if B is bracelet]solid gold bracelet is already in game universe[otherwise]no bracelets left off-stage[end if]); guard scene selected automatically.[roman type][line break]";
			let M be a random alive undefeated royal guard;
			anger M;
			now M is interested;
			now the boredom of M is 0;
			now the last-interaction of M is 2;
			now the sleep of M is 0;
			now M is in the location of the player;
			if diaper quest is 1:
				let P be a random pink pacifier;
				let N be a random off-stage rubber mittens;
				let D be a random eligible diaper;
				if P is actually summonable, summon P cursed with quest;
				if N is actually summonable, summon N cursed with quest;
				if there is a worn diaper:
					now D is a random worn diaper;
				otherwise:
					repeat with K running through worn knickers:
						only destroy K;
					summon D cursed with quest;
				fully clean D;
				UrineSoakUp D by the soak-limit of D;
				if diaper messing >= 4, MessSet D to 10;
				say "Opening your eyes, you yelp as you realise it wasn't your imagination at all! Blinking your eyes, you gasp in surprise, staring in shock at your [if M is worn]mitten-clad hands and [end if]drooping [D]! [if P is worn]You try to spit out your new [P] but it is stuck in your mouth! [end if][line break][first custom style]'DISGUSTING!'[roman type][line break]yells a voice. Swallowing, you look up to see [NameDesc of M]! [big he of M] marches towards the stage.";
				say "Pressing a concealed button at the front of the stage, the guard triggers a mechanical trap door which catapults you down to the ground in front of [him of M]. [bold type]You are now on your knees.[line break][first custom style]'This show is cancelled. You can't just soil yourself in the middle of a performance like that! I'm going to have to refund all those tickets... and as for you, if you are going to mess your Pampers like a baby, I'm going to treat you like one. Stay on your knees.'[roman type][line break]";
				if image cutscenes > 0:
					if D is perceived unmessed, cutshow figure of podium cutscene 1 for M;
					otherwise cutshow figure of podium cutscene 2 for M;
				now the previous-babification of M is 1; [prevents flavour where the guard 'changes how he's looking at you']
				decrease the health of M by 1; [This stops him changing the player, and will instead punish further.]
			otherwise if bondage protection is 2:
				now the fatigue of the player is the very tired threshold of the player + 5;
				say "Opening your eyes you move forward to step off the stage only to find your whole body suddenly drained of all its energy. You collapse to the ground, and are now on your knees![line break][first custom style]'SOLD!'[roman type][line break]yells the Auctioneer as [he of shopkeeper] slams [his of shopkeeper] gavel down on the podium. Swallowing, you shiver as [he of shopkeeper] yanks at your [ShortDesc of hair], hauling you forward to meet the winning bidder and your new Master... [NameDesc of M][line break][first custom style]'Look up at your new master, slave.'[roman type][line break][big he of shopkeeper] grabs you by your hair as the Auctioneer lets go, the transfer of ownership complete. The magical scene behind you disappears, leaving you with an empty stage, [NameDesc of M], and [if the player is not a nympho]a decision to be made - fuck or flight?[otherwise][his of M] waiting [manly-penis].[end if]";
			otherwise:
				let A be a random pair of anklecuffs;
				if A is actually summonable:
					summon A locked;
				if tough-shit is 1 and pair of wristcuffs is actually summonable:
					summon pair of wristcuffs locked;
					now pair of wristcuffs is wrist-bound-in-front;
				if slave collar is actually summonable:
					summon slave collar locked;
				say "Opening your eyes you move forward to step off the stage only to be brought up short by chains binding you. Blinking your eyes you gasp in surprise and stare in shock at actual chains binding you, very real chains. [if A is worn and pair of wristcuffs is worn]You are now wearing a [A] and a [pair of wristcuffs]! [otherwise if A is worn]You are now wearing a [A]! [otherwise if pair of wristcuffs is worn]You are now wearing a [pair of wristcuffs]! [end if][if slave collar is worn]You have a [printed name of slave collar] around your neck! [end if][line break][first custom style]'SOLD!'[roman type][line break]yells the Auctioneer as [he of shopkeeper] slams [his of shopkeeper] gavel down on the podium. Swallowing, you shiver as [he of shopkeeper] yanks at your chains, hauling you forward to meet the winning bidder, your new Master... [NameDesc of M]![line break][first custom style]'Get on your knees, slave.'[roman type][line break][big he of M] pulls you by [if the largeness of hair > 2]your hair[otherwise]the neck[end if] and you trip over your bondage, landing on your knees. The magical scene behind you disappears, leaving you with an empty stage, [NameDesc of M], and [if the sex addiction of the player < 13]a decision to be made - fight, flight or fuck?[otherwise][his of M] waiting [manly-penis].[end if]";
			now the stance of the player is 1;
		otherwise if the class of the player is adventurer and bondage protection < 2 and the number of unremovable neckwear is 0 and the number of unremovable dresses is 0 and the number of unremovable skirts is 0 and the number of unremovable bras is 0:
			if debuginfo > 0 and (B is not bracelet or there is an on-stage solid gold bracelet), say "[input-style]Stage roll: bracelet scene not possible ([if B is bracelet]solid gold bracelet is already in game universe[otherwise]no bracelets left off-stage[end if]); slave stuff selected automatically.[roman type][line break]";
			unless slave-dress is worn or bondage-ribbons is worn:
				if christmas content is 1 and diaper quest is 0:
					PinkWardrobeUnclash bondage-ribbons;
					summon bondage-ribbons locked;
					now bondage-ribbons is wrist-bound-behind;
					say "You've barely blinked when you find yourself wearing a [bondage-ribbons]! Your wrists are now pinned by your side. Uh-oh.";
				otherwise:
					PinkWardrobeUnclash slave-dress;
					summon slave-dress locked;
					now slave-dress is wrist-bound-in-front;
					say "You've barely blinked when you find yourself wearing a [slave-dress]! Your wrists are now stuck in cuffs connected to your collar via metal chains. Uh-oh.";
		otherwise if P is actually summonable and diaper quest is 0:
			if debuginfo > 0 and (B is not bracelet or there is an on-stage solid gold bracelet), say "[input-style]Stage roll: bracelet scene not possible ([if B is bracelet]solid gold bracelet is already in game universe[otherwise]no bracelets left off-stage[end if]); slave stuff selected automatically.[roman type][line break]";
			summon P cursed with quest;
			say "You open your eyes and are shocked to find you now have a [P]. It's like you've been marked as somebody's property!";
		otherwise:
			if debuginfo > 0 and (B is not bracelet or there is an on-stage solid gold bracelet), say "[input-style]Stage roll: bracelet scene not possible ([if B is bracelet]solid gold bracelet is already in game universe[otherwise]no bracelets left off-stage[end if]); slave stuff selected automatically.[roman type][line break]";
			say "[paragraph break]THWACK, THWACK! You imagine being struck on the back by a harsh whip. Ow, that really hurts! What the hell? It's like you can feel the pain for real! You open your eyes, tears welling up in them, leaving you feeling a lot more submissive.";
			PainUp 2;
	now the charge of the podium is 500 instead;

Check drinking podium:
	try entering the noun instead.

Understand "climb on [something]", "climb up on [something]", "climb onto [something]" as climbing.

To compute podium action:
	if another-turn-action is the no-stored-action rule and the player is upright and the charge of podium <= 0 and the player is not immobile and the player is not in danger and the player is able to use manual dexterity and a random number between 14 and 20 < the delicateness of the player:
		now another-turn is 1;
		now another-turn-action is the automatic podium rule.

This is the automatic podium rule:
	say "You can't help yourself - you want to get back up on that podium and experience that submissive fantasy again!";
	try entering podium;
	if the charge of podium <= 0, now the charge of podium is 500. [Failsafe to prevent against infinite loops]

Podium ends here.
