local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function _Transmit(player)
	local _t = {["������һ��"]={"����������",1, 2, 1},
				["����������"]={"����������",2, 3, 1},
				["����������"]={"�������Ĳ�",3, 5, 1},
				["�������Ĳ�"]={"���������",4, 7, 1},
				["���������"]={"����������",5, 9, 1},
				["����������"]={"�������߲�",6, 12, 1},
				["�������߲�"]={"�������˲�",7, 14, 1},
				["�������˲�"]={"�������Ų�",8, 16, 1},
				["�������Ų�"]={"������ʮ��",9, 18, 1},
				["������ʮ��"]={"������ʮһ��",10, 20, 1},
				["������ʮһ��"]={"������ʮ����",11, 22, 1},
				["������ʮ����"]={"������ʮ����",12, 25, 1},
				["������ʮ����"]={"��ɽ��"},
	}  --[1]next layer name;[2]cost item number;[3]reward1;[4]reward2
	local mapGuid = lualib:MapGuid(player)
	local mapKeyName = lualib:KeyName(mapGuid)
	local count = 0
	if mapKeyName ~= "������ʮ����" then	
		if 	lualib:ItemCount(player, "������ͨ��֤") >= _t[mapKeyName][2] then	
			if not (lualib:BagFree(player, true, false, false) >= _t[mapKeyName][3] + _t[mapKeyName][4]) then
				lualib:ShowFormWithContent(player, "�ű���", "EndlessHell.Alert(\"�����ռ䲻��\");")
			else   
				if lualib:DelItem(player, "������ͨ��֤", _t[mapKeyName][2], 2, "������", "������������һ��") then
					for i = 1, _t[mapKeyName][3] do
						if lualib:AddItem(player, "��ʯ����С", 1, true, "������", "������������һ��") then
							count = count + 1
						end
					end
					if count == _t[mapKeyName][3] then
						if lualib:AddItem(player, "��שС", _t[mapKeyName][4], true, "������", "������������һ��") then
							if lualib:Player_MapMove(player, _t[mapKeyName][1]) then  --transmit next map RANDOM position(x,y)
								lualib:ShowFormWithContent(player, "�ű���", "EndlessHell.closeWnd();")
							end
						end
					end
				end
			end
		else
			lualib:ShowFormWithContent(player, "�ű���", "EndlessHell.Alert(\"��Ԩƾ֤����\");")
			--lualib:SysPromptMsg(player, "tickets are not enough!!")
		end
	else
		if lualib:Player_MapMoveXY(player, _t[mapKeyName][1], 164, 188, 3) then   --transmit next map SPECIFIC position(x,y)
			lualib:ShowFormWithContent(player, "�ű���", "EndlessHell.closeWnd();")
		end
	end
	return ""
end



function EnterMap(player)
	
	local start = lualib:GetInt("","�޾���Ԩ����")
	if start == 1 then 
		local level = lualib:Level(player)
		local vip_lv = lualib:GetVipLevel(player)
		if level > 79 or (vip_lv >0 and level > 49 ) then
			local time_tab = {0,0,0,2000,2500,2800,3000}  
			
			local StartServerTime = lualib:GetConstVar("StartServerTime")
			local StartServerTime_int = lualib:Str2Time(StartServerTime)  --����ʱ�䣨�룩
			local allTime = lualib:GetAllTime()
			local day = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --�����ڼ���
			
	
			if day > 7 then day = 7 end
			local job = lualib:Job(player)
			local attk = 0
			if job == 2 then 
				attk = lualib:MagAtk(player, true)
			elseif job == 3 then 
				attk=  lualib:TaoAtk(player, true) 
			else
				attk = lualib:PhyAtk(player, true)   
			end
			if attk > time_tab[day] then 
				local name = lualib:Name(player)
				local s1 = "#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#"..name.."#COLOREND##COLORCOLOR_YELLOW#�����޾���Ԩ���޾���Ԩ�ɴ���ɽ��NPC�����룡#COLOREND#"
				lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)

				lualib:Player_MapMove(player, "������һ��")
				lualib:ShowFormWithContent(player,"�ű���","EndlessUI.closeWnd();")
			else 
				lualib:ShowFormWithContent(player,"�ű���","EndlessUI.msg(\"�������ﵽ"..time_tab[day].."���ɽ���\");")
			end
		else 
			lualib:ShowFormWithContent(player,"�ű���","EndlessUI.msg(\"�ȼ�����\");")
		end
		
	else
		lualib:ShowFormWithContent(player,"�ű���","EndlessUI.msg(\"�ܱ�Ǹ�����δ����\");")
	end
	return ""
	
end



