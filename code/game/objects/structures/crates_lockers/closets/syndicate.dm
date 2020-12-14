/obj/structure/closet/syndicate
	name = "armory closet"
	desc = "Why is this here?"
	icon_state = "syndicate"

/obj/structure/closet/syndicate/personal
	desc = "It's a personal storage unit for operative gear."

/obj/structure/closet/syndicate/personal/New()
	..()
	new /obj/item/clothing/under/syndicate(src)
	new /obj/item/clothing/shoes/sneakers/black(src)
	new /obj/item/device/radio/headset/syndicate(src)
	new /obj/item/ammo_box/magazine/m10mm(src)
	new /obj/item/weapon/storage/belt/military(src)
	new /obj/item/weapon/crowbar/red(src)
	new /obj/item/clothing/glasses/night(src)
	return

/obj/structure/closet/syndicate/nuclear
	desc = "It's a storage unit for a Syndicate boarding party."

/obj/structure/closet/syndicate/nuclear/New()
	..()
	contents = list()
	new /obj/item/ammo_box/magazine/m10mm(src)
	new /obj/item/ammo_box/magazine/m10mm(src)
	new /obj/item/ammo_box/magazine/m10mm(src)
	new /obj/item/ammo_box/magazine/m10mm(src)
	new /obj/item/ammo_box/magazine/m10mm(src)
	new /obj/item/weapon/storage/box/flashbangs(src)
	new /obj/item/weapon/storage/box/teargas(src)
	new /obj/item/weapon/storage/backpack/dufflebag/syndie/med(src)
	new /obj/item/weapon/pinpointer/nukeop(src)
	new /obj/item/weapon/pinpointer/nukeop(src)
	new /obj/item/weapon/pinpointer/nukeop(src)
	new /obj/item/weapon/pinpointer/nukeop(src)
	new /obj/item/weapon/pinpointer/nukeop(src)
	new /obj/item/device/pda/syndicate(src)
	return

/obj/structure/closet/syndicate/resources
	desc = "An old, dusty locker."

/obj/structure/closet/syndicate/resources/New()
	..()
	var/common_min = 30 //Minimum amount of minerals in the stack for common minerals
	var/common_max = 50 //Maximum amount of HONK in the stack for HONK common minerals
	var/rare_min = 5  //Minimum HONK of HONK in the stack HONK HONK rare minerals
	var/rare_max = 20 //Maximum HONK HONK HONK in the HONK for HONK rare HONK


	var/pickednum = rand(1, 50)

	//Sad trombone
	if(pickednum == 1)
		var/obj/item/weapon/paper/P = new /obj/item/weapon/paper(src)
		P.name = "\improper IOU"
		P.info = "Sorry man, we needed the money so we sold your stash. It's ok, we'll double our money for sure this time!"

	//Metal (common ore)
	if(pickednum >= 2)
		new /obj/item/stack/sheet/metal(src, rand(common_min, common_max))

	//Glass (common ore)
	if(pickednum >= 5)
		new /obj/item/stack/sheet/glass(src, rand(common_min, common_max))

	//Plasteel (common ore) Because it has a million more uses then plasma
	if(pickednum >= 10)
		new /obj/item/stack/sheet/plasteel(src, rand(common_min, common_max))

	//Plasma (rare ore)
	if(pickednum >= 15)
		new /obj/item/stack/sheet/mineral/plasma(src, rand(rare_min, rare_max))

	//Silver (rare ore)
	if(pickednum >= 20)
		new /obj/item/stack/sheet/mineral/silver(src, rand(rare_min, rare_max))

	//Gold (rare ore)
	if(pickednum >= 30)
		new /obj/item/stack/sheet/mineral/gold(src, rand(rare_min, rare_max))

	//Uranium (rare ore)
	if(pickednum >= 40)
		new /obj/item/stack/sheet/mineral/uranium(src, rand(rare_min, rare_max))

	//Diamond (rare HONK)
	if(pickednum >= 45)
		new /obj/item/stack/sheet/mineral/diamond(src, rand(rare_min, rare_max))

	//Jetpack (You hit the jackpot!)
	if(pickednum == 50)
		new /obj/item/weapon/tank/jetpack/carbondioxide(src)

	return

/obj/structure/closet/syndicate/resources/everything
	desc = "It's an emergency storage closet for repairs."

/obj/structure/closet/syndicate/resources/everything/New()
	..()
	contents = list()
	var/list/resources = list(
	/obj/item/stack/sheet/metal,
	/obj/item/stack/sheet/glass,
	/obj/item/stack/sheet/mineral/gold,
	/obj/item/stack/sheet/mineral/silver,
	/obj/item/stack/sheet/mineral/plasma,
	/obj/item/stack/sheet/mineral/uranium,
	/obj/item/stack/sheet/mineral/diamond,
	/obj/item/stack/sheet/mineral/bananium,
	/obj/item/stack/sheet/plasteel,
	/obj/item/stack/rods
	)

	for(var/i = 0, i<2, i++)
		for(var/res in resources)
			var/obj/item/stack/R = new res(src)
			R.amount = R.max_amount

	return
