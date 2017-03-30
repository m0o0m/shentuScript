local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function main(sNpcID , sPlayerID)

	if npc_useform(sNpcID , sPlayerID) then -- 弹出功能性面板
		local msg = "\n                     #COLORCOLOR_GREENG#暗  殿#COLOREND#\n\n"
		local msg = msg.."    #COLORCOLOR_BROWN#暗殿刷新BOSS，数量多，刷新时间快，容易击杀，掉落70级以下全系列装备和大量副本卷，前期必抢\n\n\n"
		local msg = msg.."    \n"
		local msg = msg.."                     #COLORCOLOR_GREENG#说  明#COLOREND#\n\n"	
		local msg = msg.."    #COLORCOLOR_BROWN#1.进入条件：每次进入消耗#COLORCOLOR_GREENG#500绑定元宝#COLOREND##COLORCOLOR_BROWN#\n\n"
		local msg = msg.."    2.BOSS数量：10个\n\n"
		local msg = msg.."    3.刷新时间：30-60分钟\n\n"
		local msg = msg.."    4.掉落材料：海量副本卷\n\n"
		local msg = msg.."    5.掉落装备：#COLORCOLOR_GREENG#70级#COLOREND##COLORCOLOR_BROWN#以下全系列装备（可回收海量经验）\n\n\n\n\n\n"
		local msg = msg.."\n"
		local msg = msg.."                <@entermap *01* →『进入暗殿』←> \n\n"
		local msg = msg.."                 消耗绑定元宝:#COLORCOLOR_GREENG#500#COLOREND# \n"
		return msg
	else
		local msg = " 	#COLORCOLOR_ORANGE#进入暗殿#COLOREND#    \n" 	
		return msg  --reutnrn NPCTalkAck 弹出任务交接面板
	end
end

function entermap(npc,player)
	local playerName = lualib:Name(player)
	if lualib:GetBindIngot(player) >= 500 then
		lualib:SubBindIngot(player, 500, "暗殿门票",playerName )
		lualib:Player_MapMove(player, "未知暗殿")
	else
		lualib:SysMsg_SendBottomColor(player, "您的绑定元宝不足", 7, 2)
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