
    
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local award_table =
			{
				["������װ��7��"] =
				{
					{
						{"������Ԫ���С�7��", "�����·�(��)��7��"},
						{"������Ԫ���ȡ�7��", "�����·�(��)��7��"},
						{"������Ԫ������7��", "�����·�(��)��7��"}
					},
					{
						{"������Ԫ���С�7��", "�����·�(Ů)��7��"},
						{"������Ԫ���ȡ�7��", "�����·�(Ů)��7��"},
						{"������Ԫ������7��", "�����·�(Ů)��7��"}
					}
				},
				["������װ��7��"] =
				{
					{
						{"��������С�7��", "����·�(��)��7��"},
						{"��������ȡ�7��", "����·�(��)��7��"},
						{"�����������7��", "����·�(��)��7��"}
					},
					{
						{"��������С�7��", "����·�(Ů)��7��"},
						{"��������ȡ�7��", "����·�(Ů)��7��"},
						{"�����������7��", "����·�(Ů)��7��"}
					}
				},
				["������װ"] =
				{
					{
						{"������Ԫ����", "������Ԫ����(��)"},
						{"������Ԫ����", "������Ԫ����(��)"},
						{"������Ԫ����", "������Ԫ����(��)"}
					},
					{
						{"������Ԫ����", "������Ԫ����(Ů)"},
						{"������Ԫ����", "������Ԫ����(Ů)"},
						{"������Ԫ����", "������Ԫ����(Ů)"}
					}
				},
				["������װ"] =
				{
					{
						{"���������", "���������(��)"},
						{"���������", "���������(��)"},
						{"���������", "���������(��)"}
					},
					{
						{"���������", "���������(Ů)"},
						{"���������", "���������(Ů)"},
						{"���������", "���������(Ů)"}
					}
				}
			}

local level_table =
			{
				["������װ��7��"] = 1,
				["������װ��7��"] = 1,
				["������װ"] = 1,
				["������װ"] = 1,
			}

function main(player, item)
	local keyname = lualib:Item_GetKeyName(player, item)
	if award_table[keyname] == nil or level_table[keyname] == nil then
		lualib:SysMsg_SendWarnMsg(player, "������ű������䣡")
		return false
	end

	if lualib:Player_GetIntProp(player,  lua_role_level) < level_table[keyname] then
		lualib:SysMsg_SendWarnMsg(player, "��ĵȼ��������޷��������")
		return false
	end

	local gender = lualib:Player_GetIntProp(player,  lua_role_gender)
	local job = lualib:Player_GetIntProp(player,  lua_role_job)
	if award_table[keyname][gender][job] == nil then
		lualib:SysMsg_SendWarnMsg(player, "��������Ʒְҵ�Ա𲻷���")
		return false
	end

	local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
	for k, v in pairs(award_table[keyname][gender][job]) do
		name_table[k] = v
		count_table[k] = 1
		bind_table[k] = 0
		opr_table[k] = 0
	end

	if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "��������������������", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."ʹ��ʧ�ܣ�������Ʒ�����ڻ򱳰�������")
        return false
    end

	return true
end

