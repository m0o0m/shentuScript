local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local var_t = {"xs_flag10", "xs_flag30", "xs_flag50"}

function on_create(monster)
	lualib:SetInt("0","boss_shuaxin7",0)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    lualib:AddTrigger(monster,  lua_trigger_pre_die , "on_trigger_pre_die")
end

function on_trigger_boss_born(monster)
	if not lualib:SetInt(monster, "bl_01", 0) == true then
	lualib:Error("恶魔领主出生设置bl_01变量为0失败！")
	end
	if not lualib:SetInt(monster, "bl_03", 0) == true then
	lualib:Error("恶魔领主出生设置bl_03变量为0失败！")
	end
	lualib:SysMsg_SendBroadcastColor("恶魔领主：君临天下，指日可待！", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(monster, "恶魔领主：看看我这雄师，只要一出去，必能踏平天藏大陆！")
	--lualib:AddTimer(monster, 1, 30000, -1, "GetHpFromPlayer")
	
	for _, v in pairs(var_t) do
		lualib:Monster_SetCustomVarInt(monster, v, 0)
	end
end

function on_trigger_pre_die(actor, killer)
	local monster_die_x = lualib:X(actor)
	local monster_die_y = lualib:Y(actor)
	if not lualib:Map_ClearMonster(map, monster_die_x, monster_die_y, 100, "领主召唤魔眼怪", true, true) == true then
		lualib:Error("恶魔领主死亡删除领主召唤魔眼怪失败！")
	end
	return true
end

function on_trigger_post_die(actor, killer)
	 monster_x = lualib:X(actor)
	 monster_y = lualib:Y(actor)
	lualib:DisableTimer(actor, 2)
	lualib:ClearTrigger(actor)
	lualib:SysMsg_SendBroadcastColor("恶魔领主：小的们，快来挡住他们！让我回去恢复恢复~", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(actor, "恶魔领主：小的们，快来挡住他们！让我回去恢复恢复~")
	lualib:Map_GenMonster(map, monster_x, monster_y, 4, 4, "禁地魔眼1", 50, false)
	
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
	if lualib:KeyName(lualib:MapGuid(actor)) == "镇魔大殿" then
		local killername = lualib:Name(killer)
		lualib:SetInt("0","boss_shuaxin7",120)
		lualib:SetStr("0","boss_killer7",killername)
		lualib:AddTimerEx("0",307,60000,-1,"chongshengshijian","")
	end
end

-----------------------------------------------boss刷新倒计时----------------------------------------------------------
function chongshengshijian()
	if lualib:GetInt("0","boss_shuaxin7") > 0 then
		lualib:SetInt("0","boss_shuaxin7",lualib:GetInt("0","boss_shuaxin7")-1)
		lualib:AddTimerEx("0",307,60000,1,"chongshengshijian","")
	end
end

function on_attack(self, actor)
	local x = lualib:X(self)
	local y = lualib:Y(self)
	map = lualib:MapGuid(self)
	local player_table = lualib:Map_GetRegionPlayers(map, x, y, 20, true)
	if lualib:GetInt(self, "bl_01") == 0 then
		lualib:SysMsg_SendMapMsg(map, "恶魔领主：哈哈哈哈，又有新鲜的材料送上门啦，我要卸下你的手接到你头上，再把你的头插到菊花上，哈哈哈哈~！")
		lualib:SetInt(self, "bl_01", 1)
	end

	if lualib:GetInt(self, "bl_03") == 0 then
		if lualib:AddTimerEx(self, 2, 20000, -1, "jiance", map) == true then
			lualib:SetInt(self, "bl_03", 1)
		end
	end
end

function jiance(self, actor, map)
	local x1 = lualib:X(self)
	local y1 = lualib:Y(self)
	local map_key = lualib:KeyName(map)
	local wanjia = lualib:Monster_GetAttackTarget(self)
	local max_hp = lualib:Hp(self, true)
	local dangqian_hp = lualib:Hp(self, false)
	local moyan_num = lualib:Map_GetMonsterCount(map, "领主召唤魔眼怪", true, true)
	lualib:SysMsg_SendMapMsg(map, "恶魔领主：小子，过来吧~！")
	lualib:SysMsg_SendRoleTalk(self, "恶魔领主：小子，过来吧~！")
	lualib:Player_MapMoveXY(wanjia, map_key, x1-1, y1-1, 2)
	
	if moyan_num <= 50 then
		lualib:Map_GenMonster(map, x1, y1, 5, 4, "领主召唤魔眼怪", 10, false)
	end
	
	if max_hp <= 0 then
		lualib:Error("获取最大血量失败")
	return false
	end
	
	if dangqian_hp < 0 then
		lualib:Error("获取当前血量失败")
	return false
	end
	
	if dangqian_hp >= max_hp then
		if not lualib:DisableTimer(self, 1) == true then
		end
		if not lualib:DisableTimer(self, 2) == true then
		lualib:Error("删除检测血量定时器失败")
		end
		lualib:SetInt(self, "bl_01", 0)
		lualib:SetInt(self, "bl_03", 0)
		lualib:SysMsg_SendMapMsg(map, "恶魔领主：嘻嘻嘻嘻嘻嘻，别跑啊，叔叔我疼你呦！")
	end
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
