local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
	msg = "���������Ҫ����100Ԫ������������1000��Ԫ����\n"
	msg = msg.."<@test#"..item.." *01*�������>\n"
	lualib:NPCTalk(player, msg)
	return false
end

function test(player, item)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 40 then
		return "���ĵȼ����㣬�޷�����!"
	end

	if not lualib:Player_IsIngotEnough(player, 100, false) then
		return "���Ԫ������100,�޷�������"
	end
	if lualib:Player_GetBagFree(player) < 1 then
		return "�������ˣ�"
	end

	if not lualib:Player_SubIngot(player, 100, false, "��Ԫ�������˿����40��", "���˿����") then
		return "��Ԫ�����������"
	end

	if not lualib:Player_GiveItemUnbind(player, "1000��Ԫ��", 1, "����Ʒ�����˿����40��", "1000��Ԫ��") then
		return "����Ԫ������ʧ�ܣ�"
	end
	if not lualib:Item_Destroy(player, item, "ɾ��Ʒ��****", "���˿����(40��)") then
		return "�۳�����ʧ��"
	end
	return ""
end
