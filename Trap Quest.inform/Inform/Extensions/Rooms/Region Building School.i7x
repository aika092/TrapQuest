Region Building School by Rooms begins here.

To Set Up The School:
	if diaper quest is 0:
		now gloryhole is in School19;
		now male-gloryhole is in Toilet01;
		now female-gloryhole is in Toilet02;
	if diaper lover > 0:
		now public changing station is in Toilet02;
		[now private changing station is in Predicament20;]
	[change the up exit of Hotel29 to School01;]
	change the west exit of School33 to School07; [one-way so that people don't get trapped but can't access normally]
	now school portal is in School01;
	if watersports fetish is 1 and diaper quest is 0 and ex-princess is caged, now the location of ex-princess is urinals;
	set up junk room;
	repeat with M running through fetish appropriate staff members:
		unless M is diamond-teacher or M is pink-diamond-teacher or M is ruby-teacher, set up M;
	let M be a random fetish appropriate rank1 innocent student;
	if M is monster, set up M;
	let M be a random fetish appropriate rank1 tryhard student;
	if M is monster, set up M;
	let M be a random fetish appropriate rank1 nasty student;
	if M is monster, set up M;
	[now the favour of M is 0;]
	let M be a random fetish appropriate rank1 ditzy student;
	if M is monster, set up M;
	let M be a random fetish appropriate rank1 amicable student;
	if M is monster, set up M;
	let M be a random fetish appropriate rank2 innocent student;
	if M is monster, set up M;
	let M be a random fetish appropriate rank2 tryhard student;
	if M is monster, set up M;
	let M be a random fetish appropriate rank2 nasty student;
	if M is monster, set up M;
	let M be a random fetish appropriate rank2 ditzy student;
	if M is monster, set up M;
	let M be a random fetish appropriate rank2 amicable student;
	if M is monster, set up M.

To set up rank three students:
	unless there is an alive rank3 innocent student or (there is an alive promotable rank2 innocent student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank3 innocent student;
		if M is monster, set up M;
	unless there is an alive rank3 tryhard student or (there is an alive promotable rank2 tryhard student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank3 tryhard student;
		if M is monster, set up M;
	unless there is an alive rank3 nasty student or (there is an alive promotable rank2 nasty student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank3 nasty student;
		if M is monster, set up M;
	unless there is an alive rank3 ditzy student or (there is an alive promotable rank2 ditzy student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank3 ditzy student;
		if M is monster, set up M;
	unless there is an alive rank3 amicable student or (there is an alive promotable rank2 amicable student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank3 amicable student;
		if M is monster, set up M.

To set up rank four students:
	unless there is an alive rank4 innocent student or (there is an alive promotable rank3 innocent student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank4 innocent student;
		if M is monster, set up M;
	unless there is an alive rank4 tryhard student or (there is an alive promotable rank3 tryhard student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank4 tryhard student;
		if M is monster, set up M;
	unless there is an alive rank4 nasty student or (there is an alive promotable rank3 nasty student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank4 nasty student;
		if M is monster, set up M;
	unless there is an alive rank4 ditzy student or (there is an alive promotable rank3 ditzy student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank4 ditzy student;
		if M is monster, set up M;
	unless there is an alive rank4 amicable student or (there is an alive promotable rank4 amicable student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank4 amicable student;
		if M is monster, set up M.

To set up rank five students:
	unless there is an alive rank5 innocent student or (there is an alive promotable rank4 innocent student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank5 innocent student;
		if M is monster, set up M;
	unless there is an alive rank5 tryhard student or (there is an alive promotable rank4 tryhard student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank5 tryhard student;
		if M is monster, set up M;
	unless there is an alive rank5 nasty student or (there is an alive promotable rank4 nasty student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank5 nasty student;
		if M is monster, set up M;
	unless there is an alive rank5 ditzy student or (there is an alive promotable rank4 ditzy student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank5 ditzy student;
		if M is monster, set up M;
	unless there is an alive rank5 amicable student or (there is an alive promotable rank4 amicable student and a random number between 1 and 2 is 1):
		let M be a random off-stage fetish appropriate rank5 amicable student;
		if M is monster, set up M.

To set up junk room:
	repeat with N running from 1 to 3:
		let C be a random off-stage rare fetish appropriate clothing;
		if C is clothing:
			blandify and reveal C;
			now C is in School15;
	let C be a random off-stage transformation-rare fetish appropriate fetish dress;
	if C is clothing:
		blandify and reveal C;
		now C is in School15;
	repeat with D running through clothing in School15:
		if D is overdress:
			if D is not rare, now the raw-magic-modifier of D is 2;
			let R be a random number between 1 and 5;
			if R is 1, now D is speed;
			if R is 2, now D is protection;
			if R is 3, now D is confidence;
			if R is 4, now D is endurance;
			if R is 5, now D is dominance;
		now D is predicament-fixed.

Report taking clothing:
	if the player is in School15, now the noun is predicament-normal.

To update students:
	repeat with M running through alive students:
		if the max-rank of M < the rank of the player and M is friendly: [Students who are angry with the player stay around to bully them]
			if M is in the location of the player, compute mandatory room leaving of M;
			now M is guarding;
	if the rank of the player is 2:
		set up rank three students;
		repeat with M running through fetish appropriate ruby-teacher:
			set up M;
	if the rank of the player is 3:
		set up rank four students;
		repeat with M running through fetish appropriate pink-diamond-teacher:
			set up M;
		[repeat with M running through alive sapphire-teacher:
			destroy M;][We no longer do this because these teachers form part of the gang that fights the player when they try to rescue the princess]
	if the rank of the player is 4:
		set up rank five students;
		repeat with M running through off-stage fetish appropriate diamond-teacher:
			set up M;
		[repeat with M running through alive emerald-teacher:
			destroy M.]

Region Building School ends here.
