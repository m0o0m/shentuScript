--item/魔气血石.lua
--说明: 1.在角色上线函数中需添加代码	lualib:DelayCall(player, 1, "魔气血石:on_login", "")
--		2.若非新引擎, 没有集成触发器类型常量, 请自行require脚本logic_def_lua.lua
--		3.由于存储变量更改, tips中代码请自行修改

local storages = {
                    --[KeyName] = {存储值, HP回复, MP回复, 回复间隔(s)}
                    ["气血石(大)"] = {200000, 18, 0, 3}, 
                    ["气血石(中)"] = {100000, 18, 0, 3}, 
                    ["气血石(小)"] = {50000, 18, 0, 3},  
                    ["幻魔石(大)"] = {200000, 0, 18, 3}, 
                    ["幻魔石(中)"] = {100000, 0, 18, 3}, 
                    ["幻魔石(小)"] = {50000, 0, 18, 3},
                    ["魔血石(大)"] = {250000, 18, 18, 3}, 
                    ["魔血石(中)"] = {150000, 18, 18, 3}, 
                    ["魔血石(小)"] = {100000, 18, 18, 3},
                    ["魔血石(赠)"] = {100000, 18, 18, 3},
                 }
local site = 15							--石头所放的装备位置
local script = "魔气血石"				--本脚本的脚本名
local cur_store = "cur_store"			--当前存储值变量名
local total_store = "total_store"		--存储值上限变量名

function on_create(item)
	local key = lualib:KeyName(item)
	if storages[key] == nil then
		return
	end
	if storages[key][1] > 0 then
		local store = storages[key][1]
		lualib:SetInt(item, cur_store, store)
		lualib:SetInt(item, total_store, store)
		lualib:NotifyVar(item, cur_store)
		lualib:NotifyVar(item, total_store)
	end
end

function on_login(player)
	local item = lualib:Player_GetItemGuid(player, site)
	if item ~= "" then
		on_post_equip(player, item)
	end
end

function OnStateInit()
	if lualib:GetCurScriptName() == script then
		if not lualib:HasTrigger("0", lua_trigger_post_equip, "on_post_equip") then
			lualib:AddTrigger("0", lua_trigger_post_equip, "on_post_equip")
		end
		if not lualib:HasTrigger("0", lua_trigger_post_un_equip, "on_post_un_equip") then
			lualib:AddTrigger("0", lua_trigger_post_un_equip, "on_post_un_equip")
		end
	end
end

function on_post_equip(player, item)
	local key = lualib:KeyName(item)
	if storages[key] == nil then
		return
	end
	lualib:AddTimer(item, 1, 1000 * storages[key][4], -1, "on_timer_reply")
end

function on_post_un_equip(player, item)
	local key = lualib:KeyName(item)
	if storages[key] == nil then
		return
	end
	lualib:DisableTimer(item, 1)
end

function on_timer_reply(item, id)
    local player = lualib:Item_GetRole(item)
    if player == "" then
		lualib:DisableTimer(item, id)
		return
	end
	
	local key = lualib:KeyName(item)
	local t = storages[key]
	if t == nil then
		lualib:DisableTimer(item, id)
		return
	end
	
	local iSite = lualib:Item_GetSite("", item)
	if iSite ~= site then
		lualib:DisableTimer(item, id)
		return
	end
	
	if lualib:Player_IsDie(player) then
		return
	end
	
	local store = lualib:GetInt(item, cur_store)
	if store <= 0 then
		local name = lualib:Name(item)
		lualib:Item_Destroy("", item, "道具销毁:存储值为0", player)
		lualib:SysPromptMsg(player, name.."消耗完自动销毁")
		return
	else
		local cur_hp, hp, cur_mp, mp = 0, 0, 0, 0
		if t[2] > 0 then
			cur_hp = lualib:Hp(player, false)
			local lmt_hp = lualib:Hp(player, true)
			hp = GetValue(cur_hp, lmt_hp, store, key, 2)
		end
		if hp > 0 then
			store = store - hp
			lualib:SetHp(player, cur_hp + hp, false)
			lualib:ShowRoleHPRef(player, player, hp)		--玩家头顶飘hp值
			lualib:SetInt(item, cur_store, store)
		end
		if t[3] > 0 then
			cur_mp = lualib:Mp(player, false)
			local lmt_mp = lualib:Mp(player, true)
			mp = GetValue(cur_mp, lmt_mp, store, key, 3)
		end
		if mp > 0 then
			store = store - mp
			lualib:SetMp(player, cur_mp + mp, false)
			lualib:SetInt(item, cur_store, store)
		end
		
		if hp > 0 or mp > 0 then
			if lualib:GenRandom(1, 20) == 1 then
				lualib:NotifyVar(item, cur_store)
			end
		end
	end
end

function GetValue(cur, lmt, val, key, k)
	local result = lmt - cur
	if result > val then
		result = val
	end
	
	if result > storages[key][k] then
		result = storages[key][k]
	end
	
	return result
end