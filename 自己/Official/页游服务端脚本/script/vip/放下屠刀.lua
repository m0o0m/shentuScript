local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, vipLevel)
	--����pkֵ������ʼ��
	if lualib:GetAllDays(0) - lualib:GetInt(player,"vip2_jianpkshijian") >= 1 then --��¼������ʱ�ĵ�ǰ����
		lualib:SetInt(player,"vip2_jianpkshijian",lualib:GetAllDays(0)) --��¼������ʱ�ĵ�ǰ����
		lualib:SetInt(player,"vip2_jianpk",3) --����pkֵ������ʼ��
	end
	
	local pk_value = lualib:Player_GetIntProp(player, lua_role_pk)
	local msg = "ÿ�������������������3��pkֵ��ÿ�ο������100�㡣��ǰ����pkֵΪ��#COLORCOLOR_GREENG#"..pk_value.."#COLOREND#\n"
	msg = msg .. "\n \n<@qingchupk1 *01*���100��pkֵ> ���ջ�����ʹ��#COLORCOLOR_ORANGE#"..lualib:GetInt(player,"vip2_jianpk").."#COLOREND#��\n"
	msg = msg .. "<@guanbi *01*�ر�>\n"
	lualib:NPCTalk(player,msg)
end

function qingchupk1(player)
	local pk_value = lualib:Player_GetIntProp(player, lua_role_pk)
	
	if lualib:GetInt(player,"vip2_jianpk") > 0 then
	else
		return "�������Ѳ�����ʹ�����pkֵ���ܣ�������������\n \n<@guanbi *01*�ر�>"
	end
	
	if pk_value > 0 then
		if pk_value > 100 then
			pk_value = 100
		end
		lualib:SetInt(player,"vip2_jianpk",lualib:GetInt(player,"vip2_jianpk")-1)
		lualib:Player_SetIntProp(player, lua_role_pk, lua_role_attr_sub, pk_value)
		pk_value = lualib:Player_GetIntProp(player, lua_role_pk)
		return "pkֵ����ɹ�����ǰ����pkֵΪ��#COLORCOLOR_GREENG#"..pk_value.."#COLOREND#\n<@qingchupk1 *01*�������100��pkֵ> ���ջ�����ʹ��#COLORCOLOR_ORANGE#"..lualib:GetInt(player,"vip2_jianpk").."#COLOREND#��\n<@guanbi *01*�ر�>"
	else
		return "�����ڵ�pkֵ�Ѿ���0�����ý��������\n \n<@guanbi *01*�ر�>"
	end
end

function guanbi()
	return ""
end