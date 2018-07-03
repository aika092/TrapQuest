"Trap Quest" by Aika

[PUBLIC VERSION]

Release along with cover art.
The story genre is "Erotica".
Use BRIEF room descriptions.
The story creation year is 2017.

Include Compiler Settings by Miscellaneous Backend.
Include Third Party Extensions by Third Party Extensions.

[!<SetUpDebugStuff>+

Used for testing, to modify the starting state.

+!]
To set up debug stuff:
	do nothing.
[
 Beginning InformDoc specification:

 Any variable documentation starts with the tag [!<VARIABLENAME:VARIABLETYPE>* (closed in reverse order). *!]
 Any function documentation starts with the tag [!<FUNCTIONNAME>+ (again, closed in reverse order). +!]
 Any class documentation (including variables and functions within classes) starts with the tag [!<CLASSNAME>@ @!]
 Class tags for variables/functions within classes should be expanded to [!<ClassName>@<VARIABLENAME:VARIABLETYPE|FUNCTIONNAME>*|+ (as appropriate) +|*!]
"
 All annotations associated with normal JavaDocs should still work within these tags. ALL ANNOTATIONS MUST OCCUR AFTER THE GENERAL FUNCTION/CLASS DESCRIPTION. The main annotations to take note of are:
	 @param <CLASSNAME>:<VariableName> -> For any parameter/argument used within the function, describe the class it belongs to and the name of the variable within the function immediately after the annotation.
	 @return <CLASSNAME> -> If the function returns a variable, describe the class of that variable immediately after the annotation.
	 @inherits <CLASSNAME> -> (For classes only) If the class directly inherits another object, note the object down (no description required).
	 @deprecated -> If the function has been deprecated, say why.
	 @throws -> Probably not used, but should be something to consider when having functions that can be erroneous.
	 @since <MAJOR.MINOR.PATCH> -> Describe when a new function was added according to the released version that it first appeared in.

Any descriptor can be written using the markdown syntax to apply stylistics and format everything. If you do not know what the markdown syntax is... I would suggest Google is a great place to start. The following is an example for all listed possibilities:
]

[!<testingVariable:Integer>*

This variable is an *integer* that sits around and does very little.
*!]

[!<TestingFunction>+

This is a testing function that doesn't really do much in the way of anything.

 @param <Integer>:<a> The integer, **a**, also doesn't do much within this function.

 @return <NULL> Yep... this function is definitely so very useful...
+!]

[!<Testing>@
This is the testing class description. It's mostly empty because the testing class
doesn't exactly do much, but it sits here and looks pretty anyway...

Probably...

+ We Hope
+ Or Something
@!]

[!<Testing>@<canDocument:bool>*

This is the description for the canDocument boolean within the Testing class.
Once again, it does very little.
*@!]

[!<Testing>@<CanDocument>+

This is the description for the CanDocument function within the Testing Class.
Apparently, because I am writing these things now, that would indicate that I
can document things. Woop!

 @param <Integer>:<a> The integer, a, is given to the function as a gift from
 				      three wise programmers.
 @param  <String>:<b> The String, b, is given to the function by a wandering
 					  shepherd.
 @param <Boolean>:<c> The boolean, c, is given to the function by a daft old
 					  geezer that appeared from nowhere.

 @return <Boolean> Returns whether the programmer can document things or not.
  Mainly not since this is kinda a fake function...

+@!]



Include Cutscene Figures by Miscellaneous Frontend.


Volume 2 - Game Setup

Include Frontend Framework by Miscellaneous Frontend.
Include Backend Framework by Miscellaneous Backend.
[Backend Framework contains the majority of the listed extensions.]


Volume 3 - Version

Include Public Version Stuff by Miscellaneous Backend.

