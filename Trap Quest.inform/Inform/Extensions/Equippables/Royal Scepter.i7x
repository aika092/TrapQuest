Royal Scepter by Equippables begins here.

royal scepter is a vibe-wand. royal scepter is manly. royal scepter is plastic. royal scepter has a number called charge. The charge of royal scepter is 1. The text-shortcut of royal scepter is "rs".

royal scepter can be blacked.

The printed name of royal scepter is "[clothing-title-before][MediumDesc of royal scepter][if the charge of royal scepter >= 16] (very highly charged)[otherwise if the charge of royal scepter >= 4] (highly charged)[otherwise if the charge of royal scepter > 0] (slightly charged)[end if][clothing-title-after]".

To compute class set up of (C - royal scepter):
	now the charge of C is 25;
	say "[bold type]Suddenly a [MediumDesc of C] appears in your hand! The sphere at the top shines brightly! It feels like it has some magic power that will decay over time.[roman type][line break]".

Definition: royal scepter is class-relevant:
	if the class of the player is princess, decide yes;
	decide no.

Figure of royal scepter is the file "Items/Accessories/Equippables/scepter1.png".
Figure of royal scepter blacked is the file "Items/Accessories/Equippables/scepter2.png".

To decide which figure-name is the clothing-image of (R - royal scepter):
	if R is blacked, decide on figure of royal scepter blacked;
	decide on figure of royal scepter.

To compute climax effect of (E - royal scepter): [copy of the effect from the golden phallus, but better since you don't have to put it in]
	MagicPowerRefresh 5;
	let B be the body soreness of the player;
	if E is not cursed, BodyHeal 1;
	if E is blessed, BodyHeal 1;
	if the body soreness of the player < B, say "[bold type]Somehow your body feels a bit less bruised![roman type][line break]";
	if E is blacked, check tiara-of-spades transformation.

To say ClothingDesc of (W - royal scepter):
	if W is blacked, say "A white and black wand vibrator with a gem-encrusted spade shape set into the top underneath a crown. [if tiara-of-spades is worn]Thanks to its synergy with your [tiara-of-spades], you can sense that whenever you satisfy a [BlackCock], it will gain significant magic power. [otherwise if there is a worn tiara][bold type]Perhaps if you had a more appropriate tiara, your wand would unlock some even more powerful abilities. [roman type]You have a picture in your head, of you pleasuring [NameDesc of shopkeeper] while a poor jealous guard watches. Or you could just use it to masturbate... [end if]";
	otherwise say "A gold and pink wand vibrator, with opaque crystal ball set into the top underneath a golden crown. ";
	let H be a random worn headgear;
	if diaper quest is 0:
		if H is headgear and the quest of H is royal-quest:
			say "You can see the tasks in need of your attention.";
			repeat with M running through alive undefeated royal guards:
				if the refractory-period of M < 0 and the boredom of M <= 0:
					say "[BigNameDesc of M] is bored and horny. This might be a good time to find a way to [if W is blacked]tease [him of M][otherwise]make [him of M] happy[end if]. ";
					let D be up;
					if M is not in the location of the player and playerRegion is Dungeon:
						let L be the location of M;
						now D is the best route from the location of the player to L through labyrinth rooms;
					if D is a direction and D is not up, say "The shortest path to [him of M] from here is [bold type][D][roman type].";
					otherwise say line break;
			if the minotaur-checked of royal-quest is false and minotaur is alive:
				say "You should check that the [if mystical amulet is in Dungeon36]mystical amulet is still being kept safe[otherwise]dangerous beast is still behind bars[end if] in the Cage Room. ";
				let D be up;
				if playerRegion is Dungeon and the player is not in Dungeon36:
					now D is the best route from the location of the player to Dungeon36 through labyrinth rooms;
				if D is a direction and D is not up, say "The shortest path to it from here is [bold type][D][roman type].";
				otherwise say line break;
			if the princessTax of shopkeeper is false and shopkeeper is alive:
				say "You should make sure that business owners are up-to-date with paying you their dues for operating on your land. ";
				let D be up;
				if playerRegion is Dungeon and the player is not in Dungeon41:
					now D is the best route from the location of the player to Dungeon41 through labyrinth rooms;
				if D is a direction and D is not up, say "The shortest path to the shop from here is [bold type][D][roman type].";
				otherwise say line break;
			if Woods01 is not placed:
				say "You should check what the state of the world is outside of your castle walls. ";
				let D be up;
				if playerRegion is Dungeon and the player is not in Stairwell01:
					now D is the best route from the location of the player to Stairwell01 through labyrinth rooms;
				if D is a direction and D is not up, say "The shortest path to the stairwell from here is [bold type][D][roman type].";
				otherwise say line break;
			repeat with M running through tentacle-breeders in the Dungeon:
				let L be the location of M;
				if L is a placed labyrinth room: [there might be some weird edge cases with dungeon reshuffling]
					say "There is a dangerous life form in the [L] that is allowing tentacle monsters to enter your castle. You should obtain the magic power necessary to remove it. ";
					let D be up;
					if playerRegion is Dungeon and the player is not in L:
						now D is the best route from the location of the player to L through labyrinth rooms;
					if D is a direction and D is not up, say "The shortest path to [him of M] from here is [bold type][D][roman type].";
					otherwise say line break;
		otherwise:
			say "Since your headgear's quest doesn't care about royal duties, the royal scepter isn't providing you with any useful information.";
	otherwise:
		say "The ball seems to shine brightly when you're in a used diaper - it has the power to help you change yourself!";
	say "You can sense that the strength of its magic attacks is tied to your self-esteem.[line break][BigNameDesc of W] currently has [if the charge of W >= 16]an incredible amount of[otherwise if the charge of W >= 4]a lot of[otherwise if the charge of W > 0]a small amount of[otherwise]no[end if] stored magical energy, and so your magical attacks with it will be [if the charge of W >= 16]extremely powerful[otherwise if the charge of W >= 4]very[otherwise if the charge of W > 0]slightly more[otherwise]no more[end if] powerful than normal.".

To say ShortDesc of (W - royal scepter):
	say "royal scepter".
To say MediumDesc of (W - royal scepter):
	say "royal [if W is blacked]spades [end if]scepter".

To decide which number is the zap damage improvement of (W - royal scepter):
	let X be MagicPowerDamage + the magic-modifier of W - (the humiliation of the player / 10000);
	if W is cursed, decrease X by 1;
	if W is blessed, increase X by 1;
	if the charge of W > 0, increase X by the square root of the charge of W;
	if X < 1, decide on 1;
	decide on X.

To compute attack of (W - royal scepter) at (M - a monster):
	say "You blast [NameDesc of M] with a[if the charge of W > 3] pulsing[end if] wave of magic.".

Definition: royal scepter is unlimited horniness: decide yes.
Definition: royal scepter is royalty themed: decide yes.

To decide which number is the initial outrage of (E - royal scepter):
	decide on 2.

To compute periodic effect of (E - royal scepter):
	if the charge of royal scepter > 0 and a random number between the charge of royal scepter and 20 >= 20, decrease the charge of royal scepter by 1.

A bouquet is a kind of equippable. A bouquet is slap ready. A bouquet is biological.

Definition: a bouquet is class-relevant:
	if the class of the player is bride, decide yes;
	decide no.

bride-consort is a thing that varies. bride-consort is the throne.

To say ClothingDesc of (C - a bouquet):
	say "A [MediumDesc of C]. You can sense that while you hold this, [NameDesc of bride-consort] will not want to harm you (unless [he of bride-consort] has a really really good reason)[if the refractory-period of bride-consort < 0]. It is wilting, signifying that [NameDesc of bride-consort] is in need of your wifely duties[end if].".

To decide which number is the initial outrage of (E - a bouquet):
	decide on 1.

To say ShortDesc of (C - a bouquet):
	say "bouquet".

To decide which number is the slap damage improvement of (C - a bouquet):
	decide on -8.

Definition: a monster (called M) is proposer:
	if the class of the player is bride and bride-consort is the throne and M is undefeated and M is intelligent and M is human and M is male and the times-met of M > 0 and M is not refusing to propose and M is friendly, decide yes;
	decide no.
Definition: a monster is refusing to propose: decide no.

total-proposals is a number that varies.

To compute proposal of (M - a monster):
	let R be random off-stage plentiful ring;
	if R is ring:
		let D be the difficulty of M;
		if D > 15 and total-proposals > 4:
			now R is solid gold;
		otherwise if D > 13 and total-proposals > 3:
			now R is pure diamond;
		otherwise if D > 11 and total-proposals > 2:
			now R is pink diamond;
		otherwise if D > 9 and total-proposals > 1:
			now R is ruby;
		otherwise if D > 7 and total-proposals > 0:
			now R is emerald;
		otherwise:
			now R is sapphire;
		set shortcut of R;
		increase total-proposals by 1;
		say "[BigNameDesc of M] notices you! [big he of M] gets down on one knee.[line break][ProposalFlav of M][big he of M] offers you a [R]. Do you accept it?";
		if the player is consenting:
			if the number of worn rings < 8, summon R;
			otherwise now R is in the location of the player;
			say "[BigNameDesc of M] looks jubilant.[line break][speech style of M]'It is settled! [big please] meet me at the stage for the ceremony.'[roman type][line break]";
			now bride-consort is M;
		otherwise:
			say "[speech style of M]'I will not stop asking until you [one of]are mine[or]say yes[or]accept[in random order]!'[roman type][line break]";
			SilentlyDifficultyUp M by 1;
		compute proposal leaving of M;
	otherwise:
		say "[speech style of M]'I've lost my ring!'[roman type][line break][BigNameDesc of M] seems too distracted to pay any proper attention to you.";
		bore M.

To say ProposalFlav of (M - a monster):
	say "[speech style of M]'[one of]It would be my honour to be your [man of M], if you will have me[or]Madame, would you take my hand in marriage[or][NameBimbo], will you marry me[or]Will you take this ring, and be my bride[in random order]?'[roman type][line break]".

To compute proposal leaving of (M - a monster):
	say "With that, [NameDesc of M] takes [his of M] leave.";
	distract M;
	regionally place M.

To compute bride perception of (M - a monster):
	say "[BigNameDesc of M] notices you.[line break][speech style of M]'[if the refractory-period of bride-consort < 0]Oh it is good to see you again, my beautiful bride! My shaft swells in anticipation of what we're about to do![otherwise]My blushing bride! Well met!'[end if][roman type][line break]";
	calm M.

To compute betrothal of (M - a monster):[This only triggers when the player is fucked by a monster, for now.]
	if the class of the player is bride:
		if debugmode > 0, say "Bride made [NameDesc of M] orgasm. The bride's partner is [NameDesc of bride-consort].";
		let C be a random worn bouquet;
		if bride-consort is not the throne:
			let F be 0;
			unless the class of the player matches the text "traitor":
				if bride-consort is in the location of the player, now F is 1;
				otherwise now F is -1;
			if bride-consort is M, now F is 2;
			if F is -1:[the consort isn't around. Adultery!]
				let T be a random worn interracial themed wearthing; [TODO: Change this bit]
				if bride-consort is human and interracial fetish is 1 and bride-consort is pale skinned and M is dark skinned and T is a wearthing:
					say "Your [C] pulses, and the image of [NameDesc of bride-consort] shatters as it's replaced by [NameDesc of M], or more specifically, [his of M] big, black [DickDesc of M].";
					compute unique recycling of floral bridal veil;
					now bride-consort is M;
					say "[line break][bold type]Your [ShortDesc of C] has acknowledged the superiority of your new, better beloved![roman type][line break]";
				if bride-consort is permanently banished monster: [How do we handle it if the consort is dead?]
					if the vaginalvirgin of the player is 1: [Virgins can remarry]
						say "You feel your connection to [NameDesc of bride-consort] slowly fade away.[line break][variable custom style]I guess this means... I can marry someone else instead?[roman type][line break]";
						compute unique recycling of floral bridal veil; [this resets flags and destroys bouquets]
					otherwise:
						say "[if C is a thing]Your [C] pulses, and an[otherwise]An[end if] image of [NameDesc of bride-consort] appears in your head as an overwhelming feeling of guilt at your lack of loyalty washes over you.";
				otherwise if bride-consort is monster:
					if the reaction of the player is 0 and (bride-consort is mating or C is a thing or the refractory-period of bride-consort > 0):
						say "[if C is a thing]Your [C] pulses, and an[otherwise]An[end if] image of [NameDesc of bride-consort] appears in your head. You know that no matter who forces themselves on you, nothing could ever shake your everlasting connection.";
					otherwise:
						say "An image of [NameDesc of bride-consort] appears in your head as an overwhelming feeling of guilt washes over you.";
						punish infidelity;
			if F is 2:[M is the consort]
				if M is mechanic and the class of the player is "princess bride" and M is alive:
					say "[speech style of M]'Your royal energy... I feel it flowing through me... releasing ME!'[roman type][line break]";
					unseal xavier from M;
				say "Your [C] pulses, and a pleasant feeling wells up inside of you.";
				dignify the charge of floral bouquet * 5;
				if bride-consort is mating:
					FatigueDown the charge of floral bouquet * 5;
					if the charge of floral bouquet < 25, increase the charge of floral bouquet by 10;
				otherwise:
					if the charge of floral bouquet < 25, increase the charge of floral bouquet by 5;
					unless bride-consort is father material, FavourUp bride-consort;
				if the consummation of betrothal-quest is true, progress quest of betrothal-quest. [if player hasn't consummated yet, we don't want to ruin the order of rewards]

To punish infidelity:
	humiliate the charge of floral bouquet * (HUMILIATION-BASE * 8);
	decrease the charge of floral bouquet by 1;
	if floral bouquet is worn and condom fetish >= 2:
		if floral bouquet is blessed, now floral bouquet is bland;
		transform floral bouquet into condoms bouquet;
	let C be a random worn bridal dress;
	if C is worn:
		now C is cursed;
		now the quest of C is vaginal-addict-quest;
		transform C into sheer-open-front-skirt;
		say "A 'gang bang girl' vest top appears on your body!";
		summon gang-bang-girl vest top cursed with quest;
	let J be random worn plentiful accessory;
	if the number of worn chest tattoo is 0 and there is a worn tattoo:
		summon unfaithful tattoo;
		say "You feel a searing pain as the word 'UNFAITHFUL' burns itself into your chest in big red letters.";
	otherwise if the number of worn asscheek tattoo is 0 and there is a worn tattoo:
		summon cheating whore tattoo;
		say "You experience a heavy feeling of shame as the words 'CHEATING WHORE' etch themselves into your cheeks.";
	otherwise if a random number between 1 and 2 is 1 and J is accessory:
		say "Your [printed name of J] hisses as it slowly disintegrates.";
		only destroy J;
	otherwise:
		IntDown 1;
		say "You feel your mind clouding over with thoughts of regret.".

floral bouquet is a bouquet. floral bouquet has a number called charge. The text-shortcut of floral bouquet is "fbqt".

Definition: floral bouquet is flower themed: decide yes.

To say MediumDesc of (C - floral bouquet):
	say "floral bouquet".

Figure of floral bouquet is the file "Items/Accessories/Equippables/bouquet1.png".

To decide which figure-name is the clothing-image of (R - floral bouquet):
	decide on figure of floral bouquet.

condoms bouquet is a bouquet. condoms bouquet is latex.

Definition: condoms bouquet is semen themed: decide yes. The text-shortcut of condoms bouquet is "cbqt".

To say MediumDesc of (C - condoms bouquet):
	say "condoms bouquet".

To decide which number is the initial outrage of (E - condoms bouquet):
	decide on 18.

Figure of condoms bouquet is the file "Items/Accessories/Equippables/bouquet2.png".

To decide which figure-name is the clothing-image of (R - condoms bouquet):
	decide on figure of condoms bouquet.

A time based rule:
	now auto is 1;
	if the class of the player is bride and bride-consort is an alive undefeated monster and there is a worn bouquet and the ceremony of betrothal-quest is true and the consummation of betrothal-quest is false and the player is in Hotel06 and the player is possessing a vagina and vagina is not actually occupied and the number of pussy covering actually unavoidable clothing is 0:
		let Z be 0;
		if bride-consort is in the location of the player, now Z is 1;
		if the number of intelligent monsters in Hotel06 is Z and the player is not in danger, compute wedding night;
		otherwise now auto is 0;
	otherwise:
		now auto is 0.

To compute wedding night:
	now auto is 0;
	let L be the location of bride-consort;
	now bride-consort is in Hotel06;
	now bride-consort is interested;
	say "[if L is not Hotel06][BigNameDesc of bride-consort] appears from the east![line break][end if][speech style of bride-consort]'I have been looking forward to this all day.'[roman type][line break]";
	let cuckSceneOverride be false;
	let CC be a random carried chastity cage;
	if the class of the player matches the text "traitor" and CC is chastity cage and the player is able to speak:
		say "[BigNameDesc of CC] pulses in your [if CC is currently-in-bag]bag[otherwise]hand[end if]... You can sense that an opportunity has arisen to completely take ownership of this pathetic little [man of bride-consort]...";
		reset multiple choice questions;
		set numerical response 1 to "Make the [MediumDesc of bride-consort] your cuck";
		set numerical response 2 to "Have normal wedding night sex with the [MediumDesc of bride-consort]";
		compute multiple choice question;
		if player-numerical-response is 1, now cuckSceneOverride is true;
		if player-numerical-response is 2, say "You decide that this [man of bride-consort] deserves at least a little joy in his life. You obediently lie down on the luxurious bed, and let [him of bride-consort] take control.";
	otherwise:
		say "[if there is a worn bouquet]Suddenly, your [random worn bouquet] takes on a life of its own, and throws itself towards the bed. Since you're holding it, you go with it, tumbling down onto the bed on your front. [end if]";
		if the class of the player matches the text "traitor" and CC is chastity cage, say "[variable custom style]Oh no... I was going to make [him of bride-consort] my cuck... But I can't do that if I can't speak right now![roman type][line break]";
	if cuckSceneOverride is true:
		say "You sit down on the bed, cross your legs, and dangle [NameDesc of CC] in front of [him of bride-consort].[line break][variable custom style]'I[']ve got a surprise for you, sweetie...'[roman type][line break]It's clear that [NameDesc of bride-consort] can't wait to fuck you, but [he of bride-consort] is also paralysed by your beauty and seductive powers.[line break][speech style of bride-consort]'W-what is it, darling?'[roman type][line break]You beckon [him of bride-consort] over, and gently run your fingers along the shaft of [his of bride-consort] [manly-penis].[line break][variable custom style]'Wouldn[']t it be, like, so hot, if we made ourselves wait for a while before we did it? Imagine how wonderful, how EXPLOSIVE it would feel, if our first fantastic fuck came after a long, teasing, frustrating dry spell.'[paragraph break][speech style of bride-consort]'That's... Um... I guess...'[paragraph break][variable custom style]'But I know naughty [boy of bride-consort]s like you can't be trusted not to touch your little dickies when you get the urge... So I have a solution, to make sure that we both keep our part of the bargain.'[roman type][line break]While speaking, you were slipping the base ring down [his of bride-consort] shaft and behind [his of bride-consort] balls. And now, before [he of bride-consort] knows what's happened, you've slipped the cage down on top, and clicked the lock in place.";
		class summon key garter;
		now CC is worn by bride-consort;
		say "[speech style of bride-consort]'I... Um...'[roman type][line break]You wave a hand dismissively at your locked-away cuck.[line break][variable custom style]'Run along now, sweetie.'[roman type][line break][if L is not Hotel06][BigNameDesc of bride-consort] bows [his of bride-consort] head submissively, and leaves the way [he of bride-consort] came.[end if]";
		now bride-consort is sex-enslaved;
		now bride-consort is in L;
		now the consummation of betrothal-quest is true;
		DelicateDown 1;
		Dignify 1000;
	otherwise:
		repeat with C running through pussy covering clothing:
			if C is crotch-zipped:
				say UnzipFlav of bride-consort at C;
				ZipDown C;
			otherwise if C is displacable:
				compute bride-consort displacing C;
			otherwise:
				say "[BigNameDesc of bride-consort] removes your [ShortDesc of C]. ";
				now C is in the location of the player;
		say "A split second later, [NameDesc of bride-consort] is behind you, lining up [his of bride-consort] [manly-penis] with your [vagina].[line break][speech style of bride-consort]'With this, our bond is truly sealed.'[roman type][line break]In one strong motion, [he of bride-consort] pushes inside you.";
		now bride-consort is penetrating vagina;
		if bride-consort is mechanic and the class of the player is "princess bride":
			say "[speech style of bride-consort]'Your royal energy... I feel it flowing through me... releasing ME!'[roman type][line break]";
			unseal xavier from bride-consort; [don't worry this automatically changes who bride-consort is and who is penetrating]
		now the consummation of betrothal-quest is true;
		ruin vagina times 1;
		if bride-consort is demon lord: [xavier gives the player a good seeing to]
			if demon lord is friendly, now demon lord is friendly-fucking;
		otherwise:
			say "[speech style of bride-consort]'C-cumming!'[roman type][line break][BigNameDesc of bride-consort] begins unleashing [himself of bride-consort] inside of you.[line break][variable custom style]Already?![roman type][line break]";
			PussyFill the semen load of bride-consort;
			focus-consider bride-consort;
			orgasm bore bride-consort;
			say "[speech style of bride-consort]'Being inside you... is the best feeling of my life! We must do this again soon. Until then, I trust you will be faithful to me.'[roman type][line break][if L is not Hotel06][BigNameDesc of bride-consort] leaves the way [he of bride-consort] came.[end if]";
			now bride-consort is in L.

Royal Scepter ends here.
