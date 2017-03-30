local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")

function main(player, vipLevel)
	local vip3_pk_value = lualib:Player_GetIntProp(player, lua_role_pk)
	local vip3_day_jintian = lualib:GetAllDays(0)
	if vip3_pk_value < 201 then
		lualib:NPCTalk(player, "�㻹û�к�������������ʹ�ô˹��ܣ�����")
		return ""
	end
	
	local vip3_xihong = lualib:Player_GetCustomVarInt(player, "vip3_xihong"..vip3_day_jintian)
	local vip3_xihong_shengyu = 0
	if vip3_xihong >= 10 then
		lualib:NPCTalk(player, "��Ǹ����Աÿ�����ϴ��Ϊ10�Σ��������Ѿ����ܼ������ϴ�����ˣ�����")
	else
	vip3_xihong = vip3_xihong + 1
	vip3_xihong_shengyu = 10 - vip3_xihong
	lualib:Player_SetCustomVarInt(player, "vip3_xihong"..vip3_day_jintian, vip3_xihong)
	lualib:Player_SetIntProp(player, lua_role_pk, lua_role_attr_sub, vip3_pk_value)
	lualib:NPCTalk(player, "��ϲ��������PKֵ�Ѿ����㣡������ǰΪ������"..vip3_xihong.."�Ρ����ϴ�죡����ʣ�����Ϊ��"..vip3_xihong_shengyu.."��������")
	return ""
	end
	return ""
end