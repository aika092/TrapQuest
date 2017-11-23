Conversation by Monster Framework begins here.

To say speech style of (M - a monster):
	if M is male, say first custom style;
	otherwise say second custom style.

[!<YourselfIsSeductive>+

Are you at risk of saying something lewd instead of what you intended?

+!]
Definition: yourself is seductive:
	if diaper quest is 1 and there is a worn baby pacifier, decide yes;
	if the player is a cheerleader, decide yes;
	repeat with C running through clothing worn by the player:
		if C is temptation, decide yes;
	repeat with T running through tattoos worn by the player:
		if T is spank my kitty tattoo, decide yes;
	decide no.


Chapter 1 Greeting


To compute talk option (N - 1) to (M - a monster):
	if times-met is 0, now times-met is 1; [this is a failsafe to make sure the first time greeting never displays twice.]
	let B be a random number from 1 to 4; [variable used so we can refer to bimbo seduce in the next function]
	if the player is a cheerleader and a random number between 1 and 2 is 1, now B is 1;
	let seduced be 0;
	if the player is seductive and B is 1 and M is raunchy:
		say "[BimboSeduce of M]";
		now seduced is 1;
		now M is interested; [This is to make sure we pass to the greeting response function]
	otherwise if M is penetrating a fuckhole and M is unfriendly:[Is this monster in the process of dominating the player?]
		say "[ToDominantGreeting of M]";
	otherwise if M is penetrating a fuckhole:[Is this monster acquiring carnal knowledge of the player, with permission?]
		say "[ToPartnerGreeting of M]";
	otherwise if there is a monster penetrating a fuckhole:
		if a random monster penetrating a fuckhole is unfriendly, say "[midDominanceGreeting of M]"; [is the player currently being dominated by another monster?]
		otherwise say "[InSexGreeting of M]"; [is the player currently having consensual sex]
	otherwise if the times-fucked of M > the times-dominated of M:
		say "[SubmissiveGreeting of M]";
	otherwise if the times-dominated of M > the times-fucked of M:
		say "[DominantGreeting of M]";
	otherwise if M is unfriendly:
		say "[UnfriendlyGreeting of M]";
	otherwise if the times-met of M < 2:[This should display the first time the player greets a monster.] 
		say "[FirstGreeting of M]"; [Note that the player has already "met" most monsters at least once if the monster is interested.]
	otherwise:
		say "[RepeatGreeting of M]";[This is the default greeting for most monsters]
	if M is interested:
		if seduced is 0:
			compute greeting response of M;[This is something that should be specific to every monster]
		otherwise:
			say "[BimboSeduced of M]";
	otherwise:
		if M is intelligent, now the boredom of M is 0;
		check perception of M.
		
		
[Submissive and dominant are switched for the monster, since they were on bottom when they got fucked, and on top when they fucked you.]
To compute greeting response of (M - a monster):
	if M is penetrating a fuckhole and M is unfriendly:
		say "[AsDominantResponse of M]";
	otherwise if M is penetrating a fuckhole:
		say "[AsPartnerResponse of M]";
	otherwise if there is a monster penetrating a fuckhole:
		if a random monster penetrating a fuckhole is unfriendly, say "[midDominanceResponse of M]"; [is the player currently being dominated by another monster?]
		otherwise say "[InSexResponse of M]"; [is the player currently having consensual sex]
	otherwise if the times-fucked of M > the times-dominated of M:
		say "[DominantResponse of M]";
	otherwise if the times-dominated of M > the times-fucked of M:
		say "[SubmissiveResponse of M]";[Obviously this doesn't actually have to be "submissive"]
	otherwise if M is unfriendly:
		say "[UnfriendlyResponse of M]";
	otherwise if the times-met of M < 2:
		say "[FirstResponse of M]";
	otherwise:
		say "[RepeatResponse of M]";
	now the boredom of M is 0;
	now M is interested.

To say FirstGreeting of (M - a monster):
	if the player is a santa's little helper:
		say "[variable custom style]'Merry Christmas!'[roman type][line break]";
	otherwise if bimbo of the player < 4:
		if the player is female:
			if M is neuter or M is male:
				say "[first custom style]'[one of]Hello.'[or]Hello, my name is [NameBimbo].'[or]Hello. I have something I want to ask you.'[at random][roman type][line break]";
			otherwise:
				say "[first custom style]'[one of]Hi there, pleased to meet you.'[or]Hello, my name is [NameBimbo].'[or]I can't say I'm glad to meet another woman here, but hello anyway.'[at random][roman type][line break]";
		otherwise:
			if M is neuter:
				say "[first custom style]'Hello there.'[roman type][line break]";
			otherwise if M is male:
				say "[first custom style]'[one of]Yo.'[or]Sup Dude.'[or]Hey man.'[at random][roman type][line break]";
			otherwise:
				say "[first custom style]'[one of]Hey baby! What's going on?'[or]Sup girl? I'm [NameBimbo].'[or]Hey. What's up baby?'[at random][roman type][line break]";
	otherwise if bimbo of the player < 7:
		if the player is female:
			if M is neuter or M is male:
				say "[first custom style]'[one of]Hi. What's your name?'[or]Hello, I'm [NameBimbo].'[or]Hi! Do you have time to talk?'[at random][roman type][line break]";
			otherwise:
				say "[first custom style]'[one of]Hi there, do you know if there's a way out?'[or]Hello, I'm [NameBimbo].'[or]Hello! I'm glad to see another woman here...you know what I mean.'[at random][roman type][line break]";
		otherwise:
			if M is neuter:
				say "[first custom style]'Hi there.'[roman type][line break]";
			otherwise if M is female:
				say "[first custom style]'[one of]Hello, I'm [NameBimbo]'[or]Hey. Are you trapped in here too?'[or]Hey, what's up?'[at random][roman type][line break]";
			otherwise:
				say "[first custom style]'[one of]Hey man. Got some time?'[or]Hey, I'm [NameBimbo].'[or]Hey, do you have a minute?'[at random][roman type][line break]";
	otherwise if bimbo of the player < 10:
		if M is neuter or M is male:
			say "[variable custom style]'[one of]Hey there!'[or]Hi!'[at random][roman type][line break]";
		if M is female:
			say "[variable custom style]'[one of]Hey girlfriend!'[or]What's going on, girlfriend?'[or]Hey girl!'[at random][roman type][line break]";
	otherwise if bimbo of the player < 12:
		if M is neuter:
			say "[first custom style]'Hi there.'[roman type][line break]";
		otherwise if M is female:
			say "[first custom style]'[one of]Hey there cutie.'[or]Hey there. *wink*'[or]Hi. You're totally hot!'[at random][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Hey there.'[or]Hey there cutie.'[or]Hey. Your muscles are really big.'[at random]'[roman type][line break]";
	otherwise if bimbo of the player < 15:
		if M is neuter:
			say "[first custom style]'Hi there.'[roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Mmm, I've never met you before, sexy.'[or]Hi there sexy.'[or]Hey sexy. Want to meet me somewhere?'[at random][roman type][line break]";
	otherwise:
		if M is neuter:
			say "[first custom style]'Hi there.'[roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Hey there sexy. My name is [NameBimbo].'[or]Hey cutie. You want to get out of here?'[or]Hey sweetie. Looking for a good time?'[at random][roman type][line break]".

To say UnfriendlyGreeting of (M - a monster):[long time coming! Makes sense to implement now that the player has real reason to greet unfriendly monsters.]
	if the bimbo of the player < 6:
		if the player is male:
			say "[first custom style]'[one of]Come on, let[']s talk about this dude!'[or]Hey man, we don[']t need to fight!'[or]I don[']t think you want to fight me dude, I[']ll kick your ass!'[or]Dude, I swear I didn[']t mean to piss you off.[at random][roman type][line break]";
		otherwise:
			say "[first custom style]'[one of]We don[']t have to fight, think about this!'[or]Stop attacking me, asshole!'[or]Leave me alone, I have my rights, asshole!'[or]If you hit me again I[']m going to hit back.[or][if M is female]Fucking bitch,[otherwise]Fucking ape,[end if] leave me alone!'[or]Hit me again and you[']ll hear from my lawyer.'[at random][roman type][line break]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style]'[one of]Don[']t hit me!'[or]Don[']t hurt me!'[or]You[']re probably right to be mad, but you don[']t have to hit me!'[or]Can[']t we figure things out without sex? I know it's easier, but you can't just do that all the time, right?'[or]Let's solve this without fucking me. Please?'[or]We can solve this without having sex, right?'[at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]We don[']t have to fight, do we? Couldn[']t we do...something else?'[or]Why hit me when you could be hitting me!'[or]I[']d rather fuck than fight, really.'[or]All I need to do is get on my knees and you[']ll forgive me?'[or]Can[']t you forgive me? I can make it worth your while...'[or]Couldn[']t we solve this with sex? Why aren[']t we doing that?'[at random][roman type][line break]".
	

[has this monster ever been greeted before?; Note that this is less expansive than the one above, but it should have a good amount of overlap.]
To say RepeatGreeting of (M - a monster):
	if the player is a santa's little helper:
		say "[variable custom style]'Merry Christmas!'[roman type][line break]";
	otherwise if bimbo of the player < 4:
		if the player is female:
			if M is neuter or M is male:
				say "[first custom style]'[one of]Hello. Again.'[or]Oh. You again.'[or]Hello.'[at random][roman type][line break]";
			otherwise:
				say "[first custom style]'[one of]Hi! Glad to see you again.'[or]Hello,  glad to see you're still managing to stay alive in this hell-hole.'[or]Hello again. It's nice to see you!.'[at random][roman type][line break]";
		otherwise:
			if M is neuter:
				say "[first custom style]'Hi there.'[roman type][line break]";
			otherwise if M is male:
				say "[first custom style]'[one of]Hey dude.'[or]Sup Dude.'[or]Hey man.'[at random][roman type][line break]";
			otherwise:
				say "[first custom style]'[one of]Hey baby! What's going on?'[or]Yo yo! Feeling lonely, baby?'[or]Hey, what's up baby?'[at random][roman type][line break]";
	otherwise if bimbo of the player < 7:
		if the player is female:
			if M is neuter or M is male:
				say "[first custom style]'[one of]Hey there!'[or]Hello!'[or]Hi!'[at random][roman type][line break]";
			otherwise:
				say "[first custom style]'[one of]Hello again. At least I'm not the only one stuck here.'[or]Hello again.'[or]Hello! We met before, right?'[at random][roman type][line break]";
		otherwise:
			if M is neuter or M is male:
				say "[first custom style]'[one of]Hi. It's always nice to see a friendly face.'[or]Hey, remember me? I'm [NameBimbo].'[or]Hey, do you have a minute?'[at random][roman type][line break]";
			otherwise:
				say "[first custom style]'[one of]Hello again. At least I'm not the only one stuck here.'[or]Hello again.'[or]Hello! We met before, right?'[or]Hey, remember me? I'm [NameBimbo].'[at random][roman type][line break]";			
	otherwise if bimbo of the player < 10:
		if M is neuter:
			say "[first custom style]'Hi there.'[roman type][line break]";
		otherwise if M is female:
			say "[variable custom style]'[one of]Hi! You're pretty!'[or]Hello, I'm [NameBimbo].'[or]Hi. Nice meet you!'[at random][roman type][line break]";
		otherwise:
			say "[variable custom style]'[one of]Hey there. You're kind of cute.'[or]You can call me [NameBimbo]. Can I call you anything?'[or]Hi! You look smart.'[at random][roman type][line break]";
	otherwise if bimbo of the player < 12:
		if M is neuter:
			say "[first custom style]'Hi there.'[roman type][line break]";
		otherwise if M is female:
			say "[first custom style]'[one of][or]Hey there cutie.'[or]Hey there. *wink*'[at random][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Hey there.'[or]Hey there cutie.'[or]Hi! There's a pair big sexy shoulders I haven't seen in a while!'[at random][roman type][line break]";
	otherwise if bimbo of the player < 15:
		if M is neuter:
			say "[first custom style]'Hi there.'[roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Hi. We should really get to know each other better.'[or]Hi there sexy. I know a fun way to pass some time.'[or]Hey sexy. Want to meet me somewhere?'[at random][roman type][line break]";
	otherwise:
		if M is neuter:
			say "[first custom style]'Hi there.'[roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Hey there sexy. Up for a good time?'[or]Hey there big boy.'[or]Hey sexy. I know a fun way to pass some time.'[at random][roman type][line break]".

[Has the player ever used the fuck skill on this monster? I think that since most fuckable monsters are permanently aggressive once you dominate them, it's fine to have some more forward greetings.]
To say DominantGreeting of (M - a monster):
	if the player is male and the sex addiction of the player < 7:
		say "[first custom style]'[one of]Yo bitch! You might as well just get on your knees now.'[or]Yo, bitch! Stay there, I want to fuck you again.'[or]Hey bitch, how did it feel taking my BIG DICK.'[or]Hey bitch, how'd you like to suck my [manly-penis]?'[or]Hey bitch. Ready to go again?'[or]What's up bitch? Ready for round [the times-dominated of M + 1]?'[or]Hey bitch. Up for another round?'[at random][roman type][line break]";
	otherwise if the sex addiction of the player < 14:[for female players]
		say "[variable custom style]'[one of]Hello. Sorry about earlier, I just really needed a win.'[or]Hi. Can we patch things up? It kind of got out of hand earlier.'[or]Hello. I hope I wasn't rough with you, I just needed a turn on top.'[or]Hey. I know what happened, but can we put that behind us? We have to stick together in here.'[at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Hey there. Isn't it your turn to be on top?'[or]Hey babe. Do you want the next turn on top?'[or]Hi! Earlier was fun, but wouldn't it be great if you had a turn on top?'[at random][roman type][line break]".

[This is a greeting for monsters that have previously dominated the player. this is done with sex addiction, but it can easily be switched to straight up bimbo. Note that the "baby daddy" stuff is here, since it should be impossible for a father to have not fucked the player. Unless of course the "father" is the fairy, but we can simply use a custom greeting function instead.]
To say SubmissiveGreeting of (M - a monster):
	let N be times-fucked of M;
	let P be N + 1;
	if M is mating and the bimbo of the player > 12:
		say "[second custom style]'[one of][if M is not male]Hey there mommy!'[otherwise]Hey there baby daddy.'[end if][or]Hey baby. Want to make out?'[or]Hey babe! Let's hold hands!'[or][if M is not male]So, want to be girlfriend girlfriend now that we have a baby together?'[otherwise]Want to be boyfriend girlfriend now that we have a baby together?'[end if][at random][roman type][line break]";
	otherwise if the sex addiction of the player < 4:
		say "[first custom style]'[one of]Stay away from me, asshole!'[or]Stay away from me you asshole!'[or]I want nothing to do with you.'[at random][roman type][line break]";
	otherwise if the sex addiction of the player < 7:
		say "[first custom style]'[one of]I hope you're satisfied. You're not going to get away with treating me like that again.'[or]I hope you fucking enjoyed that, because it's not happening again.'[or]Don't think you're going to get away with what you did to me!'[or]Isn't [if N is 1]once[otherwise][N] times[end if] enough, asshole?'[at random][roman type][line break]";
	otherwise if the sex addiction of the player < 10:
		say "[variable custom style]'[one of]Who do you think you are, treating me like that...'[or]This isn't over, I'll make you pay for what you've done....later.'[or]I guess I can forgive you for what happened. If you promise not to do it again.'[at random][roman type][line break]";
	otherwise if the sex addiction of the player < 12:
		say "[variable custom style]'[one of]You're not half bad, you know.'[or]I forgive you for what happened earlier. It wasn't that bad...'[or]I guess I could stand to fuck you again. But only if you ask!'[or]Ok, if you apologize for what happened earlier, I'll let you have a round [P].'[at random][roman type][line break]";
	otherwise if the sex addiction of the player < 15:
		say "[second custom style]'[one of]Hey there. You sure know how to have a good time.'[or]I can go another round, if you want.'[or]So, want to go again? That last fuck was pretty good.'[or]You sure know how to please a lady. Want to go for round [P]?'[at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Hey baby. Ready to put [if M is male]your [manly-penis][otherwise]something[end if] in me again?'[or]Feel like another round, [if M is male]big boy'[otherwise]sexy?'[end if][or]Hey baby. Do you want to go again?'[or]I'm always up for another round, sexy.  Always.'[at random][roman type][line break]".

[Is the player currently being dominated, but not by this specific monster? If so, this greeting should display in all but the edgiest of edge cases. Ironically, it appears most throughout every monster's section]
To say midDominanceGreeting of (M - a monster):
	let G be nothing;
	if the player is fully occupied, now G is face;
	otherwise now G is a random fuckhole that is not actually occupied;
	if the sex addiction of the player < 4:
		say "[first custom style]'[one of]I need help! I didn't agree to this!'[or]HELP! HELP!'[or]Hey! I didn[']t agree to this!'[at random][roman type][line break]";
	otherwise if the sex addiction of the player < 8:
		say "[first custom style]'[one of]Are you really going to stand there and watch?'[or]Why are you watching? Do something!'[or]Don't just stand there! Get help!'[at random][roman type][line break]";
	otherwise if the sex addiction of the player < 12:
		say "[variable custom style]'[one of]What are you waiting for? You won't just let this happen, will you?'[or]Help me! Please! I'll do anything!'[or]Do something about this!'[at random][roman type][line break]";
	otherwise if the sex addiction of the player < 16:
		say "[second custom style]'[one of]Your turn next, baby!'[or]Go ahead...'[or]You can fuck me next!'[at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Join in!'[or]Want to make this a gangbang, sexy?'[or]Don't worry, I can handle another [if M is male]guy[otherwise]girl[end if]!'[or]Don't stand there, take my [G]!'[or]Don't just stand there, my [G] is empty!'[at random][roman type][line break]".

[Greeting for monsters that encounter the player having consensual sex with another monster.]
To say InSexGreeting of (M - a monster):
	if the player is male and the raw sex addiction of the player < 7:
		say "[first custom style]'H-hey, uh, don't tell anybody you saw this!'[roman type]";
	otherwise if the raw sex addiction of the player < 7:
		say "[first custom style]'W-when did you get here! This is private!'[roman type]";
	otherwise if the player is male and the raw sex addiction of the player < 14:
		say "[variable custom style]'What can I do to make sure you don[']t tell anybody you saw this?'[roman type]";
	otherwise if the raw sex addiction of the player < 14:
		say "[variable custom style]'[one of]You can watch if you want.'[or]Wait your turn.'[at random][roman type]";
	otherwise:
		say "[second custom style]'Hey cutie, want to make this even more interesting?'[roman type]";
	
[Greeting for monsters that are currently having sex with the player - with permission!!!]
To say ToPartnerGreeting of (M - a monster):
	if the player is male and the raw sex addiction of the player < 7:
		say "[first custom style]'Don[']t tell anybody about this!'[roman type]";
	otherwise if the raw sex addiction of the player < 7:
		say "[first custom style]'Just so you know, this is a one time thing.'[roman type]";
	otherwise if the player is male and the raw sex addiction of the player < 14:
		say "[variable custom style]'If you keep quiet about this, I could make it worth your while...'[roman type]";
	otherwise if the raw sex addiction of the player < 14:
		say "[variable custom style]'This is just a one-time thing...unless you really need to go again.'[roman type]";
	otherwise:
		say "[second custom style]'[one of]How am I, sexy?'[or][if M is penetrating vagina]How is my pussy?[otherwise]How do you like my fuckhole, baby?[end if][at random][roman type]".

[Greeting for monsters that are currently dominating the player.]
To say ToDominantGreeting of (M - a monster):
	let F be a random body part penetrated by M;
	if the player is female and the relevant sex addiction of M < 4:
		say "[first custom style]'[one of]Get off me, asshole!'[or]Stop it, I'm not into you!'[or]Leave me alone!'[or]Let go of me you [bitch]!'[at random][roman type][line break]";
	otherwise if the player is male and the relevant sex addiction of M < 4:
		say "[first custom style]'[one of]Get off me!'[or]No! This isn't cool at all!'[or]Stop! This is way uncool!'[or]Dude!'[as decreasingly likely outcomes][roman type][line break]";
	otherwise if the relevant sex addiction of M < 8:
		say "[first custom style]'[one of][or]Get off! My [F] can't take much more!'[or]Please! There must be someone else you can do this to!'[or]Not my [F]!'[at random][roman type][line break]";
	otherwise if the relevant sex addiction of M < 12:
		say "[second custom style]'[one of]Cum already!'[or]Please, just hurry up!'[or]Ah-ah-fuck!'[or]Hurry up!'[at random][roman type][line break]";
	otherwise if the relevant sex addiction of M < 16:
		say "[second custom style]'[one of]Right there! Right there!'[or]Cum inside me!'[or]Ooh! Yeah!'[or]This is fun!'[at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]HARDER!'[or]FUCK MY [F]! FUCK MY [F]!'[or][if pregnancy fetish is 1 and F is vagina]Breed me!'[otherwise]Make me your fucking bitch!'[end if][or]Oooh! Your [manly-penis] is so fucking big!'[or]That feels so fucking good!'[or]Do you like my [F], baby?'[at random][roman type][line break]".

[Some extra stuff added into the vanilla bimboseduce function. It's modular now, so someone like a dominatrix could simply define this function to refer to a strap on or particularly large breasts.]
To say BimboSeduce of (M - a monster):
	say "[if the player is a cheerleader]Unfortunately, the words that come out don't really sound like 'you' at all![otherwise]You try to say one thing, but somehow the words that come out of your mouth are completely different:[end if][line break]";
	if diaper quest is 1:
		if there is a worn pacifier, say "[variable custom style][muffled sounds][roman type][line break]";
		otherwise say "[second custom style]'[one of]Ooh, I'm a bad girl, punish me!'[or]Please treat me like I deserve!'[or]Do you want to be my [daddy of M]?'[in random order][roman type][line break]";
	otherwise if the player is a cheerleader:
		say CheerSeduce of M;
	otherwise if M is neuter:
		say "[second custom style]'[one of]Ooh, I'm a bad girl, punish me!'[or]Please fuck me!'[at random][roman type][line break]";
	otherwise if M is male:
		say "[second custom style]'[one of]Ooh, I'm a bad girl, punish me!'[or]Please fuck me!'[or]Wouldn't it be fun, to like, treat me like a fucktoy?'[or]Mmm, anal is my favourite...'[or]Can I suck your [manly-penis]?'[or]Can I please give you a blowjob?'[or]Hey baby, need a cumdump?'[or]Want to know what the back of my head looks like?'[or]Fuck me, I'm ready right now!'[or][if bukkake fetish is 0]When was the last time you got your [manly-penis] sucked, sexy?'[otherwise]Wouldn't it be fun, to like, jizz on my face?'[end if][or]I do anal.'[or]I'll let you cum inside!'[or]I've been a naughty girl and I need a good hard fucking!'[purely at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Ooh, I'm a bad girl, punish me!'[or]Let me eat your pussy!'[or]I want to put my tongue in your ass!'[or]I'll go down on you!'[or]Please fuck me!'[or]Please sit on my face!'[or]Wouldn't it be fun, to like, treat me like a fucktoy?'[purely at random][roman type][line break]";
		
To say CheerSeduce of (M - a monster):
	if M is unfriendly:
		say "[second custom style]'[one of]Aren[']t you like, excited to fuck a super hot cheerleader?[or]I love talking almost as much as I love fucking. And I reeeaally love fucking.'[or]Do you even want to have sex with me? I[']ve been talking pretty long and you[']re not fucking me yet.'[or]People tell me to shut up all the time, but it's like, I have so many interesting things to say!'[or]My name is [NameBimbo], but most people call me shut up slut!'[or]I[']m on the cheerleading team!'[or]Go Team!'[in random order][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Want to know why they call me the head cheerleader?'[or]Anal is like, waayy underrated. I can prove it if you want.'[or]Oooooh...I have a great idea. Let's have sex!'[or]I[']m on the cheerleading team. Wanna fuck me?'[or]Cheerleading isn[']t hard, it's easy. Just like meee~'[or]I like to fuck bareback. Figured you would want to know.'[or]Hey cutie, want to be the top of the pyramid?'[at random][roman type][line break]".
	

To say BimboSeduced of (M - a monster):
	if M is neuter:
		say "Something seems to suddenly switch in the [M]'s demeanour and its stance becomes aggressive.";
		anger M;
		now the boredom of M is 0;
	otherwise if the player is a cheerleader and M is unfriendly and a random number between 1 and 3 is 1 and M is not grabbing the player:
		say "Something seems to suddenly switch in the [M]'s head, [his of M] grin changing into a nonplussed grimace. It must be something you said, the [M] doesn't look interested in you anymore.[line break]";[You ran your mouth so much the monster lost interest.]
		now the scared of M is 30;
	otherwise:
		say "Something seems to suddenly switch in the [M]'s head and [his of M] [if M is friendly]friendly[otherwise]idle[end if] smile changes into a devilish grin.  Uh oh... [line break][variable custom style]Was it something I said?![roman type][line break]";
		anger M;
		now the boredom of M is 0.

[This is a response to a first time greeting.]
To say FirstResponse of (M - a monster):
	if M is friendly:
		say "[speech style of M]'Hello.'[roman type][line break]";

[This is a generic response to a repeat greeting by the player.]
To say RepeatResponse of (M - a monster):
	say "[speech style of M]'Hello.'[roman type][line break]";

[This is a generic response from unfriendly monsters. This way, there doesn't have to be a huge tree in first response and repeat response that looks exactly the same.]
To say UnfriendlyResponse of (M - a monster):
	say "[speech style of M]'Shut up.'[roman type][line break]"

To say AsDominantResponse of (M - a monster):
	say "The [M] emits a primal growl.".
	
To say AsPartnerResponse of (M - a monster):
	say "[speech style of M]'Stop ruining the moment!'[roman type]".

[This is a response to a player greeting if this monster has ever been dominated by them. Easy enough to replaced, and should be replaced for more dignified monsters like the gladiator.]
To say SubmissiveResponse of (M - a monster):
	say "[speech style of M]'Fuck you!'[roman type][line break]"

[This is a response to generic greetings for monsters that have previously dominated the player.]
To say DominantResponse of (M - a monster):
	if M is unfriendly, say "[speech style of M]'Time for another round!'[roman type][line break]";
	otherwise say "[speech style of M]'That was in the past.  We're cool now.'[roman type][line break]";

[This is a response to greetings while the player is being dominated. Not sure the apostrophes I've used here will work since they are not encased within a [one of] function.]
To say midDominanceResponse of (M - a monster):
	if M is willing to shag and M is unfriendly:
		say "[speech style of M]'Oh I[']ll help you all right.'[roman type][line break]";
	otherwise if M is willing to shag and the player is seductive:
		say "[speech style of M]'Oh I[']ll help you all right.'[roman type][line break]";
	otherwise if M is not male:
		say "[speech style of M]'Help yourself, Skank.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'No.'[roman type][line break]".

To say InSexResponse of (M - a monster):
	if M is unfriendly:
		say "[speech style of M]'Sorry, can[']t pass up this chance!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Looks fun, enjoy!'[roman type][line break]".

Chapter 2 Questioning

[Each monster has a value called "question-asked," which tracks the skill question. When the player asks something of a monster, they have a chance to ask the "skill question,".  Questions are otherwise chosen randomly.]
To compute talk option (N - 2) to (M - a monster):
	let I be the intelligence of the player;
	if I < 6, now I is 6;
	let R be a random number between 1 and I;
	let B be a random number from 1 to 4; [this is for bimboseduce. We define the variable so we can use it in the next function.]
	let Q be a random number between 2 and 12;
	if debugmode is 1:
		say "[R] = R. [Q] = Q.";
	if player is seductive and M is raunchy and B is 1:
		now M is interested;
		say "[BimboSeduce of M]";
		say "[BimboSeduced of M]";
	otherwise if R > 4:
		say "[TeachQuestion of M]";
		if the questioned of M > 290 or M is unfriendly or M is uninterested:
			compute annoyance of M;
		otherwise:
			compute teaching of M;
	otherwise:
		if Q < 4:
			say "[WhereQuestion of M]";
		otherwise if Q < 6:
			say "[WhoQuestion of M]";
		otherwise if Q < 8:
			say "[StoryQuestion of M]";
		otherwise if Q < 10:
			say "[EscapeQuestion of M]";
		otherwise:
			say "[AdviceQuestion of M]";
		compute answer of M to Q;
	now the question-asked of M is 1.[This is to prevent players from spamming question until they get the outcome they want.]



[questioning npcs will annoy them slightly, but for most you will get 3-4 questions out of them before they tell you to leave them be

BY DEFAULT:

Normal questions increase a value, "questioned" by 100
at 300 questioned, npc's stop giving answers.
when the npc is annoyed, questioned still increases, but at a lowered rate.]

To compute answer of (M - a monster) to (Q - a number):
	if the questioned of M > 290 or M is uninterested or M is unfriendly:
		compute annoyance of M;
	otherwise if Q < 4:
		say "[WhereAnswer of M]";
	otherwise if Q < 6:
		say "[WhoAnswer of M]";
	otherwise if Q < 8:
		say "[StoryAnswer of M]";
	otherwise if Q < 10:
		say "[EscapeAnswer of M]";
	otherwise:
		say "[AdviceAnswer of M]";
	if the questioned of M <= 290:
		increase the questioned of M by 100;
	otherwise:
		increase the questioned of M by 25.

[this is where we determine whether or not a monster is willing to punish the player for questioning them so much. We also put the "uninterested" stuff here.]
To compute annoyance of (M - a monster):
	if M is uninterested: 
		say "The [M] doesn't seem to realize you're talking to [him of M].";
	otherwise if M is unfriendly:
		say "Shut up.";
	otherwise if the questioned of M > 290:
		say "I thought I said I didn't want to answer any more questions. Oh well, guess I'll have to shut you up myself.";
		anger M;
	otherwise:
		say "[first custom style]'I[']m getting a bit tired of answering questions. Can you lay off for a bit?'[roman type][line break]".

To compute teaching of (M - a monster):
	let R be a random number between 1 and 3;
	if R is 1:
		say "The [M] teaches you a fun magic trick. You're amazed and impressed at how much one can do with simple finesse!";
		IntUp 1;
	otherwise:
		say "The [M] teaches you a 'fun' magic trick. You're not impressed.";
		Dignify 200;
	if the questioned of M <= 190:
		increase the questioned of M by 100;[The questioned gain is separated from the main function so we can easily customize as needed]
	otherwise:
		increase the questioned of M by 25.

[Skill question. This is in case there's an npc that wants this to be modular]
To say TeachQuestion of (M - a monster):
	say "[variable custom style]'Can you teach me anything useful?'[roman type][line break]";

To say WhereQuestion of (M - a monster):
	say "[variable custom style]'[if the player is a santa's little helper]Hmm, this isn't Lapland.  [end if]Where [one of]are we?'[or]am I?'[at random][roman type][line break]".
	
To say WhoQuestion of (M - a monster):
	if the bimbo of the player < 11:
		say "[first custom style]'Who are you?'[roman type][line break]";
	otherwise:
		say "[second custom style]'Got a name, [if M is male]big boy?'[otherwise]sexy?'[end if][roman type][line break]".

To say StoryQuestion of (M - a monster):
	if the player is a santa's little helper:
		say "[variable custom style]'How did you come to be here this Christmas?'[roman type][line break]";
	otherwise:
		say "[variable custom style]'What's your story?'[roman type][line break]".

To say EscapeQuestion of (M - a monster):
	if the player is a santa's little helper:
		say "[variable custom style]'I need to get back to Santa's grotto.  Any ideas?'[roman type][line break]";
	otherwise:
		say "[variable custom style]'How do I get out of here safely?'[roman type][line break]".

[This should make it easier to add more classes to this function in the future.]
To say AdviceQuestion of (M - a monster):
	if the player is a santa's little helper:
		say "[variable custom style]'Any advice for [if the bimbo of the player > 6]a naughty[otherwise]an innocent[end if] little helper?'[roman type][line break]";
	otherwise if the player is a princess:
		say "[variable custom style]'Any advice for an adventurous princess?'[roman type][line break]";
	otherwise if the player is a maid:
		say "[variable custom style]'Any advice for a cunning maid?'[roman type][line break]";
	otherwise if the bimbo of the player > 13:
		say "[second custom style]'Any advice for a lonely girl?'[roman type][line break]";
	otherwise if the intelligence of the player > 10:
		say "[first custom style]'Any advice for an intrepid adventurer?'[roman type][line break]";
	otherwise:
		say "[first custom style]'Any advice for a brave explorer?'[roman type][line break]".
		
[this is where the player does or does not learn a skill. I figure that since this involves heavy code, it should keep the "say" for later]

To say WhereAnswer of (M - a monster):
	say "[first custom style]'We're here. Obviously.'[roman type][line break]".
	
To say WhoAnswer of (M - a monster):
	say "[first custom style]'Why, I[']m Generic the npc!'[roman type][line break]".
	
To say StoryAnswer of (M - a monster):
	say "[first custom style]'Trapquest.'[roman type][line break]".

To say EscapeAnswer of (M - a monster):
	say "[first custom style]'Close the window.'[roman type][line break]".

To say AdviceAnswer of (M - a monster):
	if watersports fetish is 1:
		say "[first custom style]'Don[']t eat yellow snow. Unless you get off on it or something.'[roman type][line break]";
	otherwise:
		say "[first custom style]'Don[']t eat yellow snow.'[roman type][line break]".

Chapter 3 Drink Requesting

[Question and greet got attention, so why not this? The idea here is that the player can have a potentially different "wet my throat" for each monster, and each monster has two "avenues" of response. the unfriendly clause should have priority over the uninterested clause.]
To compute talk option (N - 3) to (M - a monster):
	let B be a random number from 1 to 4;
	if B is 1 and the player is seductive and M is raunchy:
		now M is interested;
		say "[BimboSeduce of M]";
		say "[BimboSeduced of M]";
	otherwise:
		say "[DrinkRequest of M]";
		if M is not intelligent:
			say "It doesn't look like the [M] speaks English.";
		otherwise if M is uninterested:
			say "The [M] doesn't seem to realise you're talking to [him of M].";
		otherwise if M is willing to urinate and watersports fetish is 1 and a random number between 1 and 20 < the urine taste addiction of the player:
			compute M urinating;
		otherwise if the semen taste addiction of the player > 5 and M is willing to do oral and (M is male or M is wench):
			now the the player-reaction of the player is submitting;
			now presented-orifice is face;
			humiliate 225;
			check consensual submissive sex of M;
		otherwise if M is friendly:
			compute friendly drink of M;
		otherwise if M is unfriendly:
			compute unfriendly drink of M.

To say DrinkRequest of (M - a monster):
	say variable custom style;
	if the player is a santa's little helper:
		say "'I'm thirsty.  Got any mulled wine?'";
	otherwise if watersports fetish is 1 and the urine taste addiction of the player > 5 and the urine taste addiction of the player >= the semen taste addiction of the player and M is willing to urinate:
		say "[if the urine taste addiction of the player < 9]Please, do you have anything I could drink?  I would even drink your pee if you wanted...'[otherwise if the urine taste addiction of the player < 12]Please, do you have anything I could drink from? I'll even drink your [urine] if you'll let me.'[otherwise if the urine taste addiction of the player < 15]I'd love to drink your [urine] if you'll let me.  Anything will do though, I'm very thirsty.'[otherwise]Please may I have the privilege of being your toilet?  I promise I'll savour every last drop.'[end if]";
	otherwise if the semen taste addiction of the player > 5 and M is willing to do oral and (M is male or M is wench):
		say "[if the semen taste addiction of the player < 9]Please, do you have anything I could drink?  I would even drink your cum if you wanted...'[otherwise if the semen taste addiction of the player < 12]Please, do you have anything I could drink from? I'll even drink your [semen] if you'll let me.'[otherwise if the semen taste addiction of the player < 15]I'd love to drink your [semen] if you'll let me.  Anything will do though, I'm very thirsty.'[otherwise if M is male]Please may I have the privilege of sucking your cock?  I promise I'll savour every last drop.'[otherwise]Please may I have the privilege of drinking from your [']tap[']?  You seem to have a lot to spare...'[end if]";
	otherwise if the bimbo of the player < 3:
		say "Please, do you have anything I could drink?'";
	otherwise if the bimbo of the player < 6:
		say "Excuse me, I am really thirsty, do you have anything I could drink?'";
	otherwise if the bimbo of the player < 9:
		say "Please, do you have anything I could drink from?'";
	otherwise if the bimbo of the player < 12:
		say "I'd do anything for something to drink.'";
	otherwise if the bimbo of the player < 15:
		say "I just really need something to wet my throat...'";
	otherwise:
		say "I just need something to suck on...  I'll swallow anything you give me...'";
	say "[roman type][line break]".
	
To compute friendly drink of (M - a monster):
	if M is intelligent:
		say "[speech style of M]'Sorry, I don[']t have anything.'[roman type][line break]";
	otherwise:
		say "The [M] looks at you blankly.".

To compute unfriendly drink of (M - a monster):
	if M is intelligent:
		if M is not willing to shag:
			say "[speech style of M]'No way! Get your own drink.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'I[']ll give you something to drink all right!'[roman type][line break]";
			now M is interested;
	otherwise:
		say "The [M] looks at you blankly.".

To compute desperate drinking to (M - a monster):
	say "You spot a [M]! You [if the player is upright]drop to your knees and [end if]beg [him of M] to give you something to drink.";
	now the stance of the player is 1;
	if M is unfriendly or M is objectifying the player:
		if M is friendly, anger M;
		compute unfriendly drink of M;
	otherwise:
		now M is interested;
		compute friendly drink of M;


Chapter 4 Food Requesting

To compute talk option (N - 4) to (M - a monster):
	let B be a random number from 1 to 4;
	if B is 1 and the player is seductive and M is raunchy:
		now M is interested;
		say "[BimboSeduce of M]";
		say "[BimboSeduced of M]";
	otherwise:
		say "[FoodRequest of M]";
		if M is not intelligent:
			say "It doesn't look like the [M] speaks English.";
		otherwise if M is uninterested:
			say "The [M] doesn't seem to realise you're talking to [him of M].";
		otherwise if M is friendly:
			compute friendly food of M;
		otherwise if M is unfriendly:
			compute unfriendly food of M.

To say FoodRequest of (M - a monster):
	say "[variable custom style]";
	if the bimbo of the player < 3:
		say "'Please, do you have anything I could eat?'";
	otherwise if the bimbo of the player < 6:
		say "'Excuse me, I am really hungry, do you have anything I could eat?'";
	otherwise if the bimbo of the player < 9:
		say "'Please, do you have anything I could eat from?'";
	otherwise if the bimbo of the player < 12:
		say "'I'd do anything for something to eat.'";
	otherwise if the bimbo of the player < 15:
		say "'I just really need something to fill my stomach...'";
	otherwise:
		say "'I just need something to put in my mouth...  I'll swallow anything you give me...'";
	say "[roman type][line break]".	
	
Definition: a monster (called M) is willing to give snacks:
	decide no.

To compute friendly food of (M - a monster):
	if M is willing to give snacks:
		let C be a random off-stage standard tier candy;
		if there is held food or there is on-stage candy:
			say "[FriendlyFoodRefuseFlav of M]";
		otherwise if C is candy:
			say "[FriendlyFoodAgreeFlav of M][line break]The [M] gives you a [C], which you eat immediately.";
			now C is held by the player;
			try TQeating C;
		otherwise:
			say "[FriendlyFoodEmptyFlav of M]";
	otherwise if M is intelligent:
		say "[FriendlyFoodApologiseFlav of M]";
	otherwise:
		say "The [M] looks at you blankly.".

To say FriendlyFoodRefuseFlav of (M - a monster):
	say "[speech style of M]'Seems to me that you have food of your own.  Why don't you eat that first?'[roman type][line break]".

To say FriendlyFoodAgreeFlav of (M - a monster):
	say "[speech style of M]'I guess you can have this.'[roman type]".

To say FriendlyFoodEmptyFlav of (M - a monster):
	say "[speech style of M]'I do not have anything for you.'[roman type][line break]".

To say FriendlyFoodApologiseFlav of (M - a monster):
	say "[speech style of M]'Sorry, I don[']t have anything.'[roman type][line break]".

To say UnfriendlyFoodRefuseFlav of (M - a monster):
	say "[speech style of M]'No way! Get your own food.'[roman type][line break]".

To say UnfriendlyFoodLewdFlav of (M - a monster):
	say "[speech style of M]'I[']ll give you something to eat all right!'[roman type][line break]".

To compute unfriendly food of (M - a monster):
	if M is intelligent:
		if M is not willing to shag:
			say "[UnfriendlyFoodRefuseFlav of M]";
		otherwise:
			say "[UnfriendlyFoodLewdFlav of M]";
			now M is interested;
	otherwise:
		say "The [M] looks at you blankly.".
		
To compute desperate eating to (M - a monster): [Currently unused]
	say "You spot a [M]! You [if the player is upright]drop to your knees and [end if]beg [him of M] to give you something to eat.";
	now the stance of the player is 1;
	if M is unfriendly:
		compute unfriendly food of M;
	otherwise:
		now M is interested;
		compute friendly food of M.


Conversation ends here.
