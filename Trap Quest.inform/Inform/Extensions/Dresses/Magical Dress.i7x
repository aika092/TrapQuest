Magical Dress by Dresses begins here.

A magical dress is a kind of overdress. A magical dress is unique. A magical dress is silk. A magical dress is only arm covering. A magical dress is not-top-displacable. The text-shortcut of magical dress is "mgd". [A magical dress is strength-influencing.]

Definition: a magical dress is class-relevant:
	if the class of the player is magical girl, decide yes;
	decide no.

To decide which number is the dexterity-influence of (O - a magical dress):
	let M be the magic power of the player;
	if M > 5, decide on 3;
	if M > 3, decide on 2;
	if M > 0, decide on 1;
	decide on 0.

To uniquely set up (C - a magical dress):
	now C is wizardry.

Report examining a magical dress:
	say "Magical dresses like this one tend to significantly increase [if the noun is worn]your[otherwise]the wearer's[end if] dexterity, as long as you have a decent amount of mana left available.".

To compute periodic effect of (H - a magical dress): [tentacle monsters grow and pop out almost instantly]
	if the pregnancy of the player is 1 and the father is tentacle monster, now maximum-pregnancy-delay-tracker is maximum-pregnancy-delay + 1.

Definition: a magical dress is magic themed: decide yes.

To decide which number is the initial outrage of (H - a magical dress):
	decide on 4.

lolita magical dress is a magical dress. The skirt-length of lolita magical dress is 4. lolita magical dress is low cut. lolita magical dress is top-displacable.

Figure of lolita magical dress is the file "Items/Clothes/Upper/Special/MahouShoujo/magicaldress1.png".

To decide which figure-name is the clothing-image of (O - lolita magical dress):
	decide on figure of lolita magical dress.

The printed name of lolita magical dress is "[clothing-title-before]magical dress[clothing-title-after]".

To compute SelfExamineDesc of (O - lolita magical dress):
	say "[if the top-layer of O > 1 or the mid-layer of O > 1]Over this you[otherwise]You[end if] are wearing a [ShortDesc of O]. ".

To say ShortDesc of (O - lolita magical dress):
	say "lolita magical dress".

To say ClothingDesc of (O - lolita magical dress):
	say "A frilly hime lolita dress that [if the thickness of hips > 5 and O is worn]would be just below knee height on a normal sized ass, but yours prevents it from sitting properly and so it only covers just beneath your rear[otherwise]is just below knee height[end if]. It is layered with bows and lace, making it incredibly innocent looking. It sparkles with an almost magical air.".

Definition: lolita magical dress is white themed: decide yes.
Definition: lolita magical dress is potentially erection concealing: decide yes. [non-tight skirts conceal erections]

exposing-magical-dress is a magical dress. exposing-magical-dress is arm exposing. exposing-magical-dress is chestless. exposing-magical-dress is belly exposing. The skirt-length of exposing-magical-dress is 0. Understand "exposing", "magical", "dress" as exposing-magical-dress.

Definition: exposing-magical-dress is class-relevant:
	if the class of the player is magical girl or the class of the player is catgirl, decide yes;
	decide no.

Figure of exposing magical dress is the file "Items/Clothes/Upper/Special/MahouShoujo/magicaldress2.png".

To decide which figure-name is the clothing-image of (O - exposing-magical-dress):
	decide on figure of exposing magical dress.


The printed name of exposing-magical-dress is "[clothing-title-before]exposing magical dress[clothing-title-after]".

To compute SelfExamineDesc of (O - exposing-magical-dress):
	say "You are wearing a [ShortDesc of O]. ".

To say ClassSummonFlav of (C - exposing-magical-dress):
	say "A sailor uniform appears on you! No wait, this is only the neckline of a sailor uniform, leaving your entire body fully exposed!".

To say ShortDesc of (O - exposing-magical-dress):
	say "exposing magical dress".

To say ClothingDesc of (O - exposing-magical-dress):
	say "The top of a Japanese sailor uniform, but just the neckline with the bow, literally nothing else. It sits just above your chest, exposing literally everything, and yet somehow magically forbidding you from wearing much else. You can also sense that the magic of this item makes it much more difficult for enemies to block you from running away from them.".

To compute class set up of (O - exposing-magical-dress):
	now O is intelligence-influencing;
	now the raw-magic-modifier of O is 1 + the stance of the player.

To decide which number is the initial outrage of (H - exposing-magical-dress):
	decide on 5.

Definition: exposing-magical-dress is nudism-enabling: decide yes.
Definition: exposing-magical-dress is blue themed: decide yes.

magical-maid-outfit is a magical dress. Understand "magical", "maid", "outfit" as magical-maid-outfit. magical-maid-outfit is fully exposing. magical-maid-outfit is arm exposing. magical-maid-outfit is crotch-intact. The skirt-length of magical-maid-outfit is 0. magical-maid-outfit has a number called charge. magical-maid-outfit has an object called saved-item.

Definition: magical-maid-outfit is white themed: decide yes.

Figure of magical-maid-outfit is the file "Items/Clothes/Upper/Special/MahouShoujo/magicaldress3.png".

To decide which figure-name is the clothing-image of (O - magical-maid-outfit):
	decide on figure of magical-maid-outfit.

The printed name of magical-maid-outfit is "[clothing-title-before]magical maid outfit[clothing-title-after]".

To compute SelfExamineDesc of (O - magical-maid-outfit):
	say "You are wearing a [ShortDesc of O]. ".

To say ShortDesc of (O - magical-maid-outfit):
	say "magical maid outfit".

To say ClothingDesc of (O - magical-maid-outfit):
	say "A white one-piece leotard with big maid-like frills all around the chest where a giant hole leaves [if O is worn]your [BreastDesc][otherwise]the wearer's chest[end if] completely exposed and a giant blue bow at the neckline makes it feel like an anime superheroine outfit.".

To decide which number is the initial outrage of (H - magical-maid-outfit):
	decide on 4.

To compute periodic effect of (O - magical-maid-outfit):
	decrease the charge of O by 1;
	if the charge of O <= 0 and the number of combative tentacle monsters is 0 and the number of embodied things penetrating a fuckhole is 0:
		let MO be chosen-maid-outfit;
		say "[bold type][BigNameDesc of O] [bold type]runs out of magical energy![roman type][line break]";
		transform O into MO;
		if the saved-item of O is clothing:
			if the saved-item of O is actually summonable:
				summon the saved-item of O;
				say "[BigNameDesc of O] reappears on you.";
			otherwise:
				now the saved-item of O is in pink wardrobe;
			now the saved-item of O is nothing.

anime superheroine top is a magical dress. anime superheroine top is pvc. anime superheroine top is neck covering. anime superheroine top is belly exposing. The skirt-length of anime superheroine top is 0. anime superheroine top is top-exclusive. anime superheroine top is low cut. anime superheroine top is not-displacable-always-fuckable. anime superheroine top is erect-nipple-exposing. The text-shortcut of anime superheroine top is "aso".

The printed name of anime superheroine top is "[clothing-title-before]anime superheroine top[clothing-title-after]".

Figure of anime heroine top is the file "Items/Clothes/Upper/Special/Hero/animeheroine1.png".

Definition: anime superheroine top is class-relevant:
	if the class of the player is magical girl or the class of the player is superhero or the class of the player is silicone queen, decide yes;
	decide no.

To decide which number is the initial cringe of (C - anime superheroine top):
	decide on 3.

To decide which figure-name is clothing-image of (C - anime superheroine top):
	decide on figure of anime heroine top.

To say ClothingDesc of (C - anime superheroine top):
	say "This red PVC top has a large heart cut out at the chest, in order to expose a lot of cleavage. It is styled in an anime fashion. [if saved-flat-intelligence > 9]You realise that the cleavage window is probably the secret to its magic power. [end if][if saved-flat-intelligence > 15]The larger your breasts, the more strength this will give you.[end if]".

To decide which number is the strength-influence of (C - anime superheroine top):
	let S be -1;
	increase S by the magic-modifier of C;
	increase S by the largeness of breasts / 3;
	decide on S.

To say ShortDesc of (C - anime superheroine top):
	say "cosplay top".
To say MediumDesc of (C - anime superheroine top):
	say "PVC anime style cosplay outfit".

Definition: anime superheroine top is heart themed: decide yes.
Definition: anime superheroine top is pink themed: decide yes.
Definition: anime superheroine top is boob themed: decide yes.
Definition: anime superheroine top is disintegration-protected: decide yes.
Definition: anime superheroine top is displacable: decide no.

A dark magician girl dress is a kind of magical dress. Understand "dark", "magician", "magician girl" as a dark magician girl dress. A dark magician girl dress is pvc. The skirt-length of A dark magician girl dress is 0. A dark magician girl dress is crotch-intact. A dark magician girl dress is totally-exclusive. A dark magician girl dress is not-top-displacable.

To decide which number is the crotch-tightness of (C - a dark magician girl dress):
	decide on 3.
Definition: a dark magician girl dress is blue themed: decide yes.
Definition: a dark magician girl dress is interracial themed: decide yes.

To say DarkMagicianGirlDesc:
	if the class of the player is magical girl, say "You can sense that now you are a [']Dark Magician Girl['], and will be able to regain magical energy by pleasuring black [manly-penis]s, and grow your magic strength by orgasming on black cock, but also your spells may now be ineffective against black people.".

To compute post transformation effect of (C - a dark magician girl dress):
	now C is bbc-addiction-influencing;
	now C is cursed;
	now the quest of C is interracial-sex-quest;
	if C is worn, say "[BigNameDesc of C] is surrounded by a dark glow. [bold type][QuestFlav of C][roman type][line break]".

To compute class set up of (C - a dark magician girl dress):
	compute post transformation effect of C.

Carry out taking off a dark magician girl dress:
	say "[BigNameDesc of the noun], seemingly offended by your decision, drains away all of your magic power as it leaves!";
	increase the magic-fatigue of the player by the magic power of the player.

dark-magician-girl-costume is a dark magician girl dress. dark-magician-girl-costume is high cut. The printed name of dark-magician-girl-costume is "[clothing-title-before]dark magician girl costume[clothing-title-after]". Understand "costume" as dark-magician-girl-costume. The text-shortcut of dark-magician-girl-costume is "dmgc".

Figure of dark-magician-girl-costume is the file "Items/Clothes/Upper/Special/MahouShoujo/magicaldress4.png".

To decide which figure-name is the clothing-image of (C - dark-magician-girl-costume):
	decide on figure of dark-magician-girl-costume.

To decide which number is the initial outrage of (H - dark-magician-girl-costume):
	decide on 4.

To say ShortDesc of (C - dark-magician-girl-costume):
	say "cosplay costume".
To say MediumDesc of (C - dark-magician-girl-costume):
	say "dark magician girl costume".

To say ClothingDesc of (C - dark-magician-girl-costume):
	say "This blue and pink and gold onepiece outfit is reminiscent of a popular card game character. [DarkMagicianGirlDesc]".

dark-magician-girl-cameltoe-costume is a dark magician girl dress. dark-magician-girl-cameltoe-costume is very low cut. The printed name of dark-magician-girl-cameltoe-costume is "[clothing-title-before]dark magician girl cameltoe costume[clothing-title-after]". Understand "cameltoe", "costume" as dark-magician-girl-cameltoe-costume. The text-shortcut of dark-magician-girl-cameltoe-costume is "dmcc".

Figure of dark-magician-girl-cameltoe-costume is the file "Items/Clothes/Upper/Special/MahouShoujo/magicaldress5.png".

To decide which figure-name is the clothing-image of (C - dark-magician-girl-cameltoe-costume):
	decide on figure of dark-magician-girl-cameltoe-costume.

To decide which number is the crotch-tightness of (C - dark-magician-girl-cameltoe-costume):
	decide on 5.

To decide which number is the initial outrage of (H - dark-magician-girl-cameltoe-costume):
	decide on 6.

To say ShortDesc of (C - dark-magician-girl-cameltoe-costume):
	say "cosplay costume".
To say MediumDesc of (C - dark-magician-girl-cameltoe-costume):
	say "dark magician girl costume".

To say ClothingDesc of (C - dark-magician-girl-cameltoe-costume):
	say "This blue and pink onepiece outfit is reminiscent of a popular card game character. It exposes [if C is worn]your[otherwise]the wearer's[end if] belly button, cleavage, top of the areolae, and is extremely tight at the V-shaped crotch. It's closer to a slutty swimsuit than a costume. [DarkMagicianGirlDesc]".

dark-magician-girl-swimsuit is a dark magician girl dress. dark-magician-girl-swimsuit is very low cut. The printed name of dark-magician-girl-swimsuit is "[clothing-title-before]dark magician girl swimsuit[clothing-title-after]". Understand "swimsuit" as dark-magician-girl-swimsuit. The text-shortcut of dark-magician-girl-swimsuit is "dmgs".

Figure of dark-magician-girl-swimsuit is the file "Items/Clothes/Upper/Special/MahouShoujo/magicaldress6.png".

To decide which figure-name is the clothing-image of (C - dark-magician-girl-swimsuit):
	decide on figure of dark-magician-girl-swimsuit.

To decide which number is the crotch-tightness of (C - dark-magician-girl-swimsuit):
	decide on 5.

To decide which number is the initial outrage of (H - dark-magician-girl-swimsuit):
	decide on 7.

To say ShortDesc of (C - dark-magician-girl-swimsuit):
	say "cosplay swimsuit".
To say MediumDesc of (C - dark-magician-girl-swimsuit):
	say "dark magician girl swimsuit".

To say ClothingDesc of (C - dark-magician-girl-swimsuit):
	say "This blue and pink onepiece swimsuit is reminiscent of a popular card game character. It exposes [if C is worn]your[otherwise]the wearer's[end if] belly button, cleavage, top of the areolae, and is extremely tight at the ludicrously high V-shaped crotch. [DarkMagicianGirlDesc]".

Definition: dark-magician-girl-swimsuit is swimming themed: decide yes.

To compute post transformation effect of (C - dark-magician-girl-swimsuit):
	now C is bbc-addiction-influencing;
	now C is cursed;
	now the quest of C is interracial-sex-quest;
	if C is worn, say "[BigNameDesc of C] is surrounded by a dark glow. [bold type][QuestFlav of C][roman type][line break]";
	if heart hairpin is worn and the quest of heart hairpin is not bbc-magic-quest:
		now the quest of heart hairpin is bbc-magic-quest;
		now heart hairpin is cursed;
		say "[BigNameDesc of heart hairpin] is surrounded by a dark glow. [bold type][QuestFlav of heart hairpin][roman type][line break]".

hex dress is a magical dress. The skirt-length of hex dress is 2. hex dress is top-displacable. hex dress is arm exposing. hex dress is latex.
The printed name of hex dress is "[clothing-title-before]hex dress[clothing-title-after]". The text-shortcut of hex dress is "hxd".

Figure of hex dress is the file "Items/Clothes/Upper/Special/MahouShoujo/hexdress1.png".

To decide which figure-name is the clothing-image of (O - hex dress):
	decide on figure of hex dress.

The printed name of hex dress is "[clothing-title-before]hex dress[clothing-title-after]".

To compute SelfExamineDesc of (O - hex dress):
	say "[if the top-layer of O > 1 or the mid-layer of O > 1]Over this you[otherwise]You[end if] are wearing a [ShortDesc of O]. ".

To say ShortDesc of (O - hex dress):
	say "hex dress".

To say ClothingDesc of (O - hex dress):
	say "A skin-tight purple and white latex dress that has a frilly skirt that is so short, you can barely call it a skirt. It sparkles with an almost magical air.".

Definition: hex dress is white themed: decide yes.
Definition: hex dress is purple themed: decide yes.

Magical Dress ends here.
