Headmistress by Monster begins here.

headmistress is a staff member. headmistress is captive. headmistress is female.

headmistress is in School08. The text-shortcut of headmistress is "hdm".

Figure of headmistress is the file "NPCs/School/headmistress1.png".

To decide which figure-name is the monster-image of (M - headmistress):
	decide on figure of headmistress.

To say ShortDesc of (M - headmistress):
	say "headmistress".

To say MediumDesc of (M - headmistress):
	say "headmistress".

To say MonsterDesc of (M - headmistress):
	say "This woman looks neither young nor old - she's clearly an adult but you can't tell if she's 20 or 40. Her very slim figure is complemented by perfect D cup breasts and not insignificant hips. A tight red latex dress with a very deep V-neck clings tightly to her, allowing you to appreciate all of her curves. The dress, although very provocative and not reaching below mid-thigh, somehow gives her an aura of extreme dominance. This sensation is further enhanced by her straight neat black hair and harsh make up which gives her face a rather... fierce appearance.";
	say "[variable custom style]It's like I can actually feel raw power coming from her. [if the bimbo of the player <= 10]I need to be careful[otherwise]I'd better do whatever she says[end if].[roman type][line break]".

To set up (M - headmistress):
	reset M;
	now the monstersetup of M is 1;
	now M is in School08;
	now the difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - headmistress):
	decide on 16.

To say speech style of (M - headmistress):
	say "[first custom style]".

Part - Motion

To compute motion of (M - headmistress):
	do nothing.

Part - Perception

To compute student perception of (M - a headmistress):
	if the the armband-print of armband is "new recruit":
		say "[speech style of M]'Hmm, another newbie, is it?  Allow me to introduce you to our proud institution. In this school we will help you understand the elegance of submission. You will rise to the top by learning how to be the perfect bottom. Our curriculum is staged to make sure you aren't exposed to anything too... disturbing... until you have proven yourself capable of accepting it. You'll start at the bottom tier, and will have to prove yourself if you want to raise your ranking and earn access to more of the school. Now let me take a closer look at you... ";
		if the humiliation of the player >= 40000:
			say "Hmmm... your mind appears already too far gone for us to really have much fun with you, but if your owner really wants you to go through the lessons, that's fine with me.'";
		otherwise if the class of the player is princess:
			say "We had one of your kind before and she didn't manage to fit in. I wonder if you'll prove similarly challenging.'";
		otherwise if there is a worn mystical amulet:
			say "I sense you have a large part to play in the destiny of this world. But whether that aligns with my own interests remains to be seen. I will be watching you closely.'";
		otherwise if the appearance of the player > 11 and diaper quest is 0:
			say "If your appearance is anything to go by, you're going to fly through the ranks. Still, we must confirm this by starting you off at the bottom.'";
		otherwise if the class of the player is schoolgirl or the class of the player is cheerleader:
			say "Heh, I appreciate your eagerness but [if diaper quest is 0]it's not that kind of school. Your teachers will be choosing your uniforms[otherwise]depending on your teachers, you may not get to stay like that for long[end if].'";
		otherwise if the appearance of the player > 6:
			say "If your appearance is anything to go by, [if diaper quest is 0]you're on the right track already. Still, we must have you start at the bottom rank, just like every other freshman[otherwise]you have a lot to learn about what TRUE submission entails. I will be interested to watch your progress[end if].'";
		otherwise if the cringe appearance of the player > 6:
			say "If your appearance is anything to go by, you're on the right track already. Still, we must have you start at the bottom rank, just like every other freshman.'";
		otherwise:
			say "Hmm. Your future is still shrouded in uncertainty. You still have a lot of power to decide your fate. I will be watching your progress with great interest.'";
		now the armband-title of armband is "[NameBimbo]";
		if diaper quest is 0:
			now the armband-print of armband is "slut in training";
		otherwise:
			now the armband-print of armband is "submissive in training";
		say "[roman type][line break]She waves a hand in your direction and the your armband slightly transforms!  It now reads '[armband-title of armband] the [armband-print of armband]'.".
	
To say WhoQuestion of (M - a headmistress):
	say "[variable custom style]'Who are you?'[roman type][line break]".

To say WhoAnswer of (M - a headmistress):
	say "[speech style of M]'[one of]It is rather obvious that I am the headmistress of this school. [or][stopping]While it is not the focus of this institution, it would behoove you to learn not to ask stupid questions.'[roman type][line break]".

To say WhereAnswer of (M - a headmistress):
	say "[speech style of M]'[if the rank of the player is 1]You are in the headmistress' office, young miss. You can find your classes at the end of the hall on the right.'[otherwise]Ranks are earned, and not without effort. Do not forget that.'[end if][roman type][line break]".

To say EscapeAnswer of (M - a headmistress):
	say "[speech style of M]'Your instructors will let you know when you are ready for higher level curriculum.'[roman type][line break]".

To say StoryAnswer of (M - a headmistress):
	say "[speech style of M]'If you have time to ask questions, you have time to focus on your classwork.'[roman type][line break]".

To say AdviceAnswer of (M - a headmistress):
	say "[speech style of M]'Skipping classes will earn you a detention.'[roman type][line break]".

To compute teaching of (M - a headmistress):
	say "[speech style of M]'I have my headmistress duties to take care of. Ask a teacher if you would like a lesson.'[roman type][line break]".

Headmistress ends here.

