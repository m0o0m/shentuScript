local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"û�и�BOSSԼ������ܱ���Ϊ��������ʿ��", "�˲��ð����˲��ã�����Ӣ�ۺ�����ģ��������������ʱ�����ϣ�", "�����Σ��Ŷ����Ը���ȥ������Ը���ȥ������Ը���ȥ�أ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 220000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#��ħ��#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."����#COLORCOLOR_SKYBLUE#��ħ��#COLOREND#����ѹ�Ų�����ħ�����������������꣡��ʿ��ֻҪ���ܽ�ȥ�����#COLORCOLOR_GREENG#���BOSS#COLOREND#�����Ի��������벻����#COLORCOLOR_GREENG#���ֱ���#COLOREND#��\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>#��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@jump *01*��������ս��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@info *01*������ܡ�>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@leave *01*���Ҳ���ȥ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#"

	return msg
end



function jump(npc,player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#��ħ��#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#����������#COLOREND#20��ǰ󶨽��\n"
        msg = msg.."#OFFSET<X:0,Y:3>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."����#COLORCOLOR_SKYBLUE#��ħ��#COLOREND#�ܴ򵽸���BOSS��ø��ֺ�װ����Ҳ�����ܷ���Ŷ����Ȼ��Ҫ�����ʵ���������ˣ�\n"
        msg = msg.."#OFFSET<X:0,Y:3>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:1>#          #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@MapMoveXYB#��ħ��#158#165#5 *01*������򱦡�>               #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

	return msg
end

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 200000
	--local EnterCount = 3
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ħ��������") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�\n \n \n \n \n \n \n                                             #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	--[[if not lualib:VerifyCampCount(player, 5) then
		return "������Ĵ����Ѿ��㹻" .. EnterCount .. "��"
	end
	]]
	lualib:JoinCamp(player, 5, 0)
	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
	return msg
end

function likai(npc,player)
	return ""
end

--[[function jump(npc, player)

    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_smgfb_dgn_guid")
    if dgn == "" then return "��ħ����δ���ţ�������ϵͳ���棡" end

--    local all_days = lualib:GetAllDays(0)
--    local days = lualib:Player_GetCustomVarInt(player, "smgwf_enter_days")
--    if all_days == days then
--        return "�������Ѿ��������ħ�����޷��ٽ����ˣ�"
--    elseif all_days < days then
--        return "ϵͳ����"
 --   end

    local require_level = 15
    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level < 15 then return "���ĵȼ����ͣ�" end

    local require_gold = 20000
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then return "���Ľ�Ҳ���"..require_gold.."��" end

    if not lualib:Player_SubGold(player, require_gold, false, "�۽�ң���ħ�����ͷ�", player) then
        return "�۳����ʧ�ܣ�"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then return "��������ɽ����ͼ��" end
--    lualib:Player_SetCustomVarInt(player, "smgwf_enter_days", lualib:GetAllDays(0))
    if lualib:Player_EnterDgn(player, "��ħ��", 0, 0, 0) == false then return "�����ͼʧ�ܣ�"end

    return ""
end
]]--

function leave(npc, player)
    return ""
end

function info(npc,player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#��ħ��#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#����������#COLOREND#20����      �������ʱ������\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>##COLORCOLOR_RED#�淨���ܣ�#COLOREND#���ڶ��BOSS������BOSS��ż������һֻ��������ˢ�£���BOSS�ͳ������ﶼ��Я���߼���������ö�����\n"
        msg = msg.."#OFFSET<X:0,Y:4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#������������������������������������������#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

	return msg
end
