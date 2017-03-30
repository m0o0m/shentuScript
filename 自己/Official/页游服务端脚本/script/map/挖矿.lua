local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")


function on_map_create( sMapID )
	lualib:AddTrigger(sMapID, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger(sMapID , lua_trigger_leave_map , "on_leave_map")
	lualib:AddTrigger(sMapID , lua_trigger_monster_pre_die , "on_pre_monster_die")
	lualib:AddTrigger(sMapID , lua_trigger_player_pre_die , "on_pre_player_die")
	lualib:AddTrigger(sMapID , lua_trigger_item_pickup , "on_item_pickup")
	lualib:AddTrigger(sMapID , lua_trigger_mining , "on_mining")    
	lualib:AddTrigger(sMapID, lua_trigger_item_drop, "on_item_drop")
	lualib:AddTrigger(sMapID, lua_trigger_create, "on_item_drop")
	
	return ""
end



function on_item_pickup(player, item, item_id, item_name) 
	on_Count(player)
 
	return ""
end

function on_create(monster)

    on_Count(player)
	return ""
end
	
function on_item_drop(player, item, item_id, item_name)
	on_Count(player)
	return ""
end
function on_Count(player)
	local ItemTble = lualib:BagItemList(player,true,false,false) 
	local Ore_tab = {{},{},{},{}}
	local s = 0
	
	for i=1,#ItemTble do 
		if ItemTble[i] ~= nil then
			local item = lualib:KeyName(ItemTble[i])
			if "青铜矿"==item then 
				s = s+1
				Ore_tab[1][#Ore_tab[1]+1] = item
			elseif "黑铁矿"==item then
				s = s+1
				Ore_tab[2][#Ore_tab[2]+1] = item
			elseif "白银矿"==item then 
				s = s+1
				Ore_tab[3][#Ore_tab[3]+1] = item
			elseif "黄金矿"==item then 
				s = s+1
				Ore_tab[4][#Ore_tab[4]+1] = item
			end
		end
	end
	if lualib:HasQuest(player, 800) then
		lualib:SetQuestGroupHuntingsCount(player, 800, 553, s)
	end
	if lualib:HasQuest(player, 83) then
		lualib:SetQuestGroupHuntingsCount(player, 83, 553, s)
	end

end

function on_mining(player)
	on_Count(player)
	return ""
end

function on_pre_monster_die(monster, killer)
	

	return true
end

function on_enter_map(player)
	lualib:RunClientScript(player, "ItemEffect", "texiao", 200001505 .."#".. 6 .."#".. 34 .."#0#99999000")
	lualib:RunClientScript(player, "ItemEffect", "texiao", 200001506 .."#".. 10 .."#".. 29 .."#0#99999000")
	lualib:RunClientScript(player, "ItemEffect", "texiao", 200001507 .."#".. 16 .."#".. 24 .."#0#99999000")
	lualib:RunClientScript(player, "ItemEffect", "texiao", 200001508 .."#".. 27 .."#".. 17 .."#0#99999000")
	lualib:RunClientScript(player, "ItemEffect", "texiao", 200001509 .."#".. 39 .."#".. 29 .."#0#99999000")
	lualib:RunClientScript(player, "ItemEffect", "texiao", 200001505 .."#".. 22 .."#".. 17 .."#0#99999000")
	return ""
end

function on_pre_player_die(player, killer)
 
	return true
end

function on_leave_map(player)
	
	lualib:ShowFormWithContent(player, "脚本表单", "CL:DelMagicFromPoint(200001505,6,34)")
	lualib:ShowFormWithContent(player, "脚本表单", "CL:DelMagicFromPoint(200001506,10,29)")
	lualib:ShowFormWithContent(player, "脚本表单", "CL:DelMagicFromPoint(200001507,16,24)")
	lualib:ShowFormWithContent(player, "脚本表单", "CL:DelMagicFromPoint(200001508,27,17)")
	lualib:ShowFormWithContent(player, "脚本表单", "CL:DelMagicFromPoint(200001509,39,29)")
	lualib:ShowFormWithContent(player, "脚本表单", "CL:DelMagicFromPoint(200001505,22,17)")

	local ItemTble = lualib:BagItemList(player,true,false,false) 
	for i=1,#ItemTble do 
		if ItemTble[i] ~= nil and lualib:Item_GetType(player,ItemTble[i]) == 1 and lualib:Item_GetSubType(player,ItemTble[i]) == 1 then
			if lualib:ApplyEquipEx(player,lualib:KeyName(ItemTble[i])) then
				break
			end 
		end
	end
	return ""
	
end


