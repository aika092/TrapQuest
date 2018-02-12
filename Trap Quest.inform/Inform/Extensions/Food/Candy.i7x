Candy by Food begins here.


A candy is a kind of food. Understand "candy" as candy.

Check dropping candy:
	say "You get the feeling that this would be a really bad idea." instead.

Check inserting candy into something:
	say "You get the feeling that this would be a really bad idea." instead.

Definition: a candy (called C) is standard tier:
	if C is top tier, decide no;
	if C is low tier, decide no;
	decide yes.

Definition: a candy (called C) is low tier:
	decide no.

Definition: a candy (called C) is top tier:
	decide no.

Carry out TQeating candy:
	destroy the noun;
	StomachFoodUp 2;
	now seconds is 6.

To say DevourFlav of (C - a candy):
	say "You unwrap the [C] and [if the player is in danger]devour it as quickly as you can[otherwise if the fat-weight of the player > 28]greedily stuff the entire thing into your mouth, immediately swallowing it whole[otherwise if the fat-weight of the player > 12]speedily devour the sweet[otherwise]consume the sweet slowly, savouring the taste[end if]. ".
	
To restock (C - a candy):
	let B be a random off-stage candy;
	if B is candy, now B is in Standard Item Pen.

This is the setup starting candy rule:
	let C be a random candy;
	repeat with N running from 1 to 3:
		restock C.
[The setup starting candy rule is listed in the setup starting items rules.]

To decide which number is default-candy-duration:
	decide on 650.



Candy ends here.

