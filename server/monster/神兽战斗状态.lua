function on_create(monster)
	lualib:AddTrigger(monster, 371, "in_fight")
	lualib:AddTrigger(monster, 372, "out_fight")
end

function in_fight(monster)
	lualib:AddBuff(monster, "神兽定身播放", 0)
lualib:SysMsg_SendBroadcastMsg("啊啊哈动画动画", "道具何发动机会")
end

function out_fight(monster)
	lualib:AddBuff(monster, "神兽定身播放", 0)
lualib:SysMsg_SendBroadcastMsg("啊啊哈动画动画", "道具何发动机会")
end