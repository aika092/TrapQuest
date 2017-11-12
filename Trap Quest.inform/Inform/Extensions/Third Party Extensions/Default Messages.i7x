Version 3 of Default Messages by Third Party Extensions begins here.

"Allows customizing the standard messages in the Inform library.  A ground-up reimplementation of David Fisher's extension that economizes on memory."

Section - Default Messages

Use library message alerts translates as (- Constant LIBRARY_MESSAGE_ALERTS; -). 

To say library message verb: (- PrintCommand(); -). [prints the whole command except for the person asked & the comma]
To say library message pronoun: (- print (address) pronoun_word; -).
To say ignore library line break: (- lm_n = -1; -).

Table of custom library messages
library-action	library-message-id	library-message-text
action-name			number			text


[Section - some backwards compatibility that doesn't use memory, I think - unindexed

The main object is an object that varies. The main object variable translates into I6 as "lm_o".
The secondary object is an object that varies. The secondary object variable translates into I6 as "lm_o2".]


Section - internal (in place of Section SR5/8/2 - Message support - Intervention - Unindexed in Standard Rules by Graham Nelson) unindexed

To #if library message alerts is active and not in a release build: (- #ifdef DEBUG; #ifdef LIBRARY_MESSAGE_ALERTS; -). 
To #end if library message alerts is active and not in a release build: (- #endif; #endif; -). 

To decide if intervened in miscellaneous message: 
	repeat through the table of custom library messages in reverse order:
		if the library-message-id entry is the library message number and there is no library-action entry:
			say the library-message-text entry;
			unless library message number is -1, say line break;
			decide yes;
	#if library message alerts is active and not in a release build;
	say "{ library message #[library message number] }[paragraph break]";
	#end if library message alerts is active and not in a release build;
	decide no.

To decide if intervened in miscellaneous list message: 
	increase library message number by 100;
	repeat through the table of custom library messages in reverse order:
		if the library-message-id entry is the library message number and there is no library-action entry:
			say the library-message-text entry;
			decide yes;
	#if library message alerts is active and not in a release build;
	say "{ library message #[library message number] }[paragraph break]";
	#end if library message alerts is active and not in a release build;
	decrease library message number by 100;
	decide no.

To decide if intervened in action message: 
	repeat through the table of custom library messages in reverse order:
		if the library-message-id entry is the library message number  and there is a library-action entry and the library-action entry is the library message action:
			say the library-message-text entry;
			unless library message number is -1, say line break;
			decide yes;
	#if library message alerts is active and not in a release build;
	say "{ [library message action] action #[library message number] }[paragraph break]";
	#end if library message alerts is active and not in a release build;
	decide no.


Default Messages ends here.

---- DOCUMENTATION ----

This extension allows the author to replace the many bits of prose that exist inside Inform 7.  It is done by continuing a table, Custom Library Messages, like so:
	*: Table of custom library messages (continued)
	library-action	library-message-id	library-message-text
	--					   10				   "I beg your pardon, but I didn't catch your drift."
	going action			   2				   "You can't go [noun] from here."


The first column holds the action to which the message applies, or if the message comes from some other place, a blank entry.  Because each action has multiple messages (roughly one per rule), the second column holds a number that selects which.  An action's messages are typically numbered from 1 on up.  To see which number a particular message is, we can be alerted when the message happens.
	*: Use library message alerts.

This gives something like the following transcript.
	> TAKE PILLOW
	{ taking action #1 }
	
	Taken.
	
	> TAKE A NAP
	{ library message #30 }
	
	You can't see any such thing.
	
We then add to the table as appropriate.  If the action within the curly braces is "library message", then we use the -- blank entry in the action column.
	*: Table of custom library messages (continued)
	library-action	library-message-id	library-message-text
	taking action	   1		   "You've always wanted [a noun]."
	--			   30		   "I don't know the word '[the misunderstood word]'."

It is worth mentioning that once we replace a default message, the use option will no longer alert us when it's used.  Thus, when our first readers give us a transcript of their experience, we can search the transcript for the # hash or } brace characters to quickly find what defaults have not yet been replaced.  Furthermore, alerts are always turned off in a release build, just in case the option is long forgotten when it comes time to publish.

There's a few variables that come in handy for certain messages. "The noun" and "the second noun" are of course available, as is "the number understood" and similar.  The others are:
	the person asked -- we cannot use "the actor" within our table, but this is identical.


	library message verb -- this would be "take" for the taking action, "go" for the going action, etc. (More precisely, it is the entire command predicate typically used in "What do you want to take?") 


	library message pronoun -- when our reader uses a pronoun, this is the pronoun she used.


	pronoun reference object -- the noun that the above pronoun refers to.


	library message object, second library message object, library message amount -- effectively synonymous with the noun, the second noun, and the number understood for non-action messages.


	library message action, library message number -- these are the variables that are compared to our two table columns.  The first differs from the library message verb in that it has the present participle ("taking") rather than the root form ("take").  For actions which take two nouns, the preposition is also included ("giving it to").


A final note on line breaks: usually the extension guesses correctly, but for those cases where it adds an extra, the say phrase "[ignore library line break]" should cure it.  (This can be mixed-n-matched with the normal "[run paragraph on]" if need be.)

	*: Table of custom library messages (continued)
	library-action	library-message-id	library-message-text
	--					   35				   "I see nothing that '[library message pronoun]' could possibly refer to." 
	going action			   2				   "I don't think [library message action] [noun] from here is possible."
	--					   49				   "Which will you [library message verb]?"
	giving it to action		   2				   "You put [the noun] into your other hand."
	--					   50				   "You've [if library message amount > 0]gained[otherwise]lost[end if] [library message amount in words] point[s][ignore library line break]"


Example: * Poster Shopping - A vignette.

	*: "Poster Shopping"
	
	Include Default Messages by Third Party Extensions.  Use library message alerts.
	
	The poster shop is a room.
	
	The horror movie poster is a lit thing in the poster shop. 
	The romantic movie poster is a thing in the poster shop.
	The fantasy movie poster is a thing in the poster shop.
	
	Carry out examining the player for the first time: increase the score by 2.
	
	Table of custom library messages (continued)
	library-action	library-message-id	library-message-text
	taking inventory action	1				"You've decided to acquire a new movie poster."
	--					10				"I didn't catch your drift there."
	--					109				" (glows in the dark"
	taking action			1				"You go for [the noun]."
	going action			2				"Born and raised in the city, you have no idea what direction is [noun]."
	--					49				"Which poster will you [library message verb]?"
	--					35				"I see nothing that '[library message pronoun]' could possibly refer to." 
	--					50				"You've [if library message amount > 0]gained[otherwise]lost[end if] [library message amount in words] point[s][ignore library line break]"
	--					75				" A [random carried thing] adorns your wall [ignore library line break]"
	
	Instead of going when something is carried, end the story.
	
	Test me with "x me / i / / take / her / s / take horror poster / i / s ".

Example: * But Then What? - Regarding a snafu with the "only understood as far as" error.

Unlike the "What would you like to..." message which incorporates the relevant part of the player's command into itself, the parser error "I only understood you as far as.." does not.  We can change the message, but the player's command will always be tacked on afterward, making it difficult if we wish to end the response with a close quote, a closing bracket, roman type, etc.  For this situation, we must use a rule.  (If we use both, the rule is consulted first.  This can be useful if we want to add "when..." conditions to the rule:  the table's version would be used when no rules apply.)

For additional measure, a phrase printing the rest of the command, and a phrase deciding if the misunderstood word is known at all, also appear.

	*: "But Then What?"
	
	Include Default Messages by Third Party Extensions.
	
	There is a room called In the Spotlight.   

	Rule for printing a parser error when the latest parser error is the only understood as far as error:
		say "'You wanted to [library message verb] but what did you mean by the word [misunderstood word] in ['][what was misunderstood][']?'" 
	
	To decide which snippet is what was misunderstood: 
		(- (((wn - 1) * 100) + (WordCount() - 2)) -).
	
	To decide which snippet is the misunderstood word: 
		(- (((wn - 1) * 100) + 1) -).

	Rule for printing a parser error when the latest parser error is the only understood as far as error and the misunderstood word is known elsewhere:
		say "'You wanted to [library message verb] but, although I know the word [misunderstood word], I wasn't expecting it there.'" 
	
	To decide if the misunderstood word is known elsewhere: 
		(- (wn--, NextWord() ~= 0) -).
	
	Test me with "examine me now / examine me closely now /  examine me spotlight".

Example: * Tips & Techniques - This appendix contains phrases for miscellaneous tasks:  testing and finding messages, finding bits of information, etc.

This testing command will print the library message for any number given on the command line.  For example, entering MISC 9 will print "It is now pitch dark in here!", or whatever message we've replaced it with.
	Understand "misc [number]" as a mistake ("[miscellaneous library message the number understood][run paragraph on]").
	
	To say miscellaneous library message (N - a number): 
		(- L__M( ##Miscellany, {N} ); -).


The following will print the names of all the actions as they should appear in the table.  This is useful when we can't figure out the exact wording.  (Note that one action, "the requesting the story file version action", has no text of its own to replace, so will never appear in our table.)
	When play begins: 
		repeat with X running through all action names:
			say "[X] action."


A common parser message in games of yore went along the lines of "I don't understand the word 'kludge'."  For this, miscellaneous message #30 could use "[the misunderstood word]".  Try it with "examine lovely me."  Or try it in miscellaneous message #23 with "I don't know a Mr. [misunderstood word]."  Test that one with "Elvis, look" after Elvis has left the story.  Note that it isn't always set properly, so try many variations just in case.
	To decide which snippet is the misunderstood word:
		(- (((wn - 1) * 100) + 1) -).

Similarly for the "I only understood you as far as examining yourself." in response to commands like EXAMINE ME CLOSELY NOW comes the rest of the phrase.  See the previous example "But Then What?" for its usage.
	To decide which snippet is what was misunderstood: 
		(- (((wn - 1) * 100) + (WordCount() - 2)) -).

One more tool for some parser messages is asking whether the misunderstood word is known at all, or is known but not expected at the place where the player used it.  
	To decide if the misunderstood word is known at all: 
		(- (wn--, NextWord() ~= 0) -).


Related is entering action #2, "That's not something you can enter/stand/sit on."  Regardless whether the player sits on a chair, lies on a bed, climbs into a car, or stands on a stool, the same action, entering, is used.  But when the player attempts these actions on something that isn't enterable, it's nice if the refusal message correctly acknowledges which action the player tried.   We do this by again quoting the relevant part of the player's command, namely, "[the quoted verb]".  Additionally, the standard message, in order to tack on appropriate prepositions, sends the snippet to a phrase that works much like an After Reading A Command rule.  Try that one with "[the quoted verb posture]".  
	To decide which snippet is the quoted verb: 
		(- ((verb_wordnum * 100) + 1) -).  [if command is TAKE OFF HAT, gives just TAKE]
	
	To decide which text is (quoted word - a snippet) posture:
		if the quoted word matches "stand", decide on "stand on";
		if the quoted word matches "sit", decide on "sit down on";
		if the quoted word matches "lie", decide on "lie down on";
		otherwise decide on "enter".


Snippets in general are very useful things when used to liven up error messages. For example, replacing the bland "There is no reply." of the catch-all answering action with "'And [the topic understood] to you too, good sir,' replies [the noun]." goes a long way in sustaining versimilitude.  So what, then, is a snippet?  It is a run of words, entered by the player, such as "the three words starting at word #4" which picks word #4, word #5, and word #6, including the spaces between.
	To decide which snippet is the (amount - a number) words/word starting with/at word number (position - a number): 
		(- (({position} * 100) + {amount}) -).

	To decide which snippet is the player's first two command words: 
		decide on the two words starting with word number one.	

	To decide which number is the position of the verb: 
		(- (verb_wordnum) -).



One message, taking action #13, mentions the player putting something into his holdall.  While a phrase such as "[a random player's holdall]" would likely suffice when we replace the message, games with more than one holdall might need the following variable.
	The current player's holdall is a player's holdall that varies. 
	The current player's holdall variable translates into I6 as "SACK_OBJECT".


Several standard messages need to list several objects, notably opening, searching, and looking.  While this may be one time where using rule-replacement is the way to go, listing the contents from a say phrase is a generally useful thing to have.  And since commas cannot appear in say-phrases, try replacing them with plus signs, such as this doozy from opening action #4: "You open [the noun], revealing [if the number of not undescribed not scenery things in the noun is at least one][list the contents of the noun with the as a sentence list option + the tersely list option + the not listing concealed items list option][otherwise]nothing[end if]."  

We'll even throw in a section heading for free, keeping the contents pane of the index tidy.
	Section - List the Contents of Something, with added options
	
	To say list the contents of (X - object) with (N - number): (- WriteListFrom(child({X}), {N}); -).
	
	The as a sentence list option is a number that varies. The as a sentence list option variable translates into I6 as "ENGLISH_BIT".
	The tersely list option is a number that varies. The tersely list option variable translates into I6 as "TERSE_BIT".
	
	The is-are list option is a number that varies. The is-are list option variable translates into I6 as "ISARE_BIT". 
	
	The suppressing all articles list option is a number that varies. The suppressing all articles list option variable translates into I6 as "NOARTICLE_BIT". 
	The using the definite article list option is a number that varies. The using the definite article list option variable translates into I6 as "DEFART_BIT".
	The capitalise first article list option is a number that varies. The capitalise first article list option variable translates into I6 as "CFIRSTART_BIT".
	
	With newlines list option is a number that varies. The with newlines list option variable translates into I6 as "NEWLINE_BIT". 
	The indented list option is a number that varies. The indented list option variable translates into I6 as "INDENT_BIT".
	With extra indentation list option is a number that varies. The with extra indentation list option variable translates into I6 as "EXTRAINDENT_BIT". 
	
	The giving brief inventory information list option is a number that varies. The giving brief inventory information list option variable translates into I6 as "PARTINV_BIT".
	The giving inventory information list option is a number that varies. The giving inventory information list option variable translates into I6 as "FULLINV_BIT".
	
	The including contents list option is a number that varies. The including contents list option variable translates into I6 as "RECURSE_BIT". 
	The including all contents list option is a number that varies. The including all contents list option variable translates into I6 as "ALWAYS_BIT".
	
	The not listing concealed items list option is a number that varies. The not listing concealed items list option variable translates into I6 as "CONCEAL_BIT".
	The listing marked items only list option is a number that varies. The listing marked items only list option variable translates into I6 as "WORKFLAG_BIT".


Finally is a technical trick that could free up enough space for a page or so of prose.  This extension works much like Instead Of rules:  it gets first chance at any message to be printed, and when it finds a situation to which it applies (i.e., the message to be printed is in the table of custom default messages,) it says its own message "instead".  The original message still sits in memory, taking up space needlessly.  But because all the original messages are contained within the same monolithic rule, we cannot de-list that rule.  Unless, of course, our table has all messages in it anyway.  Even if we have only half the number of messages re-written, copying the remaining ones unaltered to our table could be worth it just to de-list that rule.  With this:

	Include (-  
	[ LanguageLM; 
	#ifdef DEBUG;  
		print "{ ";
		if (lm_act == ##Miscellany or ##ListMiscellany) print "library message";
		else print (SayActionName) lm_act, " action";
		print " #", lm_n, " }";
	#endif;
	];  -) instead of "Long Texts" in "Language.i6t".

That gains us back about 10K of memory, which is about 2K words of prose, give or take.  (We do leave in an error message in the debug build to flag anything we missed, just in case.)


Example: * The Complete Table - A fully complete table of library messages.  Find a message within, or copy pieces out.

This lists every message in the Inform standard library. If searching for a particular message within, aim for unique words like achieve or unexpected.  Pronouns and verbs tend to alter their own forms with say-phrases, so a search for touches, rather than touch, would likely fail. 

In order to use this table as-is, the extension Plurality by Third Party Extensions is needed, plus the phrases presented beneath the table, as well as many of the tidbits in the Tips & Techniques example presented above.

	*: Table of custom library messages (continued)
	library-action	library-message-id	library-message-text
	--		1	"(considering the first sixteen objects only)[ignore library line break]"
	--		2	"Nothing to do!"
	--		3	" You have died [ignore library line break]"
	--		4	" You have won [ignore library line break]"
	--		5	"Would you like to [ignore library line break]" [bug reported, #0000203]
	--		6	"[bracket]Your interpreter does not provide 'undo'.  Sorry![close bracket]"
	--		7	"[#if Z-machine]'Undo' failed.  [bracket]Not all interpreters provide it.[close bracket][#otherwise][bracket]You cannot 'undo' any further.[close bracket][#end if]"
	--		8	"Please give one of the answers above."
	--		9	"It is now pitch dark in here!"
	--		10	"I beg your pardon?"
	--		11	"[bracket]You can't 'undo' what hasn't been done![close bracket]"
	--		12	"[bracket]Can't 'undo' twice in succession. Sorry![close bracket]"
	--		13	"[bracket]Previous turn undone.[close bracket]"
	--		14	"Sorry, that can't be corrected."
	--		15	"Think nothing of it."
	--		16	"'Oops' can only correct a single word."
	--		17	"It is pitch dark, and you can't see a thing."
	--		18	"yourself"  [deprecated?]
	--		19	"As good-looking as ever."
	--		20	"To repeat a command like 'frog, jump', just say 'again', not 'frog, again'."
	--		21	"You can hardly repeat that."
	--		22	"You can't begin with a comma."
	--		23	"You seem to want to talk to someone, but I can't see whom."
	--		24	"You can't talk to [the library message object]."
	--		25	"To talk to someone, try 'someone, hello' or some such."
	--		26	"(first taking [the noun])[ignore library line break]"  [needs the ignore]
	--		27	"I didn't understand that sentence."
	--		28	"I only understood you as far as wanting to [ignore library line break]"
	--		29	"I didn't understand that number."
	--		30	"You can't see any such thing."
	--		31	"You seem to have said too little!"
	--		32	"You aren't holding that!"
	--		33	"You can't use multiple objects with that verb."
	--		34	"You can only use multiple objects once on a line."
	--		35	"I'm not sure what '[pronoun dictionary word]' refers to."
	--		36	"You excepted something not included anyway!"
	--		37	"You can only do that to something animate."
	--		38	"That's not a verb I recogni[#if American dialect]z[#otherwise]s[#end if]e."
	--		39	"That's not something you need to refer to in the course of this game."
	--		40	"You can't see '[pronoun dictionary word]' ([pronoun reference object]) at the moment."
	--		41	"I didn't understand the way that finished."
	--		42	"[if library message amount is 0]None[otherwise]Only [library message amount] of those[end if] [is-are] available."
	--		43	"Nothing to do!"
	--		44	"There are none at all available!"
	--		45	"Who do you mean, [ignore library line break]"
	--		46	"Which do you mean, [ignore library line break]"
	--		47	"Sorry, you can only have one item here. Which exactly?"
	--		48	"Whom do you want[if the person asked is not the player] [the person asked][end if] to [recap of command]?"  
	--		49	"What do you want[if the person asked is not the player] [the person asked][end if] to [recap of command]?"
	--		50	"Your score has just gone [if library message amount > 0]up by [library message amount][otherwise]down by [0 - library message amount][end if] point[s]"
	--		51	"(Since something dramatic has happened, your list of commands has been cut short.)"
	--		52	"[line break]Type a number from 1 to [library message amount], 0 to redisplay or press ENTER."
	--		53	"[line break][bracket]Please press SPACE.[close bracket]"
	--		54	"[bracket]Comment recorded.[close bracket]"
	--		55	"[bracket]Comment NOT recorded.[close bracket]"
	--		56	"."
	--		57	"?"
	--		58	"[The person asked] [is-are] unable to do that."
	--		59	"You must supply a noun."
	--		60	"You may not supply a noun."
	--		61	"You must name an object."
	--		62	"You may not name an object."
	--		63	"You must name a second object."
	--		64	"You may not name a second object."
	--		65	"You must supply a second noun."
	--		66	"You may not supply a second noun."
	--		67	"You must name something more substantial."
	--		68	"([The person asked] first taking [the noun])" [doesn't need to ignore library line break]
	--		69	"(first taking [the noun])" [doesn't need to ignore library line break]
	--		70	"The use of UNDO is forbidden in this game."
	--		71	"Darkness"  [DARKNESS__TX]
	--		72	"[The noun] [has-have] better things to do."
	--		73	"That noun did not make sense in this context."
	--		74	"[bracket]That command asks to do something outside of play, so it can only make sense from you to me. [The person asked] cannot be asked to do this.[close bracket]"
	--		75	" The End [ignore library line break]"
	--		76	" or "
	--		101	" (providing light)" [they get a parameter [library message object] ]
	--		102	  " (closed)"
	--		104	  " (empty)"
	--		106	  " (closed and empty)"
	--		103	  " (closed and providing light)"
	--		105	  " (empty and providing light)"
	--		107	  " (closed, empty and providing light)"
	--		108	  " (providing light and being worn" [bug reported, missing parameter object]
	--		109	  " (providing light"
	--		110	 " (being worn"
	--		111	" ("
	--		112	 "open"
	--		113	 "open but empty"
	--		114	 "closed"
	--		115	 "closed and locked"
	--		116	 " and empty"
	--		117	 " (empty)"
	--		118	 " containing "
	--		119	 " (on "
	--		120	 ", on top of "
	--		121	" (in "
	--		122	 ", inside "
	Answering it that action	1	"There is no reply."
	Asking it about action  	1	"There is no reply."
	Asking it for action		1	"There is no reply."
	Attacking action  	1	"Violence isn't the answer to this one."
	Burning action		1	"This dangerous act would achieve little."
	Buying action		1	"Nothing is on sale."
	Climbing action		1	"I don't think much is to be achieved by that."
	Closing action		1	"[Cap That's-They're noun] not something you can close."
	Closing action		2	"[Cap That's-They're noun] already closed."
	Closing action		3	"You close [the noun]."
	Closing action		4	"[The person asked] close[s] [the noun]."
	Closing action		5	"[The noun] close[s]."
	Consulting it about action	1	"You discover nothing of interest in [the noun]."
	Consulting it about action	2	"[The person asked] look[s] at [the noun]."
	Cutting action		1	"Cutting [that-those noun] up would achieve little."
	Drinking action		1	"There's nothing suitable to drink here."
	Dropping action		1	"[The noun] [is-are] already here."
	Dropping action		2	"You haven't got [that-those noun]."
	Dropping action		3	"(first taking [the noun] off)[ignore library line break]"
	Dropping action		4	"Dropped."
	Dropping action		5	"There is no more room on [the noun]."
	Dropping action		6	"There is no more room in [the noun]."
	Dropping action		7	"[The person asked] put[s] down [the noun]."
	Eating action		1	"[Cap That's-They're noun] plainly inedible." 
	Eating action		2	"You eat [the noun]. Not bad."
	Eating action		3	"[The person asked] eat[s] [the noun]."
	Entering action		1	"But you're already [if noun is a supporter]on[otherwise]in[end if] [the noun]."
	Entering action		2	"[Cap That's-They're noun] not something you can [quoted verb posture]."
	Entering action		3	"You can't get into the closed [noun]."
	Entering action		4	"You can only get into something free-standing."
	Entering action		5	"You get [if noun is a supporter]onto[otherwise]into[end if] [the noun]."
	Entering action		6	"(getting [if the library message object is a supporter]off[otherwise]out of[end if] [the library message object])[ignore library line break]"
	Entering action		7	"[if the noun is a supporter](getting onto [the noun])[otherwise if the noun is a container](getting into [the noun])[otherwise](entering [the noun])[end if][ignore library line break]"
	Entering action		8	"[The person asked] get[s] into [the noun]."
	Entering action		9	"[The person asked] get[s] onto [the noun]."
	Examining action	1	"Darkness, noun.  An absence of light to see by."
	Examining action	2	"You see nothing special about [the noun]."
	Examining action	3	"[The noun] [is-are] currently switched [if noun is switched on]on[otherwise]off[end if]." 
	Examining action	4	"[The person asked] look[s] closely at [the noun]."
	Examining action	5	"You see nothing unexpected in that direction."
	Exiting action		1	"But you aren't in anything at the moment."
	Exiting action		2	"You can't get out of the closed [library message object]."
	Exiting action		3	"You get [if library message object is a supporter]off[otherwise]out of[end if] [the library message object]."
	Exiting action		4	"But you aren't [if library message object is a supporter]on[otherwise]in[end if] [the library message object]."
	Exiting action		5	"[The person asked] get[s] off [the library message object]."
	Exiting action		6	"[The person asked] get[s] out of [the library message object]."
	Getting off action	1	"But you aren't on [the library message object] at the moment."
	Giving it to action	1	"You aren't holding [the noun]."
	Giving it to action	2	"You juggle [the noun] for a while, but don't achieve much."
	Giving it to action	3	"[The second noun] do[es]n't seem interested."
	Giving it to action	4	"[The second noun] [is-are]n't able to receive things."
	Giving it to action	5	"You give [the noun] to [the second noun]."
	Giving it to action	6	"[The person asked] give[s] [the noun] to you."
	Giving it to action	7	"[The person asked] give[s] [the noun] to [the second noun]."
	Going action		1	"You'll have to get [if library message object is a supporter]off[otherwise]out of[end if] [the library message object] first."
	Going action		2	"You can’t go that way." [CANTGO__TX]
	Going action		6	"You can't, since [the library message object] lead[s] nowhere."
	Going action		7	"You'll have to say which compass direction to go in."
	Going action		8	"[The person asked] go[es] up"
	Going action		9	"[The person asked] go[es] down"
	Going action		10	"[The person asked] go[es] [noun]"
	Going action		11	"[The person asked] arrive[s] from above"
	Going action		12	"[The person asked] arrive[s] from below"
	Going action		13	"[The person asked] arrive[s] from the [library message object]"
	Going action		14	"[The person asked] arrive[s]"
	Going action		15	"[The person asked] arrive[s] at [the library message object] from above"
	Going action		16	"[The person asked] arrive[s] at [the library message object] from below"
	Going action		17	"[The person asked] arrive[s] at [the library message object] from the [second library message object]" [TODO]
	Going action		18	"[The person asked] go[es] through [the library message object]"
	Going action		19	"[The person asked] arrive[s] from [the library message object]"
	Going action		20	"on [the library message object]"
	Going action		21	"in [the library message object]"
	Going action		22	", pushing [the library message object] in front, and you along too"
	Going action		23	", pushing [the library message object] in front"
	Going action		24	", pushing [the library message object] away"
	Going action		25	", pushing [the library message object] in"
	Going action		26	", taking you along"
	Going action		27	"(first getting off [the library message object])[ignore library line break]"
	Going action		28	"(first opening [the library message object])[ignore library line break]"
	Inserting it into action	1	"You need to be holding [the noun] before you can put [it-them] into something else."
	Inserting it into action	2	"[Cap That-Those noun] can't contain things."
	Inserting it into action	3	"[The noun] [is-are] closed."
	Inserting it into action	4	"You'll need to take [it-them of noun] off first."
	Inserting it into action	5	"You can't put something inside itself."
	Inserting it into action	6	"(first taking [it-them of noun] off)[ignore library line break]"
	Inserting it into action	7	"There is no more room in [the noun]."
	Inserting it into action	8	"Done."
	Inserting it into action	9	"You put [the noun] into [the second noun]."
	Inserting it into action	10	"[The person asked] put[s] [the noun] into [the second noun]."
	Jumping action		1	"You jump on the spot, fruitlessly."
	Kissing action		1	"Keep your mind on the game."
	Listening to action	1	"You hear nothing unexpected."
	Locking it with action	1	"[Cap That-Those noun] do[es]n't seem to be something you can lock."
	Locking it with action	2	"[Cap That's-They're noun] locked at the moment."
	Locking it with action	3	"First you'll have to close [the noun]."
	Locking it with action	4	"[Cap That-Those noun] do[es]n't seem to fit the lock."
	Locking it with action	5	"You lock [the noun]."
	Locking it with action	6	"[The person asked] lock[s] [the noun]."
	Looking action		1	" (on [the library message object])[ignore library line break]"
	Looking action		2	" (in [the library message object])[ignore library line break]"
	Looking action		3	" (as [library message object])[ignore library line break]"
	Looking action		4	"On [the library message object] [list the contents of library message object with as a sentence list option +  tersely list option + not listing concealed items list option + is-are list option + including contents list option + giving brief inventory information list option + listing marked items only list option]."  [the use initial appearance in room descriptions rule? and the the describe what’s on scenery supporters in room descriptions rule?]
	Looking action		5	"[if library message object is not the location and library message object is a supporter]On [the library message object] you[otherwise if library message object is not the location and library message object is a container]In [the library message object] you[otherwise]You[end if] can also see [list the contents of library message object with as a sentence list option +  tersely list option + not listing concealed items list option + including contents list option + giving brief inventory information list option + listing marked items only list option][if library message object is not the location].[otherwise] here." [the you-can-also-see rule?]
	Looking action		6	"[if library message object is not the location and library message object is a supporter]On [the library message object] you[otherwise if library message object is not the location and library message object is a container]In [the library message object] you[otherwise]You[end if] can see [list the contents of library message object with as a sentence list option +  tersely list option + not listing concealed items list option + including contents list option + giving brief inventory information list option + listing marked items only list option][if library message object is not the location].[otherwise] here." [the you-can-also-see rule?]
	Looking action		7	"You see nothing unexpected in that direction."
	Looking action		8	"[if the library message object is a supporter] (on [otherwise] (in [end if][the library message object])[ignore library line break]"
	Looking action		9	"[The person asked] look[s] around."
	Looking under action	1	"But it's dark."
	Looking under action	2	"You find nothing of interest."
	Looking under action	3	"[The person asked] look[s] under [the noun]."
	Opening action		1	"[Cap That's-They're noun] not something you can open."
	Opening action		2	"[Cap It-They noun] seem[s] to be locked."
	Opening action		3	"[Cap That's-They're noun] already open."
	Opening action		4	"You open [the noun], revealing [if the number of not undescribed not scenery things in the noun is zero]nothing[otherwise][list the contents of noun with the as a sentence list option +  the tersely list option + the not listing concealed items list option][end if]." 
	Opening action		5	"You open [the noun]."
	Opening action		6	"[The person asked] open[s] [the noun]."
	Opening action		7	"[The noun] open[s]."
	preferring abbreviated room descriptions action 			1	" is now in its 'superbrief' mode, which always gives short descriptions of locations (even if you haven't been there before)."
	preferring sometimes abbreviated room descriptions action 	1	" is now in its normal 'brief' printing mode, which gives long descriptions of places never before visited and short descriptions otherwise."
	preferring unabbreviated room descriptions action 		1	" is now in its 'verbose' mode, which always gives long descriptions of locations (even if you've been there before)."
	Pulling action		1	"[Cap It-Those noun] [is-are] fixed in place."
	Pulling action		2	"You are unable to."
	Pulling action		3	"Nothing obvious happens."
	Pulling action		4	"That would be less than courteous."
	Pulling action		5	"[The person asked] pull[s] [the noun]."
	[Pulling action		6	"[The person asked] push[es] [the noun]."
	Pulling action		7	"[The person asked] turn[s] [the noun]."]
	[the Pushing action was formerly re-routed to Pulling.]
	Pushing action		1	"[Cap It-Those noun] [is-are] fixed in place."
	Pushing action		2	"You are unable to."
	Pushing action		3	"Nothing obvious happens."
	Pushing action		4	"That would be less than courteous."
	[Pushing action		5	"[The person asked] pull[s] [the noun]."]
	Pushing action		6	"[The person asked] push[es] [the noun]."
	[Pushing action		7	"[The person asked] turn[s] [the noun]."]
	Pushing it to action	1	"[The noun] cannot be pushed from place to place."
	Pushing it to action	2	"That's not a direction."
	Pushing it to action	3	"Not that way you can't."
	Putting it on action	1	"You need to be holding [the noun] before you can put [it-them] on top of something else."
	Putting it on action	2	"You can't put something on top of itself."
	Putting it on action	3	"Putting things on [the noun] would achieve nothing."
	Putting it on action	4	"You lack the dexterity."
	Putting it on action	5	"(first taking [it-them of noun] off)[ignore library line break]"
	Putting it on action	6	"There is no more room on [the noun]."
	Putting it on action	7	"Done."
	Putting it on action	8	"You put [the noun] on [the second noun]."
	Putting it on action	9	"[The person asked] put[s] [the noun] on [the second noun]."
	Quitting the game action	1	"Please answer yes or no."
	Quitting the game action	2	"Are you sure you want to quit? "
	Removing it from action	1	"[Cap it-they of noun] [is-are] unfortunately closed."
	Removing it from action	2	"But [it-they of noun] [is-are]n't there now."
	Removing it from action	3	"Removed."
	Restarting the game action	1	"Are you sure you want to restart? "
	Restarting the game action	2	"Failed."
	Restoring the game action	1	"Restore failed."
	Restoring the game action	2	"Ok."
	requesting the pronoun meanings action	1	"At the moment, "
	requesting the pronoun meanings action	2	"means "
	requesting the pronoun meanings action	3	"is unset"
	requesting the pronoun meanings action	4	"no pronouns are known to the game."
	requesting the pronoun meanings action	5	"."
	requesting the score action		1	"[if the story has ended]In that game you scored [otherwise]You have so far scored [end if][score] out of a possible [the maximum score], in [turn count] turn[s][ignore library line break]"
	requesting the score action		2	"There is no score in this story."
	requesting the score action		3	", earning you the rank of "
	Rubbing action				1	"You achieve nothing by this."
	Saving the game action		1	"Save failed."
	Saving the game action		2	"Ok."
	Saying No action  	1	"That was a rhetorical question."
	Saying sorry action	1	"Oh, don't apologi[#if American dialect]z[#otherwise]s[#end if]e."
	Saying Yes action 	1	"That was a rhetorical question."
	Searching action  	1	"But it's dark."
	Searching action  	2	"There is nothing on [the noun]."
	Searching action  	3	"On [the noun] [list the contents of noun with as a sentence list option +  tersely list option + not listing concealed items list option + is-are list option]."
	Searching action  	4	"You find nothing of interest."
	Searching action  	5	"You can't see inside, since [the noun] [is-are] closed."
	Searching action  	6	"[The noun] [is-are] empty."
	Searching action  	7	"In [the noun] [list the contents of noun with as a sentence list option +  tersely list option + not listing concealed items list option + is-are list option]."
	Searching action  	8	"[The person asked] search[es] [the noun]."
	Setting it To action	1	"No, you can't set [that-those noun] to anything."
	Showing it to action	1	"You aren't holding [the noun]."
	Showing it to action	2	"[The noun] [is-are] unimpressed."
	Singing action		1	"Your singing is abominable."
	Sleeping action		1	"You aren't feeling especially drowsy."
	Smelling action		1	"You smell nothing unexpected."
	Squeezing action 	1	"Keep your hands to yourself."
	Squeezing action 	2	"You achieve nothing by this."
	Squeezing action 	3	"[The person asked] squeeze[s] [the noun]."
	Swearing mildly action		1	"Quite."
	Swearing obscenely action		1	"Real adventurers do not use such language."
	Swinging action		1	"There's nothing sensible to swing here."
	Switching off action	1	"[Cap That's-They're noun] not something you can switch."
	Switching off action	2	"[Cap That's-They're noun] already off."
	Switching off action	3	"You switch [the noun] off."
	Switching off action	4	"[The person asked] switch[es] [the noun] off."
	Switching on action	1	"[Cap That's-They're noun] not something you can switch."
	Switching on action	2	"[Cap That's-They're noun] already on."
	Switching on action	3	"You switch [the noun] on."
	Switching on action	4	"[The person asked] switch[es] [the noun] on."
	switching score notification off action	1	"Score notification off."
	switching score notification on action	1	"Score notification on."
	switching the story transcript off action	1	"Transcripting is already off."
	switching the story transcript off action	2	"[line break]End of transcript."
	switching the story transcript off action	3	"Attempt to end transcript failed."
	switching the story transcript on action	1	"Transcripting is already on."
	switching the story transcript on action	2	"Start of a transcript of"
	switching the story transcript on action	3	"Attempt to begin transcript failed."
	Taking action	1	"Taken."
	Taking action	2	"You are always self-possessed."
	Taking action	3	"I don't suppose [the noun] would care for that."
	Taking action	4	"You'd have to get [if noun is a supporter]off[otherwise]out of[end if] [the noun] first."
	Taking action	5	"You already have [that-those noun]."
	Taking action	6	"[Cap That-Those the noun] seem[s] to belong to [the library message object]." 
	Taking action	7	"[Cap That-Those the noun] seem[s] to be a part of [the library message object]."
	Taking action	8	"[Cap That-Those library message object] [is-are]n't available."
	Taking action	9	"[The library message object] [is-are]n't open."
	Taking action	10	"[Cap That's-They're library message object] hardly portable."
	Taking action	11	"[Cap That's-They're library message object] fixed in place."
	Taking action	12	"You're carrying too many things already."
	Taking action	13	"(putting [the library message object] into [the current player's holdall] to make room)[ignore library line break]"
	Taking action	14	"You can't reach into [the library message object]." 
	Taking action	15	"You cannot carry [the library message object]." 
	Taking action	16	"[The person asked] pick[s] up [the noun]."
	Taking inventory action	1	"You are carrying nothing."
	Taking inventory action	2	"You are carrying[ignore library line break]"
	Taking inventory action	3	":[line break]"
	Taking inventory action	4	"."  [TODO:  linebreak?] [unused?]
	Taking inventory action	5	"[The person asked] look[s] through [its-their] possessions."
	Taking off action 	1	"You're not wearing [that-those noun]."
	Taking off action 	2	"You take off [the noun]."
	Taking off action 	3	"[The person asked] takes off [the noun]."
	Tasting action		1	"You taste nothing unexpected."
	Telling it about action	1	"You talk to yourself a while."
	Telling it about action	2	"This provokes no reaction."
	Thinking action		1	"What a good idea."
	throwing it at action	1	"Futile."
	throwing it at action	2	"You lack the nerve when it comes to the crucial moment."
	Tying it to action 	1	"You would achieve nothing by this."
	Touching action		1	"Keep your hands to yourself!"
	Touching action		2	"You feel nothing unexpected."
	Touching action		3	"If you think that'll help."
	Touching action		4	"[The person asked] touch[es] [it-them of noun]self."
	Touching action		5	"[The person asked] touch[es] you."
	Touching action		6	"[The person asked] touch[es] [the noun]."
	[the Turning action was formerly re-directed to Pulling.]
	Turning action		1	"[Cap It-Those noun] [is-are] fixed in place."
	Turning action		2	"You are unable to."
	Turning action		3	"Nothing obvious happens."
	Turning action		4	"That would be less than courteous."
	[Turning action		5	"[The person asked] pull[s] [the noun]."
	Turning action		6	"[The person asked] push[es] [the noun]."]
	Turning action		7	"[The person asked] turn[s] [the noun]."
	Unlocking it with action	1	"[Cap That-Those noun] do[es]n't seem to be something you can unlock."
	Unlocking it with action	2	"[Cap That's-They're noun] unlocked at the moment."
	Unlocking it with action	3	"[Cap That-Those the second noun] do[es]n't seem to fit the lock."
	Unlocking it with action	4	"You unlock [the noun]."
	Unlocking it with action	5	"[The person asked] unlock[s] [the noun]."
	Verifying the story file action	1	"The game file has verified as intact."
	Verifying the story file action	2	"The game file did not verify as intact, and may be corrupt."
	Waiting action		1	"Time passes."
	Waiting action		2	"[The person asked] wait[s]."
	Waking action		1	"That seems unnecessary."
	Waking up action 	1	"The dreadful truth is, this is not a dream."
	Waving action		1	"But you aren't holding [that-those noun]."
	Waving action		2	"You look ridiculous waving [the noun]."
	Waving action		3	"[The person asked] wave[s] [the noun]."
	Waving Hands action	1	"You wave, feeling foolish."
	Wearing action		1	"You can't wear [that-those noun]!"
	Wearing action		2	"You're not holding [that-those noun]!"
	Wearing action		3	"You're already wearing [that-those noun]!"
	Wearing action		4	"You put on [the noun]."
	Wearing action		5	"[The person asked] put[s] on [the noun]."

These final phrases do not exist in Plurality, but are used to preserve the wording of the original messages.
	To decide what text is Cap That's-They're of/-- (item - an object): mark item in output; if the item acts plural or the item is the player, decide on "They're"; otherwise decide on "That's".
	
	To decide what text is Cap It-Those of/-- (item - an object): mark item in output; if the item acts plural or the item is the player, decide on "Those"; otherwise decide on "It".
	
	To say #if American dialect: (- #ifdef DIALECT_US; -).
	To say #if Z-machine: (- #ifdef TARGET_ZCODE; -).
	To say #otherwise: (- #ifnot; -).
	To say #end if: (- #endif; -).





