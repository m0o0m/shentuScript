local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

local BayeEquip = {"霸业神剑", "12级物攻宝石", "12级魔攻宝石", {"霸业神甲男", "霸业神甲女"}, "12级道攻宝石", "12级生命宝石"}
local ZhiZunEquip = {"至尊傲天战刃", "天狂玄傲法杖", "傲天元法道剑", {"至尊傲天战甲", "至尊傲天战袍"}, {"天狂玄傲法袍", "天狂玄傲羽衣"}, {"傲天元法道袍", "傲天元法道衣"}}

--——————————图标显示——————————
function openTreasureHouse_show(player)
	AddSEIcon(player, 2, -3, "探宝", 1800200079, "倒计时", "openTreasureHouse","","探宝得极品装备")
    --  AddIconMagic(player, "探宝",1094200000 , 0,62, 150)
	return ""
end

-------------------图标被点击-----------------------
function openTreasureHouse(player)
	-------------weiduan--------------
	if lualib:GetClientType(player) == 0 then
		local score = lualib:GetInt(player, "tanbao_score")
		local newDisplay = playDisplayFive(player)
		local treasureTxt = lualib:GetDBStr("treasureMsgDataBase")
		local strDataBase = {}
		if treasureTxt ~= "" then
			strDataBase = json.decode(treasureTxt)
		end
		lualib:ShowFormWithContent(player, "form文件表单", "TreasureWnd#".. serialize(ZhiZunEquip) .. "#" .. serialize(BayeEquip) .. "#" .. score .. "#" .. serialize(newDisplay) .. "#" .. serialize(strDataBase))
		return ""
	end
	---------------------------------
	--lualib:SetDBNum("ActivityUnderway",0)
	--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
	--lualib:SysPromptMsg(player, ""..ActivityVar)
	lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenTreasure()")
    return ""
end