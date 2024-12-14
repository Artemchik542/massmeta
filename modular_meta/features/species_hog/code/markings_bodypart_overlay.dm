/datum/bodypart_overlay/simple/body_marking/hog
	dna_feature_key = "hog_markings"
	applies_to = list(/obj/item/bodypart/chest)

/datum/bodypart_overlay/simple/body_marking/hog/get_accessory(name)
	return SSaccessories.hog_markings_list[name]
