local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

--打开翅膀等级判断，61级
function OnOpenWing(player)
	local level = lualib:Level(player)
	if level < 61 then 
		lualib:ShowFormWithContent(player,"脚本表单",[[AE_create_msg("开启翅膀",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		local a = lualib:GetInt(player, "FIRST_OPEN_WINGWINDOW")	
		if lualib:GetClientType(player) == 0 then
			lualib:ShowFormWithContent(player,"脚本表单", "UI:Lua_OpenWindow(0,\"WingWnd.lua\");FIRST_OPEN_WINGWINDOW="..a)
		elseif lualib:GetClientType(player) == 1 then
			lualib:ShowFormWithContent(player,"脚本表单","CL:OnOpenWing();FIRST_OPEN_WINGWINDOW="..a)
		end
		--lualib:SysPromptMsg(player, "OPEN WING WINDOW")
		--lualib:ShowFormWithContent(player, "脚本表单", ""..a)
	end
	return ""
end

--打开神炉等级判断，62级
function OnOpenFurnace(player, index)
	local level = lualib:Level(player)
	if level < 62 then 
		lualib:ShowFormWithContent(player,"脚本表单",[[AE_create_msg("开启神炉",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		if lualib:GetClientType(player) == 0 then
			lualib:ShowFormWithContent(player,"脚本表单", "UI:Lua_OpenWindow(0,\"FurnaceWnd.lua\");")
		elseif lualib:GetClientType(player) == 1 then
			local str = [[CL:OnOpenFurnace();]]
			if index ~= nil and index ~= "" then 
				index = tonumber(index)
				str = str .. "FurnaceWnd.tabs = ".. index
			end
			lualib:ShowFormWithContent(player,"脚本表单", str)
		end
	end
	return ""
end

--打开精炼等级判断，60级
function OnOpenForge(player)
	local level = lualib:Level(player)
	if level < 60 then 
		lualib:ShowFormWithContent(player,"脚本表单",[[AE_create_msg("开启精炼",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		if lualib:GetClientType(player) == 0 then
			lualib:ShowFormWithContent(player,"脚本表单", "UI:Lua_OpenWindow(0,\"ForgeWnd.lua\");")
		elseif lualib:GetClientType(player) == 1 then
			lualib:ShowFormWithContent(player,"脚本表单",[[CL:OnOpenForge();]])
		end
	end
	return ""
end

--打开宝石等级判断，转5
function OnOpenCrystal(player)
	--local reinLevel = lualib:GetInt(player, "reinLevel")
	--if reinLevel < 5 then 
	local level = lualib:Level(player)
	if level < 75 then
		lualib:ShowFormWithContent(player,"脚本表单",[[AE_create_msg("开启宝石",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		lualib:ShowFormWithContent(player,"脚本表单", "UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")")
	end
	return ""
end

--打开成就等级判断，50级
function OnAchieveWindow(player)
	local level = lualib:Level(player)
	if level < 50 then 
		lualib:ShowFormWithContent(player,"脚本表单",[[AE_create_msg("开启成就",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		lualib:ShowFormWithContent(player,"脚本表单",[[CL:OnAchieveWindow();]])
	end
	return ""
end

--打开行会等级判断，70级
function OnFamilyWindow(player)
	local level = lualib:Level(player)
	if level < 70 then 
		lualib:ShowFormWithContent(player,"脚本表单",[[AE_create_msg("开启行会",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		lualib:ShowFormWithContent(player,"脚本表单",[[CL:OnFamilyWindow();]])
	end
	return ""
end

--打开排行榜等级判断，60级
function OnOpenTop(player)
	local level = lualib:Level(player)
	if level < 60 then 
		lualib:ShowFormWithContent(player,"脚本表单",[[AE_create_msg("开启排行榜",CL:MakeARGB(255, 255, 0, 0));]])
	else 
		lualib:ShowFormWithContent(player,"脚本表单",[[CL:OnOpenTop();]])
	end
	return ""
end

