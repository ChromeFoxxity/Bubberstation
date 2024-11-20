/obj/item/folder/centcom
	name = "folder - 'TOP SECRET'"
	desc = "A folder stamped \"Top Secret - Property of Nanotrasen's CentCom Divison.\""
	icon = 'modular_zubbers/icons/obj/bureaucracy.dmi'
	icon_state = "folder_cent"
	bg_color = "#46AF31"

/obj/item/folder/centcom/red
	icon_state = "folder_cred"

/obj/item/folder/centcom/red/Initialize(mapload)
	. = ..()
	new /obj/item/documents/centcom(src)
	update_appearance()

/obj/item/folder/centcom/gold
	icon_state = "folder_cgold"

/obj/item/folder/centcom/gold/Initialize(mapload)
	. = ..()
	new /obj/item/documents/centcom(src)
	update_appearance()

/obj/item/documents/centcom
	desc = "\"Top Secret\" documents detailing sensitive Central Command operational intelligence. These documents are verified with a green wax seal."
	icon_state = "docs_verified"

/obj/item/documents/centcom/red
	name = "red secret documents"
	desc = "\"Top Secret\" documents detailing sensitive Central Command security, and emergency response team intelligence. These documents are verified with a red wax seal."
	icon_state = "docs_red"

/obj/item/folder/centcom/departments
	icon_state = "folder_ccom"
	name = "folder - 'Command'"
	desc = "A folder stamped \"Command Folder - Property of Nanotrasen's CentCom Divison.\""

/obj/item/folder/centcom/departments/sec
	icon_state = "folder_csec"
	name = "folder - 'Security'"
	desc = "A folder stamped \"Security Folder - Property of Nanotrasen's CentCom Divison.\""

/obj/item/folder/centcom/departments/med
	icon_state = "folder_cmed"
	name = "folder - 'Medical'"
	desc = "A folder stamped \"Medical Folder - Property of Nanotrasen's CentCom Divison.\""

/obj/item/folder/centcom/departments/eng
	icon_state = "folder_ceng"
	name = "folder - 'Engineering'"
	desc = "A folder stamped \"Engineering Folder - Property of Nanotrasen's CentCom Divison.\""

/obj/item/folder/centcom/departments/carg
	icon_state = "folder_ccarg"
	name = "folder - 'Supply'"
	desc = "A folder stamped \"Supply Folder - Property of Nanotrasen's CentCom Divison.\""

/obj/item/folder/centcom/departments/sci
	icon_state = "folder_csci"
	name = "folder - 'Science'"
	desc = "A folder stamped \"Science Folder - Property of Nanotrasen's CentCom Divison.\""
