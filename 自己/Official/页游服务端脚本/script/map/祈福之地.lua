local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/level_gold_exp")

local timerID             = 1
local AddExpTime          = 180000

local GoldCoefficient     = 0.2
local SilverCoefficient   = 0.5

local GoldBookName        = "��֮��(���)"
local SilverBookName      = "��֮��(Ԫ��)"

local GoldQfBuffKeyname   = "��֮��(���)"
local SilverQfBuffKeyname = "��֮��(Ԫ��)"

function on_map_create(map)
	lualib:AddTimer(map, timerID, AddExpTime, -1, "on_timer_add_exp")
	lualib:AddTrigger(map,  lua_trigger_item_apply, "on_trigger_item_apply")
end

function on_trigger_item_apply(player, item_id, item_key)

	if lualib:Level(player) < 20 then
		lualib:SysMsg_SendPromptMsg(player, "20�����²���ʹ��")
	end

	if item_key == GoldBookName then
		if lualib:Player_IsHasBuff(player, SilverQfBuffKeyname) then
			lualib:SysMsg_SendPromptMsg(player, "���и��߼�����Ч����ʹ��ʧ��")
			return true
		else
			if not lualib:DelItem(player, GoldBookName, 1, 2, "��֮�أ�ʹ����֮��(���)", "��֮��") then
				lualib:Error("ɾ����֮��(���)ʧ��")
			end
			lualib:AddBuff(player, GoldQfBuffKeyname, 0)
		end
	elseif item_key == SilverBookName then
		if lualib:Player_IsHasBuff(player, GoldQfBuffKeyname) then
			local msg = ""
			msg = msg .. "���Ѿ��еĽ����BUFF��Ԫ����BUFF���滻ԭ���Ľ����BUFF���Ƿ��滻��\n \n"
			msg = msg .. "<@OK     *01* ȷ��>\n"
			msg = msg .. "<@Cancel *01* ȡ��>\n"
			lualib:NPCTalk(player, msg)
			return true
		else
			if not lualib:DelItem(player, SilverBookName, 1, 2, "��֮�أ�ʹ����֮��(Ԫ��)", "��֮��") then
				lualib:Error("ɾ����֮��(Ԫ��)ʧ��")
			end
			lualib:AddBuff(player, SilverQfBuffKeyname, 0)
		end
	else
		return true
	end

    return true
end

function OK(player)
	if not lualib:DelItem(player, SilverBookName, 1, 0, "��֮�أ�ʹ����֮��(Ԫ��)", "��֮��") then
		lualib:Error("ɾ����֮��(Ԫ��)ʧ��")
	end
	lualib:DelBuff(player, GoldQfBuffKeyname)
    lualib:AddBuff(player, SilverQfBuffKeyname, 0)
	return ""
end

function Cancel(player)
    return ""
end

function on_timer_add_exp(map, timer_id)
	local playerList = lualib:Map_GetMapPlayers(map, false)

	if playerList == nil then
		return 
	end


	for k, v in pairs(playerList) do
        local level = lualib:Level(v)
		if lualib:Player_IsHasBuff(v, GoldQfBuffKeyname) == true then
			lualib:Player_AddExp(v, GoldCoefficient * level_gold_exp_t[level][2] / 20, "�Ӿ���:��֮����ͨ�ݵ�", "��֮��")
		elseif lualib:Player_IsHasBuff(v, SilverQfBuffKeyname) == true then
			lualib:Player_AddExp(v, SilverCoefficient * level_gold_exp_t[level][2] / 20, "�Ӿ���:��֮��Ԫ���ݵ�", "��֮��")
		end
	end
end

function on_map_destroy(map)
	lualib:DisableTimer(map, 1)
    lualib:ClearTrigger(map)
end
