Cookie by Food begins here.

cookie is a chef food. The printed name of cookie is "[TQlink of item described][if the quality of the item described > 1]chocolate chip cookie[otherwise if the quality of the item described > 0]cookie[otherwise if the quality of the item described > -1]cookie[otherwise if diaper quest is 1 and diaper messing >= 3]prune cookie[otherwise if diaper quest is 1]salty cookie[otherwise if the quality of the item described > -2]penis cookie[otherwise if the quality of the item described > -3]glazed cookie[otherwise]buttsex cookie[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of cookie is "cas".

Figure of cookie is the file "Items/Collectibles/cookie1.png".
Figure of penis cookie is the file "Items/Collectibles/cookie2.png".
Figure of glazed penis cookie is the file "Items/Collectibles/cookie3.jpg".
Figure of buttsex cookie is the file "Items/Collectibles/cookie4.jpg".

To decide which figure-name is the examine-image of (C - cookie):
	if the quality of C <= -3, decide on figure of buttsex cookie;
	if the quality of C is -2, decide on figure of glazed penis cookie;
	if the quality of C is -1, decide on figure of penis cookie;
	decide on figure of cookie.

To say ExamineDesc of (C - cookie):
	if the quality of C > 1:
		say "A chocolate chip cookie.";
	otherwise if the quality of C > -1:
		say "A sugar cookie.";
	otherwise if diaper quest is 1:
		say "[if diaper messing >= 3]A cookie made with prunes instead of chocolate chips[otherwise]This cookie has been made with way too much salt, so eating it will probably make you thirsty[end if].";
	otherwise if the quality of C > -2:
		say "A penis shaped cookie.";
	otherwise if the quality of C > -3:
		say "A penis shaped cookie covered in white 'glaze'.";
	otherwise:
		say "A heart shaped cookie that asks for butt sex.".

To decide which number is the outrage of (C - cookie):
	if the quality of C > -1, decide on 0;
	if the quality of C is -1, decide on 4;
	if the quality of C is -2, decide on 8;
	decide on 16.

To say ShortDesc of (C - cookie):
	say "cookie".

cookie-poison-timer is a number that varies.

To say DevourFlav of (C - cookie):
	say "You [if the player is in danger]devour the [C] as quickly as you can[otherwise if the fat-weight of the player > 28]greedily stuff the [C] in your mouth and swallow it whole[otherwise if the fat-weight of the player > 12]speedily devour the crumbly treat[otherwise]take small bites out of the [C], finishing it quickly without missing out on the full taste[end if]. [if the quality of C <= -1 and diaper quest is 1]Ugh, it tastes really bad![otherwise if the quality of C is -2]It's pretty clear that [semen] made it in as one of the major ingredients.[otherwise if the quality of C < 2]It's not really anything special.[otherwise]It's unbelievably delicious! No food has any business being this good![end if]".

Carry out TQeating cookie:
	allocate 6 seconds;
	say DevourFlav of the noun;
	if the quality of the noun <= -1 and diaper quest is 1:
		if diaper messing >= 3:
			say "Your stomach gurgles worryingly as the prunes start to work their magic...";
			now suppository is 1;
		otherwise:
			say "The excessive amount of salt leaves your mouth feeling extremely dry![line break][variable custom style]Oh dear, I really need a drink now![roman type][line break]";
			now the stomach-water of the player is 1;
	otherwise if the quality of the noun is -3:
		say "You start feeling a bit woozy as the food settles in your stomach, and you realise that there's some seriously unusual chemicals in this cookie. You feel your [asshole] tingling with enthusiastic sensitivity!";
		StomachFoodUp 2;
		AnalSexAddictUp 3;
	otherwise if the quality of the noun is -2:
		say "You start feeling a bit woozy as the food settles in your stomach, and you realise [semen] may not have been the only dubious ingredient. It suddenly feels a lot harder to move your muscles. [if the semen addiction of the player < 7][line break][variable custom style]Just when I thought it couldn't get any worse![roman type][line break][strongHumiliateReflect][otherwise]At least I got to taste some [semen]![roman type][line break][end if]";
		increase cookie-poison-timer by default-candy-duration + the fat of the noun * 5;
		FatigueUp 50;
		Arouse the semen taste addiction of the player * 200;
		StomachFoodUp 2;
		StomachSemenUp 1;
	otherwise if a random number between the quality of the noun and 3 is 3:
		say "It's surprisingly filling for such a small piece of food, and you feel a lot healthier.";
		bodyHeal the fat of the noun;
		StomachFoodUp 2;
	otherwise:
		say "Your stomach rumbles, and you realise the chef might have used some dubious ingredients in your food! You're even hungrier than you were before!";
		StomachFoodUp 1;
		StomachFoodDown the fat of the noun;
	bodyHeal 2.

A time based rule (this is the cookie poison decay rule):
	if cookie-poison-timer > 0:
		decrease cookie-poison-timer by time-seconds;
		if cookie-poison-timer <= 0:
			say "[bold type]The drug from the cookie seems to have run its course and you are able to move normally again.[roman type][line break]";
			now cookie-poison-timer is 0.

Cookie ends here.
