local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
    CMap:OnCreate()

	local npc = lualib:Map_GenNpc(map, "封魔阵引路人场内", 33, 47, 0, 3)
	if "" == npc then
		lualib:Error("封魔阵副本刷新场内NPC失败！")
		return
	end
	lualib:Debug("封魔阵副本刷新场内NPC成功！")

    lualib:AddTrigger(map,  lua_trigger_post_die, "on_trigger_post_die")
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")

    local close_timer = {{3, 1620000}, {2, 1680000}, {1, 1740000}}
    for i = 1, #close_timer do
        if not lualib:AddTimer(map, close_timer[i][1], close_timer[i][2], 1, "on_timer_close") then
            lualib:Error("添加关闭定时器失败！")
        else
            lualib:Debug("添加关闭定时器成功！")
        end
    end
end


function on_trigger_enter_map(player)
	local max_count = 3
	local cur_count = lualib:CampCount(player, 1)
	lualib:SysMsg_SendTriggerMsg(player,
			string.format("你已进入封魔阵（副本），当前进入次数：%d，每日最多进入次数：%d，进度将在凌晨00:00:00重置。",
			cur_count, max_count))

	local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
	if 0 ~= CMap:GetLevelType(map) then return end

	local players = lualib:Map_GetMapPlayers(map, false)
	if players == nil then return end

	local level = 0
	for _, v in pairs(players) do
		level = level + lualib:Player_GetIntProp(v,  lua_role_level)
	end
	level = math.floor(level, #players)

	local level_t = {20, 30, 40, 201}
	local cur_type = 0
	for k, v in pairs(level_t) do
		if level < v then
			cur_type = k - 1
			break
		end
	end
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.封魔阵内会产出布料，用于制作包裹\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.包裹可在仓库管理员处制作和道具合成处合成!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.人在江湖飘，包裹越大、越牛叉！#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)

	CMap:SetLevelType(map, cur_type)
    CMap:GenMonster(map)
end

function on_map_destroy(map)
	lualib:ClearTrigger(map)
end

function on_trigger_post_die(actor, killer)
    local count = 0
    if not lualib:Monster_IsMonster(actor) then return end
	local map = lualib:Monster_GetMap(actor)
    if lualib:Monster_GetKeyName(actor) == CMap.monster[CMap:GetLevelType(map)] then
        count = CMap.max_monster - CMap:GetCurMonsterCount(map)

		local surplus = count + CMap:GetMonsterCount(map)
		lualib:SysMsg_SendMapMsg(map, string.format("封魔阵剩余怪物数量%d个！", surplus))

		--[[
		if (surplus == 0) then
			local map_width = lualib:Map_GetWidth(map)
			local map_height = lualib:Map_GetHeight(map)
			if map_width < map_height then map_width = map_height end
			local players = lualib:Map_GetRegionPlayers(map, 0, 0, map_width, true)
			if players == nil then return end

			for _, v in pairs(players) do
				lualib:SysMsg_SendMsgDlg(v, 1000, "封魔阵已挑战完成，你要离开吗？#BUTTON0#我要离开#BUTTONEND##BUTTON1#稍后提醒#BUTTONEND#", 30, "on_callback", "")
			end
		end
		]]

		if surplus == 0 then
			lualib:SysMsg_SendMapMsg(map, "封魔阵已挑战完成，地图在90秒后关闭，请尽快拾取掉落物品！")
			lualib:AddTimer(map, 10000, 90000, 1, "on_timer_destroy")
		end

        if count <= 0 then return end
        if count > 2 then count = 2 end
        local x = lualib:Monster_GetPosX(actor)
        local y = lualib:Monster_GetPosY(actor)
        CMap:GenMonsterXY(map, x, y, count)
    end
end

--[[
function on_callback(dlg_id, player, button_id, param)
	if dlg_id ~= 1000 then return end
	if button_id == 0 then
		lualib:Player_MapMoveXY(player, "龙城", 234, 224, 1)
	else
		lualib:AddTimer(player, 100234, 15000, 1, "on_timer_dlg")
	end
end

function on_timer_dlg(player, timer_id)
	lualib:SysMsg_SendMsgDlg(player, 1000, "封魔阵已挑战完成，你要离开吗？#BUTTON0#我要离开#BUTTONEND##BUTTON1#稍后提醒#BUTTONEND#", 30, "on_callback", "")
end
]]

function on_timer_destroy(map, timer_id)
	lualib:Map_DestroyDgn(map)
end

function on_timer_close(map, timer_id)
    lualib:SysMsg_SendMapMsg(map, "封魔阵还有"..timer_id.."分钟关闭了，请勇士们加油！")
end

CMap =
{
    on_create_info = "封魔阵副本创建回调！",
    monster = {"邪魔人偶1", "邪魔人偶2", "邪魔人偶3"},
    monster_count = 1,
    max_monster = 32,
    monster_var = "monster_count",
	level_type = "level_type"
}

function CMap:OnCreate()
    lualib:Debug(self.on_create_info)
end

function CMap:SetLevelType(map, born_level)
	lualib:Map_SetCustomVarInt(map, self.level_type, born_level)
end

function CMap:GetLevelType(map)
	return lualib:Map_GetCustomVarInt(map, self.level_type)
end

function CMap:GenMonster(map)
	local born_level = self:GetLevelType(map)
    if not lualib:Map_BatchGenMonster(map, self.monster[born_level], self.monster_count, false) then
        lualib:Error("生成怪物"..self.monster[born_level].."失败！")
		return
    end
    return lualib:Debug("生成怪物"..self.monster[born_level].."成功！")
end

function CMap:GenMonsterXY(map, x, y, count)
	local born_level = self:GetLevelType(map)
    if not lualib:Map_GenMonster(map, x, y, 5, lualib:GenRandom(0, 7), self.monster[born_level], count, false) then
        lualib:Error("怪物"..self.monster[born_level].."裂变失败！")
		return
    end
    lualib:Map_SetCustomVarInt(map, self.monster_var, lualib:Map_GetCustomVarInt(map, self.monster_var) + count)
    lualib:Debug("怪物"..self.monster[born_level].."裂变成功！")
end

function CMap:GetCurMonsterCount(map)
    return lualib:Map_GetCustomVarInt(map, self.monster_var)
end

function CMap:GetMonsterCount(map)
	local born_level = self:GetLevelType(map)
    return lualib:Map_GetMonsterCount(map, self.monster[born_level], true, true)
end
