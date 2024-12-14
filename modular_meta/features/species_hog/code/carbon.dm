/mob/living/carbon/human/species/hog
	race = /datum/species/hog

// subsystem for hogs accessories
/datum/controller/subsystem/accessories/proc/hog_setup_lists()
	hog_ears_list = init_sprite_accessory_subtypes(/datum/sprite_accessory/ears/hog)[DEFAULT_SPRITE_LIST]
	hog_snouts_list = init_sprite_accessory_subtypes(/datum/sprite_accessory/snouts/hog)[DEFAULT_SPRITE_LIST]
	hog_markings_list = init_sprite_accessory_subtypes(/datum/sprite_accessory/hog_markings, add_blank = TRUE)[DEFAULT_SPRITE_LIST]

/datum/controller/subsystem/accessories/PreInit()
	..()
	hog_setup_lists() // just addition, orig proc not edited
