/datum/infuser_entry/hog
	name = "Hog"
	infuse_mob_name = "hog"
	desc = "Mix human and piggy to get Hogperson. Too easy"
	threshold_desc = "you learn how to hr-hr-hr... HRYYYYYYYAAAAA!"
	qualities = list(
		"can oink",
		"love truffles",
		"have pig ears",
		"have cute piglet",
	)
	input_obj_or_mob = list(
		/mob/living/basic/pig,
	)
	output_organs = list(
		/obj/item/organ/ears/hog,
		/obj/item/organ/tongue/hog,
		/obj/item/organ/snout/hog,
	)
	infusion_desc = "porkish"
	tier = DNA_MUTANT_TIER_ZERO
