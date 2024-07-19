// reagent containers for kvass

// code/modules/reagents/reagent_containers/cups/soda.dm
/obj/item/reagent_containers/cup/soda_cans/kvass
	name = "Kvass"
	desc = "Kvaaaaaaaass."
	icon = 'massmeta/features/kvass/icons/soda.dmi'
	icon_state = "kvass"
	list_reagents = list(/datum/reagent/consumable/kvass = 30)
	drink_type = GRAIN

// TODO: нужно будет потом добавить иконки "в руках"

// code/modules/reagents/chemistry/reagents/drinks/glass_styles/sodas.dm
/datum/glass_style/drinking_glass/kvass
	required_drink_type = /datum/reagent/consumable/kvass
	name = "glass of Kvass"
	desc = "A glass of Kvaaaaaaass."
	icon = 'massmeta/features/kvass/icons/drinks.dmi'
	icon_state = "kvass"
