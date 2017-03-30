local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)


function enterMap(player)
	if lualib:GetInt("","镇魔宝塔开启") == 0 then
		lualib:ShowFormWithContent(player, "脚本表单", "MagicPagodaWnd.msg(\"活动尚未开启\");")
		return ""
	end
	local level = lualib:Level(player)
	if level < 80 then
		lualib:ShowFormWithContent(player, "脚本表单", "MagicPagodaWnd.msg(\"80级才可进入\");")
		return ""
	end	
	local dgn_guid = lualib:GetStr("","镇魔宝塔GUID")
	if dgn_guid == "" then
		--[[dgn_guid = lualib:Map_CreateDgn("副本珈蓝神殿" , true, 35*60)  
		lualib:SetStr("","镇魔宝塔GUID",dgn_guid)--]]
		lualib:ShowFormWithContent(player, "脚本表单", "MagicPagodaWnd.msg(\"活动尚未开启\");")
		return ""
	end	
	
	lualib:Player_SetDgnTicket(player, dgn_guid)
	lualib:Map_JumpXY(dgn_guid, player, 142, 157, 8)
	lualib:ShowFormWithContent(player,"脚本表单","MagicPagodaWnd.closeWnd();")
	return ""
	
end

function Get_Reward(player,param)
	param = tonumber(param)
	local haveNum = lualib:ItemCount(player, "镇魔令牌")
	if haveNum < 100 then
		lualib:ShowFormWithContent(player, "脚本表单", "MagicPagodaInWnd.msg(\"镇魔令牌不足\");")
		return ""
	end
	local getNum = math.floor(haveNum / 100) 
	local wingNum = getNum * 36
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player, "脚本表单", "MagicPagodaInWnd.msg(\"背包不足\");")
		return ""
	end
	local tab = {0,888,2588}
	if param ~= 1 then
		local ingot = lualib:GetIngot(player)
		if ingot < tab[param] then
			lualib:ShowFormWithContent(player, "脚本表单", "MagicPagodaInWnd.msg(\"元宝不足\");")
			return ""
		else
			if not lualib:Player_SubIngot(player, ingot, false, "镇魔宝塔:高倍兑换羽毛", "系统") then
				lualib:ShowFormWithContent(player, "脚本表单", "MagicPagodaInWnd.msg(\"扣除元宝失败\");")
				return ""
			end
		end	
	end	
	if param == 3 then
		param = 4
	end	
	if not lualib:DelItem(player, "镇魔令牌", getNum * 100, 2, "兑换羽毛", "系统") then				
		lualib:ShowFormWithContent(player, "脚本表单", "MagicPagodaInWnd.msg(\"扣除镇魔令牌失败\");")
		return ""
	end
	if not lualib:AddItem(player,"羽毛",wingNum * param,true,"镇魔宝塔", "系统") then
		return ""
	end
	return ""
end
