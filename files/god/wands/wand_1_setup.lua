dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

function get_random_from( target )
	local rnd = Random(1, #target)
	
	return tostring(target[rnd])
end

function get_random_between_range( target )
	local minval = target[1]
	local maxval = target[2]
	
	return Random(minval, maxval)
end

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )
SetRandomSeed( x, y )

local ability_comp = EntityGetFirstComponent( entity_id, "AbilityComponent" )

local wand = { }
wand.name = {"god_wand", "giga_chad_wand"}
wand.deck_capacity = {5,7}
wand.actions_per_round = 2
wand.reload_time = {1,20}
wand.shuffle_deck_when_empty = 0
wand.fire_rate_wait = {1,20}
wand.spread_degrees = 0
wand.speed_multiplier = 1
wand.mana_charge_speed = 1337
wand.mana_max = 1337
wand.actions = { "LUMINOUS_DRILL","MEGALASER","CHAINSAW", "LIGHTNING", "THUNDERBALL"}
wand.modifiers = { "FREEZE", "MATTER_EATER"}

local mana_max = wand.mana_max
local deck_capacity = get_random_between_range( wand.deck_capacity )

ComponentSetValue( ability_comp, "ui_name", get_random_from( wand.name ) )

ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", get_random_between_range( wand.reload_time ) )
ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", get_random_between_range( wand.fire_rate_wait ) )
ComponentSetValue( ability_comp, "mana_charge_speed", wand.mana_charge_speed )

ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", wand.actions_per_round )
ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", deck_capacity )
ComponentObjectSetValue( ability_comp, "gun_config", "shuffle_deck_when_empty", wand.shuffle_deck_when_empty )
ComponentObjectSetValue( ability_comp, "gunaction_config", "spread_degrees", wand.spread_degrees )
ComponentObjectSetValue( ability_comp, "gunaction_config", "speed_multiplier", wand.speed_multiplier )

ComponentSetValue( ability_comp, "mana_max", mana_max )
ComponentSetValue( ability_comp, "mana", mana_max )

local action_count = 2
local modifier_count = 2

for i=1,modifier_count do
	local wand_modifier = get_random_from( wand.modifiers )
	
	if ( i == 1 ) and ( Random( 1, 200 ) == 5 ) then
		AddGunActionPermanent( entity_id, wand_modifier )
		deck_capacity = deck_capacity + 1
		ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", deck_capacity )
	else
		AddGunAction( entity_id, wand_modifier )
	end
end

for i=1,action_count do
	local wand_action = get_random_from( wand.actions )
	
	--AddGunActionPermanent( entity_id, wand_action )
	AddGunAction( entity_id, wand_action )
end
