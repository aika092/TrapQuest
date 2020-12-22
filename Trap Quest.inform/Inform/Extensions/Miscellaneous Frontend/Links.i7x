Links by Miscellaneous Frontend begins here.

Part 0 - Backend Hacky Stuff

waitingForChar is initially false.

To decide what number is the actual chosen letter:
	(- VM_KeyChar() -).

To decide what number is the chosen letter:
	now waitingForChar is true;
	decide on the actual chosen letter.

To decide which number is the StrToInt of (T - a text):
	if number of characters in T is 1:
		if character number 1 in T is "0", decide on 0;
		if character number 1 in T is "1", decide on 1;
		if character number 1 in T is "2", decide on 2;
		if character number 1 in T is "3", decide on 3;
		if character number 1 in T is "4", decide on 4;
		if character number 1 in T is "5", decide on 5;
		if character number 1 in T is "6", decide on 6;
		if character number 1 in T is "7", decide on 7;
		if character number 1 in T is "8", decide on 8;
		if character number 1 in T is "9", decide on 9;
	decide on -1.

Glulx input handling rule for a char-event:
	let N be the glk event value 1;
	if N is consent-responsive:
		if N is 89 or N is 121, say "[bold type]Yes[roman type][line break]";
		otherwise say "[bold type]No[roman type][line break]";
	otherwise if N >= 48 and N <= 57:
		say "[bold type][N - 48][roman type][line break]";
	now waitingForChar is false.

The default graphlink processing rule is not listed in the graphlink processing rulebook.

A graphlink processing rule for a g-element (called the link) (this is the Aika graphlink processing rule):
	if debugmode > 1, say "Processing graphlink for [candidate replacement command].";
	unless the candidate replacement command is "":
		if PopupButtons > 0 and the candidate replacement command exactly matches the regular expression "x .*": [When we would normally examine something, we want to instead pull up the popup buttons. Unless they're already pulled up and the player has clicked on the examine button, in which case we want to actually do the action.]
			[do nothing;]
			if debugmode > 1, say "[bold type]Doing nothing, expecting buttons.[roman type][line break]";
		otherwise if waitingForChar is false:
			cancel input in main window;
			now the glulx replacement command is the candidate replacement command;
			follow the command-showing rules;
			change the text of the player's command to the Glulx replacement command;
			now the glk event type is line-event;
			now the glk event value 1 is the number of characters in the glulx replacement command;
		otherwise: [If we're waiting on a *character*, we convert a hyperlink event to a char event here. Currently coded for yes/no hyperlinks and integers only.]
			cancel input in main window;
			follow the command-showing rules;
			now the glk event type is char-event;
			now the glk event value 1 is 4;
			let STI be the StrToInt of the candidate replacement command;
			if STI >= 0:
				now the glk event value 1 is STI + 48;
				say "[bold type][STI][roman type][line break]";
				now waitingForChar is false;
			otherwise if the candidate replacement command exactly matches the text "yes", case insensitively:
				now the glk event value 1 is 121;
				say "[bold type]Yes[roman type][line break]";
				now waitingForChar is false;
			otherwise if the candidate replacement command exactly matches the text "no", case insensitively:
				now the glk event value 1 is 110;
				say "[bold type]No[roman type][line break]";
				now waitingForChar is false;
		now the the glk event window ref is the ref number of the acting main window;
		now the candidate replacement command is "";
		rule succeeds.

First for processing hyperlinks (This is the Aika char-inject with hyperlinks rule):
	if waitingForChar is true:
		now the glulx replacement command is entry (hyperlink ID) of the hyperlink list;
		let STI be the StrToInt of the glulx replacement command;
		if STI >= 0:
			now the glk event value 1 is STI + 48;
			now the glk event type is char-event;
			say "[bold type][STI][roman type][line break]";
		otherwise if the glulx replacement command exactly matches the text "yes", case insensitively:
			now the glk event type is char-event;
			now the glk event value 1 is 121;
			say "[bold type]Yes[roman type][line break]";
		otherwise if the glulx replacement command exactly matches the text "no", case insensitively:
			now the glk event type is char-event;
			now the glk event value 1 is 110;
			say "[bold type]No[roman type][line break]";
		if the glk event type is char-event:
			now waitingForChar is false;
			now the glulx replacement command is "";
			cancel input in main window;
			follow the command-showing rules;
		rule succeeds;
	continue the action.

Part 1 - Basic Links

To decide which number is linksCurrentlyEnabled:
	if (links-disabled is true and inventory hyperlinks is 0) or (excessiveHyperlinks is 0 and inventory-busy is 0 and the focus-window is g-present and the clothing-focus-window is g-present and (the inventory-focus-window is g-present or the inventory-window is g-present) and the map-window is g-present), decide on 0;
	decide on 1.

[!<SayTQLink>+

Start of a hyperlink.

+!]
To say TQlink:
	if inline hyperlinks >= 1, say "[link]".

[!<SayTQlinkOfThing>+

Start of a hyperlink for a thing that's been properly coded.

+!]
To say TQlink of (T - a thing):
	if ((inline hyperlinks >= 1 or disambiguation-busy is true) and the text-shortcut of T is not "") or the link-disambiguation-ID of T > 0, say "[link]".

A thing has a number called the link-disambiguation-ID.
linkDisambiguationHighest is a number that varies.
An all later time based rule (this is the reset link disambiguation rule):
	if linkDisambiguationHighest > 0:
		now linkDisambiguationHighest is 0;
		repeat with T running through things:
			now the link-disambiguation-ID of T is 0.
To assign link disambiguation ID to (T - a thing):
	increase linkDisambiguationHighest by 1;
	now the link-disambiguation-ID of T is linkDisambiguationHighest.

[!<SayTQxlinkOfThing>+

End of a hyperlink for a thing that's been properly coded, where clicking examines the thing.

+!]
To say TQxlink of (T - a thing):
	say ownership-desc of T;
	if the link-disambiguation-ID of T > 0:
		say " ([link-disambiguation-ID of T])[as][link-disambiguation-ID of T][end link]";
	otherwise if disambiguation-busy is true:
		if the text-shortcut of T is not "", say "[as][Disambiguation-ID-count / 2][end link]";
		say " ([Disambiguation-ID-count / 2])";
		now the disambiguation-ID of T is disambiguation-ID-count / 2;
		increase disambiguation-ID-count by 1; [It seems to go up twice each time for no reason. Hence we do the halving thing.]
	otherwise if inline hyperlinks >= 1 and the text-shortcut of T is not "":
		say "[as]x [text-shortcut of T][end link]".

[*<SayTQdlink>+

End of a hyperlink.

+!]
To say TQdlink:
	if inline hyperlinks >= 1, say "[end link]".

[!<SayTQdlinkOfThing>+

End of a hyperlink for a thing that's been properly coded.

+!]
To say TQdlink of (T - a thing):
	if inline hyperlinks >= 1 and the text-shortcut of T is not "", say "[end link]".

[!<SayTQtlinkOfThing>+

For when the click always takes the thing

+!]
To say TQtlink of (T - a thing):
	if inline hyperlinks >= 1 and the text-shortcut of T is not "", say "[as]ta [text-shortcut of T][end link]".

Part 2 - Yes & No

Definition: yourself is in agreement: [Some issues with hyperlinks and yes/no]
	[if inline hyperlinks >= 1:
		say "(automatic yes)[line break]";
		decide yes;]
	if the player is consenting, decide yes;
	decide no.

To say yesnolink:
	if the player is not virtual or (actual inline hyperlinks >= 1 and YesNoPreference > 0), say "([link]yes[end link] / [link]no[end link]) ".

Figure of YesButton is the file "Special/Buttons/yes.png".
Figure of NoButton is the file "Special/Buttons/no.png".

currentlyConsenting is initially false.

Definition: a text (called T) is consent-responsive:
	if T exactly matches the text "yes", case insensitively:
		decide yes;
	if T exactly matches the text "y", case insensitively:
		decide yes;
	if T exactly matches the text "no", case insensitively:
		decide yes;
	if T exactly matches the text "n", case insensitively:
		decide yes;
	decide no.

[A-Z is 65 - 90
a-z is 97 - 122
Y is 89; y is 121
N is 78; n is 110]

Definition: a number (called N) is consent-responsive:
	if N is 78 or N is 89 or N is 110 or N is 121, decide yes;
	decide no.

Definition: yourself is consenting:
	now currentlyConsenting is true;
	refresh the map-window;
	force immediate inventory-focus redraw;
	force immediate clothing-focus redraw;
	let inputNumber be 0;
	while inputNumber is not consent-responsive:
		say yesnolink;
		display focus stuff;
		if the player is virtual, display stuff;
		now inputNumber is the chosen letter;
		say line break;
		if inputNumber is not consent-responsive:
			say "Input not understood. Please choose Y or N.";
	conclude consenting;
	if inputNumber is 89 or inputNumber is 121, decide yes;
	decide no.

bigGameLoop is a number that varies. [If this is above 0, we are flagging that a long series of yes/no questions are about to be asked, and there's no need to refresh the map window between each one. We must remember to set it back to 0 and refresh the windows at the end of the lesson or whatever it is. Easiest way is with a 'conclude consenting' after 'now bigGameLoop is 0'.
0: Normal behaviour
1: Skip refreshing map window
2: Skip refreshing map window, including after multiple choice
3: Skip refreshing all windows
4: Skip refreshing all windows, including not refreshing map after multiple choice
]

To conclude consenting:
	now currentlyConsenting is false;
	if gameover-flag is 0:
		zero focus stuff; [We empty the focus window to make sure it is rebuilt properly. By being forced to pause and choose an option, the player has seen any cutscenes, NPCs that left, etc.]
		repeat with G running through g-paused animation tracks:
			now G is g-unpaused;
		if bigGameLoop is 0 or (bigGameLoop is not 2 and bigGameLoop is not 4 and temporary-map-figure is not figure of no-image-yet):
			refresh the map-window;
		otherwise:
			clear the map-window; [if we don't do this, and we use both Yes/No questions and multiple choice questions in the same big game loop, we get some ugly overlaps in the map window]
		if bigGameLoop < 3, render buffered stuff.

[Works the same as normal consenting, but the player can be forced to say yes. Some things it'll be fun if the player can't say no after a while.]
Definition: yourself is bimbo consenting:
	if the player is consenting:
		decide yes;
	otherwise:
		if the player is not in a predicament room and (the implant of ultimate-lesson-yes is 1 or the bimbo of the player >= a random number between 16 and 20):
			say "[if the implant of ultimate-lesson-yes is 1]The curse activates.[line break][second custom style][otherwise][second custom style]Huh? [end if]Good [boy of the player]s always say yes! I pick yes![roman type][line break]";
			decide yes;
		decide no.

[works the same as normal consenting, unless bimbo forces the player to say no. For some things the 'bimbo' answer is no.]
Definition: yourself is reverse bimbo consenting:
	if the player is consenting:
		if the player is not in a predicament room and the bimbo of the player >= a random number between 16 and 20:
			say "[second custom style]No no no, I can't do that, I'm a [if diaper quest is 1]good [boy of the player][otherwise]mega-slut, and I'm going to act like a slut[end if].[roman type][line break]";
			decide no;
		decide yes;
	otherwise:
		decide no.

To render YesNoBackground:
	let F be YesNoBackground;
	if F is not Figure of no-image-yet:
		let H be the height of the map-window;
		let W be the width of the map-window;
		repeat with G running through g-animated animation tracks:
			now G is g-paused; [stops things like the need-to-use-toilet animations from animating on top]
		let XRatio be (W * 1.0) / the pixel-width of F;
		let FY be the pixel-height of F * XRatio;
		let FYi be FY to the nearest whole number;
		let FXi be W;
		let X1 be 0;
		let Y1 be 0;
		if FYi > H:
			let YRatio be (H * 1.0) / the pixel-height of F;
			let FX be the pixel-width of F * YRatio;
			now FXi is FX to the nearest whole number;
			now FYi is H;
			now X1 is (W - FXi) / 2; [centred horizontally]
		otherwise:
			now Y1 is (H - FYi) / 2; [centred vertically]
		display the image F in the map-window at X1 by Y1 with dimensions FXi by FYi.

To render YesNoButtons:
	let F be YesNoBackground;
	if F is Figure of no-image-yet, display entire map; [We have flagged that we still want to show the player the map in the background]
	zero map-link-table;
	zero map-button-table;
	let H be the height of the map-window;
	let W be the width of the map-window;
	render YesNoBackground;
	[Calculate button image sizes and locations]
	let buttonSize be H / 3;
	if W < H, now buttonSize is W / 3;
	let X be (W - (buttonSize * 2)) / 3;
	let Y be (H / 2) - (buttonSize / 2);
	if actual inline hyperlinks >= 1 and YesNoPreference > 0:
		display the image Figure of YesButton in the map-window at X by Y with dimensions buttonSize by buttonSize;
		set a graphlink in the map-window identified as hypermapyes from X by Y to (X + buttonSize) by (Y + buttonSize) as "yes";
		draw a box lightModeFullGreen in the map-window from X by Y to (X + buttonSize) by (Y + buttonSize) with 1 pixel line-weight, inset;
		increase X by buttonSize + X;
		display the image Figure of NoButton in the map-window at X by Y with dimensions buttonSize by buttonSize;
		set a graphlink in the map-window identified as hypermapno from X by Y to (X + buttonSize) by (Y + buttonSize) as "no";
		draw a box lightModeFullRed in the map-window from X by Y to (X + buttonSize) by (Y + buttonSize) with 1 pixel line-weight, inset.

Part 3 - Multiple Choice

player-numerical-response is a number that varies.

A numerical-response is a kind of thing.

numerical-response-1 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-1):
	decide on 1.
numerical-response-2 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-2):
	decide on 2.
numerical-response-3 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-3):
	decide on 3.
numerical-response-4 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-4):
	decide on 4.
numerical-response-5 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-5):
	decide on 5.
numerical-response-6 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-6):
	decide on 6.
numerical-response-7 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-7):
	decide on 7.
numerical-response-8 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-8):
	decide on 8.
numerical-response-9 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-9):
	decide on 9.
numerical-response-0 is a numerical-response.
To decide which number is the numerical-response-value of (N - numerical-response-0):
	decide on 0.

To decide which object is the chosen numerical response of (N - a number):
	repeat with R running through numerical-response:
		if the numerical-response-value of R is N, decide on R.

To decide which object is the chosen numerical response:
	decide on the chosen numerical response of player-numerical-response.

To set next numerical response to (T - a text):
	repeat with R running through numerical-response:
		if the printed name of R is "":
			now the printed name of R is T;
			break.

To set numerical response (N - a number) to (T - a text):
	repeat with R running through numerical-response:
		if the numerical-response-value of R is N, now the printed name of R is T.

To compute multiple choice question:
	let inputNumber be 0;
	let validAnswer be 0;
	while validAnswer is 0:
		now currentlyConsenting is true;
		repeat with R running through numerical-response:
			if the printed name of R is not "":
				let N be the numerical-response-value of R;
				say "[link][N]) [R][as][N][end link][line break]";
		if gameover-flag is 0:
			display focus stuff;
			if the player is virtual, display stuff;
			if YesNoBackground is Figure of no-image-yet, display entire map; [We have flagged that we still want to show the player the map in the background]
			render YesNoBackground;
		now inputNumber is the chosen letter;
		decrease inputNumber by 48; [convert key ID to integer]
		say line break;
		repeat with R running through numerical-response:
			if the printed name of R is not "" and inputNumber is the numerical-response-value of R, now validAnswer is 1;
		if validAnswer is 0, say "Input not understood. Please choose a valid number.";
	now player-numerical-response is inputNumber;
	conclude consenting. [refreshes the map window]

To reset multiple choice questions:
	repeat with R running through numerical-response:
		now the printed name of R is "".

Part 4 - VerbDescs

To say verb-desc of (T - a thing):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[unique-verb-desc of T][if (T is ingredient or T is mass collectible) and T is carried and there is a ready for alchemy crafting-table in the location of the player] [link][bracket]craft[close bracket][as]put [text-shortcut of T] in bowl[end link][end if][if the player is in Hotel16 and T is portable and T is not person] [link][bracket]chute[close bracket][as]put [text-shortcut of T] in chute[end link][end if][if T is portable and (T is not worn or T is not cursed clothing) and the number of interested intelligent monsters in the location of the player is 1 and the bartering value of T for a random interested intelligent monster in the location of the player > 0] [link][bracket]offer[close bracket][as]offer [text-shortcut of T] to [text-shortcut of random interested intelligent monster in the location of the player][end link][end if][if T is portable and T is held and there is an open pink wardrobe in the location of the player and (T is not worn or T is not cursed)] [link][bracket]wardrobe[close bracket][as]put [text-shortcut of T] in pink wardrobe[end link][end if]".

To say unique-verb-desc of (T - a thing):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is portable and T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is portable] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - a container):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is closed] [link][bracket]op[close bracket][as]open [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - pink wardrobe):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is closed] [link][bracket]op[close bracket][as]open [text-shortcut of T][end link][otherwise if the number of things in T > 1] [link][bracket]take all[close bracket][as]take all[end link][end if]".

To say unique-verb-desc of (T - a pedestal):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is erect] [link][bracket]suck[close bracket][as]drink [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - a christmas gift):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]op[close bracket][as]open [text-shortcut of T][end link]".

To say unique-verb-desc of (T - a minibar):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is closed] [link][bracket]op[close bracket][as]open [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - mystical wardrobe):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]op[close bracket][as]open [text-shortcut of T][end link]".

To say unique-verb-desc of (T - a clothing):
	let H be a random worn bag of holding;
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is held and T is not piercing and (T is not cursed or T is not worn)] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if T is worn and T is not piercing and (T is not cursed or newbie tips is 1)] [link][bracket]r[close bracket][as]rm [text-shortcut of T][end link][otherwise if T is not worn] [link][bracket]we[close bracket][as]we [text-shortcut of T][end link][end if][displacelinks of T][if the player is in Dungeon28 or the player is in Tutorial05] [link][bracket]altar[close bracket][as]put [text-shortcut of T] on altar[end link][end if][if the player is in Woods30 and T is not worn and T is dirty and the giant-statue is active] [link][bracket]statue[close bracket][as]place [text-shortcut of T] in front of statue[end link][end if][if the player is in Dungeon33 and T is not worn and T is dirty and the summoning-circle is active] [link][bracket]circle[close bracket][as]throw [text-shortcut of T] in circle[end link][end if][if the player is in Hotel19 and T is worn and the charge of a random knife <= 0] [link][bracket]cut[close bracket][as]cut [text-shortcut of T] with knife[end link][end if][if (the player is in Dungeon35 or the player is in Woods05 or the player is in Hotel19 or the player is in Mansion25 or the player is in School21) and T is carried and T is dirty] [link][bracket]wash[close bracket][as]wash [text-shortcut of T] in water[end link][end if][wipelinks of T][if there is glue in the location of the player and the stickiness of the player > 0 and T is not glued] [link][bracket]brush glue[close bracket][as]rub glue on [text-shortcut of T][end link][end if][if T is carried and H is a thing and the hunger-declared of H > 0] [link][bracket]feed bag[close bracket][as]feed [text-shortcut of T] to [text-shortcut of H][end link][end if][if T is diaper and the known-urine-soak of T + the perceived-mess of T > 0 and there is an alive friendly witch in the location of the player] [link][bracket]witch[close bracket][as]give [text-shortcut of T] to witch[end link][end if]".

To say displacelinks of (T - a clothing):
	say "[if T is skirted and T is worn and T is displacable and T is crotch-in-place] [link][bracket]raise skirt[close bracket][as]displace [text-shortcut of T][end link][otherwise if T is worn and T is displacable and T is crotch-in-place] [link][bracket]displace[close bracket][as]displace [text-shortcut of T][end link][otherwise if T is skirted and T is worn and T is displacable] [link][bracket]fix skirt[close bracket][as]replace [text-shortcut of T][end link][otherwise if T is worn and T is displacable] [link][bracket]replace[close bracket][as]replace [text-shortcut of T][end link][end if][if diaper quest is 0 and T is not not-top-displacable and T is worn actually breast covering clothing] [link][bracket]expose chest[close bracket][as]pull open [text-shortcut of T][end link][otherwise if diaper quest is 0 and T is worn top-displaced clothing] [link][bracket]cover chest[close bracket][as]fix [text-shortcut of T][end link][end if][if T is worn and T is zippable and T is crotch-zipped] [link][bracket]unzip[close bracket][as]unzip [text-shortcut of T][end link][otherwise if T is worn and T is zippable] [link][bracket]zip[close bracket][as]zip [text-shortcut of T][end link][end if]".

To say wipelinks of (T - a clothing):
	if T is not worn and T is acceptableCumRag, say "[if the semen coating of face > 0] [link][bracket]wipe face[close bracket][as]wipe face with [text-shortcut of T][end link][otherwise if the semen coating of hair > 1] [link][bracket]wipe hair[close bracket][as]wipe hair with [text-shortcut of T][end link][otherwise if the semen coating of breasts > 0] [link][bracket]wipe chest[close bracket][as]wipe breasts with [text-shortcut of T][end link][otherwise if the semen coating of belly > 0] [link][bracket]wipe belly[close bracket][as]wipe belly with [text-shortcut of T][end link][otherwise if the semen coating of thighs > 0] [link][bracket]wipe thighs[close bracket][as]wipe thighs with [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - an accessory):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is held and (T is not cursed or T is not worn)] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if T is worn and T is not cursed] [link][bracket]r[close bracket][as]rm [text-shortcut of T][end link][otherwise if T is not worn] [link][bracket]we[close bracket][as]we [text-shortcut of T][end link][end if][if the player is in Woods20 and T is plentiful] [link][bracket]altar[close bracket][as]put [text-shortcut of T] on altar[end link][end if][if the player is in Woods27] [link][bracket]wish[close bracket][as]put [text-shortcut of T] in well[end link][end if][if there is an open minibar in the location of the player and T is plentiful] [link][bracket]restock minibar[close bracket][as]restock minibar with [text-shortcut of T][end link][end if]".

[!<SayTQxlinkOfAccessory>+

Fixing an issue with disambiguity detailed below

+!]
[To say TQxlink of (T - an accessory):
	if inline hyperlinks >= 1 and the text-shortcut of T is not "", say "[as]x [text-shortcut of T][end link]";
	if inline hyperlinks is 0 and disambiguation-busy is true, say "[bold type][if T is worn] (worn)[otherwise] (unworn)[end if][roman type]".]

To say unique-verb-desc of (T - a vessel):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if the doses of T > 0] [link][bracket]dri[close bracket][as]dr [text-shortcut of T][end link][end if][if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if there is a dispenser in the location of the player and the player is upright] [link][bracket]dip[close bracket][as]dip [text-shortcut of T][end link][end if][if the doses of T > 0 and there is a carried squirt dildo and T is not squirt dildo] [link][bracket]decant[close bracket][as]decant [text-shortcut of T] into squirt dildo[end link][end if][if the doses of T > 0 and the fill-type of T >= 20 and there is a friendly witch in the location of the player] [link][bracket]witch[close bracket][as]give [text-shortcut of T] to witch[end link][end if][if T is serve-ready] [link][bracket]serve[close bracket][as]offer [text-shortcut of T] to [text-shortcut of random friendly human intelligent monster in the location of the player][end link][end if]".

To say unique-verb-desc of (T - a squirt dildo):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if the doses of T > 0] [link][bracket]dri[close bracket][as]dr [text-shortcut of T][end link][end if][if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if there is a dispenser in the location of the player and the player is upright] [link][bracket]dip[close bracket][as]dip [text-shortcut of T][end link][end if][if T is penetrating an orifice and the doses of T > 0] [link][bracket]squeeze[close bracket][as]squeeze [text-shortcut of T][end link][end if][if the doses of T > 0 and the fill-type of T >= 20 and there is a friendly witch in the location of the player] [link][bracket]witch[close bracket][as]give [text-shortcut of T] to witch[end link][end if]".

To say unique-verb-desc of (T - an alchemy product):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]dri[close bracket][as]dr [text-shortcut of T][end link][if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - a can):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]dri[close bracket][as]dr [fill-colour of T] can[end link][if T is held] [link][bracket]dr[close bracket][as]drop [fill-colour of T] can[end link][otherwise] [link][bracket]ta[close bracket][as]ta [fill-colour of T] can[end link][end if]".

To say unique-verb-desc of (T - a monster):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "" and hyperlink extras is 1:
		if T is friendly and T is intelligent:
			say "[run paragraph on] [link][bracket]talk[close bracket][as]talk to [text-shortcut of T][end link]";
		otherwise if the player is upright:
			say " [link][bracket]sl[close bracket][as]sl [text-shortcut of T][end link] [link][bracket]kn[close bracket][as]kn [text-shortcut of T][end link] [link][bracket]ki[close bracket][as]ki [text-shortcut of T][end link]";
			repeat with BM running through held zappable things:
				if the damage improvement of BM > 0, say " [link][bracket][ShortDesc of BM][close bracket][as]zap [the text-shortcut of T] with [the text-shortcut of BM][end link]";
			repeat with BM running through carried combat-bomb bombs:
				say " [link][bracket][ShortDesc of BM][close bracket][as]throw [the text-shortcut of BM] at [the text-shortcut of T][end link]";
		otherwise if T is uninterested:
			say " [link][bracket]poke[close bracket][as]poke [text-shortcut of T][end link]";
		if T is actually seducable:
			say " [link][bracket]seduce[close bracket][as]seduce [text-shortcut of T][end link]".

To say unique-verb-desc of (T - a fairy):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "" and hyperlink extras is 1:
		say "[run paragraph on] [link][bracket]talk[close bracket][as]talk to [text-shortcut of T][end link]";
		if the player is upright, say " [link][bracket]sl[close bracket][as]sl [text-shortcut of T][end link] [link][bracket]kn[close bracket][as]kn [text-shortcut of T][end link] [link][bracket]ki[close bracket][as]ki [text-shortcut of T][end link]".

To say unique-verb-desc of (T - a vine boss):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "" and hyperlink extras is 1:
		if the player is upright, say " [link][bracket]sl[close bracket][as]sl [text-shortcut of T][end link][unless there is a vine grabbing the player] [link][bracket]kn[close bracket][as]kn [text-shortcut of T][end link] [link][bracket]ki[close bracket][as]ki [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - slimegirl):
	if inline hyperlinks >= 2, say "[run paragraph on] [link][bracket]talk[close bracket][as]talk to [text-shortcut of T][end link]".

To say unique-verb-desc of (T - a dildo trap):
	if inline hyperlinks >= 2 and T is penetrating a fuckhole, say " [link][bracket]jump[close bracket][as]jump[end link][if doll-stuck-num > 0] [link][bracket]submit[close bracket][as]submit[end link][end if]".

To say unique-verb-desc of (T - a baby bouncer):
	if inline hyperlinks >= 2, say "[if T is grabbing the player] [link][bracket]submit[close bracket][as]submit[end link] [link][bracket]resist[close bracket][as]resist[end link] [link][bracket]jump[close bracket][as]jump[end link][end if]".

To say unique-verb-desc of (T - a painted horse):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole] [link][bracket]push[close bracket][as]push horse button[end link][end if]".

To say unique-verb-desc of (T - a wooden horse):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole] [link][bracket]pull[close bracket][as]pull reins[end link][end if]".

To say unique-verb-desc of (T - a rocking horse):
	if inline hyperlinks >= 2, say " [if T is grabbing the player][link][bracket]rock[close bracket][as]rock[end link][otherwise][link][bracket]rest[close bracket][as]rest on [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - an ass hook):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole] [link][bracket]pull[close bracket][as]pull hook[end link][end if]".

To say unique-verb-desc of (T - a vine):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole or T is wrangling a body part] [link][bracket]pull[close bracket][as]pull vine[end link][end if]".

To say unique-verb-desc of (T - throne):
	if inline hyperlinks >= 2, say "[if T is penetrating a fuckhole and T is untriggered] [link][bracket]pull[close bracket][as]pull binds[end link][otherwise if T is penetrating a fuckhole] [link][bracket]stand[close bracket][as]stand[end link][otherwise] [link][bracket]sit[close bracket][as]sit on throne[end link][end if]".

To say unique-verb-desc of (T - furniture):
	if inline hyperlinks >= 2, say " [link][bracket]rest[close bracket][as]rest on [text-shortcut of T][end link]".

To say unique-verb-desc of (T - hotel chairs):
	if inline hyperlinks >= 2, say " [link][bracket]sit[close bracket][as]sit on [text-shortcut of T][end link]".

To say unique-verb-desc of (T - lecture chair):
	if inline hyperlinks >= 2, say " [link][bracket]sit[close bracket][as]sit on [text-shortcut of T][end link]".

To say unique-verb-desc of (T - modification machine):
	if inline hyperlinks >= 2, say " [link][bracket]sit[close bracket][as]sit on [text-shortcut of T][end link]".

To say unique-verb-desc of (T - podium):
	if inline hyperlinks >= 2, say " [link][bracket]get on[close bracket][as]get on stage[end link]".

To say unique-verb-desc of (T - lubricant):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [if the player is not possessing a vagina][link][bracket]use[close bracket][as]use lube[end link][otherwise][link][bracket]pussy[close bracket][as]use lube on vagina[end link] [link][bracket]ass[close bracket][as]use lube on butthole[end link][end if]".

To say unique-verb-desc of (T - salve):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]breasts[close bracket][as]rub [text-shortcut of T] on breasts[end link] [link][bracket]belly[close bracket][as]rub [text-shortcut of T] on belly[end link] [link][bracket]butt[close bracket][as]rub [text-shortcut of T] on hips[end link]".

To say unique-verb-desc of (T - concealment-salve):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [if the player is not possessing a vagina][link][bracket]use[close bracket][as]rub [text-shortcut of T] on butthole[end link][otherwise][link][bracket]pussy[close bracket][as]rub [text-shortcut of T] on vagina[end link] [link][bracket]ass[close bracket][as]rub [text-shortcut of T] on butthole[end link][end if]".

To say unique-verb-desc of (T - powder):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - pink pill):
	if inline hyperlinks >= 2, say " [link][bracket]eat[close bracket][as]eat pink pill[end link]".

To say unique-verb-desc of (T - feeding bowls):
	if inline hyperlinks >= 2, say " [link][bracket]eat[close bracket][as]eat [text-shortcut of T][end link]".

To say unique-verb-desc of (T - food machine):
	if inline hyperlinks >= 2, say " [link][bracket]eat[close bracket][as]eat [text-shortcut of T][end link]".

To say unique-verb-desc of (T - DungeonScenery06):
	if inline hyperlinks >= 2, say " [link][bracket]pull[close bracket][as]pull lever[end link]".

To say unique-verb-desc of (T - WoodsScenery03):
	if inline hyperlinks >= 2, say " [link][bracket]climb[close bracket][as]climb ladder[end link]".

To say unique-verb-desc of (T - cross trainer):
	if inline hyperlinks >= 2, say " [link][bracket]use[close bracket][as]use cross[end link]".

To say unique-verb-desc of (T - candy machine):
	if inline hyperlinks >= 2, say " [link][bracket]use[close bracket][as]push candy button[end link]".

To say unique-verb-desc of (T - magic lamp):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if the wishes of T > 0] [link][bracket]rub[close bracket][as]rub lamp[end link][end if]".

To say unique-verb-desc of (T - stop button):
	if inline hyperlinks >= 2, say " [link][bracket]push[close bracket][as]push stop button[end link]".

To say unique-verb-desc of (T - a make up kit):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]use[close bracket][as]use make up[end link]".

To say unique-verb-desc of (T - gloryhole):
	if inline hyperlinks >= 2 and the player is not immobile, say " [link][bracket][if the player is prone]suck[otherwise]use[end if][close bracket][as]use glory[end link]".

To say unique-verb-desc of (T - a pocketbook):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]browse[close bracket][as]browse [text-shortcut of T][end link]".

To say unique-verb-desc of (T - an electric fan):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]use[close bracket][as]activate fan[end link]".

To say unique-verb-desc of (T - squeezy-bottle):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]dri[close bracket][as]drink squeezy[end link]".

To say unique-verb-desc of (T - a food):
	if inline hyperlinks >= 2, say "[if T is held and T is not candy] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]eat[close bracket][as]eat [text-shortcut of T][end link]".

To say unique-verb-desc of (T - a snack):
	if inline hyperlinks >= 2, say "[if T is held] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if] [link][bracket]eat[close bracket][as]eat [text-shortcut of T][end link][if there is an interested friendly robochef in the location of the player] [link][bracket]chef[close bracket][as]offer [text-shortcut of T] to chef[end link][end if]".

To say unique-verb-desc of (T - a recipe):
	if inline hyperlinks >= 2, say "[if T is not memorised] [link][bracket]mem[close bracket][as]learn [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - sex toy):
	if inline hyperlinks >= 2, say "[if T is held and (T is not cursed or T is not worn)] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if the player is male and T is not worn] [link][bracket]plug[close bracket][as]plug butthole with [text-shortcut of T][end link][otherwise if T is not worn] [link][bracket]pussy[close bracket][as]plug vagina with [text-shortcut of T][end link] [link][bracket]ass[close bracket][as]plug butthole with [text-shortcut of T][end link][end if][if the player is in Dungeon28] [link][bracket]altar[close bracket][as]put [text-shortcut of T] on altar[end link][end if][if the player is in Hotel19 and T is worn] [link][bracket]cut[close bracket][as]cut [text-shortcut of T] with knife[end link][end if]".

To say unique-verb-desc of (T - a knife):
	if inline hyperlinks >= 2, say "[if diaper quest is 0 and the largeness of hair > favourite hair length] [link][bracket]cut hair[close bracket][as]cut hair[end link][end if]".

To say unique-verb-desc of (T - a trophy):
	if inline hyperlinks >= 2, say " [link][bracket]rub[close bracket][as]rub [text-shortcut of T][end link]".

To say unique-verb-desc of (T - a summoning-circle):
	if inline hyperlinks >= 2, say "[if T is active] [link][bracket]enter[close bracket][as]enter [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - a pullstring collar):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[if T is held and (T is not cursed or T is not worn)] [link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise if T is not held] [link][bracket]ta[close bracket][as]ta [text-shortcut of T][end link][end if][if T is worn and T is not cursed] [link][bracket]r[close bracket][as]rm [text-shortcut of T][end link][end if][if T is worn] [link][bracket]pull[close bracket][as]pull [text-shortcut of T][end link][end if]".

To say unique-verb-desc of (T - WoodsScenery02):
	if inline hyperlinks >= 2, say " [link][bracket]touch head[close bracket][as]touch statue's head[end link] [link][bracket]touch hand[close bracket][as]touch statue's hand[end link] [link][bracket]touch foot[close bracket][as]touch statue's foot[end link]".

To say unique-verb-desc of (T - time-bomb):
	if inline hyperlinks >= 2, say " [link][bracket]use[close bracket][as]use [text-shortcut of T][end link]".

Part 3 - Smart Links

The unique options rules is a rulebook.

unique options used is a number that varies.

hyperlink extras is a number that varies.

focused-thing is an object that varies.

To compute options:
	now hyperlink extras is 1;
	reset entire catalogue;
	if inline hyperlinks >= 2, compute smart links;
	now hyperlink extras is 0.

To compute smart links:
	say "[if there is a live thing penetrating a body part][list of live things penetrating a body part] [otherwise if there is a trap penetrating a body part][random trap penetrating a body part] [otherwise if there is a thing grabbing the player][random thing grabbing the player] [otherwise if there is a monster in the location of the player][list of monsters in the location of the player] [end if][if focused-thing is a thing][focused-thing] [end if]";
	if focused-thing is a thing, now focused-thing is catalogued;
	if the noun is a thing and the noun is not nothing and the noun is not penetrating a body part and the noun is not grabbing the player:
		say "[if the noun is yourself][link]yourself[as]x self[end link][otherwise if the noun is pink wardrobe][otherwise if the noun is open container][contentslist of the noun][otherwise if the noun is a direction][otherwise if the noun is monster][otherwise if the noun is shortcutless][otherwise if the noun is not visible][otherwise][noun][end if]";
		now the noun is catalogued;
	now Neighbour Finder is the location of the player;
	say "[line break]";
	if the player is virtual or the player is in Tutorial04, say "[if the player is prone and the player is not immobile][link]stand[end link] [link]rest[end link] [end if][if the player is upright][link]kneel[end link] [end if][if the player is in School34][link]long wait[end link][otherwise][link]wait[end link][end if] ";
	unless the player is immobile, say "[if west is N-viable][link]west[end link] [end if][if north is N-viable][link]north[end link] [end if][if south is N-viable][link]south[end link] [end if][if east is N-viable][link]east[end link] [end if][if the room up of the location is a room][link]up[end link] [end if][if the room down of the location is a room][link]down[end link] [end if]";
	if the player is prone and pink-spraybottle is worn and the milk-puddle of the location of the player + the semen-puddle of the location of the player + the urine-puddle of the location of the player >= 1, say "[link]clean mess[end link] ";
	if the player is in Dungeon35 or the player is in Woods05 or the player is in Mansion25 or the player is in School21:
		if there is worn dirty clothing or the semen coating of hair > 0 or the semen coating of face > 0 or the semen coating of breasts > 0 or the semen coating of belly > 0 or the semen coating of thighs > 0 or (diaper quest is 1 and the make-up of face > 0) or the player is in School21, say "[link]enter water[end link] ";
	say "[if the total squirtable fill of belly > 0 and the player is able to expel][link]expel[end link] [end if][if the player is bursting][link]pee[end link] [end if][if the player is horny and the player is able to masturbate][link]wank[end link] [end if][if (the player is monster fucked or there is a live thing grabbing the player or there is a live thing wrangling a body part) and the player is broken][link]submit[end link] [otherwise if the player is monster fucked or there is a live thing grabbing the player][link]submit[end link] [link]resist[end link] [otherwise if there is a live thing wrangling a body part][link]escape[end link] [end if][link]look[end link]";
	if inline hyperlinks >= 3 and the player is not immobile:
		say "[line break]";
		if diaper quest is 0:
			if there is an interested unfriendly monster in the location of the player and the player is prone:
				now auto is 1;
				repeat with P running through actually presentable body parts:
					say "[link][if the delicateness of the player < 10]suggest[otherwise]offer[end if] [P][end link] ";
					now P is catalogued;
				now auto is 1;
				let C be a random worn top level ass protection clothing;
				if C is clothing and C is not catalogued:
					if C is displacable or C is actually removable:
						say "[C] ";
						now C is catalogued;
				otherwise if there is a wearthing penetrating asshole:
					now C is a random wearthing penetrating asshole;
					if C is actually removable:
						say "[C] ";
						now C is catalogued;
				if the player is female:
					now C is a random worn top level protection clothing;
					if C is clothing and C is not catalogued:
						if C is displacable or C is actually removable:
							say "[C] ";
							now C is catalogued;
					otherwise if there is a wearthing penetrating vagina:
						now C is a random wearthing penetrating vagina;
						if C is actually removable:
							say "[C] ";
							now C is catalogued;
				now auto is 0;
			otherwise if there is a monster in the location of the player and the player is prone:
				now auto is 1;
				repeat with P running through actually presentable body parts:
					say "[link]present [P][end link] ";
					now P is catalogued;
				now auto is 0;
		[The entire segment of code above is to help the player expose and present their body parts to NPCs]
		unless the player is in danger:
			if the body soreness of the player > 0:
				repeat with F running through held candy:
					if F is toffee or F is fudge or F is chocolate bar:
						if F is not catalogued, say "[F] ";
						now F is catalogued;
			say "[if the body soreness of the player > 0 and there is a held bandage and the player is not in danger][link]use bandage[end link] [end if]";
			if there is carried acceptableCumRag clothing, say "[if the semen coating of face > 0][link]wipe face[end link] [end if][if the semen coating of hair > 1][link]wipe hair[end link] [end if][if the semen coating of breasts > 0][link]wipe tits[end link] [end if][if the semen coating of belly > 0][link]wipe belly[end link] [end if][if the semen coating of thighs > 0][link]wipe thighs[end link] [end if]";
			if (the player is in Dungeon35 or the player is in Woods05):
				repeat with F running through carried dirty clothing:
					if F is not catalogued, say "[F] ";
					now F is catalogued;
			if the player is hungry:
				repeat with F running through held food:
					if F is not catalogued, say "[F] ";
					now F is catalogued;
			if the player is thirsty:
				repeat with F running through held bottles:
					if F is not catalogued, say "[F] ";
					now F is catalogued;
			otherwise if there is a dispenser in the location of the player and the player is upright:
				repeat with F running through held vessels:
					if F is not catalogued, say "[F] ";
					now F is catalogued;
			if there is worn crotch-displaced clothing:
				repeat with F running through worn crotch-displaced clothing:
					if F is not catalogued, say "[F] ";
					now F is catalogued;
			if there is worn top-displaced clothing:
				repeat with F running through worn top-displaced clothing:
					if F is not catalogued, say "[F] ";
					now F is catalogued;
			if there is a ready for alchemy crafting-table in the location of the player:
				say "[link]list craftables[end link] ";
			if the player is in the location of the dungeon altar and the charge of the dungeon altar < 100:
				say "[link]list blessables[end link] [link]lie on altar[end link] ";
			if there is a friendly witch in the location of the player:
				repeat with F running through held diapers:
					if the known-urine-soak of F + the known-mess of F > 0:
						if F is not catalogued, say "[F] ";
						now F is catalogued;
				repeat with F running through held vessels:
					if F is non-empty and the fill-type of F >= 20:
						if F is not catalogued, say "[F] ";
						now F is catalogued;
				let F be a random held soiled-diaper;
				if F is soiled-diaper:
					if F is not catalogued, say "[F] ";
					now F is catalogued;
			if the player is in Hotel16:
				say "[link]list clothing[end link] [link]list loot[end link] ";
			let B be a random worn bag of holding;
			if B is a thing and the hunger-declared of B > 0, say "[link]list clothing[end link] ";
		repeat with F running through carried serve-ready bottles:
			if F is not catalogued, say "[F] ";
			now F is catalogued;
		if the player is glue stuck and the player is not immobile, say "[link]brush glue[end link] ";
		if there is held lubricant and (the soreness of asshole > 3 and asshole is not actually occupied) or (the soreness of vagina > 3 and vagina is not actually occupied):
			unless there is a held catalogued lubricant, say "[printed name of a random held lubricant] ";
			now a random held lubricant is catalogued;
		if (the player is in the location of the woods altar and (the altar-uses of witch > 0 or witch is unbitchy or witch is not in the location of the player or witch is unfriendly)) or the player is in the location of WoodsScenery04:
			repeat with F running through held plentiful accessories:
				if F is not catalogued, say "[F] ";
				now F is catalogued;
		if there is an interested mechanic in the location of the player:
			if mystical amulet is held:
				let G be mystical amulet;
				say "[G] ";
				now G is catalogued.

To say contentslist of (C - a container):
	if there is a thing in C, say "[list of things in the noun]".

Definition: an object is shortcutless: decide yes.

Definition: a thing is shortcutless:
	if the text-shortcut of it is "", decide yes;
	decide no.

This is the pull lever unique option rule:
	if the player is in Dungeon06:
		say "[link]pull lever[end link] ";
		increase unique options used by 1.
The pull lever unique option rule is listed in the unique options rules.

CraftListing is an action applying to nothing.
Carry out CraftListing:
	repeat with F running through carried ingredient things:
		say "[F] ";
	if there is a held magic token, say "[random held magic token] ([number of held magic tokens]) "; [Even if there are 10 held we only want to write it once]
	if there is a held sanity token, say "[random held sanity token] ([number of held sanity tokens]) "; [Even if there are 10 held we only want to write it once]
	if there is a held fabric token, say "[random held fabric token] ([number of held fabric tokens]) "; [Even if there are 10 held we only want to write it once]
	if there is a held defiance token, say "[random held defiance token] ([number of held defiance tokens]) ". [Even if there are 10 held we only want to write it once]
Understand "list craftables" as CraftListing.

AltarListing is an action applying to nothing.
Carry out AltarListing:
	say "[bold type]Worn: [roman type]";
	repeat with F running through worn tattoos:
		say "[F] ";
	repeat with F running through worn blessable clothing:
		say "[F] ";
	say "[line break][bold type]Not Worn: [roman type]";
	repeat with F running through carried sure blessable clothing:
		say "[F] ";
	repeat with F running through carried unsure potentially blessable clothing:
		say "[F] ";
	say line break.
	[say "[line break][if there are worn tattoos]You can also [bold type]place[roman type] a tattoo on the altar.[end if]".]
Understand "list blessables" as AltarListing.

Links ends here.
