local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, vipLevel)
	--清理pk值次数初始化
	if lualib:GetAllDays(0) - lualib:GetInt(player,"vip2_jianpkshijian") >= 1 then --记录开启计时的当前天数
		lualib:SetInt(player,"vip2_jianpkshijian",lualib:GetAllDays(0)) --记录开启计时的当前天数
		lualib:SetInt(player,"vip2_jianpk",3) --清理pk值次数初始化
	end
	
	local pk_value = lualib:Player_GetIntProp(player, lua_role_pk)
	local msg = "每日您可以在我这里清除3次pk值，每次可以清除100点。当前您的pk值为：#COLORCOLOR_GREENG#"..pk_value.."#COLOREND#\n"
	msg = msg .. "\n \n<@qingchupk1 *01*清除100点pk值> 今日还可以使用#COLORCOLOR_ORANGE#"..lualib:GetInt(player,"vip2_jianpk").."#COLOREND#次\n"
	msg = msg .. "<@guanbi *01*关闭>\n"
	lualib:NPCTalk(player,msg)
end

function qingchupk1(player)
	local pk_value = lualib:Player_GetIntProp(player, lua_role_pk)
	
	if lualib:GetInt(player,"vip2_jianpk") > 0 then
	else
		return "今日您已不可再使用清除pk值功能，请明日再来！\n \n<@guanbi *01*关闭>"
	end
	
	if pk_value > 0 then
		if pk_value > 100 then
			pk_value = 100
		end
		lualib:SetInt(player,"vip2_jianpk",lualib:GetInt(player,"vip2_jianpk")-1)
		lualib:Player_SetIntProp(player, lua_role_pk, lua_role_attr_sub, pk_value)
		pk_value = lualib:Player_GetIntProp(player, lua_role_pk)
		return "pk值清除成功！当前您的pk值为：#COLORCOLOR_GREENG#"..pk_value.."#COLOREND#\n<@qingchupk1 *01*继续清除100点pk值> 今日还可以使用#COLORCOLOR_ORANGE#"..lualib:GetInt(player,"vip2_jianpk").."#COLOREND#次\n<@guanbi *01*关闭>"
	else
		return "您现在的pk值已经是0，不用进行清除。\n \n<@guanbi *01*关闭>"
	end
end

function guanbi()
	return ""
end