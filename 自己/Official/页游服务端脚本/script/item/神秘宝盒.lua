local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


    local items = {
                    {"����", "����", "����"}, 
                    {"����(��)", "����(��)", "����(��)", "ʮɱ", "��Ԩ", "����"}, 
                    {"����(��)", "����(��)", "����(��)", "ʮɱ(��)", "��Ԩ(��)", "����(��)", "���ս��(��)", "���ս��(Ů)", "���޳���(��)", "���޳���(Ů)", "��������(��)", "��������(Ů)"}, 
                    {"ʮɱ(��)", "��Ԩ(��)", "����(��)"}
            }
    local rates = 
            {
                    4000, 3000, 2000, 1000
            }


function main(player, item)
	local BoxCanOpen = lualib:GetInt(item, "BoxCanOpen")
	if BoxCanOpen ~= 1 then 
		lualib:SysMsg_SendWarnMsg(player, "�����ڻ����������ӡ")
		return false
	end
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
					if not lualib:Player_GiveItemUnbind(player, item_name, 1, "����Ʒ���������ر���", "���ر���") then
						lualib:Error("���ر��и���Ʒʧ�ܣ�")
						return false
					end
					lualib:SysMsg_SendCenterMsg(1, lualib:Player_GetStrProp(player, lua_role_user_name).."�ڹ�Ĺ�п������ر��У������"..item_name.."��", "ϵͳ����")
					return true
				end
			end
		end
	end
end
