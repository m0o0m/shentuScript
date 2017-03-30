--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then	
		lualib:SetDBStr("nowActivityName", "谁与争锋   12:40 - 13:20")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)	
		lualib:SysMsg_SendBoardMsg("0", "[谁与争锋]", "#COLORCOLOR_YELLOW#[谁与争锋]已开放！", 15000)
		lualib:SetDBStr("syzf_informed","hasnot")
		lualib:SetStr("", "谁与争锋参与玩家","")
        local dgn = lualib:Map_CreateDgn("谁与争锋", true, 2580)
        if dgn == "" then
            lualib:Error("副本：谁与争锋场创建失败！")
            return
        end
        lualib:Debug("副本：谁与争锋创建成功！")
			
		--lualib:Map_GenNpc(dgn, "谁与争锋", 60, 67, 1, 4)
        lualib:Map_SetCustomVarStr(map, "active_stzf_dgn", dgn)
		lualib:SetInt(map, "stzf_time", lualib:GetAllTime())
		
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("玩家活动传送:playerMoveMagic7", "")
  
	else
		lualib:SysMsg_SendBoardMsg("0", "[谁与争锋]", "#COLORCOLOR_YELLOW#[谁与争锋]还有"..math.floor(times / 60000).."分钟开始入场！", 15000)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
        lualib:Map_SetCustomVarStr(map, "active_stzf_dgn", "")
		--lualib:SysMsg_SendBoardMsg("0", "[谁与争锋]", "#COLORCOLOR_YELLOW#[谁与争锋]已结束入场！", 15000)
		local str = lualib:GetStr("", "谁与争锋参与玩家")
		local tb = {}
		if str ~= "" then
			tb = json.decode(str)
			for i = 1, #tb do
				if lualib:Mail("谁与争锋参与奖励", tb[i], "您参与本期谁与争锋活动，这是您的奖励，请收好", 0, 0, {"金砖小", 3, 1}) then
					
				end
			end
			lualib:SetStr("", "谁与争锋参与玩家","")
		end

		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
		
    else
		lualib:SysMsg_SendBoardMsg("0", "[谁与争锋]", "#COLORCOLOR_YELLOW#[谁与争锋]将在"..math.floor(times / 60000).."分钟后结束入场！", 15000)
    end
end

function Goto(id,player,map)
	local x = 94
	local y = 127
	local r = 3
	local map_key_name = "土城"
	local gold = 0
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	
	--lualib:Player_NpcMove(player, "土城谁与争锋",2) then
	lualib:Player_MapMoveXY(player, map_key_name, x, y, r)
	
	return ""
end