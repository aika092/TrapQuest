Version 4/140510 of Conditional Undo by Third Party Extensions begins here.

"Allows fine-grained control over whether to allow commands to be undone."

Deciding whether to allow undo is an activity.
The for deciding whether to allow undo rules have outcomes allow undo (success) and deny undo (failure).
The for deciding whether to allow undo rules have default no outcome.

The prevent undo flag is a truth state which varies.

To prevent undo: now the prevent undo flag is true.
To do not prevent undo: now the prevent undo flag is false.

To decide whether undo is prevented: decide on the prevent undo flag.

Deciding whether the action prevents undo is an activity.
The for deciding whether the action prevents undo rules have outcomes it does not (failure) and it does (success).
The for deciding whether the action prevents undo rules have default no outcome.

After reading a command (this is the reset the prevent undo flag rule):
	now the prevent undo flag is false.

Every turn (this is the decide whether the action prevents undo rule):
	begin the deciding whether the action prevents undo activity;
	unless handling the deciding whether the action prevents undo activity:
		if the rule succeeded, prevent undo;
		if the rule failed, do not prevent undo;
	end the deciding whether the action prevents undo activity. 

The Conditional Undo decision rule translates into I6 as "AllowUndo".

Include (-
Constant ALLOWUNDO_ACT = (+deciding whether to allow undo+);

[ AllowUndo flag;
	BeginActivity(ALLOWUNDO_ACT);
	flag = ~~((+prevent undo flag+));
	say__p = 0;
	if (ForActivity(ALLOWUNDO_ACT))
		flag = RulebookSucceeded();
	if (flag == 0 && ~~say__p)
		AllowUndoM('A');
	EndActivity(ALLOWUNDO_ACT);
	return flag;
];
-).

Include (-
[ Perform_Undo;
	#ifdef PREVENT_UNDO; IMMEDIATELY_UNDO_RM('A'); new_line; return; #endif;
	if (IterationsOfTurnSequence == 0) { IMMEDIATELY_UNDO_RM('B'); new_line; return; }
	if (undo_flag == 0) { IMMEDIATELY_UNDO_RM('C'); new_line; return; }
	if (undo_flag == 1) { IMMEDIATELY_UNDO_RM('D'); new_line; return; }
	if (~~AllowUndo()) return;
	if (VM_Undo() == 0) { IMMEDIATELY_UNDO_RM('A'); new_line; }
];
-) instead of "Perform Undo" in "OutOfWorld.i6t".

Conditional Undo ends here.

---- DOCUMENTATION ----

This extension allows more control over the use of UNDO than the standard "Use undo prevention" option. There are three stages where we can intervene in the undo process, and each one can override the previous one:

1. Use the phrase "prevent undo" in an action. This will prevent that action from being undone. (If we change our minds during action processing, we can say "do not prevent undo".)

	Instead of pushing the red button:
		say "You key in the launch sequence and fire off the nuclear missiles. There's no turning back now.";
		prevent undo.

2. Write a rule for the "deciding whether the action prevents undo" activity. This activity runs at the end of each turn, and we can say "it does" to prevent undoing the current action, or "it does not" to allow undoing the current action (even if we said "prevent undo" in the action itself).

	Rule for deciding whether the action prevents undo:
		if the player is wearing the time travel anklet, it does not;
		if the player was in the Zone of Permanence, it does.

3. Write a rule for the "deciding whether to allow undo" activity. This activity runs when the player actually tries to undo. We can say "allow undo" or "deny undo" to make the decision, and again, the decision we make here will override any decision made in stage 1 or 2.

	Rule for deciding whether to allow undo:
		if the turn count is greater than 5
		begin;
			say "Too late for that, buddy.";
			deny undo;
		end if.

Notice that we printed our own denial message in the above example. The "deciding whether to allow undo" activity is the only place we can do that; if we don't print a message, or if we prevent undo from stage 1 or 2, the player will normally see the default message ("That action cannot be undone"). However, we can write a rule for this activity that detects whether one of the earlier stages has already prevented undo, and prints a custom message if so:

	After attacking someone (called Todd):
		say "[The Todd] will never let you live that down, bro.";
		prevent undo.
	
	Rule for deciding whether to allow undo:
		if undo is prevented, say "You'll just have to deal with the wrath of your enemies."

CHANGE LOG

Version 2 added Glulx support.

Version 3 updates the extension to work under (and require) I7 build 5T18.

Version 4 updates the extension to work under (and require) I7 build 6L02, and fixes a bug where a "deciding whether the action prevents undo" rule that made no decision would incorrectly prevent undo.
