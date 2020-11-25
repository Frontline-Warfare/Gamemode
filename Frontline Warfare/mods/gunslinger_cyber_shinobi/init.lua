minetest.register_alias("shooter:rifle", "gunslinger_rangedweapons:ak47")
minetest.register_alias("shooter:pistol", "gunslinger_rangedweapons:glock17")
minetest.register_alias("shooter:shotgun", "gunslinger_rangedweapons:benelli")
minetest.register_alias("shooter:machine_gun", "gunslinger_rangedweapons:uzi")
minetest.register_alias("shooter:ammo", "default:bronze_ingot")

--Automatic Rifles

gunslinger.register_gun("gunslinger_cyber_shinobi:ak47", {
	itemdef = {
		description = "AK-47 Rifle",
		inventory_image = "rangedweapons_ak47.png",
		wield_image = "rangedweapons_ak47.png",
		--wield_scale = {x = 4, y = 4, z = 1}
	},

	mode = "automatic",
	base_dmg = 7,
	fire_rate = 7,
	clip_size = 30,
	range = 200,
	base_spread = 7,
	max_spread = 200,
	magazine = true,
	ammo = "gunslinger_cyber_shinobi:mag_ak47",
	fire_sound = "rangedweapons_smg"
})
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:ak47 1 65534',
	recipe = {
		{'default:diamond', 'default:steel_ingot', 'default:tree'},
		{'default:tree', 'default:mese', 'default:steel_ingot'},
		{'default:steel_ingot', '', 'default:tree'},
	}
})


--Shotguns

gunslinger.register_gun("gunslinger_cyber_shinobi:benelli", {
	itemdef = {
		description = "Benelli Shotgun",
		inventory_image = "rangedweapons_benelli.png",
		wield_image = "rangedweapons_benelli.png",
		--wield_scale = {x = 4, y = 4, z = 1}
	},

	mode = "semi-automatic",
	base_dmg = 3,
	fire_rate = 4,
	clip_size = 8,
	range = 100,
	base_spread = 40,
	max_spread = 60,
	pellets = 6,
	vertical_recoil = 80,
	horizontal_recoil = 40,
	ammo = "gunslinger_cyber_shinobi:bullet_12g 8",
	fire_sound = "rangedweapons_shotgun_shot"
})
minetest.register_craft({
	output = "gunslinger_cyber_shinobi:benelli 1 65534",
	recipe = {
		{"default:steel_ingot", "default:diamond", "default:steelblock"},
		{"homedecor:plastic_sheeting", "default:diamond", "default:steel_ingot"},
	}
})


--Sniper Rifles

gunslinger.register_gun("gunslinger_cyber_shinobi:awp", {
	itemdef = {
		description = "AWP Sniper Rifle",
		inventory_image = "rangedweapons_awp.png",
		wield_image = "rangedweapons_awp.png",
		--wield_scale = {x = 4, y = 4, z = 1}
	},

	mode = "manual",
	base_dmg = 18,
	fire_rate = 1,
	clip_size = 1,
	range = 300,
	base_spread = 0,
	max_spread = 200,
	vertical_recoil = 100,
	horizontal_recoil = 10,
	zoom = 10,
	scope = "firearms_crosshair_sniper_scope.png",
	ammo = "gunslinger_cyber_shinobi:bullet_308mm",
	fire_sound = "rangedweapons_rifle_a"
})
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:awp 1 65534',
	recipe = {
		{'default:steel_ingot', 'default:diamondblock', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'dye:dark_green', 'default:diamond', 'homedecor:plastic_sheeting'},
	}
})


--Pistols

gunslinger.register_gun("gunslinger_cyber_shinobi:beretta", {
	itemdef = {
		description = "Beretta Pistol",
		inventory_image = "rangedweapons_beretta.png",
		wield_image = "rangedweapons_beretta.png",
		--wield_scale = {x = 4, y = 4, z = 1}
	},

	mode = "semi-automatic",
	base_dmg = 5,
	fire_rate = 5,
	clip_size = 15,
	range = 200,
	base_spread = 15,
	max_spread = 80,
	magazine = true,
	ammo = "gunslinger_cyber_shinobi:mag_9mm",
	fire_sound = "rangedweapons_beretta"
})
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:beretta 1 65534',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'', 'default:mese_crystal', 'homedecor:plastic_sheeting'},
		{'', '', 'homedecor:plastic_sheeting'},
	}
})


gunslinger.register_gun("gunslinger_cyber_shinobi:luger", {
	itemdef = {
		description = "Luger Pistol",
		inventory_image = "rangedweapons_luger.png",
		wield_image = "rangedweapons_luger.png",
		--wield_scale = {x = 4, y = 4, z = 1}
	},

	mode = "semi-automatic",
	base_dmg = 4,
	fire_rate = 4,
	clip_size = 7,
	range = 200,
	base_spread = 20,
	max_spread = 80,
	magazine = true,
	ammo = "gunslinger_cyber_shinobi:mag_makarov",
	fire_sound = "rangedweapons_makarov"
})
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:luger 1 65534',
	recipe = {
		{'', 'default:steel_ingot', 'default:steel_ingot'},
		{'', '', 'default:tree'},
		{'', '', ''},
	}
})


--Bullets

minetest.register_craftitem("gunslinger_cyber_shinobi:bullet_12g", {
	description = "12 Gauge Buckshot",
	inventory_image = "rangedweapons_12g.png",
})
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:bullet_12g 12',
	recipe = {
		{'default:bronze_ingot', 'default:steel_ingot', 'default:bronze_ingot'},
		{'default:bronze_ingot', 'tnt:gunpowder', 'default:bronze_ingot'},
		{'default:gold_ingot', 'tnt:gunpowder', 'default:gold_ingot'},
	}
})

minetest.register_craftitem("gunslinger_cyber_shinobi:bullet_9mm", {
	description = "9mm Pistol round",
	inventory_image = "rangedweapons_9mm.png",
})
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:bullet_9mm 30',
	recipe = {
		{'default:steel_ingot', '', ''},
		{'tnt:gunpowder', '', ''},
		{'default:copper_ingot', '', ''},
	}
})

minetest.register_craftitem("gunslinger_cyber_shinobi:bullet_762mm", {
	description = "7.62mm Heavy Rifle round",
	inventory_image = "rangedweapons_762mm.png",
})
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:bullet_762mm 50',
	recipe = {
		{'default:bronze_ingot', 'tnt:gunpowder', 'default:bronze_ingot'},
		{'default:gold_ingot', 'tnt:gunpowder', 'default:gold_ingot'},
		{'default:gold_ingot', 'tnt:gunpowder', 'default:gold_ingot'},
	}
})

minetest.register_craftitem("gunslinger_cyber_shinobi:bullet_308mm", {
	description = ".308mm Sniper Rifle round",
	inventory_image = "rangedweapons_308winchester.png",
})
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:bullet_308mm 15',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'default:bronze_ingot', 'tnt:gunpowder', 'default:bronze_ingot'},
		{'default:gold_ingot', 'tnt:gunpowder', 'default:gold_ingot'},
	}
})

--Magazines

minetest.register_tool("gunslinger_cyber_shinobi:mag_ak47", {
	description = "AK47 Magazine",
	inventory_image = "rangedweapons_ak47_mag.png",
})
gunslinger.register_magazine("gunslinger_cyber_shinobi:mag_ak47", "gunslinger_cyber_shinobi:bullet_762mm", 30)
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:mag_ak47 1 65534',
	recipe = {
		{'homedecor:plastic_sheeting', '', 'homedecor:plastic_sheeting'},
		{'homedecor:plastic_sheeting', 'dye:black', 'homedecor:plastic_sheeting'},
		{'homedecor:plastic_sheeting', 'default:steel_ingot', 'homedecor:plastic_sheeting'},
	}
})

minetest.register_tool("gunslinger_cyber_shinobi:mag_sniper", {
	description = "Sniper Magazine",
	inventory_image = "rangedweapons_sniper_mag.png",
})
gunslinger.register_magazine("gunslinger_cyber_shinobi:mag_sniper", "gunslinger_cyber_shinobi:bullet_308mm", 10)
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:mag_sniper 1 65534',
	recipe = {
		{'', '', ''},
		{'homedecor:plastic_sheeting', 'dye:black', 'homedecor:plastic_sheeting'},
		{'homedecor:plastic_sheeting', 'default:steel_ingot', 'homedecor:plastic_sheeting'},
	}
})

minetest.register_tool("gunslinger_cyber_shinobi:mag_9mm", {
	description = "9mm Pistol Magazine",
	inventory_image = "rangedweapons_9mm_mag.png",
})
gunslinger.register_magazine("gunslinger_cyber_shinobi:mag_9mm", "gunslinger_cyber_shinobi:bullet_9mm", 15)
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:mag_9mm 1 65534',
	recipe = {
		{'', '', ''},
		{'homedecor:plastic_sheeting', 'dye:dark_grey', 'homedecor:plastic_sheeting'},
		{'homedecor:plastic_sheeting', 'default:steel_ingot', 'homedecor:plastic_sheeting'},
	}
})

minetest.register_tool("gunslinger_cyber_shinobi:mag_makarov", {
	description = "Small 9mm Magazine",
	inventory_image = "rangedweapons_makarov_mag.png",
})
gunslinger.register_magazine("gunslinger_cyber_shinobi:mag_makarov", "gunslinger_cyber_shinobi:bullet_9mm", 7)
minetest.register_craft({
	output = 'gunslinger_cyber_shinobi:mag_makarov 1 65534',
	recipe = {
		{'', '', ''},
		{'', 'dye:dark_grey', ''},
		{'homedecor:plastic_sheeting', 'default:steel_ingot', 'homedecor:plastic_sheeting'},
	}
})
