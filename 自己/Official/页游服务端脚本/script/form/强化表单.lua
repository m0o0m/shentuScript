local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("system/ScriptPackage")
require("form/ActivityDegree_s")

function item_set(player,item_guid)	
	num_set(player,"Qiang_tip1")
	local level = lualib:Item_GetLevel(item_guid)
	local item_subtype = lualib:Item_GetSubType(player, item_guid) 
	if item_subtype ~= 18 then
		if item_subtype == 5 or item_subtype == 12 or item_subtype == 14 or (item_subtype >= 16 and item_subtype < 19) then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��װ������ǿ��\");")
			return ""
		end	
	end
	--���� 11   ����  13   ���� 15 
	if level < 30 and item_subtype ~= 10 and item_subtype ~= 11 and item_subtype ~= 13 and item_subtype ~= 15 and item_subtype ~= 19 then 
		lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"װ���ȼ����ͣ��޷�ǿ��\");")
		return ""
	end
	local qu_num = lualib:GetInt(item_guid,"xing_n")
	if qu_num == 0 then
		if item_subtype == 10 or item_subtype == 11 or item_subtype == 15 or item_subtype == 19 then
			qh_num = 12 
		else	
			if level >= 80 then 
				qh_num = 12 
			end	
			if level < 80 and level >= 60 then 
				qh_num = 10 
			end	
			if level < 60 and level >= 30 then 
				qh_num = 8 
			end
		end	
		if qh_num ~= 0 then 
			lualib:SetInt(item_guid,"xing_n",qh_num)
		end
	end		
	local data = serialize(item_guid)
	local xing_n = lualib:GetInt(item_guid,"xing_num")
	lualib:ShowFormWithContent(player,"�ű���","QianghWnd.Qiangh_item("..data..","..xing_n..",1"..");")
	return ""
end	

function jia_xing(player,item_guid)	
	local xing_tab = {0,1000,5000,10000,210000,630000,1260000,2520000,151,227,341,535}--���Ǵ�������
	local jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
	local xing_n = lualib:GetInt(item_guid,"xing_n")
	if jl_level >= xing_n then
		lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"�Ѿ�ǿ������ߵȼ�\");")
		return ""
	end
	local refine_next_level = jl_level + 1
	if jl_level < 8 then
		local bind_gold = lualib:GetBindGold(player)
		local n_gold = lualib:GetGold(player)
		
		local gold = xing_tab[refine_next_level]
		if gold > bind_gold + n_gold  then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��Ҳ���\");")
			return ""
		end	
		if bind_gold >= gold then
			if not lualib:Player_SubGold(player, gold, true, "�۰󶨽��:ǿ������", "ϵͳ") then
				lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
				return ""
			end
		else
			if not lualib:Player_SubGold(player, bind_gold, true, "�۰󶨽��:ǿ������", "ϵͳ") then
				lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
				return ""
			end
			local jb = gold - bind_gold
			if not lualib:Player_SubGold(player, jb, false, "�۽��:ǿ������", "ϵͳ") then
				lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
				return ""
			end
		end	
	else
		local yb = xing_tab[refine_next_level]
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"Ԫ������\");")
			lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
			return ""
		end
		if not lualib:Player_SubIngot(player, yb, false, "��Ԫ��:ǿ������", "ϵͳ") then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"Ԫ���۳�ʧ��\");")
			return ""
		else
			--********************************--
			local indexx = lualib:GetDBNum("consumeTerm")
			local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + tonumber(yb)
			RecordTop10ConsumeInfo(player,totalYb)
			--********************************--
		end
	end
	lualib:SetInt(item_guid,"xing_num",lualib:GetInt(item_guid,"xing_num") + 1)
	lualib:Item_NotifyUpdate(player, item_guid)
	local data = serialize(item_guid)
	local xing_n = lualib:GetInt(item_guid,"xing_num")
	lualib:ShowFormWithContent(player,"�ű���","QianghWnd.Qiangh_item("..data..","..xing_n..");")
	return ""
end	

----����1������3����ָ9������8������(����ְҵ��ѡһ)
local shux1 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}}, 	
} 
----�·�4������7��Ь��6��ͷ��2������,�����ħ��
local shux2 = {
	{{{11,10},{13,12},{15,14}},{7,6},{9,8}},
	{{{1,1},{1,6},{1,6}},{{2,2},{2,8},{2,8}},{{3,3},{4,10},{3,11}},{{3,4},{5,12},{4,14}},{{4,6},{7,16},{6,17}},{{4,7},{9,21},{7,21}},
	{{5,10},{11,26},{9,26}},{{5,13},{13,32},{9,31}},{{6,17},{14,38},{11,36}},{{8,22},{16,44},{13,43}},{{9,27},{18,51},{15,49}},{{10,33},{22,60},{17,54}}}, 	
}
----���� 15    �����ħ��
local shux3 = {
	{{7,6},{9,8}},
	{{{1,3},{1,2}},{{2,6},{2,4}},{{2,9},{3,6}},{{3,12},{4,9}},{{4,15},{5,11}},{{4,18},{5,14}},
	{{5,21},{6,18}},{{7,25},{7,25}},{{9,29},{9,30}},{{11,33},{11,38}},{{14,38},{13,48}},{{18,41},{15,60}},}, 	
}
----��ʯ11������13 ,��׹18  ����
local shux4 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}},
}
----ѫ��10     ����
local shux5 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{2,9},{3,10},{5,11},{6,14},{8,17},{8,20},{10,24},{11,28},{13,33},{16,39},{20,45}},
}
local suc_tab = {
		{10000,9000,8500,7500,6500,5500,5000,3000,2000,1000,500,100},--ǿ������
		{200000,400000,1000000,1600000,3400000,7000000,8000000,10400000,14000000,16200000,20400000,26000000},--ǿ���������
		{0,9,28,84,252,758,1517,3040,6069,9104,13656,20484},--100%ǿ��Ԫ������
}

function forge_item(player,item,job,yb_y)
	local job = tonumber(job)
	local jl_level = lualib:Equip_GetRefineLevel(player, item)
	local xing_n = lualib:GetInt(item,"xing_n")
	if jl_level >= xing_n then
		lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"�Ѿ�ǿ������ߵȼ�\");")
        return ""
    end
	local xing_num = lualib:GetInt(item,"xing_num")
	if jl_level >= xing_num then
		lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"ǿ���������㣬��㰴ť'��'���Ӵ���\");")
		return ""
	end
	local refine_next_level = jl_level + 1
	local gold = suc_tab[2][refine_next_level]
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��Ҳ���\");")
		return ""
	end	
	if tonumber(yb_y) == 1 then
		local yb = suc_tab[3][refine_next_level]
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"Ԫ������\");")
			lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
			return ""
		end
		if not lualib:Player_SubIngot(player, yb, false, "��Ԫ��:100%ǿ���ɹ�", "ϵͳ") then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"Ԫ���۳�ʧ��\");")
			return ""
		else
			--********************************--
			local indexx = lualib:GetDBNum("consumeTerm")
			local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + tonumber(yb)
			RecordTop10ConsumeInfo(player,totalYb)
			--********************************--
		end
	else
		local ran = lualib:GenRandom(1,10000)
		if ran > suc_tab[1][refine_next_level] then
			xing_num = xing_num - 1
			lualib:SetInt(item,"xing_num",xing_num)
			local data = serialize(item)
			lualib:Item_NotifyUpdate(player, item)
			----------------ÿ�ջ�Ծ�ȼ�¼��������-----------------
			local count = lualib:GetDayInt(player,"activityDgr_jl")
			if 0 == count then
				lualib:SetDayInt(player,"activityDgr_jl", 1)
				lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
				ActivityDegree_setFlag(player)
			end
			----------------ÿ�ջ�Ծ�ȼ�¼��������END--------------
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"ForgeWnd,QianghWnd,item_magic\",3020200200,-215,-174,150,1);QianghWnd.Qiangh_item("..data..","
			..xing_num..");ForgeWnd.msg_up(\"ǿ��ʧ�ܣ�ǿ��������1\");")
			return ""
		end	
	end	
	local subType = lualib:Item_GetSubType(player, item)
	if not lualib:Equip_SetRefineLevel(player, item, refine_next_level) then
		lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"ForgeWnd,QianghWnd,item_magic\",3020200200,-215,-174,150,1);ForgeWnd.msg_up(\"ǿ��ʧ��\");")
		return ""
	end
	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return ""
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return ""
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "�۽��:ǿ��", "ϵͳ") then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return ""
		end
	end
	if 0 == job then
		job = lualib:Job(player)
	end
	local itemlevel = lualib:Item_GetLevel(item)
	----------------att����������ʾ-----------------
	local equipmentIsEquiped = false;
	for i = 1, 17 do 
		local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
		if Guid ~= "" then
			if Guid == item then 
				equipmentIsEquiped = true;
				break;
			end
		end
	end
	local tb = 
	{
		["a1"] = {0,0},--�﹥(���ޣ�����)
		["a2"] = {0,0},--ħ��
		["a3"] = {0,0},--����
		["a4"] = {0,0},--���
		["a5"] = {0,0},--ħ��
		["a6"] = {0,0},--����
	}
	----------------att����������ʾ--------------
	
	if subType == 1 or subType == 9 or subType == 8 or subType == 3 then
		if itemlevel >= 100 then
			
			local a = 4 
			for i = 1 , 3 do 
				tb["a"..i][1] = shux1[2][refine_next_level][1];
				tb["a"..i][2] = shux1[2][refine_next_level][2];
				
				local old_prop = get_old_prop(player,item,a)
				
				lualib:Equip_SetExtProp(player, item, a, shux1[1][i][1], old_prop + shux1[2][refine_next_level][1])
				a = a + 1 
				local old_prop1 = get_old_prop(player,item,a)
				lualib:Equip_SetExtProp(player, item, a, shux1[1][i][2], old_prop1 + shux1[2][refine_next_level][2])
				lualib:SysPromptMsg(player, "������:"..tostring(old_prop1))
				a = a + 1 
			end
		else
			tb["a"..job][1] = shux1[2][refine_next_level][1];
			tb["a"..job][2] = shux1[2][refine_next_level][2];
			local old_prop = get_old_prop(player,item,8)
			lualib:Equip_SetExtProp(player, item, 8, shux1[1][job][1], old_prop + shux1[2][refine_next_level][1])
			local old_prop1 = get_old_prop(player,item,9)
			lualib:Equip_SetExtProp(player, item, 9, shux1[1][job][2], old_prop1 + shux1[2][refine_next_level][2])	
		end		
	elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then
		local a = 4
		for i = 1 , 3 do 
			if i == 1 then
				if itemlevel >= 100 then
					
					a = 0 
					for j = 1 , 3 do 
						tb["a"..j][1] = shux2[2][refine_next_level][1][1];
						tb["a"..j][2] = shux2[2][refine_next_level][1][2];
						local old_prop = get_old_prop(player,item,a)
						lualib:Equip_SetExtProp(player, item, a, shux2[1][i][j][1], old_prop + shux2[2][refine_next_level][i][1])
						a = a + 1 
						local old_prop1 = get_old_prop(player,item,a)
						lualib:Equip_SetExtProp(player, item, a, shux2[1][i][j][2], old_prop1 + shux2[2][refine_next_level][i][2])	
						a = a + 1 
					end
				else	
					tb["a"..job][1] = shux2[2][refine_next_level][1][1];
					tb["a"..job][2] = shux2[2][refine_next_level][1][2];					
					local old_prop = get_old_prop(player,item,a)
					
					lualib:Equip_SetExtProp(player, item, a, shux2[1][i][job][1], old_prop + shux2[2][refine_next_level][i][1])
					a = a + 1 
					local old_prop1 = get_old_prop(player,item,a)
					lualib:Equip_SetExtProp(player, item, a, shux2[1][i][job][2], old_prop1 + shux2[2][refine_next_level][i][2])
					a = a + 1 
				end	
			else
				local old_prop = get_old_prop(player,item,a)
				lualib:Equip_SetExtProp(player, item, a, shux2[1][i][1], old_prop + shux2[2][refine_next_level][i][1])
				a = a + 1 
				local old_prop1 = get_old_prop(player,item,a)
				lualib:Equip_SetExtProp(player, item, a, shux2[1][i][2], old_prop1 + shux2[2][refine_next_level][i][2])
				a = a + 1 	
			end	
		end
		tb["a4"][1] = shux2[2][refine_next_level][2][1];
		tb["a4"][2] = shux2[2][refine_next_level][2][2];
		tb["a5"][1] = shux2[2][refine_next_level][3][1];
		tb["a5"][2] = shux2[2][refine_next_level][3][2];
	elseif subType == 15 then
		local a = 6
		for i = 1 , 2 do 
			local old_prop = get_old_prop(player,item,a)
			lualib:Equip_SetExtProp(player, item, a, shux3[1][i][1], old_prop + shux3[2][refine_next_level][i][1])
			a = a + 1
			local old_prop1 = get_old_prop(player,item,a) 
			lualib:Equip_SetExtProp(player, item, a, shux3[1][i][2], old_prop1 + shux3[2][refine_next_level][i][2])
			a = a + 1 
		end
		tb["a4"][1] = shux3[2][refine_next_level][1][1];
		tb["a4"][2] = shux3[2][refine_next_level][1][2];
		tb["a5"][1] = shux3[2][refine_next_level][2][1];
		tb["a5"][2] = shux3[2][refine_next_level][2][2];
	elseif subType == 11 or subType == 13 or subType == 18 then
		local a = 4
		for i = 1 , 3 do 
			tb["a"..i][1] = shux4[2][refine_next_level][1];
			tb["a"..i][2] = shux4[2][refine_next_level][2];
			local old_prop = get_old_prop(player,item,a)
			lualib:Equip_SetExtProp(player, item, a, shux4[1][i][1], old_prop + shux4[2][refine_next_level][1])
			a = a + 1 
			local old_prop1 = get_old_prop(player,item,a)
			lualib:Equip_SetExtProp(player, item, a, shux4[1][i][2], old_prop1 + shux4[2][refine_next_level][2])
			a = a + 1 
		end
	elseif subType == 10 then
		local a = 4
		for i = 1 , 3 do 
			tb["a"..i][1] = shux5[2][refine_next_level][1];
			tb["a"..i][2] = shux5[2][refine_next_level][2];
			local old_prop = get_old_prop(player,item,a)
			lualib:Equip_SetExtProp(player, item, a, shux5[1][i][1], old_prop + shux5[2][refine_next_level][1])
			a = a + 1
			local old_prop1 = get_old_prop(player,item,a) 
			lualib:Equip_SetExtProp(player, item, a, shux5[1][i][2], old_prop1 + shux5[2][refine_next_level][2])
			a = a + 1 
		end
	end
	if equipmentIsEquiped then 
		if not (tb["a1"][1] <= 0 and tb["a1"][2] <= 0 and tb["a2"][1] <= 0 and tb["a2"][2] <= 0 and tb["a3"][1] <= 0 and tb["a3"][2] <= 0 and tb["a4"][1] <= 0 and tb["a4"][2] <= 0 and tb["a5"][1] <= 0 and tb["a5"][2] <= 0 and tb["a6"][1] <= 0) then	
			local tab = ""
			for i=1,6 do
				tab = tab .. i .. ","
				tab = tab .. tb["a"..i][1] .. ","
				if i == 6 then
					tab = tab .. tb["a"..i][2]
				else
					tab = tab .. tb["a"..i][2] .. "#"
				end
			end
			lualib:ShowFormWithContent(player, "���Ըı��", tab)
		end
		
		----------------10001�����񴩴�һ��+6װ��-----------------
		if lualib:HasQuest(player, 10001) then          
			if refine_next_level >= 6 then 
				lualib:SetQuestGroupHuntingsCount(player, 10001, 444, 1)	
			end
		end
		----------------10001�����񴩴�һ��+6װ��-----------------
	end
	
	
	----------------ÿ�ջ�Ծ�ȼ�¼��������-----------------
	local count = lualib:GetDayInt(player,"activityDgr_jl")
	if 0 == count then
		lualib:SetDayInt(player,"activityDgr_jl", 1)
		lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
		ActivityDegree_setFlag(player)
	end
	----------------ÿ�ջ�Ծ�ȼ�¼��������END--------------
	lualib:Item_NotifyUpdate(player, item)
    lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item, 0, "����", "")
	local data = serialize(item) 
	
	lualib:SetInt(player,"Qiang_tip2",1)   
	lualib:NotifyVar(player,"Qiang_tip2") 

	lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"ForgeWnd,QianghWnd,item_magic\",3020101900,-255,-114,150,1);ForgeWnd.msg_up(\"װ��ǿ����"..refine_next_level.."�ɹ�\");QianghWnd.Qiangh_item("..data..","..xing_num..");ForgeWnd.Get_EquipUpdate("..data..")")
	return ""
end	

function get_old_prop(player,item,index)
	local tab = lualib:Equip_GetExtProp(player, item, tonumber(index))	
	local old_prop = 0
	if #tab ~= 0 then
		old_prop = tab[1]
	end
	return old_prop
end

function num_set(player,str)
	local level = lualib:Level(player)
	if level  >= 60 then 
		lualib:SetInt(player,str,1)  
		local num = lualib:GetInt(player,"Qiang_tip2")  
		lualib:NotifyVar(player,str)
		lualib:ShowFormWithContent(player,"�ű���","QianghWnd.Script2("..num..")")
	end
	return ""
end 

function item_setint(player)
	local num = lualib:GetInt(player,"Qiang_tip1")  
	lualib:ShowFormWithContent(player,"�ű���","QianghWnd.tip("..num..")")
	return ""
end
