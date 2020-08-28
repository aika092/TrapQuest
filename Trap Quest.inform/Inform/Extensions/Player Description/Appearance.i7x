Appearance by Player Description begins here.

To say PerceivedBimboDesc:
	let P be the appearance of the player;
	if P < 3:
		say "[if P > 0]Whilst there's clearly no way to look completely refined in this game, you[otherwise]You[end if] look as dignified as you could hope to.";
	otherwise if the player is naked and P < 10:
		say "Your nudity is, as you might expect, a very provocative sight.";
	otherwise if P < 6 and the player is male and the largeness of breasts < 4:
		say "You look like an androgynous person wearing sexy feminine clothing, but you don't look as slutty as some crossdressers often do.";
	otherwise if P < 5:
		say "You look very feminine, but not outrageous enough to call slutty.";
	otherwise if P is 5:
		say "You look very provocative; in a club setting you'd be followed around by a swarm of guys all night.";
	otherwise if P < 8:
		say "Your appearance can be described as nothing except slutty - your attire is quite clearly a provocative statement.";
	otherwise if P < 10:
		say "You look like a dolled up bimbo, like one might expect a porn star or stripper to look like before things get going.";
	otherwise if P < 12:
		say "Your appearance is so ridiculously sexualised that anybody look at you would be forced to assume you are some kind of crazed sex addict.";
	otherwise if P < 14:
		say "You look like a pornstar might after she's finished a scene and hasn't yet cleaned up.";
	otherwise if P < 16:
		say "You look like a prostitute who doesn't clean up after each trick.";
	otherwise:
		say "You look like a prostitute might, just after finishing servicing an entire frat party.".

To say PerceivedAdultDesc:
	let P be the appearance of the player;
	let C be the cringe appearance of the player;
	if P < 3 and C < 3:
		say "[if P > 0 or C > 0]Whilst there's clearly no way to look completely refined in this game, you[otherwise]You[end if] look as dignified as you could hope to.";
	otherwise if the player is naked and P < 10 and C < 10:
		say "Your nudity is, as you might expect, considered by most a very inappropriate way to be seen.";
	otherwise if C >= P:
		if C < 5:
			say "You look like an adult who [if there is a lewdly exposed body part]is not wearing enough clothing[otherwise if the bimbo of the player > 10]is enjoying wearing youthful clothing[otherwise]has been forced to wear youthful clothing[end if].";
		otherwise if C < 8:
			say "You look like a [man of the player] who ";
			if there is worn currently visible bondage, say "has been forced to [if there is a lewdly exposed body part]wear exposing 'babygirl' style clothing[otherwise]dress in a 'babygirl' manner[end if].";
			otherwise say "[if there is a lewdly exposed body part]is purposefully wearing provocative 'babygirl' style clothing[otherwise]is purposefully dressed in a 'babygirl' manner[end if].";
		otherwise if C < 11:
			say "You look like an embarrassing excuse of a [man of the player], who [if there is a lewdly exposed body part]can't be trusted to dress themselves properly[otherwise]is desperate to be treated like a child[end if].";
		otherwise if C < 14:
			say "You look like a [if there is a lewdly exposed body part]perverted adult baby[otherwise]fully fledged adult baby[end if] who needs looking after.";
		otherwise if C < 17:
			say "You look like [if there is a worn diaper]a bona fide diaper fetishist[otherwise]an extremely submissive little one[end if] who needs constant attention and discipline.";
		otherwise:
			say "You look like a big shameless baby in need of permanent enslavement, discipline and care.";
	otherwise if P < 6 and the player is male and the largeness of breasts < 4:
		say "You look like an androgynous person wearing feminine clothing, but you don't look as outrageous as some crossdressers often do[if C > 2]. Parts of your appearance look weirdly childish[end if].";
	otherwise if P < 5:
		say "You look very feminine, but not outrageous enough to call slutty[if C > 2]. Parts of your appearance look weirdly childish[end if].";
	otherwise if P is 5:
		say "You look very provocative; in a club setting you'd be followed around by a swarm of guys all night[if there is worn diaper]. That is, if it wasn't for the diaper[otherwise if C > 2]. Especially because of your 'babygirl' style[end if].";
	otherwise if P < 8:
		say "Your appearance can be described as nothing except slutty - your attire is quite clearly a provocative statement. [if C > 5]It clashes with your babyish attire, giving the impression of someone who can't be trusted to dress themselves[otherwise if there is a worn diaper]It clashes with your diaper, making you look quite ridiculous[otherwise if C > 2]Especially with your 'babygirl' style, your attire screams 'I'm looking for a Daddy to dominate me.' Overall, you look very submissive[otherwise]You are in danger of people thinking you are an immature brat trying way too hard to look like an adult[end if].";
	otherwise:
		say "You look [if there is a lewdly exposed body part]like you have purposefully chosen a wardrobe designed to expose yourself[otherwise]like a dolled up bimbo[end if], like one might expect from a porn star or stripper. [if the player is naked]Perhaps you should put some clothes on[otherwise if C > 5]It clashes horribly with your infantile attire, making you look like you have some bizarre split personality[otherwise if there is a worn diaper]It clashes with your diaper, making you look quite ridiculous[otherwise if C > 2]Especially with the more childish elements, you give off the impression of a dedicated submissive[otherwise]Anyone who felt responsible for your safekeeping would have no choice but to punish you and take control of dressing you themselves[end if].".

Appearance ends here.
