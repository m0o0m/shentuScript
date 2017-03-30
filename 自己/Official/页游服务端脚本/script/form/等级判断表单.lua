local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

--�򿪳��ȼ��жϣ�61��
function OnOpenWing(player)
	local level = lualib:Level(player)
	if level < 61 then 
		lualib:ShowFormWithContent(player,"�ű���",[[AE_create_msg("�������",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		local a = lualib:GetInt(player, "FIRST_OPEN_WINGWINDOW")	
		if lualib:GetClientType(player) == 0 then
			lualib:ShowFormWithContent(player,"�ű���", "UI:Lua_OpenWindow(0,\"WingWnd.lua\");FIRST_OPEN_WINGWINDOW="..a)
		elseif lualib:GetClientType(player) == 1 then
			lualib:ShowFormWithContent(player,"�ű���","CL:OnOpenWing();FIRST_OPEN_WINGWINDOW="..a)
		end
		--lualib:SysPromptMsg(player, "OPEN WING WINDOW")
		--lualib:ShowFormWithContent(player, "�ű���", ""..a)
	end
	return ""
end

--����¯�ȼ��жϣ�62��
function OnOpenFurnace(player, index)
	local level = lualib:Level(player)
	if level < 62 then 
		lualib:ShowFormWithContent(player,"�ű���",[[AE_create_msg("������¯",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		if lualib:GetClientType(player) == 0 then
			lualib:ShowFormWithContent(player,"�ű���", "UI:Lua_OpenWindow(0,\"FurnaceWnd.lua\");")
		elseif lualib:GetClientType(player) == 1 then
			local str = [[CL:OnOpenFurnace();]]
			if index ~= nil and index ~= "" then 
				index = tonumber(index)
				str = str .. "FurnaceWnd.tabs = ".. index
			end
			lualib:ShowFormWithContent(player,"�ű���", str)
		end
	end
	return ""
end

--�򿪾����ȼ��жϣ�60��
function OnOpenForge(player)
	local level = lualib:Level(player)
	if level < 60 then 
		lualib:ShowFormWithContent(player,"�ű���",[[AE_create_msg("��������",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		if lualib:GetClientType(player) == 0 then
			lualib:ShowFormWithContent(player,"�ű���", "UI:Lua_OpenWindow(0,\"ForgeWnd.lua\");")
		elseif lualib:GetClientType(player) == 1 then
			lualib:ShowFormWithContent(player,"�ű���",[[CL:OnOpenForge();]])
		end
	end
	return ""
end

--�򿪱�ʯ�ȼ��жϣ�ת5
function OnOpenCrystal(player)
	--local reinLevel = lualib:GetInt(player, "reinLevel")
	--if reinLevel < 5 then 
	local level = lualib:Level(player)
	if level < 75 then
		lualib:ShowFormWithContent(player,"�ű���",[[AE_create_msg("������ʯ",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		lualib:ShowFormWithContent(player,"�ű���", "UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")")
	end
	return ""
end

--�򿪳ɾ͵ȼ��жϣ�50��
function OnAchieveWindow(player)
	local level = lualib:Level(player)
	if level < 50 then 
		lualib:ShowFormWithContent(player,"�ű���",[[AE_create_msg("�����ɾ�",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		lualib:ShowFormWithContent(player,"�ű���",[[CL:OnAchieveWindow();]])
	end
	return ""
end

--���л�ȼ��жϣ�70��
function OnFamilyWindow(player)
	local level = lualib:Level(player)
	if level < 70 then 
		lualib:ShowFormWithContent(player,"�ű���",[[AE_create_msg("�����л�",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		lualib:ShowFormWithContent(player,"�ű���",[[CL:OnFamilyWindow();]])
	end
	return ""
end

--�����а�ȼ��жϣ�60��
function OnOpenTop(player)
	local level = lualib:Level(player)
	if level < 60 then 
		lualib:ShowFormWithContent(player,"�ű���",[[AE_create_msg("�������а�",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		lualib:ShowFormWithContent(player,"�ű���",[[CL:OnOpenTop();]])
	end
	return ""
end

