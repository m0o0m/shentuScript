local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


local rewardTb1 = {{136000,3000},{149000,4000},{163000,4000},{176000,5000},{190000,5000},{217000,6000},{245000,6000},{272000,7000},{313000,8000},{353000,10000}}
local rewardTb2 = {{300000,3000},{330000,4000},{360000,4000},{390000,5000},{420000,5000},{480000,6000},{540000,6000},{601000,7000},{691000,8000},{781000,10000}}
local missionList = {{900,901,902,903,904,905,906,907,908,909},{1000,1001,1002,1003,1004,1005,1006,1007,1008,1009}}
function main(npc,player)


	local playerLevel = lualib:Level(player)
	if not npc_useform(npc,player) then -- 弹出功能性面板 
		local msg = " 	#COLORCOLOR_ORANGE#除魔功勋#COLOREND#    \n" 	
		return msg
	else
		if playerLevel >= 46 then
			
			lualib:ShowFormWithContent(player,"form文件表单","TitleWnd")
		else
			msg = "\n    什么妖魔我没见过！什么鬼怪我没杀过！魔物来吧！我的大刀早已寂寞难耐！\n "
			return msg
		end
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