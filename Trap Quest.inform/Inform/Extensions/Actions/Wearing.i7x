Wearing by Actions begins here.

The can't insert clothes being worn rule is not listed in the check inserting it into rulebook.

Understand "we [something]", "wr [something]", "wea [something]", "waer [something]", "wera [something]" as wearing.

Does the player mean wearing a worn clothing: it is very unlikely.
Does the player mean displacing a worn clothing: it is very likely.
Does the player mean taking off a worn clothing: it is very likely.
Does the player mean wearing a clothing:
	if the noun is not worn and the noun is in the location of the player, it is very likely;
	if the noun is not worn and the noun is held by the player, it is likely.
Does the player mean taking a worn clothing: it is very unlikely.

Check taking a plentiful accessory:
	try wearing the noun instead.

Report taking off a plentiful accessory:
	say "After it's removed, the [BigNameDesc of the noun] suddenly feels like it weighs 100 tonnes! You are forced to drop it to the ground.";
	try dropping the noun.

Before wearing a thing:
	if the noun is a portable wearable thing and the noun is not held:
		if the noun is plentiful accessory: [These skip the player's inventory and go straight to being worn, or they fail.]
			let L be the location of the noun;
			now the noun is carried by the player;
			try wearing the noun;
			if the noun is not worn:
				now the noun is in L;
			do nothing instead;
		otherwise:
			allocate 1 seconds;
			say "(first taking the [ShortDesc of the noun])";
			try taking the noun;
			if the noun is held:
				compute extra turn;
				if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type][line break]" instead;
			otherwise:
				do nothing instead.




Check wearing insertable thing:
	unless (the noun is ass plugging clothing or the noun is vagina plugging clothing or the noun is dildo sword) and the noun is not sex toy, say "You can't just wear this! Try [bold type]inserting it into[roman type] something." instead;

The can't insert into what's not a container rule is not listed in the check inserting it into rulebook.
[The can't insert what's not held rule is not listed in the check inserting it into rulebook.]

The can't put what's not held rule is not listed in the check putting it on rulebook. [This was the rule that allowed the player to wear something that was on the floor in a single turn.]

Check inserting something into:
	if the second noun is orifice:
		if the noun is lubricant, try orilubing the noun with the second noun instead;
		if the noun is disembodied:
			try plugging the second noun with the noun instead;
		if the noun is clothing:
			if the noun is ass plugging and the second noun is asshole, try wearing the noun instead;
			if the noun is vagina plugging and the second noun is vagina, try wearing the noun instead;
			if the noun is gag and the second noun is face, try wearing the noun instead;
			if the noun is insertable, try plugging the second noun with the noun instead;
			say "[variable custom style]I'm pretty sure I'm supposed to wear that, not stuff it inside of myself![if the bimbo of the player > 14]That does sound fun, though...[end if][roman type][line break]" instead;
		say "[variable custom style]I'm pretty sure I'm not supposed to stuff that inside of myself![if the bimbo of the player > 14]That does sound fun, though...[end if][roman type][line break]" instead;
	if the second noun is hips:
		try plugging asshole with the noun instead; [The game registers "ass" as hips, the player probably meant their asshole]
	if the second noun is dungeon altar or the second noun is woods altar:
		try praying the noun with the second noun instead;
	if the second noun is water-body or the second noun is water-body-scenery, try rinsing the noun in the second noun instead;
	if the second noun is summoning portal, try appeasing the noun with the second noun instead;
	if the second noun is not container, say "That can't contain things." instead;

Understand "place [something] in [something]", "place [something] into [something]", "plc [something] [something]" as inserting it into.

Check inserting worn clothing into:
	try taking off the noun;
	if the noun is worn, do nothing instead. [This makes sure we follow rules for removing cursed clothing etc.]

Understand "wield [something]" as wearing.

Check wearing clothing:
	if the noun is not held:
		try taking the noun;
		if the noun is held:
			compute extra turn;
			if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type][line break]" instead;
	now summoning is 0; [Do NOT suppress text]
	unless the noun is actually wearable, do nothing instead.

Check wearing tattoo:
	if the noun is not worn and debugmode > 0:
		say "You use the ancient powers of Aika to imprint the tattoo onto your body.";
		compute inking effect of the noun;
		now the noun is worn by the player instead;
	otherwise if the noun is not worn:
		say "You can't imprint that onto your body without being in debug mode." instead;
	otherwise:
		say "You're already wearing it, that's permanently inked into your skin!" instead.

Check wearing salve:
	say "You should try [bold type]apply[roman type]ing this instead." instead.

Check wearing something: [These conditions do not affect summoning]
	if the player is immobile:
		unless the noun is ring and the player is in HoleInWall, say "You're a bit tied up at the moment." instead;
	if the noun is not held:
		try taking the noun;
		if the noun is held:
			compute extra turn;
			if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type][line break]" instead.

Check wearing accessory:
	if the noun is worn by the player:
		repeat with C running through open containers in the location of the player:
			repeat with A running through accessories in C:
				if the price of the noun is the price of A and the accessory-colour of A is the accessory-colour of the noun and A is not worn by the player, try wearing A instead;
		repeat with A running through accessories in the location of the player:
			if the price of the noun is the price of A and the accessory-colour of A is the accessory-colour of the noun and A is not worn by the player, try wearing A instead;
		repeat with A running through accessories carried by the player:
			if the price of the noun is the price of A and the accessory-colour of A is the accessory-colour of the noun and A is not worn by the player, try wearing A instead;
		if the noun is ring:
			repeat with C running through open containers in the location of the player:
				repeat with A running through rings in C:
					try wearing A instead;
			repeat with A running through rings in the location of the player:
				try wearing A instead;
			repeat with A running through rings carried by the player:
				try wearing A instead;
		if the noun is bracelet:
			repeat with C running through open containers in the location of the player:
				repeat with A running through bracelets in C:
					try wearing A instead;
			repeat with A running through bracelets in the location of the player:
				try wearing A instead;
			repeat with A running through bracelets carried by the player:
				try wearing A instead;
		if the noun is necklace:
			repeat with C running through open containers in the location of the player:
				repeat with A running through necklaces in C:
					try wearing A instead;
			repeat with A running through necklaces in the location of the player:
				try wearing A instead;
			repeat with A running through necklaces carried by the player:
				try wearing A instead.

The standard report wearing rule is not listed in the report wearing rulebook.

Carry out wearing clothing:
	if the noun is ass plugging, now the noun is penetrating asshole;
	if the noun is vagina plugging:
		 if the player is female, now the noun is penetrating vagina;
		 otherwise now the noun is penetrating asshole;
	if the noun is ballgag, now the noun is penetrating face; [as opposed to ring gags, which take up the face slot but do not necessarily penetrate face]
	allocate 6 seconds;
	if the noun is bottom layer, layer the noun correctly; [Cage, knickers and trousers can do some funky stuff like going under skirts]
	otherwise layer the noun correctly on top;
	say "[line break]You put on the [ShortDesc of noun].[line break]".

Report wearing something (this is the identify-magic-state rule):
	if the noun is wearthing:
		now the magic-ID of the noun is identified;
		now the curse-ID of the noun is sure;
		if newbie tips is 1 and the noun is cursed and tutorial is 0, say "[one of][newbie style]Newbie tip: Uh-oh, this item is cursed! That means that you won't be able to take it off on your own. You need to find an altar to get it blessed. There is one somewhere in the Dungeon, and one in the Woods. The one in the Dungeon works on a simple timer, you can use it about once every 5 minutes of in-game time; and all you need to do is [']place['] the item you want blessed onto the altar. The one in the woods works very differently, as you'll find out when you speak to the witch that guards it! [bold type]Headgear[newbie style] work differently - there's no way to decurse them except for with their class quest. If you really can't succeed at the quest, try the knife in the hotel region.[roman type][line break][or][stopping]".
The identify-magic-state rule is listed last in the report wearing rulebook.

Report wearing suppression clothing:
	say "A mild feeling of inner peace comes over you as you finish putting the clothing on. [if the sex addiction of the player > 3]You feel like the clothing may be trying to fight the arousal that keeps building up inside of you. [end if]This is a magic [ShortDesc of the noun]!".

Report plugging something with suppression clothing:
	say "A mild feeling of inner peace comes over you as you finish pushing it in. [if the sex addiction of the player > 3]You feel like it might be trying to fight the arousal that keeps building up inside of you. [end if]This is a magic [ShortDesc of the second noun]!".

Report wearing dominance clothing:
	say "A strong feeling of confidence flows through you as you finish putting the [noun] on. [if the raw sex addiction of the player > 10]You feel less eager to take the submissive role in intimate encounters without a fight. [end if]This is a magic [ShortDesc of the noun]!".

Report plugging something with dominance clothing:
	say "A strong feeling of confidence flows through you as you finish putting it in. [if the raw sex addiction of the player > 10]You feel less eager to submit to enemies without a fight. [end if]This is a magic [ShortDesc of the second noun]!".

Report wearing confidence clothing:
	if the humiliation-influence of the noun >= 0, say "A pleasant feeling flows through you. You feel good about your body[if the noun is unidentified]. This must be a magic [ShortDesc of the noun][end if]!".

Report wearing constriction clothing:
	say "[if the noun is belly covering]The [ShortDesc of the noun][otherwise]An invisible force[end if] clamps down on your waist, forcing it smaller than is at all comfortable. [if the noun is cursed]It's cursed! [end if]";
	now the squirt timer of belly is 1;
	if the total felchable volume of vagina > 0:
		say "The [semen] is squeezed from your womb and out of your [vagina].";
		while the semen volume of vagina > 0:
			PussySquirt 1;
		if the pregnancy of the player is 0:
			while the womb volume of vagina > 0:
				WombSquirt 1.

Report wearing endurance clothing:
	say "A strong feeling of energy flows through you[if the noun is unidentified]. This must be a magic [ShortDesc of the noun][end if]!".

Report plugging something with endurance clothing:
	say "A strong feeling of energy flows through you[if the second noun is unidentified]. This must be a magic [ShortDesc of the second noun][end if]!".

Report wearing bed wetting clothing:
	say "Your bladder tingles slightly[if incontinence < 10], and you somehow can tell you have less control over not wetting yourself![end if]".

Report wearing stumbling clothing:
	say "You suddenly wobble, and [if there are worn heels]can barely keep your balance. [otherwise]are glad that you're not wearing heels right now! [end if]This [ShortDesc of the noun] is making it harder for you to stay balanced!".

Report plugging something with stumbling clothing:
	say "You suddenly wobble, and [if there are worn heels]can barely keep your balance. [otherwise]are glad that you're not wearing heels right now! [end if]This [ShortDesc of the second noun] is making it harder for you to stay balanced!".

Report wearing posture training clothing:
	if the number of worn posture training clothing is 1, say "You feel yourself [if the bimbo of the player < 6]involuntarily [end if]push your [BreastDesc] out forward and your [AssDesc] out behind you[if the noun is unidentified]. This must be a magic [ShortDesc of the noun][end if]!".

Report wearing kicking clothing:
	say "A rush of energy flows through you. Your [if there are worn heels]heels[otherwise]feet[end if] feel great[if the noun is unidentified]. This must be a magic [ShortDesc of the noun][end if]!".

Report wearing speed clothing:
	say "A rush of energy flows through you. Your legs feel great[if the noun is unidentified]. This must be a magic [ShortDesc of the noun][end if]!".

Report wearing temptation clothing:
	say "As you finish putting it on, you find yourself happily [if the noun is skirt or the largeness of breasts < 3]sticking your ass out provocatively behind you, as if trying to tempt others to make a move on you[otherwise]puffing your chest out as far as possible and pushing your shoulders back, as if trying to show off your cleavage as much as possible[end if]. [if the bimbo of the player < 13]You can't bring yourself to feel bad about it though, it feels so natural to you all of a sudden. [end if][if the noun is bra]This is a bra of temptation![otherwise if the noun is skirt]This is a skirt of temptation![otherwise][line break][end if]".

Report plugging something with temptation clothing:
	say "As you finish putting it in, you find yourself happily [if the largeness of breasts < 3]sticking your ass out provocatively behind you, as if trying to tempt others to make a move on you[otherwise]puffing your chest out as far as possible and pushing your shoulders back, as if trying to show off your cleavage as much as possible[end if]. [if the bimbo of the player < 13]You can't bring yourself to feel bad about it though, it feels so natural to you all of a sudden. [end if][if the noun is unidentified]This must be a magic [ShortDesc of the second noun]![end if]".

Report plugging something with refreshment clothing:
	if the number of lubricants covering the noun is 0:
		let L be a random off-stage lubricant;
		if L is blessed or (L is uncursed and the player is male), now the timer of L is a random number between 100 and 150;
		otherwise now the timer of L is a random number between 30 and 50;
		now L is covering the noun;
		say "As you move your hand away, a cool, slippery feeling in your [ShortDesc of noun] makes you realize it was just covered in lubricant! This must be a [if the second noun is plug]plug[otherwise if the second noun is dong]dildo[end if] of refreshment!".

Report plugging something with rejuvenation clothing:
	say "As you move your hand away, the [ShortDesc of second noun] seems to wiggle inside you, as if it were more than just some inanimate object. It must be magic!".

Report plugging something with expansion clothing:
	say "As you move your hand away, you realize the [ShortDesc of second noun] has actually begun to grow inside of you! It must be a [ShortDesc of second noun] of expansion!".

Report wearing possession clothing:
	say "A chill goes down your spine as you finish putting it on, and somehow you know you're not alone in these clothes!".


Wearing ends here.

