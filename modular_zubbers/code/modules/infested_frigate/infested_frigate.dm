/obj/item/radio/headset/fakesyndicate // Too lazy to make a modular file.
	name = "syndicate headset"
	desc = "A syndicate headset that can be used to hear all radio frequencies, except.. This one doesn't seem to be working. Protects ears from flashbangs."
	icon_state = "syndie_headset"
	worn_icon_state = "syndie_headset"

/obj/item/radio/headset/fakesyndicate/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))

/datum/id_trim/infestedfrigate
	assignment = "Syndicate Frigate Crew"
	trim_state = "trim_syndicate"
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS)
	subdepartment_color = COLOR_SYNDIE_RED
	sechud_icon_state = SECHUD_SYNDICATE
	pointer_color = COLOR_SYNDIE_RED

/// Trim for Infested Frigate outfits and corpses.
/datum/id_trim/infestedfrigate/captain
	assignment = "Syndicate Frigate Captain"
	trim_state = "trim_captain"
	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER, ACCESS_ROBOTICS)
	subdepartment_color = COLOR_SYNDIE_RED
	sechud_icon_state = SECHUD_SYNDICATE
	big_pointer = TRUE
	pointer_color = COLOR_SYNDIE_RED

/obj/effect/spawner/random/exotic/infested_frigate
	name = "gygax spawner"
	icon_state = "ripley"
	loot = list(
		/obj/structure/mecha_wreckage/gygax/dark = 98,
		/obj/vehicle/sealed/mecha/gygax = 2,
	)

/area/shuttle/ruin/syndicatefrigate
	name = "SYN-C Brutus"
	requires_power = TRUE
	ambientsounds = list('sound/ambience/general/ambigen12.ogg','sound/ambience/general/ambigen13.ogg','sound/ambience/medical/ambinice.ogg')

/obj/item/paper/crumpled/muddy/fluff/infested_frigate
	name = "operation orders"
	desc = "A set of complicated orders and documents, all stamped with a Syndicate Stamp. What the first paper says catches your eye."
	icon_state = "docs_part"
	default_raw_text = "<b>STERILIZATION ORDERS</b> <BR><BR><i>Detailed findings:</i><BR><BR>A biological research lab within the HD-10180 system has suffered from a complete containment failure. The SYN-C Brutus is to deliver a nuclear payload via strike team. Everything inside and outside the facility is to be killed on sight, including any research staff. Nuclear authentication codes will be coordinated to you via the red phone, as will other detailed orders.<BR><BR><b>The rest of the documents are maps and mundane information regarding the operation's destination.</b>"

/datum/map_template/shuttle/ruin/infested_frigate
	prefix = "_maps/shuttles/zubbers/"
	suffix = "ruin_infested_frigate"
	name = "SYN-C Brutus"
	description = "This is the ship that spawns in the newer SYN-C Brutus ruin, as a driveable ship."

/obj/item/circuitboard/computer/syndicatefrigate
	build_path = /obj/machinery/computer/shuttle/syndicatefrigate

/obj/machinery/computer/shuttle/syndicatefrigate
	name = "SYN-C Brutus Ship Console"
	desc = "Used to control the SYN-C Brutus Frigate."
	icon_screen = "syndishuttle"
	icon_keyboard = "syndie_key"
	req_access = list(ACCESS_SYNDICATE_LEADER)
	light_color = COLOR_SOFT_RED
	circuit = /obj/item/circuitboard/computer/syndicatefrigate
	shuttleId = "brutusfrigate"
	possible_destinations = "brutusfrigate_custom;brutusfrigate_home"

/obj/machinery/computer/camera_advanced/shuttle_docker/syndicatefrigate
	name = "SYN-C Brutus Navigation Computer"
	desc = "Used to designate a precise transit location for the SYN-C Brutus Frigate."
	icon_screen = "syndishuttle"
	icon_keyboard = "syndie_key"
	shuttleId = "brutusfrigate"
	lock_override = NONE
	shuttlePortId = "brutusfrigate_custom"
	jump_to_ports = list("brutusfrigate_home" = 1)
	view_range = 15
	x_offset = 1
	y_offset = -7

/obj/effect/mob_spawn/corpse/human/syndicatefrigatecrew
	name = "Syndicate Frigate Crew - Gearless"
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"
	outfit = /datum/outfit/syndicatefrigatecrewcorpse
	icon = 'modular_zubbers/icons/effects/mapping_helpers.dmi'
	icon_state = "corpsesyndielesser"

/datum/outfit/syndicatefrigatecrewcorpse
	name = "Syndicate Frigate Crew Corpse"
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset/fakesyndicate
	mask = /obj/item/clothing/mask/gas/syndicate
	back = /obj/item/storage/backpack/satchel
	id = /obj/item/card/id/advanced/chameleon
	id_trim = /datum/id_trim/infestedfrigate

/obj/effect/mob_spawn/corpse/human/syndicatefrigatecrew/gear
	name = "Syndicate Frigate Crew - Gear"
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"
	outfit = /datum/outfit/syndicatefrigategearedcrewcorpse
	icon_state = "corpsesyndie"

/datum/outfit/syndicatefrigategearedcrewcorpse
	name = "Syndicate Frigate Operative Corpse"
	uniform = /obj/item/clothing/under/syndicate/combat
	suit = /obj/item/clothing/suit/armor/vest/alt
	belt = /obj/item/storage/belt/military
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/fakesyndicate
	mask = /obj/item/clothing/mask/gas/syndicate
	head = /obj/item/clothing/head/helmet/swat
	back = /obj/item/storage/backpack/satchel
	id = /obj/item/card/id/advanced/chameleon
	id_trim = /datum/id_trim/infestedfrigate

/obj/effect/mob_spawn/corpse/human/syndicatefrigatecrew/captain
	name = "Syndicate Frigate Captain"
	hairstyle = "Bald"
	facial_hairstyle = "Shaved"
	outfit = /datum/outfit/syndicatefrigatecaptaincorpse
	icon_state = "corpsesyndie"

/datum/outfit/syndicatefrigatecaptaincorpse
	name = "Syndicate Frigate Captain Corpse"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	belt = /obj/item/storage/belt/military
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/fakesyndicate
	mask = /obj/item/clothing/mask/gas/syndicate
	head = /obj/item/clothing/head/hats/hos/cap/syndicate
	back = /obj/item/storage/backpack/satchel
	id = /obj/item/card/id/advanced/chameleon
	id_trim = /datum/id_trim/infestedfrigate/captain
