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
		lualib:SetDBStr("nowActivityName", "����֮��   16:00 - 16:15")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)
		--lualib:SysMsg_SendBoardMsg("0", "[]", "[����֮��]�ѿ��ţ�", 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#����֮���ѿ����������������֮��NPC�����롣#COLOREND#", 11, 2)
        local dgn = lualib:Map_CreateDgn("����֮��", true, 15*60)
        if dgn == "" then
            return
        end
        lualib:SetStr(map, "active_lhzr_map", dgn)
		local curTime =  lualib:Str2Time(lualib:Now())
		lualib:SetInt(dgn, "����֮��dc", curTime)
		
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("��һ����:playerMoveMagic3", "")
    else
		--lualib:SysMsg_SendBoardMsg("0", "[����֮��]", "[����֮��]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴӹ�Ĺ����[232.240]���룡", 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[����֮��]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴ���������֮��NPC�����룡#COLOREND#", 11, 2)
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
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[����֮��]�ѹرգ�#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
    else
		--lualib:SysMsg_SendBoardMsg("0", "[����֮��]", , 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[����֮��]����"..math.floor(times / 60000).."���Ӻ�رգ�#COLOREND#", 11, 2)

    end
end


function Goto(id,player,map)
if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	local level = lualib:Level(player)
	local vip_lv = lualib:GetVipLevel(player)
	if level >= 50 then
		lualib:Player_NpcMove(player, "����֮��", 3)
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"Campaign\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str .."end\n"
		lualib:ShowFormWithContent(player,"�ű���",str)
	else 
		lualib:ShowFormWithContent(player,"�ű���","Campaign.msg(\"�ȼ�����\")" )
	end
	return ""
end