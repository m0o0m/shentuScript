local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/ActivityDegree_s")

function OpenMainUI(player)
	local dayIntNameTb = {"62�����鸱��","63����ë����","64�����Ƹ���","65�����鸱��","65�����鸱��","67����ʯ����"}
	local tb = {}
	for i = 1, 6 do
		tb[i] = lualib:GetInt(player , dayIntNameTb[i])
	end
	tb[7] = tonumber(lualib:GetVipLevel(player))
	lualib:ShowFormWithContent(player, "form�ļ���", "Daily_FB#"..serialize(tb))
	return ""
end

function OptionMap1(player)
	if lualib:Level(player) < 62 then				
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"�ȼ�����\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept75Quest") ~= 1 then    ---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"���ȡ�������񡶹���Ŀ�����\");")
		return ""
	end--]]
	local isedNum = lualib:GetDayInt(player , "��������_Daily")
	local restNum = 2-lualib:GetInt(player , "62�����鸱��")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	
	local itemNum = lualib:ItemCount(player, "��������")
	lualib:ShowFormWithContent(player, "form�ļ���", "Dailyone#"..restNum.."#"..itemNum.."#1".."#"..isedNum)
	return ""
end

function OptionMap2(player)
	if lualib:Level(player) < 63 then
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"�ȼ�����\");")
		return ""
	end
--[[	if lualib:GetInt(player, "hasAccept77Quest") ~= 1 then		---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"���ȡ��������ʥ��Ŀ�����\");")
		return ""
	end--]]
	local isedNum = lualib:GetDayInt(player , "��ħ���_Daily")
	local restNum = 2-lualib:GetInt(player , "63����ë����")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "��������")
	lualib:ShowFormWithContent(player, "form�ļ���", "Dailyone#"..restNum.."#"..itemNum.."#2".."#"..isedNum)
	return ""
end

function OptionMap3(player)
	if lualib:Level(player) < 64 then
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"�ȼ�����\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept80Quest") ~= 1 then		---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"���ȡ�������񡶺ڰ���̳��\");")
		return ""
	end--]]
	
	local isedNum = lualib:GetDayInt(player , "���֮��_Daily")
	local restNum = 2-lualib:GetInt(player , "64�����Ƹ���")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "��������")
	--lualib:SysPromptMsg(player,"restNum "..restNum)
	lualib:ShowFormWithContent(player, "form�ļ���", "Dailyone#"..restNum.."#"..itemNum.."#3".."#"..isedNum)
	return ""
end

function OptionMap4(player)
	if lualib:Level(player) < 65 then
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"�ȼ�����\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept83Quest") ~= 1 then		---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"���ȡ���������Ϲ�а��\");")
		return ""
	end--]]
	
	local isedNum = lualib:GetDayInt(player , "��������_Daily")
	local restNum = 2-lualib:GetInt(player , "65�����鸱��")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "��������")
	lualib:ShowFormWithContent(player, "form�ļ���", "Dailyone#".. restNum .."#"..itemNum.."#4".."#"..isedNum)
	return ""
end

function OptionMap5(player)
	if lualib:Level(player) < 66 then
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"�ȼ�����\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept86Quest") ~= 1 then			---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"���ȡ��������ħ��Ͽ�ȡ�\");")
		return ""
	end--]]
	
	local isedNum = lualib:GetDayInt(player , "�������_Daily")
	local restNum = 2-lualib:GetInt(player , "65�����鸱��")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "��������")
	lualib:ShowFormWithContent(player, "form�ļ���", "Dailyone#".. restNum .."#"..itemNum.."#5".."#"..isedNum)
	return ""
end

function OptionMap6(player)
	if lualib:Level(player) < 67 then
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"�ȼ�����\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept86Quest") ~= 1 then			---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		lualib:ShowFormWithContent(player, "�ű���", "Daily_FB.MsgUp(\"���ȡ��������ħ��Ͽ�ȡ�\");")
		return ""
	end--]]
	
	local isedNum = lualib:GetDayInt(player , "ѩ���ؾ�_Daily")
	local restNum = 2-lualib:GetInt(player , "67����ʯ����")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "��������")
	lualib:ShowFormWithContent(player, "form�ļ���", "Dailyone#".. restNum .."#"..itemNum.."#6".."#"..isedNum)
	return ""
end

function EnterMap1(player)
--[[	if lualib:GetInt(player, "hasAccept75Quest") ~= 1 then			---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		
		return ""
	end--]]
	if lualib:Level(player) < 61 then
		return ""
	end
	local key = false
	local num = lualib:GetInt(player , "62�����鸱��")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "��������", 1, 2, "ÿ�ո���", "ÿ�ո���ϵͳ") then
			local MapGuid = lualib:Map_CreateDgn("������������", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "62�����鸱��" , lualib:GetInt( player , "62�����鸱��" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "62�����鸱��")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"�ű���","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "������������" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 75) then
						lualib:ForceQuestReady(player, 75)  --*******�ĸ����
					end--]]
				end
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --����һ�θ������80������
					if lualib:GetInt( player , "62�����鸱��" ) + lualib:GetInt( player , "63����ë����" ) + lualib:GetInt( player , "64�����Ƹ���" ) + lualib:GetInt( player , "65�����鸱��" ) + lualib:GetInt( player , "65�����鸱��" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "�ű���", "Dailyone.closed();")
				return ""
			else
				return "��������ɽ����ͼ��\n "
			end
			
		end
	end
	return ""
end

function EnterMap2(player)
	if lualib:Level(player) < 63 then
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept77Quest") ~= 1 then			---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		
		return ""
	end--]]
	
	local key = false
	local num = lualib:GetInt(player , "63����ë����")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "��������", 1, 2, "ÿ�ո���", "ÿ�ո���ϵͳ") then
			local MapGuid = lualib:Map_CreateDgn("������ħ���", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt(player, "63����ë����" , lualib:GetInt( player , "63����ë����" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "63����ë����")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"�ű���","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn(player, "������ħ���" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 77) then
						lualib:ForceQuestReady(player, 77)		
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --����һ�θ������80������
					if lualib:GetInt(player, "62�����鸱��" ) + lualib:GetInt( player , "63����ë����" ) + lualib:GetInt( player , "64�����Ƹ���" ) + lualib:GetInt( player , "65�����鸱��" ) + lualib:GetInt( player , "65�����鸱��" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "�ű���", "Dailyone.closed();")
				return ""
			else
				return "��������ɽ����ͼ��\n "
			end
			
		end	
	end
	return ""
end

function EnterMap3(player)
	--[[if lualib:GetInt(player, "hasAccept80Quest") ~= 1 then			---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		
		return ""
	end--]]
	
	
	if lualib:Level(player) < 64 then
		return ""
	end
	
	local key = false
	local num = lualib:GetInt(player , "64�����Ƹ���")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "��������", 1, 2, "ÿ�ո���", "ÿ�ո���ϵͳ") then
			local MapGuid = lualib:Map_CreateDgn("�������֮��", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "64�����Ƹ���" , lualib:GetInt( player , "64�����Ƹ���" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "64�����Ƹ���")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"�ű���","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "�������֮��" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 80) then
						lualib:ForceQuestReady(player, 80)			 --*******�ĸ����
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --����һ�θ������80������
					if lualib:GetInt(player, "62�����鸱��" ) + lualib:GetInt( player , "63����ë����" ) + lualib:GetInt( player , "64�����Ƹ���" ) + lualib:GetInt( player , "65�����鸱��" ) + lualib:GetInt( player , "65�����鸱��" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "�ű���", "Dailyone.closed();")
				return ""
			else
				return "��������ɽ����ͼ��\n "
			end
			
		end	
	end
	return ""
end

function EnterMap4(player)
	--[[if lualib:GetInt(player, "hasAccept83Quest") ~= 1 then				---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		
		return ""
	end--]]
	if lualib:Level(player) < 65 then
		return ""
	end
	local key = false
	local num = lualib:GetInt(player , "65�����鸱��")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "��������", 1, 2, "ÿ�ո���", "ÿ�ո���ϵͳ") then
			local MapGuid = lualib:Map_CreateDgn("������������", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "65�����鸱��" , lualib:GetInt( player , "65�����鸱��" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "65�����鸱��")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"�ű���","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "������������" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 83) then
						lualib:ForceQuestReady(player, 83)				 --*******�ĸ����
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --����һ�θ������80������
					if lualib:GetInt( player , "62�����鸱��" ) + lualib:GetInt( player , "63����ë����" ) + lualib:GetInt( player , "64�����Ƹ���" ) + lualib:GetInt( player , "65�����鸱��" ) + lualib:GetInt( player , "65�����鸱��" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "�ű���", "Dailyone.closed();")
				return ""
			else
				return "��������ɽ����ͼ��\n "
			end
			
		end	
	end
	return ""
end

function EnterMap5(player)
	--[[if lualib:GetInt(player, "hasAccept86Quest") ~= 1 then				---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		
		return ""
	end--]]
	if lualib:Level(player) < 66 then
		return ""
	end
	local key = false
	local num = lualib:GetInt(player , "65�����鸱��")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "��������", 1, 2, "ÿ�ո���", "ÿ�ո���ϵͳ") then
			local MapGuid = lualib:Map_CreateDgn("�����������", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "65�����鸱��" , lualib:GetInt( player , "65�����鸱��" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "65�����鸱��")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"�ű���","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "�����������" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 86) then
						lualib:ForceQuestReady(player, 86)			 --*******�ĸ����
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --����һ�θ������80������
					if lualib:GetInt( player , "62�����鸱��" ) + lualib:GetInt( player , "63����ë����" ) + lualib:GetInt( player , "64�����Ƹ���" ) + lualib:GetInt( player , "65�����鸱��" ) + lualib:GetInt( player , "65�����鸱��" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "�ű���", "Dailyone.closed();")
				return ""
			else
				return "��������ɽ����ͼ��\n "
			end
			
		end	
	end
	return ""
end

function EnterMap6(player)
	--[[if lualib:GetInt(player, "hasAccept86Quest") ~= 1 then				---�Ƿ��ȡ�����񡣡��ڡ�����ִ�нű��������ж�
		
		return ""
	end--]]
	if lualib:Level(player) < 67 then
		return ""
	end
	local key = false
	local num = lualib:GetInt(player , "67����ʯ����")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "��������", 1, 2, "ÿ�ո���", "ÿ�ո���ϵͳ") then
			local MapGuid = lualib:Map_CreateDgn("ѩ���ؾ�", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "67����ʯ����" , lualib:GetInt( player , "67����ʯ����" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "67����ʯ����")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"�ű���","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "ѩ���ؾ�" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 86) then
						lualib:ForceQuestReady(player, 86)			 --*******�ĸ����
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --����һ�θ������80������
					if lualib:GetInt( player , "62�����鸱��" ) + lualib:GetInt( player , "63����ë����" ) + lualib:GetInt( player , "64�����Ƹ���" ) + lualib:GetInt( player , "65�����鸱��" ) + lualib:GetInt( player , "65�����鸱��" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "�ű���", "Dailyone.closed();")
				return ""
			else
				return "��������ɽ����ͼ��\n "
			end
			
		end	
	end
	return ""
end

function BuyFbKeys(player)
	if tonumber(lualib:GetBagFree(player) ) > 0 then
		if lualib:SubBindIngot(player, 300, "ÿ�ո���", "ÿ�ո���ϵͳ") then
			lualib:AddItem(player, "��������", 1, true, "ÿ�ո���", "ÿ�ո���ϵͳ")
			
			local itemNum = lualib:ItemCount(player, "��������")
			lualib:ShowFormWithContent(player, "�ű���", "Dailyone.itemnum("..itemNum..");")
		else
			lualib:ShowFormWithContent(player, "�ű���", "Dailyone.MsgUp(\"��Ԫ����\");")
		end
	else
		lualib:ShowFormWithContent(player, "�ű���", "Dailyone.MsgUp(\"��������\");")
	end
	return ""
end

function Sweeps(player,fb,param)
	local vip = lualib:GetVipLevel(player)
	if vip < 2 then
		
		lualib:ShowFormWithContent(player, "�ű���", "GameMainBar.CommonRechage(\"VIP2����ɨ��\");")
		return ""
	end
	local dayIntNameTb = {"62�����鸱��","63����ë����","64�����Ƹ���","65�����鸱��","65�����鸱��","67����ʯ����"}
	local yb = {98,188,188,98,188,38}
	local tab = {{1500000,{"������ƬС",2,"��֮�飨С��"}},
				{600000,{"��ë",12,"����֮��"}},
				{600000,{"������ƬС",25,"���Ʋ�Ƭ��С��"}},
				{1500000,{"������ƬС",2,"��֮�飨С��"}},
				{600000,{"��ʯ�ᾧС",12,"�鱦��Ƭ��С��"}},
				{600000,{"1����ʯ��",2,"1����ʯ��"}}
				}
		
	local i = tonumber(fb)
	local j = tonumber(param)
	local times = lualib:GetInt(player , dayIntNameTb[i])
	if vip >= 4  then 
		times = times -1
	end
	local num = 2-(times + 1)
	if times < 2 then
		if j == 2 then
			local ingot = lualib:GetIngot(player)
			if yb[i] > ingot then 
				lualib:ShowFormWithContent(player, "�ű���", "Dailyone.Msg(\"Ԫ������\");")
				return ""
			end
		end
		if lualib:DelItem(player, "��������", 1, 2, "ÿ�ո���", "ÿ�ո���ϵͳ") then
			if j == 2 then
				if lualib:Player_SubIngot(player, yb[i], false, "ÿ�ո���", "������") then
					addActivityDegree(player)
					if vip >= 4  then 
						lualib:SetInt( player , dayIntNameTb[i] , times + 2 )
					else
						lualib:SetInt( player , dayIntNameTb[i] , times + 1 )
					end
					lualib:Player_AddExp(player ,tab[i][1]*2 , "��ħʥ��" ,"system")
					lualib:AddItem(player , tab[i][2][1] , tab[i][2][2]*2 , true , "˫", "ÿ�ո���ϵͳ")
					lualib:ShowFormWithContent(player, "�ű���", "Dailyone.down("..num..");Sweeps.closed()")
				else
					lualib:ShowFormWithContent(player, "�ű���", "Dailyone.Msg(\"Ԫ������\");")
				end
			elseif j == 1 then
				addActivityDegree(player)
				if vip >= 4  then 
					lualib:SetInt( player , dayIntNameTb[i] , times + 2 )
				else
					lualib:SetInt( player , dayIntNameTb[i] , times + 1 )
				end
				lualib:Player_AddExp(player ,tab[i][1] , "��ħʥ��" ,"system")
				lualib:AddItem(player , tab[i][2][1] , tab[i][2][2] , true , "��", "ÿ�ո���ϵͳ")
				lualib:ShowFormWithContent(player, "�ű���", "Dailyone.down("..num..");Sweeps.closed()")
			end
		else
			lualib:ShowFormWithContent(player, "�ű���", "Dailyone.Msg(\"�������᲻��\");")
		end
	else
		lualib:ShowFormWithContent(player, "�ű���", "Dailyone.Msg(\"���մ���������\");")
	end 
--[[	if i==1 then 
		OptionMap1(player)
	elseif i==2 then 
		OptionMap2(player)
	elseif i==3 then 
		OptionMap3(player)
	elseif i==4 then 
		OptionMap4(player)
	elseif i==5 then 
		OptionMap5(player)
	end--]]
	
	local itemNum = lualib:ItemCount(player, "��������")
	lualib:ShowFormWithContent(player, "�ű���", "Dailyone.itemnum("..itemNum..");")
	return ""
end


----------��Ծ�����
function addActivityDegree(player)
	local count = lualib:GetDayInt(player,"activityDgr_fb") + 1
	if 5 == count then
		lualib:SetDayInt(player,"activityDgr_fb", 5)
		lualib:SetDayInt(player,"totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
		ActivityDegree_setFlag(player)
	elseif 5 > count then
		lualib:SetDayInt(player,"activityDgr_fb", count)
	end
end