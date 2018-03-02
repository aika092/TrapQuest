Squirting by Actions begins here.


Check squeezing:
	if the noun is bottle, try squirting the noun instead.

Squirting is an action applying to one thing.
Check squirting:
	if the noun is lubricant, try lubing instead;
	if the noun is not squirt dildo, say "This verb is for squeezing squirt dildos." instead;
	if the player is immobile or the player is in danger, say "You're currently too busy to do that!" instead;
	if the doses of the noun is 0, say "Nothing happens, because it's empty." instead;
	if the noun is not penetrating an orifice:
		say "This will empty the [noun] onto the ground, is that what you want? [yesnolink] ";
		if the player consents:
			say "You empty the contents of the [noun] onto the ground.";
			dump the noun;
			now seconds is 6 instead;
		otherwise:
			say "You change your mind." instead;
	if the latex-transformation of the player > 4 and the fill-colour of the noun is not creamy and the fill-colour of the noun is not golden and the fill-colour of the noun is not white:
		now seconds is 2;
		say "Nothing seems to happen. That's weird..." instead;
	if the noun is penetrating face, try drinking the noun instead.

Carry out squirting:
	if the noun is penetrating vagina:
		if the fill-colour of the noun is creamy:
			say "The [semen] is squirted [if pregnancy fetish is 1]almost directly into your womb[otherwise]deep into your [vagina] as you give yourself an artificial creampie[end if].";
			PussyFill 2;
		otherwise:
			say "The [fill-colour of the noun] liquid is forced into your [vagina] but quickly flows out onto the ground.";
	otherwise if the noun is penetrating asshole:
		if the humiliation of the player < HUMILIATION-SHAMELESS - 3000, say "[one of]The humiliation hits you even before you've done the act, and your hand shakes as you move it to the bulb of the dildo.[or][stopping]";
		humiliate SEVERE-HUMILIATION + MODERATE-HUMILIATION;
		if the fill-colour of the noun is creamy:
			say "You give yourself an artificial anal creampie as the [semen] flows up your [asshole].";
			AssFill 2;
		otherwise if the fill-colour of the noun is golden:
			say "You turn your [asshole] into a [one of]urinal[or]toilet[in random order] as you squirt the [urine] up inside it.";
			AssFill 2 Urine;
		otherwise if the fill-colour of the noun is white:
			say "You give yourself a small [milk] enema by squirting your breast [milk] into your [asshole].";
			AssFill 2 Milk;
		otherwise if the fill-colour of the noun is murky:
			say "You give yourself a small enema made from a mix of bodily fluids.";
			AssFill 1;
			if watersports mechanics is 1, AssFill 1 Urine;
			if lactation fetish is 1, AssFill 1 Milk;
		otherwise:
			say "You give yourself a small enema of the [PotionType of the noun], and you feel your insides quickly absorbing the liquid into your bloodstream. ";
			if the fill-type of the noun >= lowest-cursed:
				say "[if the fill-type of the noun is not remembered]The liquid must have been cursed, as you[otherwise]You[end if] feel a rush of dizziness which even as it passes leaves a lingering effect. It feels slightly more difficult to concentrate.";
				SexAddictUp 1;
				SemenAddictUp 1;
				if the fill-type of the noun is not remembered, say "You now feel confident that this colour represents a cursed drink!";
			otherwise if the fill-type of the noun is 1:
				say "The dignity improving effects of the potion are seemingly negated by the humiliating method of consumption!";
			otherwise if the fill-type of the noun is 2:
				say "You feel notably less [if diaper quest is 0]sex-obsessed[otherwise]obsessed with diapers[end if]!";
				SexAddictDown 1;
				DiaperAddictDown 1;
				AnalSexAddictDown 1;
				OralSexAddictDown 1;
				VaginalSexAddictDown 1;
				TitfuckAddictDown 1;
			otherwise if the fill-type of the noun is 3:
				if the raw intelligence of the player < the starting intelligence of the player and the sex addiction of the player < 20: [once the player's sex addiction hits max, they no longer can regain intelligence]
					say "You feel more wise, and more awake!";
					IntUp 1;
					now the fatigue of the player is 0;
				otherwise:
					say "You feel more awake!";
					now the fatigue of the player is 0;
			otherwise if the fill-type of the noun is 4:
				if the flesh volume of hips > 1:
					say "Your ass cheeks noticeably shrink.";
					if weight gain fetish is 1, decrease the flesh volume of hips by a random number between 1 and 2;
					otherwise HipDown 1;
				otherwise if the openness of asshole > 1:
					say "You feel your [asshole] tighten around the dildo.";
					decrease the openness of asshole by 1;
				otherwise:
					say "You don't notice anything change.";
			otherwise if the fill-type of the noun is 5:
				say "You start to feel proud of yourself but then the feeling fades. It's difficult to gain self esteem whilst you have a dildo stuck up your [asshole].";
			otherwise if the fill-type of the noun is 6:
				say "Your [asshole][if the player is female], [vagina][end if] and body are fully healed!";
				now the soreness of asshole is 0;
				now the soreness of vagina is 0;
				now the body soreness of the player is 0;
			otherwise if the fill-type of the noun is 7:
				let B be a random cursed bottle in the location of the player;
				if B is bottle:
					say "The [printed name of B] shines brightly and loses its curse!";
					bless B;
				otherwise:
					say "Nothing seems to happen.";
			now the Known corresponding to an Magic of the fill-type of the noun in the Table of Drinks is 1;
	decrease the doses of the noun by 1;
	now seconds is 3.

Understand "squirt [something]", "squeeze [something]" as squirting.


Squirting ends here.

