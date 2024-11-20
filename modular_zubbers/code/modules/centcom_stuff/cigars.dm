/obj/item/cigarette/cigar/cent
	name = "luxury Bouquet cigar"
	desc = "A cigar manufactured by Central Command, fit for the best of the best's best."
	icon_state = "cigar2off"
	icon_on = "cigar2on"
	icon_off = "cigar2off"
	smoketime = 30 MINUTES
	chem_volume = 60
	list_reagents = list(/datum/reagent/drug/nicotine = 40, /datum/reagent/medicine/omnizine = 25)

/obj/item/storage/fancy/cigarettes/cigars/cent
	name = "\improper luxury Bouquet cigar case"
	desc = "A case of the rarer, expensive Bouquet cigars. Manufactured by Central Command themselves, only given to CentCom's best."
	icon = 'modular_zubbers/icons/obj/cigarettes.dmi'
	icon_state = "bouqetcase"
	base_icon_state = "bouqetcase"
	spawn_type = /obj/item/cigarette/cigar/cent
