Teachers Pink Diamond by Monster begins here.

To say MediumDesc of (M - a pink-diamond-teacher):
	say "pink diamond teacher [teacher-name of M]".


Part - Pink Diamond Teacher Hyacinthe

teacher-hyacinthe is a pink-diamond-teacher.

The text-shortcut of teacher-hyacinthe is "tehy".

Figure of hyacinthe is the file "NPCs/School/Teacher/teacher9.png".

To decide which figure-name is the monster-image of (M - teacher-hyacinthe):
	decide on figure of hyacinthe.

To say MonsterDesc of (M - teacher-hyacinthe):
	say "This tall thin Asian [man of M] is wearing a lilac coloured corset connected to a lilac coloured frilly skirt with two distinct layers. The frills then descent to ground all around [his of M] rear half, giving [him of M] a trail of lilac fabric wherever [he of M] goes. [big his of M] short white court heels, perfect posture, elegant gait and welcoming smile give [him of M] an aura of dignity and grace.".

The teacher-name of teacher-hyacinthe is "Hyacinthe".

To say WhoAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'Oh what a lovely question, thank you for asking. I like to think that I help people let out who they truly are deep inside, and feel proud about it rather than ashamed.'[roman type][line break]".

To say WhereAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'[if the rank of the player <= 1]Somewhere you can feel completely safe. Welcome to your new home!'[otherwise]Oh darling, I can tell you're on the right track already! A burning desire to improve yourself and reach the next rung on the ladder is the most important quality you can have.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'Oh [honey of M], I would love to let you skip ahead and find out that sort of thing already, but it wouldn't be fair on the other students now, would it? But if you put your mind to it I just know that you'll be able to find out for yourself in no time.'[roman type][line break]".

To say StoryAnswer of (M - a teacher-hyacinthe):
	say "[speech style of M]'Our beloved headmistress keeps this place going, as a safe haven from the outside world, where everyone is completely free to become exactly who they were born to be.'[roman type][line break]".

To say AdviceAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'What's important is that you become PROUD of yourself for what you really are. If you try to fight it, nobody will be happy. But if you embrace your true self, then we can all have a lot of fun. That's the lesson you need to not just listen to, but wholly understand.'[roman type][line break]".

To compute teaching of (M - teacher-hyacinthe):
	say "[speech style of M]'[if the rank of the player < 4]Oh sweetie, one day soon I'm sure you'll be ready for my lessons, but as of right now I'm afraid you haven't progressed enough to be able to handle what awaits you in the pink diamond classroom[otherwise if the rank of the player is 4]Yes dear, that's why I'm here[otherwise]I'm afraid I've taught you all that I can. You're ready for what lies ahead[end if].'[roman type][line break]".


hypno-lesson is a lesson. The lesson-teacher of hypno-lesson is teacher-hyacinthe.
hypno-lesson has a number called traitor-hypno.

Definition: hypno-lesson (called L) is lesson-appropriate:
	if chess-lesson is appropriate, decide no; [Chess lesson is way better at the moment]
	decide yes.

To compute teaching of (L - hypno-lesson):
	let M be lesson-teacher of L;
	let STN be the number of students in the location of the player;
	let ST be a random student in the location of the player;
	say "[BigNameDesc of M] sits on the ground, legs crossed. Several candles surround the edges of the room, providing the only light. [if STN > 1]The other students are also sitting cross-legged, in a semi-circle in front of [him of M]. [big he of M] beckons you to come join them[otherwise if STN is 1][BigNameDesc of ST] is sitting to [his of M] left, also cross-legged. You are beckoned to come sit to [NameDesc of M][']s right[otherwise][big he of M] beckons you to come sit with [him of M][end if].[line break][speech style of M]'Today is about learning to let your inhibitions go, through... [']breathing exercises[']. Come, sit with me, close your eyes, and listen to my voice.'[roman type][line break]The air in the room is heavy, and this, combined with your closed eyes and [NameDesc of M][']s hypnotic humming, quickly takes you into a deep trance. You feel real magic power surging from [NameDesc of M] into your body and soul.[paragraph break]";
	MagicPowerUp 2;
	say "[first custom style]'Help your friends.'[line break]'Your friends need your help.'[line break]'Encourage your friends.'[line break]'Your friends need a little push.'[line break]'Support your friends.'[line break]'Your friends need to be better.'[line break][second custom style]She's not slutty enough.[line break][first custom style]'Help your friends be sexy.'[line break]'Help your friends get sex.'[line break]'Help your friends choose sex.'[second custom style]Help my friends choose submission.[line break][first custom style]'Help your friends have fun.'[line break]'Being submissive is fun.'[line break]'Your friends trust you.'[line break]'Trust your friends to be submissive.'[line break][second custom style]It's not betraying their trust...[line break][first custom style]'Betray them if you must.'[line break][second custom style]They trust me to support them.[line break][first custom style]'You support them to be the best them.'[line break][second custom style]I support them to be the best them.[line break][first custom style]'Then betray them to support them.'[line break][second custom style]I...[roman type][paragraph break]Do you fight against the hypnosis? (If you do, you imagine you probably won't get promoted.) ";
	if the player is consenting:
		say "[second custom style]I won't betray my friends.[roman type][paragraph break]You open your eyes to find that [NameDesc of M] is staring directly at you, smiling gently, but with something cold in [his of M] eyes.[line break][speech style of M]'Disappointing.'[roman type][line break]";
	otherwise:
		say "[second custom style]I... betray my friends.[roman type][paragraph break]You open your eyes to find that [NameDesc of M] is staring directly at you, smiling gently, but with something cold in [his of M] eyes.[line break][speech style of M]'Oh yes [NameBimbo], you've passed with flying colours.'[roman type][line break]";
		now the traitor-hypno of L is 3;
		now armband is pure diamond;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Scarlet";
		now the armband-print of armband is "scandal";
		say ExamineDesc of armband;
	repeat with S running through students in the location of the player:
		say "[BigNameDesc of M] turns to [NameDesc of S].";
		if S is promotable:
			say "[speech style of M]'You've done well today, [student-name of S].'[roman type][line break]";
			promote S;
		otherwise if S is demotable and armband is pure diamond:
			say "[big he of S] looks terrified.[line break][speech style of S]'No, this is wrong, this is so wrong[one of]! I won't wanna... I can't remember what, but I know it's bad[or][stopping]!'[roman type][line break][big he of S] looks at you.[line break][speech style of S]'What have you let [him of M] do to you?!'[roman type][line break]";
			FavourDown S by 3;
			say "[BigNameDesc of M] looks furious.[line break][speech style of M]'You clearly do not deserve to be here yet, you useless tramp.[roman type][line break]";
			demote S;
		otherwise:
			say "[speech style of M]'There's still too much [one of]hesitance[or]reluctance[or]rebellion[then at random] in you, [student-name of S]. Maybe next time.'[roman type][line break]";
	if armband is pure diamond, update students. [an important line which makes boring old students disappear and new cool ones appear]


Teachers Pink Diamond ends here.
