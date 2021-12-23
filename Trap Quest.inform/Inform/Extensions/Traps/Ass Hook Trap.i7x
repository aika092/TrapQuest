Ass Hook Trap by Traps begins here.

[!<AssHook>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
An ass hook is a kind of trap. The printed name of ass hook is "[TQlink of item described][if item described is penetrating asshole]ass [end if]hook[TQxlink of item described][verb-desc of item described]". There are 5 wire ass hooks. Understand "rope" as ass hook. The text-shortcut of an ass hook is "aho". An ass hook has an object called the wedgie-target.

Figure of ass hook is the file "Env/Dungeon/asshook1.png".
Figure of ass hook wedgie is the file "Env/School/asshook1.jpg".
Figure of ass hook wedgie pissed is the file "Env/School/asshook2.jpg".

To say ExamineDesc of (C - an ass hook):
	say "[if playerRegion is school]A strong hook that is usually used to hang gym clothes.[otherwise]An ass hook is connected to a rope that goes through a small hole in the ceiling. Maybe you could manage to [bold type]pull[roman type] it out of your [asshole]?[end if]".

To decide which figure-name is the examine-image of (C - an ass hook):
	if playerRegion is school:
		let K be a random worn knickers;
		if K is knickers and the urine-soak of K > 0, decide on figure of ass hook wedgie pissed;
		decide on figure of ass hook wedgie;
	if C is penetrating asshole:
		if the player is not possessing a vagina, decide on figure of hook cutscene 1;
		otherwise decide on figure of hook cutscene 2;
	decide on figure of ass hook.

This is the spawn initial dungeon asshook traps rule:
	repeat with N running from 1 to 2:
		let R be a random [wire untrapped] trappable placed labyrinth room;
		let T be a random off-stage ass hook;
		unless there is an ass hook in R, deploy T in R.
The spawn initial dungeon asshook traps rule is listed in the set up dungeon traps rules.

This is the spawn initial hotel asshook traps rule:
	let R be a random [wire untrapped] trappable placed modern room;
	let T be a random off-stage ass hook;
	unless there is an ass hook in R, deploy T in R.
The spawn initial hotel asshook traps rule is listed in the set up hotel traps rules.

This is the spawn initial mansion asshook traps rule:
	let R be a random [wire untrapped] trappable placed haunted room;
	let T be a random off-stage ass hook;
	unless there is an ass hook in R, deploy T in R.
The spawn initial mansion asshook traps rule is listed in the set up mansion traps rules.

To decide which number is the girth of (D - an ass hook):
	decide on 2.

Definition: yourself is anally hook stuck:
	if there is an ass hook penetrating a fuckhole, decide yes;
	decide no.
Definition: yourself is wedgie hook stuck:
	if there is an ass hook grabbing the player, decide yes;
	decide no.
Definition: yourself is hook stuck:
	if yourself is anally hook stuck or yourself is wedgie hook stuck, decide yes;
	decide no.

To trigger (Y - an ass hook):
	now the player-motion of the player is 0;
	say "[bold type]You feel a rope rise from the ground to in between your legs and then to up behind you somewhere. [roman type]Before you can react, you feel the rope swiftly pulled towards the back of you. You feel a piece of metal at the end of the rope which ";
	now Y is not untriggered;
	now Y is revealed;
	now the reset-timer of Y is 400;
	if the player is prone:
		say "barely touches you as it flies past you and up into a hole in the ceiling. That probably would have gone less well for you if you were not on your knees.";
		now Y is unrevealed;
	otherwise if diaper quest is 1 or the player is ass protected:
		let K be a random worn knickers;
		let O be a random worn skirted clothing;
		if O is short skirt:
			say "hooks into your [ShortDesc of O], pulling it up and ripping it from you! Your [O] is destroyed.";
			destroy O;
		otherwise if O is knee-length clothing and O is displacable clothing:
			say "hooks into your [ShortDesc of O], ";
			if O is glued:
				say "trying to pull it up! But it's glued to you, and so ends up ripping off, extremely painfully!";
				destroy O;
				repeat with M running through reactive monsters:
					compute curtsey reaction of M;
				PainUp 2;
			otherwise:
				say "pulling it up and revealing what's underneath!";
				displace O;
				repeat with M running through reactive monsters:
					compute curtsey reaction of M;
		otherwise if K is currently uncovered unskirted clothing:
			if K is diaper:
				say "tries to hook into your [ShortDesc of K], but the padded material is too thick for it to be able to pull the material into a wedgie.";
			otherwise if K is displacable:
				say "hooks into your [K], pulling it up into a painful wedgie!";
				now Y is grabbing the player;
				now the wedgie-target of Y is K;
				say "It looks like you'll need to [bold type]pull[roman type] the hook to try and save your underwear, or you could [bold type]jump[roman type] if you are happy for them to be destroyed.";
				[say "The hook continues to pull up with tremendous pressure until your [ShortDesc of K] are ripped from your butt crack and destroyed.";
				destroy K;
				if asshole is lewdly exposed and K is total protection and 11 is too humiliating, say "[variable custom style]Nooo! Now I'm practically naked![roman type][line break]";]
				repeat with M running through reactive monsters:
					say WedgieTrapReactFlav of M;
			otherwise:
				say "thankfully bounces harmlessly away[if K is clothing] thanks to your [ShortDesc of K][otherwise] without being able to find anything to hook onto[end if]. ";
				compute bra attempt of Y;
		otherwise:
			let CK be nothing;
			if K is clothing, now CK is the coverer of K;
			say "thankfully bounces harmlessly away[if CK is clothing] thanks to your [ShortDesc of CK][otherwise] without being able to find anything to hook onto[end if]. ";
			compute bra attempt of Y;
		now Y is unrevealed;
	otherwise if asshole is actually occupied:
		say "thankfully bounces harmlessly away thanks to your [if the player is ass protected][ShortDesc of random top level ass protection clothing][otherwise][ShortDesc of random thing penetrating asshole][end if]. ";
		compute bra attempt of Y;
		now Y is unrevealed;
	otherwise:
		say "glides swiftly into your [asshole] with the upward motion of the rope. You realise as it tries to lift you off the ground by your delicate hole that this is an ass hook on the end of the rope! It lifts you onto your tiptoes and clearly would lift you off the ground by your [asshole] if its pulling mechanism had the strength!";
		now Y is penetrating asshole;
		repeat with M running through reactive monsters:
			say AssHookTrapReactFlav of M;
	if Y is penetrating asshole or Y is grabbing the player, now Y is revealed. [because wtf glitches I don't understand]

To compute bra attempt of (Y - an ass hook):
	let C be a random currently uncovered tearable bra;
	if C is clothing:
		if C is not locked and C is not pasties and C is not fully exposing and C is not normally-nipple-exposing:
			if the player is getting unlucky:
				say "Or has it?! As the hook rises, it manages to get itself stuck under the strap of your [C]! A moment later, the pressure becomes too much and your [ShortDesc of C] is ripped apart, ruined! [GotUnluckyFlav]";
				destroy C;
	say "The hook shoots up into the hole in the ceiling the rope was connected to.".

To say WedgieTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.
To say AssHookTrapReactFlav of (M - a monster):
	say HarshTrapReactFlav of M.

Part - Escaping from Hook Trap

Check taking off knickers when the player is wedgie hook stuck:
	repeat with H running through ass hooks grabbing the player:
		if the wedgie-target of H is the noun, say "There's no way you can raise your feet high enough to do that while it's hooked up in a powerful dangling wedgie!" instead.

Check pulling knickers when the player is wedgie hook stuck:
	if playerRegion is school, say "That won't work, the hook is fixed in place." instead;
	HookPull instead.

Check pulling an ass hook:
	if playerRegion is school, say "That won't work, the hook is fixed in place." instead;
	HookPull instead.

To HookPull:
	if the player is wrist bound in front or (gape-gloves is worn and gape-gloves is wrist-bound-behind):
		say "Your wrist bondage prevents you from reaching! This is fucking ridiculous, here you are, stuck in the middle of the [the printed name of the location of the player], held in place by a hook in your [asshole]. But unless something changes, you're never going to be able to move! It may be best to just [bold type]wait[roman type] and see what happens.";
	otherwise:
		let H be the noun;
		if the player is wedgie hook stuck, now H is a random ass hook grabbing the player;
		let K be the wedgie-target of H;
		allocate 3 seconds;
		let S be the dexterity of the player;
		if S > 4 or the class of the player is cheerleader:[cheerleaders always get a chance to try.]
			if S < 9, now S is 9;
			let R be a random number from 1 to S;
			if debuginfo > 0, say "[input-style]Escape check: Dexterity-based roll d[S] ([R]) | (6.5) ass hook difficulty check[roman type][line break]";
			if R > 3:
				if R > 6:
					if H is grabbing the player, say "You manage to slowly pull down on the hook until it releases your [ShortDesc of K], ";
					otherwise say "You manage to slowly pull down on the ass hook until it comes out of your [asshole], ";
					say "at which point you can take a step to the side and let go. The hook shoots up into the hole in the ceiling that the rope was connected to.";
					dislodge H;
					now H is unrevealed;
				otherwise:
					say "You manage to pull down on the [if H is grabbing the player]hook but it doesn't quite manage to release your [ShortDesc of K] before you slip and it pulls the wedgie right back up, hurting you even more[otherwise]ass hook but can't quite get it out of your [asshole]. You slip and it shoots back into your [asshole], just making it more sore[end if]! Fuck! You should [one of][bold type][or][stopping]keep trying[roman type]!";
					if H is penetrating asshole:
						let able-to-orgasm be 1;
						let prev-horny be 0;
						if the player is a bit horny, now prev-horny is 1;
						if the player is horny, now prev-horny is 2;
						if the player is unable to orgasm so soon, now able-to-orgasm is 0;
						ruin asshole;
						if able-to-orgasm is 1 and the player is unable to orgasm so soon: [player just came]
							if the player is not possessing a vagina, cutshow figure of hook cutscene 6 for H;
							otherwise cutshow figure of hook cutscene 5 for H;
						otherwise if (prev-horny is 0 and the player is a bit horny) or (prev-horny is 1 and the player is horny): [player just got aroused]
							if the player is not possessing a vagina, cutshow figure of hook cutscene 3 for H;
							otherwise cutshow figure of hook cutscene 4 for H;
						repeat with M running through reactive monsters:
							say AssHookFuckTrapReactFlav of M;
					otherwise:
						PainUp 1;
			otherwise:
				say "You can't get a grip on the hook to pull it down at all. Keep pulling!";
		[otherwise if sex fainting is 1:
			say "Your joints are so stiff that you can't bend your arms properly get a good grip on the ass hook at all! This is fucking ridiculous, here you are, stuck in the middle of the [the printed name of the location of the player], held in place by a hook in your [asshole]. But unless something changes, you're never going to be able to move! It may be best to just [bold type]wait[roman type] and see what happens.";]
		otherwise:
			if H is grabbing the player:
				say "Your low dexterity causes you to have to repeatedly pull down on the hook, flossing your crack raw.";
				PainUp 2;
				say "After you finally manage to release your [ShortDesc of K], the hook shoots up into the hole in the ceiling that the rope was connected to.";
				BodyRuin 3;
			otherwise:
				say "Your low dexterity causes you to have to repeatedly pull down on the hook, fucking your [asshole] raw. After you finally get it out, the ass hook shoots up into the hole in the ceiling that the rope was connected to.";
				now the soreness of asshole is 10;
			dislodge H;
			now H is unrevealed.

Hook fucking is an action applying to one touchable thing.

Check hook fucking:
	if the noun is the throne or the noun is vines, try pulling the noun instead;
	unless the noun is an ass hook, say "You pull up on it, not really sure what that was meant to achieve..." instead.

Carry out hook fucking:
	allocate 3 seconds;
	ruin asshole;
	if the bimbo of the player < 13:
		say "You're pulling it the wrong way! Ow!";
	otherwise:
		say "You repeatedly pull up on the hook, fucking your [asshole] raw.";
		ruin asshole;
	repeat with M running through reactive monsters:
		say AssHookFuckTrapReactFlav of M.
Understand "pull up on [something]", "pull [something] up" as hook fucking.

To say AssHookFuckTrapReactFlav of (M - a monster):
	say LewdTrapReactFlav of M.

To Jump From The Hook:
	allocate 6 seconds;
	compute upright fatigue gain;
	if the player is anally hook stuck:
		say "You jump up as much as you can while on tip toes, which isn't much, hoping you can get off the hook this way. But the rope just pulls up as you jump, and now you are even more on tiptoes as before as the rope refuses to return to its original amount of slack! This is putting even more of your weight on the hook in your [asshole]! Maybe try [bold type]pull[roman type]ing it instead?";
		ruin asshole;
		repeat with M running through reactive monsters:
			say AssHookFuckTrapReactFlav of M;
	otherwise:
		let H be a random ass hook grabbing the player;
		let K be the wedgie-target of H;
		say "Grimacing, you jump into the air and then allow yourself to sail back down. Your [K] instantly rips in two, before falling to the ground, ruined.";
		destroy K;
		say "It didn't hurt too much more than before, but it's left a red mark.";
		BodyRuin 1;
		now H is unrevealed;
		dislodge H;
		if playerRegion is school:
			destroy H;
			repeat with M running through unfriendly students in the location of the player:
				FavourDown M;
				now M is interested.

An all time based rule (this is the ass hook wedgie pain rule):
	let H be a random ass hook grabbing the player;
	if H is ass hook:
		say "The pressure of the wedgie on your ass crack is causing you significant pain!";
		PainUp 1;
		if playerRegion is school and the number of students in the location of the player is 0:
			let M be a random alive amicable student;
			if M is nothing, now M is a random alive staff member;
			now M is in the location of the player;
			now M is interested;
			say "[BigNameDesc of M] [bold type]enters the room, and immediately spots you. [big he of M] helps release your underwear and get you down from the hook.[roman type][line break][speech style of M]'[if M is student][big please] don't tell them I helped you down[otherwise]I hope you know that whoever did this to you is not your friend[end if].'[roman type][line break]";
			now H is unrevealed;
			dislodge H;
			destroy H;
			distract M.

Ass Hook Trap ends here.
