local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")

function main(player, vipLevel)
	local vip3_pk_value = lualib:Player_GetIntProp(player, lua_role_pk)
	local vip3_day_jintian = lualib:GetAllDays(0)
	if vip3_pk_value < 201 then
		lualib:NPCTalk(player, "你还没有红名！！！不能使用此功能！！！")
		return ""
	end
	
	local vip3_xihong = lualib:Player_GetCustomVarInt(player, "vip3_xihong"..vip3_day_jintian)
	local vip3_xihong_shengyu = 0
	if vip3_xihong >= 10 then
		lualib:NPCTalk(player, "抱歉，会员每天免费洗红为10次，您今天已经不能继续免费洗红名了！！！")
	else
	vip3_xihong = vip3_xihong + 1
	vip3_xihong_shengyu = 10 - vip3_xihong
	lualib:Player_SetCustomVarInt(player, "vip3_xihong"..vip3_day_jintian, vip3_xihong)
	lualib:Player_SetIntProp(player, lua_role_pk, lua_role_attr_sub, vip3_pk_value)
	lualib:NPCTalk(player, "恭喜您，您的PK值已经清零！！！当前为您【第"..vip3_xihong.."次】免费洗红！！！剩余次数为【"..vip3_xihong_shengyu.."】！！！")
	return ""
	end
	return ""
end