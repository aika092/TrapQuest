Mimic by Objects begins here.

memic is a container. memic is openable. memic is closed. memic is not portable. The printed name of memic is "[if the mimic-disguise of memic is memic][TQlink of item described]mimic[shortcut-desc][TQxlink of item described][verb-desc of item described][otherwise][mimic-disguise of memic][end if]". memic is in Holding Pen. A memic has a number called mimic-boredom. memic is untrappable. A memic has an indexed text called the mimicName. Understand the mimicName property as describing memic. Understand "mimic" as memic. [The memic is purposefully named 'memic' to throw people off. However, that's kind of a legacy feature, since the advent of the character window.]

To decide which indexed text is the next-text-shortcut of (M - memic):
	unless the mimic-disguise of M is memic, decide on the text-shortcut of the mimic-disguise of M;
	decide on "mim".

To decide which figure-name is the examine-image of (M - memic):
	unless the mimic-disguise of M is memic, decide on the examine-image of the mimic-disguise of M;
	decide on figure of no-image-yet.

memic has a thing called mimic-disguise. The mimic-disguise of memic is usually memic.

[To decide which text is the nextMimicName of (M - memic):
	let D be the mimic-disguise of M;
	if D is ornate trunk:
		decide on "[one of]ornate[or]ornate[or]ornamental[as decreasingly likely outcomes] trunk";
	otherwise if D is antique trunk:
		decide on "[one of]antique[or]antique[or]old-looking[as decreasingly likely outcomes] trunk";
	otherwise if D is large sack:
		if the class of the player is santa's little helper:
			decide on "[one of]stocking[or]stocking[or]giant sock[as decreasingly likely outcomes]";
		otherwise:
			decide on "large [one of]sack[or]sack[or]bag[as decreasingly likely outcomes]";
	otherwise if D is wooden crate:
		if the class of the player is santa's little helper:
			decide on "[one of]giant[or]giant[or]great big[as decreasingly likely outcomes] present";
		otherwise:
			decide on "[one of]wooden[or]wooden[or]woodish[as decreasingly likely outcomes] crate";
	otherwise:
		decide on "mimic".]

To say ExamineDesc of (M - a memic):
	let D be the mimic-disguise of M;
	if D is ornate trunk:
		say "[one of]A rather impressive looking wooden trunk[or]A rather big looking wooden trunk[or]A nice big trunk full of junk[cycling].";
	otherwise if D is antique trunk:
		say "[one of]An unassuming wooden trunk[or]An unassuming old trunk full of junk[or]A big old trunk full of junk[cycling].";
	otherwise if D is large sack:
		if the class of the player is santa's little helper, say "[one of]A giant stocking, which probably contains a lovely present[or]A giant silk stocking, which probably contains a lovely present[or]A giant bedazzled stocking, which probably contains a trashy present[cycling].";
		otherwise say "[one of]A large brown cotton sack lying against one wall[or]A large brown silk sack lying against one wall[or]A large bedazzled sack lying against one wall[cycling].";
	otherwise if D is wooden crate:
		if the class of the player is santa's little helper, say "[one of]A large box that has been fashioned in the style of a Christmas present[or]A large box fashioned in the style of a Christmas present, complete with a giant magenta bow on top[or]A large box fashioned in the style of a Christmas present, complete with a giant magenta bow on top. It has a sign on it that reads [if the player is male and the bimbo of the player < 6]STUDS, PLEASE OPEN ME[otherwise if the player is female and the bimbo of the player < 6]INTELLIGENT FEMINISTS, PLEASE OPEN ME[otherwise]HOT SLUTS, PLEASE OPEN ME[end if][cycling].";
		otherwise say "[one of]A large wooden crate that looks like it has been there for a long time[or]A large wooden crate that looks like it was moved recently.[or]A large wooden crate that looks like it might contain beauty supplies[cycling].";
	otherwise:
		say "A treasure chest covered in pink and purple glitter, with a pair of red lips in place of a latch.";

A time based rule (this is the mimic wandering rule):
	if playerRegion is Mansion:
		if the mimic-boredom of memic <= 0 and memic is not in the location of the player:
			mimicReplace memic;
		otherwise:
			decrease the mimic-boredom of memic by 1.

To mimicReplace (M - a memic):
	if the mimic-boredom of M <= 0:[sometimes there's a "move" to nothing here, but I don't understand why it happens unless G is holding the "location of M" pointer, not the "location of M" reference]
		let R be a random placed creaky haunted room;
		let G be the location of M;
		let C be a random closed container in R;
		if R is placed and C is container:
			now M is in R;
			now the mimic-disguise of M is C;
			now M is closed;
			if C is ornate trunk, now the mimic-boredom of M is 8;
			otherwise now the mimic-boredom of M is 6;
			unless G is nothing, now C is in G;[rather than sharing the room, it swaps]
			now the text-shortcut of M is the next-text-shortcut of M;
			[now the mimicName of M is the nextMimicName of M.]

[!<ComputeMimic>+

REQUIRES COMMENTING

+!]
To compute mimic:[The mimic is special in that it has no treasure in it, and will always do something inconvenient for the player. However, all the things the mimic does should have some silver lining]
	if diaper quest is 1:
		say "As you go to open it, the lid springs open and the resulting gap shapeshifts into a giant mouth! You have no time to react before this monster has begun to swallow you whole!";
		if the map-window is g-unpresent, appropriate-cutscene-display figure of mimic cutscene 1;
		now the player is in MimicCrib;
		display entire map;
	otherwise:
		say "A pair of green hands shoot out and seize your wrists as soon as you crack the lid, which creaks ominously as it opens the rest of the way all on its own. [run paragraph on]";
		let M be memic;
		let D be the mimic-disguise of M;
		if D is ornate trunk:
			compute mimic teasing 2;
		otherwise if D is antique trunk:
			compute mimic teasing 4;
		otherwise if D is large sack:
			compute mimic teasing 1;
		otherwise if D is wooden crate:
			compute mimic teasing 3;
		otherwise:
			compute mimic teasing 2;
		say "The mimic disappears in a puff of pink smoke.";
		now the mimic-boredom of M is 0;
		mimicReplace M.

To compute mimic teasing (N - 1):[hissing mimic. Will "poison" the player or fully remove any semen covering the player's body]
	if the semen coating of face + the semen coating of breasts > 0:
		say "A shadowy mass rises out of the sack, slowly forming itself into a green-skinned woman with piercing yellow eyes and wickedly sharp fangs. [line break][first custom style]'Sssso much venom... sssso li-'[roman type][line break]She trails off, staring at you as drool collects in the corners of her mouth. [line break][first custom style]'Sssso much man ssstuff... you're ssso ssssslathered in ssssemen...'[roman type][line break]The [item style]hissing mimic[roman type] lunges with her tongue outstretched, slurping loudly as she licks every last drop of cum from your face, hair and chest. [line break][first custom style]'Ssso tassssty...'[roman type][line break]The mimic licks her lips as she pulls the sack shut.";
		fully clean hair;
		fully clean face;
		fully clean breasts;
	otherwise:
		say "A shadowy mass rises out of the sack, slowly forming itself into a green-skinned woman with piercing yellow eyes and wickedly sharp fangs. [line break][first custom style]'[one of]Exxxperiensss the sssstrength of my venom[or]Sssso much venom... sssso little[or]Ssssometimess... I worry sssssome greedy sssslut won't sssssaunter by, but[at random]... sssslut.'[roman type][line break]She lunges, hissing as her teeth sink into your neck. You shiver as her magical venom rushes into your body, and find yourself rubbing your thighs together as a sudden wave of arousal washes over you. Your surroundings seem to spin around you as the mimic releases you and disappears into the sack.";
		FatigueUp 30;
		let R be a random number between 1 and 3;
		if R is 1 and the lips of face < 2 + artificial enhancements fetish:
			say "You can feel your lips swelling noticeably as a nasty ache settles over every muscle in your body.";
			LipsUp 1;
			BodyRuin 3;
		otherwise if R is 2 and max breast size > the largeness of breasts:
			if artificial enhancements fetish is 1:
				say "Your breasts shiver and suddenly increase in size, and as a wave of fatigue settles over every muscle in your body, you realize they look a lot perkier too.";
				BustImplantsUp 3;
				FatigueUp 30;
			otherwise:
				say "Your breasts jiggle noticeable as they suddenly increase in size, [if lactation fetish is 1]lactating spontaneously[otherwise]tingling noticeably[end if] as pain and fatigue settle in every muscle in your body.";
				BustUp 3;
				BodyRuin 1;
				FatigueUp 15;
				if lactation fetish is 1, trigger lactation;
				otherwise passively stimulate breasts from memic;
		otherwise if R > 2:
			say "Your nipples harden a little painfully, turning visibly red as a wave of newfound sensitivity washes over your chest.";
			increase the raw sensitivity of breasts by 2;
		otherwise:
			say "It feels like your whole body is on fire, and tears well up in your eyes as you wait for the venom to finally wear off.";
			PainUp 2;
		passively stimulate vagina from memic.

To compute mimic teasing (N - 3):[stylish mimic. Transforms the player's clothes or messes with the player's headgear]
	say "A shadowy mass rises out of the crate, slowly forming itself into a green-skinned woman with piercing yellow eyes and huge GG-cup breasts, which are barely restrained by a sparkling magenta bikini. [line break][first custom style]'[one of]You[']re looking for a makeover, aren[']t you? Of course you are, you look terrible honey.'[or]I can[']t blame you for being greedy, you obviously need a complete makeover.'[or]Oh my. You[']re in dire need of my expertise, aren[']t you, honey?[or]You may not think you need a makeover, but trust me honey, you do.'[at random][roman type][line break]";
	if the number of worn clothing - the number of worn headgear > 0:
		say "The [item style]stylish mimic[roman type] takes a deep breath, lifting you a full meter off the ground as she forcefully exhales glittering dust over your whole body.";
		repeat with C running through worn upgradable clothing:
			potentially transform C; [allows for theme protection]
		Intdown 1;
		say "[line break][first custom style]There, now don't you feel hotter?[roman type][line break]The mimic puts you down, blowing you a kiss as she dissolves downward into the crate, closing the lid sharply behind her.";
	otherwise if the make-up of face < 3:
		say "The [item style]stylish mimic[roman type] takes a deep breath, pulling you halfway into the crate as she exhales glittering dust over your face. It holds fast to your cheeks as she releases you, blowing you a kiss as she swiftly closes the lid.";
		FaceUp 3;
	otherwise:
		let S be a random off-stage pink scrunchie;
		if S is actually summonable:
			say "The [item style]stylish mimic[roman type] pulls you halfway into the crate, firmly holding your face between her breasts[if permanent makeup is 0], which makes your cheeks tingle strangely[end if] as she [if the number of worn scrunchies is 1]splits your hair into pigtails with a [printed name of S][otherwise]back into a ponytail and slips on a [printed name of S][end if]. [line break][first custom style]There, you're hotter already![roman type][line break]The mimic releases you, beaming as she sharply closes the lid on top of her.";
			summon S;
		otherwise:
			let H be a random worn headgear;
			say "The [item style]stylish mimic[roman type] pulls you halfway into the crate, firmly holding your face between her breasts[if permanent makeup is 0], which makes your cheeks tingle strangely[end if] as she sprinkles a handful of glittering dust over your [printed name of H].[line break][first custom style]There, you're hotter already![roman type][line break]The mimic releases you, beaming as she sharply closes the lid.";
			curse H;
			decrease the raw-magic-modifier of H by 1;
			unless H is scrunchie, now H is temptation;
		now permanent makeup is 1.

To compute mimic teasing (N - 4):[friendly mimic; messes with player penis size, equalizes asshole and vagina gape, or gives the player a free lube]
	say "A shadowy mass rises out of the trunk, slowly forming itself into a [if futanari fetish is 0]flatchested green woman with piercing yellow eyes and a giant green dildo attached to a harness around her waist, [otherwise]frail green woman with piercing yellow eyes and a giant green dick which is [end if]so huge it hangs halfway out of the trunk. [line break][second custom style]'[one of]Finally somebody opens me... I should probably give you a reward, right?[or]Phew, it's been so long since anyone opened me. Guess I should thank you.'[or]Thanks so much, it's been weeks since anybody opened me! I've gotta thank you somehow...'[or]So, I guess you opened me because you were looking for something useful. Lets see if I can help!'[at random][roman type][line break]The [item style]friendly mimic[roman type] makes a wicked grin as she yanks your body forward[run paragraph on]";
	if the player is male:[Penis scrambling]
		let P be a random number between 0 and 10;
		let Ab be a random worn plug;
		unless Ab is plug, now Ab is a random off-stage plug;
		[if there is a worn plug, ]
		say " and more shadows emerge from the trunk and envelop your crotch, rapidly stroking your [Shortdesc of penis] as they creep on past your [ShortDesc of hips]";
		if P > the size of penis and there is a worn plug:
			PenisUp P - the size of penis;
			say "You can feel your [printed name of Ab] shuddering inside you, rapidly losing mass as your penis begins to grow, lengthening rapidly into a [ShortDesc of penis]!";
			now the size of Ab is 1;
		otherwise:
			if Ab is plug and Ab is actually summonable:
				PenisDown P;
				say "You feel something enter your [asshole] as your body begins reacting to the intense stimulation, growing [if P is 1]a full inch[otherwise if P is 2]two full inches[otherwise if P is 3]one, two, three full inches[otherwise]one, two, three full inches, and then rapidly bulging to a full [P][end if] as your penis rapidly [Shrink]s down into a [Shortdesc of penis].";
				now the size of Ab is P;
				summon Ab;
			otherwise:
				PenisDown P;
				say "Your penis rapidly [Shrink]s down into a [ShortDesc of penis] as the mimic pries open your [asshole], looking you dead in the eye as it fills you with [if P is 1]a nice big shot of warm fluid[otherwise if P is 2]a few shots of warm fluid[otherwise]several shots of warm fluid[end if].";
				AssFill P;
	otherwise:
		let V be the openness of vagina;
		let A be the openness of asshole;
		if A is V:
			let L be a random off-stage lubricant;
			say " and shoves a [printed name of L] into your hands.";
		otherwise:
			if A > V:
				AssClose A - V;
				gape vagina times (A - V);
			otherwise:
				PussyClose V - A;
				gape asshole times (V - A);
			say " and more shadows emerge from the trunk and envelop your crotch. You feel a wrenching sensation deep in your gut as your [vagina] and [asshole] are forced wide open, and then painfully tightened.";
			ruin asshole;
			ruin vagina;
	say "[line break][second custom style]'You[']re welcome!'[roman type][line break]The mimic releases you, maintaining her nasty smile as her body disappears and the trunk rapidly swings shut.".

To compute mimic teasing (N - 2):[snickering mimic;reverses bust and hip size, then increases delicateness]
	say "More hands jump out at you, pulling harder and harder until you finally lose your balance and topple in head first as hysterical laughter fills your ears. [line break][second custom style]'[one of]Now I REALLY get to mess with you! Hee he he[or]Just so you know, I'm about to have a LOT of fun[or]Now I can do WHATEVER I want! Ha ha ha[or]Yes, finally! It's been so long since I had anyone to PLAY with[at random]!'[roman type][line break]The [item style]snickering mimic[roman type]'s voice only grows louder as a shadowy mass envelops your whole body, [if the number of worn clothing > 0]slithers under your clothes and clamping over your mouth[otherwise]tickling your bare skin and clamping over your mouth[end if], as the mimic begins reshaping your body as it sees fit. You can feel it twisting your nipples and viciously spanking your ass as it rearranges your features, but you have no way of responding to the pain other than to simply endure it until it abruptly chucks you out on your ass and closes sharply behind you.";
	PainUp 1;
	if inflation fetish is 1:[air volume in boobs --> flesh in hips; air in hips --> flesh in boobs]
		let B be the air volume of breasts;
		let H be the air volume of hips;
		BustDeflate B;
		if H > 0, decrease the air volume of hips by H;
		AssSwell B;
		BustUp H;
	otherwise:[chest to hip scrambling]
		let B be the flesh volume of breasts;
		let H be a random number between the flesh volume of hips and (the flesh volume of hips + 5);
		BustDown B;
		if weight gain fetish is 1, FatAssDown H;
		otherwise HipDown H;
		AssSwell B;
		BustUp H.

Report waiting when the player is in MimicCrib:
	let R be a random number between 1 and 3;
	say "[one of]As you lean back into the cushioned floor of the crib, you feel your arms sinking, and too late find that[or]Once again your arms are pulled behind you until[stopping] they have become firmly stuck inside the walls of the living crib. ";
	if R is 1 and face is not actually occupied and the player is able to orgasm:
		say "Tentacles begin to emerge from the walls. One sneaks [if there is bottom level protection clothing]under your [ShortDesc of random bottom level protection clothing][otherwise]over[end if] to your [genitals] where it begins to toy with you, while others bring... servings of creamy cake to your mouth.[line break][variable custom style][one of]That is not what I expected.[or]Here we go again...[stopping][roman type][line break]You [if the player is feeling submissive]don't even consider resisting[otherwise]are left completely at their mercy[end if] as they proceed to masturbate and forcefeed you at the same time.";
		appropriate-cutscene-display figure of mimic cutscene 3;
		say "Even when you are completely full, they don't seem to care. It soon becomes very clear that you aren't getting out until you've eaten the entire large and very rich cake. You [if the player is feeling dominant]scowl but[otherwise]whimper and[end if] obey, all the time being made hornier and hornier by the moment. By the time you get to near the end of the cake, you feel like you're going to burst, and in more ways than one. It almost seems like this is exactly what the crib has planned for you - as you begin to take your final bites the tentacle at your [genitals] speeds up, and reaches a furious crescendo as you swallow that final bite. You mewl softly as you are forced to cum.";
		now the fatigue of the player is the buckle threshold of the player;
		vaginally orgasm shamefully;
		StomachFoodUp 10;
		say "After this the crib spits you out, leaving you completely exhausted and your stomach painfully full of sugary food.";
	otherwise if R is 2 and the player is able to get horny:
		say "Tentacles begin to emerge from the walls. One sneaks [if there is bottom level protection clothing]under your [ShortDesc of random bottom level protection clothing][otherwise]over[end if] to your [genitals] where it begins to toy with you, while others attach themselves to your nipples and begin to gently suck.";
		appropriate-cutscene-display figure of mimic cutscene 2;
		say "The air around you feels heavy and you begin to wonder if it's making you breathe in some sort of aphrodisiac gas, because you are definitely starting to feel VERY turned on. And then just as you have begun to resign yourself to the idea that these tentacles are going to bring you to orgasm, you are suddenly spat back out, dumped on the ground back in the mansion, left pent-up and horny, [if the diaper addiction of the player < 14 and the player is not a nympho]to reflect on how shameful it is to have allowed yourself to be turned on in such a fashion[otherwise]to decide how to deal with your crotch's desperate yearning throbs[end if].";
		SexAddictUp 1;
		ruin vagina times 2;
	otherwise:
		say "All of a sudden, white objects start to rain from the darkness above you. As the first ones thump against your face and body you realise with [horror the diaper addiction of the player] what they are - used disposable diapers! As more and more start to pile on top of each other on and around you, [if diaper messing >= 3]the disgusting smell of them[otherwise]the stench of piss[end if] soon fills your nostrils[if the diaper addiction of the player < 14], making you gag[end if].";
		appropriate-cutscene-display figure of mimic cutscene 4;
		say "And still they continue to fall, threatening to bury you under their combined bulk and weight. You begin to struggle but it's no use - you feel like you're sinking in a quicksand made out of used nappies. Soon they are covering your entire body and you can't even breathe properly; you begin to cough and splutter as you try to suck a little oxygen through the thick rancid padding. Just as you begin to feel light-headed [one of]and resign yourself to the reality of meeting your end,[or]once again[stopping] you are suddenly spat out of the crib back into the mansion, but now thoroughly exhausted and with tears in your eyes.";
		PainUp 1;
		now the fatigue of the player is the buckle threshold of the player;
	now the stance of the player is 1;
	now the player is in the location of memic;
	say "[bold type]You are on your knees. [roman type]The mimic disappears in a puff of pink smoke.";
	display entire map;
	now the mimic-boredom of memic is 0;
	mimicReplace memic.

Check attacking memic:
	if the noun is container, try mimicInvestigating the noun instead.

Mimic ends here.

