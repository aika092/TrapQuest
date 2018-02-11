Clitoris Lead by Piercings Modules begins here.

A clitoris lead is a kind of piercing. The printed name of clitoris lead is "[TQlink of item described][item style][if the bimbo of the player > 10]clit[otherwise]clitoris[end if] lead[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of clitoris lead is "cl". Understand "clit" as clitoris lead. There is 1 clitoris lead. Figure of clitoris lead is the file "clitlead1.png".

To decide which figure-name is the clothing-image of (C - a clitoris lead):
	decide on figure of clitoris lead.

To say ClothingDesc of (C - a clitoris lead):
	say "A short metal chain attached to your clitoris hood piercing. [if the player is clit stuck]The [random monster covering C] is holding onto it, threatening to pull it roughly, which is preventing you from fighting back.[otherwise if the player is prone]It barely touches the ground as you crawl. [otherwise if the concealer of C is nothing]It dangles between your legs awkwardly, the bottom end hanging just below your knees. [end if][if the player is not clit stuck]Any enemy that got a hold of this would be able to subdue you easily.[end if]".

To say ShortDesc of (C - a clitoris lead):
	say "clitoris lead".

To decide which number is the vaginal sensitivity influence of (C - a clitoris lead):
	if C is cursed, decide on 3;
	if C is blessed, decide on -2;
	decide on 1.

To decide which number is the delicateness-influence of (C - a clitoris lead):
	decide on 1.

To decide which number is the initial outrage of (C - a clitoris lead):
	decide on 20.

To say PiercingFlav of (P - a clitoris lead):
	say "An arm comes down with a short piece of chain!  You whimper meekly, expecting the piercing needle to join it. However, instead the chain is simply brought down to your clitoris, and one end of it is connected to your clit piercing. The two have combined into a single piece of metal that looks somehow welded together!  You now have what is essentially a short leash permanently connected to your clit.[line break][variable custom style]If someone gets hold of this, there'd be no way I could fight back, it would be way too painful!  [if the sex addiction of the player < 15]How concerning... how am I supposed to fight back now?[otherwise]I guess it's lucky that getting fucked is so fun, then![end if][roman type][line break]";
	if image cutscenes is 1, display figure of modmachine cutscene 1.

To decide which object is the concealer of (C - a clitoris lead):
	repeat with O running through worn potentially vagina covering clothing:
		unless O is skirted, decide on O;
	decide on nothing.

Definition: a clitoris lead (called C) is subduing:[Can C be held by monsters to fully control the player?]
	decide yes.
	
[!<YourselfIsClitStuck>+

REQUIRES COMMENTING

+!]
Definition: yourself is clit stuck:
	let L be a random clitoris lead;
	repeat with M running through monsters covering L:
		if M is not in the location of the player, now M is not covering L;
		otherwise decide yes;
	decide no.

To say SubduedGrabFlav of (C - clitoris lead):
	say "[variable custom style][if the delicateness of the player < 8]Fuck fuck fuck get off!!![otherwise if the delicateness of the player < 14]Eek that's way too sensitive!  I can't move a muscle![otherwise]Oopsie, caught again![end if][roman type][line break]".

Check taking off clitoris lead:
	say "That's permanently welded onto your clitoris piercing!" instead. 

Section 1 Wearability

Definition: a clitoris lead (called P) is eligible:
	if the player is male or the player is pussy protected or there is a worn clitoris lead, decide no;
	if there is a worn clitoris piercing, decide yes;
	decide no.



Clitoris Lead ends here.

