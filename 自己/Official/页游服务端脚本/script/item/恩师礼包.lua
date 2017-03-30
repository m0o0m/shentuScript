local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
    local item_table = {
                  "����(��)",
                  "����(��)",
                  "����(��)",
                  "��ս����",
                  "��ս��ָ",
                  "��սѥ��",
                  "�ۻ껤��",
                  "�ۻ��ָ",
                  "�ۻ�ѥ��",
                  "���⻤��",
                  "�����ָ",
                  "����ѥ��",
				  "��λʯ",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
				  "��λʯ",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
				  "��λʯ",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������",
                  "��λʯ",
                  "�������(50��)",
                  "�޸���ˮ",
                  "��Ԫ��",
                  "��ӡ������",
                  "������"
						}
	
	
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 35 then
	lualib:SysMsg_SendWarnMsg(player, "�ȼ����㣬�޷�ʹ��")
	return false
	end
	
    local bag_free = lualib:Player_GetBagFree(player)
    if bag_free < 1 then
        lualib:SysMsg_SendWarnMsg(player, "����������")
        return false
    end

    local index = lualib:GenRandom(1, table.getn(item_table))
    if not lualib:Player_GiveItemUnbind(player, item_table[index], 1, "����Ʒ����ʦ���", player) then
        lualib:SysMsg_SendWarnMsg(player, "������Ʒʧ�ܣ�")
        return false
    end

    return true
end
