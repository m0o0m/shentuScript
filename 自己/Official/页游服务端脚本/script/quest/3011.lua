--任务成功接取回调
--quest_id 任务id
function on_accept(player, quest_id)
			lualib:SysMsg_SendPromptMsg(player, "请充值获得至少100元宝，打开商城购买道具【100元宝】！")
    return true
end