Region Building Facility by Rooms begins here.

To Set Up The Facility:
	if diaper quest is 0:
		now gloryhole is in Facility19;
		now male-gloryhole is in Toilet01;
		now female-gloryhole is in Toilet02;
	if diaper lover > 0:
		now public changing station is in Toilet02;
		[now private changing station is in Predicament20;]
	change the west exit of Facility33 to Facility07; [one-way so that people don't get trapped but can't access normally]
	now facility portal is in Facility01;
	if watersports fetish is 1 and diaper quest is 0 and ex-princess is caged, now the location of ex-princess is urinals;
	set up junk room;
	if the player is the donator:
		now gris monokini is in Facility19;
		if a random number between 1 and 2 is 1, now gris monokini is autobinding;
		otherwise now gris monokini is protection;
		if diaper quest is 0:
			now black-sporty-microskirt is in Facility23;
			if a random number between 1 and 2 is 1, now black-sporty-microskirt is autobinding;
			otherwise now black-sporty-microskirt is speed;
	repeat with M running through fetish appropriate staff members:
		set up M;
	set up rank one trainees.

To set up rank one trainees:
	unless there is an alive rank1 innocent trainee:
		let M be a random off-stage unexpelled fetish appropriate rank1 innocent trainee;
		if M is monster, set up M;
	unless there is an alive rank1 tryhard trainee:
		let M be a random off-stage unexpelled fetish appropriate rank1 tryhard trainee;
		if M is monster, set up M;
	unless there is an alive rank1 nasty trainee:
		let M be a random off-stage unexpelled fetish appropriate rank1 nasty trainee;
		if M is monster, set up M;
	unless there is an alive rank1 ditzy trainee:
		let M be a random off-stage unexpelled fetish appropriate rank1 ditzy trainee;
		if M is monster, set up M;
	unless there is an alive rank1 amicable trainee:
		let M be a random off-stage unexpelled fetish appropriate rank1 amicable trainee;
		if M is monster, set up M.

To set up rank two trainees:
	unless there is an alive rank2 innocent trainee:
		let M be a random off-stage unexpelled fetish appropriate rank2 innocent trainee;
		if M is monster, set up M;
	unless there is an alive rank2 tryhard trainee:
		let M be a random off-stage unexpelled fetish appropriate rank2 tryhard trainee;
		if M is monster, set up M;
	unless there is an alive rank2 nasty trainee:
		let M be a random off-stage unexpelled fetish appropriate rank2 nasty trainee;
		if M is monster, set up M;
	unless there is an alive rank2 ditzy trainee:
		let M be a random off-stage unexpelled fetish appropriate rank2 ditzy trainee;
		if M is monster, set up M;
	unless there is an alive rank2 amicable trainee:
		let M be a random off-stage unexpelled fetish appropriate rank2 amicable trainee;
		if M is monster, set up M.

To set up rank three trainees:
	unless there is an alive rank3 innocent trainee:
		let M be a random off-stage unexpelled fetish appropriate rank3 innocent trainee;
		if M is monster, set up M;
	unless there is an alive rank3 tryhard trainee:
		let M be a random off-stage unexpelled fetish appropriate rank3 tryhard trainee;
		if M is monster, set up M;
	unless there is an alive rank3 nasty trainee:
		let M be a random off-stage unexpelled fetish appropriate rank3 nasty trainee;
		if M is monster, set up M;
	unless there is an alive rank3 ditzy trainee:
		let M be a random off-stage unexpelled fetish appropriate rank3 ditzy trainee;
		if M is monster, set up M;
	unless there is an alive rank3 amicable trainee:
		let M be a random off-stage unexpelled fetish appropriate rank3 amicable trainee;
		if M is monster, set up M.

To set up rank four trainees:
	unless there is an alive rank4 innocent trainee:
		let M be a random off-stage unexpelled fetish appropriate rank4 innocent trainee;
		if M is monster, set up M;
	unless there is an alive rank4 tryhard trainee:
		let M be a random off-stage unexpelled fetish appropriate rank4 tryhard trainee;
		if M is monster, set up M;
	unless there is an alive rank4 nasty trainee:
		let M be a random off-stage unexpelled fetish appropriate rank4 nasty trainee;
		if M is monster, set up M;
	unless there is an alive rank4 ditzy trainee:
		let M be a random off-stage unexpelled fetish appropriate rank4 ditzy trainee;
		if M is monster, set up M;
	unless there is an alive rank4 amicable trainee:
		let M be a random off-stage unexpelled fetish appropriate rank4 amicable trainee;
		if M is monster, set up M.

To set up rank five trainees:
	unless there is an alive rank5 innocent trainee:
		let M be a random off-stage unexpelled fetish appropriate rank5 innocent trainee;
		if M is monster, set up M;
	unless there is an alive rank5 tryhard trainee:
		let M be a random off-stage unexpelled fetish appropriate rank5 tryhard trainee;
		if M is monster, set up M;
	unless there is an alive rank5 nasty trainee:
		let M be a random off-stage unexpelled fetish appropriate rank5 nasty trainee;
		if M is monster, set up M;
	unless there is an alive rank5 ditzy trainee:
		let M be a random off-stage unexpelled fetish appropriate rank5 ditzy trainee;
		if M is monster, set up M;
	unless there is an alive rank5 amicable trainee:
		let M be a random off-stage unexpelled fetish appropriate rank5 amicable trainee;
		if M is monster, set up M.

To set up junk room:
	repeat with N running from 1 to 3:
		let C be a random off-stage rare fetish appropriate clothing;
		if C is clothing:
			blandify and reveal C;
			now C is in Facility15;
	let C be a random off-stage transformation-rare fetish appropriate fetish dress;
	if C is clothing:
		blandify and reveal C;
		now C is in Facility15;
	repeat with D running through clothing in Facility15:
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
	if the player is in Facility15, now the noun is predicament-normal. [Items sent to Junk Room from Predicament World are set to predicament-fixed to make them immune to change while they reside there.]


Region Building Facility ends here.
