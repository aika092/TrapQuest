Room Descriptions by Miscellaneous Backend begins here.


[This is a rule that comes with the base code, we are removing it to add our own directly below.  We are doing this because the original code doesn't list the items inside a container in the things the player can see in a room.]
The you-can-also-see rule is not listed in the for printing the locale description rulebook.

[!<ForPrintingTheLocaleDescription>+

We list all the things that the player can see.  This function is called pretty much whenever a room's description is printed.

+!]
For printing the locale description (this is the you-can-also-see-modified rule):
	let the domain be the parameter-object;
	let the mentionable count be 0;
	repeat with item running through things:
		now the item is not marked for listing;
	repeat through the Table of Locale Priorities:
		[say "[notable-object entry] - [locale description priority entry].";]
		if the locale description priority entry > 0,
			now the notable-object entry is marked for listing;
		increase the mentionable count by 1;
	if the mentionable count > 0:
		repeat with item running through things:
			if the item is mentioned:
				now the item is not marked for listing;
		begin the listing nondescript items activity with the domain;
		if the number of marked for listing things is 0:
			abandon the listing nondescript items activity with the domain;
		otherwise:
			if handling the listing nondescript items activity:
				if the domain is a room:
					if the domain is the location, say "You ";
					otherwise say "In [the domain] you ";
				otherwise if the domain is a supporter:
					say "On [the domain] you ";
				otherwise if the domain is an animal:
					say "On [the domain] you ";
				otherwise:
					say "In [the domain] you ";
				say "can [if the locale paragraph count > 0]also [end if]see ";
				let the common holder be nothing;
				let contents form of list be true;
				[repeat with list item running through marked for listing things:
					if the holder of the list item is not the common holder:
						if the common holder is nothing,
							now the common holder is the holder of the list item;
						otherwise now contents form of list is false;
					if the list item is mentioned, now the list item is not marked for listing;
				filter list recursion to unmentioned things;
				if contents form of list is true and the common holder is not nothing,
					list the contents of the common holder, as a sentence, including contents,
						giving brief inventory information, tersely, not listing
						concealed items, listing marked items only;][otherwise ]
				[say "[a list of marked for listing things including contents]";]
				let X be the number of marked for listing things;
				repeat with T running through marked for listing things:
					if X > 1, say "a [if T is container][full text of T][otherwise][T][end if], ";
					otherwise say "[if the number of marked for listing things > 1]and [end if]a [if T is container][full text of T][otherwise][T][end if]";
					decrease X by 1;
				if the domain is the location, say " here";
				say ".[paragraph break]";
				[unfilter list recursion;]
			end the listing nondescript items activity with the domain;
	continue the activity.
	
[!<ToSayFullTextOfContainer>+

REQUIRES COMMENTING

+!]
To say full text of (C - a container):
	if the number of things in C is 0 or C is closed:
		say "[C] [if C is closed](closed)[otherwise](empty)[end if]";
	otherwise:
		say "[C] (which contains [a list of things in C])".

[!<ToSayFullTextOfPedestal>+

REQUIRES COMMENTING

+!]
To say full text of (C - a pedestal):
	say "[C] ";
	if C is closed, now disambiguation-busy is true; [disables hyperlinks until set to false]
	if there is a thing in C, say "[if C is closed](closed)[otherwise](open)[end if] (which contains [a list of things in C])";
	otherwise say "(empty)";
	now disambiguation-busy is false.



Room Descriptions ends here.
