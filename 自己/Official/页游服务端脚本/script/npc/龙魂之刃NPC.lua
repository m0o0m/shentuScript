local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

--[[function main(sNpcID , sPlayerID)

	if npc_useform(sNpcID , sPlayerID) then -- �������������
		local msg = "\n                     #COLORCOLOR_GREENG#��  ��#COLOREND#\n\n"
		local msg = msg.."    #COLORCOLOR_BROWN#����ˢ��BOSS�������࣬ˢ��ʱ��죬���׻�ɱ������70������ȫϵ��װ���ʹ���������ǰ�ڱ���\n\n\n"
		local msg = msg.."    \n"
		local msg = msg.."                     #COLORCOLOR_GREENG#˵  ��#COLOREND#\n\n"	
		local msg = msg.."    #COLORCOLOR_BROWN#1.����������ÿ�ν�������#COLORCOLOR_GREENG#500��Ԫ��#COLOREND##COLORCOLOR_BROWN#\n\n"
		local msg = msg.."    2.BOSS������10��\n\n"
		local msg = msg.."    3.ˢ��ʱ�䣺30-60����\n\n"
		local msg = msg.."    4.������ϣ�����������\n\n"
		local msg = msg.."    5.����װ����#COLORCOLOR_GREENG#70��#COLOREND##COLORCOLOR_BROWN#����ȫϵ��װ�����ɻ��պ������飩\n\n\n\n\n\n"
		local msg = msg.."\n"
		local msg = msg.."                <@entermap *01* �������밵���> \n\n"
		local msg = msg.."                 ���İ�Ԫ��:#COLORCOLOR_GREENG#500#COLOREND# \n"
		return msg
	else
		local msg = " 	#COLORCOLOR_ORANGE#���밵��#COLOREND#    \n" 	
		return msg  --reutnrn NPCTalkAck �������񽻽����
	end
end--]]

function main(npc,player)
	--[[if not npc_useform(npc,player) then -- ������������� 
		local msg = " 	#COLORCOLOR_ORANGE#����֮����·#COLOREND#    \n" 	
		return msg
	else
		lualib:ShowFormWithContent(player, "form�ļ���", "LongHunZL_outside")
		return ""
	end--]]
	if lualib:KeyName(npc) == "����֮�г���" then
		lualib:ShowFormWithContent(player, "form�ļ���", "LongHunZL_inside")
	elseif lualib:KeyName(npc) == "����֮��" then
		lualib:ShowFormWithContent(player, "form�ļ���", "LongHunZL_outside")
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
    		
	if canAcceptQuest or canAccomplishQuest then
		useFuncForm = false
	end

	lualib:Debug(tostring(canAcceptQuest))
	lualib:Debug(tostring(canAccomplishQuest))
	lualib:Debug(tostring(useFuncForm))
	
	return useFuncForm

end