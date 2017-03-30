local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/����")

local level_yindao_table = {
	[16] = {
		{"������"}, --��ʹ�ù���
		{}, --��ʹ�û
	},

	[20] = {
		{"��������","��ħ��"}, --��ʹ�ù���
		{"�䶷��","�ᱦӢ��"}, --��ʹ�û
	}, 

	[30] = {
		{"��ħ��"}, --��ʹ�ù���
		{}, --��ʹ�û
	}, 
	
	[35] = {
		{}, --��ʹ�ù���
		{"Ѻ��","������"}, --��ʹ�û
	}, 
	
	[40] = {
		{"��ս��","������Ԩ"}, --��ʹ�ù���
		{}, --��ʹ�û
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

	--��ȡ�����ַ���
	for i=1,3 do
		if level_yindao_table[level] == nil or level_yindao_table[level][1][i] == nil then	
			s = s .. " level_yindao_gongneng_"..i.." = "..string.format("%q","")
		else
			s = s .. " level_yindao_gongneng_"..i.." = "..string.format("%q",level_yindao_table[level][1][i])
		end
	end

	--��ȡ��ַ���
	for i=1,3 do
		if level_yindao_table[level] == nil or level_yindao_table[level][2][i] == nil then
			s = s .. " level_yindao_huodong_"..i.." = "..string.format("%q","")
		else
			s = s .. " level_yindao_huodong_"..i.." = "..string.format("%q",level_yindao_table[level][2][i])
		end
	end

	--��ȡװ���ַ���
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
	lualib:ShowFormWithContent(player,"�ű���",s)
	lualib:ShowFormWithContent(player,"form�ļ���","��������")
	return ""
end