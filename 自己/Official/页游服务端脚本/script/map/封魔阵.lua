local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
    CMap:OnCreate()

	local npc = lualib:Map_GenNpc(map, "��ħ����·�˳���", 33, 47, 0, 3)
	if "" == npc then
		lualib:Error("��ħ�󸱱�ˢ�³���NPCʧ�ܣ�")
		return
	end
	lualib:Debug("��ħ�󸱱�ˢ�³���NPC�ɹ���")

    lualib:AddTrigger(map,  lua_trigger_post_die, "on_trigger_post_die")
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")

    local close_timer = {{3, 1620000}, {2, 1680000}, {1, 1740000}}
    for i = 1, #close_timer do
        if not lualib:AddTimer(map, close_timer[i][1], close_timer[i][2], 1, "on_timer_close") then
            lualib:Error("��ӹرն�ʱ��ʧ�ܣ�")
        else
            lualib:Debug("��ӹرն�ʱ���ɹ���")
        end
    end
end


function on_trigger_enter_map(player)
	local max_count = 3
	local cur_count = lualib:CampCount(player, 1)
	lualib:SysMsg_SendTriggerMsg(player,
			string.format("���ѽ����ħ�󣨸���������ǰ���������%d��ÿ�������������%d�����Ƚ����賿00:00:00���á�",
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
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.��ħ���ڻ�������ϣ�������������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.�������ڲֿ����Ա�������͵��ߺϳɴ��ϳ�!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.���ڽ���Ʈ������Խ��Խţ�棡#COLOREND#"
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
		lualib:SysMsg_SendMapMsg(map, string.format("��ħ��ʣ���������%d����", surplus))

		--[[
		if (surplus == 0) then
			local map_width = lualib:Map_GetWidth(map)
			local map_height = lualib:Map_GetHeight(map)
			if map_width < map_height then map_width = map_height end
			local players = lualib:Map_GetRegionPlayers(map, 0, 0, map_width, true)
			if players == nil then return end

			for _, v in pairs(players) do
				lualib:SysMsg_SendMsgDlg(v, 1000, "��ħ������ս��ɣ���Ҫ�뿪��#BUTTON0#��Ҫ�뿪#BUTTONEND##BUTTON1#�Ժ�����#BUTTONEND#", 30, "on_callback", "")
			end
		end
		]]

		if surplus == 0 then
			lualib:SysMsg_SendMapMsg(map, "��ħ������ս��ɣ���ͼ��90���رգ��뾡��ʰȡ������Ʒ��")
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
		lualib:Player_MapMoveXY(player, "����", 234, 224, 1)
	else
		lualib:AddTimer(player, 100234, 15000, 1, "on_timer_dlg")
	end
end

function on_timer_dlg(player, timer_id)
	lualib:SysMsg_SendMsgDlg(player, 1000, "��ħ������ս��ɣ���Ҫ�뿪��#BUTTON0#��Ҫ�뿪#BUTTONEND##BUTTON1#�Ժ�����#BUTTONEND#", 30, "on_callback", "")
end
]]

function on_timer_destroy(map, timer_id)
	lualib:Map_DestroyDgn(map)
end

function on_timer_close(map, timer_id)
    lualib:SysMsg_SendMapMsg(map, "��ħ����"..timer_id.."���ӹر��ˣ�����ʿ�Ǽ��ͣ�")
end

CMap =
{
    on_create_info = "��ħ�󸱱������ص���",
    monster = {"аħ��ż1", "аħ��ż2", "аħ��ż3"},
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
        lualib:Error("���ɹ���"..self.monster[born_level].."ʧ�ܣ�")
		return
    end
    return lualib:Debug("���ɹ���"..self.monster[born_level].."�ɹ���")
end

function CMap:GenMonsterXY(map, x, y, count)
	local born_level = self:GetLevelType(map)
    if not lualib:Map_GenMonster(map, x, y, 5, lualib:GenRandom(0, 7), self.monster[born_level], count, false) then
        lualib:Error("����"..self.monster[born_level].."�ѱ�ʧ�ܣ�")
		return
    end
    lualib:Map_SetCustomVarInt(map, self.monster_var, lualib:Map_GetCustomVarInt(map, self.monster_var) + count)
    lualib:Debug("����"..self.monster[born_level].."�ѱ�ɹ���")
end

function CMap:GetCurMonsterCount(map)
    return lualib:Map_GetCustomVarInt(map, self.monster_var)
end

function CMap:GetMonsterCount(map)
	local born_level = self:GetLevelType(map)
    return lualib:Map_GetMonsterCount(map, self.monster[born_level], true, true)
end
