// Hog Ears

/obj/item/organ/ears/hog
	name = "hog ears"
	desc = "Take a closer look at that ears!"
	icon = 'modular_meta/features/species_hog/icons/features.dmi'
	icon_state = "ears"
	visual = TRUE
	damage_multiplier = 0.5
	
	preference = "feature_hog_ears"
	dna_block = DNA_HOG_EARS_BLOCK
	restyle_flags = EXTERNAL_RESTYLE_FLESH

	bodypart_overlay = /datum/bodypart_overlay/mutant/hog_ears

/datum/bodypart_overlay/mutant/hog_ears
	layers = EXTERNAL_ADJACENT
	feature_key = "hog_ears"
	dyable = TRUE

/datum/bodypart_overlay/mutant/hog_ears/can_draw_on_bodypart(mob/living/carbon/human/human)
	if((human.head?.flags_inv & HIDEHAIR) || (human.wear_mask?.flags_inv & HIDEHAIR))
		return FALSE
	return TRUE

/datum/bodypart_overlay/mutant/hog_ears/get_global_feature_list()
	return SSaccessories.hog_ears_list

// Hog Snout

/obj/item/organ/snout/hog
	name = "hog snout"
	desc = "Take a closer look at that snout!"
	icon = 'modular_meta/features/species_hog/icons/features.dmi'
	icon_state = "snout"

	preference = "feature_hog_snout"
	external_bodyshapes = BODYSHAPE_SNOUTED

	dna_block = DNA_HOG_SNOUT_BLOCK
	
	bodypart_overlay = /datum/bodypart_overlay/mutant/snout/hog

/datum/bodypart_overlay/mutant/snout/hog
	layers = EXTERNAL_ADJACENT
	feature_key = "snout"

/datum/bodypart_overlay/mutant/snout/hog/can_draw_on_bodypart(mob/living/carbon/human/human)
	if(!(human.wear_mask?.flags_inv & HIDESNOUT) && !(human.head?.flags_inv & HIDESNOUT))
		return TRUE
	return FALSE

/datum/bodypart_overlay/mutant/snout/hog/get_global_feature_list()
	return SSaccessories.hog_snouts_list

// Hog Tongue

/obj/item/organ/tongue/hog
	name = "thick tongue"
	desc = "A thick pork tongue, looks too thick."
	icon = 'modular_meta/features/species_hog/icons/features.dmi'
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
