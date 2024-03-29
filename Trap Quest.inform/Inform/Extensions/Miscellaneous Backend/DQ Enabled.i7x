DQ Enabled by Miscellaneous Backend begins here.

To say QuestFlav of (Q - stealth-diaper-quest):
	say "You sense it wants you to pee in a diaper in front of someone without them being able to see that you're wearing a diaper OR pee into a diaper while another completely dry diaper is layered on top of it.".

To say QuestTitle of (Q - stealth-diaper-quest):
	say " (sneaky wetting quest)".

To compute persistent reward of (Q - stealth-diaper-quest) on (C - a clothing):
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise if C is bland:
		compute generic second time class reward of Q on C;
	otherwise:
		compute generic class reward of Q on C;
	if the class of the player is princess and the player is not in a predicament room:
		class summon royal scepter.

To compute periodic effect of (C - royal scepter):
	if the charge of C > 0:
		decrease the charge of C by 1;
	if the charge of C is 0 and player-urinating is 0 and mess-phase is 0:
		let D be a random worn diaper;
		if D is diaper and (D is messed or the total-soak of D >= the soak-limit of D / 2):
			say "[bold type]The shining light of your [ShortDesc of C] goes out. [roman type]As it does, your [D] [if D is not messed or diaper messing < 6]disappears[otherwise]is removed from your body and falls to the ground[end if]! Your loins are magically wiped clean.";
			let SD be a random off-stage soiled-diaper;
			now the charge of C is 50;
			if D is messed and SD is a thing and diaper messing >= 6:
				DiaperPrint SD from D;
				now SD is in the location of the player;
				only destroy D;
			otherwise:
				destroy D.

To compute slime expansion:
	do nothing.


Chapter - DQ Specific Figures

Figure of Cutscene Prologue Male is the file "Special/Cutscene/cutscene-prologue1.png".
Figure of Cutscene Prologue Female is the file "Special/Cutscene/cutscene-prologue2.png".
Figure of YesNoBackground1A is the file "Special/Buttons/YesNo/DQ1A.png".
Figure of YesNoBackground1B is the file "Special/Buttons/YesNo/DQ1B.png".
Figure of YesNoBackground2A is the file "Special/Buttons/YesNo/DQ2A.png".
Figure of YesNoBackground2B is the file "Special/Buttons/YesNo/DQ2B.png".
Figure of YesNoBackground3A is the file "Special/Buttons/YesNo/DQ3A.png".
Figure of YesNoBackground3B is the file "Special/Buttons/YesNo/DQ3B.png".
Figure of YesNoBackground4A is the file "Special/Buttons/YesNo/DQ4A.png".
Figure of YesNoBackground4B is the file "Special/Buttons/YesNo/DQ4B.png".
Figure of HoleInWallBackground is the file "Map/hole2.png".
Figure of demon lord is the file "NPCs/Bosses/Xavier/xavier1.png".
Figure of modification machine is the file "Env/Hotel/modmachine2.png".
Figure of slavehound is the file "NPCs/Mansion/Hound/hound3.png".

Include Unnecessary Figures by DQ Only Stuff.
Include Necessary Figures by DQ Only Stuff.

temporaryYesNoBackground is a figure-name that varies.
A game universe initialisation rule (this is the temporaryYesNoBackground initialisation rule):
	now temporaryYesNoBackground is figure of small image.

Chapter - Unused but referenced Figures

Figure of Minotaur Cutscene 2 is the file "Special/smallimage.jpg".

To decide which figure-name is YesNoBackground:
	if temporaryYesNoBackground is not figure of small image, decide on temporaryYesNoBackground;
	if the bimbo of the player < 10:
		if the player is gendered female:
			if the player is diapered, decide on figure of YesNoBackground1B;
			otherwise decide on figure of YesNoBackground1A;
		otherwise:
			if the player is diapered, decide on figure of YesNoBackground2B;
			otherwise decide on figure of YesNoBackground2A;
	otherwise:
		if the player is gendered female:
			if the player is diapered, decide on figure of YesNoBackground3B;
			otherwise decide on figure of YesNoBackground3A;
		otherwise:
			if the player is diapered, decide on figure of YesNoBackground3B;
			otherwise decide on figure of YesNoBackground3A;

Include DQ Monster Variants by DQ Only Stuff.
Include School Stuff by DQ Only Stuff.

a wench is a kind of monster. a horny-wench is a kind of wench. a wench has a number called creampieTimer. a wench has a number called bbc-training.
To compute (M - a monster) WenchReceiving (C - a clothing):
	do nothing.
To reset submissive wenches:
	do nothing.
QoS wench is a wench.
To bbc-trainingUp (M - a wench) by (N - a number):
	do nothing.

A sex doll is a kind of monster.
minotaur is a monster.
To compute (M - a monster) stomping (N - a monster):
	do nothing.

giant wasp is a kind of monster. buzzing giant wasp is a giant wasp.
newborn-wasp is an object that varies.
wasp-honey-timer is a number that varies. wasp-poison-timer is a number that varies.
aeromancer is a kind of monster. an aeromancer has a number called balloon. an aeromancer has a number called current-balloon. an aeromancer has a number called previously-ballooned. an aeromancer can be wand-empowered. an aeromancer can be ballooned.
To compute aeromancer science of (M - a monster):
	do nothing.
tentacle monster is a kind of monster. durable-tentacle-monster is a tentacle monster. A tentacle monster can be newborn, large, massive (this is the tentacle-size property). A tentacle monster has a number called evolved.
To compute tentacle birth:
	do nothing.

a hugger-panties is a kind of knickers. a hugger-panties is unique.
crotch-hugger is a hugger-panties. ass-hugger is a hugger-panties.

robomaid is a kind of monster.
gargoyle is a monster.
unicorn is a monster.
A slutty sister is a kind of monster. bulging-slutty-sister is a slutty sister. futanari-slutty-sister is a slutty sister.
A facehugger is a kind of monster.
student-katya is a monster.
centaur is a monster.
confident aeromancer is a monster.
a goblin is a kind of monster.
student-calamity is a monster.

Include RoboMatron by Monster.
Include Boogeymonster by Monster.
Include Woman Berri by Monster.

A bukkake trap door is a kind of trap. A bukkake hose is a kind of trap.
A dildo trap is a kind of trap. A dildo pole trap is a kind of dildo trap. A drill pole trap is a kind of dildo trap. A creampie pole trap is a kind of dildo trap. A ghostly dildo pole trap is a kind of dildo trap.

A milking bench is a kind of furniture. A milking bench lever is a kind of thing. A milking bench lever can be lever-pulled. dungeon-milking-bench is a milking bench. mansion-milking-bench is a milking bench. dungeon-milking-bench-lever is a milking bench lever. mansion-milking-bench-lever is a milking bench lever. A dildo rocking stool is a kind of furniture.

To compute orgasm resolution of (R - a dildo trap):
	do nothing.
To jump from the dildo:
	do nothing.
To jump from the drill:
	do nothing.
A wooden horse is a kind of trap. A painted horse is a kind of wooden horse. A wild horse is a kind of wooden horse.
HorsePulling is an action applying to one thing.
A lake monster is a kind of person. A lake monster has a number called semen-sniffing. There is 1 lake monster.
To LakeMonsterCheck (S - a number):
	do nothing.
slimegirl is a person. slimegirl has a number called hunger. slimegirl has a number called intensity. slimegirl has a number called timetaken.
To SlimegirlCheck:
	do nothing.
A monster can be player-brood.

Include Satchels of Holding by Bags of Holding.
Include Backpacks of Holding by Bags of Holding.
Include Childish Backpacks of Holding by Bags of Holding.
Include Diaper Bags of Holding by Bags of Holding.
Include Baby Diaper Bags of Holding by Bags of Holding.
a condom rolls bag of holding is a kind of bag of holding.
an ultra slutty bag of holding is a kind of bag of holding.
dirty little whore sack of holding is a bag of holding.

gape-gloves is a gloves. The printed name of gape-gloves is "gape gloves".

A bridal veil is a kind of headgear. floral bridal veil is a bridal veil.
betrothal-quest is a headgear-clothing-quest. betrothal-quest has a truth state called ceremony. betrothal-quest has a truth state called consummation.

Include Chocolates Bag by Objects.
Include Bunny Ears DQ by Headgear.
To say WaitressOfferAcceptFlav of (M - a monster) to (T - a thing):
	say "".
To say WaitressTakeFlav of (M - a monster) to (T - a thing):
	say "".

tits-lesson is a lesson. the lesson-teacher of tits-lesson is teacher-hannah.
Definition: tits-lesson is lesson-appropriate: decide no.
kissing-lesson is a lesson. the lesson-teacher of kissing-lesson is teacher-serenity.
Definition: kissing-lesson is lesson-appropriate: decide no.

Include Stuffies by Equippables.

To progress quest of (Q - whore-exposing-quest) for (M - a monster):
	do nothing.

To check clutch replacement:
	do nothing.

hugger-gag is a ballgag.
Definition: hugger-gag is fetish appropriate: decide no.
A hugger-panties is a kind of knickers.
broomstick is a clothing.

Figure of Jammy Messy Loading Animation Frame 1 is the file "Special/Animations/JammyLoading/frame_000001.jpeg".
Figure of Jammy Messy Loading Animation Frame 4 is the file "Special/Animations/JammyLoading/frame_000004.jpeg".
Figure of Jammy Messy Loading Animation Frame 7 is the file "Special/Animations/JammyLoading/frame_000007.jpeg".
Figure of Jammy Messy Loading Animation Frame 10 is the file "Special/Animations/JammyLoading/frame_000010.jpeg".
Figure of Jammy Messy Loading Animation Frame 13 is the file "Special/Animations/JammyLoading/frame_000013.jpeg".
Figure of Jammy Messy Loading Animation Frame 16 is the file "Special/Animations/JammyLoading/frame_000016.jpeg".
Figure of Jammy Messy Loading Animation Frame 19 is the file "Special/Animations/JammyLoading/frame_000019.jpeg".
Figure of Jammy Messy Loading Animation Frame 22 is the file "Special/Animations/JammyLoading/frame_000022.jpeg".
Figure of Jammy Messy Loading Animation Frame 25 is the file "Special/Animations/JammyLoading/frame_000025.jpeg".
Figure of Jammy Messy Loading Animation Frame 28 is the file "Special/Animations/JammyLoading/frame_000028.jpeg".
Figure of Jammy Messy Loading Animation Frame 31 is the file "Special/Animations/JammyLoading/frame_000031.jpeg".
Figure of Jammy Messy Loading Animation Frame 34 is the file "Special/Animations/JammyLoading/frame_000034.jpeg".
Figure of Jammy Messy Loading Animation Frame 37 is the file "Special/Animations/JammyLoading/frame_000037.jpeg".
Figure of Jammy Messy Loading Animation Frame 40 is the file "Special/Animations/JammyLoading/frame_000040.jpeg".
Figure of Jammy Messy Loading Animation Frame 43 is the file "Special/Animations/JammyLoading/frame_000043.jpeg".
Figure of Jammy Messy Loading Animation Frame 46 is the file "Special/Animations/JammyLoading/frame_000046.jpeg".
Figure of Jammy Messy Loading Animation Frame 49 is the file "Special/Animations/JammyLoading/frame_000049.jpeg".
Figure of Jammy Messy Loading Animation Frame 52 is the file "Special/Animations/JammyLoading/frame_000052.jpeg".
Figure of Jammy Messy Loading Animation Frame 55 is the file "Special/Animations/JammyLoading/frame_000055.jpeg".
[Figure of Jammy Messy Loading Animation Frame 58 is the file "Special/Animations/JammyLoading/frame_000058.jpeg".
Figure of Jammy Messy Loading Animation Frame 61 is the file "Special/Animations/JammyLoading/frame_000061.jpeg".
Figure of Jammy Messy Loading Animation Frame 64 is the file "Special/Animations/JammyLoading/frame_000064.jpeg".
Figure of Jammy Messy Loading Animation Frame 67 is the file "Special/Animations/JammyLoading/frame_000067.jpeg".
Figure of Jammy Messy Loading Animation Frame 70 is the file "Special/Animations/JammyLoading/frame_000070.jpeg".
Figure of Jammy Messy Loading Animation Frame 73 is the file "Special/Animations/JammyLoading/frame_000073.jpeg".
Figure of Jammy Messy Loading Animation Frame 76 is the file "Special/Animations/JammyLoading/frame_000076.jpeg".
Figure of Jammy Messy Loading Animation Frame 79 is the file "Special/Animations/JammyLoading/frame_000079.jpeg".
Figure of Jammy Messy Loading Animation Frame 82 is the file "Special/Animations/JammyLoading/frame_000082.jpeg".]
Figure of Jammy Messy Loading Animation Frame 85 is the file "Special/Animations/JammyLoading/frame_000085.jpeg".
Figure of Jammy Messy Loading Animation Frame 88 is the file "Special/Animations/JammyLoading/frame_000088.jpeg".
Figure of Jammy Messy Loading Animation Frame 91 is the file "Special/Animations/JammyLoading/frame_000091.jpeg".
Figure of Jammy Messy Loading Animation Frame 94 is the file "Special/Animations/JammyLoading/frame_000094.jpeg".
Figure of Jammy Messy Loading Animation Frame 97 is the file "Special/Animations/JammyLoading/frame_000097.jpeg".
Figure of Jammy Messy Loading Animation Frame 100 is the file "Special/Animations/JammyLoading/frame_000100.jpeg".
Figure of Jammy Messy Loading Animation Frame 103 is the file "Special/Animations/JammyLoading/frame_000103.jpeg".
Figure of Jammy Messy Loading Animation Frame 106 is the file "Special/Animations/JammyLoading/frame_000106.jpeg".
Figure of Jammy Messy Loading Animation Frame 109 is the file "Special/Animations/JammyLoading/frame_000109.jpeg".
Figure of Jammy Messy Loading Animation Frame 112 is the file "Special/Animations/JammyLoading/frame_000112.jpeg".
Figure of Jammy Messy Loading Animation Frame 115 is the file "Special/Animations/JammyLoading/frame_000115.jpeg".
Figure of Jammy Messy Loading Animation Frame 118 is the file "Special/Animations/JammyLoading/frame_000118.jpeg".
Figure of Jammy Messy Loading Animation Frame 121 is the file "Special/Animations/JammyLoading/frame_000121.jpeg".
Figure of Jammy Messy Loading Animation Frame 124 is the file "Special/Animations/JammyLoading/frame_000124.jpeg".
Figure of Jammy Messy Loading Animation Frame 127 is the file "Special/Animations/JammyLoading/frame_000127.jpeg".
Figure of Jammy Messy Loading Animation Frame 130 is the file "Special/Animations/JammyLoading/frame_000130.jpeg".
Figure of Jammy Messy Loading Animation Frame 133 is the file "Special/Animations/JammyLoading/frame_000133.jpeg".
Figure of Jammy Messy Loading Animation Frame 136 is the file "Special/Animations/JammyLoading/frame_000136.jpeg".
Figure of Jammy Messy Loading Animation Frame 139 is the file "Special/Animations/JammyLoading/frame_000139.jpeg".
Figure of Jammy Messy Loading Animation Frame 142 is the file "Special/Animations/JammyLoading/frame_000142.jpeg".
Figure of Jammy Messy Loading Animation Frame 145 is the file "Special/Animations/JammyLoading/frame_000145.jpeg".
Figure of Jammy Messy Loading Animation Frame 148 is the file "Special/Animations/JammyLoading/frame_000148.jpeg".
Figure of Jammy Messy Loading Animation Frame 151 is the file "Special/Animations/JammyLoading/frame_000151.jpeg".
Figure of Jammy Messy Loading Animation Frame 154 is the file "Special/Animations/JammyLoading/frame_000154.jpeg".
Figure of Jammy Messy Loading Animation Frame 157 is the file "Special/Animations/JammyLoading/frame_000157.jpeg".
Figure of Jammy Messy Loading Animation Frame 160 is the file "Special/Animations/JammyLoading/frame_000160.jpeg".
Figure of Jammy Messy Loading Animation Frame 163 is the file "Special/Animations/JammyLoading/frame_000163.jpeg".
Figure of Jammy Messy Loading Animation Frame 166 is the file "Special/Animations/JammyLoading/frame_000166.jpeg".
Figure of Jammy Messy Loading Animation Frame 169 is the file "Special/Animations/JammyLoading/frame_000169.jpeg".
Figure of Jammy Messy Loading Animation Frame 172 is the file "Special/Animations/JammyLoading/frame_000172.jpeg".
Figure of Jammy Messy Loading Animation Frame 175 is the file "Special/Animations/JammyLoading/frame_000175.jpeg".
Figure of Jammy Messy Loading Animation Frame 178 is the file "Special/Animations/JammyLoading/frame_000178.jpeg".
Figure of Jammy Messy Loading Animation Frame 181 is the file "Special/Animations/JammyLoading/frame_000181.jpeg".
Figure of Jammy Messy Loading Animation Frame 184 is the file "Special/Animations/JammyLoading/frame_000184.jpeg".
Figure of Jammy Messy Loading Animation Frame 187 is the file "Special/Animations/JammyLoading/frame_000187.jpeg".
Figure of Jammy Messy Loading Animation Frame 190 is the file "Special/Animations/JammyLoading/frame_000190.jpeg".
Figure of Jammy Messy Loading Animation Frame 193 is the file "Special/Animations/JammyLoading/frame_000193.jpeg".
Figure of Jammy Messy Loading Animation Frame 196 is the file "Special/Animations/JammyLoading/frame_000196.jpeg".
Figure of Jammy Messy Loading Animation Frame 199 is the file "Special/Animations/JammyLoading/frame_000199.jpeg".
Figure of Jammy Messy Loading Animation Frame 202 is the file "Special/Animations/JammyLoading/frame_000202.jpeg".
Figure of Jammy Messy Loading Animation Frame 205 is the file "Special/Animations/JammyLoading/frame_000205.jpeg".
Figure of Jammy Messy Loading Animation Frame 208 is the file "Special/Animations/JammyLoading/frame_000208.jpeg".
Figure of Jammy Messy Loading Animation Frame 211 is the file "Special/Animations/JammyLoading/frame_000211.jpeg".
Figure of Jammy Messy Loading Animation Frame 214 is the file "Special/Animations/JammyLoading/frame_000214.jpeg".
Figure of Jammy Messy Loading Animation Frame 217 is the file "Special/Animations/JammyLoading/frame_000217.jpeg".
Figure of Jammy Messy Loading Animation Frame 220 is the file "Special/Animations/JammyLoading/frame_000220.jpeg".
Figure of Jammy Messy Loading Animation Frame 223 is the file "Special/Animations/JammyLoading/frame_000223.jpeg".
Figure of Jammy Messy Loading Animation Frame 226 is the file "Special/Animations/JammyLoading/frame_000226.jpeg".
Figure of Jammy Messy Loading Animation Frame 229 is the file "Special/Animations/JammyLoading/frame_000229.jpeg".
Figure of Jammy Messy Loading Animation Frame 232 is the file "Special/Animations/JammyLoading/frame_000232.jpeg".
Figure of Jammy Messy Loading Animation Frame 235 is the file "Special/Animations/JammyLoading/frame_000235.jpeg".
Figure of Jammy Messy Loading Animation Frame 238 is the file "Special/Animations/JammyLoading/frame_000238.jpeg".
Figure of Jammy Messy Loading Animation Frame 241 is the file "Special/Animations/JammyLoading/frame_000241.jpeg".
Figure of Jammy Messy Loading Animation Frame 244 is the file "Special/Animations/JammyLoading/frame_000244.jpeg".
Figure of Jammy Messy Loading Animation Frame 247 is the file "Special/Animations/JammyLoading/frame_000247.jpeg".
Figure of Jammy Messy Loading Animation Frame 250 is the file "Special/Animations/JammyLoading/frame_000250.jpeg".
Figure of Jammy Messy Loading Animation Frame 253 is the file "Special/Animations/JammyLoading/frame_000253.jpeg".
Figure of Jammy Messy Loading Animation Frame 256 is the file "Special/Animations/JammyLoading/frame_000256.jpeg".
Figure of Jammy Messy Loading Animation Frame 259 is the file "Special/Animations/JammyLoading/frame_000259.jpeg".
Figure of Jammy Messy Loading Animation Frame 262 is the file "Special/Animations/JammyLoading/frame_000262.jpeg".
Figure of Jammy Messy Loading Animation Frame 265 is the file "Special/Animations/JammyLoading/frame_000265.jpeg".
Figure of Jammy Messy Loading Animation Frame 268 is the file "Special/Animations/JammyLoading/frame_000268.jpeg".
Figure of Jammy Messy Loading Animation Frame 271 is the file "Special/Animations/JammyLoading/frame_000271.jpeg".
Figure of Jammy Messy Loading Animation Frame 274 is the file "Special/Animations/JammyLoading/frame_000274.jpeg".
Figure of Jammy Messy Loading Animation Frame 277 is the file "Special/Animations/JammyLoading/frame_000277.jpeg".
Figure of Jammy Messy Loading Animation Frame 280 is the file "Special/Animations/JammyLoading/frame_000280.jpeg".
Figure of Jammy Messy Loading Animation Frame 283 is the file "Special/Animations/JammyLoading/frame_000283.jpeg".
Figure of Jammy Messy Loading Animation Frame 286 is the file "Special/Animations/JammyLoading/frame_000286.jpeg".
Figure of Jammy Messy Loading Animation Frame 289 is the file "Special/Animations/JammyLoading/frame_000289.jpeg".
Figure of Jammy Messy Loading Animation Frame 292 is the file "Special/Animations/JammyLoading/frame_000292.jpeg".
Figure of Jammy Messy Loading Animation Frame 295 is the file "Special/Animations/JammyLoading/frame_000295.jpeg".
Figure of Jammy Messy Loading Animation Frame 298 is the file "Special/Animations/JammyLoading/frame_000298.jpeg".
Figure of Jammy Messy Loading Animation Frame 301 is the file "Special/Animations/JammyLoading/frame_000301.jpeg".
Figure of Jammy Messy Loading Animation Frame 304 is the file "Special/Animations/JammyLoading/frame_000304.jpeg".
Figure of Jammy Messy Loading Animation Frame 307 is the file "Special/Animations/JammyLoading/frame_000307.jpeg".
Figure of Jammy Messy Loading Animation Frame 310 is the file "Special/Animations/JammyLoading/frame_000310.jpeg".
Figure of Jammy Messy Loading Animation Frame 313 is the file "Special/Animations/JammyLoading/frame_000313.jpeg".
Figure of Jammy Messy Loading Animation Frame 316 is the file "Special/Animations/JammyLoading/frame_000316.jpeg".
Figure of Jammy Messy Loading Animation Frame 319 is the file "Special/Animations/JammyLoading/frame_000319.jpeg".
Figure of Jammy Messy Loading Animation Frame 322 is the file "Special/Animations/JammyLoading/frame_000322.jpeg".
Figure of Jammy Messy Loading Animation Frame 325 is the file "Special/Animations/JammyLoading/frame_000325.jpeg".
Figure of Jammy Messy Loading Animation Frame 328 is the file "Special/Animations/JammyLoading/frame_000328.jpeg".
Figure of Jammy Messy Loading Animation Frame 331 is the file "Special/Animations/JammyLoading/frame_000331.jpeg".
Figure of Jammy Messy Loading Animation Frame 334 is the file "Special/Animations/JammyLoading/frame_000334.jpeg".
Figure of Jammy Messy Loading Animation Frame 337 is the file "Special/Animations/JammyLoading/frame_000337.jpeg".
Figure of Jammy Messy Loading Animation Frame 340 is the file "Special/Animations/JammyLoading/frame_000340.jpeg".
Figure of Jammy Messy Loading Animation Frame 343 is the file "Special/Animations/JammyLoading/frame_000343.jpeg".
Figure of Jammy Messy Loading Animation Frame 346 is the file "Special/Animations/JammyLoading/frame_000346.jpeg".
Figure of Jammy Messy Loading Animation Frame 349 is the file "Special/Animations/JammyLoading/frame_000349.jpeg".
Figure of Jammy Messy Loading Animation Frame 352 is the file "Special/Animations/JammyLoading/frame_000352.jpeg".
Figure of Jammy Messy Loading Animation Frame 355 is the file "Special/Animations/JammyLoading/frame_000355.jpeg".
Figure of Jammy Messy Loading Animation Frame 358 is the file "Special/Animations/JammyLoading/frame_000358.jpeg".
Figure of Jammy Messy Loading Animation Frame 361 is the file "Special/Animations/JammyLoading/frame_000361.jpeg".
Figure of Jammy Messy Loading Animation Frame 364 is the file "Special/Animations/JammyLoading/frame_000364.jpeg".
Figure of Jammy Messy Loading Animation Frame 367 is the file "Special/Animations/JammyLoading/frame_000367.jpeg".
Figure of Jammy Messy Loading Animation Frame 370 is the file "Special/Animations/JammyLoading/frame_000370.jpeg".
Figure of Jammy Messy Loading Animation Frame 373 is the file "Special/Animations/JammyLoading/frame_000373.jpeg".
Figure of Jammy Messy Loading Animation Frame 376 is the file "Special/Animations/JammyLoading/frame_000376.jpeg".
Figure of Jammy Messy Loading Animation Frame 379 is the file "Special/Animations/JammyLoading/frame_000379.jpeg".
Figure of Jammy Messy Loading Animation Frame 382 is the file "Special/Animations/JammyLoading/frame_000382.jpeg".
Figure of Jammy Messy Loading Animation Frame 385 is the file "Special/Animations/JammyLoading/frame_000385.jpeg".
Figure of Jammy Messy Loading Animation Frame 388 is the file "Special/Animations/JammyLoading/frame_000388.jpeg".
Figure of Jammy Messy Loading Animation Frame 391 is the file "Special/Animations/JammyLoading/frame_000391.jpeg".
Figure of Jammy Messy Loading Animation Frame 394 is the file "Special/Animations/JammyLoading/frame_000394.jpeg".
Figure of Jammy Messy Loading Animation Frame 397 is the file "Special/Animations/JammyLoading/frame_000397.jpeg".
Figure of Jammy Messy Loading Animation Frame 400 is the file "Special/Animations/JammyLoading/frame_000400.jpeg".
Figure of Jammy Messy Loading Animation Frame 403 is the file "Special/Animations/JammyLoading/frame_000403.jpeg".
Figure of Jammy Messy Loading Animation Frame 406 is the file "Special/Animations/JammyLoading/frame_000406.jpeg".
Figure of Jammy Messy Loading Animation Frame 409 is the file "Special/Animations/JammyLoading/frame_000409.jpeg".
Figure of Jammy Messy Loading Animation Frame 412 is the file "Special/Animations/JammyLoading/frame_000412.jpeg".

Figure of Jammy Nonmessy Loading Animation Frame 1 is the file "Special/Animations/JammyLoading2/frame_000001.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 4 is the file "Special/Animations/JammyLoading2/frame_000004.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 7 is the file "Special/Animations/JammyLoading2/frame_000007.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 10 is the file "Special/Animations/JammyLoading2/frame_000010.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 13 is the file "Special/Animations/JammyLoading2/frame_000013.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 16 is the file "Special/Animations/JammyLoading2/frame_000016.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 19 is the file "Special/Animations/JammyLoading2/frame_000019.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 22 is the file "Special/Animations/JammyLoading2/frame_000022.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 25 is the file "Special/Animations/JammyLoading2/frame_000025.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 28 is the file "Special/Animations/JammyLoading2/frame_000028.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 31 is the file "Special/Animations/JammyLoading2/frame_000031.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 34 is the file "Special/Animations/JammyLoading2/frame_000034.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 37 is the file "Special/Animations/JammyLoading2/frame_000037.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 40 is the file "Special/Animations/JammyLoading2/frame_000040.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 43 is the file "Special/Animations/JammyLoading2/frame_000043.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 46 is the file "Special/Animations/JammyLoading2/frame_000046.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 49 is the file "Special/Animations/JammyLoading2/frame_000049.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 52 is the file "Special/Animations/JammyLoading2/frame_000052.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 55 is the file "Special/Animations/JammyLoading2/frame_000055.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 58 is the file "Special/Animations/JammyLoading2/frame_000058.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 61 is the file "Special/Animations/JammyLoading2/frame_000061.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 64 is the file "Special/Animations/JammyLoading2/frame_000064.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 67 is the file "Special/Animations/JammyLoading2/frame_000067.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 70 is the file "Special/Animations/JammyLoading2/frame_000070.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 73 is the file "Special/Animations/JammyLoading2/frame_000073.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 76 is the file "Special/Animations/JammyLoading2/frame_000076.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 79 is the file "Special/Animations/JammyLoading2/frame_000079.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 82 is the file "Special/Animations/JammyLoading2/frame_000082.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 85 is the file "Special/Animations/JammyLoading2/frame_000085.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 88 is the file "Special/Animations/JammyLoading2/frame_000088.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 91 is the file "Special/Animations/JammyLoading2/frame_000091.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 94 is the file "Special/Animations/JammyLoading2/frame_000094.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 97 is the file "Special/Animations/JammyLoading2/frame_000097.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 100 is the file "Special/Animations/JammyLoading2/frame_000100.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 103 is the file "Special/Animations/JammyLoading2/frame_000103.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 106 is the file "Special/Animations/JammyLoading2/frame_000106.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 109 is the file "Special/Animations/JammyLoading2/frame_000109.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 112 is the file "Special/Animations/JammyLoading2/frame_000112.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 115 is the file "Special/Animations/JammyLoading2/frame_000115.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 118 is the file "Special/Animations/JammyLoading2/frame_000118.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 121 is the file "Special/Animations/JammyLoading2/frame_000121.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 124 is the file "Special/Animations/JammyLoading2/frame_000124.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 127 is the file "Special/Animations/JammyLoading2/frame_000127.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 130 is the file "Special/Animations/JammyLoading2/frame_000130.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 133 is the file "Special/Animations/JammyLoading2/frame_000133.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 136 is the file "Special/Animations/JammyLoading2/frame_000136.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 139 is the file "Special/Animations/JammyLoading2/frame_000139.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 142 is the file "Special/Animations/JammyLoading2/frame_000142.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 145 is the file "Special/Animations/JammyLoading2/frame_000145.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 148 is the file "Special/Animations/JammyLoading2/frame_000148.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 151 is the file "Special/Animations/JammyLoading2/frame_000151.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 154 is the file "Special/Animations/JammyLoading2/frame_000154.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 157 is the file "Special/Animations/JammyLoading2/frame_000157.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 160 is the file "Special/Animations/JammyLoading2/frame_000160.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 163 is the file "Special/Animations/JammyLoading2/frame_000163.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 166 is the file "Special/Animations/JammyLoading2/frame_000166.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 169 is the file "Special/Animations/JammyLoading2/frame_000169.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 172 is the file "Special/Animations/JammyLoading2/frame_000172.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 175 is the file "Special/Animations/JammyLoading2/frame_000175.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 178 is the file "Special/Animations/JammyLoading2/frame_000178.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 181 is the file "Special/Animations/JammyLoading2/frame_000181.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 184 is the file "Special/Animations/JammyLoading2/frame_000184.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 187 is the file "Special/Animations/JammyLoading2/frame_000187.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 190 is the file "Special/Animations/JammyLoading2/frame_000190.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 193 is the file "Special/Animations/JammyLoading2/frame_000193.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 196 is the file "Special/Animations/JammyLoading2/frame_000196.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 199 is the file "Special/Animations/JammyLoading2/frame_000199.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 202 is the file "Special/Animations/JammyLoading2/frame_000202.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 205 is the file "Special/Animations/JammyLoading2/frame_000205.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 208 is the file "Special/Animations/JammyLoading2/frame_000208.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 211 is the file "Special/Animations/JammyLoading2/frame_000211.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 214 is the file "Special/Animations/JammyLoading2/frame_000214.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 217 is the file "Special/Animations/JammyLoading2/frame_000217.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 220 is the file "Special/Animations/JammyLoading2/frame_000220.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 223 is the file "Special/Animations/JammyLoading2/frame_000223.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 226 is the file "Special/Animations/JammyLoading2/frame_000226.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 229 is the file "Special/Animations/JammyLoading2/frame_000229.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 232 is the file "Special/Animations/JammyLoading2/frame_000232.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 235 is the file "Special/Animations/JammyLoading2/frame_000235.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 238 is the file "Special/Animations/JammyLoading2/frame_000238.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 241 is the file "Special/Animations/JammyLoading2/frame_000241.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 244 is the file "Special/Animations/JammyLoading2/frame_000244.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 247 is the file "Special/Animations/JammyLoading2/frame_000247.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 250 is the file "Special/Animations/JammyLoading2/frame_000250.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 253 is the file "Special/Animations/JammyLoading2/frame_000253.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 256 is the file "Special/Animations/JammyLoading2/frame_000256.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 259 is the file "Special/Animations/JammyLoading2/frame_000259.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 262 is the file "Special/Animations/JammyLoading2/frame_000262.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 265 is the file "Special/Animations/JammyLoading2/frame_000265.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 268 is the file "Special/Animations/JammyLoading2/frame_000268.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 271 is the file "Special/Animations/JammyLoading2/frame_000271.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 274 is the file "Special/Animations/JammyLoading2/frame_000274.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 277 is the file "Special/Animations/JammyLoading2/frame_000277.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 280 is the file "Special/Animations/JammyLoading2/frame_000280.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 283 is the file "Special/Animations/JammyLoading2/frame_000283.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 286 is the file "Special/Animations/JammyLoading2/frame_000286.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 289 is the file "Special/Animations/JammyLoading2/frame_000289.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 292 is the file "Special/Animations/JammyLoading2/frame_000292.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 295 is the file "Special/Animations/JammyLoading2/frame_000295.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 298 is the file "Special/Animations/JammyLoading2/frame_000298.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 301 is the file "Special/Animations/JammyLoading2/frame_000301.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 304 is the file "Special/Animations/JammyLoading2/frame_000304.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 307 is the file "Special/Animations/JammyLoading2/frame_000307.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 310 is the file "Special/Animations/JammyLoading2/frame_000310.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 313 is the file "Special/Animations/JammyLoading2/frame_000313.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 316 is the file "Special/Animations/JammyLoading2/frame_000316.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 319 is the file "Special/Animations/JammyLoading2/frame_000319.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 322 is the file "Special/Animations/JammyLoading2/frame_000322.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 325 is the file "Special/Animations/JammyLoading2/frame_000325.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 328 is the file "Special/Animations/JammyLoading2/frame_000328.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 331 is the file "Special/Animations/JammyLoading2/frame_000331.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 334 is the file "Special/Animations/JammyLoading2/frame_000334.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 337 is the file "Special/Animations/JammyLoading2/frame_000337.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 340 is the file "Special/Animations/JammyLoading2/frame_000340.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 343 is the file "Special/Animations/JammyLoading2/frame_000343.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 346 is the file "Special/Animations/JammyLoading2/frame_000346.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 349 is the file "Special/Animations/JammyLoading2/frame_000349.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 352 is the file "Special/Animations/JammyLoading2/frame_000352.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 355 is the file "Special/Animations/JammyLoading2/frame_000355.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 358 is the file "Special/Animations/JammyLoading2/frame_000358.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 361 is the file "Special/Animations/JammyLoading2/frame_000361.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 364 is the file "Special/Animations/JammyLoading2/frame_000364.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 367 is the file "Special/Animations/JammyLoading2/frame_000367.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 370 is the file "Special/Animations/JammyLoading2/frame_000370.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 373 is the file "Special/Animations/JammyLoading2/frame_000373.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 376 is the file "Special/Animations/JammyLoading2/frame_000376.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 379 is the file "Special/Animations/JammyLoading2/frame_000379.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 382 is the file "Special/Animations/JammyLoading2/frame_000382.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 385 is the file "Special/Animations/JammyLoading2/frame_000385.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 388 is the file "Special/Animations/JammyLoading2/frame_000388.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 391 is the file "Special/Animations/JammyLoading2/frame_000391.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 394 is the file "Special/Animations/JammyLoading2/frame_000394.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 397 is the file "Special/Animations/JammyLoading2/frame_000397.jpeg".
[Figure of Jammy Nonmessy Loading Animation Frame 400 is the file "Special/Animations/JammyLoading2/frame_000400.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 403 is the file "Special/Animations/JammyLoading2/frame_000403.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 406 is the file "Special/Animations/JammyLoading2/frame_000406.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 409 is the file "Special/Animations/JammyLoading2/frame_000409.jpeg".
Figure of Jammy Nonmessy Loading Animation Frame 412 is the file "Special/Animations/JammyLoading2/frame_000412.jpeg".]

JammyLoadingAnimation is an initial animation track.

To compute unique setup of (T - JammyLoadingAnimation):
	if diaper messing >= 3 and a random number between 1 and 2 is 1:
		add Figure of Jammy Messy Loading Animation Frame 1 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 4 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 7 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 10 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 13 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 16 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 19 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 22 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 25 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 28 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 31 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 34 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 37 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 40 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 43 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 46 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 49 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 52 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 85 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 88 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 91 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 94 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 97 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 100 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 103 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 106 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 109 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 112 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 115 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 118 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 121 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 124 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 127 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 130 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 133 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 136 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 139 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 142 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 145 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 148 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 151 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 154 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 157 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 160 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 163 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 166 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 169 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 172 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 175 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 178 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 181 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 184 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 187 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 190 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 193 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 196 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 199 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 202 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 205 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 208 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 211 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 214 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 217 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 220 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 223 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 226 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 229 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 232 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 235 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 238 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 241 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 244 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 247 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 250 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 253 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 256 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 259 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 262 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 265 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 268 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 271 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 274 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 277 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 280 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 283 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 286 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 289 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 292 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 295 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 298 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 301 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 304 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 307 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 310 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 313 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 316 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 319 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 322 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 325 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 328 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 331 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 334 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 337 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 340 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 343 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 346 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 349 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 352 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 355 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 358 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 361 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 364 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 367 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 370 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 373 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 376 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 379 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 382 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 385 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 388 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 391 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 394 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 397 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 400 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 403 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 406 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 409 to the image-reel of T;
		add Figure of Jammy Messy Loading Animation Frame 412 to the image-reel of T;
	otherwise:
		add Figure of Jammy Nonmessy Loading Animation Frame 1 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 4 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 7 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 10 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 13 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 16 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 19 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 22 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 25 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 28 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 31 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 34 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 37 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 40 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 43 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 46 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 49 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 52 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 55 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 58 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 61 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 64 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 67 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 70 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 73 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 76 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 79 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 82 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 85 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 88 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 91 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 94 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 97 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 100 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 103 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 106 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 109 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 112 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 115 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 118 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 121 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 124 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 127 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 130 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 133 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 136 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 139 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 142 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 145 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 148 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 151 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 154 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 157 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 160 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 163 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 166 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 169 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 172 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 175 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 178 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 181 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 184 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 187 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 190 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 193 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 196 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 199 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 202 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 205 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 208 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 211 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 214 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 217 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 220 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 223 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 226 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 229 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 232 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 235 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 238 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 241 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 244 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 247 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 250 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 253 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 256 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 259 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 262 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 265 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 268 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 271 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 274 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 277 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 280 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 283 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 286 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 289 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 292 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 295 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 298 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 301 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 304 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 307 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 310 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 313 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 316 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 319 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 322 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 325 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 328 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 331 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 334 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 337 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 340 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 343 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 346 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 349 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 352 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 355 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 358 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 361 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 364 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 367 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 370 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 373 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 376 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 379 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 382 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 385 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 388 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 391 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 394 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 397 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 397 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 397 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 397 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 397 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 397 to the image-reel of T;
		[add Figure of Jammy Nonmessy Loading Animation Frame 400 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 403 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 406 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 409 to the image-reel of T;
		add Figure of Jammy Nonmessy Loading Animation Frame 412 to the image-reel of T;]

To decide which figure-name is the bannerImage of (T - JammyLoadingAnimation):
	decide on Figure of Jammy Nonmessy Loading Animation Frame 1.

The animationColour of JammyLoadingAnimation is 16765178.

To decide which number is the frameSlowness of (T - JammyLoadingAnimation):
	decide on 1.

[Figure of Mirror Loading Banner is the file "Special/Animations/Mirror/mirror banner.png".
Figure of Mirror Animation Frame 2 is the file "Special/Animations/Mirror/mirror2.png".
Figure of Mirror Animation Frame 3 is the file "Special/Animations/Mirror/mirror3.png".
Figure of Mirror Animation Frame 4 is the file "Special/Animations/Mirror/mirror4.png".
Figure of Mirror Animation Frame 5 is the file "Special/Animations/Mirror/mirror5.png".

MirrorAnimation is an initial animation track.
The image-reel of MirrorAnimation is {Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 4, Figure of Mirror Animation Frame 4, Figure of Mirror Animation Frame 4, Figure of Mirror Animation Frame 4, Figure of Mirror Animation Frame 4, Figure of Mirror Animation Frame 4, Figure of Mirror Animation Frame 4 }.

The animationColour of MirrorAnimation is 2497840.

To decide which figure-name is the bannerImage of (T - MirrorAnimation):
	decide on Figure of Mirror Loading Banner.

To compute unique setup of (T - MirrorAnimation):
	if diaper messing >= 3, now the image-reel of T is {Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 2, Figure of Mirror Animation Frame 4, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 3, Figure of Mirror Animation Frame 5, Figure of Mirror Animation Frame 5, Figure of Mirror Animation Frame 5, Figure of Mirror Animation Frame 5, Figure of Mirror Animation Frame 5, Figure of Mirror Animation Frame 5, Figure of Mirror Animation Frame 5 }.]

DQ Enabled ends here.
