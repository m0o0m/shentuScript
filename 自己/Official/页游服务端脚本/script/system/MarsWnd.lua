local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
--��������������������ͼ����ʾ��������������������
function openMarsPage_show(player)
	------*****************ҳ�Ρ�΢����Դͬ����ɾ��*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		else
			AddSEIcon(player, 2, -4, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	if lualib:GetInt(player,"tanbao_score") > 0 then
		AddSEIcon(player, 2, -5, "ս��", 1800200083, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
	else
		AddSEIcon(player, 2, -4, "ս��", 1800200083, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
	end

	return ""
end

function AddMarsIcon(player)
	------*****************ҳ�Ρ�΢����Դͬ����ɾ��*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		else
			AddSEIcon(player, 2, -4, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	
	local tanbaoScore = lualib:GetInt(player,"tanbao_score")
	if tanbaoScore > 0 then
		AddSEIcon(player, 2, -5, "ս��", 1800200083, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
	else
		AddSEIcon(player, 2, -4, "ս��", 1800200083, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
	end
	FirstCall(player)
	return ""
end

