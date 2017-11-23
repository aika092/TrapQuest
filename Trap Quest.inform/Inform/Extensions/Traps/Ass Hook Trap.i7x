Ass Hook Trap by Traps begins here.


[!<AssHook>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
An ass hook is a kind of trap.  The printed name of ass hook is "[TQlink of item described]ass hook[TQxlink of item described][verb-desc of item described]".  The description of an ass hook is "An ass hook is connected to a rope that goes through a small hole in the ceiling.  Maybe you could manage to [bold type]pull[roman type] it out of your [asshole]?".  There are 5 wire ass hooks.  Understand "rope" as ass hook.  The text-shortcut of an ass hook is "aho".

[!<TheSpawnInitialDungeonAssHookTrapsRule>+

REQUIRES COMMENTING

+@!]
This is the spawn initial dungeon asshook traps rule:
	repeat with N running from 1 to 2:
		let R be a random [wire untrapped] trappable placed labyrinth room;
		let T be a random off-stage ass hook;
		unless there is an ass hook in R, deploy T in R.
The spawn initial dungeon asshook traps rule is listed in the set up dungeon traps rules.

[!<TheSpawnInitialHotelAssHookTrapsRule>+

REQUIRES COMMENTING

+!]
This is the spawn initial hotel asshook traps rule:
	let R be a random [wire untrapped] trappable placed modern room;
	let T be a random off-stage ass hook;
	unless there is an ass hook in R, deploy T in R.
The spawn initial hotel asshook traps rule is listed in the set up hotel traps rules.

[!<TheSpawnInitialMansionAssHookTrapsRule>+

REQUIRES COMMENTING

+!]
This is the spawn initial mansion asshook traps rule:
	let R be a random [wire untrapped] trappable placed haunted room;
	let T be a random off-stage ass hook;
	unless there is an ass hook in R, deploy T in R.
The spawn initial mansion asshook traps rule is listed in the set up mansion traps rules.

[!<AssHook>@<WhichNumberIsTheGirth>+

REQUIRES COMMENTING

+@!]
To decide which number is the girth of (D - an ass hook):
	decide on 2.

[!<YourselfIsHookStuck>

REQUIRES COMMENTING

+!]
Definition: yourself is hook stuck:
	repeat with X running through all ass hooks:
		if X is penetrating a fuckhole, decide yes;
	decide no.

[!<AssHook>@<Trigger>+

REQUIRES COMMENTING

+@!]
To trigger (Y - an ass hook):
	now the motion of the player is 0;
	say "[bold type]You feel a rope rise from the ground to in between your legs and then to up behind you somewhere.[roman type]  Before you can react, you feel the rope swiftly pulled towards the back of you.  You feel a piece of metal at the end of the rope which ";
	now Y is not untriggered;
	now Y is revealed;
	now the reset-timer of Y is 400;
	if the player is prone:
 		say "barely touches you as it flies past you and up into a hole in the ceiling.  That probably would have gone less well for you if you were not on your knees.";
		now Y is unrevealed;
	otherwise if diaper quest is 1 or the player is ass protected:
		let K be a random worn knickers;
		let O be a random worn skirted clothing;
		if O is super-short skirt or O is short skirt:
			say "hooks into your [ShortDesc of O], pulling it up and ripping it from you!  Your [O] is destroyed.";
			destroy O;
		otherwise if O is knee-length clothing and O is displacable clothing:
			say "hooks into your [ShortDesc of O], pulling it up and revealing what's underneath!";
			displace O;
		otherwise if K is currently uncovered clothing:
			if K is diaper:
				say "tries to hook into your [ShortDesc of K], but the padded material is too thick for it to be able to pull the material into a wedgie.";
			otherwise: [TODO: change this to a humiliating wedgie which the player has to jump to destroy or strength check to untangle (but could cause further hurt instead)]
				say "hooks into your [ShortDesc of K], pulling it up into a painful wedgie!";
				DelicateUp 1;
				say "The hook continues to pull up with tremendous pressure until your [K] are ripped from your butt crack and destroyed.";
				destroy K;
				if asshole is lewdly exposed and K is total protection and 11 is too humiliating, say "[variable custom style]Nooo!  Now I'm practically naked![roman type][line break]";
		otherwise:
			say "thankfully bounces harmlessly away[if K is clothing] thanks to your [ShortDesc of coverer of K][otherwise] without being able to find anything to hook onto[end if].  The hook shoots up into the hole in the ceiling that the rope was connected to.";
 		now Y is unrevealed;
 	otherwise if asshole is actually occupied:
 		say "thankfully bounces harmlessly away thanks to your [if the player is ass protected][ShortDesc of random top level ass protection clothing][otherwise][ShortDesc of random thing penetrating asshole][end if].  The hook shoots up into the hole in the ceiling that the rope was connected to.";
 		now Y is unrevealed;
 	otherwise:
 		say "glides swiftly into your [asshole] with the upward motion of the rope.  You realise as it tries to lift you off the ground by your delicate hole that this is an ass hook on the end of the rope!  It lifts you onto your tiptoes and clearly would lift you off the ground by your [asshole] if its pulling mechanism had the strength!";
 		if image cutscenes is 1:
			if the player is male, display figure of hook cutscene 1;
			otherwise display figure of hook cutscene 2;
		now Y is penetrating asshole;
	if Y is penetrating asshole, now Y is revealed. [because wtf glitches I don't understand]

Part - Escaping from Hook Trap

[!<CheckPullingAnAssHook>+

REQUIRES COMMENTING

+!]
Check pulling an ass hook:
	HookPull instead.

[!<HookPull>+

REQUIRES COMMENTING

+!]
To HookPull:
	now seconds is 3;
	let S be the dexterity of the player;
	if S > 4 or the player is a cheerleader:[cheerleaders always get a chance to try.]
		if S < 9, now S is 9;
		let R be a random number from 1 to S;
		if R > 3:
			if R > 6:
				say "You manage to slowly pull down on the ass hook until it comes out of your [asshole], at which point you can take a step to the side and let go.  The ass hook shoots up into the hole in the ceiling that the rope was connected to.";
				now the noun is not penetrating asshole;
				now the noun is unrevealed;
			otherwise:
				say "You manage to pull down on the ass hook but can't quite get it out of your [asshole].  You slip and it shoots back into your [asshole], just making it more sore!  Fuck!  You should [one of][bold type][or][stopping]keep trying[roman type]!";
				let able-to-orgasm be 1;
				let prev-horny be 0;
				if the player is a bit horny, now prev-horny is 1;
				if the player is horny, now prev-horny is 2;
				if the player is unable to orgasm so soon, now able-to-orgasm is 0;
				Assruin 1;
				if image cutscenes is 1:
					if able-to-orgasm is 1 and the player is unable to orgasm so soon: [player just came]
						if the player is male, display figure of hook cutscene 6;
						otherwise display figure of hook cutscene 5;
					otherwise if (prev-horny is 0 and the player is a bit horny) or (prev-horny is 1 and the player is horny): [player just got aroused]
						if the player is male, display figure of hook cutscene 3;
						otherwise display figure of hook cutscene 4;
		otherwise:
			say "You can't get a grip on the ass hook to pull it down at all.  Keep pulling!";
	[otherwise if sex fainting is 1:
		say "Your joints are so stiff that you can't bend your arms properly get a good grip on the ass hook at all!  This is fucking ridiculous, here you are, stuck in the middle of the [the printed name of the location of the player], held in place by a hook in your [asshole].  But unless something changes, you're never going to be able to move!  It may be best to just [bold type]wait[roman type] and see what happens.";]
	otherwise:
		say "Your low dexterity causes you to have to repeatedly pull down on the hook, fucking your [asshole] raw.  After you finally get it out, the ass hook shoots up into the hole in the ceiling that the rope was connected to.";
		now the soreness of asshole is 10;
		now the noun is not penetrating asshole;
		now the noun is unrevealed.

Hook fucking is an action applying to one touchable thing.

[!<CheckHookFucking>+

REQUIRES COMMENTING

+!]
Check hook fucking:
	if the noun is the throne or the noun is vines, try pulling the noun instead;
	unless the noun is an ass hook, say "You pull up on it, not really sure what that was meant to achieve..." instead.

[!<CarryOutHookFucking>+

REQUIRES COMMENTING

+!]
Carry out hook fucking:
	now seconds is 3;
	Assruin 1;
	if the bimbo of the player < 13:
		say "You're pulling it the wrong way!  Ow!";
	otherwise:
		say "You repeatedly pull up on the hook, fucking your [asshole] raw.";
		Assruin 1.
Understand "pull up on [something]", "pull [something] up" as hook fucking.


[!<JumpFromTheHook>+

REQUIRES COMMENTING

+!]
To Jump From The Hook:
	say "You jump up as much as you can while on tip toes, which isn't much, hoping you can get off the hook this way.  But the rope just pulls up as you jump, and now you are even more on tiptoes as before as the rope refuses to return to its original amount of slack!  This is putting even more of your weight on the hook in your [asshole]!  Maybe try [bold type]pull[roman type]ing it instead?";
	now seconds is 6;
	Assruin 1.	


Ass Hook Trap ends here.
