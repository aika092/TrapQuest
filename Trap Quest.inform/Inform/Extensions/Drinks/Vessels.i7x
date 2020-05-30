Vessels by Drinks begins here.

[!<Vessel>@

Something that the player can refill and drink from repeatedly.

@inherits <Bottle>

@!]
A vessel is a kind of bottle.

To decide which number is the outrage of (V - a vessel):
	let O be the initial outrage of V;
	if V is open topped and the doses of V > 0:
		if the fill-colour of V is golden or the fill-colour of V is creamy, increase O by 8;
		if the fill-colour of V is murky, increase O by 12;
	decide on O.

To decide which number is the cringe of (V - a vessel):
	let O be the initial outrage of V;
	if V is open topped and the doses of V > 0 and diaper quest is 1 and the fill-colour of V is white, increase O by 8;
	decide on O.

To decide which number is the initial outrage of (V - a vessel):
	decide on 0.
To decide which number is the initial cringe of (V - a vessel):
	decide on 0.

[!<WaitressVessel>@

Has special effects with the waitress bunny class.

@inherits <Vessel>

@!]
A waitress vessel is a kind of vessel.
Definition: a waitress vessel is party themed: decide yes.
Definition: a waitress vessel is pink themed: decide yes.
Definition: a bottle (called T) is serve-ready:
	if T is probably-serve-ready and there is a friendly human intelligent monster in the location of the player, decide yes;
	decide no.

Definition: a bottle is probably-serve-ready if it is non-empty and it is player-serve-ready.

Definition: a bottle (called T) is player-serve-ready:
	if (the class of the player is bunny and bunny waitress ears is worn) or there is worn serving-bondage or the class of the player is "cafe maid", decide yes;
	if the class of the player is royal slave and the fill-colour of T is white, decide yes;
	decide no.

[!<Vessel>@<openTopped:Boolean>*

REQUIRES COMMENTING

*@!]
A vessel can be open topped.
The doses of a vessel is usually 0.

[!<Vessel>@<Restock>+

REQUIRES COMMENTING

+!]
To restock (C - a vessel):
	let B be a random basic loot fetish appropriate vessel;
	if B is bottle, now B is in Standard Item Pen.

[!<TheSetupStartingVesselsRule>+

REQUIRES COMMENTING

+!]
This is the setup starting vessels rule:
	let C be a random vessel;
	repeat with N running from 1 to 3:
		restock C.
The setup starting vessels rule is listed in the setup starting items rules.

[!<TheRemoveInappropriateVesselsRule>+

REQUIRES COMMENTING

+!]
This is the remove inappropriate vessels rule:
	repeat with B running through squirt dildo:
		now B is in Holding Pen;
	if diaper messing < 3, now novelty mug is in Holding Pen.
The remove inappropriate vessels rule is listed in the diaper quest fix rules.

[!<DecideWhichNumberIsVesselCount>+

REQUIRES COMMENTING

+!]
To decide which number is vessel-count:
	let X be 0;
	repeat with V running through vessels held by the player:
		increase X by 1;
	decide on X.

[!<DecideWhichNumberIsOpenToppedVesselCount>+

REQUIRES COMMENTING

+!]
To decide which number is open-topped-vessel-count:
	let X be 0;
	repeat with V running through open topped vessels held by the player:
		increase X by 1;
	decide on X.

To say ShortDesc of (B - a vessel):
	if the doses of B is 0, say "empty ";
	say "[ShortVesselDesc of B]";
	if the doses of B > 0, say " with [if the fill-type of B is remembered][FillName the fill-type of B][otherwise][fill-colour of B] liquid[end if]".

To say ShortVesselDesc of (V - a vessel):
	say "drinking vessel".

A squirt dildo is a kind of vessel. The max-doses of a squirt dildo is usually 1. There is 1 squirt dildo. The printed name of squirt dildo is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]squirt dildo[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of squirt dildo is "sqd". Figure of squirt dildo is the file "Items/Accessories/Vessels/squirtdildo1.png".
Definition: a squirt dildo (called T) is disembodied rather than embodied: [When penetrating an orifice, can it fit underneath other clothing like a sex toy? Or will clothing get in the way, e.g. a dildo pole?]
	decide yes.
To decide which figure-name is the examine-image of (V - a squirt dildo):
	decide on the figure of squirt dildo.
Report plugging something with a squirt dildo:
	now the second noun is sure.
Definition: a squirt dildo is basic loot: decide no.
To compute cursed drinking (X - a squirt dildo):
	say "An extremely bitter taste and slimy consistency immediately lets you know it's not what you put in. The squirt dildo changed everything inside it into [semen]! [line break][variable custom style][if the curse-ID of X is sure and X is cursed]This vessel is cursed... it's going to turn anything that's inside it into [semen][otherwise if the curse-ID of X is sure]This potion colour must be cursed... and that's causing it to turn into [semen] when I try to drink it from here[otherwise]One of these is cursed, but I don't know which[end if]...[roman type][line break]";
	StomachSemenUp 1.
To say VesselDesc of (V - a squirt dildo):
	say "This dildo has a hollow inside, hollow balls at the base and a hole at the top. By squeezing the base you can squirt the contents out of the dildo, and by releasing you can capture a bit of whatever liquid the dildo is in.".
To say ShortVesselDesc of (V - a squirt dildo):
	say "squirt dildo".
Definition: a squirt dildo is inflation themed: decide yes.
Definition: a squirt dildo is oral sex themed: decide yes.
Definition: a squirt dildo is penis themed: decide yes.
To decide which number is the initial outrage of (V - a squirt dildo):
	decide on 14.

baby's bottle is a vessel. The max-doses of baby's bottle is 3. The printed name of baby's bottle is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]baby's bottle[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of baby's bottle is "bab". Figure of baby's bottle is the file "Items/Accessories/Vessels/babybottle1.png".
To decide which figure-name is the examine-image of (V - baby's bottle):
	decide on the figure of baby's bottle.
Definition: baby's bottle is pregnancy related: decide yes.
Definition: baby's bottle is fetish appropriate if diaper lover > 0.
To compute cursed drinking (X - baby's bottle):
	say "It tastes like milk, but really sour. Something tells you it's not the same as what you put in, and before you can finish the thought, [run paragraph on]";
	let D be a random eligible diaper;
	if D is actually summonable and a random number between 1 and 3 - unlucky is 1:
		say "your [ShortDesc of X] shimmers and a diaper appears around your loins!";
		summon D cursed with quest;
	otherwise if diaper lover >= 1 and incontinence < 5:
		say "you feel a weird twang internally, just behind your [if the player is possessing a penis][ShortDesc of penis][otherwise if the player is possessing a vagina][vagina][end if], where your bladder should be.[if the bimbo of the player < 8][one of][line break][variable custom style]That can't be good...[roman type][line break][or][stopping][end if]";
		increase incontinence by 1;
	otherwise:
		say "a fuzzy feeling enters your head, and it's harder to concentrate.";
		if 25 - the delicateness of the player > the raw intelligence of the player, DelicateUp 1;
		IntDown 1;
	MilkDrunkUp 1.
To say VesselDesc of (V - baby's bottle):
	say "A bottle with a sucker for a lid, traditionally for babies to drink breast milk from[if the doses of V > 0 and the fill-colour of V is white]. The fact that it's full of breast milk makes it even more embarrassing to be holding onto[otherwise if the doses of V > 0]. The fact that you're using it to carry around a drink makes it even more embarrassing to be holding onto[end if].".
To say ShortVesselDesc of (V - baby's bottle):
	say "baby's bottle".
To decide which number is the initial outrage of (V - baby's bottle):
	if diaper quest is 0, decide on 10;
	decide on 0.
To decide which number is the initial cringe of (V - baby's bottle):
	if the doses of V is 0, decide on 8;
	if the fill-colour of V is white, decide on 14;
	decide on 10.

alcohol is a number that varies.
hungover is a number that varies.

cocktail-glass is a waitress vessel. cocktail-glass is open topped. The max-doses of cocktail-glass is 2. The printed name of cocktail-glass is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]cocktail glass[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of cocktail-glass is "cg". Understand "cocktail", "glass" as cocktail-glass. Figure of cocktail glass is the file "Items/Accessories/Vessels/cocktailglass1.png".
To decide which figure-name is the examine-image of (V - cocktail-glass):
	decide on the figure of cocktail glass.
To say VesselDesc of (V - cocktail-glass):
	say "A pink cocktail glass decorated with high heels and handbags, for delicate ladies to drink tasty alcoholic beverages out of.".
To say ShortVesselDesc of (V - cocktail-glass):
	say "cocktail glass".
To decide which number is the initial outrage of (V - cocktail-glass):
	decide on 2.

champagne-glass is a waitress vessel. champagne-glass is open topped. The max-doses of champagne-glass is 1. The printed name of champagne-glass is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]champagne glass[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of champagne-glass is "cgl". Understand "champagne", "glass" as champagne-glass. Figure of champagne glass is the file "Items/Accessories/Vessels/champagneglass1.png".
To decide which figure-name is the examine-image of (V - champagne-glass):
	decide on the figure of champagne glass.
To say VesselDesc of (V - champagne-glass):
	say "A trashy pink bubbly wine vessel, with the words 'SEXY BITCH' across one side in tacky fake diamonds.".
To say ShortVesselDesc of (V - champagne-glass):
	say "champagne glass".
To decide which number is the initial outrage of (V - champagne-glass):
	decide on 6.

To compute cursed drinking (X - a waitress vessel):
	if alcohol fetish is 1:
		say "It tastes very alcoholic, like a strong cocktail! All your abilities are dimmed until you sober up.";
		increase alcohol level;
	otherwise:
		compute default cursed drinking X.

To compute cursed drinking (X - champagne-glass):
	if alcohol fetish is 1:
		say "It tastes like real champagne, and the alcohol hits you hard! All your abilities are dimmed until you sober up.";
		increase alcohol level;
	otherwise:
		compute default cursed drinking X.

To decide which number is alcohol-level-tier (N - a number):
	decide on 313 * N.

To increase alcohol level:
	let A be alcohol-level;
	update appearance level;
	if hungover > 0:
		now hungover is 0;
		increase A by 1;
	dignify 500;
	if A > 3:
		compute drunken adventure;
	otherwise:
		now alcohol is alcohol-level-tier (A + 1);
		if newbie tips is 1 and A is 0, say "[one of][newbie style]Newbie tip: You're getting a bit drunk! Each level of drunkenness makes you look more slutty and significantly decreases all your stats. But it also improves your self-respect and hampers dignity loss[if diaper quest is 0] and soreness gain. So it's only a good idea to seek out alcohol if you're planning to act like a total slut anyway[end if]. Oh yeah, and if your drunk level gets too high, your player might go on a bit of a drunken journey of their own...[roman type][line break][or][stopping]".

To decide which number is alcohol-level:
	if alcohol <= 0 or alcohol fetish is 0, decide on 0; [Put at the top for efficiency]
	if alcohol > alcohol-level-tier 3, decide on 4;
	if alcohol > alcohol-level-tier 2, decide on 3;
	if alcohol > alcohol-level-tier 1, decide on 2;
	decide on 1.

A time based rule (this is the sobering up rule):
	let A be alcohol-level;
	if A > 0:
		decrease alcohol by time-seconds;
		if A > alcohol-level:
			say "[bold type][if A > 1]You feel a bit less drunk. You're slowly sobering[otherwise]You've completely sobered[end if] up![roman type][line break]";
			update appearance level;
	if hungover > 0:
		decrease hungover by time-seconds;
		if hungover <= 0, say "[bold type]Your hangover headache has faded away and you can think more clearly again.[roman type][line break]";

To compute drunken adventure:
	say "You are now so drunk that you are going to not be able to hold back from doing some rather naughty things. Time slows down as you experience a brief moment of clarity; this must be Nintendolls['] doing. You have a chance to remove consent, otherwise you're saying that you're happy with whatever happens next.";
	now the fainting reason of the player is 1234;
	try autofainting;
	if the fainting reason of the player is 1234: [player didn't faint]
		repeat with T running through things penetrating a body part:
			unless T is worn, dislodge T;
		repeat with T running through things grabbing the player:
			unless T is worn, dislodge T;
		repeat with M running through alive monsters:
			now M is uninterested;
			now the boredom of M is 0;
			now the sleep of M is 0;
			now the scared of M is 0;
		now alcohol is 0;
		now hungover is 500;
		now the player is in Dungeon11;
		now the stance of the player is 1;
		now the fatigue of the player is 0;
		now the stomach-water of the player is 0;
		now the stomach-food of the player is 1;
		if watersports mechanics is 1:
			now the bladder of the player is 10;
			now the delayed bladder of the player is 4;
		if rectum > 0, now rectum is 10;
		empty belly;
		say "You wake up lying face down in the Throne Room, dizzy and confused, and with a pounding headache that is making it difficult to think properly.[line break][variable custom style]What the hell [one of]happened[or]did I do this time[stopping]?[roman type][line break]";
		let condoms-used be 0;
		if diaper quest is 0:
			if there is worn condom pinnable clothing and a random number between 1 and 2 is 1:
				now condoms-used is the number of worn condom pinnable clothing;
				say "As if to answer your question, you realise that there are now ";
				repeat with C running through worn condom pinnable clothing:
					increase the used condoms of C by a random number between 2 and 8;
					say "[used condoms of C] used condoms pinned to your [ShortDesc of C]";
					if condoms-used is 1:
						say "!";
					otherwise if condoms-used is 2:
						say " and ";
					otherwise:
						say ", ";
					if condoms-used > 1, decrease condoms-used by 1; [we keep it at 1 for the pregnancy check below]
				say "[variable custom style]Oh [if the player is not a pervert]god[otherwise]wow[end if], I really banged all these men?![roman type][line break]";
				increase the condom-count of condom-eating-quest by 3;
				progress quest of condom-eating-quest;
				progress quest of condom-creampie-quest;
			otherwise:
				SemenPuddleUp 10;
				if the player is possessing a vagina:
					now the semen volume of vagina is 5;
					now the womb volume of vagina is 3;
				if the raw semen taste addiction of the player < 20, increase the raw semen taste addiction of the player by 1;
				say "As if to answer your question, you puke up a thick wad of sticky [semen], just as your [fuckholes] begins to leak [if the player is possessing a vagina]their[otherwise]its[end if] own helpings of [semen] onto the stone ground around you. You also realise that your body and clothes are covered in [semen].";
				repeat with C running through worn fluid vulnerable clothing:
					SemenSoakUp C by the soak-limit of C - the total-soak of C;
				repeat with C running through worn clothing:
					if C is displacable, displace C;
					if C is top-displacable or C is optional-top-displacable, TopDisplace C;
					if C is crotch-zipped, ZipDown C;
					if C is crotch-intact and C is pussy covering and C is not metal and C is not biological, now C is crotch-ripped;
				now the semen coating of belly is 10;
				now the semen coating of breasts is 10;
				now the semen coating of face is 10;
				now the semen coating of hair is the largeness of hair;
				now the semen coating of thighs is 10;
		otherwise:
			let K be a random worn knickers;
			if K is knickers:
				say "Your [ShortDesc of K] are utterly soaked.";
			otherwise:
				now K is a random eligible diaper;
				summon K;
				say "You are wearing a [ShortDesc of K] which is already utterly soaked.";
			UrineSoakUp K by the soak-limit of K - the total-soak of K;
		if the player is female and pregnancy fetish is 1 and the pregnancy of the player is 0 and condoms-used is 0:
			let M be a random alive father material monster;
			if M is monster:
				now M is inseminating vagina;
				now the pregnancy of the player is 1;
				say "A little kick from your belly lets you know that you're no longer eating for one.[line break][variable custom style][if the player is not a pervert]Oh no way you've got to be kidding me! Who in hell is the father?![otherwise]And I guess I shouldn't drink while knocked up...[end if][roman type][line break]";
				check sudden pregnancy;
		if there is a worn tattoo:
			repeat with T running through worn tally tattoos:
				increase the tallies of T by a random number between 4 and 7;
			let T be a random drawable tattoo;
			if T is tattoo:
				summon T;
				say "You rub a sore spot on your skin and realise that you now have a new tattoo!";
				try examining T;
		if watersports mechanics is 1, say "You feel desperate to use the loo.";
		now champagne-glass is carried by the player;
		now the fill-colour of champagne-glass is clear;
		now champagne-glass is sure;
		now champagne-glass is cursed;
		SetDose champagne-glass to 1;
		say "You notice that your champagne glass is fill of a clear liquid that smells very strongly of alcohol. The glass seems to glow with a dark aura, suggesting that it might be the glass, rather than the liquid, that is somehow making the drink alcoholic.";
		update player region;
		refresh the map-window.

gold chalice is a vessel. the curse-ID of gold chalice is sure. gold chalice is open topped. The max-doses of a gold chalice is 3. The printed name of gold chalice is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]gold chalice[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of gold chalice is "gc". Figure of gold chalice is the file "Items/Accessories/Vessels/goldenchalice1.png".
To decide which figure-name is the examine-image of (V - gold chalice):
	decide on the figure of gold chalice.
To say VesselDesc of (V - gold chalice):
	say "A regal looking gold chalice.".
To say ShortVesselDesc of (V - gold chalice):
	say "golden chalice".
Definition: gold chalice is yellow themed: decide yes.

novelty mug is a vessel. novelty mug is open topped. The max-doses of a novelty mug is usually 2. The printed name of novelty mug is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]novelty mug[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of novelty mug is "nm".
Figure of boob mug is the file "Items/Accessories/Vessels/mug1.png".
Figure of cow mug is the file "Items/Accessories/Vessels/mug2.png".
Figure of coffee mug is the file "Items/Accessories/Vessels/mug3.png".
To decide which figure-name is the examine-image of (V - novelty mug):
	if diaper quest is 1, decide on the figure of coffee mug;
	if lactation fetish is 1, decide on the figure of cow mug;
	decide on the figure of boob mug.
Definition: novelty mug is boob themed if lactation fetish is 0 and diaper quest is 0.
Definition: novelty mug is toilet themed if diaper quest is 1.
Definition: novelty mug is cow themed if diaper quest is 0 and lactation fetish is 1.
To say VesselDesc of (V - novelty mug):
	say "[if diaper quest is 1]This brown mug is shaped like a comical brown poop. It has the words 'Coffee makes me poop' in white on the side.[otherwise if lactation fetish is 1]This mug has a cow print. The base is shaped like a cow's udder, so when the drinker is imbibing from it, it looks like they have an udder for a mouth.[otherwise]This mug is flesh coloured and has a set of large naked breasts protruding out the front.[end if]".
To say ShortVesselDesc of (V - novelty mug):
	say "novelty mug".
To compute cursed drinking (X - novelty mug):
	if diaper quest is 1:
		say "Yuck, it tastes like cold coffee! Your stomach growls horribly. ";
		increase rectum by 3;
	otherwise:
		say "It tastes like milk, but somehow you know something isn't right. ";
		if lactation fetish is 1:
			let R be a random number between 1 and 3;
			if R < 3 and the player is not a flatchested trap:
				milkUp R;
				say "You feel your [BreastDesc] slightly swell.";
			otherwise:
				increase the lactation rate of the player by 2;
				say "Your [BreastDesc] feel tingly.";
		otherwise if the player is a flatchested trap:
			say "Your nipples feel strange.";
			increase the raw sensitivity of breasts by 1;
		otherwise:
			BustUp a random number between 1 and 2;
			say "You feel your [BreastDesc] slightly swell.".
To decide which number is the initial outrage of (V - a novelty mug):
	if diaper quest is 1, decide on 0;
	decide on 10.
To decide which number is the initial cringe of (V - a novelty mug):
	decide on 10.

teapot is a vessel. The max-doses of teapot is 2. The printed name of teapot is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]teapot[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of teapot is "tp".
Figure of penis teapot is the file "Items/Accessories/Vessels/teapot1.png".
Figure of kitty teapot is the file "Items/Accessories/Vessels/teapot2.png".
To decide which figure-name is the examine-image of (V - teapot):
	if diaper quest is 1, decide on figure of kitty teapot;
	decide on the figure of penis teapot.
To say VesselDesc of (V - teapot):
	say "[if diaper quest is 0]A weird small teapot with a long stem shaped like a limp penis.[otherwise]A small teapot shaped like a cute kitty cat's head.[end if]".
To say ShortVesselDesc of (V - teapot):
	say "teapot".
Definition: teapot is cat themed if diaper quest is 1.
Definition: teapot is penis themed if diaper quest is 0.
To compute cursed drinking (X - teapot):
	if diaper quest is 1:
		if there is a worn tattoo and teapot tattoo is not worn and a random number between 1 and 3 is 1:
			summon teapot tattoo;
			say "[bold type]A new tattoo appears on your leg![roman type][line break]";
			try examining teapot tattoo;
		otherwise:
			say "[one of]As you drink the liquid, you find yourself shivering on the spot. You somehow[or]Once again you[stopping] feel a little smaller, and a little more [if the diaper addiction of the player > 10]excited[otherwise]comfortable[end if] [if there is a worn diaper]wearing your diaper[otherwise]with the thought of wearing diapers[end if].";
			SilentlyDiaperAddictUp 1;
		say "That was a cursed drink for sure...";
	otherwise:
		say "An extremely bitter taste and slimy consistency immediately lets you know it's not what you put in. The teapot changed everything inside it into [semen]! [if the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 0][one of][line break][variable custom style]'Either the teapot or the drink colour is cursed, but I don[']t know which...'[roman type][line break][or][stopping][end if][line break]";
		StomachSemenUp 1.
To decide which number is the initial outrage of (V - teapot):
	if diaper quest is 1, decide on 0;
	decide on 10.
To decide which number is the initial cringe of (V - teapot):
	decide on 6.

witch's goblet is a vessel. witch's goblet is open topped. The max-doses of a witch's goblet is 2. witch's goblet is in Woods20. The printed name of witch's goblet is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]witch's goblet[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of witch's goblet is "wg". Figure of witch's goblet is the file "Items/Accessories/Vessels/goblet1.jpg".
To decide which figure-name is the examine-image of (V - witch's goblet):
	decide on the figure of witch's goblet.
To say VesselDesc of (V - witch's goblet):
	say "This small bronze goblet has some sort of intricate runic pattern circling the outside of the cup. Nothing good could come from drinking from this.".
To say ShortVesselDesc of (V - witch's goblet):
	say "witch's goblet".
Definition: witch's goblet is immune to change: decide yes.
Definition: witch's goblet is blessable: decide no.
To compute drinking (X - witch's goblet):
	compute cursed drinking X.[We do not check whether this is blessed.]
Definition: a witch's goblet is magic themed: decide yes.
Definition: a witch's goblet is gem themed: decide yes.

horn is a vessel. horn is open topped. The max-doses of horn is 2. The printed name of horn is "[TQlink of item described][unless curse-ID of the item described is unsure][magic-curse] [end if]minotaur horn[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of horn is "mho". Figure of horn is the file "Items/Accessories/Vessels/horn1.png". Understand "minotaur" as horn.
To decide which figure-name is the examine-image of (V - horn):
	decide on the figure of horn.
To say VesselDesc of (V - horn):
	say "A horn from a large defeated minotaur. It's hollow, allowing you to use it as a drinking vessel.".
To say ShortVesselDesc of (V - horn):
	say "minotaur horn".
Definition: horn is immune to change: decide yes.
Definition: horn is cow themed: decide yes.
Definition: horn is basic loot: decide no.
To decide which number is the crafting key of (C - horn):
	decide on 18.
To decide which number is the bartering value of (T - horn) for (M - a gladiator):
	decide on 5.
To decide which number is the bartering value of (T - horn) for (M - a royal guard):
	decide on 5.
To decide which number is the bartering value of (T - horn) for (M - a mechanic):
	decide on 8.
To decide which number is the bartering value of (T - horn) for (M - a demon lord):
	decide on 6.
To decide which number is the bartering value of (T - horn) for (M - a witch):
	decide on 5.
To decide which number is the bartering value of (T - horn) for (M - a wench):
	if M is horny-wench, decide on 0;
	decide on 5.
To decide which number is the bartering value of (T - horn) for (M - a shopkeeper):
	decide on 8.

To say ExamineDesc of (V - a vessel):
	say "[VesselDesc of V][if the doses of V > 0]It currently contains [PotionType of V].[otherwise]It is currently empty.[end if]".

To decide which figure-name is the examine-image of (V - a vessel):
	decide on figure of no-image-yet.

To say VesselDesc of (V - a vessel):
	say "A [ShortDesc of V].".

Vessels ends here.
