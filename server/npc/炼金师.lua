function main(npc, player)
	local msg = [[你还不知道吗？元宝释放的能量将给锻造者带来更多的经验
并且，锻造还会带来经验值的附赠品:金刚石
不过用元宝锻造的话，必须每次到我这里来领取
另外，一次性锻造元宝的数量在50到300之间，
或一次性领取满12颗金刚石，都有可能得到神秘礼品！
存在一定几率不能获得这些礼品，你可以去天工神剪查询一下运势！
]]
	msg = msg.."<@info *01*查询元宝锻造规则>　　　　　　　　<@duanzao *01*申请元宝锻造>"
	msg = msg.."<@award *01*领取锻造附赠品:金刚石>　　　　　<@look *01*查询当前拥有的金刚石数量>"
	msg = msg.."<@leave *01*去周围看看>　　　　　　　　　　<@leave *01*关闭>"
	return msg
end

function info(npc, player)
	local msg = [[1、使用元宝申请锻造后，必须到NPC处领取经验值及附赠品:金刚石
2、用于锻造经验值的元宝数量单次申请范围在1~300之间
3、100个元宝可以锻造10分钟，随之赠2颗金刚石
4、使用元宝进行锻造，可以获得更多的经验
5、一次性锻造元宝数在5000到30000之间，将有机会得到一份礼品
6、礼品为系统随机生成，也有不获得的可能性
7、普通锻造不能在申请，已经申请的还可以继续获得经验值及金刚石
]]
	msg = msg.."<@main *01*已了解元宝锻造规则，返回>"
	return msg
end

function look(npc, player)
	local lj_time_end = lualib:GetInt(player, "lj_time_end")
	local lj_start_time = lualib:GetInt(player, "lj_start_time")
	local curTime   = lualib:GetAllTime()
	local lj_yb = lualib:GetInt(player, "lj_yb")
	
	local num = math.floor(curTime - lj_start_time) / 300
	if num < 0 then
		num = 0
	elseif num > lj_yb then
		num = lj_yb
	end
	
	
	local msg = "当前已锻造金刚石数量："..num
	msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end

function duanzao(npc, player)
	local curTime   = lualib:GetAllTime()
	local lj_time_end = lualib:GetInt(player, "lj_time_end")
	local lj_start_time = lualib:GetInt(player, "lj_start_time")
	if lj_time_end > curTime then
		return "你当前正在锻造，请完成后继续！\n                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*「返回」>"
	end
	
	lualib:SysMsg_SendInputDlg(player, 1, "请输入元宝数量：", 30, 12, "EnterSilver", npc)
	return ""
end

function EnterSilver(id, player, silver, npc)
	local msg = ""
	local lj_time_end = lualib:GetInt(player, "lj_time_end")
	local lj_start_time = lualib:GetInt(player, "lj_start_time")
	local curTime   = lualib:GetAllTime()
	if lj_time_end > curTime then
		msg = "你当前正在锻造，请完成后继续！\n                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	local lj_yb = lualib:GetInt(player, "lj_yb")
	if lj_yb > 100 then
		msg = "你还有奖励未领取，请领取后再继续！\n                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
	end
	
	
	local silver = tonumber(silver)
	
	if (silver == nil) then
		msg = msg .. "请输入纯数字\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if (silver == 0 ) then
		msg = msg .. "不能为0\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	
	if (silver <= 0 ) then
		msg = msg .. "必须输入正数！\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	
	if ((silver % 100) ~= 0) then
		msg = msg .. "必须为100的整数倍\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if silver > 30000 then
		msg = msg .. "不能大于30000\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if not lualib:Player_IsIngotEnough(player, silver, false) then
		msg = msg .. "元宝不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if lualib:Player_SubIngot(player, silver, false, "炼金师:炼药减元宝", "炼金师减元宝") == false then
		lualib:NPCTalkEx(npc, player, "扣除元宝失败")
		return true
	end
	
	lualib:SetInt(player, "lj_start_time", curTime)
	lualib:SetInt(player, "lj_time_end", curTime + silver / 100 * 10 * 60)
	lualib:SetInt(player, "lj_yb", silver)
	
	msg = msg .. "您开始了锻造，总共需要进行" .. silver / 100 * 10 .. "，请到时间来领取！\n"
	if silver >= 5000 then
		msg = msg .. "由于你一次性锻造超过5000元宝，锻造结束时可获得额外神秘礼品！"
	end
	lualib:NPCTalkEx(npc, player, msg)
	return true
end

function award(npc, player)
	local lj_time_end = lualib:GetInt(player, "lj_time_end")
	local lj_start_time = lualib:GetInt(player, "lj_start_time")
	local curTime   = lualib:GetAllTime()
	local lj_yb = lualib:GetInt(player, "lj_yb")
	
	if lj_time_end > curTime then
		return "你当前正在锻造，请完成后继续！\n                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*「返回」>"
	end
	
	if lj_yb < 100 then
		return "你没有可领取的奖励！"
	end
	
	lualib:SetInt(player, "lj_yb", 0)
	lualib:SetInt(player, "lj_time_end", 0)
	lualib:SetInt(player, "lj_start_time", 0)
	
	local jgs_num = lj_yb / 50
	local msg = "奖励金刚石"..jgs_num.."个！\n"
	if lj_yb >= 5000 then
		msg = msg.."额外礼品一份"
	end
	lualib:AddItem(player, "金刚石", jgs_num, false, "", "")
	return msg
end
