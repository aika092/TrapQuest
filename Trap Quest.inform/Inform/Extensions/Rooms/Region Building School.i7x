Region Building School by Rooms begins here.

To Set Up The School:
	now gloryhole is in School19;
	change the up exit of Hotel29 to School01;
	change the down exit of School01 to Hotel29;
	change the west exit of School33 to School07; [one-way so that people don't get trapped but can't access normally]
	repeat with M running through school dwelling monsters:
		if M is dq-only:
			if diaper quest is 1, set up M;
		otherwise if M is tq-only:
			if diaper quest is 0, set up M;
		otherwise:
			set up M.

Region Building School ends here.

