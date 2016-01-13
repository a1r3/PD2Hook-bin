--BLT Weapon Skins Unlock

local M_blackmarket = managers.blackmarket
local weapon_skins = tweak_data.blackmarket.weapon_skins
 
local i = 1
for id, data in pairs( weapon_skins ) do
	while M_blackmarket._global.inventory_tradable[i] ~= nil do
		i = i + 1
	end
	if not M_blackmarket:have_inventory_tradable_item( "weapon_skins", id ) then
		M_blackmarket:tradable_add_item( i, "weapon_skins", id, "mint", true, 1 )
	end
end
 
function BlackMarketManager:tradable_update() end
 
function GuiTweakData:tradable_inventory_sort_func(index)
	-- temp fix
	return nil
end