
function main(npc, player)
    local msg = "有一种情绪自亘古而来，奔涌于灵魂深处，无人不战栗！有一种欲望山不断，水不能隔，雷击不灭，无人可逃避！辗转反侧，长夜难眠，只等戒指戴上你的无名指！带着你的伴侣，拿上求婚戒指，就可以在我这里结成连理\n \n"
    msg = msg.."<@propose *01*我要求婚>\n"
    msg = msg.."<@divorce *01*协议离婚>\n"
    msg = msg.."<@force_divorce *01*强制离婚>\n"
	msg = msg.."<@leave *01*离开>"
    return msg
end

function leave(...)
	return "";
end

function propose(npc, player)
    -- 判断性别，求婚的总该是男的
    if lualib:Gender(player) ~=  lua_gender_male then
        return "求婚这事儿，女孩儿还是矜持点好。\n\n<@leave *01*离开>"
    end

    -- 判断婚否
    if lualib:GetStr(player, "配偶GUID") ~= "" then
        return "重婚可是犯法的。\n\n<@leave *01*离开>"
    end

    if lualib:ItemCount(player, "求婚戒指") < 1 then
       return "求婚戒指都没准备好就想求婚？\n\n<@leave *01*离开>"
    end

    -- 条件符合，询问结婚对象
    lualib:ShowForm(player, "求婚表单")
    return ""
end

function divorce(npc, player)
    local spouse = lualib:GetStr(player, "配偶姓名")
    if spouse == "" then
        return "你还没结婚呢。"
    end

    -- 判断对方是否在线
    local spouse_guid = lualib:Player_GetGuid(spouse)
    if spouse_guid == "" or lualib:Distance(player, spouse_guid) > 10 then
        return "咦，我没看到"..spouse.."在这里啊。"
    end

    local player_name = lualib:Name(player)
    if lualib:SysMsg_SendMsgDlg(spouse_guid, 1, "你确定要和"..player_name.."离婚吗？#BUTTON0#确定#BUTTONEND##BUTTON1#取消#BUTTONEND#", 30, "on_divorce_ack", player_name) == false then
        return "忙着呢，你过会儿再来吧"
    end

	return "您向对方发出了协议离婚请求，请等待对方回应！"
end

function force_divorce(npc, player)
    local spouse = lualib:GetStr(player, "配偶姓名")
    if spouse == "" then
        return "你还没结婚呢。"
    end

    lualib:SysMsg_SendMsgDlg(player, 1, "你确定要和"..spouse.."离婚吗？#BUTTON0#确定#BUTTONEND##BUTTON1#取消#BUTTONEND#", 30, "on_force_divorce_ack", spouse)
end

function on_divorce_ack(dlg_id, player, button_id, spouse)
	button_id = tonumber(button_id)
	
	local spouse_guid = lualib:Name2Guid(spouse)
    if button_id ~= 0 then
		lualib:SysMsg_SendTriggerMsg(spouse_guid, "对方拒绝离婚。")
		lualib:SysMsg_SendTriggerMsg(player, "你拒绝了离婚！")
        return "对方拒绝离婚。"
    end
	
    lualib:SetStr(player, "配偶姓名", "")
    lualib:SetStr(player, "配偶GUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, "你和"..spouse.."离婚了。")
    lualib:NotifyVar(player, "配偶姓名")
    lualib:ScriptFuncToPlayer(spouse, "结婚", "on_divorce", "")

    return ""
end

function on_force_divorce_ack(dlg_id, player, button_id, spouse)
    if button_id ~= 0 then
        return ""
    end

    lualib:SetStr(player, "配偶姓名", "")
    lualib:SetStr(player, "配偶GUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, "你和"..spouse.."离婚了。")
    lualib:NotifyVar(player, "配偶姓名")
    lualib:ScriptFuncToPlayer(spouse, "结婚", "on_divorce", "")

    return ""
end

function on_divorce(player)
    local spouse = lualib:GetStr(player, "配偶姓名")
	
    lualib:SetStr(player, "配偶姓名", "")
    lualib:SetStr(player, "配偶GUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, spouse.."和你离婚了。")
    lualib:NotifyVar(player, "配偶姓名")
end


function marry_unload(player)
    lualib:SetInt(player, "intimacy", 0)
end