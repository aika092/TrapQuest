Pullstring Collar by Accessories begins here.

A pullstring collar is a kind of submissive collar. There is 1 unique latex pullstring collar. Printed name of pullstring collar is "[clothing-title-before]pink pullstring choker[clothing-title-after]". The text-shortcut of pullstring collar is "pul". Understand "pink", "pull", "string", "ripcord", "cord", "choker" as pullstring collar. A pullstring collar has a number called times pulled. The times pulled of a pullstring collar is usually 0.

Monster-puller is a thing that varies. Monster-puller is yourself.

Definition: a pullstring collar is removable: decide no.
Definition: a pullstring collar is transformation-protected: decide yes.
Definition: a pullstring collar is pink themed: decide yes.

To decide which number is the initial outrage of (C - a pullstring collar):
	decide on 4.

Check wearing a pullstring collar:
	say "It's in two pieces, there's no way for it to stay on!" instead.

Figure of pullstring collar is the file "Items/Accessories/Neck/collar2.png".

To decide which figure-name is clothing-image of (C - a pullstring collar):
	decide on figure of pullstring collar.

To say ClothingDesc of (C - a pullstring collar):
	say "[if C is worn]This pink latex choker feels too small, but apparently stretches just enough that it fits your neck like a second skin. It makes adjusting it into the right spot on your neck a real bitch. It has no clear way to remove it. However there is a small plastic ring connected to a metal cord that you can pull at the back.[otherwise]A small pink choker with a pull cord at the back.[end if]".

To say ShortDesc of (C - a pullstring collar):
	say "pullstring collar".

Check pulling a pullstring collar:
	let W be a random wild horse penetrating asshole;
	if W is a thing, try HorsePulling W instead;
	if auto is 0 and the player is not able to manually use their hands, do nothing instead;
	if the player is silently able to manually speak and the noun is worn:
		say "[if monster-puller is the player]You pull the ring and then you let go[otherwise]You yelp in surprise[end if], [one of]giving a gasp as you feel it start winding back into the collar, a shudder going through your body as your mouth opens all on its own, [or][stopping]and in a bubbly voice you hear yourself say:[line break][second custom style]";
		let R be a random number between 1 and 6;
		if the times pulled of the noun is 0 and R is 1, now R is a random number between 2 and 6;
		if the times pulled of the noun >= a random number between 4 and 7 and R is not 1 [and monster-puller is the player], now R is 1;
		if R is 1 and monster-puller is the player:
			say "'I'm so looking forward to [if diaper quest is 1]wearing nappies for the rest of my life[otherwise]meeting all those big [manly-penis]s out there waiting for me[end if]!'[roman type][line break]You feel funny inside, but also a bit stronger.";
			SemenAddictUp 1;
			SexAddictUp 1;
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
			say "[bold type]The choker splits in two, and falls to the floor![roman type][line break]";
			now the noun is in the location of the player;
			now R is 0;
		otherwise if R is 2 or (monster-puller is male monster and a random number between 1 and 2 is 1):
			if diaper quest is 1:
				say "'[if the diaper addiction of the player < 6]It feels a little awkward wearing diapers, but I'm determined to get used to it!'[otherwise if the diaper addiction of the player < 11 and there is a worn diaper][one of]My diaper feels so comfy and amazing! It's perfect for a baby like me.'[or]If you see me not wearing a diaper, [please] punish me!'[or]I'm a baby in training and should be kept in diapers like this one at all times!'[then at random][otherwise if the diaper addiction of the player < 11][one of]I've been naughty and deserve to be put back in diapers!'[or]I'm a naughty baby who's not wearing [his of the player] diaper! [big please] punish me!'[or]Help, I've lost my diaper, [please] put me back into Pampers where I belong![in random order][otherwise if diaper messing >= 3][one of]I love pooping in my pants! Diapers are the best!'[or]I love being a little naughty stinkybutt and I don't care who knows!'[or]I love the way a nice full nappy makes me waddle around like a baby!'[in random order][otherwise][one of]I love peeing in my pants! Diapers are the best!'[or]I love waddling around in a nice big soggy nappy!'[or]Babies like me should always be kept in diapers!'[in random order][end if][roman type][line break]You can feel [if the diaper addiction of the player < 9]your distaste for wearing diapers slowly fading[otherwise]the collar [one of]warping your mind, making you feel even more keen to wear diapers[or]continue to increase your addiction to diapers[stopping][end if].";
				SilentlyDiaperAddictUp 1;
			otherwise if monster-puller is female monster and monster-puller is not neuter monster:
				say "'[if the oral sex addiction of the player < 3]I can't wait to find out what her pussy juices taste like!'[otherwise if the oral sex addiction of the player < 6]I just can't wait to have her cunt on my face!'[otherwise]Please let me tongue your asshole, Mistress!'[end if][roman type][line break]";
				OralSexAddictUp 1;
			otherwise:
				say "'[if the semen taste addiction of the player < 6]Semen is an acquired taste, but I'm determined to get used to it!'[otherwise if the semen taste addiction of the player < 11]I just can't wait for my next yummy serving of [semen]!'[otherwise]I love sucking [manly-penis], the best way to get [semen] is straight from the tap!'[end if][roman type][line break]";
				SemenTasteAddictUp 1;
			now R is 0;
		otherwise if R is 3 or monster-puller is monster:
			if diaper quest is 1:
				say "'[if the sex addiction of the player < 5 and the player is gendered female]Being a prude gets boring, the truth is that I love masturbating just as much as boys do!'[otherwise if the sex addiction of the player < 8][one of]Nothing in life is better than a well-earned orgasm[or]If you hold me down while you play with my bits, I'm sure to enjoy it[then at random]!'[otherwise if the sex addiction of the player < 11][one of]The only thing more fun than being a big baby is being a big baby who's allowed cummies[or]I'll wear anything I'm told as long as you rub me through it[at random]!'[otherwise if there is a worn diaper]If I'm an obedient little baby, will you rub me through my diaper?'[otherwise]If I put on a diaper, will you promise to give me my cummies through it?'[end if][roman type][line break]";
			otherwise:
				if monster-puller is female monster and monster-puller is not neuter monster, say "'[if the player is a sissy]Pathetic sissies like me love working hard to earn our cummies![otherwise if the player is gendered male]Girls turn me on, especially when they're on top! I'm not manly enough to try and dominate a woman.'[otherwise]This girl is so sexy... I hope she sits on my face!'[end if][roman type][line break]";
				otherwise say "'[if the sex addiction of the player < 5 and the player is gendered female]Being a prude gets boring, I need someone to fuck me!'[otherwise if the sex addiction of the player < 5]Nothing in life is better than a well-earned orgasm!'[otherwise if the sex addiction of the player < 11]There's nothing more fun than being a nympho!'[otherwise if highest body part sex addiction < 6]I can't wait until my new Masters train my body to be addicted to [manly-penis]!'[otherwise]Having my [asshole] destroyed gives me the best orgasms!'[end if][roman type][line break]";
			say "You feel a little [if the sex addiction of the player < 10]less inhibited[otherwise]more obsessed with domination and submission[end if].";
			SexAddictUp 1;
			now R is 0;
		otherwise if R is 4:
			if no-panties permanent fetish is 0 and a random number between -1 and 1 >= diaper quest:
				now R is 0;
				say "'[if diaper lover >= 1]Panties are only for big girls who can control their bladder. I'm only allowed to wear diapers!'[otherwise]Panties and tights are for prudes!'[end if][roman type][line break]";
				let C be a random worn knickers;
				if C is pussy covering knickers:
					if C is diaper, say "You suddenly feel extremely at home in your [printed name of C]."; [If the player is wearing normal pants, they will be told in big letters by the fetish function itself. No need to duplicate that text here.]
				otherwise:
					say "[if diaper lover >= 1]You suddenly feel an extreme aversion against wearing any underwear except big puffy diapers. [otherwise]You suddenly feel an extreme aversion against wearing any underwear at all. [end if][if the bimbo of the player < 9]It's a really weird sensation, you simultaneously are horrified by the idea, but know that trying to fight against your new fetish would feel awful.[otherwise][line break][end if]";
				now no-panties permanent fetish is 1;
			otherwise if diaper lover >= 1 and the player is not incontinent:
				now R is 0;
				say "'Dumb girls wear diapers because they can't control their pee pee!'[roman type][line break]";
				increase incontinence by 1;
				say "[if the player is incontinent]You realise you are now [one of]fully[or]hopelessly[or]utterly[or]totally[or]completely[at random] incontinent.[otherwise if the diaper addiction of the player < 9]You desperately hope that this doesn't mean you're becoming incontinent.[otherwise]You are weirdly excited by the idea that this might mean you're becoming incontinent.[end if]";
			otherwise:
				increase R by 1;
		if R is 5:
			if short skirts permanent fetish < 2:
				now R is 0;
				say "'Skirts are like commitments, the shorter the better!'[roman type][line break]";
				increase short skirts permanent fetish by 1;
				let C be a random worn actually dense skirted clothing;
				if C is clothing, say "[unless C is super-short or short skirts permanent fetish is 1 and C is short]You suddenly feel extremely uncomfortable in your [printed name of C].[end if]";
				otherwise say "[if short skirts permanent fetish is 2]You now feel like you would only ever be comfortable in the most revealing of skirts.[otherwise if the bimbo of the player < 9]It's a really weird sensation, you simultaneously are horrified by the idea, but know that trying to fight against your new fetish would feel awful.[otherwise]You have a decent idea what permanent fetish that has given you, but you don't really mind.[end if]";
			otherwise:
				increase R by 1;
		if R is 6:
			now R is 0;
			if the humiliation of the player <= HUMILIATION-BROKEN:
				if diaper quest is 1, say "'[one of]A well behaved baby slave wears whatever she's told to, no matter how degrading!'[or]I'm a good baby, [if there is a worn diaper]I even wear diapers when I haven't been told to[otherwise]I will pee wherever I'm told[end if]!'[or]A good baby slave doesn't care who sees her, whether she's in a soiled nappy or completely naked!'[in random order]";
				otherwise say "'A proper slut doesn't care if her ASSets are on display!'[roman type][line break][if the humiliation of the player < HUMILIATION-MODEST + 4000]You feel more comfortable wearing revealing clothing.[otherwise]You feel even more like an object, not a real person.[end if]";
				say "You feel like you respect yourself [if the humiliation of the player > HUMILIATION-PROUD + 2000]even [end if]less.";
				Humiliate STRONG-HUMILIATION * 4;
			otherwise:
				say "'I'm an object, I don't need to use my brain!'[roman type][line break]It feels even harder to think.";
				IntDown 1;
		if R > 0:
			say "'Chokers are sexy!'[roman type][line break]You feel like a bit of an idiot.";
		increase the times pulled of the noun by 1;
		follow the speech penalties rules;
	otherwise:
		say "[if monster-puller is the player]You pull the ring and then you let go, and you[otherwise]You[end if] feel it start winding back into the collar. Nothing seems to happen.";
	allocate 6 seconds instead.

Pullstring Collar ends here.
