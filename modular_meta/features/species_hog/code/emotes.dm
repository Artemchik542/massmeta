/datum/emote/living/carbon/human/oink
	key = "oink"
	key_third_person = "oinks"
	message = "oinks!"
	emote_type = EMOTE_VISIBLE | EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/human/oink/get_sound(mob/user, params, type_override, intentional)
	return pick(
		'modular_meta/features/species_hog/sound/oink1.ogg',
		'modular_meta/features/species_hog/sound/oink2.ogg',
		'modular_meta/features/species_hog/sound/oink3.ogg',
	)
