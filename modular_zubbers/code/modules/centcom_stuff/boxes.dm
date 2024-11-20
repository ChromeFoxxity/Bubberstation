/obj/item/storage/box/cent_ids
	name = "box of spare centcom IDs"
	desc = "CentCom IDs for the most important people."
	illustration = "id"

/obj/item/storage/box/cent_ids/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/card/id/advanced/centcom(src)
