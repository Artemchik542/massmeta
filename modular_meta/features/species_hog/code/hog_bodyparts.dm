/obj/item/bodypart/head/hog
	icon_greyscale = 'modular_meta/features/species_hog/icons/bodyparts.dmi'
	limb_id = SPECIES_HOG
	is_dimorphic = FALSE
	head_flags = HEAD_LIPS|HEAD_EYESPRITES|HEAD_EYECOLOR|HEAD_EYEHOLES|HEAD_DEBRAIN // pigs mostly bald, or...
	// У взрослой свиньи 44 зуба. Из них 12 резцов, 4 клыка и 28 коренных.
	teeth_count = 44

/obj/item/bodypart/chest/hog
	icon_greyscale = 'modular_meta/features/species_hog/icons/bodyparts.dmi'
	limb_id = SPECIES_HOG
	is_dimorphic = TRUE
	wing_types = list(/obj/item/organ/wings/functional/dragon)

// TODO: butt sprite? (printer scan + actual internal organ)

/obj/item/bodypart/arm/left/hog
	icon_greyscale = 'modular_meta/features/species_hog/icons/bodyparts.dmi'
	limb_id = SPECIES_HOG
	attack_type = BRUTE
	unarmed_attack_verbs = list("kick", "bump",)
	grappled_attack_verb = "hoof kick"
	unarmed_attack_effect = ATTACK_EFFECT_PUNCH
	unarmed_attack_sound = 'sound/items/weapons/punch1.ogg'
	unarmed_miss_sound = 'sound/items/weapons/punchmiss.ogg'

/obj/item/bodypart/arm/right/hog
	icon_greyscale = 'modular_meta/features/species_hog/icons/bodyparts.dmi'
	limb_id = SPECIES_HOG
	attack_type = BRUTE
	unarmed_attack_verbs = list("kick", "bump",)
	grappled_attack_verb = "hoof kick"
	unarmed_attack_effect = ATTACK_EFFECT_PUNCH
	unarmed_attack_sound = 'sound/items/weapons/punch1.ogg'
	unarmed_miss_sound = 'sound/items/weapons/punchmiss.ogg'

/obj/item/bodypart/leg/left/hog
	icon_greyscale = 'modular_meta/features/species_hog/icons/bodyparts.dmi'
	limb_id = SPECIES_HOG
	footprint_sprite = FOOTPRINT_SPRITE_HOOVES
	footstep_type = FOOTSTEP_MOB_SHOE

/obj/item/bodypart/leg/right/hog
	icon_greyscale = 'modular_meta/features/species_hog/icons/bodyparts.dmi'
	limb_id = SPECIES_HOG
	footprint_sprite = FOOTPRINT_SPRITE_HOOVES
	footstep_type = FOOTSTEP_MOB_SHOE
