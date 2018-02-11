Humiliation by Player begins here.

[

The value all changes in humiliation come back to. When this value is increased, humiliation as a whole become stronger. When this value is decreased, humiliation as a whole becomes weaker

]
To decide which number is HUMILIATION-BASE:
	decide on 3 + game difficulty / 2.

[

Spending a turn strutting

]
To decide which number is TRIVIAL-HUMILIATION:
	decide on HUMILIATION-BASE;

To decide which number is SLIGHT-HUMILIATION:	
	decide on HUMILIATION-BASE * 5;

To decide which number is MODERATE-HUMILIATION:
	decide on HUMILIATION-BASE * 10;

To decide which number is STRONG-HUMILIATION:
	decide on HUMILIATION-BASE * 20;

To decide which number is SEVERE-HUMILIATION:
	decide on HUMILIATION-BASE * 50;

[

Balancing humiliation:
All humiliation events should use one of the above constants, and then relate to each other based on those constants

Eating food with semen on it, for example, is 

MODERATE-HUMILIATION - SLIGHT-HUMILIATION * 2

There is a noticeable difference between this event and the average moderate event, but not enough that it can be fully described as a slight event.

Submitting for a round during sex is 

MODERATE-HUMILIATION + SLIGHT-HUMILIATION * 3

This is significantly more humiliating than the average moderate event, but not so much that it can be described as a strong event

]

[
HOLY BIBLE OF HUMILIATION GUIDELINES

Trivial (~5)
Per turn strutting

Trivial + Trivial (~10)
Per unit of outrage of an embarrassing item of clothing when noticed by monster
(Periodical with a 1 in 7 chance) Per unit weight of a worn diaper when the player successfully walks between rooms.

Slight - Trivial (~20)
Per unit of semen on breasts when noticed by monster
Per unit of semen eaten off body with fingers
Monster taunts / jeers at you whilst you are floating

Slight (~25)
Per unit of semen on face when noticed by monster

Moderate - Slight + Trivial (~30)
Eating food with semen in it.

Moderate - Trivial * 2 (~40)
Drinking from the baby's bottle

Moderate (~50)
Per additional monster that notices you in a humiliating state in the same turn
Per dangerous monster that witnesses a floating player land
Per unit of urine already in a diaper when it is worn
(Periodical) Per size of belly when a male player realises they look pregnant
Drinking from the squirt dildo
Inserting a sex toy
Lactating in the glory hole
(Periodical) Wearing a cultist veil and a cultist robe at the same time
Random effect from reading the book of regrets

Moderate + Slight (~75)
Per unit of semen puked up
Breasts on display when noticed by monster
Urinating on the floor or into a vessel
Kneeling in front of a dangerous enemy

Strong - Slight + Trivial (~80)
Submitting for a round during sex (i.e. not fighting back) with medium - high sex addiction

Strong (~100)
Submitting to a princess-consort during a round of sex (low - medium sex addiction)
Begging for mercy for a round during sex
Lactating a lot of milk in the glory hole
Having a monster watching you when you eat from the dog bowls

Strong + Slight (~125)
Any submissive item of clothing removal in front of an unfriendly monster who plans to fuck you
Staff room chairs calling you a slut

Strong + Moderate (~150)
Begging for mercy for a round during sex as the princess
Vaginally orgasming shamefully
Genitals on display when noticed by monster
Per turn paddled by matron

Strong + Moderate + Slight (~175)
Drinking urine from a vessel
Sucking on the statue's penis

Severe - Moderate (~200)
Submitting for a round during sex (i.e. not fighting back) with low - medium sex addiction
Giving yourself an enema with the squirt dildo
One of the potential results of sleeping in the royal bed
Wetting clothing
Submitting on the climax round of a multiple round oral sex scene
Licking semen off the floor
Drinking space mead
Automatically swallowing after oral sex
Reading the pocket necronomicon

Severe - Slight (~225)
Offering up your mouth / face / breasts for use by a monster
Begging the guard for a facefuck because you are thirsty

Severe (~250)
Anally orgasming shamefully
(Automatically) drinking some semen from the wench's crotch
Drinking mixture of bodily fluids from a vessel

Severe + Moderate (~300)
Offering up your vagina for use by a monster

Severe + Strong (~350)
Offering up your asshole for use by a monster

Severe + Strong + Moderate (~400)
Swallowing an oral creampie after being given the option to spit it out
Occasional result of the Mind Flayer's domination attack
Receiving a blowjob from the gloryhole with a penis size of 1

Severe * 2 (~500)
Being forced to blow yourself in the gloryhole with a penis size of 3 or less

Severe * 3 + Moderate (~800)
Choosing to drink some when a monster is urinating on you

Severe * 4 (~1000)
Random outcome from the pullstring collar with below 4k humiliation
Trading your virginity to a demoness

]

[!<Player>@<humiliation:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called humiliation.

[!<Player>@<delayedHumiliation:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called delayed humiliation.

[!<DecideWhichNumberIsTheHumiliationInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the humiliation-influence of (C - a clothing):
	decide on 0.

[Blouses, gown of purity and confidence items slightly lower the strength of the humiliation]
[!<DecideWhichNumberIsTheHumiliationInfluenceOfConfidenceClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the humiliation-influence of (C - a confidence clothing):
	let B be 1;
	increase B by the magic-modifier of C;
	decide on B.

[!<HumiliateX>+

REQUIRES COMMENTING

+!]
To humiliate (X - a number):
	[Humiliation number is how humiliating the act is. A humiliate 100 at 0 humiliation humiliates 450. At 10000 humiliation it humiliates 400. At 20000 humiliation it humiliates 350. At 30000 humiliation it humiliates 300 and at 40000 humiliation it humiliates 250.]
	let B be 0;
	repeat with C running through worn clothing:
		increase B by the humiliation-influence of C;
	while 10 - B < 0:
		decrease B by 1;
	let H be (X * (35000 + ((10 - B) * 1000) - (the humiliation of the player / 2))) / 10000;
	delayed humiliate H.

[!<SayBrokenFlav>+

REQUIRES COMMENTING

+!]
To say BrokenFlav:
	say "[one of]Your broken mind can't help but become [if the player is horny]even[otherwise]a bit[end if] more aroused.[or][or][or][cycling]";

[!<DelayedHumiliateX>+

REQUIRES COMMENTING

+!]
To delayed humiliate (X - a number):
	increase the delayed humiliation of the player by X * (1 + diaper quest).

[!<FinallyHumiliateX>+

REQUIRES COMMENTING

+!]
To finally humiliate (X - a number):
	if X < 0, now X is 0;
	if the latex-transformation of the player > 6:
		now X is 0;
	let humiliation-restriction be 0;
	if X > 0, blush X;
	if the humiliation of the player + X >= 40000:
		if (there is a worn immodest warrior chestpiece or mindbreak protection is 1) and the player-class is not succubus:
			now humiliation-restriction is 1; [Player can't snap]
		otherwise if there is a worn modest warrior chestpiece:
			let P be a random plate warrior chestpiece;
			say "[bold type]You feel your mind about to snap - and then, it just doesn't. You feel excited about getting humiliated, but still feel focused on your [if the bimbo of the player < 15]original goal[otherwise]quest to stay a virgin[end if]. Suddenly you feel your chestpiece transform around you - the metal slithers and slides around you, reshaping into plate armour that leaves your [ShortDesc of breasts] completely uncovered.[roman type][line break][variable custom style]Ooh, even more naughty!  How perfect.[roman type][line break]";
			repeat with M running through modest warrior chestpieces: [banish them from ever appearing again]
				now M is in Holding Pen;
			summon P cursed;
			if P is not worn, now the player is wearing P;
			now humiliation-restriction is 1;
		otherwise if the player-class is succubus and there is not a worn abyssal tattoo:
			say "A sudden pain explodes from the stone in your chest! It sears through your mind and pushes all thought from it! Before you can recover, you feel a wave of pleasure surge through you. Everything feels so floaty and warm... You hear the voice in your mind say [line break][variable custom style]'Yes, that[']s it, just let it all go...'[roman type][line break]and you surrender to the euphoria and stop trying to think at all. As your awareness begins to fade, you hear your own voice laugh evilly.";
			end the story finally;
		otherwise if the player-class is succubus and there is a worn abyssal tattoo:
			now humiliation-restriction is 1;
			say "[bold type]You feel the jagged black marks on your skin pulse and burn, then tighten around you. It seems like the powers who rule at the elder altar have more use for you, and are unwilling to let the demonic entity in the soulstone take you over quite yet![roman type][line break]";
	if the humiliation of the player < 40000 and humiliation-restriction is 0:
		while X > 100: [We do this in chunks for the sake of performance.]
			decrease X by 100;
			2Humiliate 100;
		2Humiliate X;
		if the humiliation of the player >= 40000 and the player-class is not succubus:
			now the raw delicateness of the player is 20;
			say "[bold type]You feel yourself shivering with a strange sense of adrenaline and pleasure. Your mind has finally snapped, and you no longer can see yourself as anything but an object to be acted upon by others, especially when you are on your knees. You get the feeling that this change in outlook is permanent, [if the bimbo of the player < 11]which makes you both very concerned and even more aroused[otherwise]which just makes you aroused and excited[end if]. From now on when on your knees, you will usually automatically submit to anyone you see.[roman type][line break]"; [Should only happen once when 40k is hit]
			let T be a random worthless cunt tattoo;
			if T is drawable and there is a worn tattoo:
				summon T;
				say "The words 'Worthless Cunt' suddenly appear in permanent ink, above your crotch!";
	otherwise:
		arouse X / 4; [Still happens even with mindbreak enabled.]
	let H be a random flower hairclip;
	if the player is female and the virgin of the player is 1 and the virgin bonus of the player > 0 and H is actually summonable and a random number between (unlucky * 5000) and the humiliation of the player > 8500 and the latex-transformation of the player < 7:
		say "[bold type]Just as you think you can't take the humiliation any more, you feel a white rose hairclip appear in your hair. Its brilliant purity reminds you of your own intact virginity, which makes you feel slightly calmer.[roman type][line break]";
		summon H cursed;
	now the delayed humiliation of the player is 0.

[!<2HumiliateX>+

REQUIRES COMMENTING

+!]
To 2Humiliate (X - a number):
	if the humiliation of the player < 50000, increase the humiliation of the player by X;
	if the player-class is not succubus:
		if the humiliation of the player > 8000 and the humiliation of the player < 9000, say "[one of][line break][first custom style]How can I consider myself a dignified person if there are people witnessing me doing these things?  I feel so ashamed...[roman type][line break][or][stopping]";
		if the humiliation of the player > 16000 and the humiliation of the player < 17000, say "[one of][line break][first custom style]Oh god, what am I doing?[if the player is female][line break]I'm willingly doing everything I would normally stand against![end if][roman type][line break]You can feel the lights in the back of your head slowly shutting down and accepting your inevitable spiral into sexual shame.[or][stopping]";
		if the humiliation of the player > 24000 and the humiliation of the player < 25000, say "[one of][line break][second custom style]Like, whatever, I guess[roman type][line break]You are getting so used to humiliating yourself that it doesn't affect you as much as it used to. You definitely don't feel like anyone has any reason to respect you any more, but you're not even that bothered by that.[or][stopping]";
		if the humiliation of the player > 32000 and the humiliation of the player < 33000, say "[one of][line break][second custom style]Things are so much easier when I just accept that I'm worthless.[roman type][line break]You now have barely a shred of self respect or dignity left. You are not far off from being unable to see yourself as anything but an object to be used.[or][stopping]";
		if newbie tips is 1 and the humiliation of the player > 8000, say "[one of][item style]Newbie tip: Your dignity is slowly declining. This isn't the biggest deal - it doesn't actually impact the game that much at first. In fact, right now there are some things that [NameBimbo] will refuse to wear, and by gaining a bit of humiliation you can unlock that restriction. However, if it gets out of hand, you can start to get aroused when you're humiliated further, which can be a quick way for the game to spiral out of control. [if mindbreak protection is 0]If you go even further, you can become 'broken' - this permanent condition is really bad because not only will all humiliation now arouse you, but whenever you end up on your knees, your brain will *click* and you won't be able to do anything to resist enemies until they're done with you.[end if][roman type][line break][or][stopping]";
	otherwise:
		if the humiliation of the player > 8000 and the humiliation of the player < 9000, say "[one of]You hear a voice in your head! [line break][first custom style]'Why hello there... It seems you don[']t quite get what you are. Start picking up the slack or eventually I[']ll need to take control...'[roman type] You start to feel a bit light-headed.[line break][or][stopping]";
		if the humiliation of the player > 16000 and the humiliation of the player < 17000, say "[one of]You hear the voice again! [line break][first custom style]'Seriously, what part of this do you not understand? Start acting a proper demon already.'[roman type] For some reason you find her voice very persuasive![line break][or][stopping]";
		if the humiliation of the player > 24000 and the humiliation of the player < 25000, say "[one of]The voice rings out once more! [line break][first custom style]'Do you need me to spell this out? If you keep up like this I[']m going to erase you. Unless you[']d RATHER me take over your body, I suggest you do better. And fast, I[']m already getting ready to start emptying you out.'[roman type] Come to mention it, you do feel a bit strange![line break][or][stopping]";
		if the humiliation of the player > 32000 and the humiliation of the player < 33000, say "[one of]You hear the voice again! [line break][first custom style]'Okay, last chance. I[']ve got to build some energy up before I can properly overwrite you, that[']s how long you have to shape up.'[roman type] You feel the stone begin to heat up![line break][or][stopping]".

[!<blushFactor:Integer>*

REQUIRES COMMENTING

*!]
blush factor is a number that varies.

[!<BlushX>+

REQUIRES COMMENTING

+!]
To blush (X - a number):
	if the humiliation of the player >= 40000:
		now X is X / 3;
	otherwise if the humiliation of the player >= 28500:
		now X is X / 2;
	otherwise if the humiliation of the player >= 18500:
		now X is (X * 2) / 3;
	if blush factor < X, now blush factor is X.

[!<DignifyX>+

REQUIRES COMMENTING

+!]
To Dignify (X - a number):
	if the humiliation of the player < 40000:
		if the player is soulless and the class of the player is not succubus, now X is 0;
		if there is a worn no-regrets tattoo, now X is X / 2;
		if the humiliation of the player < X, now the humiliation of the player is 0;
		otherwise decrease the humiliation of the player by X.




Humiliation ends here.

