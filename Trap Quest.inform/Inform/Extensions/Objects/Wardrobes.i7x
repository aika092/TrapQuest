Wardrobes by Objects begins here.

pink wardrobe is a container. the printed name of pink wardrobe is "[TQlink of item described]pink wardrobe[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pink wardrobe is "pkwa". pink wardrobe is closed. A pink wardrobe is openable. A pink wardrobe is not portable. pink wardrobe is in Dungeon12.

To decide which figure-name is the examine-image of (C - pink wardrobe):
	decide on figure of pinkwardrobe.

To say ExamineDesc of (C - pink wardrobe):
	say "An ornate pink wardrobe, which [if C is closed]no doubt [end if]is used to store clothes.".

Figure of pinkwardrobe is the file "Env/Dungeon/wardrobe1.png".

Definition: pink wardrobe is immune to change: decide yes.

To add treasure to (X - a pink wardrobe):
	say "You open the pink wardrobe, revealing several pieces of [if the bimbo of the player < 7]dodgy[otherwise]useful[end if] looking clothing. You see ";
	let c-count be 0;
	repeat with O running through clothing in pink wardrobe:
		increase c-count by 1;
	repeat with O running through clothing in pink wardrobe:
		if c-count > 1:
			say "a [printed name of O], ";
		otherwise:
			say "and a [printed name of O].";
		decrease c-count by 1;
	say "There's also a weird pink [ShortDesc of champagne-glass] that looks like it's left over from a trashy hen party on a shelf, which it looks like you could use it to collect liquid from the nearby tank[if inline hyperlinks >= 2]. [link][bracket]take all[close bracket][as]take all[end link][line break][otherwise].[end if]";
	if earnings > starting-earnings - 100:
		if diaper focus >= 1:
			say "[first custom style]Oh my god, there's a diaper in here, but in my size! [one of]I think it's meant for me[or]I feel weirdly drawn to it[or]I weirdly feel like I'm almost destined to wear it[purely at random]... No! This is the game trying to mess with my mind! I've got to fight against it, I think? I should just wear the padded underwear. But maybe it'll be much easier to do well in the game if I'm wearing the diaper? Ooh, I can't even tell what are my real thoughts and what are the fake thoughts they are filling my head with![line break][second custom style]Or are these all my thoughts, and I'm just being paranoid?[roman type][line break]";
		otherwise if the player is gendered male:
			say "[first custom style][if there is I love my wet nappies T-shirt in X]Oh sweet! Looks like a total MILF lives here. And one who really loves her offspring, looking at that T-shirt.[otherwise][one of]Wow, a total slut must live in here.[or]I've only seen closets like this in hustler magazine.[or]I hope the babe that lives in here won't mind if I steal her panties.[purely at random][end if][roman type][line break]";
		otherwise:
			say "[first custom style][if latex prisoner is 1]So THAT's what I'll be able to wear after I get this awful thing off?[otherwise if there is I love my wet nappies T-shirt in X]That underwear seems okay at least. Wait, does that T-shirt say what I think it says?![otherwise][one of]Is this supposed to be my wardrobe?[or]Am I supposed to wear this slutty crap?[or]So, I either have to go naked, or I have to walk around in this crap like a tart. I'm not sure which is worse.[purely at random][end if][roman type][line break]";
	if newbie tips is 1, say "[newbie style]Newbie tip: Consider this your main starting kit. These items start identified and have no random magic properties and although they might be more slutty than what your character would normally wear, you are still going to want to put some on, since going around naked will upset most NPCs, and these are actually some of the least outrageous clothing items in the game.[roman type][line break]".


mystical wardrobe is a thing. the printed name of mystical wardrobe is "[TQlink of item described]mystical wardrobe[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of mystical wardrobe is "mswa". mystical wardrobe is not portable. mystical wardrobe is in Mansion16.

To decide which figure-name is the examine-image of (C - mystical wardrobe):
	decide on figure of mysticalwardrobe.

To say ExamineDesc of (C - mystical wardrobe):
	say "An ornate mystical wardrobe. A variety of drawings adorn the front, from crop tops and short skirts, to handcuffs and anal toys, to babydoll dresses and fishnet stockings, to animal masks. Who knows what would happen if you opened this.[if newbie tips is 1][one of][line break]The wardrobe triggers any headgear you're wearing to re-summon the rest of your class outfit, if possible.[roman type][line break][or][stopping][end if]".

Figure of mysticalwardrobe is the file "Env/Mansion/wardrobe1.jpg".

Definition: mystical wardrobe is immune to change: decide yes.

Check opening mystical wardrobe:
	if the player is immobile or the player is in danger, say "You're a bit busy right now!" instead;
	allocate 6 seconds;
	say "You open the wardrobe door... ";
	let H be a random worn headgear;
	if H is headgear:
		say "There's a bright flash!";
		let LC1 be the list of worn clothing;
		compute class outfit of H;
		let LC2 be the list of worn clothing;
		let clothes-changed be 0;
		let LCE be the number of entries in LC1;
		if LCE is not the number of entries in LC2, now clothes-changed is 1;
		if clothes-changed is 0:
			repeat with N running from 1 to LCE:
				if entry N in LC1 is not entry N in LC2, now clothes-changed is 1;
		if clothes-changed is 0, say "But nothing seems to have happened.[line break][variable custom style]Clearly the wardrobe doesn't believe that it's appropriate or possible to change what I'm wearing right now.[roman type][line break]";
	otherwise:
		say "There's nothing inside.";
	say "The wardrobe door closes of its own accord.[one of][variable custom style]Spooky.[roman type][line break][or][stopping]" instead.

Wardrobes ends here.
