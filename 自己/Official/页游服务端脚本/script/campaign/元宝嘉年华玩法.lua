function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		local str = ""
		local a = lualib:Now()
		local start = string.find(a, " ") + 1
		local ending = string.find(a, ":") - 1
		local b = string.sub(a,start, ending)
		if tonumber(b) == 10 or tonumber(b) == 11 then
			str = "元宝嘉年华   11:00 - 11:15"
		elseif tonumber(b) == 15 or tonumber(b) == 14 then
			str = "元宝嘉年华   15:00 - 15:15"
		end
		lualib:SetDBStr("nowActivityName", str)
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[元宝嘉年华]已开启。英雄们请于龙城(69,113)处参与！", 11, 2)
		--lualib:SysMsg_SendBoardMsg("0", "[元宝嘉年华]", "[元宝嘉年华]已开启。英雄们请于龙城(126,134)处参与！", 15000)
		local t_map = lualib:Map_GetMapGuid("土城")
		lualib:Map_GenCampMonster(t_map, 69,113, 1, 8, "元宝BOSS", 1, false, 0)
		
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("玩家活动传送:playerMoveMagic4", "")
    else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[元宝嘉年华]还有"..math.floor(times / 60000).."分钟开启。英雄们请于龙城(69,113)处参与！", 11, 2)
		--lualib:SysMsg_SendBoardMsg("0", "[元宝嘉年华]", "[元宝嘉年华]还有"..math.floor(times / 60000).."分钟开启。英雄们请于龙城(126,134)处参与！", 15000)
    end
end

function up_tip_msg(player, msg, color)
	if color == nil then
		color = "WHITE";
	end
	local str = "LuaUI[\"GameMainBar\"].SendMsg(\""..msg.."\", \""..color.."\")";
	lualib:ShowFormWithContent(player, "脚本表单", str);
end

function on_end_decl(id, map, times)
    times = tonumber(times)
	local t_map = lualib:Map_GetMapGuid("土城")
    if times == 0 then
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
        lualib:Map_RemoveMonster(t_map, "元宝BOSS")
		--lualib:SysMsg_SendBoardMsg("0", "[元宝嘉年华]", "[元宝嘉年华]已结束！", 15000)
		--lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[元宝嘉年华]已结束！", 11, 2)
		
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
    else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[元宝嘉年华]将在"..math.floor(times / 60000).."分钟后结束！", 11, 2)
		--lualib:SysMsg_SendBoardMsg("0", "[元宝嘉年华]", "[元宝嘉年华]将在"..math.floor(times / 60000).."分钟后结束！", 15000)
    end
end

function Goto(id,player,map)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
		return false
	end
	if not lualib:Player_MapMoveXY(player, "土城", 69, 113, 2) then
		lualib:Error("将玩家".. lualib:Name(player) .."传送到土城失败")
	end
end