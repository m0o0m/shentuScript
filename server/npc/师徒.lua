local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/master")

function main(npc, player)
    local msg = "有一种人，孜孜好学，苦求不断，还有一种人，谆谆善诱，好为人师，当他们两人遇到一起的时候，将造就一个动人的传说，英雄――就是这么来的。你想拜师或者收徒吗？\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:2>#  <@AddRelationa *01*「我要了解拜师」>   <@RemoveRelation *01*「解除师徒关系」> \n"
     msg = msg.."#OFFSET<X:0,Y:6>#            <@duihuaa *01*「师徒查询」>            <@duihuab *01*「声望兑换」>\n"
     msg = msg.."#OFFSET<X:0,Y:2>##OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"

    return msg
end


function duihuaa(npc, player)
    local msg = "你可以在我这里查询你的师傅或者徒弟的名字\n"
     msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
     msg = msg.."          <@ShowMaster *01*查询我的师傅>            <@ShowApprentice *01*查询我的徒弟>\n"
     msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:6>#                                        <@main *01*「返回首页」>\n"
    return msg
end

function AddRelationa(npc, player)
    local msg = "#COLORCOLOR_ORANGE#拜师说明:#COLOREND#\n"
     msg = msg.."#COLORCOLOR_RED#⑴：#COLOREND#徒弟的等级必须小于35级才能拜师傅。\n"
     msg = msg.."#COLORCOLOR_RED#⑵：#COLOREND#师傅的等级必须大于等于35级才能收徒弟。\n"
     msg = msg.."#COLORCOLOR_RED#⑶：#COLOREND#达到条件后，由徒弟发起拜师请求，输入要拜的师父昵称。\n"
     msg = msg.."#COLORCOLOR_RED#⑷：#COLOREND#师父在线收到徒弟的请求并回应后，达成师徒关系。\n"
     msg = msg.."#COLORCOLOR_RED#⑸：#COLOREND#一个师父最多同时可以收5个徒弟。\n"
     msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:6>#            <@AddRelation *01*「我要拜师」>            <@main *01*「返回首页」>\n"

    return msg
end

function GainMasterRewarda(npc, player)
    local msg = "#COLORCOLOR_ORANGE#师徒奖励说明:#COLOREND#\n"
     msg = msg.."#COLORCOLOR_RED#⑴：#COLOREND#达成师徒关系后，徒弟在22级之后每升1级，师父都会获得\n"
     msg = msg.."　　相应的声望奖励，直到出师为止！\n"
     msg = msg.."#COLORCOLOR_RED#⑵：#COLOREND#徒弟35级出师，师父获得的声望可以换取勋章\n\n"
     msg = msg.."　　徒弟奖励。\n"
     msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    return msg
end

-----兑换
function duihuab(npc, player)
	local shengwang = get_shengwang(player)
    local msg = "　　如果您收有徒弟，那么在你徒弟22级之后每升1级，您作为师父都会获得相应的声望奖励，直到出师为止！您利用声望可以在我这里兑换各种勋章提升您的能力！\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-4>#你当前的声望值为 【"..shengwang.."】，想兑换那种勋章？\n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."<@xunzhang_a *01*兑换「恩师勋章」>    兑换#COLORCOLOR_GOLD#「恩师勋章」#COLOREND#需要800点声望值！\n"
	msg = msg.."<@xunzhang_b *01*兑换「王师勋章」>    兑换#COLORCOLOR_GOLD#「王师勋章」#COLOREND#需要2000点声望值！\n"
	msg = msg.."                                              #OFFSET<X:0,Y:1>#<@main *01*「返回首页」>\n"
	return msg
end

function xunzhang_a(npc,player)
	local msg = "兑换“恩师勋章”需要800点声望值，你确定兑换吗？\n"
	msg = msg.."<@queding_a *01*确定>\n"
	msg = msg.."<@main *01*返回>\n"
	return msg
end

function queding_a(npc, player)
    local shengwang = get_shengwang(player)
    if shengwang <= 800 then
        return "你的声望值不足800，不能兑换！\n \n<@duihuab *01*返回>\n"
    end

    if lualib:GetBagFree(player) < 1 then
        return "对不起，你的背包已经满了，请清理背包后再来兑换！\n \n<@main *01*「返回」>"
    end
        
    local award_item = "恩师勋章"
    if not lualib:AddSingleItem(player, award_item, 1, 0, "师徒奖励："..award_item, "师徒脚本") then
        return "「领取」失败！\n \n<@main *01*「返回」>"
    end
    
    set_shengwang(player, shengwang - 800)
    return award_item.."「兑换」成功！\n \n<@main *01*「返回」>"
end

function xunzhang_b(npc,player)
	local msg = "兑换“王师勋章”需要2000点声望值，你确定兑换吗？\n"
	msg = msg.."<@queding_b *01*确定>\n"
	msg = msg.."<@main *01*返回>\n"
	return msg
end

function queding_b(npc, player)
    local shengwang = get_shengwang(player)
    if shengwang <= 2000 then
        return "你的声望值不足2000，不能兑换！\n \n<@duihuab *01*返回>\n"
    end

    if lualib:GetBagFree(player) < 1 then
        return "对不起，你的背包已经满了，请清理背包后再来兑换！\n \n<@main *01*「返回」>"
    end
        
    local award_item = "王师勋章"
    if not lualib:AddSingleItem(player, award_item, 1, 0, "师徒奖励："..award_item, "师徒脚本") then
        return "「领取」失败！\n \n<@main *01*「返回」>"
    end
    
    set_shengwang(player, shengwang - 2000)
    return award_item.."「兑换」成功！\n \n<@main *01*「返回」>"
end


------------------------------------------------------------------------------
------------------------------------------------------------------------------
function AddRelation(npc, player)
    if get_master_name(player) ~= "" then
        return "你已经有师傅了。"
    end
    
    local LIMIT_LEVEL = 35    
    if lualib:Level(player) >= LIMIT_LEVEL then
        return "你已经过了拜师的等级。"
    end
    
    if lualib:SysMsg_SendInputDlg(player, 1, "请输入师傅名字：", 30, 14, "InputMasterName", "") == false then
        return "忙着呢，你过会儿再来吧"
    end
    
    return ""
end

function InputMasterName(id, apprentice, master_name)
    local apprentice_name = lualib:Name(apprentice)
    local master = lualib:Player_GetGuid(master_name)
    
    if master == "" then
        lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."不在线。")
        return 
    end
    
    if lualib:Distance(apprentice, master) >= 10 then
        lualib:SysMsg_SendTriggerMsg(apprentice, "咦，我没看到"..master_name.."在这里啊。")
        return
    end
        
    local LIMIT_LEVEL = 35    
    if lualib:Level(master) < LIMIT_LEVEL then
        lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."等级不足!")
        return 
    end
    
    lualib:SysMsg_SendMsgDlg(master, 1, "你确定要接受"..apprentice_name.."为你的徒弟？#BUTTON0#确定#BUTTONEND##BUTTON1#取消#BUTTONEND#", 30, "on_master_ack", apprentice_name)
end

function on_master_ack(dlg_id, master, button_id, apprentice_name)
    local master_name = lualib:Name(master)
    local apprentice = lualib:Player_GetGuid(apprentice_name)
    
    if apprentice == "" then
        lualib:SysMsg_SendTriggerMsg(master, apprentice_name.."不在附近!")
    end
    
    if button_id == 0 then
        if get_master_name(apprentice) ~= "" then
            lualib:SysMsg_SendTriggerMsg(master, apprentice_name.."已经有师傅了!")
            return
        end
    
        if get_apprentice_num(master) >= 5 then
            lualib:SysMsg_SendTriggerMsg(master, "您的徒弟已满!")
            lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."徒弟已满!")
            return
        end
        
        add_apprentice(master, apprentice, apprentice_name)
        set_master_name(apprentice, master_name)
        
        lualib:SysMsg_SendTriggerMsg(master, apprentice_name.."成了你的徒弟")
        lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."成了你的师傅")
    else
        lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."拒绝了您的拜师请求!")
    end
end

function RemoveRelation(npc, player)
    local msg = "#COLORCOLOR_RED#⑴：#COLOREND#如果您觉得现在的徒弟品行不好，偷懒耍滑，可以将他逐出\n"
    msg = msg.."　　师门。\n"
    msg = msg.."#COLORCOLOR_RED#⑵：#COLOREND#如果您觉得现在的师傅师德不佳，想改投他门，或者想恢复\n"
    msg = msg.."　　自由之身，请选择退出师门\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."         <@DropApprentice *01*「逐出师门」>                <@DropMaster *01*「退出师门」>\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:6>#                                            <@main *01*「返回首页」>"
    return msg
end

function DropMaster(npc, player)
    local master_name = get_master_name(player)
    
    if master_name == "" then
        return "你没有师傅\n".."<@main *01*返回>"
    end

    local msg = "需要缴纳5W金币, 欺师灭祖\n\n"
    msg = msg.."<@DropMasterConfirm#"..master_name.." *01*确认>\n"
    msg = msg.."<@main *01*取消>\n"

    return msg
end

--徒弟离开师父需要缴纳5W金币。
function DropMasterConfirm(npc, apprentice, master_name)
    if not lualib:SubGold(apprentice, 50000, "扣金币：离开师门", "师徒脚本") then 
        return "扣除金币失败！\n \n<@main *01*「返回」>" 
    end

    set_master_name(apprentice, "")
	
	local apprentice_name = lualib:Name(apprentice)
    lualib:SysMsg_SendBroadcastMsg(apprentice_name.." 欺师灭祖, 脱离 "..master_name.." 自立门户啦!", "系统消息")
    lualib:ScriptFuncToPlayer(master_name, "师徒", "on_apprentice_drop_master", apprentice.."#"..apprentice_name)
    
    return ""
end

function on_apprentice_drop_master(player, apprentice, apprentice_name)
    remove_apprentice(player, apprentice)
end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
function DropApprentice(npc, player)
    if get_apprentice_num(player) <= 0 then
        return "您没有徒弟\n".."                                <@main *01*返回>"
    end

    local app_t = get_apprentices(player)
    local msg = "徒弟列表\n"
    
    for k, v in pairs(app_t) do
        msg = msg.."<@DropApprenticeOne#"..k.."#"..v.." *01*"..v..">\n"
    end

    return msg
end

--师父开除徒弟需要缴纳10W金币
function DropApprenticeOne(npc, player, apprentice, apprentice_name)
    local msg = "缴纳10W金币, 确定将 "..apprentice_name.." 逐出师门?\n"
    msg = msg.."<@DropApprenticeOneConfirm#"..apprentice.."#"..apprentice_name.." *01*确认>\n"
    msg = msg.."<@main *01*取消>\n"

    return msg
end

function DropApprenticeOneConfirm(npc, master, apprentice, apprentice_name)
    if not lualib:SubGold(master, 100000, "扣金币：逐出师门", "师徒脚本") then 
        return "扣除金币失败！\n \n<@main *01*「返回」>" 
    end
    
    local master_name = lualib:Name(master)

    lualib:SysMsg_SendBroadcastMsg(apprentice_name.." 被 "..master_name.."逐出师门!", "系统消息")
    remove_apprentice(master, apprentice)
    lualib:ScriptFuncToPlayer(apprentice_name, "师徒", "on_master_drop_apprentice", master.."#"..master_name)

    return ""
end

function on_master_drop_apprentice(player, master, master_name)
    local cur_master_name = get_master_name(player)
    if cur_master_name == master_name then
        set_master_name(player, "")
    end
end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
function ShowMaster(npc, player)
    local master_name = get_master_name(player)
    if master_name == "" then
        return "您没有师傅\n".."                                <@duihuaa *01*返回>"
    end
    
    return master_name
end

function ShowApprentice(npc, player)
    if get_apprentice_num(player) <= 0 then
        return "您没有徒弟\n".."                                <@duihuaa *01*返回>"
    end

    local app_t = get_apprentices(player)
    msg = "徒弟列表\n"
    
    for k, v in pairs(app_t) do
        msg = msg.."<@ShowApprenticeOne *01*"..v..">\n"
    end

    return msg
end

function ShowApprenticeOne(npc, player)
    return ""
end

function DestroyData(npc, player)
    set_master_name(player, "")
    lualib:SetStr(player, "apprentices", "")
    set_last_master_name(player, "")
    
    set_shengwang(player, 0)
    set_chushi(player, 0)
    set_master_reward_count(player, 0)
    set_apprentice_reward(player, 0)
        
    return "师徒数据清理成功"
end

