local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local var_t = {"xs_flag10", "xs_flag30", "xs_flag50"}

function on_create(monster)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    --lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack1")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_boss_born(monster)
	if not lualib:SetInt(monster, "bl_01", 0) == true then
	lualib:Error("血禅师出生设置bl_01变量为0失败！")
	end
	if not lualib:SetInt(monster, "bl_02", 0) == true then
	lualib:Error("血禅师出生设置bl_02变量为0失败！")
	end
	if not lualib:SetInt(monster, "bl_03", 0) == true then
	lualib:Error("血禅师出生设置bl_03变量为0失败！")
	end
	--lualib:SysMsg_SendBroadcastColor("血禅师：饮人之血，食人之气", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(monster, "血禅师：饮人之血，食人之气……")
	--lualib:AddTimer(monster, 1, 30000, -1, "GetHpFromPlayer")
	
	for _, v in pairs(var_t) do
		lualib:Monster_SetCustomVarInt(monster, v, 0)
	end
end

function on_trigger_post_die(actor, killer)
	lualib:DisableTimer(actor, 2)
	lualib:ClearTrigger(actor)
	--lualib:SysMsg_SendBroadcastColor("血禅师：今虽身亡，然有血光之处，我必定卷土重来！", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(actor, "今虽身亡，然有血光之处，我必定卷土重来！")
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
end

--[[function on_attack(self, actor)
	if lualib:Monster_GetCustomVarInt(self, "talk_flag") ~= 0 then return end
    local hp_mul = get_hp_mul(self)
	
	local x = lualib:Monster_GetPosX(self)
	local y = lualib:Monster_GetPosY(self)
	local map = lualib:Monster_GetMap(self)
	if x == -1 or y == -1 or map == "" or hp_mul == -1 then return end

	local summon_t = {{10, 3}, {30, 2}, {50, 1}}
	for k, v in pairs(summon_t) do
		if hp_mul <= v[1] then
			if lualib:Monster_GetCustomVarInt(self, var_t[k]) ~= 0 then return end
			for i = 1, v[2] do
				local servant_monster = lualib:Map_GenSingleMonster(map, x, y, 5, lualib:GenRandom(0, 7), "血兽", false)
				if "" == servant_monster  then
					lualib:Error("血禅师召唤血兽失败！")
					return
				end
				lualib:Monster_SetCustomVarStr(servant_monster, "master_guid", self)
			end
			lualib:Debug("血禅师血量降到了"..v[1].."，已召唤"..v[2].."个血兽！")
			
			lualib:SysMsg_SendBroadcastMsg("仆从们，快治疗我！", "血禅师")
			lualib:SysMsg_SendRoleTalk(self, "仆从们，快治疗我！")
			lualib:Monster_SetCustomVarInt(self, var_t[k], 1)
			break
		end
	end
end]]

--[[function GetHpFromPlayer(monster, timer_id)
	local x = lualib:Monster_GetPosX(monster)
	local y = lualib:Monster_GetPosY(monster)
	local map = lualib:Monster_GetMap(monster)
	if x == -1 or y == -1 or map == "" then return end
		
	local players = lualib:Map_GetRegionPlayers(map, x, y, 10, true)
	if #players == 0 then return end
	
	local skill_t = {["血禅师吸血"] = 10109, ["血禅师全屏攻击"] = 10116}
	if not lualib:Monster_SpellTarget(monster, skill_t["血禅师吸血"], monster) then
		lualib:Error("血禅师施放：血禅师吸血失败！")
	end
	
	if not lualib:Monster_SpellTarget(monster, skill_t["血禅师全屏攻击"], players[1]) then
		lualib:Error("血禅师施放：血禅师全屏攻击失败！")
	end
end]]

function on_attack1(self, actor)
	local x = lualib:X(self)
	local y = lualib:Y(self)
	local map = lualib:MapGuid(self)
	local player_table = lualib:Map_GetRegionPlayers(map, x, y, 20, true)
	if lualib:GetInt(self, "bl_01") == 0 then
		lualib:SysMsg_SendMapMsg(map, "血禅师：哼~竟敢打扰我疗伤，再给我5分钟，我即将恢复到全盛时期，到时候就是你们的死期")
		lualib:SetInt(self, "bl_01", 1)
	end
	
	if lualib:GetInt(self, "bl_02") == 0 then
		if lualib:AddTimerEx(self, 1, 300000, 1, "kuangbao", "") == true then
			lualib:SetInt(self, "bl_02", 1)
		end
	end

	if lualib:GetInt(self, "bl_03") == 0 then
		if lualib:AddTimerEx(self, 2, 10000, -1, "jiance", map) == true then
			lualib:SetInt(self, "bl_03", 1)
		end
	end
end

function kuangbao(self, actor)
	if not lualib:AddBuff(self, "首领狂暴", 0) then
	lualib:Error("血禅师狂暴失败！")
	end
	--lualib:SysMsg_SendBroadcastColor("血禅师：哈哈，你们的死期到啦,去死吧~都去死吧~~", "", 1, 12)
end

function jiance(self, actor, map)
	local max_hp = lualib:Hp(self, true)
	local dangqian_hp = lualib:Hp(self, false)
	
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
		if lualib:HasBuff(self, "首领狂暴") == true then
			lualib:DelBuff(self,"首领狂暴")
		end
		lualib:SetInt(self, "bl_01", 0)
		lualib:SetInt(self, "bl_02", 0)
		lualib:SetInt(self, "bl_03", 0)
		lualib:SysMsg_SendMapMsg(map, "血禅师：哈哈，黄毛人类居然敢来挑战我的权威，这下知道我的厉害了吧，待我休息一下再继续疗伤！")
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
