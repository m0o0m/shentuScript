local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local exp = 250000
local guishu_exp = 500000

function on_create(monster)
	lualib:AddBuff(monster,"������ɫ", 0)
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_post_die(actor, killer)
	local map_guid = lualib:MapGuid(actor)
	local monster_num = lualib:GetInt(map_guid, "dujie_num")
	lualib:SetInt(map_guid, "dujie_num", monster_num - 1)
	
	--���ӷŹ��ߺ�ɱ���߾���
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
	
	if lualib:Player_AddExp(guishu, guishu_exp, "�ɽ�����", dujie_player) == true then
		lualib:SysTriggerMsg(guishu, "#COLORCOLOR_RED#�㳬����["..dujiename.."]�ϰ��о��ٻ������飬�����ϵͳ���͵�#COLORCOLOR_YELLOW#".. guishu_exp  .."���飡")
	end
	
	local s = "["..guishuname.."]������["..dujiename.."]�ϰ��о��ٻ������飬�����ϵͳ���͵�".. guishu_exp  .."���飡������"
	local s1 = "#COLORCOLOR_BROWN#["..guishuname.."]#COLORCOLOR_RED#������["..dujiename.."]�ϰ��о��ٻ������飬�����ϵͳ���͵�#COLORCOLOR_YELLOW#".. guishu_exp  .."���飡����"
	lualib:SysMsg_SendCenterMsg(1, s, "")
	lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
	
	if lualib:Player_AddExp(dujie_player, exp, "�ɽ�����", dujie_player) == true then
		lualib:SysTriggerMsg(dujie_player, "#COLORCOLOR_RED#���о��ٻ��������飬�ѱ��˳��ɣ�������ϵͳ���͵�#COLORCOLOR_YELLOW#".. exp  .."���飡#COLORCOLOR_RED#[ÿֻ���ٻ��������鱻�˻�ɱ���㶼�ɻ��ϵͳ���͵�#COLORCOLOR_YELLOW#���ྭ�飡#COLORCOLOR_RED#��ڼ��벻Ҫ����!]")
	end	
end