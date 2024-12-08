/obj/item/organ/tongue/hog
	name = "thick tongue"
	desc = "A thick pork tongue, looks too thick."
	icon_state = "tongue"
	taste_sensitivity = 10 // pig snoot extra sensitive
	modifies_speech = FALSE // Scientists claim that pig DNA Is 98% similar to human DNA
	languages_native = list(/datum/language/hogic)
	/*
	
	"You need at least sixteen pigs to finish the job in one sitting, so be wary of any man who keeps a pig farm.
	 They will go through a body that weighs 200 pounds in about eight minutes.
	 That means that a single pig can consume two pounds of uncooked flesh every minute."
	 
	*Brick Top stares at you...*
	
	*/
	liked_foodtypes = RAW | FRUIT | NUTS | DAIRY | MEAT | RAW | GRAIN | GORE | SEAFOOD | VEGETABLES | BUGS
	disliked_foodtypes = CLOTH | GROSS | ORANGES
	toxic_foodtypes = JUNKFOOD | FRIED // pig can't eat it, just because they are 2% not human

/obj/item/organ/tongue/hog/get_possible_languages()
	return ..() + /datum/language/hogic
