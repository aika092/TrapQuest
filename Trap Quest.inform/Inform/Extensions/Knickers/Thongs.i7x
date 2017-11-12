Thongs by Knickers begins here.

A thong is a kind of undies. The soak-limit of a thong is usually 7.  The text-shortcut of thong is "th".

The printed name of thong is "[TQlink of item described][clothing-title-before][selfexamineuniquetitle of item described][clothing-title-after][TQxlink of item described][verb-desc of item described]".

To say TypeTitle of (T - a thong):
	say "thong".

To say selfexaminetitle of (T - a thong):
	say "[one of]skimpy[or]lewd[or]naughty[at random] [selfexamineuniquetitle of T]".

To decide which number is the initial outrage of (C - a thong):
	if C is actually sheer, decide on 9;
	decide on 3.

To uniquely set up (T - a thong):
	now the damage of T is 0;
	now the armour of T is a random number between 4 and 6;
	set up magic state of T.

To decide which object is the potential-upgrade-target of (C - a thong):
	decide on a random off-stage g-string.

To say selfexamineuniquetitle of (G - a thong):
	say "thong".


To decide which figure-name is clothing-image of (C - a thong):
	decide on figure of thong 1.

To decide which figure-name is clothing-image of (C - a white thong):
	decide on figure of thong 1.

To decide which figure-name is clothing-image of (C - a pink thong):
	decide on figure of thong 2.

To decide which figure-name is clothing-image of (C - a purple thong):
	decide on figure of thong 3.

To decide which figure-name is clothing-image of (C - a red thong):
	decide on figure of thong 4.

To decide which figure-name is clothing-image of (C - a black thong):
	decide on figure of thong 5.

To decide which figure-name is clothing-image of (C - a blue thong):
	decide on figure of thong 6.

To decide which figure-name is clothing-image of (C - a silver thong):
	decide on figure of thong 7.

To decide which figure-name is clothing-image of (C - a green thong):
	decide on figure of thong 8.

To decide which figure-name is clothing-image of (C - a white polka-dot thong):
	decide on figure of thong 9.

To decide which figure-name is clothing-image of (C - a flirty blue thong):
	decide on figure of thong 10.

To decide which figure-name is clothing-image of (C - a rose adorned white thong):
	decide on figure of thong 11.

To decide which figure-name is clothing-image of (C - a pink lace thong):
	decide on figure of thong 12.

To decide which figure-name is clothing-image of (C - a light pink lace thong):
	decide on figure of thong 13.

To decide which figure-name is clothing-image of (C - a grey keyhole thong):
	decide on figure of thong 14.


A white thong is a kind of thong.  There is 1 white thong.  A white thong is usually sheer-when-wet.  The text-shortcut of white thong is "wth".
To say selfexamineuniquetitle of (G - a white thong):
	say "white 'OOPS' thong".
To say UniqueClothingDesc of (G - a white thong):
	say "This small white thong has an image on the front of a girl 'accidentally' falling over and in doing so showing everyone behind her what's under her dress.  Below this it says 'Oops!'".
Understand "oops" as white thong.
To decide which number is the heel-skill-influence of (O - a white thong):
	let temp be -1;
	increase temp by the magic-modifier of O;
	if temp < 1, decide on temp;
	decide on 0.
Report wearing a white thong:
	if there are worn heels, say "You suddenly feel a lot less sure in your [printed name of random heels worn by the player]!";
	otherwise say "You can't get the image of the girl on the front of your thong out of your head!";
	HeelDown 2;
	if the heel time of the player < 300, now the heel time of the player is 0;
	otherwise decrease the heel time of the player by 300.
To decide which number is the initial outrage of (C - a white thong):
	decide on 7.

A pink thong is a kind of thong.  There is 1 pink thong.  The text-shortcut of pink thong is "ith".
To say selfexamineuniquetitle of (G - a pink thong):
	say "pink thong".
To say UniqueClothingDesc of (G - a pink thong):
	say "This stretchy pink thong sits snugly between [if G is worn]your[otherwise]the wearer's[end if] ass cheeks.".

A purple thong is a kind of thong.  There is 1 purple thong.  The text-shortcut of purple thong is "uth".
To say selfexamineuniquetitle of (G - a purple thong):
	say "purple 'BIG COCK LOVER' thong".
To say UniqueClothingDesc of (G - a purple thong):
	say "This small purple thong has the phrase 'BIG COCK LOVER' in capital letters on the front.".
Understand "big", "cock", "lover" as purple thong.
To compute periodic effect of (G - a purple thong):
	if the oral sex addiction of the player < 10 and a random number between 1 and 100 * the oral sex addiction of the player < 3:
		say "[bold type]You feel a small amount of magic emanate from your [printed name of G][bold type], and your mind is momentarily filled with images of big juicy cocks filling your mouth.[if the oral sex addiction of the player < 5][one of][variable custom style]Wait a minute, did I just think of big penises as 'juicy'?![or][stopping][roman type][line break]";
		OralSexAddictUp 1.
To decide which number is the initial outrage of (C - a purple thong):
	decide on 7.
	
A red thong is a kind of thong.  There is 1 red thong.  The text-shortcut of red thong is "rdt".
To say selfexamineuniquetitle of (G - a red thong):
	say "red 'SURE THING' thong".
To say UniqueClothingDesc of (G - a red thong):
	say "This provocative, frilly thong says 'SURE THING' in capital letters on the front, which makes it clear that [if G is worn]you are[otherwise]the wearer is[end if] up for sex with absolutely anyone.".
Understand "sure", "thing" as red thong.
To decide which number is the initial outrage of (C - a red thong):
	decide on 7.

A black thong is a kind of thong.  There is 1 black thong.  The text-shortcut of black thong is "bth".
To say selfexamineuniquetitle of (G - a black thong):
	say "black thong".
To say UniqueClothingDesc of (G - a black thong):
	say "A basic skimpy black thong.".

A blue thong is a kind of thong.  There is 1 blue thong.  The text-shortcut of blue thong is "blt".
To say selfexamineuniquetitle of (G - a blue thong):
	say "blue thong".
To say UniqueClothingDesc of (G - a blue thong):
	say "A basic frilly blue thong.".

A silver thong is a kind of thong.  There is 1 silver thong.  The text-shortcut of silver thong is "sth".
To say selfexamineuniquetitle of (G - a silver thong):
	say "silver thong".
To say UniqueClothingDesc of (G - a silver thong):
	say "A super tiny silver thong.".

A green thong is a kind of thong.  There is 1 green thong.  The text-shortcut of green thong is "gth".
To say selfexamineuniquetitle of (G - a green thong):
	say "green thong".
To say UniqueClothingDesc of (G - a green thong):
	say "A basic skimpy green thong.".

Figure of thong 1 is the file "thong1.png".
Figure of thong 2 is the file "thong2.png".
Figure of thong 3 is the file "thong3.png".
Figure of thong 4 is the file "thong4.png".
Figure of thong 5 is the file "thong5.png".
Figure of thong 6 is the file "thong6.png".
Figure of thong 7 is the file "thong7.png".
Figure of thong 8 is the file "thong8.png".

[Below are from Lucas]

A white polka-dot thong is a kind of thong.  There is 1 white polka-dot thong.  A white polka-dot thong is usually sheer-when-wet.  The text-shortcut of white polka-dot thong is "pdt".
To say selfexamineuniquetitle of (G - a white polka-dot thong):
	say "white polka-dot thong".
To say UniqueClothingDesc of (G - a white polka-dot thong):
	say "A white polka-dot thong. The sheer, frilled waistband and a provocatively placed pink bow make this thong quite feminine.". 
Understand "polka", "dot" as white polka-dot thong.

A flirty blue thong is a kind of thong.  There is 1 flirty blue thong.  The text-shortcut of flirty blue thong is "fbt".
To say selfexamineuniquetitle of (G - a flirty blue thong):
	say "flirty blue thong".
To say UniqueClothingDesc of (G - a flirty blue thong):
	say "A blue thong with numerous, attention drawing, girly and flirtatious decorative symbols and sayings on the front, such as [']wink wink['] and [']eye candy[']. ".

A rose adorned white thong is a kind of thong.  There is 1 rose adorned white thong.  The text-shortcut of rose adorned white thong is "rwt".
To say selfexamineuniquetitle of (G - a rose adorned white thong):
	say "rose adorned white thong".
To say UniqueClothingDesc of (G - a rose adorned white thong):
	say "This thong is quite soft and delicate. You can sense that the rose and string waistband will only encourage others to peek at your private parts.".

A pink lace thong is a kind of thong.  There is 1 pink lace thong.  The text-shortcut of pink lace thong is "plt".
To say selfexamineuniquetitle of (G - a pink lace thong):
	say "pink lace thong".
To say UniqueClothingDesc of (G - a pink lace thong):
	say "A small lace thong that lets everyone know the wearer is a pretty girl and isn't afraid to show it.".

A light pink lace thong is a kind of thong.  There is 1 light pink lace thong.  The text-shortcut of light pink lace thong is "llt".
To say selfexamineuniquetitle of (G - a light pink lace thong):
	say "light pink lace 'Bombshell' thong".
To say UniqueClothingDesc of (G - a light pink lace thong):
	say "This tiny, revealing light pink lace thong has the phrase 'Bombshell' on the waistband, flaunting that the wearer knows they look good and enjoys showing their body off.".
Understand "bombshell" as light pink lace thong.	
	
A grey keyhole thong is a kind of thong.  There is 1 grey keyhole thong. A  grey keyhole thong is usually sheer.  The text-shortcut of grey keyhole thong is "gkt".
To say selfexamineuniquetitle of (G - a grey keyhole thong):
	say "grey keyhole thong".
To say UniqueClothingDesc of (G - a grey keyhole thong):
	say "A sheer thong with pink bows on the front and a pink keyhole design on the rear, designed to draw attention to the wearer's backside.".
Definition: a grey keyhole thong (called C) is bow themed:
	decide yes.

Figure of thong 9 is the file "thong9.png".	
Figure of thong 10 is the file "thong10.png".	
Figure of thong 11 is the file "thong11.png".	
Figure of thong 12 is the file "thong12.png".	
Figure of thong 13 is the file "thong13.png".	
Figure of thong 14 is the file "thong14.png".	



Thongs ends here.
