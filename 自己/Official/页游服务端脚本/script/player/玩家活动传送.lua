local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
--镇魔宝塔
function playerMoveMagic(player)
	local level = lualib:Level(player)
	if level >= 80 then
		local param = "镇魔宝塔"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end

--禁魔神殿
function playerMoveMagic1(player)
	local level = lualib:Level(player)
	if level >= 80 then
		local param = "禁魔神殿"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end

--膜拜城主
function playerMoveMagic2(player)
	local level = lualib:Level(player)
	if level >= 40 then
		local param = "膜拜城主"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end

--龙魂之刃
function playerMoveMagic3(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "龙魂之刃"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end

--元宝嘉年华
function playerMoveMagic4(player)
	local level = lualib:Level(player)
	if level >= 40 then
		local param = "元宝嘉年华"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end

--寻龙夺宝
function playerMoveMagic5(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "寻龙夺宝"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end

--夜袭巫山城
function playerMoveMagic6(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "群英争霸"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end

--谁与争锋
function playerMoveMagic7(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "谁与争锋"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end

--无尽深渊
function playerMoveMagic8(player)
	local level = lualib:Level(player)
	local vip_lv = lualib:GetVipLevel(player)
	if level > 79 or (vip_lv >0 and level > 49 ) then
		local param = "无尽深渊"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end



--攻城战
function playerMoveMagic9(player)
	local family = lualib:GetFamilyName(player);
	if family ~= "" then 
		local param = "攻城战"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end 
	return ""
end

--押镖玩法
function playerMoveMagic10(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "押镖玩法"
		lualib:ShowFormWithContent(player,"form文件表单","活动传送#"..serialize(param))
	end
	return ""
end