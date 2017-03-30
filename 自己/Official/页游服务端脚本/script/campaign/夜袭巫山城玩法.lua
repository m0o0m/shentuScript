local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")
--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
	return ""
end

function on_start_decl(id, map, times)
	
	if tonumber(times) == 0 then
		lualib:SetDBStr("nowActivityName", "ȺӢ����   21:25 - 21:45")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)
		
		lualib:SetInt("","ҹϮ��ɽ�ǿ���",1)
		local dgn_guid = lualib:Map_CreateDgn("ҹϮ��ɽ��" , true, 25*60)  
		lualib:SetStr("","ҹϮ��ɽ��GUID",""..dgn_guid)
		lualib:SetInt("","ҹϮ��ɽ�ǿ���ʱ��",lualib:Str2Time( lualib:Now()))
		lualib:AddTimer("",963963,1200000,1,"cleanMap")
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#ȺӢ���Ի�ѿ������������ȺӢ����NPC�����롣#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("��һ����:playerMoveMagic6", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#ȺӢ���Ի����"..math.floor(times / 60000).."���ӿ�ʼ����ʱ�������ȺӢ����NPC�����롣#COLOREND#", 11, 2)
	end
	return ""
end

function on_end_decl(id, map, times)
	if tonumber(times) == 0 then
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
		
		lualib:SetInt("","ҹϮ��ɽ�ǿ���",0)
		Time_Out() 
		local dgn_guid = lualib:GetStr("","ҹϮ��ɽ��GUID")
		lualib:DisableTimer(dgn_guid,5466231)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#ȺӢ���Ի�ѽ�����#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#ȺӢ���Ի����"..math.floor(times / 60000).."���Ӻ������#COLOREND#", 11, 2)
	end 
	return ""
end



function Time_Out()    --������
	
	
	local tab = {}
	local playerList = lualib:GetStr("", "ҹϮ��ɽ������")   -- {1  name   2  ����  3  player_guid  4  �ȼ�    5  ְҵ    6   ����ʱ��   7  ��ɱ   8  ɱ�˴���}
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][1] ~= "" then
				local times = playerList[j][6] 
				if times >= 300 then
					lualib:Mail("ȺӢ���Ի", playerList[j][1], "��л�����뱾�λ���������Ĳ���5���ӽ���������ա�", 0, 0, {"������ƬС" , 9 , 1,"BOSS���־���" , 3 , 1 ,"�ɾ�����" , 1 , 1  } )
					--lualib:MailToPlayer("ҹϮ��ɽ�ǻ",playerList[j][3],"��л������ҹϮ��ɽ�ǻ���������Ĳ���5���ӽ���������ա�",0,0,{"������ƬС" , 9 , 1,"BOSS���־���" , 3 , 1 ,"�ɾ�����" , 1 , 1  } )
				end
			
				local index = playerList[j][7] 
				if index == 1 then
					lualib:Mail("ȺӢ���Ի", playerList[j][1], "��л�����뱾�λ���������ı�ɱ1�ν���������ա�", 0, 0, {"������ƬС",3,1,"BOSS���־���",1,1})
					--lualib:MailToPlayer("ҹϮ��ɽ�ǻ", playerList[j][3],"��л������ҹϮ��ɽ�ǻ���������ı�ɱ1�ν���������ա�",0,0,{"������ƬС",3,1,"BOSS���־���",1,1})
				end
				index = playerList[j][8] 
				if index >= 10 then
					--lualib:MailToPlayer("ҹϮ��ɽ�ǻ", playerList[j][3],"��л������ҹϮ��ɽ�ǻ���������Ļ�ɱ10�˽���������ա�",0,0,{"������ƬС" , 6 , 1,"BOSS���־���" , 3 , 1 ,"�ɾ�����" , 1 , 1  } )
					lualib:Mail("ȺӢ���Ի", playerList[j][1], "��л�����뱾�λ���������Ļ�ɱ10�˽���������ա�", 0, 0, {"������ƬС" , 6 , 1,"BOSS���־���" , 3 , 1 ,"�ɾ�����" , 1 , 1  } )
				end 
				tab[j] = {}
				tab[j][1] = playerList[j][1]
				tab[j][2] = playerList[j][2]
			end
		end
	end
	
	for  j = 1,#tab do 
		if j<#tab then 
			for  i = 1,#tab-1 do 
				if tab[i][2] < tab[i+1][2] then 
					local index = tab[i]
					tab[i] = tab[i+1]
					tab[i+1] = index
				end
			end
		end
	end
	local jl_tab = {{12,4,2},
					{10,3,2},
					{9,3,2},
					{8,3,1},
					{7,2,1},
					{5,2,1},
					{5,2,1},
					{5,1,1},
					{5,1,1},
					{5,1,1}}
	for  j = 1,#tab do 
		if j<11 then 
			lualib:Mail("ȺӢ���Ի", tab[j][1], "��л�����뱾�λ�����ڱ��λ��������"..j.."��������������������������ա�", 0, 0, {"������ƬС" , jl_tab[j][1] , 1,"BOSS���־���" , jl_tab[j][2] , 1 ,"�ɾ�����" , jl_tab[j][3] , 1  } )
				
		--	lualib:MailToPlayer("ҹϮ��ɽ�ǻ", tab[j][1],"��л������ҹϮ��ɽ�ǻ�����ڱ��λ��������"..j.."��������������������������ա�",0,0,{"������ƬС" , jl_tab[j][1] , 1,"BOSS���־���" , jl_tab[j][2] , 1 ,"�ɾ�����" , jl_tab[j][3] , 1  } )
		end
	end 
	return ""
	
end

function enter(player, dgn_id)
	return ""
end

function cleanMap(player)
	lualib:SetInt("","ҹϮ��ɽ�ǿ���",0)
	lualib:DisableTimer("",963963)    
	return ""
end

function leave(player)
	return ""
end

function Goto(id,player,map)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	local level = lualib:Level(player)
	if level > 49 then
		lualib:Player_NpcMove(player, "����ҹս�����", 5)
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"Campaign\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str .."end\n"
		lualib:ShowFormWithContent(player,"�ű���",str)
		lualib:ShowFormWithContent(player,"form�ļ���","NightWnd")
	else 
		lualib:ShowFormWithContent(player,"�ű���","Campaign.msg(\"�ȼ�����\")" )
	end
	return ""
end


