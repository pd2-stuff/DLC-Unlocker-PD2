--  Purpose:  Gives you all skins
--  Authors:  Written by Simplity, fixes by Davy Jones
local tostring = tostring
local type = type

local M_blackmarket = managers.blackmarket
local weapon_skins = tweak_data.blackmarket.weapon_skins
local inventory_tradable = M_blackmarket._global.inventory_tradable

local i = 1
local j = tostring(i)
for id, data in pairs( weapon_skins ) do
	while inventory_tradable[j] ~= nil do
		i = i + 1
		j = tostring(i)
	end
	if not M_blackmarket:have_inventory_tradable_item( "weapon_skins", id ) then
		M_blackmarket:tradable_add_item( j, "weapon_skins", id, "mint", true, 1 )
	end
end

-- Temporary fix for the temporary fix
local convert
convert = function()
	for inst, data in pairs(inventory_tradable) do
		if type(inst) == "number" then
			inventory_tradable[tostring(inst)] = data
			inventory_tradable[inst] = nil
		end
	end
	convert = nil
end

function BlackMarketManager:tradable_update()
	if convert then
		convert()
	end
end

-- Modifiable Legendary Skins
local weapon_skins = tweak_data.blackmarket.weapon_skins
for _, data in pairs(weapon_skins) do
	data.locked = false
end

local crafted = managers.blackmarket._global.crafted_items
for _, cat in pairs({crafted.primaries, crafted.secondaries}) do
	for _, data in pairs(cat) do
		if data.cosmetics then
			data.customize_locked = nil
		end
	end
end

-- Inspect All Safes
for _, safe in pairs(tweak_data.economy.safes) do
	if not safe.market_link then
		safe.market_link = "Fake Link"
	end
end