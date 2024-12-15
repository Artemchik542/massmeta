/proc/generate_hog_side_shot(datum/sprite_accessory/sprite_accessory, key, include_snout = TRUE)
	var/static/icon/hog
	var/static/icon/hog_with_snout

	if (isnull(hog))
		hog = icon('modular_meta/features/species_hog/icons/bodyparts.dmi', "hog_head", EAST)
		var/icon/eyes = icon('icons/mob/human/human_face.dmi', "eyes", EAST)
		eyes.Blend(COLOR_GRAY, ICON_MULTIPLY)
		hog.Blend(eyes, ICON_OVERLAY)

		hog_with_snout = icon(hog)
		hog_with_snout.Blend(icon('modular_meta/features/species_hog/icons/hog_mics.dmi', "m_snout_pig_ADJ", EAST), ICON_OVERLAY)

	var/icon/final_icon = include_snout ? icon(hog_with_snout) : icon(hog)

	if (!isnull(sprite_accessory))
		var/icon/accessory_icon = icon(sprite_accessory.icon, "m_[key]_[sprite_accessory.icon_state]_ADJ", EAST)
		final_icon.Blend(accessory_icon, ICON_OVERLAY)

	final_icon.Crop(11, 20, 23, 32)
	final_icon.Scale(32, 32)
	final_icon.Blend(COLOR_VIBRANT_LIME, ICON_MULTIPLY)

	return final_icon



// HOG EARS

/datum/preference/choiced/hog_ears
	savefile_key = "feature_hog_ears"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	main_feature_name = "Ears"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/ears/hog

/datum/preference/choiced/hog_ears/init_possible_values()
	return assoc_to_keys_features(SSaccessories.hog_ears_list)

/datum/preference/choiced/hog_ears/icon_for(value)
	var/datum/sprite_accessory/sprite_accessory = SSaccessories.hog_ears_list[value]

	var/icon/final_icon = icon('icons/mob/human/species/lizard/bodyparts.dmi', "lizard_chest_m")

	if (sprite_accessory.icon_state != "none")
		var/icon/body_markings_icon = icon(
			'icons/mob/human/species/lizard/lizard_misc.dmi',
			"male_[sprite_accessory.icon_state]_chest",
		)

		final_icon.Blend(body_markings_icon, ICON_OVERLAY)

	final_icon.Blend(COLOR_VIBRANT_LIME, ICON_MULTIPLY)
	final_icon.Crop(10, 8, 22, 23)
	final_icon.Scale(26, 32)
	final_icon.Crop(-2, 1, 29, 32)

	return final_icon

/datum/preference/choiced/hog_ears/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["ears"] = value

/datum/preference/choiced/hog_ears/create_default_value()
	return /datum/sprite_accessory/ears/hog::name


// HOG SNOUT


/datum/preference/choiced/hog_snout
	savefile_key = "feature_hog_snout"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Snout"
	should_generate_icons = TRUE

/datum/preference/choiced/hog_snout/init_possible_values()
	return assoc_to_keys_features(SSaccessories.hog_snouts_list)

/datum/preference/choiced/hog_snout/icon_for(value)
	return generate_hog_side_shot(SSaccessories.hog_snouts_list[value], "hog_snout", include_snout = FALSE)

/datum/preference/choiced/hog_snout/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["hog_snout"] = value


// HOG BODY MARKINGS

/datum/preference/choiced/hog_markings
	savefile_key = "feature_hog_markings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Body markings"
	should_generate_icons = TRUE
	relevant_body_markings = /datum/bodypart_overlay/simple/body_marking/

/datum/preference/choiced/hog_markings/init_possible_values()
	return assoc_to_keys_features(SSaccessories.hog_markings_list)

/datum/preference/choiced/hog_markings/create_default_value()
	var/datum/sprite_accessory/hog_markings/markings = /datum/sprite_accessory/hog_markings
	return initial(markings.name)

/datum/preference/choiced/hog_markings/icon_for(value)
	var/static/icon/body
	if (isnull(body))
		body = icon('icons/blanks/32x32.dmi', "nothing")
		
		body.Blend(icon('modular_meta/features/species_hog/icons/bodyparts.dmi', "hog_chest_m"), ICON_OVERLAY)
		body.Blend(icon('modular_meta/features/species_hog/icons/bodyparts.dmi', "hog_l_leg"), ICON_OVERLAY)
		body.Blend(icon('modular_meta/features/species_hog/icons/bodyparts.dmi', "hog_r_leg"), ICON_OVERLAY)
		body.Blend(icon('modular_meta/features/species_hog/icons/bodyparts.dmi', "hog_l_arm"), ICON_OVERLAY)
		body.Blend(icon('modular_meta/features/species_hog/icons/bodyparts.dmi', "hog_r_arm"), ICON_OVERLAY)
		body.Blend(icon('modular_meta/features/species_hog/icons/bodyparts.dmi', "hog_l_hand"), ICON_OVERLAY)
		body.Blend(icon('modular_meta/features/species_hog/icons/bodyparts.dmi', "hog_r_hand"), ICON_OVERLAY)
		body.Blend(COLOR_ORANGE, ICON_MULTIPLY)

	var/datum/sprite_accessory/markings = SSaccessories.hog_markings_list[value]
	var/icon/icon_with_markings = new(body)

	if (value != "None")
		var/icon/body_part_icon = icon(markings.icon, "male_[markings.icon_state]_chest")
		body_part_icon.Crop(1, 1, 32, 32)
		body_part_icon.Blend(COLOR_VERY_LIGHT_GRAY, ICON_MULTIPLY)
		icon_with_markings.Blend(body_part_icon, ICON_OVERLAY)

	icon_with_markings.Scale(64, 64)
	icon_with_markings.Crop(15, 38, 15 + 31, 7)

	return icon_with_markings

/datum/preference/choiced/hog_markings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["hog_markings"] = value
