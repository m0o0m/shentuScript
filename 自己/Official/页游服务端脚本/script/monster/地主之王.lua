local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local beforeAtkMsg = "都给我好好干活，干不好你们今天都没有饭吃。"
local firstAtkMsg  = "我靠，不过来洗个澡而已，也不用这么多人伺候我吧"

local msgOn30 =
{
	"你们吃我的，用我的，住我的，居然还敢偷懒打BOSS，赶快去干活！",
	"拿了我的给我送回来，吃了我的给我吐出来！",
	"你家有妹子吗？拿来抵债吧！哈哈！",
	"我是地主我怕谁？！",
	"其实我是好地主！我不以强凌弱，我起伏你们之前真不知道他比我弱。",
	"我的地盘我做主，所以我是地主，既然你们都来了，今天我请客，大家都不要走了，哈哈，等我杀灭你们！！！"
}

local msgOnHP50 =
{
	"你们要有做佃农的觉悟！不要反抗了！呜呜，好吧，我承认被你们虐了，别打了好么",
	"宝马，美女，住房，随你开，只求你们别再打我了！",
	"哎哟，各位大舅子哎，斗地主也不是这么个斗法的，痛死我啦！",
	"我有钱，非一般的有钱。你们别打我，我给你们钱！",
	"告诉你们一个秘密, 其实...我是个美女...我靠，你们连美女都打，天理难容啊！！！"
}

local atkMsg    = "有钱就是大爷，你敢打你家大爷，看我的绝技：抱头鼠窜！！哇呀呀，你们不要挡着我！！！"
local skillName = "蛮力冲锋"

local sgOnDead  = "今天竟然被你们这群小喽啰办了，走着瞧，我会再回来的！！！"

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
        lualib:Print("取得BOSS的血量出错！")
        return -1
    end
    return hp / max_hp * 100
end

function BOSSSay(msg)
	lualib:SysMsg_SendBroadcastColor(msg, "", 1, 12)
    lualib:SysMsg_SendRoleTalk(monster, "地主之王：" .. msg)
end
