Region Building School by Rooms begins here.

To Set Up The School:
	if diaper quest is 0, now gloryhole is in School19;
	[change the up exit of Hotel29 to School01;]
	change the west exit of School33 to School07; [one-way so that people don't get trapped but can't access normally]
	now school portal is in School01;
	if watersports fetish is 1 and ex-princess is caged, now the location of ex-princess is urinals;
	set up junk room;
	repeat with M running through fetish appropriate school dwelling staff members:
		unless M is diamond-teacher or M is pink-diamond-teacher or M is ruby-teacher, set up M;
	let M be a random fetish appropriate school dwelling rank1 innocent student;
	if M is monster, set up M;
	let M be a random fetish appropriate school dwelling rank1 tryhard student;
	if M is monster, set up M;
	let M be a random fetish appropriate school dwelling rank1 nasty student;
	if M is monster, set up M;
	let M be a random fetish appropriate school dwelling rank1 ditzy student;
	if M is monster, set up M;
	let M be a random fetish appropriate school dwelling rank1 amicable student;
	if M is monster, set up M;
	let M be a random fetish appropriate school dwelling rank2 innocent student;
	if M is monster, set up M;
	let M be a random fetish appropriate school dwelling rank2 tryhard student;
	if M is monster, set up M;
	let M be a random fetish appropriate school dwelling rank2 nasty student;
	if M is monster, set up M;
	let M be a random fetish appropriate school dwelling rank2 ditzy student;
	if M is monster, set up M;
	let M be a random fetish appropriate school dwelling rank2 amicable student;
	if M is monster, set up M.

To set up rank three students:
	unless there is an alive rank3 innocent student:
		let M be a random off-stage fetish appropriate school dwelling rank3 innocent student;
		if M is monster, set up M;
	unless there is an alive rank3 tryhard student:
		let M be a random off-stage fetish appropriate school dwelling rank3 tryhard student;
		if M is monster, set up M;
	unless there is an alive rank3 nasty student:
		let M be a random off-stage fetish appropriate school dwelling rank3 nasty student;
		if M is monster, set up M;
	unless there is an alive rank3 ditzy student:
		let M be a random off-stage fetish appropriate school dwelling rank3 ditzy student;
		if M is monster, set up M;
	unless there is an alive rank3 amicable student:
		let M be a random off-stage fetish appropriate school dwelling rank3 amicable student;
		if M is monster, set up M.

To set up rank four students:
	unless there is an alive rank4 innocent student:
		let M be a random off-stage fetish appropriate school dwelling rank4 innocent student;
		if M is monster, set up M;
	unless there is an alive rank4 tryhard student:
		let M be a random off-stage fetish appropriate school dwelling rank4 tryhard student;
		if M is monster, set up M;
	unless there is an alive rank4 nasty student:
		let M be a random off-stage fetish appropriate school dwelling rank4 nasty student;
		if M is monster, set up M;
	unless there is an alive rank4 ditzy student:
		let M be a random off-stage fetish appropriate school dwelling rank4 ditzy student;
		if M is monster, set up M;
	unless there is an alive rank4 amicable student:
		let M be a random off-stage fetish appropriate school dwelling rank4 amicable student;
		if M is monster, set up M.

To set up rank five students:
	unless there is an alive rank5 innocent student:
		let M be a random off-stage fetish appropriate school dwelling rank5 innocent student;
		if M is monster, set up M;
	unless there is an alive rank5 tryhard student:
		let M be a random off-stage fetish appropriate school dwelling rank5 tryhard student;
		if M is monster, set up M;
	unless there is an alive rank5 nasty student:
		let M be a random off-stage fetish appropriate school dwelling rank5 nasty student;
		if M is monster, set up M;
	unless there is an alive rank5 ditzy student:
		let M be a random off-stage fetish appropriate school dwelling rank5 ditzy student;
		if M is monster, set up M;
	unless there is an alive rank5 amicable student:
		let M be a random off-stage fetish appropriate school dwelling rank5 amicable student;
		if M is monster, set up M.

To set up junk room:
	repeat with N running from 1 to 3:
		let C be a random off-stage rare fetish appropriate clothing;
		if C is clothing, now C is in School15;
	let C be a random off-stage evening dress;
	if C is clothing, now C is in School15;
	now C is a random off-stage transformation-rare fetish appropriate fetish dress;
	if C is clothing, now C is in School15;
	if yellow-open-front-dress is off-stage, now yellow-open-front-dress is in School15;
	repeat with D running through clothing in School15:
		if D is overdress:
			let R be a random number between 1 and 5;
			if R is 1, now D is speed;
			if R is 2, now D is protection;
			if R is 3, now D is confidence;
			if R is 4, now D is endurance;
			if R is 5, now D is dominance;
		now D is sure;
		now D is identified;
		now the raw-magic-modifier of D is 0;
		now D is bland.

To update students:
	repeat with M running through alive students:
		if the max-rank of M < the rank of the player and M is friendly: [Students who are angry with the player stay around to bully them]
			if M is in the location of the player, compute mandatory room leaving of M;
			destroy M;
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
		repeat with M running through fetish appropriate diamond-teacher:
			set up M;
		repeat with M running through alive emerald-teacher:
			destroy M.

Region Building School ends here.

