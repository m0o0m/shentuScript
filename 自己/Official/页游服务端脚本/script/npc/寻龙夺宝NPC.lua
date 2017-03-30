local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function main(sNpcID , sPlayerID)
	if npc_useform(sNpcID, sPlayerID) then
		lualib:ShowFormWithContent(sPlayerID, "form文件表单", "xldb_NPCShow")
		return ""	--return “”  不会发NPCTalkAck 没有任务状态
	else
		--local msg = " 	#COLORCOLOR_ORANGE#物品回收#COLOREND#    \n" 	
		local msg = " 	#COLORCOLOR_ORANGE#任务#COLOREND#    \n" 
		return msg  --reutnrn NPCTalkAck 弹出任务交接面板
	end
	
	
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




function enter(npc, player)
	local level = lualib:Level(player)
	if level < 50 or level >= 200 then return "你的等级不符合要求！" end
	
	
	local dgn_id = lualib:GetStr(lualib:Map_GetMapGuid("龙城"), "xldb_existing_dgn")
	if dgn_id == "" then 
		local str = [[
		
		#COLORCOLOR_GREENG#活动尚未开启，请留意系统公告！#COLOREND#
		]]
		return str
		
	
	end
	
	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
		return "您不被许可进入地图寻龙夺宝！"
    end
	
    if lualib:Player_EnterDgn(player, "寻龙夺宝", 0, 0, 0) == false then
        return "进入地图寻龙夺宝失败！"
    end
	
	
	return ""
end