// addition for /datum/dna/proc/generate_unique_features()
/datum/dna/generate_unique_features()
	. = ..()
	var/list/L = new /list(DNA_MODULAR_BLOCKS_COUNT)
	if(features["hog_ears"])
		L[DNA_HOG_EARS_BLOCK - DNA_FEATURE_BLOCKS] = construct_block(SSaccessories.hog_ears_list.Find(features["hog_ears"]), SSaccessories.hog_ears_list.len)
	if(features["hog_snout"])
		L[DNA_HOG_SNOUT_BLOCK - DNA_FEATURE_BLOCKS] = construct_block(SSaccessories.hog_snouts_list.Find(features["hog_snout"]), SSaccessories.hog_snouts_list.len)
	if(features["hog_markings"])
		L[DNA_HOG_MARKINGS_BLOCK - DNA_FEATURE_BLOCKS] = construct_block(SSaccessories.hog_markings_list.Find(features["hog_markings"]), SSaccessories.hog_markings_list.len)

	for(var/blocknum in 1 to DNA_MODULAR_BLOCKS_COUNT)
		. += L[blocknum] || random_string(GET_UI_BLOCK_LEN(blocknum), GLOB.hex_characters)

// addition for /datum/dna/proc/update_uf_block()
/datum/dna/update_uf_block(blocknumber)
	. = ..()
	switch(blocknumber)
		if(DNA_HOG_EARS_BLOCK)
			set_uni_feature_block(blocknumber, construct_block(SSaccessories.hog_ears_list.Find(features["hog_ears"]), SSaccessories.hog_ears_list.len))
		if(DNA_HOG_SNOUT_BLOCK)
			set_uni_feature_block(blocknumber, construct_block(SSaccessories.hog_snouts_list.Find(features["hog_snout"]), SSaccessories.hog_snouts_list.len))
		if(DNA_HOG_MARKINGS_BLOCK)
			set_uni_feature_block(blocknumber, construct_block(SSaccessories.hog_markings_list.Find(features["hog_markings"]), SSaccessories.hog_markings_list.len))

// addition for /mob/living/carbon/human/updateappearance()
/mob/living/carbon/human/updateappearance(icon_update = TRUE, mutcolor_update = FALSE, mutations_overlay_update = FALSE)
	. = ..()
	var/features = dna.unique_features
	if(dna.features["hog_ears"])
		dna.features["hog_ears"] = SSaccessories.hog_ears_list[deconstruct_block(get_uni_feature_block(features, DNA_HOG_EARS_BLOCK), SSaccessories.hog_ears_list.len)]
	if(dna.features["hog_snout"])
		dna.features["hog_snout"] = SSaccessories.hog_snouts_list[deconstruct_block(get_uni_feature_block(features, DNA_HOG_SNOUT_BLOCK), SSaccessories.hog_snouts_list.len)]
	if(dna.features["hog_markings"])
		dna.features["hog_markings"] = SSaccessories.hog_markings_list[deconstruct_block(get_uni_feature_block(features, DNA_HOG_MARKINGS_BLOCK), SSaccessories.hog_markings_list.len)]
