local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local exp = 250000
local guishu_exp = 500000

function on_create(monster)
	lualib:AddBuff(monster,"怪物变灰色", 0)
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_post_die(actor, killer)
	local map_guid = lualib:MapGuid(actor)
	local monster_num = lualib:GetInt(map_guid, "dujie_num")
	lualib:SetInt(map_guid, "dujie_num", monster_num - 1)
	
	--增加放怪者和杀怪者经验
	local dujie_player = lualib:GetStr(actor, "dujie_player")
	local dujiename = lualib:Name(dujie_player)
	local guishu = lualib:Monster_GetDropOwner(actor)
	
	if guishu == "" then
		guishu = killer	
	end
	
	if lualib:Monster_IsMonster(guishu) then
		local master_name = lualib:Monster_GetMaster(guishu);
		
		if master_name ~= "" then
			guishu = lualib:Name2Guid(master_name)
		end
	end
	
	local guishuname = lualib:Name(guishu)
	
	if lualib:Player_AddExp(guishu, guishu_exp, "渡劫亡灵", dujie_player) == true then
		lualib:SysTriggerMsg(guishu, "#COLORCOLOR_RED#你超渡了["..dujiename.."]老板诵经召唤的亡灵，获得了系统赠送的#COLORCOLOR_YELLOW#".. guishu_exp  .."经验！")
	end
	
	local s = "["..guishuname.."]超渡了["..dujiename.."]老板诵经召唤的亡灵，获得了系统赠送的".. guishu_exp  .."经验！！！！"
	local s1 = "#COLORCOLOR_BROWN#["..guishuname.."]#COLORCOLOR_RED#超渡了["..dujiename.."]老板诵经召唤的亡灵，获得了系统赠送的#COLORCOLOR_YELLOW#".. guishu_exp  .."经验！！！"
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
	
	if lualib:Player_AddExp(dujie_player, exp, "渡劫亡灵", dujie_player) == true then
		lualib:SysTriggerMsg(dujie_player, "#COLORCOLOR_RED#你诵经召唤出的亡灵，已被人超渡，你获得了系统赠送的#COLORCOLOR_YELLOW#".. exp  .."经验！#COLORCOLOR_RED#[每只你召唤出的亡灵被人击杀后，你都可获得系统赠送的#COLORCOLOR_YELLOW#更多经验！#COLORCOLOR_RED#活动期间请不要下线!]")
	end	
end