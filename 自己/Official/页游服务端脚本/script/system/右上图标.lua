local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

function Button_icon_show(player)
	local clientType = lualib:GetClientType(player) 
	local level = lualib:Level(player)
	if clientType == 0 then                        --微端显示
		if 39 < level then
			AddSEIcon(player,1, -3, "功勋称号", 1800200003, "倒计时", "Button_icon_clink1","","海量经验，快速升级！")
		end
		AddSEIcon(player,1, -4, "成就勋章", 1800200031, "倒计时", "Button_icon_clink2","","海量经验，快速升级！")
	elseif clientType == 1 then
		if 39 < level then
			AddSEIcon(player,1, -3, "功勋称号", 1800200111, "倒计时", "Button_icon_clink1","","海量经验，快速升级！")
		end
		AddSEIcon(player,1, -4, "成就勋章", 1800200115, "倒计时", "Button_icon_clink2","","海量经验，快速升级！")
	end
	
	Button_add_magic1(player)
	Button_add_magic2(player,1)
	return ""
end


function Button_icon_clink1(player)
	lualib:ShowFormWithContent(player, "form文件表单", "Achieve")
	return ""
end

function Button_icon_clink2(player)
	lualib:ShowFormWithContent(player, "脚本表单", "TaskAchieve()")
	
	return ""
end

function Button_add_magic1(player)
	local achieve_tab = {					
					{{"一阶屠龙侍卫",1,22,1,30000,100},   
					{"二阶战魂侍卫",4,48,2,210000,101},
					{"三阶圣武侍卫",7,70,3,550000,102},
					{"四阶神怒战将",12,114,4,870000,103},
					{"五阶洪荒战将",20,178,5,950000,104},
					{"六阶傲啸猛将",32,247,6,1380000,105},
					{"七阶先锋猛将",47,319,7,2590000,106},
					{"八阶军平神将",62,400,8,3450000,107},
					{"九阶狂战神将",80,490,9,4320000,108},
					{"战圣·凌天霸王",102,583,10,7120000,109}},
					{{"一阶入魔法师",1,22,1,30000,110},   
					{"二阶圣灵法师",4,48,2,210000,111},
					{"三阶混天法师",7,70,3,550000,112},
					{"四阶神祈法灵",12,114,4,870000,113},
					{"五阶焚元法灵",20,178,5,950000,114},
					{"六阶风霜法魂",32,247,6,1380000,115},
					{"七阶玄水法魂",47,319,7,2590000,116},
					{"八阶业火法王",62,400,8,3450000,117},
					{"九阶雷霆法王",80,490,9,4320000,118},
					{"法神·天霸五行",102,583,10,7120000,119}},
					{{"一阶灵风方士",1,22,1,30000,120},   
					{"二阶太玄方士",4,48,2,210000,121},
					{"三阶混元方士",7,70,3,550000,122},
					{"四阶圣弥道长",12,114,4,870000,123},
					{"五阶玄清道长",20,178,5,950000,124},
					{"六阶辰元真人",32,247,6,1380000,125},
					{"七阶灵元真人",47,319,7,2590000,126},
					{"八阶聚元天师",62,400,8,3450000,127},
					{"九阶玄元天师",80,490,9,4320000,128},
					{"道尊·归元乾坤",102,583,10,7120000,129}}
					}
	
	local score = tonumber(lualib:GetInt(player,"ach_score"))
	local level = tonumber(lualib:GetInt(player,"ach_level"))
	local job = tonumber(lualib:Job(player))
	if level == #achieve_tab[job] then 
		--lualib:ShowFormWithContent(player, "脚本表单", "msg_up(\"恭喜您已升到顶级\");Achieve.Closeed()")
		return ""
	end
	if score >= achieve_tab[job][level+1][5] then
		AddIconMagic(player, "功勋称号",3020300100,20,-16, 180)
	else
		DelIconMagic(player, "功勋称号")
	end
	return ""
end

function Button_add_magic2(player,vis)
	
	local xun_jifen = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000,0}
	local jifen = lualib:GetInt(player,"Ach_jifen")
	local level = lualib:GetInt(player,"Ach_xunz")
	if level == #xun_jifen - 1 then 
		--lualib:ShowFormWithContent(player, "脚本表单", "msg_up(\"恭喜您已升到顶级\");Achieve.Closeed()")
		return ""
	end
	--lualib:SysPromptMsg(player,jifen..":123:"..xun_jifen[level+1])
	if jifen >= xun_jifen[level+1] then
		AddIconMagic(player, "成就勋章",3020300100,20,-16, 180)
	else
		DelIconMagic(player, "成就勋章")
	end
	return ""
end