local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")

local gongzi_item_tb = {"����ҩ��", "����ҩ��", "����ҩ��", "����ҩ��", "����ҩ��", "��ӡ������", "��Ԫ��", "С����"}

function main(player, vipLevel)
	local msg = ""
	local vip7_gongzhi_day1 = lualib:GetAllDays(0)
	local vip7_gongzhi_day2 = lualib:Player_GetCustomVarInt(player, "vip7_gongzhi_day2")
	local a = 0
	if vip7_gongzhi_day1 == vip7_gongzhi_day2 then
		lualib:NPCTalk(player, "����Ĺ������Ѿ���ȡ���ˣ�")
		return ""
	end

	for p = 1, table.getn(gongzi_item_tb) do
		a = a + 1
	end
	if lualib:Player_GetBagFree(player) < a then
		msg = msg.."�����ո񲻹�����ȡ��ǰ������Ҫ"..a.."���ո�\n \n"
		lualib:NPCTalk(player, msg)
		return ""
	end
	for i = 1, table.getn(gongzi_item_tb) do
		if lualib:Player_GiveItemBind(player, gongzi_item_tb[i], 1, "����Ʒ����Ա���ʷ���", player) == false then
			lualib:NPCTalk(player, "������Ʒʧ�ܣ�")
			return ""
		end
	end
	lualib:Player_SetCustomVarInt(player, "vip7_gongzhi_day2", vip7_gongzhi_day1)
	lualib:NPCTalk(player, "������ȡ�ɹ���\n \n<@main *01*�����ء�>\n")
	return ""
end