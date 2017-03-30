local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_create(monster)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    end

function on_trigger_boss_born(monster)
	lualib:SetInt("0","boss_shuaxin1",0)
	lualib:SysMsg_SendBroadcastColor("ţħ�������������ڴ����أ�˭�Ҷ�ǣ�", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(monster, "ţħ������ţħ�����ڴ����أ�˭������ǣ�")
end

function on_trigger_post_die(actor, killer)
	lualib:SysMsg_SendBroadcastColor("ţħ��������ɽ���ģ���ˮ���������ҵ����ƣ�", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(actor, "ţħ��������ɽ���ģ���ˮ���������ҵ����ƣ�")
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
	
	if lualib:KeyName(lualib:MapGuid(actor)) == "��·��boss" then
		local killername = lualib:Name(killer)
		lualib:SetInt("0","boss_shuaxin1",60)
		lualib:SetStr("0","boss_killer1",killername)
		lualib:AddTimerEx("0",301,60000,-1,"chongshengshijian","")
	end
end

-----------------------------------------------bossˢ�µ���ʱ----------------------------------------------------------
function chongshengshijian()
	if lualib:GetInt("0","boss_shuaxin1") > 0 then
		lualib:SetInt("0","boss_shuaxin1",lualib:GetInt("0","boss_shuaxin1")-1)
		lualib:AddTimerEx("0",301,60000,1,"chongshengshijian","")
	end
end

function on_attack(self, actor)
	if lualib:Monster_GetCustomVarInt(self, "talk_flag") ~= 0 then return end
    local hp_mul = get_hp_mul(self)
    if hp_mul == -1 then return end
    if hp_mul <= 10 then
		lualib:SysMsg_SendBroadcastColor("ţħ���������Ǿ�Ȼ���������ˣ��ѵ�����������Ҳ��", "", 1, 12)
		lualib:SysMsg_SendRoleTalk(self, "ţħ���������Ǿ�Ȼ���������ˣ��ѵ�����������Ҳ��")
		lualib:Monster_SetCustomVarInt(self, "talk_flag", 1)
    end
end

function get_hp_mul(monster)
    local max_hp = lualib:Monster_GetIntProp(monster,  lua_role_max_hp)
    local hp = lualib:Monster_GetIntProp(monster,  lua_role_hp)
    if max_hp == -1 or hp == -1 then
        return -1
    end
	return (hp / max_hp * 100)
end
