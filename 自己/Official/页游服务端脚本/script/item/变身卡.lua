local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


function main(player, item)
	local buff_table = {"��é�˱���", "ľ���˱���", "��֩�����", "������", "���˱���", "����ս������", "��â����", "аħ��ż����", "��������", "������������", "����๤����", "����๤����", "������������", "��������", "������Գ����", "�޶����", "Ұ�Ǳ���", "���ޱ���", "����ţħ����", "ţħ��������", "���߱���", "��ˮ�߱���", "���Ǳ���", "��ū����", "ɢ������", "ɳʯħ����", "��ħ����", "ҹ��ɮ����", "�ڰ��̿ͱ���", "����ɮ����", "��ԭ��ʿ����", "Ѫ��ʦ����", "����������", "�ɵ����ñ���", "����ս������", "ʬū��ͷ����", "��ʬ����", "�ױ���ʬ����", "Ĺ���������", "��ڤʬ������", "¹����", "ǧ����ħ����", "��é���˱���", "��éа�˱���", "��֩�����", "����֩�����", "�ú����", "�ױ�Գ�����", "Գ�����", "�ɶ����", "�������", "���Ǳ���", "���߱���", "���߱���", "���߱���", "���߱���", "���Ա���", "�Źֵ��ͱ���", "���浶�ֱ���", "˫�������ֱ���", "ħ������", "���ޱ���", "��ɮ����", "�������߱���", "Ӱ�̱���", "����սʿ����", "�������ñ���", "�����ñ���", "��ө����", "ħө����", "а�����", "ʳ�˻�����", "��ԭ��ʿ����", "��ԭ��ʿ����", "����ţħ����", "ţħ��ʿ����", "ţħ��������", "��ʬ����", "ʬ������", "��ʬ����", "���ʬū����", "����ʬū����", "ʬū����", "���ñ�������", "��ĸ�����", "С�����", "�����", "ţ����", "������", "���������", "�綾�����", "ħ�߱���", "ħ�Ǳ���", "ħԳ����", "��ʯ���ܱ���", "ţħ��������", "ħ���������", "ħ��Ы�ӱ���", "ħ��ɳ�����", "��ħ��������", "��ս��ħ����", "��ħū�ͱ���", "ҹ�����", "��ħͳ�����", "��ħ��������", "��ħ��������", "��ħ�ȷ����", "��ħ�����", "������ֱ���", "ʯ�������", "�ؾ���������", "��ǯз����", "��ħ�̴ӱ���", "��ħ��������", "�ؾ���������", "���������", "�����ֱ���", "����ҩ��", "��Сҩ��"}
	local num = lualib:Item_GetAmount(player, item)
	local item_key = lualib:KeyName(item)
	local hashorse = lualib:Attr(player, 200)
	
	if hashorse == 1 then
		lualib:MsgBox(player, "�������ڳ���״̬���޷�������")
		return true
	end
	
	for i = 1, #buff_table do
		if lualib:HasBuff(player, buff_table[i]) == true then
			qingqiu(player, item_key, item, num)
			return false
		end
	end
	ok(player, item_key, item, num)
	return false
end

function qingqiu(player, item_key, item, num)
	local msg = "�������Ѿ��б���BUFF���Ƿ��滻����BUFF\n"
	msg = msg.."<@ok#"..item_key.."#"..item.."#"..num.." *01*ȷ��>\n"
	msg = msg.."<@likai *01*ȡ��>"
	lualib:NPCTalk(player, msg)
end

function ok(player, item_key, item, num)
	lualib:Item_SetAmount(player, item, num - 1)
	lualib:AddBuff(player, item_key, 0)
	lualib:SysMsg_SendTriggerMsg(player, "����ɹ�!!!")
	return ""
end

function likai(player)
	return ""
end

function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end