local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local beforeAtkMsg = "�����Һúøɻ�ɲ������ǽ��춼û�з��ԡ�"
local firstAtkMsg  = "�ҿ���������ϴ������ѣ�Ҳ������ô�����ź��Ұ�"

local msgOn30 =
{
	"���ǳ��ҵģ����ҵģ�ס�ҵģ���Ȼ����͵����BOSS���Ͽ�ȥ�ɻ",
	"�����ҵĸ����ͻ����������ҵĸ����³�����",
	"�����������������ծ�ɣ�������",
	"���ǵ�������˭����",
	"��ʵ���Ǻõ������Ҳ���ǿ���������������֮ǰ�治֪������������",
	"�ҵĵ������������������ǵ�������Ȼ���Ƕ����ˣ���������ͣ���Ҷ���Ҫ���ˣ�����������ɱ�����ǣ�����"
}

local msgOnHP50 =
{
	"����Ҫ������ũ�ľ��򣡲�Ҫ�����ˣ����أ��ðɣ��ҳ��ϱ�����Ű�ˣ�����˺�ô",
	"������Ů��ס�������㿪��ֻ�����Ǳ��ٴ����ˣ�",
	"��Ӵ����λ����Ӱ���������Ҳ������ô�������ģ�ʹ��������",
	"����Ǯ����һ�����Ǯ�����Ǳ���ң��Ҹ�����Ǯ��",
	"��������һ������, ��ʵ...���Ǹ���Ů...�ҿ�����������Ů�����������ݰ�������"
}

local atkMsg    = "��Ǯ���Ǵ�ү����Ҵ���Ҵ�ү�����ҵľ�������ͷ��ܣ�����ѽѽ�����ǲ�Ҫ�����ң�����"
local skillName = "�������"

local sgOnDead  = "���쾹Ȼ��������ȺСආ����ˣ������ƣ��һ��ٻ����ģ�����"

local bornTimerID           = 1
local atkOn30TimerID        = 2
local atkOnHP50TimerID      = 3
local atkOnOneMinuteTimerID = 4

local bornTime        = 180000
local On30Time        = 180000
local OnHP50Time      = 180000
local OnOneMinuteTime = 360000

function on_create(monster)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_boss_born(monster)
	lualib:Monster_SetCustomVarInt(monster, "Attacked", 0)
	lualib:Monster_SetCustomVarInt(monster, "AttackedOnHP50", 0)
	lualib:AddTimer(monster, bornTimerID, bornTime, -1, "on_born")
end

function on_born(monster, timer_id)
	BOSSSay(beforeAtkMsg)
end

function on_trigger_post_die(actor, killer)
	
end

function on_attack(self, actor)
	if lualib:Monster_GetCustomVarInt(self, "Attacked") == 0 then
		lualib:Monster_SetCustomVarInt(self, "Attacked", 1)
		lualib:DisableTimer(self, bornTimerID)
		BOSSSay(firstAtkMsg)
		lualib:AddTimer(self, atkOn30TimerID, On30Time, -1, "on_attacked")
		lualib:AddTimer(self, atkOnOneMinuteTimerID, OnOneMinuteTime, -1, "on_attacked_one_minute")
	end

	if get_hp_mul <= 50 then
		if lualib:Monster_GetCustomVarInt(self, "AttackedOnHP50") == 0 then
			lualib:Monster_SetCustomVarInt(self, "AttackedOnHP50", 1)
			lualib:DisableTimer(self, atkOn30TimerID)
			lualib:AddTimer(self, atkOnHP50TimerID, OnHP50Time, -1, "on_attacked_hp_50")
		end
	end
end

function on_attacked(monster, timer_id)
	BOSSSay(msgOn30[GenRandom(1, #msgOn30)])
end

function on_attacked_hp_50(monster, timer_id)
	BOSSSay(msgOnHP50[GenRandom(1, #msgOnHP50)])
end

function on_attacked_one_minute(monster, timer_id)
	local x = lualib:Monster_GetPosX(monster)
	local y = lualib:Monster_GetPosY(monster)
	local map = lualib:Monster_GetMap(monster)
	if x == -1 or y == -1 or map == "" then return end

	local players = lualib:Map_GetRegionPlayers(map, x, y, 15, true)
	if players == nil then return end
	
	BOSSSay(atkMsg)
	lualib:Monster_SpellTarget(monster, skillName, players[lualib:GenRandom(1, #players)])
end

function get_hp_mul(monster)
	local max_hp = lualib:Monster_GetIntProp(monster,  lua_role_max_hp)
    local hp = lualib:Monster_GetIntProp(monster,  lua_role_hp)
    if max_hp == -1 or hp == -1 then
        lualib:Print("ȡ��BOSS��Ѫ������")
        return -1
    end
    return hp / max_hp * 100
end

function BOSSSay(msg)
	lualib:SysMsg_SendBroadcastColor(msg, "", 1, 12)
    lualib:SysMsg_SendRoleTalk(monster, "����֮����" .. msg)
end
