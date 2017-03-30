local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/攻略")

local level_yindao_table = {
	[16] = {
		{"试炼场"}, --可使用功能
		{}, --可使用活动
	},

	[20] = {
		{"悬赏任务","封魔阵"}, --可使用功能
		{"武斗场","夺宝英雄"}, --可使用活动
	}, 

	[30] = {
		{"镇魔殿"}, --可使用功能
		{}, --可使用活动
	}, 
	
	[35] = {
		{}, --可使用功能
		{"押镖","竞技场"}, --可使用活动
	}, 
	
	[40] = {
		{"挑战场","烈焰深渊"}, --可使用功能
		{}, --可使用活动
	}, 
}

function level_yindao(player,level)
	level = tonumber(level)
	local job = lualib:Job(player)
		
	if level_yindao_table[level] ~= nil then
	elseif zhuangbei_table[job][level] ~= nil and zhuangbei_table[job][level][1] ~= nil then
	else
		return
	end
	
	local s = ""

	--获取功能字符串
	for i=1,3 do
		if level_yindao_table[level] == nil or level_yindao_table[level][1][i] == nil then	
			s = s .. " level_yindao_gongneng_"..i.." = "..string.format("%q","")
		else
			s = s .. " level_yindao_gongneng_"..i.." = "..string.format("%q",level_yindao_table[level][1][i])
		end
	end

	--获取活动字符串
	for i=1,3 do
		if level_yindao_table[level] == nil or level_yindao_table[level][2][i] == nil then
			s = s .. " level_yindao_huodong_"..i.." = "..string.format("%q","")
		else
			s = s .. " level_yindao_huodong_"..i.." = "..string.format("%q",level_yindao_table[level][2][i])
		end
	end

	--获取装备字符串
	local s1 = ""
	if zhuangbei_table[job][level] == nil or zhuangbei_table[job][level][1] == nil then	
	else
		for i=1,5 do
			if zhuangbei_table[job][level][1][i] == nil then
			else
				s1 = s1 .. zhuangbei_table[job][level][1][i].."#"
			end
		end
	end
	
	if s == "" and s1 == "" then
		return
	end
	
	s = s .. " level_yindao_zhuangbei = "..string.format("%q",s1)
	s = s .. " level = "..string.format("%q",level)
	lualib:ShowFormWithContent(player,"脚本表单",s)
	lualib:ShowFormWithContent(player,"form文件表单","升级引导")
	return ""
end