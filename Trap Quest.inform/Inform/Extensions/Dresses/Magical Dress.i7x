Magical Dress by Dresses begins here.

A magical dress is a kind of overdress. A magical dress is usually unique. A magical dress is usually silk. A magical dress is usually only arm covering. There is 1 magical dress. A magical dress is not-top-displacable. The soak-limit of a magical dress is usually 35. The text-shortcut of magical dress is "mgd". [A magical dress is usually strength-influencing.]

The printed name of magical dress is usually "[TQlink of item described][clothing-title-before]magical dress[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To compute SelfExamineDesc of (O - a magical dress):
	say "[if the top-layer of O > 1 or the mid-layer of O > 1]Over this you[otherwise]You[end if] are wearing a [ShortDesc of O].  ".

To compute ShortDesc of (O - a magical dress):
	say "magical dress".

To say ClothingDesc of (O - a magical dress):
	say "A frilly hime lolita dress that [if the thickness of hips > 5 and O is worn]would be just below knee height on a normal sized ass, but yours prevents it from sitting properly and so it only covers just beneath your rear[otherwise]is just below knee height[end if]. It is layered with bows and lace, making it incredibly innocent looking. It sparkles with an almost magical air.".

Definition: a magical dress (called C) is untransformable:
	decide yes.

To decide which number is the strength-influence of (O - a magical dress):
	let M be the magic-power of the player;
	if M > 5, decide on 4;
	if M > 3, decide on 2;
	if M > 0, decide on 1;
	decide on 0.

Magical Dress ends here.
