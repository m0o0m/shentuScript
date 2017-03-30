local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function on_start(id, map)
	return ""
end


function on_start_decl(id, map, times)
    local times = tonumber(times)
    if times == 0 then
		lualib:SetDBStr("nowActivityName", "龙魂之刃   16:00 - 16:15")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)
		--lualib:SysMsg_SendBoardMsg("0", "[]", "[龙魂之刃]已开放！", 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#龙魂之刃已开启，请从龙城龙魂之刃NPC处进入。#COLOREND#", 11, 2)
        local dgn = lualib:Map_CreateDgn("龙魂之刃", true, 15*60)
        if dgn == "" then
            return
        end
        lualib:SetStr(map, "active_lhzr_map", dgn)
		local curTime =  lualib:Str2Time(lualib:Now())
		lualib:SetInt(dgn, "龙魂之刃dc", curTime)
		
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("玩家活动传送:playerMoveMagic3", "")
    else
		--lualib:SysMsg_SendBoardMsg("0", "[龙魂之刃]", "[龙魂之刃]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从古墓守卫[232.240]进入！", 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[龙魂之刃]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从龙城龙魂之刃NPC处进入！#COLOREND#", 11, 2)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBStr("nowActivityName", "")
		lualib:SetDBNum("ActivityUnderway", 0)
        lualib:SetStr(map, "active_lhzr_map", "")
		lualib:SetDBStrEx("lhzr_item_t", "", 0)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[龙魂之刃]已关闭！#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
    else
		--lualib:SysMsg_SendBoardMsg("0", "[龙魂之刃]", , 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[龙魂之刃]将在"..math.floor(times / 60000).."分钟后关闭！#COLOREND#", 11, 2)

    end
end


function Goto(id,player,map)
if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	local level = lualib:Level(player)
	local vip_lv = lualib:GetVipLevel(player)
	if level >= 50 then
		lualib:Player_NpcMove(player, "龙魂之刃", 3)
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"Campaign\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str .."end\n"
		lualib:ShowFormWithContent(player,"脚本表单",str)
	else 
		lualib:ShowFormWithContent(player,"脚本表单","Campaign.msg(\"等级不足\")" )
	end
	return ""
end