Detention Chair by Furniture begins here.

Detention chair is furniture. A detention chair is not portable. The printed name of detention chair is "[TQlink of item described]detention chair[TQxlink of item described][verb-desc of item described]". The description of a detention chair is "[DetentionChairDesc]". detention chair is in School13. The text-shortcut of a detention chair is "dnc". Figure of detention chair is the file "Env/School/detentionchair1.png". A detention chair can be detention-wand or detention-remedial. Detention chair is detention-wand.

Definition: detention chair (called C) is immune to change:
	decide yes.

To say DetentionChairDesc:
	if images visible is 1, display figure of detention chair;
	if the item described is detention-wand:
		say "In one corner sits a chair with waiting bondage straps on each leg and a vibrating wand fixed through a hole in the middle. Dev note: you only interact with this by having detention.";
	otherwise:
		say "In one corner sits a chair with bondage straps on each leg.".

Check entering detention chair:
	say "You don't [if the delicateness of the player > 10]think you're allowed to sit there right now[otherwise]feel submissive enough to sit on something like that[end if]." instead.

To say unique-verb-desc of (T - detention chair):
	say "".

Detention Chair ends here.

