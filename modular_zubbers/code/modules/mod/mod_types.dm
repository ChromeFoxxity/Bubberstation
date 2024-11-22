/obj/item/mod/control/pre_equipped/asset_protection
	worn_icon = 'modular_zubbers/icons/mob/clothing/modsuit/mod_clothing.dmi'
	icon = 'modular_zubbers/icons/obj/clothing/modsuit/mod_clothing.dmi'
	icon_state = "asset_protection-control"
	theme = /datum/mod_theme/asset_protection
	applied_cell = /obj/item/stock_parts/power_store/cell/bluespace
	applied_modules = list(
		/obj/item/mod/module/storage/bluespace,
		/obj/item/mod/module/welding,
		/obj/item/mod/module/emp_shield/advanced,
		/obj/item/mod/module/magnetic_harness,
		/obj/item/mod/module/jetpack,
		/obj/item/mod/module/projectile_dampener,
		/obj/item/mod/module/status_readout,
	)
	default_pins = list(
		/obj/item/mod/module/jetpack,
	)

/obj/item/mod/control/pre_equipped/corporate/consultant // This is also for the Vortex Shuttle.
	theme = /datum/mod_theme/corporate/consultant
	starting_frequency = MODLINK_FREQ_CENTCOM
	applied_core = /obj/item/mod/core
	applied_cell = /obj/item/stock_parts/power_store/cell/high
	req_access = list(ACCESS_CENT_GENERAL)
	applied_modules = list(
		/obj/item/mod/module/storage/large_capacity,
		/obj/item/mod/module/hat_stabilizer,
		/obj/item/mod/module/magnetic_harness,
	)
