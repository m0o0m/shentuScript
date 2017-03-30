local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("monster/征服系统怪物")

local var_t = {"xs_flag30", "xs_flag50", "xs_flag80"}

function on_create(monster)
	lualib:SetInt("0","boss_shuaxin5",0)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_boss_born(monster)
	lualib:SysMsg_SendBroadcastColor("天魔神：我要守住这里，不能让任何人去镇魔城！", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(monster, "天魔神：我要守住这里，不能让任何人去镇魔城！")
	
	for _, v in pairs(var_t) do
		lualib:Monster_SetCustomVarInt(monster, v, 0)
	end
end

function on_trigger_post_die(actor, killer)
	lualib:ClearTrigger(actor)
	lualib:SysMsg_SendBroadcastColor("天魔神：镇魔城的兄弟们，人类中计了，哈哈！", "", 1, 12)
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
	zhengfusiwang(actor, killer) --调用征服系统中的怪物死亡触发判断
	if lualib:KeyName(lualib:MapGuid(actor)) == "天魔石窟boss" then
		local killername = lualib:Name(killer)
		lualib:SetInt("0","boss_shuaxin5",120)
		lualib:SetStr("0","boss_killer5",killername)
		lualib:AddTimerEx("0",305,60000,-1,"chongshengshijian","")
	end
	
	local playerlist = lualib:Player_GetTeamList(killer)
	for i = 1, #playerlist do
		if lualib:KeyName(lualib:MapGuid(actor)) == "天魔石窟boss" then
			lualib:OnGloryTrigger(playerlist[i], 2, "", 1, "", "天魔神")
		end
	end
	
end

-----------------------------------------------boss刷新倒计时----------------------------------------------------------
function chongshengshijian()
	if lualib:GetInt("0","boss_shuaxin5") > 0 then
		lualib:SetInt("0","boss_shuaxin5",lualib:GetInt("0","boss_shuaxin5")-1)
		lualib:AddTimerEx("0",305,60000,1,"chongshengshijian","")
	end
	end




function on_attack(self, actor)
		lualib:AddTimerEx(self, 306, 20000, -1, "jiance", "")	
	local x = lualib:X(self)
	local y = lualib:Y(self)
	local x2 = {x+10, x+11, x+12, x+13, x+14, x+15, x-10, x-12, x-13, x-14, x-15}
	local y2 = {y+10, y+11, y+12, y+13, y+14, y+15, y-10, y-12, y-13, y-14, y-15}
	local tiao_x = lualib:GenRandom(1,  table.getn(x2))
	local tiao_y = lualib:GenRandom(1,  table.getn(y2))
		  map = lualib:MapGuid(self)
	if lualib:Monster_GetCustomVarInt(self, "talk_flag") ~= 0 then return end
    local hp_mul = get_hp_mul(self)
	
	if x == -1 or y == -1 or map == "" or hp_mul == -1 then return end

	local summon_t = {{30, 3}, {50, 2}, {80, 1}}
	for k, v in pairs(summon_t) do
		if hp_mul <= v[1] then
			if lualib:Monster_GetCustomVarInt(self, var_t[k]) ~= 0 then return end

				lualib:Monster_JumpXY(map, self, x2[tiao_x], y2[tiao_y], 20)
				lualib:AddBuff(self, "缩小药剂", 60)
				lualib:SysMsg_SendMapMsg(map, "天魔神：本王在["..x2[tiao_x].."]["..y2[tiao_y].."]，不会让你这么轻易伤害到我的!")
			lualib:Monster_SetCustomVarInt(self, var_t[k], 1)
			break
		end
	end
end

function jiance(self, actor)
	local mubiao_guid = lualib:Monster_GetAttackTarget(self)
	if lualib:Player_IsOnline(mubiao_guid) ~= true then
	return 
	end
	if mubiao_guid == nil then
	return
	end
	local player_x = lualib:X(mubiao_guid)
	local player_y = lualib:Y(mubiao_guid)
	lualib:Monster_JumpXY(map, self, player_x-1, player_y-1, 10)					--瞬移到怪物的目标旁边
	lualib:SysMsg_SendMapMsg(map, "天魔神:咻~~~~")
	lualib:Monster_SpellTarget(self, 10188, mubiao_guid)							--释放眩晕技能

	
	local maxhp = lualib:Hp(self, true)
	local dangqian_hp = lualib:Hp(self, false)
	
	if maxhp <= 0 then
		lualib:Error("获取天魔神最大血量失败")
	return false
	end
	
	if dangqian_hp < 0 then
		lualib:Error("获取天魔神当前血量失败")
	return false
	end
	
	if dangqian_hp >= maxhp then
		if not lualib:DisableTimer(self, 306) == true then
			lualib:Error("删除天魔神检测血量定时器失败")
		end
	end
end

function get_hp_mul(monster)
    local max_hp = lualib:Monster_GetIntProp(monster,  lua_role_max_hp)
    local hp = lualib:Monster_GetIntProp(monster,  lua_role_hp)
    if max_hp == -1 or hp == -1 then
        lualib:Print("取得天魔神的血量出错！")
        return -1
    end
    return hp / max_hp * 100
end