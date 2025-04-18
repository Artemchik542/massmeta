/obj/item/clothing/mask/gas/sechailer
	flags_cover = MASKCOVERSMOUTH | PEPPERPROOF
	pepper_tint = FALSE

/obj/item/clothing/mask/gas/mime
	icon = 'massmeta/icons/obj/clothing/masks.dmi'
	worn_icon = 'massmeta/icons/mob/clothing/mask.dmi'

/obj/item/clothing/mask/gas/mime/Initialize(mapload)
	.=..()
	mimemask_designs += list(
		"Joker" = image(icon = 'massmeta/icons/obj/clothing/masks.dmi', icon_state = "mimejoker")
		)

/obj/item/clothing/mask/gas/mime/ui_action_click(mob/user)
	var/mob/living/carbon/human/human_user = user
	if(!istype(human_user) || human_user.incapacitated)
		return
	var/list/options = list()
	options["Blanc"] = "mime"
	options["Triste"] = "sadmime"
	options["Effrayé"] = "scaredmime"
	options["Excité"] ="sexymime"
	options["Joker"] = "mimejoker"

	var/choice = show_radial_menu(user,src, mimemask_designs, custom_check = FALSE, radius = 36, require_near = TRUE)
	if(!choice)
		return FALSE
	if(src && choice && !human_user.incapacitated && in_range(user,src))
		icon_state = options[choice]
		user.update_worn_mask()
		update_item_action_buttons()
		to_chat(user, span_notice("Your Mime Mask has now morphed into [choice]!"))
		return TRUE
