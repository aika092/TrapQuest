Overall Description by Player Description begins here.

The description of yourself is "".

To say FullExamineDesc of (C - yourself):
	update player region;
	say "[PlayerDescription][ClothesDescription][OptionalDescription][line break][bold type]To find out in more detail about how you feel about various things, type [bold type][TQlink]attitudes[TQdlink][roman type].".

To say RealDesc:
	say "inside a metal chamber filled with a transparent liquid. You are motionless and have your eyes closed. You have straight black [RealHairDesc], [RealBreastDesc] and what look like [RealHipDesc]. [RealGapeDesc].".

Check examining the player:
	if the player is in Start or the player is in Capsule:
		say "Not now!" instead;

To say PlayerDescription:
	say "You are [TitleBimbo]. ";
	let hair-check be 0;
	let X be the largeness of hair;
	if there is a worn headgear, compute SelfExamineDesc of a random worn headgear;
	otherwise say "[TotalDesc of hair]";
	say "[TotalDesc of face][TotalDesc of breasts][TotalDesc of arms]";
	say "Below this [TotalDesc of Belly][TotalDesc of hips][TotalDesc of thighs]";
	[Was:
	say "[if the player is possessing a penis][TotalDesc of penis][end if][if the player is possessing a vagina][TotalDesc of vagina][end if][TotalDesc of asshole]".] [#LXorDD]
	if the latex-transformation of the player > 2, say "Your [LatexFlav]skin [if the latex-transformation of the player > 7]is now explained: [one of]this darned game has transformed you into a sex doll![or]you've been turned into one of this stupid game's sex dolls![or]there's no difference you can see between you now and one of the stupid sex dolls roaming around.[or]you look like a dumb sex-doll![or]people might mistake you for just another sex doll.[at random][otherwise]has you [one of]a little worried[or]more than a little concerned[or]feeling worried[or]a little nervous[at random] about just what that means.[end if]";
	[#LXorDD Note that if the player has no penis AND no vagina, they have a doll-like mound and TotalDesc of penis covers that case.]
	say "[if the player is possessing a penis or the player is not possessing a vagina][TotalDesc of penis][end if][if the player is possessing a vagina][TotalDesc of vagina][end if][if the player is possessing a penis and the player is possessing a vagina]That's right: you now have both a [penis] AND a [vagina]. You're a futa![line break][TotalDesc of asshole]";
	if players-dick-is-detached > 0:
		if player is carrying players-detached-dick:
			say "[first custom style]Now I need to find some way, or someone, to reattach my penis before I lose it again![roman type][line break]";
		otherwise if player is wearing players-detached-dick:
			say "[one of][first custom style]I need to get my [DetachedPenis] to someone who knows how to reattach it! Hopefully, I can keep it safe by, uh, hiding it away like I have.[roman type][or][first custom style]Now to get my [DetachedPenis] to someone magical, who can reattach it! They won't mind I've, uh, kept it safe inside me the way I have, right?[roman type][at random][line break]";
		otherwise:
			say "[first custom style]I need to get my penis back, and somehow reattach it![roman type][line break]".

To say ClothesDescription:
	if the player is naked:
		say "You are completely naked. [if the bimbo of the player > 6 and diaper quest is 1][line break][variable custom style]I'm going to get in trouble![roman type][line break][otherwise if the humiliation of the player > 15000 and the humiliation of the player < 40000][line break][second custom style]How naughty![roman type][line break][end if]";
	if there is a worn cowbelled clothing:
		say "A loud clanging accompanies your movement thanks to a cowbell attached to your neck. ";
	otherwise if there is a worn belled clothing:
		say "A gentle jingling accompanies your movement thanks to the bells on your clothing. ";
	if the latex-transformation of the player >= 7: [#LXorDD]
		say "You are not able to speak due to your latex mouth being kept in a permanent O-shape.[line break]";
	repeat with B running through worn bondage: [#LXorDD Moved this up one in case you're gagged and the doll, as they flow well together.]
		compute SelfExamineDesc of B;
	repeat with S running through worn shoes:
		compute SelfExamineDesc of S;
	repeat with O running through worn overdresses:
		compute SelfExamineDesc of O;
		if O is audible jiggles and the largeness of breasts > 1, say "Your [ShortDesc of O] is vocalising the sound your [BreastDesc] make as they [BreastBounceDesc].";
	repeat with S running through worn skirts:
		compute SelfExamineDesc of S;
	if a random stethoscope is worn by the player, say "You have a fancy looking stethoscope hanging around your neck. ";
	if there is a worn tattoo:
		let images-saved be images visible;
		now choice in row 2 of the Table of Settings is 0; [we temporarily disable images so we can use the descriptions of tattoos.]
		repeat with T running through worn tattoos:
			say "[tattoo-desc of T]";
		now choice in row 2 of the Table of Settings is images-saved;
	if the player is glue stuck:
		say "Oh. And you've also managed to glue yourself to the floor.";
	if debugmode is 1, explain appearance.

To say PregDescription:
	if the pregnancy of the player is 3:
		let EN be the total egg count of vagina;
		say "[if EN > 5]a rather large number of eggs[otherwise if the large egg count of vagina > 1][large egg count of vagina] giant monster eggs[otherwise if the large egg count of vagina is 1]a single giant monster egg[otherwise if EN > 1][EN] eggs[otherwise]a single monster egg[end if] inside your womb";
	otherwise if the number of family things is 1:
		say "[PregGrowth of the father] inside your womb";
	otherwise:
		say "an unknown[if inhuman pregnancy > 0] (and hopefully human)[end if] child".

To say IncontinenceDescription:
	say "[if the player is bladder incontinent]You are totally unable to control when you urinate[otherwise if the bladder-incontinence of the player >= 6]You have serious difficulties holding onto your bladder, and often don't notice that you need to pee until it's almost too late[otherwise if the bladder-incontinence of the player >= 4]You have significant problems with accidental wetting, and sometimes don't notice that you need to pee until it's almost too late[otherwise if the bladder-incontinence of the player >= 1]You are starting to have some very unusual problems with holding onto your bladder, something that usually only happens to the very old, very young, and some women after they've given birth[otherwise if diaper messing >= 3 and the rectum-incontinence of the player < 1]Your control of your bladder is mostly normal[otherwise]Your control of your bladder is mostly normal. But something tells you that even though nothing specific has weakened your bladder, in this universe, it's still a bit more tricky to avoid wetting yourself than in the real world[end if][if the player is not bladder diaper aware and (diaper messing < 3 or the player is rectum diaper aware)]. Furthermore, you don't automatically notice when you have wet a diaper - you will have to remember to [bold type]examine[roman type] it manually to check[end if].";
	if the player is not bladder incontinent and the irritable-bladder of the player > 0, say "When you feel the need to pee, [if the irritable-bladder of the player < 20]it doesn't take too long before you start to feel[otherwise if the irritable-bladder of the player < 50]you quickly become[otherwise]you almost instantly become[end if] extremely uncomfortable and unable to focus.";
	if diaper messing >= 3:
		say "[if the player is rectum incontinent]You are totally unable to control when you poop[otherwise if the rectum-incontinence of the player >= 6]You have serious difficulties holding onto your poop, and often don't notice that you need to make pushies until it's almost too late[otherwise if the rectum-incontinence of the player >= 4]You have significant problems with accidentally letting go of your bowels, and sometimes don't notice that you need to need to go number two until it's almost too late[otherwise if the rectum-incontinence of the player >= 1]Your rectal muscles are slightly weakened, making it somewhat more challenging to hold onto your bowels than it should be[otherwise]Your ability to hold in your number twos until you make it to the toilet is pretty normal. But something tells you that even though nothing specific has weakened your continence, in this universe, it's still a bit more tricky to avoid soiling yourself than in the real world[end if][if the player is not bladder diaper aware and the player is not rectum diaper aware]. Furthermore, you don't automatically notice when you have wet or messed a diaper - you will have to remember to [bold type]examine[roman type] it manually to check[otherwise if the player is not rectum diaper aware]. Furthermore, you don't automatically notice when you have messed a diaper - you will have to remember to [bold type]examine[roman type] it manually to check[end if].";
		if the player is not rectum incontinent and the irritable-rectum of the player > 0, say "When you feel the need to poop, [if the irritable-rectum of the player < 20]it doesn't take too long before you start to feel[otherwise if the irritable-rectum of the player < 50]you quickly become[otherwise]you almost instantly become[end if] extremely uncomfortable and unable to focus.";
	if debuginfo > 0:
		say "[input-style]Bladder Incontinence [bladder-incontinence of the player] / 10[if the max-bladder-incontinence of the player < 10] [bracket]capped at [the max-bladder-incontinence of the player][close bracket][end if]; Bladder Irritability [irritable-bladder of the player * 0.1]%[run paragraph on]";
		if diaper messing >= 3, say "; Bowel Incontinence [rectum-incontinence of the player] / 10[if the max-rectum-incontinence of the player < 10] [bracket]capped at [max-rectum-incontinence of the player][close bracket][end if]; Bowels Irritability [irritable-rectum of the player * 0.1]%[run paragraph on]";
		say ")[roman type][line break]".

To say PublicDisgraceDescription:
	let PD be the public disgrace of the player;
	if PD > 0 and infamy fetish > 0:
		if PD < 20:
			say "There's likely a small amount of embarrassing footage of you on the Internet, but nothing too bad or too widespread.";
		otherwise if PD < 500:
			say "There's footage of you on the Internet, and it's likely pretty devastating. Who knows exactly how many people have seen your shame? It's quite possible that somebody will recognise you. If you can't find a way to find it and get it taken down soon, you'll likely never be able to live it down.";
		otherwise if PD < 2000:
			say "There's certainly some pretty damning explicit footage of you on the Internet. It seems quite likely that someone will have recognised you by now. If they decide to share it further you'll never be able to live it down.";
		otherwise if PD < 5000:
			say "Footage of you in extremely shameful situations exists across the Internet, probably with you easily identifiable in most if not all of it. Irreparable damage has been done to your reputation - you'll be the laughing stock of your home town from now until the end of time. Unless you can somehow find a way to do some damage control and get it all taken down, you'll probably never be able to get a proper job again.";
		otherwise:
			say "You are acutely aware that by now you are likely infamous on the Internet. Everyone knows your name, age, where you come from, and [if diaper quest is 1]they all believe you're some attention seeking, exhibitionist, humiliation craving, diaper loving pervert[otherwise]what the inside of your [asshole] looks like[end if]. You know what you'll see the next time you check your Twitter profile: hundreds of thousands if not millions of new followers, and countless mentions discussing how brave and/or disgusting you are, not to mention endless unsolicited explicit DMs. You'll never get a real job again, but perhaps you could now make a living selling certain 'premium snapchat' services to discerning degenerates...[line break][variable custom style][if the player is shameless]So much attention... all for me... how humiliating! It makes me horny just thinking about it[otherwise if the player is modest]No... I couldn't! I couldn't ever bring myself to put even more of myself out there...![otherwise]Could I really bring myself to become a camgirl? Debasing myself perverted men around the world... Surely not...?[end if][roman type][line break]";
		if debuginfo > 0, say "[input-style](Public Disgrace: [PD] / 5000)[roman type][line break]".

To say OptionalDescription:
	if the pregnancy of the player > 0, say "You are currently carrying [PregDescription].[if the latex-transformation of the player > 0 or the pregnancy of the player is 2]The pregnancy doesn't seem to be growing any bigger.[end if]";
	if the player is glue stuck:
		say "You are embedded in a mass of stretchy glue holding you helplessly down on the ground. ";
	if the player is drill stuck:
		say "You are stuck on a spinning drill! [if the latex-transformation of the player < 4]Your poor fuckhole is getting more and more sore by the second! [end if]";
	if the player is pole stuck:
		say "You are stuck on a dildo! [if the latex-transformation of the player < 3]Your hole is getting stretched further and further. [end if]";
	otherwise if the player is dildo stuck:
		if doll-stuck is "":
			say "You are impaled on a dildo mounted on a pole!";
		otherwise:
			say "Tinkly music plays as you gracefully [doll-stuck]";
	if the player is anally hook stuck:
		say "An ass hook is pulling your [asshole] apart from the inside! ";
	otherwise if the player is wedgie hook stuck:
		say "A wedgie hook is painfully holding your underwear up your butt crack! ";
	if the player is horse stuck:
		say "You are currently [if the latex-transformation of the player < 4]in significant pain, [end if]stuck on a wooden horse torture device! ";
	if the player is vine stuck:
		if the player is vine fucked:
			say "Vines are holding you still and fucking your [if the player is not possessing a vagina][asshole]! [otherwise][vagina]! [end if]";
		otherwise:
			if the player is upright, say "Vines are holding your ankles still! ";
			otherwise say "Vines are holding your wrists and ankles down, keeping you on your knees. ";
	otherwise if the player is live fucked:
		say "[BigFuckerDesc of random live thing penetrating a body part] is [if diaper quest is 1]punishing you[otherwise][one of]having fun with your body[or]using your body as a playground[or]currently defiling your body[at random][end if]. ";
	otherwise if there is a monster grabbing the player:
		say "[BigNameDesc of a random monster grabbing the player] [if diaper quest is 1]is punishing you[otherwise][GrabStatus of a random monster grabbing the player][end if]. ";
	if diaper quest is 1, say "[PerceivedAdultDesc][InternalsDesc][SorenessDesc][DiaperDisciplineDesc]";
	otherwise say "[PerceivedBimboDesc][InternalsDesc][SorenessDesc][line break][StatusDesc][BimboDesc]";
	if the raw luck of the player > 5:
		say "You've been having run of mostly bad luck. Surely the tide will turn soon.";
	otherwise if the raw luck of the player < -5:
		say "You've been having a decent streak of mostly good luck. Hopefully that doesn't mean that karma will catch up with you soon...";
	let NT be the number of in-play trophies;
	if NT > 0:
		say "You can sense that [if NT is 1]the trophy you earned from the Extra Credit Zone is slightly[otherwise]the [NT] trophies you have earned from the Extra Credit Zone are each[end if] improving your luck.";
	if the player is stealthy:
		let S be the stealth of the player;
		say "[bold type]You are currently able to act stealthy[roman type] [if S < 2]but you are currently wearing things that make you very visible, so everyone will probably notice you anyway[otherwise if S < 4]so there is a reasonable chance that you can slip past unnoticed[otherwise]and you are very well concealed, so there is a high chance that you can slip past wherever you like unnoticed[end if].";
	if diaper lover >= 1, say IncontinenceDescription;
	if infamy fetish > 0, say PublicDisgraceDescription.

To say GrabStatus of (M - a monster):
	say "is restraining you".

Overall Description ends here.
