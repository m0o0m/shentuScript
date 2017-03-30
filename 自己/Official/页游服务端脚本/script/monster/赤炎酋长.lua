local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local var_t = {"xs_flag30", "xs_flag50", "xs_flag80"}

function on_create(monster)																								--出生添加触发器
	lualib:SetInt("0","boss_shuaxin8",0)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
	lualib:AddTrigger(monster,  lua_trigger_pre_die , "on_trigger_pre_die")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_boss_born(monster)																					--出生时
	lualib:SysMsg_SendBroadcastColor("赤炎酋长：来人啊，上祭品，本王饿了！", "", 1, 12)				--世界喊话
    lualib:SysMsg_SendRoleTalk(monster, "赤炎酋长：来人啊，上祭品！")													--怪物头顶说话
	lualib:AddBuff(monster, "赤炎酋长不显血", 0)																		--为自身添加BUFF
	
	for _, v in pairs(var_t) do
		lualib:Monster_SetCustomVarInt(monster, v, 0)
	end
end


function on_trigger_pre_die(actor, killer)																				--死亡前
	local monster_die_x = lualib:X(actor)
	local monster_die_y = lualib:Y(actor)
	if not lualib:Map_ClearMonster(map, monster_die_x, monster_die_y, 100, "赤炎酋长分身", true, true) == true then		--删除赤炎酋长分身
		lualib:Error("赤炎酋长死亡删除赤炎酋长分身失败！")
	end
	return true
end


function on_trigger_post_die(actor, killer)																				--死亡后
	lualib:ClearTrigger(actor)
	lualib:SysMsg_SendBroadcastColor("赤炎酋长：出来混，迟早是要还的，等我学会做切糕，我一定会糕临天下的！", "", 1, 12)		--系统喊话
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
	
	if lualib:KeyName(lualib:MapGuid(actor)) == "赤炎禁地" then
		local killername = lualib:Name(killer)
		lualib:SetInt("0","boss_shuaxin8",240)
		lualib:SetStr("0","boss_killer8",killername)
		lualib:AddTimerEx("0",308,60000,-1,"chongshengshijian","")
	end
end

-----------------------------------------------boss刷新倒计时----------------------------------------------------------
function chongshengshijian()
	if lualib:GetInt("0","boss_shuaxin8") > 0 then
		lualib:SetInt("0","boss_shuaxin8",lualib:GetInt("0","boss_shuaxin8")-1)
		lualib:AddTimerEx("0",308,60000,1,"chongshengshijian","")
	end
end

function on_attack(self, actor)																										--受到伤害触发
	local x = lualib:X(self)
	local y = lualib:Y(self)
	local x2 = {x+10, x+11, x+12, x+13, x+14, x+15, x-10, x-12, x-13, x-14, x-15}
	local y2 = {y+10, y+11, y+12, y+13, y+14, y+15, y-10, y-12, y-13, y-14, y-15}
	local tiao_x = lualib:GenRandom(1,  table.getn(x2))
	local tiao_y = lualib:GenRandom(1,  table.getn(y2))
	local buff_table = {"蛊毒咒减血1级","蛊毒咒减血2级","蛊毒咒减血3级","蛊毒咒减血4级","蛊毒咒减防1级","蛊毒咒减防2级","蛊毒咒减防3级","蛊毒咒减防4级"}
	map = lualib:MapGuid(self)
	if lualib:Monster_GetCustomVarInt(self, "talk_flag") ~= 0 then return end
    local hp_mul = get_hp_mul(self)
	
	if x == -1 or y == -1 or map == "" or hp_mul == -1 then return end

	local summon_t = {{30, 3}, {50, 2}, {80, 1}}
	for k, v in pairs(summon_t) do
		if hp_mul <= v[1] then
			if lualib:Monster_GetCustomVarInt(self, var_t[k]) ~= 0 then return end
			for i = 1, v[2] do
				local servant_monster = lualib:Map_GenSingleMonster(map, x, y, 20, lualib:GenRandom(0, 7), "赤炎酋长分身", false)
				if "" == servant_monster  then
					lualib:Error("赤炎酋长召唤分身失败！")
					return
				end
				lualib:Monster_JumpXY(map, self, x2[tiao_x], y2[tiao_y], 20)
				for z = 1, #buff_table do																								--如果BOSS中毒则清除中毒BUFF
					if lualib:HasBuff(self, buff_table[z]) == true then
						lualib:DelBuff(self, buff_table[z])
					end
				end
				local fenshen_table = lualib:Map_GetRegionMonsters(map, "赤炎酋长分身", x, y, 20, true, true)
				for u = 1, #fenshen_table do
					if fenshen_table[u] ~= nil then 
						for o = 1, #buff_table do																								--如果BOSS中毒则清除中毒BUFF
							if lualib:HasBuff(fenshen_table[u], buff_table[o]) == true then
								lualib:DelBuff(fenshen_table[u], buff_table[o])
							end
						end
					cyqzguid = fenshen_table[u]
					end
				end
				lualib:Monster_SetCustomVarStr(servant_monster, "master_guid", self)
			end
			lualib:Debug("赤炎酋长血量降到了"..v[1].."，已召唤"..v[2].."个分身！")
			lualib:SysMsg_SendBroadcastColor("赤炎咒语:吃葡萄不吐葡萄皮仓井思密达~", "", 1, 12)
			lualib:SysMsg_SendRoleTalk(self, "赤炎咒语:吃葡萄不吐葡萄皮仓井思密达~")
			lualib:Monster_SetCustomVarInt(self, var_t[k], 1)
			break
		end
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
