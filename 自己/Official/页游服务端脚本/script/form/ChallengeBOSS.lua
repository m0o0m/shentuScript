local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local cs_tab ={
		{"��Ľ�������"		, 	89 , 	146 },
		{"�����������"		,   89 , 	100 },
		{"���¶�ħ����"		,	89 , 	146 },
		{"ţħ������"		,   89 , 	100 },
		{"ħ����������"		, 	57 , 	89 },
		{"��������"		,   89 , 	100 }
        }

local personboss = {{{"��Ľ���","��60����",62},{"а��","��70����",63},{"������ħ","��80����",64},
			{"ţħ��","��100����",80},{"���Ľ���","��140����","ת��1��"},{"����","��180����","ת��2��"}},
			
			{{0,0682700300,"ս������","��������","ɢ������","ս��ͷ��","����ͷ��","ɢ��ͷ��","ս����ָ","�����ָ"},   --��һ�������Ѿ�����
			{0,0681600300,"�������","ħ������","��������","����ָ","ħ���ָ","�����ָ","���ѥ��","ħ��ѥ��"},
			{0,0682900300,"��������","��ħ����","��������","�����ָ","��ħ��ָ","�����ָ","��������","��ħ����"},
			{0,0682000300,"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��","ʥ��ѥ��","�����ָ","��ħ��ָ"},
			{0,0682400300,"��������","��������","��������","������������","�����������","���������","��������ѥ��","�������ѥ��"},
			{0,0682800300,"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ͷ��","�������ͷ��"}}}

--[[local bosslist =  {{0682100400,"��Ѫ���"     ,"��40����"  ,"15����"  ,"���涴����","BOSS����һ��"},
					{0681200400,"ʳ��ͳ��"   ,"��50����"  ,"15����"  ,"ʳ��ħ��Ѩ����","BOSS����һ��","��Ħ�����һ��"},
					{0682700400,"��Ľ���"   ,"��60����"  ,"15����","��������","��Ħ�����һ��"},
					{0681600400,"а��"   ,"��70����"  ,"30����","а������","BOSS����һ��","��Ħ�����һ��"},
					{0682200400,"������ħ"   ,"��80����"  ,"30����","���׽������","BOSS����һ��","��Ħ�����һ��"},
					{0682000400,"ţħ��"     ,"��100����" ,"60����","ţħ������","BOSS����һ��","��Ħ�����һ��"},
					{0635400400,"���޽���"   ,"��120����" ,"120����","��ɳ������","BOSS����һ��","��Ħ����ڶ���"},
					{0682500400,"Ѫɫǧ��ն" ,"��120����" ,"120����","��ħʯ������","BOSS����һ��"},
					{0682300400,"������ħ"   ,"��120����" ,"120����","��ħ��������","BOSS����һ��"},
					{0682400400,"���Ľ���"   ,"��140����" ,"150����","���ĳ�����"},
					{0636300400,"��β������" ,"��140����" ,"150����","ɳĮ�ع�����","��Ħ���������"},
					{0631900400,"��β������" ,"��140����" ,"150����","ɳĮ�ع�����","��Ħ���������"},
					{0631800400,"��β������" ,"��140����" ,"150����","ɳĮ�ع�����","��Ħ���������"},
					{0636100400,"����ڤ��"   ,"��140����" ,"150����","ѩ����������","BOSS��������"},
					{0646700400,"��Ѫ���"   ,"��160����" ,"180����","BOSS����һ��","��Ѫħ������"},
					{0632600400,"����"       ,"��180����" ,"180����","����������","BOSS��������"},
					{0636700400,"Ѫɲ����"   ,"��180����" ,"180����","��ڤ�������","BOSS����һ��","��Ħ���������"},
					{0636600400,"����ħ��"     ,"��180����" ,"180����","�����������","��Ħ���������"},
					{0645200400,"��˪��ڤ"   ,"��180����" ,"180����","�����ؾ�����","BOSS��������","��Ħ���������"},
					{0645100400,"��������"   ,"��180����" ,"180����","�����ؾ�����","BOSS��������"},
					{0645400400,"��������"     ,"��200����" ,"180����","�����ؾ�����","BOSS��������"},
					{0645600400,"���ҵ��"   ,"��200����" ,"240����","BOSS��������"},
					{0630600400,"���籩��"   ,"��200����" ,"240����","BOSS��������"},
					{0644200400,"���ڤ��"   ,"��200����" ,"360����","BOSS��������"}
} --]] 

--[[local bosslist =  {{"������"     ,"��40����"  ,"15����"  ,"���涴����","BOSS����һ��"},
					{"��ɫ����"   ,"��50����"  ,"15����"  ,"ʳ��ħ��Ѩ����","BOSS����һ��","��Ħ�����һ��"},
					{"�������"   ,"��60����"  ,"15����","��������","��Ħ�����һ��"},
					{"�������"   ,"��70����"  ,"30����","а������","BOSS����һ��","��Ħ�����һ��"},
					{"���¶�ħ"   ,"��80����"  ,"30����","���׽������","BOSS����һ��","��Ħ�����һ��"},
					{"ţħ��"     ,"��100����" ,"60����","ţħ������","BOSS����һ��","��Ħ�����һ��"},
					{"��Ȫ����"   ,"��120����" ,"120����","��ɳ������","BOSS����һ��","��Ħ����ڶ���"},
					{"ʬ��" ,"��120����" ,"120����","��ħʯ������","BOSS����һ��"},
					{"��ħ����"   ,"��120����" ,"120����","��ħ��������","BOSS����һ��"},
					{"ħ������"   ,"��140����" ,"150����","���ĳ�����"},
					{"��β�ں���" ,"��140����" ,"150����","ɳĮ�ع�����","��Ħ���������"},
					{"��צ�����" ,"��140����" ,"150����","ɳĮ�ع�����","��Ħ���������"},
					{"�����غ���" ,"��140����" ,"150����","ɳĮ�ع�����","��Ħ���������"},
					{"ѩ��ħ��"   ,"��140����" ,"150����","ѩ����������","BOSS��������"},
					{"��������"   ,"��160����" ,"180����","BOSS����һ��","��Ѫħ������"},
					{"����"       ,"��180����" ,"180����","����������","BOSS��������"},
					{"��������"   ,"��180����" ,"180����","��ڤ�������","BOSS����һ��","��Ħ���������"},
					{"������"     ,"��180����" ,"180����","�����������","��Ħ���������"},
					{"���ĺ���"   ,"��180����" ,"180����","�����ؾ�����","BOSS��������","��Ħ���������"},
					{"���ħ"   ,"��180����" ,"180����","�����ؾ�����","BOSS��������"},
					{"������"     ,"��200����" ,"180����","�����ؾ�����","BOSS��������"},
					{"������ħ"   ,"��200����" ,"240����","BOSS��������"},
					{"����ħ��"   ,"��200����" ,"240����","BOSS��������"},
					{"��Ѫħ��"   ,"��200����" ,"360����","BOSS��������"}
}--]]


----*****      �޸� bosslist ʱ  Ҫͬʱ�޸� item_tab  �����ȱ���һ��   *****--------
local bosslist =  {{0681500300,"������"      ,"��40����"  ,"15����"  ,"��򼶴����","BOSS����"},
					{0681200300,"��ɫ����"   ,"��50����"  ,"15����"  ,"������","BOSS����","�������һ��"},
					{0682700300,"�������"   ,"��60����"  ,"15����","�����������","�������һ��"},
					{0681600300,"�������"   ,"��70����"  ,"30����","�����������","BOSS����","�������һ��"},
					{0682900300,"���¶�ħ"   ,"��80����"  ,"30����","����������","BOSS����","�������һ��"},
					{0682000300,"ţħ��"     ,"��100����" ,"60����","ţħ������","BOSS����","�������һ��"},
					{0683500300,"��Ȫ����"   ,"��120����" ,"120����","��ħ������","BOSS����","����������"},
					{0684600300,"��ҹŮ��"   ,"��120����" ,"120����","����������"},
					{0682500300,"ʬ��"       ,"��120����" ,"120����","ʬħ������","BOSS����"},
					{0682300300,"��ħ����"   ,"��120����" ,"120����","��ħ������","BOSS����"},
					{0682400300,"ħ������"   ,"��140����" ,"150����","ħ��������"},
					{0683100300,"��β�ں���" ,"��140����" ,"150����","�����������","�����������"},
					{0631900300,"��צ�����" ,"��140����" ,"150����","�����������","�����������"},
					{0685300300,"�����غ���" ,"��140����" ,"150����","�����������","�����������"},
					{0683200300,"ѩ��ħ��"   ,"��140����" ,"150����","ѩ����������","BOSS��������", "�����������"},
					{0683400300,"��������"   ,"��160����" ,"180����","BOSS����","���׶�Ѩ����"},
					{0682800300,"����"       ,"��180����" ,"180����","�����������","BOSS��������"},
					{0683800300,"��������"   ,"��180����" ,"180����","���֮������","��������Ĳ�"},
					{0683000300,"������"     ,"��180����" ,"180����","����������","��������Ĳ�"},
					{0685100300,"��Ԩ����"   ,"��180����" ,"180����","����������"},
					{0681700300,"���ĺ���"   ,"��180����" ,"180����","������������","BOSS��������","��������Ĳ�"},
					{0683600300,"���ħ"   ,"��180����" ,"180����","������������","BOSS��������"},
					{0683300300,"������"     ,"��200����" ,"180����","������������","BOSS��������"},
					{0684700300,"������ħ"   ,"��200����" ,"240����","BOSS��������"},
					{0683700300,"����ħ��"   ,"��200����" ,"240����","BOSS��������"},
					{0684400300,"��Ѫħ��"   ,"��200����" ,"360����","BOSS��������"},
					}
	
local item_tab = {
		{"�������","��֮����","��������","���������","��ħ������","�������","����ͷ��","ħ��ͷ��"},--������
		{"ʥս����","��������","��������","ʥս��ָ","�����ָ","�����ָ","ʥսͷ��","����ͷ��"},--��ɫ����
		{"ս������","��������","ɢ������","ս��ͷ��","����ͷ��","ɢ��ͷ��","ս����ָ","�����ָ"},--�������
		{"�������","ħ������","��������","����ָ","ħ���ָ","�����ָ","���ѥ��","ħ��ѥ��"},--�������
		{"��������","��ħ����","��������","�����ָ","��ħ��ָ","�����ָ","��������","��ħ����"},--���¶�ħ
		{"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��","ʥ��ѥ��","�����ָ","��ħ��ָ"},--ţħ��
		{"��������","��������","��������","�����ָ","�����ָ","������ָ","��������","��������"},--��Ȫ����
		{"��������","��������","��������","�����ָ","�����ָ","������ָ","����ѥ��","����ѥ��"},--��ҹŮ��
		{"��������","��������","��������","�����ָ","�����ָ","������ָ","����ѥ��","����ѥ��"},--ʬ��
		{"��������","��������","��������","��������","��������","��������","����ѥ��","����ѥ��"},--��ħ����
		{"��������","��������","��������","������������","�����������","���������","��������ѥ��","�������ѥ��"},--ħ������
		{"������������","�����������","���������","���������ָ","��������ָ","�������ָ","������������","�����������"},--��β�ں���
		{"������������","�����������","���������","���������ָ","��������ָ","�������ָ","��������ͷ��","�������ͷ��"},--��צ�����
		{"������������","�����������","���������","���������ָ","��������ָ","�������ָ","��������ѥ��","�������ѥ��"},--�����غ���
		{"������������","�����������","���������","��������ѥ��","�������ѥ��","�����ѥ��","���������ָ","��������ָ"},--ѩ��ħ��
		{"������������","������������","����㷨����","��������ͷ��","��������ͷ��","����㷨ͷ��","������������","������������"},--��������
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ͷ��","�������ͷ��"},--����
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ѥ��","�������ѥ��"},--��������
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--������
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--��Ԩ����
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ѥ��","�������ѥ��"},--���ĺ���
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--���ħ
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--������
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ѥ��","�������ѥ��"},--����ħ��
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--����ħ��
		{"������������","�챩��������","�����������","���������ָ","��������ָ","����������ָ","������������","�����������"}--��Ѫħ��
		}
		
-----------------------ͼ����ʾ-----------------------------
function openChallengeBoss_show(player)
	
	
	if lualib:GetClientType(player) == 0 then
		AddSEIcon(player, 1, -1, "ChallengeBOSS", 1800200087, "����ʱ", "openChallenge","","ɱBOSS��װ��")
		return ""
	end 
	AddSEIcon(player, 1, -0.75, "ChallengeBOSS", 1800200087, "����ʱ", "openChallengeBoss","","ɱBOSS��װ��")
	
--[[	local level = lualib:Level(player)
	if numVisible(player) == 1 and level >= 80 then 
	--	DelIconMagic(player, "ChallengeBOSS")
		AddIconMagic(player, "ChallengeBOSS",3020300100,45,-16, 180)
	end--]]
	openChallengeBoss_magic(player)
	return ""
end

function openChallengeBoss_magic(player)
	
	local level = lualib:Level(player)
	if numVisible(player) == 1 and level >= 80 then 
	--	DelIconMagic(player, "ChallengeBOSS")
		AddIconMagic(player, "ChallengeBOSS",3020300100,45,-16, 180)
	end
	return ""
end
-------------------ͼ�걻���-----------------------

function openChallenge(player)
	lualib:ShowFormWithContent(player, "form�ļ���", "BossWnd")
	return ""
end

function openChallengeBoss(player,param)
	lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenBoss()")
	return ""
end

function GetInit(player) 
	local boss_tab= {}
	for i=1,#bosslist do 
		boss_tab[i] = {}
		for j=1,#bosslist[i] do 
			boss_tab[i][j] = bosslist[i][j]
			if j >= 5 then 
				boss_tab[i][j] = lualib:KeyName2Name(bosslist[i][j],5)
			end
		end
		boss_tab[i][2] = lualib:KeyName2Name(bosslist[i][2],2)
	end
	
	local timeList = {1,1,1,1,0,0,0,0,0,0,0,0}    -- ��һ��Ϊ��ʾ��־λ   2,3,4,����
	for i=5,#timeList do 
		timeList[i] =lualib:GetDayInt(player, "qianwang"..i) 
	end
	if lualib:HasQuest(player, 73) then
		timeList[1] = lualib:GetInt(player, "qianwang1")
	end
	
	lualib:ShowFormWithContent(player,"�ű���","BossWnd.Init("..serialize(timeList)..","..serialize(boss_tab)..","..serialize(personboss)..","..serialize(item_tab)..");")
	--lualib:ShowFormWithContent(player, "form�ļ���", "ChallengeBOSSUI#"..serialize(itemList).."#"..serialize(bosslist).."#"..serialize(timelist_1).."#"..serialize(imgboss).."#"..serialize(personboss).."#"..tips1)
    return ""
end


function numVisible(player)
--[[	local score_tab ={{16000,19000,27000,38000,50000,69000,88000,108000,138000,168000},
				{198000,240000,280000,330000,380000,440000,500000,560000,630000,700000},
				{780000,850000,950000,1020000,1100000,1200000,1350000,1500000,1700000,2000000},
				{2400000,2900000,3400000,4000000,4600000,5300000,6000000,6800000,7700000,9000000},
				{90000009000000}}--]]
				
	local score_tab ={  {43000 ,57000 ,100000,115000,246600,259600,381200,394200,604200,619200},
						{1000000,1050000,1570000,1680000,2350000,2450000,3250000,3400000,4320000,4560000},
						{5719800 ,5719800 ,6839800 ,6842800 ,7694800 ,7697800 ,8635800 ,8637800 ,9993800 ,9997800 },
						{11592250,11596250,14567250,14571250,17727250,17731250,19893250,20797250,22202250,28706250},
						{9000000900000000}}
				
	local boss_name = tonumber(lualib:GetInt(player,"boss_name"))
	local  boss_level =tonumber( lualib:GetInt(player,"boss_level"))
	local  boss_points = tonumber(lualib:GetInt(player,"boss_points"))
	local num = 0
	if boss_name == 0 then 
		boss_name = 1 
	end
	if boss_level == 0 then 
		boss_level = 1 
	end
	if boss_level == 10 then 
		boss_name = boss_name + 1 
		boss_level = 1 
	else
		boss_level = boss_level + 1 
	end
	if boss_points>=score_tab[boss_name][boss_level] then 
		num = 1
	end
	return num
end

function timeqianwang2(player,index)
	
	index = tonumber(index)
	local reinlevel = lualib:GetInt(player,"reinLevel")
	local num = lualib:ItemCount(player, "��������")
	local level = lualib:Level(player)
	if tonumber(index)>7 then                                           --��Ҫ���ĸ���
			if tonumber(index)==9 and reinlevel>=1 then
				if num >=(index-7) then  
					if lualib:DelItem(player, "��������", 2, 2, "����BOSS",  "����BOSS") then
						--person_cs(player,index)
						param = index
						if param == 5 then 
							lualib:SetInt(player, "qianwang1",1)
						end
						local int = lualib:GetDayInt(player, "qianwang"..param)
						if int == 1 then return "" end
						param=param-4
						local item_map_guid = lualib:MapGuid(player)
						local z_name = lualib:KeyName(item_map_guid) 
						if z_name == "��Ľ�������" then return "" end
						local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
						lualib:Player_SetDgnTicket(player, dgn_guid)
						lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
						lualib:ShowFormWithContent(player,"�ű���","BossWnd.Close()")
					end
				else
					lualib:ShowFormWithContent(player, "�ű���", "BossWnd.MsgPrompt(\"���ĸ������᲻�����޷����븱����\");")
				end
			elseif tonumber(index)==10 and reinlevel>=2 then
				if num >=(index-7) then 
					if lualib:DelItem(player, "��������", 3, 2, "����BOSS",  "����BOSS") then 
						param = index
						--person_cs(player,index)
						param = index
						if param == 5 then 
							lualib:SetInt(player, "qianwang1",1)
						end
						local int = lualib:GetDayInt(player, "qianwang"..param)
						if int == 1 then return "" end
						param=param-4
						local item_map_guid = lualib:MapGuid(player)
						local z_name = lualib:KeyName(item_map_guid) 
						if z_name == "��Ľ�������" then return "" end
						local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
						lualib:Player_SetDgnTicket(player, dgn_guid)
						lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
						lualib:ShowFormWithContent(player,"�ű���","BossWnd.Close()")
					end
					
				else
					lualib:ShowFormWithContent(player, "�ű���", "BossWnd.MsgPrompt(\"���ĸ������᲻�����޷����븱����\");")
				end
			elseif tonumber(index)==8 and  level>=80 then 
			
				if num >=(index-7) then 
					if lualib:DelItem(player, "��������", 1, 2, "����BOSS",  "����BOSS") then 
						param = index
						--person_cs(player,index)
						param = index
						if param == 5 then 
							lualib:SetInt(player, "qianwang1",1)
						end
						local int = lualib:GetDayInt(player, "qianwang"..param)
						if int == 1 then return "" end
						param=param-4
						local item_map_guid = lualib:MapGuid(player)
						local z_name = lualib:KeyName(item_map_guid) 
						if z_name == "��Ľ�������" then return "" end
						local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
						lualib:Player_SetDgnTicket(player, dgn_guid)
						lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
						lualib:ShowFormWithContent(player,"�ű���","BossWnd.Close()")
					end
				else
					lualib:ShowFormWithContent(player, "�ű���", "BossWnd.MsgPrompt(\"���ĸ������᲻�����޷����븱����\");")
				end
			else
				lualib:ShowFormWithContent(player, "�ű���", "BossWnd.MsgPrompt(\"���ĵȼ����㣬�޷����븱����\");")
			end	
	else
		if level >= personboss[1][index-4][3] then 
			param = index
			--person_cs(player,index)
			param = index
			if param == 5 then 
				lualib:SetInt(player, "qianwang1",1)
			end
			local int = lualib:GetDayInt(player, "qianwang"..param)
			if int == 1 then return "" end
			param=param-4
			local item_map_guid = lualib:MapGuid(player)
			local z_name = lualib:KeyName(item_map_guid) 
			if z_name == "��Ľ�������" then return "" end
			local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
			lualib:Player_SetDgnTicket(player, dgn_guid)
			lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
			lualib:ShowFormWithContent(player,"�ű���","BossWnd.Close()")
		else 
			--lualib:MsgBox(player, "���ĵȼ����㣬�޷����븱����")
			lualib:ShowFormWithContent(player, "�ű���", "BossWnd.MsgPrompt(\"���ĵȼ����㣬�޷����븱����\");")
		end
	end 
	return ""
end
--[[
function person_cs(player,param)
	if param == 5 then 
		lualib:SetInt(player, "qianwang1",1)
	end
	local int = lualib:GetDayInt(player, "qianwang"..param)
	if int == 1 then return "" end
	param=param-4
	local item_map_guid = lualib:MapGuid(player)
	local z_name = lualib:KeyName(item_map_guid) 
	if z_name == "��Ľ�������" then
		return ""
	end
	
	local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
	lualib:Player_SetDgnTicket(player, dgn_guid)
	lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
	lualib:ShowFormWithContent(player,"�ű���","BossWnd.Close()")

	return ""
end--]]

function cs(player,str) 
	--lualib:SysPromptMsg(player, "cs")
	local cs_tab2 = {{"������Ѩ","��򼶴һ��",30,0,68,77},            -- name(����) keyname   level  reinlevel x y 
					{"���񶴿�","��һ��",30,0,92,84},
					{"�ٷ�֮��","��������һ��",40,0,140,166},
					{"���¹���","�����������",40,0,19,31},
					{"����Ͽ��","�������һ��",50,0,38,103},
					{"ħţ����","ţħ��һ��",60,0,42,55},
					{"����֮��","��ħ��һ��",70,0,145,198},
					{"��ʬ��","ʬħ��һ��",70,0,84,204},
					{"��ħͨ��","��ħ��һ��",0,1,108,141},
					{"ǧ����","ħ����һ��",0,1,140,172},
					{"ɳ֮�þ�","�������һ��",0,2,68,85},
					{"��ԭѩ��","ѩ������һ��",0,2,8,132},
					{"���Ҳ���","���׶�Ѩһ��",0,2,18,87},
					{"��ħ����","�������һ��",0,3,68,85},
					{"��ħ��԰","���֮��һ��",0,3,38,171},
					{"���ż�","������һ��",0,3,81,161},
					{"ʱ���ص�","��������һ��",0,3,26,115}}

	if string.find(str,"�������" ) ~= nil then 
		lualib:Player_NpcMove(player, "��ɽBOSS����Ա", 2)
	elseif string.find(str,"Զ�����" ) ~= nil then 
		lualib:Player_NpcMove(player, "�������ʹ��", 2)
	else
		for i=1, #cs_tab2 do 
			--cs_tab2[i][2] = lualib:Name(cs_tab2[i][1])
			local nameMap = lualib:KeyName2Name( cs_tab2[i][2],5)
			--lualib:SysPromptMsg(player,nameMap..":"..string.sub(str,0,6))
			if string.find(nameMap,string.sub(str,0,4)) ~= nil then
		--	if string.find(str,cs_tab2[i][1] ) ~= nil then 
				local level = lualib:Level(player)
				local reinlevel = lualib:GetInt(player,"reinLevel")
				if level >= cs_tab2[i][3] and reinlevel >= cs_tab2[i][4] then 
					--if lualib:DelItem(player, "��ң��", 1, 2, "����BOSS", "����BOSS") then 
						--lualib:SysPromptMsg(player, "cs"..cs_tab2[i][5]..";"..cs_tab2[i][6])
						lualib:Player_MapMoveXY(player,cs_tab2[i][2], cs_tab2[i][5], cs_tab2[i][6], 3)
						lualib:ShowFormWithContent(player,"�ű���","BossWnd.Close()")
					--else
						--lualib:SysPromptMsg(player,"��ң�β���")
					--end
				else 
					if level < cs_tab2[i][3] then 
						lualib:SysPromptMsg(player,"���ĵȼ�����")
					else
						lualib:SysPromptMsg(player,"����ת���ȼ�����")
					end
					
				end
			end
		end
	end
	return ""
	
end

function minnum(player,param)
	local num = lualib:ItemCount(player, "��������")
	local reinlevel = lualib:GetInt(player,"reinLevel")
	local level = lualib:Level(player)
	lualib:ShowFormWithContent(player,"�ű���","BossWnd.minnum("..param..","..num..","..reinlevel..","..level..")")
	return ""
end

function kill(player,str)
	local tab_can ={}
	for i=1,#bosslist do
		local tab_map_decode  = lualib:GetStr("", bosslist[i][2])    -- ������ {"��򼶴����","BOSS֮��һ��"}
		if  tonumber(#tab_map_decode) > 0 then 
			local tab_map = json.decode(tab_map_decode)
			if #tab_map> 0 then 
				local num = string.len(tab_map[1])
				if  num > 0 then
					tab_map[#tab_map+1] = lualib:KeyName2Name(bosslist[i][2],2)
					table.insert(tab_can,tab_map)
				end
			end
		end
	end
	local numing = numVisible(player)
	lualib:ShowFormWithContent(player,"�ű���","BossWnd.kill("..serialize(tab_can)..");BossWnd.numVisible("..numing..")")
	return ""
end

function buy(player,num)

	if lualib:SubBindIngot(player,300, "���򸱱���Կ", lualib:Name(player)) then 
		if lualib:AddItem(player,"��������",1,false,"���򸱱���Կ", player) then 
			lualib:SysPromptMsg(player,"����ɹ�")
		end
	elseif lualib:SubIngot(player, 300, "���򸱱���Կ", lualib:Name(player)) then 
		if lualib:AddItem(player,"��������",1,false,"���򸱱���Կ", player) then 
			lualib:SysPromptMsg(player,"����ɹ�")
		end
	else 
		--lualib:SysPromptMsg(player,"Ԫ������")
		lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
	end
	minnum(player,num)
	return ""
end
