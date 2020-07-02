Christmas Gift by Consumables begins here.

A christmas gift is a kind of thing. There are 25 christmas gifts. Understand "present", "wrapping" as christmas gift. The printed name of christmas gift is "[TQlink of item described]Christmas gift[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of christmas gift is "chg".
To say ExamineDesc of (B - a christmas gift):
	say "A beautifully wrapped Christmas present. Open it and find what's inside!".

Figure of christmas gift is the file "Items/Collectibles/gift1.png".
To decide which figure-name is the examine-image of (B - a christmas gift):
	decide on figure of christmas gift.

Check opening a christmas gift:
	try unwrapping the noun instead.

Definition: a christmas gift is never-in-bag: decide yes.

When play begins:
	let giftShortcutCount be 1;
	repeat with E running through christmas gift:
		now the text-shortcut of E is substituted form of "chg[giftShortcutCount]";
		increase giftShortcutCount by 1.

A christmas-gift-event is a kind of thing.

To compute christmas event of (C - a christmas-gift-event):
	say "Oops, someone forgot to code what [C] does.".

A christmas-gift-BE is a kind of christmas-gift-event. There are 12 christmas-gift-BE.
To compute christmas event of (C - a christmas-gift-BE):
	if a random number between 0 and artificial enhancements fetish is 1:
		say "A pair of needles shoot out of the box, hitting you straight in the chest! ";
		if the silicone volume of breasts is 0, say "You gasp with shock as the needles inject silicone implants into your breast flesh, enhancing their size!";
		otherwise say "Your breast implants have extra silicone injected into them, enhancing their size!";
		BustImplantsUp 1;
	otherwise:
		say "Pink smoke billows out of the gift, converging on your chest, which rumbles and slightly swells!";
		BustUp 1.

A christmas-gift-cumshot is a kind of christmas-gift-event. There are 12 christmas-gift-cumshot.
To compute christmas event of (C - a christmas-gift-cumshot):
	if tentacle fetish is 1 and the largeness of breasts > 5 and highest-cleavage is 0:
		say "As you open the lid, a tentacle slithers out, forcing its way between your [BreastDesc]! It thrusts and wiggles as [semen] sprays out, painting your chest!";
		appropriate-cutscene-display figure of Xmas tentacle cutscene 1;
		CumTitsUp a random number between 5 and 8;
	otherwise:
		say "As you open the lid, [semen] sprays out, getting you right in the face!";
		let N be a random number between 5 and 8;
		display cumshot reaction to N;
		CumFaceUp N.

A christmas-gift-transformation is a kind of christmas-gift-event. There are 8 christmas-gift-transformation in Christmas Item Pen.

To compute christmas event of (T - a christmas-gift-transformation):
	let C be most-transformable-clothing;
	if C is clothing:
		say "A silvery liquid shoots out of the gift box with purpose, shooting straight for your [ShortDesc of C]! The [clothing-material of C] absorbs the magic fluid and then begins to shimmer!";
		potentially transform C;
	otherwise:
		say "A silvery liquid shoots out of the gift box with purpose, but seems to be unable to find anywhere to land. It turns into shiny steam and then quickly disappears.".

A christmas-gift-penetration is a kind of christmas-gift-event. There are 7 christmas-gift-penetration in Christmas Item Pen.

To decide which number is the girth of (C - a christmas-gift-penetration):
	decide on 10 - the number of christmas-gift-penetration in Christmas Item Pen.

Definition: a christmas-gift-penetration is facefucker: decide yes.

To say ShortDesc of (C - a christmas-gift-penetration):
	say "ghostly [manly-penis]".

To compute christmas event of (C - a christmas-gift-penetration):
	if diaper quest is 0:
		let viable-holes be a list of body parts;
		repeat with F running through orifices:
			if F is not actually occupied and (F is not vagina or (the vaginalvirgin of the player is 0 and the player is possessing a vagina)) and (F is not asshole or the analvirgin of the player is 0 or the player is possessing a vagina), add F to viable-holes;
		if the number of entries in viable-holes > 0:
			sort viable-holes in random order;
			let F be entry 1 of viable-holes;
			now C is penetrating F;
			if F is face:
				say "You gasp with a [variable custom style]'GLARK!'[roman type] as your lips, jaw and then throat are [one of][or]once again [stopping]forced open by an invisible but very real [manly-penis]! It pushes deeper and deeper down your gullet, making you gag on its length before exploding, depositing a load of warm [semen] directly into your stomach.";
				StomachSemenUp the girth of C;
				check puking the girth of C;
			otherwise:
				say "You yelp with surprise as your [variable F] is forced open by an invisible but very real [manly-penis]! [if the girth of C > the openness of F + 2]Its fearsome size brutally stretches you out as it forces more and more of its length inside your hole[otherwise if the girth of C > the openness of F]Its large size stretches your hole near to its limit as it pushes its way further and further into its new home[otherwise if the girth of C >= the openness of F - 2]You manage to accommodate its reasonable size as it progresses up into your hole[otherwise]Its size is no match for your experienced hole, which accommodates its entire girth with relative ease[end if]. Once it has bottomed out inside of you, you can feel it begin to ejaculate, filling you with warm sticky [semen].";
				ruin F times 1;
				fill F times the girth of C;
			dislodge C;
			say "[one of]Just as quickly as it started, the penetration is over, the sensation of the [manly-penis] disappearing in an instant as if it was never there at all. If it wasn't for the remaining warm sticky feeling of the new load of [semen] inside of you, you might be led to believe you'd imagined the entire thing[or]Once again the invisible [manly-penis] suddenly vanishes from existence[stopping].";
		otherwise:
			say "How weird, this one seems empty? That must be very unusual...";
	otherwise:
		say "You feel your mouth being filled by bite-sized mouthfuls of unidentified [if diaper messing >= 3]food[otherwise]drink[end if]! Before you have a chance to even taste them, never mind spit them out, they have forced their way past your tonsils and down your throat, giving you no choice but to gulp in order to support their journey down to your stomach. More and more stuff keeps appearing in your mouth for several seconds, before the bizarre ghostly force-feeding session comes to an abrupt halt, just as suddenly as it started. You feel a lot more full than you did a few moments ago...";
		if diaper messing >= 3, StomachFoodUp a random number between 3 and 4;
		otherwise StomachUp a random number between 3 and 4.

To initialise christmas gifts:
	if diaper quest is 0: [12 boobs ballooning]
		repeat with E running through christmas-gift-BE:
			now E is in Christmas Item Pen;
	repeat with E running through bandages: [11 bandaids healing]
		now E is in Christmas Item Pen;
	if diaper quest is 0:
		if bukkake fetish is 0: [10 shots of semen]
			repeat with N running from 1 to 10:
				let C be a random off-stage can;
				now the fill-colour of C is creamy;
				now C is in Christmas Item Pen;
		otherwise:
			repeat with E running through christmas-gift-cumshot:
				now E is in Christmas Item Pen;
	if diaper quest is 0: [9 lubes a slipping]
		repeat with E running through lubricants:
			now E is in Christmas Item Pen;
	[8 transformations]
	[7 surprise penetrations]
	if diaper messing > 3 and diaper quest is 1:
		repeat with W running through pocketwipes:
			now W is in Christmas Item Pen;
	repeat with N running from 1 to 6: [6 electric fans]
		let E be a random off-stage electric fan;
		now E is in Christmas Item Pen;
		if a random number between 1 and 3 is 1, now E is blessed;
		if a random number between 1 and 4 is 1, now E is cursed;
	repeat with N running from 1 to 5: [5 gold rings]
		let J be a random off-stage ring;
		now J is solid gold;
		set shortcut of J;
		now J is in Christmas Item Pen;
	let T be leopard-hotpants; [4 new undies]
	if diaper quest is 0, now T is in Christmas Item Pen;
	let T be pink-kitty-panties;
	now T is in Christmas Item Pen;
	let T be pink-kitty-briefs;
	now T is in Christmas Item Pen;
	let T be red-anal-briefs;
	if diaper quest is 0, now T is in Christmas Item Pen;
	if diaper quest is 0: [3 powerful bombs]
		let bomb-list be a list of things;
		add time-bomb to bomb-list;
		add energy-bomb to bomb-list;
		add nail-bomb to bomb-list;
		sort bomb-list in random order;
		let BC be a random number between -1 and 1; [67% chance of one being cursed]
		repeat with B running through bomb-list:
			now B is in Christmas Item Pen;
			if BC is 0, now B is cursed;
			if BC is 1, now B is blessed;
			increase BC by 1;
	now luck-tincture is in Christmas Item Pen; [2 tincture buffs]
	now luck-tincture is blessed;
	now acceleration-tincture is in Christmas Item Pen;
	now acceleration-tincture is blessed;
	if diaper quest is 0 and Icarus is off-stage, now Icarus is in Christmas Item Pen. [And a brand new festive NPC]

To compute christmas gifting of (M - a monster):
	if christmas content is 1 and M is reactive:
		let CG be a random off-stage christmas gift;
		if CG is a thing:
			now CG is carried by the player;
			say ChristmasGiftingFlav of M.

To compute christmas gifting of (M - a student):
	do nothing.
To compute christmas gifting of (M - a staff member):
	do nothing.

To say ChristmasGiftingFlav of (M - a monster):
	say "[speech style of M]'[one of]Well anyway, Merry Christmas[or]Oh yeah, this is for you[or]Seasons Greetings, [honey of M][or]Well, in the spirit of the season, I got you this[or]Joy to the world and all that. Here's a thing[or]This is from me, I hope you like it[or]Well as it's Christmas, I should probably give you this[in random order].'[roman type][line break]";
	say "[BigNameDesc of M] hands you a [random held christmas gift].".

To say ChristmasGiftingFlav of (M - a royal guard):
	say "[speech style of M]'[if the class of the player is princess][one of]Princess... This is just a little something I saved up for. I hope you like it[or]Merry Christmas, my liege[stopping][otherwise][one of]The Princess has ordered me to give you this[or]This is from the royal family[or]Today is your lucky day, I've been ordered to give these out to all visitors[in random order][end if].'[roman type][line break]";
	say "[BigNameDesc of M] hands you a [random held christmas gift].".

To say ChristmasGiftingFlav of (M - a robot):
	say "[speech style of M]'[one of]FESTIVE PROTOCOL CODE FOUND. EXECUTING...'[or]HO HO HO. MERRY HAPPY.'[or]HAPPY HOLIDAY GIFT DISPENSATION... SUCCESS.'[in random order][roman type][line break]";
	say "[BigNameDesc of M] hands you a [random held christmas gift].".

To say ChristmasGiftingFlav of (M - djinn):
	say "[speech style of M]'As it's Christmas, let me manifest something for you from the aether.'[roman type][line break]";
	say "[BigNameDesc of M] clicks [his of M] fingers and now you are holding a [random held christmas gift]!".

IcarusTimer is a number that varies.
Unwrapping is an action applying to one thing.
Check unwrapping:
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the player is in danger, say "You should deal with the threatening monsters first." instead.
Carry out unwrapping:
	allocate 6 seconds;
	let X be a random thing in Christmas Item Pen;
	if Icarus is in Christmas Item Pen: [make it slightly more likely for Icarus to appear]
		increase IcarusTimer by 7;
		if a random number between -10 and 100 < IcarusTimer, now X is Icarus;
	if X is a monster:
		say "A tiny [X] flies out of the gift box, rapidly growing to full size!";
		now X is in the location of the player;
	otherwise if X is a christmas-gift-event:
		compute christmas event of X;
		destroy X;
	otherwise if X is a thing:
		now X is carried by the player;
		if X is clothing, now X is unowned;
		say "Inside you find a [X]! Ooh, very interesting!";
		if X is plentiful accessory:
			now X is in the location of the player;
			compute autotaking X;
	otherwise:
		say "Oh no, it's empty. Boo!";
	destroy the noun.

[To decide which number is the bartering value of (T - a christmas gift) for (M - a monster):
	decide on 7.]

Christmas Gift ends here.
