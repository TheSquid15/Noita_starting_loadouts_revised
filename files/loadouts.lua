loadout_list =
{
	{
		name = "a God TYPE",
		folder = "god",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff9d7b4d,
		cape_color_edge = 0xff846235,
		items = 
		{
			"mods/starting_loadouts_2/files/god/wands/wand_1.xml",
			"mods/starting_loadouts_2/files/god/wands/wand_2.xml",
			"data/entities/items/pickup/potion_water.xml",
			
		},
		perks =
		{
			"EXPLODING_CORPSES",
			"UNLIMITED_SPELLS",
			"FREEZE_FIELD",
			"EDIT_WANDS_EVERYWHERE",
			"BREATH_UNDERWATER",
			"TELEKINESIS",
		},
	},
	{
		name = "a Fire TYPE",
		folder = "fire",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff5a60dd,
		cape_color_edge = 0xff3e43af,
		items = 
		{
			"mods/starting_loadouts_2/files/fire/wands/wand_1.xml",
			"mods/starting_loadouts_2/files/fire/wands/wand_2.xml",
			{
			"mods/starting_loadouts_2/files/fire/potion_fire.xml",
			amount = 2,
			},
		},
		perks =
		{
			"BLEED_OIL",
		},
	},
	{
		name = "a Thunder TYPE",
		folder = "thunder",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff9d7b4d,
		cape_color_edge = 0xff846235,
		items = 
		{
			"mods/starting_loadouts_2/files/thunder/wands/wand_1.xml",
			"mods/starting_loadouts_2/files/thunder/wands/wand_2.xml",
			"data/entities/items/pickup/thunderstone.xml",
		},
		perks =
		{
			"ELECTRICITY",
		},
	},
	--[[
	{
		name = "Sludge warlock",
	},
	{
		name = "Master transmuter",
	},
	{
		name = "Ricochet druid",
	},
	{
		name = "Teleport wizard",
	},
	{
		name = "Engineer",
	},
	]]--
}