local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

function Button_icon_show(player)
	local clientType = lualib:GetClientType(player) 
	local level = lualib:Level(player)
	if clientType == 0 then                        --΢����ʾ
		if 39 < level then
			AddSEIcon(player,1, -3, "��ѫ�ƺ�", 1800200003, "����ʱ", "Button_icon_clink1","","�������飬����������")
		end
		AddSEIcon(player,1, -4, "�ɾ�ѫ��", 1800200031, "����ʱ", "Button_icon_clink2","","�������飬����������")
	elseif clientType == 1 then
		if 39 < level then
			AddSEIcon(player,1, -3, "��ѫ�ƺ�", 1800200111, "����ʱ", "Button_icon_clink1","","�������飬����������")
		end
		AddSEIcon(player,1, -4, "�ɾ�ѫ��", 1800200115, "����ʱ", "Button_icon_clink2","","�������飬����������")
	end
	
	Button_add_magic1(player)
	Button_add_magic2(player,1)
	return ""
end


function Button_icon_clink1(player)
	lualib:ShowFormWithContent(player, "form�ļ���", "Achieve")
	return ""
end

function Button_icon_clink2(player)
	lualib:ShowFormWithContent(player, "�ű���", "TaskAchieve()")
	
	return ""
end

function Button_add_magic1(player)
	local achieve_tab = {					
					{{"һ����������",1,22,1,30000,100},   
					{"����ս������",4,48,2,210000,101},
					{"����ʥ������",7,70,3,550000,102},
					{"�Ľ���ŭս��",12,114,4,870000,103},
					{"��׺��ս��",20,178,5,950000,104},
					{"���װ�Х�ͽ�",32,247,6,1380000,105},
					{"�߽��ȷ��ͽ�",47,319,7,2590000,106},
					{"�˽׾�ƽ��",62,400,8,3450000,107},
					{"�Ž׿�ս��",80,490,9,4320000,108},
					{"սʥ���������",102,583,10,7120000,109}},
					{{"һ����ħ��ʦ",1,22,1,30000,110},   
					{"����ʥ�鷨ʦ",4,48,2,210000,111},
					{"���׻��취ʦ",7,70,3,550000,112},
					{"�Ľ�������",12,114,4,870000,113},
					{"��׷�Ԫ����",20,178,5,950000,114},
					{"���׷�˪����",32,247,6,1380000,115},
					{"�߽���ˮ����",47,319,7,2590000,116},
					{"�˽�ҵ����",62,400,8,3450000,117},
					{"�Ž���������",80,490,9,4320000,118},
					{"�����������",102,583,10,7120000,119}},
					{{"һ����緽ʿ",1,22,1,30000,120},   
					{"����̫����ʿ",4,48,2,210000,121},
					{"���׻�Ԫ��ʿ",7,70,3,550000,122},
					{"�Ľ�ʥ�ֵ���",12,114,4,870000,123},
					{"����������",20,178,5,950000,124},
					{"���׳�Ԫ����",32,247,6,1380000,125},
					{"�߽���Ԫ����",47,319,7,2590000,126},
					{"�˽׾�Ԫ��ʦ",62,400,8,3450000,127},
					{"�Ž���Ԫ��ʦ",80,490,9,4320000,128},
					{"���𡤹�ԪǬ��",102,583,10,7120000,129}}
					}
	
	local score = tonumber(lualib:GetInt(player,"ach_score"))
	local level = tonumber(lualib:GetInt(player,"ach_level"))
	local job = tonumber(lualib:Job(player))
	if level == #achieve_tab[job] then 
		--lualib:ShowFormWithContent(player, "�ű���", "msg_up(\"��ϲ������������\");Achieve.Closeed()")
		return ""
	end
	if score >= achieve_tab[job][level+1][5] then
		AddIconMagic(player, "��ѫ�ƺ�",3020300100,20,-16, 180)
	else
		DelIconMagic(player, "��ѫ�ƺ�")
	end
	return ""
end

function Button_add_magic2(player,vis)
	
	local xun_jifen = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000,0}
	local jifen = lualib:GetInt(player,"Ach_jifen")
	local level = lualib:GetInt(player,"Ach_xunz")
	if level == #xun_jifen - 1 then 
		--lualib:ShowFormWithContent(player, "�ű���", "msg_up(\"��ϲ������������\");Achieve.Closeed()")
		return ""
	end
	--lualib:SysPromptMsg(player,jifen..":123:"..xun_jifen[level+1])
	if jifen >= xun_jifen[level+1] then
		AddIconMagic(player, "�ɾ�ѫ��",3020300100,20,-16, 180)
	else
		DelIconMagic(player, "�ɾ�ѫ��")
	end
	return ""
end