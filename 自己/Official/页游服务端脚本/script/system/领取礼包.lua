local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/礼包激活码")

function libao_xianshi(player)
	ShowTimeCount2(player, 0, 1903800042, "领取礼包",0,"领取礼包") --显示目标图标
end

function libao_dianji(player)
	libao_xianshi(player) --显示图标
	local msg = "\n#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━领取礼包━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n"
    msg = msg .."通过网站、活动、媒体等方式获得了道具礼包激活码，请点击输入领取。激活码区分大小写，且复制时不要复制到空格\n \n"
	msg = msg .."#OFFSET<X:30,Y:0>##IMAGE1902700031#<@jihuoma_lingqulibao *01*激活码领取礼包>\n \n"
    --msg = msg .."#OFFSET<X:300,Y:0>##IMAGE1902700031#<@fengce *01*领取封测礼包>\n"
    msg = msg .."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n\n\n"
    msg = msg .."#OFFSET<X:520,Y:0>##IMAGE1902700034#<@guanbi *01*关闭>"
	return lualib:NPCTalk(player,msg)
end

function guanbi(player)
    return ""
end

function fengce(player)
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	if times < StartServerTime_int then
		return "现在正在处于开服前常规测试阶段无法领取！"
	end

	local account_Name = tostring(lualib:AccountName(player))
	
	if not lualib:IO_CheckTextInFile("fengcehuikui.txt", account_Name) then
		return "你在封测区没有达到40级或已经领取过礼包，无法领取！"
	end
	
	if lualib:Player_GetBagFree(player) < 1 then
		return "请留出一个包裹位置！"
	end
	
	if not lualib:IO_TextFileDeleteLineStr("fengcehuikui.txt", account_Name) then
		return "校验激活码失败！"
	end
	
	if not lualib:AddItem(player, "封测冲级礼包35级", 1, true, "封测冲级礼包35级", player) then
		return "添加封测冲级礼包失败！"
	end

    return "领取成功！"
end

function jihuoma_lingqulibao(player)
    if lualib:SysMsg_SendInputDlg(player, 1, "请输入网站上领取的激活码或推广员ID：", 60, 19, "InputJhCallback", "") == false then
	    lualib:SysMsg_SendPromptMsg(player, "输入「取消」中，请稍候再试！")
    end
    return ""
end

function InputJhCallback(id, player, str, npc)
    local accountid = lualib:Player_GetAccountID(player)
    local serverid = lualib:GetZoneId()
    local groupid = lualib:GetGroupId()
    local code = str
    
    if q_group[code] == 1 then
        local jianyan = lualib:GetInt(player, "q_group")
        if jianyan ~=1 then
            give_gift(player, "q_group")
        else
            lualib:MsgBox(player,"你已经领过此礼包！")
            return 
        end
    elseif q_sign[code] == 1 then
        local jianyan = lualib:GetInt(player, "q_sign")
        if jianyan ~=1 then
            give_gift(player, "q_sign")
        else
            lualib:MsgBox(player,"你已经领过此礼包！")
            return 
        end
    elseif huiz_p[code] == 1 then
        local jianyan = lualib:GetInt(player, "huiz_p")
        if jianyan ~=1 then
            give_gift(player, "huiz_p")
        else
            lualib:MsgBox(player,"你已经领过此礼包！")
            return 
        end
    elseif hangh_p[code] == 1 then
        local jianyan = lualib:GetInt(player, "hangh_p")
        if jianyan ~=1 then
            give_gift(player, "hangh_p")
        else
            lualib:MsgBox(player,"你已经领过此礼包！")
            return 
        end
    elseif p_265g[code] == 1 then
        local jianyan = lualib:GetInt(player, "p_265g")
        if jianyan ~=1 then
            give_gift(player, "p_265g")
        else
            lualib:MsgBox(player,"你已经领过此礼包！")
            return 
        end
    elseif p_07073[code] == 1 then
        local jianyan = lualib:GetInt(player, "p_07073")
        if jianyan ~=1 then
            give_gift(player, "p_07073")
        else
            lualib:MsgBox(player,"你已经领过此礼包！")
            return 
        end
    elseif bfyx[code] == 1 then
        local jianyan = lualib:GetInt(player, "bfyx")
        if jianyan ~=1 then
            give_gift(player, "bfyx")
        else
            lualib:MsgBox(player,"你已经领过此礼包！")
            return 
        end
    else
        lualib:MsgBox(player,"激活码错误！")
        return
    end
end

function give_gift(player, types)
    local gift_table = 
    {
    ["q_group"] = "QQ群礼包", 
    ["q_sign"] = "QQ签名活动礼包", 
    ["huiz_p"] = "会长礼包", 
    ["hangh_p"] = "行会礼包", 
    ["p_265g"] = "265g礼包", 
    ["p_07073"] = "07073礼包", 
    ["bfyx"] = "北方游戏网礼包", 
    }
	local msg = ""
    if gift_table[types] == nil or gift_table[types] == "" then
        msg = "系统异常！\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
        return lualib:NPCTalk(player, msg)
    end
    
    local bagfree = lualib:BagFree(player, true, false, false)
    if bagfree < 1 then
        msg = "包裹空间不足，需要1个包裹位置！\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
        return lualib:NPCTalk(player, msg)
    end
    if lualib:AddItem(player, gift_table[types], 1, true, "激活码领取礼包", player) == true then
        lualib:SetInt(player, types, 1)
    else
        msg = "添加道具失败！\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
        return lualib:NPCTalk(player, msg)
    end
    
    msg = "恭喜你，领取"..gift_table[types].."成功！\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"

    return lualib:NPCTalk(player,msg)
end