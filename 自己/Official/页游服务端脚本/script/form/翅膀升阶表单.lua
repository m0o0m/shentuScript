local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("system/ScriptPackage")
require("form/�¿����")

local tab_wing = {
	{"��ʹ֮��","ʥ��֮��","����֮��","����֮��","����������","����֮��","����������","����֮��","���֮��","����֮��","˫����"},
	{5,5,10,10,20,20,30,30,40,40},--��Ӧ���ȼ�ÿ�ε��������������	
	{10000,10000,20000,20000,60000,60000,120000,120000,240000,240000},----������
	{12,48,132,352,500,900,828,1136,1400,2000},--��Ӧ���ȼ�ÿ��������������
	0,  --���׵ȼ�
	0,  --��������
	0,  --�������������
	
}

function main(player)
	local wing_l = lualib:GetInt(player,"wing_level")
	local wing_p = lualib:GetDayInt(player,"wing_peiy")
	local num = lualib:ItemCount(player, "��ë")
	tab_wing[5] = wing_l
	tab_wing[6] = wing_p
	tab_wing[7] = num
	local allDays = lualib:GetAllDays(0)
	local allSeconds = lualib:GetAllTime()
	tab_wing[8] = (allDays+1)*24*60*60 - allSeconds - 8*60*60    --������0���ʱ��
	local table_data = serialize(tab_wing)
	lualib:ShowFormWithContent(player,"�ű���","wing_data("..table_data..");")
	return ""
end

function begin(player,param)
	local wing_l = lualib:GetInt(player,"wing_level")
	local index = wing_l + 1 
	local wing_p = lualib:GetDayInt(player,"wing_peiy")
	local num = lualib:ItemCount(player, "��ë")
	local gold = tab_wing[3][index]
	
	local item_guid = lualib:Player_GetItemGuid(player,14)
	if item_guid == "" then
		lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"�����װ�����У��޷�����\");")
		return ""
	else
		local name = lualib:KeyName(item_guid)
		if name ~= tab_wing[1][index] then
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"���"..tab_wing[1][index].."����װ�����У��޷�����\");")
			return ""
		end
	end	
	
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"��Ҳ���\");")
		return ""
	end	
	
	if num < tab_wing[2][index] then
		if tonumber(param) == 1 then
			local need_yu = tab_wing[2][index] - num
			local need_yb = need_yu * 30 
			if need_yb > lualib:GetIngot(player) then
				lualib:ShowFormWithContent(player,"�ű���","WingWnd.msgbox();")
				return ""
			else
				if not lualib:Player_SubIngot(player, need_yb, false, "��Ԫ��:����������Զ�����", "ϵͳ") then
					lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"�Զ�������ëʧ��\");")
					return ""
				else
					--********************************--
					local indexx = lualib:GetDBNum("consumeTerm")
					local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + tonumber(need_yb)
					RecordTop10ConsumeInfo(player,totalYb)
					--********************************--
				end
				if not lualib:AddItem(player,"��ë",need_yu,true,"����������Զ�����", player) then --����Ʒ
					lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"����ϵ�ͷ�\");")
					return ""
				end
			end
		else
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"��ë����\");")
			return "" 
		end	
	end
	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "�۰󶨽��:�������", "ϵͳ") then
			return ""
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "�۰󶨽��:�������", "ϵͳ") then
			return ""
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "�۽��:�������", "ϵͳ") then
			return ""
		end
	end	
	if not lualib:DelItem(player, "��ë", tab_wing[2][index], 2, "�������", "�������") then
		lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"�۳���ëʧ��\");")
		return ""
	end
	local rand = lualib:GenRandom(4,5)
	wing_p = rand + wing_p
	if wing_p >= tab_wing[4][index] then
		
		if lualib:GetBagFree(player) < 1 then
			lualib:ShowFormWithContent(player,"�ű���","ShenLuWnd.msg_up(\"���ı������ˣ������������ڽ�������\");")
			return "���ı������ˣ������������ڽ�����������"
		end
		
		if not lualib:DelItemEx(player, tab_wing[1][index], 1, 2, true, true, true, true, "�������", "�������") then 
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"ɾ������ʧ��\");")
			return ""
		end
		if not lualib:AddItem(player,tab_wing[1][index+1],1,true,"�������", player) then --����Ʒ
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"����ϵ�ͷ�\");")
			return ""
		else
			lualib:ApplyEquipEx(player,tab_wing[1][index+1])   --����Ҵ�װ��
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"WingWnd,yu_image\",3006800000,-198,-155,150,1);")	
		end
		
		lualib:SetDayInt(player,"wing_peiy",0)
		lualib:SetInt(player,"wing_level",wing_l + 1)	
		lualib:OnGloryTrigger(player, 16, "", 0, "�������", "")
		main(player)
	else
		lualib:SetInt(player, "FIRST_OPEN_WINGWINDOW",11)
		lualib:ShowFormWithContent(player,"�ű���"," WingWnd.HidePrompt();")
		lualib:SetDayInt(player,"wing_peiy",wing_p)
		local num = lualib:ItemCount(player, "��ë")
		lualib:ShowFormWithContent(player,"�ű���","peiy_update("..index..","..wing_p..","..num..");")
	end	
	return ""
end

function Auto_begin(player,param)
	local timer_id = lualib:GetInt(player,"wingtimerid")
	if timer_id ~= 0 then
		lualib:DisableTimer(player,timer_id)
		lualib:SetInt(player,"wingtimerid",0) 
	else
		timer_id = lualib:GenTimerId(player)
		lualib:SetInt(player,"wingtimerid",timer_id)
		lualib:AddTimerEx(player,timer_id,150,-1,"ShengJiWing",""..param)
	end	
	return ""
end	

function WinClose(player)
	local timer_id = lualib:GetInt(player,"wingtimerid")
	if timer_id ~= 0 then
		lualib:DisableTimer(player,timer_id)
		lualib:SetInt(player,"wingtimerid",0) 
		lualib:ShowFormWithContent(player,"�ű���", "WingWnd.Changetext()")
	end
	return ""
end	

function ShengJiWing(player,timerid,param)
	local wing_l = lualib:GetInt(player,"wing_level")
	local index = wing_l + 1 
	local wing_p = lualib:GetDayInt(player,"wing_peiy")
	local num = lualib:ItemCount(player, "��ë")
	local gold = tab_wing[3][index]
	
	local item_guid = lualib:Player_GetItemGuid(player,14)
	if item_guid == "" then
		if timerid ~= nil then
			lualib:DisableTimer(player,timerid)
			lualib:SetInt(player,"wingtimerid",0) 		
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
		end	
		lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"�����װ�����У��޷�����\");")
		return ""
	else
		local name = lualib:KeyName(item_guid)
		if name ~= tab_wing[1][index] then
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
			end	
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"�����װ�����У��޷�����\");")
			return ""
		end
	end	
	
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		if timerid ~= nil then
			lualib:DisableTimer(player,timerid) 
			lualib:SetInt(player,"wingtimerid",0) 
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
		end	
		lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"��Ҳ���\");")
		return ""
	end	
	
	if num < tab_wing[2][index] then
		if tonumber(param) == 1 then
			local need_yu = tab_wing[2][index] - num
			local need_yb = need_yu * 30 
			if need_yb > lualib:GetIngot(player) then
				if timerid ~= nil then
					lualib:DisableTimer(player,timerid) 
					lualib:SetInt(player,"wingtimerid",0) 
					lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
				end	
				lualib:ShowFormWithContent(player,"�ű���","WingWnd.msgbox();")	
				return ""
			else
				if not lualib:Player_SubIngot(player, need_yb, false, "��Ԫ��:����������Զ�����", "ϵͳ") then
					if timerid ~= nil then
						lualib:DisableTimer(player,timerid) 
						lualib:SetInt(player,"wingtimerid",0)
						lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
					end	
					lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"�Զ�������ëʧ��\");")	
					return ""
				end
				if not lualib:AddItem(player,"��ë",need_yu,true,"����������Զ�����", player) then --����Ʒ
					if timerid ~= nil then
						lualib:DisableTimer(player,timerid) 
						lualib:SetInt(player,"wingtimerid",0) 
						lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
					end	
					lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"����ϵ�ͷ�\");")	
					return ""
				end
			end
		else
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
			end	
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"��ë����\");")			
			return "" 
		end	
	end
	
	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "�۰󶨽��:�������", "ϵͳ") then
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
			end	
			return ""
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "�۰󶨽��:�������", "ϵͳ") then
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
			end	
			return ""
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "�۽��:�������", "ϵͳ") then
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
			end	
			return ""
		end
	end	
	
	if not lualib:DelItem(player, "��ë", tab_wing[2][index], 2, "�������", "�������") then
		if timerid ~= nil then
			lualib:DisableTimer(player,timerid) 
			lualib:SetInt(player,"wingtimerid",0) 
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
		end	
		lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"�۳���ëʧ��\");")
		return ""
	end
	local rand = lualib:GenRandom(4,5)
	wing_p = rand + wing_p
	if wing_p >= tab_wing[4][index] then
		if lualib:GetBagFree(player) < 1 then
			lualib:ShowFormWithContent(player,"�ű���","ShenLuWnd.msg_up(\"���ı������ˣ������������ڽ�������\");")
			return "���ı������ˣ������������ڽ�����������"
		end
		
		if not lualib:DelItemEx(player, tab_wing[1][index], 1, 2, true, true, true, true, "�������", "�������") then 
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"ɾ������ʧ��\");")
			return ""
		end
		
		if not lualib:AddItem(player,tab_wing[1][index+1],1,true,"�������", player) then --����Ʒ
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.msg_up(\"����ϵ�ͷ�\");")
			return ""
		else
			
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"WingWnd,yu_image\",3006800000,-198,-155,150,1);")	
		end
		lualib:ApplyEquipEx(player,tab_wing[1][index+1])   --����Ҵ�װ��
		lualib:SetDayInt(player,"wing_peiy",0)
		lualib:SetInt(player,"wing_level",wing_l + 1)	
		if timerid ~= nil then
			lualib:DisableTimer(player,timerid) 
			lualib:SetInt(player,"wingtimerid",0) 
			lualib:ShowFormWithContent(player,"�ű���","WingWnd.Changetext()")
		end		
		lualib:OnGloryTrigger(player, 16, "", 0, "�������", "")
		main(player)
		AddKaiFuMagicOnWingLevelUp(player)  --�������ʱ�����¿������Ч
	else
		lualib:SetDayInt(player,"wing_peiy",wing_p)
		local num = lualib:ItemCount(player, "��ë")
		lualib:ShowFormWithContent(player,"�ű���","peiy_update("..index..","..wing_p..","..num..");")
	end	
	return ""
end