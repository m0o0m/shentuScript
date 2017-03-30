local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"�л�᳤���Է����л�ս������Ҫ�ַ�����С�", "�����л���Ҫһ���ŽǺͲ��ֽ�ҡ�", "�������������������߼����лᡣ"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 210000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
local msg = "    ��Ѫ���ֵܣ��̽��ٺ��ա��ֲֳ˵����ֵܣ��������Ҳ�ſ��ж������ܣ�Ц�������У�������ش�½��һ������ô�У�\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@InfoCreateFamily *01*[�����л�]>\n"
    msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@JoinFamily *01*[��������л�]>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@InfoFightGuild *01*[�����л�ս]>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700031>##OFFSET<X:1,Y:-1>#<@GuildAward *01*[��ȡ�л����]>\n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE<ID:1902700034>##OFFSET<X:-5,Y:-1>#<@likai *01*���رա�>\n"
    return msg
end

function InfoCreateFamily(npc, player)
    --msg = "�����л���Ҫ1000000��Һ�һ���Žǡ�\n \n \n \n \n \n \n"
    msg = "�����л���Ҫһ���Žǡ�\n \n \n \n \n \n \n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@CreateFamilyConfirm *01*[�ҷ������������������л�]>\n \n"
	msg = msg.."                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
    return msg
end

function CreateFamilyConfirm(npc, player)
    if lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "0" and lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "" then
        return "���Ѿ����л��ˡ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if lualib:Player_GetIntProp(player,  lua_role_level) < 1 then
        return "��ĵȼ�������\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return "��Ľ�Ҳ��㡣\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    --if lualib:Player_GetItemCount(player, "�Ž�") < 1 then
     --  return "������û�д����л�����Ҫ�ĵ��ߡ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    --end

    if lualib:SysMsg_SendInputDlg(player, 1, "�������л����ƣ�", 30, 12, "GetFamilyName", npc) == false then
        return "æ���أ�������������\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end
    return ""
end

function GetFamilyName(id, player, family_name, npc)
    if lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "0" and lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "" then
        return
    end

    if lualib:Player_GetIntProp(player,  lua_role_level) < 1 then
        return
    end

    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return
    end

    if lualib:Player_GetItemCount(player, "�Ž�") < 1 then
       return
    end
	
	if lualib:HasFamily(family_name) then
		local msg = "�л���" .. family_name .. "�Ѵ���\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return
	end

    if lualib:CreateFamily(player, family_name) ~= 0 then
        return
    end

	if not lualib:Player_SubGold(player, 1000000, false, "�۽�ң������лỨ��", "�л����Ա") then
		lualib:NPCTalkEx(npc, player, "�۳����ʧ��")
		return
	end
	
	
    lualib:Player_DestroyItem(player, "�Ž�", 1, "ɾ��Ʒ�������л�����", "�л����Ա")
end

function JoinFamily(npc, player)
--    if lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "" then
--        return "���Ѿ����л��ˡ�"
--    end

    if lualib:GetFamilyJoinList(player) ~= 0 then
        return "�����������л����ϣ���Ȼ�������ɡ�"
    end

    return ""
end

--�л�ս
function InfoFightGuild(npc, player)
    msg = "ֻ�л᳤����[�ַ���]����50���Ҳ��ܶ������лᷢ���л�ս������50W��ҵ�����£��������ý���������л�ս��\n \n \n \n \n \n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@FightGuildConfirm *01*�����л�ս���ӳ��л�սʱ��(�ӳ�3Сʱ)>\n \n \n"
	msg = msg.."                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
    return msg
end

function FightGuildConfirm(npc, player)
    lualib:ShowForm(player, "�л�ս�����")
    return ""
end

function GuildAward(npc, player)
	if not lualib:SysMsg_SendInputDlg(player, 1, "�����뼤���룺", 30, 19, "VerifyReg", npc) then
        return "�ȡ��ȣ����Ӳ���ʹ�ˣ���������......"
	end
	return ""
end

function VerifyReg(id, player, reg, npc)
	local record = "reg_guild.txt"

	if reg == "" then
		lualib:NPCTalkEx(npc, player, "����ļ����벻���ڣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
	end

	if not lualib:IO_CheckTextInFile(record, reg) then
		lualib:NPCTalkEx(npc, player, "����ļ����벻���ڣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
	end

	if not lualib:IO_TextFileDeleteLineStr(record, reg) then
		lualib:NPCTalkEx(npc, player, "У�鼤����ʧ�ܣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
	end

	if not lualib:IO_AppendFile(record, "#"..reg) then
		lualib:NPCTalkEx(npc, player, "У�鼤����ʧ�ܣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
	end

	if not lualib:Player_GiveItemUnbind(player, "�������", 1, "����Ʒ�������л����������", "�л����Ա") then
		lualib:NPCTalkEx(npc, player, "�����л����ʧ�ܣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
	end

	lualib:NPCTalkEx(npc, player, "��ȡ�л�����ɹ���\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
	return
end

function likai(npc, player)
    return""
end