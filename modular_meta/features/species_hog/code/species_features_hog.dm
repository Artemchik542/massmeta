/*
/proc/generate_hog_side_shot(datum/sprite_accessory/sprite_accessory, key, include_snout = TRUE)
	var/static/icon/hog
	var/static/icon/hog_with_snout

	if (isnull(hog))
		hog = icon('icons/mob/human/species/lizard/bodyparts.dmi', "lizard_head", EAST)
		var/icon/eyes = icon('icons/mob/human/human_face.dmi', "eyes", EAST)
		eyes.Blend(COLOR_GRAY, ICON_MULTIPLY)
		hog.Blend(eyes, ICON_OVERLAY)

		hog_with_snout = icon(hog)
		hog_with_snout.Blend(icon('icons/mob/human/species/lizard/lizard_misc.dmi', "m_snout_round_ADJ", EAST), ICON_OVERLAY)

	var/icon/final_icon = include_snout ? icon(hog_with_snout) : icon(hog)

	if (!isnull(sprite_accessory))
		var/icon/accessory_icon = icon(sprite_accessory.icon, "m_[key]_[sprite_accessory.icon_state]_ADJ", EAST)
		final_icon.Blend(accessory_icon, ICON_OVERLAY)

	final_icon.Crop(11, 20, 23, 32)
	final_icon.Scale(32, 32)
	final_icon.Blend(COLOR_VIBRANT_LIME, ICON_MULTIPLY)

	return final_icon
*/

/datum/preference/choiced/hog_ears
	savefile_key = "feature_hog_ears"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	main_feature_name = "Ears"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/ears/hog

/*
/datum/preference/choiced/hog_ears/init_possible_values()
	return assoc_to_keys_features(SSaccessories.hog_ears_list)
*/

/*
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
*/

/datum/preference/choiced/hog_ears/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["ears"] = value

/datum/preference/choiced/hog_ears/create_default_value()
	return /datum/sprite_accessory/ears/hog::name
