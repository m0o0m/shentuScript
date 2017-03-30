function main(npc,player) 
	local msg = ""
	if npc_useform(npc, player) then
		openDlg(player)
	else
		msg = "弹任务面板"
	end
	return msg
end

function npc_useform(sNpcID , sPlayerID)
	--1 npc_bind quest
	--2 the quest id player have could submit , player could accept quest id
	--3 compare see if there is a match, if no match useFuncForm = false
	local useFuncForm = true
	local npc_accept_arr = {}
	local npc_accomplish_arr = {}
	bindTable = lualib:Npc_GetBindQuests(sNpcID)
	--if not bindTable or #bindTable == 0 then return true end
	if bindTable ~= nil and #bindTable ~= 0 then
		--local str = serialize(bindTable)
		--lualib:SysPromptMsg(sPlayerID, str)
		--lualib:Debug("table  = "..str)
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
	else
		return true
		
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


function openDlg(player)
	local complete = lualib:GetInt(player, "fengmo")
	if complete == 0 then 
		local totalExp = lualib:GetInt(player, "TotalOfExp");
		local getExp = lualib:GetInt(player, "exp");
		local loseExp = totalExp - getExp;
		--lualib:SysPromptMsg(player, ""..getExp);
		if getExp ~= 0 then 
			local TABLE =
			{
				{0, 0, 1, 2, 3, 4},
				{0,500, 1100, 1800, 2600, 5000},
			}
			local vip_level = lualib:GetVipLevel(player);
			
			local ingot = lualib:GetIngot(player);
			local grade = 0 
			for i = 1, 6 do 
				if vip_level >= TABLE[1][i] then 
					grade = i
					--[[
					if ingot >= TABLE[2][i] then 
						grade = i
					end
					--]]
				end
			end
			local index = 2  --1是打开功能面板,index=2时打开领奖面板,3是经验值提示框
			local lostExp = lualib:GetInt(player, "lostExp");
			lualib:ShowFormWithContent(player, "form文件表单", "PreventMonster#".. index .."#"..getExp.."#"..loseExp.."#"..grade)
			return msg
		end
		local sum = 3
		local cost = lualib:GetDayInt(player, "fengmo_count")
		local remain = sum - cost 
		--lualib:SysPromptMsg(player, "cost"..cost)
		local index = 1  --1是打开功能面板,index=2时打开领奖面板,3是经验值提示框
		lualib:ShowFormWithContent(player, "form文件表单", "PreventMonster#".. index .."#"..remain)
	end
end