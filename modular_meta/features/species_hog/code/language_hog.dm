/datum/language/hogic
	name = "Hogic"
	desc = "It's not a Pig Latin you damm ass!"
	key = "s" // swine
	space_chance = 85
	default_priority = 90
	syllables = list("oink","OInk","hrya","hrYA","hrr","hrrr","hreee","hRr")
	icon_state = "pig"
	always_use_default_namelist = TRUE

/datum/language_holder/hog
	understood_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/hogic = list(LANGUAGE_ATOM),
	)
	spoken_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/hogic = list(LANGUAGE_ATOM),
	)
