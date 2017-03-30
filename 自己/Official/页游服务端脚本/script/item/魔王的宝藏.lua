local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
    local items = {
                {"����ս��(��)", "����ս��(Ů)", "ʥ�鷨��(��)", "ʥ�鷨��(Ů)", "̫������(��)", "̫������(Ů)", "����ͷ��", "��������", "���׻���(��)", "���׻���(ʥ)", "���׽�ָ(��)", "���׽�ָ(ʥ)", "����սѥ", "����ͷ��", "��������", "���黤��(��)", "���黤��(ʥ)", "�����ָ(��)", "�����ָ(ʥ)", "����ħѥ", "����ͷ��", "��������", "���ﻤ��(��)", "���ﻤ��(ʥ)", "�����ָ(��)", "�����ָ(ʥ)", "�����ѥ"}, 
                {"�Ͽ�", "���", "�ɿ�"},  
                {"����֮��", "����ս��", "ħ�Ż���", "����ս��", "����֮׹", "�������", "���׻���", "��ڤħ��", "�켫����", "�޻�ͷ��", "��������", "������ָ"}, 
                {"��ٻ���", "ĩ�ս�ָ", "Ѫҹ����", "ĩ������", "ĩ�ջ���", "Ѫҹ����", "Ѫҹħָ", "��ٵ�ָ", "�������", "ĩ��սѥ", "ĩ��ͷ��", "Ѫҹħѥ", "Ѫҹħ��", "��ٵ�ѥ", "��ٵ���", "ʥ��սѥ", "ʥ���ָ", "ʥ�令��", "ʥ��ͷ��", "��ڤħѥ", "��ڤ��ָ", "��ڤ����", "��ڤͷ��", "�ɳ���ѥ", "�ɳ���ָ", "�ɳ�����", "�ɳ�ͷ��"}, 
                {"Ǯ��(1��)", "Ǯ��(1��)", "Ǯ��(1��)", "Ǯ��(1��)", "Ǯ��(1��)", "Ǯ��(2��)", "Ǯ��(2��)", "Ǯ��(2��)", "Ǯ��(5��)", "Ǯ��(5��)", "Ǯ��(10��)", "Ǯ��(20��)", "����", "��Ԫ��"}, 
                {"ף����ˮ", "����", "����", "��Ԫ��", "�ѵ�ն��ҳ", "���׺䶥��ҳ", "����������ҳ", "̫����������ҳ", "ͨ��֮����ҳ", "��������ҳ"},
                {"��ʿͷ��", "��������", "��������", "��а����", "�ƽ�ͷ��", "��ħͷ��", "ħ�����", "��������", "��ħ����", "���ʯ����", "�ƻ���ָ", "����ָ", "��Ԫ��ָ", "����", "��Ԫ��"}
                  }

    local rates = {500,300,1200,1000,2000,2000,3000};

    local rnd = 0;
    local item_name = ""
	local max,qujian = 0,0
	for k = 1, table.getn(rates) do
		max = max + rates[k]
	end
	rnd = lualib:GenRandom(1, max)
	for k = 1, table.getn(rates) do
		qujian = qujian + rates[k]
		if rnd <= qujian then
			for i = 1, table.getn(items) do
				if i == k then
					local ce = lualib:GenRandom(1, #items[i])
					item_name = items[i][ce];
					if not lualib:Player_GiveItemUnbind(player, item_name, 1, "����Ʒ������ħ���ı���", "ħ���ı���") then
						lualib:Error("ħ���ı��ر���͵����")
						return false
					end
					lualib:SysMsg_SendCenterMsg(1, lualib:Player_GetStrProp(player, lua_role_user_name).."����������Ԩ����Ԩħ���ı��ػ����"..item_name.."��", "")
					return true
				end
			end
		end
	end


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

