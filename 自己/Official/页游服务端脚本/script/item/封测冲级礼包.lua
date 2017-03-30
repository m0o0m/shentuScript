local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local award_table =
			{
				["���弶���35��"] = {{"Ǯ��(10��)", 1}, {"������", 2}, {"��Ԫ��", 10}, {"ѭ��ħ��", 10}, {"����ӡ", 1}, {"���弶���40��", 1}},
                                                                                                       
				["���弶���40��"] = {{"Ǯ��(20��)", 1}, {"������", 5}, {"��Ԫ��", 20}, {"ѭ��ħ��", 20}, {"���弶���45��", 1}},
                                                                                                       
				["���弶���45��"] = {{"Ǯ��(50��)", 1}, {"������", 10}, {"��Ԫ��", 30}, {"ѭ��ħ��", 30}, {"���弶���50��", 1}},
                                                                                                      
				["���弶���50��"] = {{"����", 1}, {"������", 15}, {"��Ԫ��", 50}, {"ѭ��ħ��", 50}, },
			}


local level_table =
			{
				["���弶���35��"] = 35,
				["���弶���40��"] = 40,
				["���弶���45��"] = 45,
				["���弶���50��"] = 50,
			}

function main(player, item)
	local keyname = lualib:Item_GetKeyName(player, item)
	if award_table[keyname] == nil or level_table[keyname] == nil then
        print(award_table[keyname])
		lualib:SysMsg_SendWarnMsg(player, "������ű������䣡")
		return false
	end

	if lualib:Player_GetIntProp(player,  lua_role_level) < level_table[keyname] then
		lualib:SysMsg_SendWarnMsg(player, "��ĵȼ��������޷��������")
		return false
	end

	local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
	for k, v in pairs(award_table[keyname]) do
		name_table[k] = v[1]
		count_table[k] = v[2]
		bind_table[k] = 1
		opr_table[k] = 0
	end

	if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "��������������������", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."ʹ��ʧ�ܣ�������Ʒ�����ڻ򱳰�������")
        return false
    end

	return true
end

