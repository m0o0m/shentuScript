local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


function main(npc,player)
	if not npc_useform(npc,player) then -- ������������� 
		local msg = " 	#COLORCOLOR_ORANGE#��ħ������#COLOREND#    \n" 	
		return msg
	else
		lualib:ShowFormWithContent(player, "form�ļ���", "MagicPagodaNpc")
		return ""
	end
	return ""
end




function npc_useform(sNpcID , sPlayerID)
	--1 npc_bind quest
	--2 the quest id player have could submit , player could accept quest id
	--3 compare see if there is a match, if no match useFuncForm = false
	local useFuncForm = true
	local npc_accept_arr = {}
	local npc_accomplish_arr = {}
	bindTable = lualib:Npc_GetBindQuests(sNpcID)
	if bindTable ~= {} and bindTable ~= nil then
		local str = serialize(bindTable)
		lualib:Debug("table  = "..str)
		npc_accept_arr = bindTable[1]
		npc_accomplish_arr = bindTable[2]
		--lualib:SysPromptMsg(sPlayerID,"npc_accept_arr="..tostring(npc_accept_arr))
		if npc_accept_arr ~= {} and npc_accept_arr ~= nil then
			for i = 1,#npc_accept_arr do
				lualib:Debug("npc_accept_arr = "..npc_accept_arr[i])
			end
		end
		
		if npc_accomplish_arr ~= {} and npc_accomplish_arr ~= nil then
			for i = 1,#npc_accomplish_arr do
				lualib:Debug("npc_accomplish_arr = "..npc_accomplish_arr[i])
			end
		end
	end
	
	local canAcceptQuest = false
	local canAccomplishQuest = false
	if npc_accept_arr ~= {} and npc_accept_arr ~= nil then
		for i = 1,#npc_accept_arr do
			if lualib:CanAcceptQuest(sPlayerID, npc_accept_arr[i]) == true then
				canAcceptQuest = true
			end
		end
		
		for i = 1,#npc_accomplish_arr do
			if lualib:CanAccomplishQuest(sPlayerID, npc_accomplish_arr[i]) == true then
				canAccomplishQuest = true
			end
		end
    end		
	if canAcceptQuest or canAccomplishQuest then
		useFuncForm = false
	end

	lualib:Debug(tostring(canAcceptQuest))
	lualib:Debug(tostring(canAccomplishQuest))
	lualib:Debug(tostring(useFuncForm))
	
	return useFuncForm

end

function enter(npc, player)
	local map = lualib:Map_GetMapGuid("��ɽ��")
    local dgn_guid = lualib:GetStr(map, "active_stzf_dgn")
	local active_time = lualib:GetInt(map, "stzf_time")
	
	local msg = ""
	local cur_time = lualib:GetAllTime()
	if active_time == 0 or cur_time > active_time then
		msg = "�Բ��𣬵�ǰʱ���޷��������������´��ٲ���\n"
		msg = msg.."<@leave *01*�뿪>"
		return msg
	end
	
	local level = lualib:Level(player)
	if level < 50 then
		return "�ȼ�����50����"
	end
	
	if dgn_guid == "" then
		return "���λ�쳣������ϵGM��"
	else
		if not lualib:Map_IsDgnExist(dgn_guid) then
			return "���������ڣ�"
		end
		lualib:Player_SetDgnTicket(player, dgn_guid)
		if lualib:Player_HasDgnTicket(player, "˭������") then
			lualib:Player_EnterDgn(player, "˭������", 0, 0, 0)
		end
	end
	return ""
end