local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/ScriptPackage")
local nums = {2,3,4,5,6,7,8,9,10,11}
function GetVipSetNum(player)
	local vip_level = lualib:GetVipLevel(player)
	local player_num = lualib:GetDayInt(player,"Vip_relive")
	local num = 0
	if vip_level > 0 then
		num = nums[vip_level] - player_num
	end
	lualib:RunClientScript(player, "PlayerRelive", "PlayerReliveUpdate",""..num)
	return ""
end

function reliveSitu(player)
	local vip_level = lualib:GetVipLevel(player)
	local player_num = lualib:GetDayInt(player,"Vip_relive")
	local num = 0
	if vip_level > 0 then
		num = nums[vip_level] - player_num
	end
	if num == 0 then
		local player_yb = lualib:GetIngot(player)
		if player_yb < 200 then
			lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
			return ""
		else
			if not lualib:Player_SubIngot(player, 200, false, "扣元宝:原地复活", "系统") then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "扣除元宝失败")
				return ""
			else
			--********************************--
			local indexx = lualib:GetDBNum("consumeTerm")
			local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 200
			RecordTop10ConsumeInfo(player,totalYb)
			--********************************--
			end
		end
	else
		lualib:SetDayInt(player,"Vip_relive",player_num + 1)
	end	
	lualib:ShowFormWithContent(player,"脚本表单","CLDoPlayerReliveByType(1);")
	lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "原地复活成功")	
	return ""
end

function ReliveInSL(player)       --player relive in a specify point 
	local relive_xy = {
					{75, 125},
					{115, 125},
					{115, 85},
					{75, 85}
				}
	local p = math.random(1, #relive_xy)
	local x = relive_xy[p][1]
	local y = relive_xy[p][2]
	--lualib:SysPromptMsg(player,""..x..","..y)
	lualib:Player_MapMoveXY(player, "", x, y, 2)
	return ""
end

function ReliveInYX(player)       --player relive in a specify point 
	local num = tonumber(math.random(1,4))
	local tab = {{96,51},{41,55},{33,114},{99,116}}
	lualib:Player_EnterDgn(player , "夜袭巫山城" , 	tab[num][1] ,tab[num][2] , 3)
	return ""
end