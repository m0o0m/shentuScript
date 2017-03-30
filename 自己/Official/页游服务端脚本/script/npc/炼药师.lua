local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/level_gold_exp")

Coe = 0.4
lvl = 8
yaobaoKey   = "疗伤药包"
yaobaoKey_2   = "小特制疗伤药"
yaobaoKey_3   = "中特制疗伤药"
zssKey   = "转生石"
zhsKey   = "召唤石"
exchangeTbl =
	{
		{["yl"] = 1,  ["yb"] = 1 },
		{["yl"] = 2,  ["yb"] = 2 },
		{["yl"] = 5,  ["yb"] = 5 },
		{["yl"] = 20, ["yb"] = 20},
		{["yl"] = 50, ["yb"] = 50}
	}
	
exchangeTbl_2 =
	{
		{["yl"] = 2,  ["yb"] = 1 },
		{["yl"] = 4,  ["yb"] = 2 },
		{["yl"] = 20,  ["yb"] = 5 },
		{["yl"] = 40, ["yb"] = 20},
		{["yl"] = 100, ["yb"] = 50}
	}
	
exchangeTbl_3 =
	{
		{["yl"] = 4,  ["yb"] = 1 },
		{["yl"] = 8,  ["yb"] = 2 },
		{["yl"] = 20,  ["yb"] = 5 },
		{["yl"] = 80, ["yb"] = 20},
		{["yl"] = 200, ["yb"] = 50}
	}
	
exchangeTbl_zss =
	{
		{["yl"] = 1,  ["zss"] = 1 },
		{["yl"] = 2,  ["zss"] = 2 },
		{["yl"] = 5,  ["zss"] = 5 },
		{["yl"] = 20, ["zss"] = 20},
		{["yl"] = 50, ["zss"] = 50}
	}

exchangeTbl_zhs =
	{
		{["yl"] = 1,  ["zhs"] = 50 },
		{["yl"] = 2,  ["zhs"] = 100 },
		{["yl"] = 5,  ["zhs"] = 250 },
		{["yl"] = 20, ["zhs"] = 1000},
		{["yl"] = 50, ["zhs"] = 2500}
	}

local talk_t = {"疗伤药是这个世界最顶级的灵药。", "炼制药灵可以用来兑换疗伤药包哦。", "炼药获得药灵需要时间哦，你需要提前准备。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 280000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = ""

	if lualib:Level(player) < lvl then
		msg = msg .. "您的等级未达到" .. lvl .. "级，不能进行炼药\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                      #OFFSET<X:0,Y:0>#<@Leave      *01*「离开」>"
		return msg
	end

    msg = msg .. "成神之途，渺渺茫茫，但追求的心永不改变。\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n"
    msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@Query      *01*[查询与兑换药灵]>\n"
    msg = msg .. "#OFFSET<X:0,Y:1>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@Ly         *01*[申请炼药]>\n"
	msg = msg .. "#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@GetReward  *01*[领取奖励]>\n"
	msg = msg .. "#OFFSET<X:0,Y:1>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@Rule       *01*[炼药规则]>\n \n"
	msg = msg .. "                                                  #OFFSET<X:0,Y:-1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave      *01*「离开」>"
    return msg
end

--炼药规则
function Rule(npc, player)
	local msg = ""
	msg = msg .. "1.花费100元宝可以炼药2个小时，可获得大量经验和2点药灵\n"
	msg = msg .. "2.如果一次输入的元宝数量大于5000则可立即获得额外5点药灵\n"
	msg = msg .. "3.如果一次输入的元宝数量大于10000则可立即获得额外10点药灵\n"
	msg = msg .. "4.玩家可以在炼药未结束时领取奖励，但只能获得2小时的整数倍奖励，余下的时间持续累加\n"
	msg = msg .. "5.玩家一次性换取超过24点药灵可额外获得1点药灵\n \n \n"
	msg = msg .. "                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

	return msg
end

--炼药
function Ly(npc, player)
	local msg = ""

	msg = msg .. "天下没有白来的午餐，我炼药的材料是你的诚心以及一点小小的元宝，100元宝我可以为你炼制2个小时，你可以获得大量经验以及药灵，药灵可以在我这里换取珍贵的药品!\n如果一次输入的元宝数量大于5000则可立即获得5点药灵\n如果一次输入的元宝数量大于10000则可立即获得10点药灵\n \n \n"
	msg = msg .. "#OFFSET<X:0,Y:-4>##IMAGE1902700032#<@LyEx#1      *01*[元宝炼药]>\n"
	msg = msg .. "#OFFSET<X:0,Y:-4>##IMAGE<ID:1902700036>#<@LyEx#2      *01*[金币炼药]>\n"
	msg = msg .. "                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main      *01*「返回」>"

	return msg
end

function LyEx(npc, player, types)
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")
	
	
	
	
	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "你的炼药时间异常，已清零  \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end

	local msg = ""
	if types == "1" then
		lualib:SysMsg_SendInputDlg(player, 1, "请输入元宝数量：", 30, 12, "EnterSilver", npc.."#"..types)
	elseif types == "2" then
		lualib:SysMsg_SendInputDlg(player, 1, "请输入金币数量：", 30, 12, "EnterSilver", npc.."#"..types)
	end
	return ""
end

function EnterSilver(id, player, silver, param)
	
	local t = string.split(param, "#")
	local npc, types  = t[1], t[2]
	
	local silver = tonumber(silver)

	local msg = ""
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local curYL     = lualib:Player_GetCustomVarInt(player, "YL")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")
	if curTime <= EndTime then
		msg = msg .. "您当前炼药正在进行，不能开始新的炼药\n \n \n \n \n \n \n"
		msg = msg .. " #IMAGE1902700034##OFFSET<X:0,Y:-2>#<@StopLy     *01*[终止当前炼药]>\n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if TimeConversion(LyTime + (EndTime - BeginTime)).hour >= 2 then
		lualib:NPCTalkEx(npc, player, "你还有"..StrTimeConversion(LyTime + (EndTime - BeginTime)) .."的炼药时间没有领取，请先领取后继续炼药！")
		return true
	end
	
	
	if types == "1" then
		if (silver == nil) then
			msg = msg .. "请输入纯数字\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if (silver == 0 ) then
			msg = msg .. "不能为0\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if (silver <= 0 ) then
			msg = msg .. "必须输入正数！\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if ((silver % 100) ~= 0) then
			msg = msg .. "必须为100的整数倍\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if silver > 100000 then
			msg = msg .. "不能大于100000\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if not lualib:Player_IsIngotEnough(player, silver, false) then
			msg = msg .. "元宝不足\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if lualib:Player_SubIngot(player, silver, false, "炼药师:炼药减元宝", "炼药减元宝") == false then
			lualib:NPCTalkEx(npc, player, "扣除元宝失败")
			return true
		end
		
		lualib:Player_SetCustomVarInt(player, "BeginTime", curTime)
		lualib:Player_SetCustomVarInt(player, "EndTime", curTime + (((silver / 100)*2) * 3600))
		BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
		EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")

		msg = msg .. "您开始了炼药，总共需要进行" .. StrTimeConversion(EndTime - BeginTime) .. "中间任何时间你可以来我这里领取奖励,"

		if silver >= 10000 then
			lualib:Player_SetCustomVarInt(player, "YL", curYL + 10)
			msg = msg .. "由于你的诚心感动了我，额外发送给你10点药灵"
		elseif silver >= 5000 then
			lualib:Player_SetCustomVarInt(player, "YL", curYL + 5)
			msg = msg .. "由于你的诚心感动了我，额外发送给你5点药灵"
		end


		msg = msg .. "\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		lualib:NPCTalkEx(npc, player, msg)
		
	elseif types == "2" then
	
		if (silver == nil) then
			msg = msg .. "请输入纯数字\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if (silver == 0 ) then
			msg = msg .. "不能为0\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if (silver <= 0 ) then
			msg = msg .. "必须输入正数！\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if ((silver % 200000) ~= 0) then
			msg = msg .. "必须为200000的整数倍\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if silver > 200000000 then
			msg = msg .. "不能大于200000000\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if not lualib:Player_IsGoldEnough(player, silver, false) then
			msg = msg .. "金币不足\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*「返回」>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if lualib:Player_SubGold(player, silver, false, "炼药师:炼药减金币", "炼药减金币") == false then
			lualib:NPCTalkEx(npc, player, "扣除金币失败")
			return
		end
		
		lualib:Player_SetCustomVarInt(player, "BeginTime", curTime)
		lualib:Player_SetCustomVarInt(player, "EndTime", curTime + (((silver / 200000)*2) * 3600))
		BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
		EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")

		msg = msg .. "您开始了炼药，总共需要进行" .. StrTimeConversion(EndTime - BeginTime) .. "中间任何时间你可以来我这里领取奖励,"

		if silver >= 20000000 then
			lualib:Player_SetCustomVarInt(player, "YL", curYL + 10)
			msg = msg .. "由于你的诚心感动了我，额外发送给你10点药灵"
		elseif silver >= 10000000 then
			lualib:Player_SetCustomVarInt(player, "YL", curYL + 5)
			msg = msg .. "由于你的诚心感动了我，额外发送给你5点药灵"
		end

		msg = msg .. "\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		lualib:NPCTalkEx(npc, player, msg)
	end
	return true
end

--领取奖励
function GetReward(npc, player)
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")

	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "你的炼药时间异常，已清零\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main      *01*「返回」>"
	end
	
	if curTime < BeginTime then
		BeginTime = curTime
	end
	
	if EndTime - BeginTime > 2000*3600 then
		EndTime = BeginTime
	end
	
	local msg = ""
	if curTime <= EndTime then
		msg = msg .. "当前炼药正在进行"
		msg = msg .. "炼药进行了" .. StrTimeConversion(curTime - BeginTime)
		msg = msg .. "还有" .. StrTimeConversion(EndTime - curTime) .. "可以结束"
		msg = msg .. "\n可以领取" .. TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour .. "小时奖励\n"
		msg = msg .. "奖励有" .. TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour .. "药灵"
		msg = msg .. (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2] .. "经验\n"
		if (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour >= 24) then
			msg = msg .. "由于你的耐心，额外奖励1点药灵\n \n"
		else
			msg = msg .. "少年，你耐心不够啊，如果你在药灵累积到24点以上时再来领取，则可以额外奖励你1点药灵！\n \n"
		end
		msg = msg .. "#OFFSET<X:140,Y:-2>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@StopLy      *01*[终止炼药]>\n\n"
	elseif curTime > EndTime then
		msg = msg .. "当前炼药已停止"
		msg = msg .. "炼药进行了" .. StrTimeConversion(LyTime + (EndTime - BeginTime))
		msg = msg .. "\n可以领取" .. TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour .. "小时奖励\n"
		msg = msg .. "奖励有" .. (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour) .. "药灵"
		msg = msg .. (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2] .. "经验\n"
		if (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour >= 24) then
			msg = msg .. "由于你的耐心，额外奖励1点药灵\n \n"
		else
			msg = msg .. "你的药灵未到24，如果你在炼药达到24时再领取，则可额外奖励1点药灵\n \n"
		end
	end

    msg = msg .. "#OFFSET<X:12,Y:-10>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@GetRewardEx#1 *01*[领取奖励]>"
	msg = msg .. "#OFFSET<X:50,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@beishulingqu#2 *01*[双倍领取]>"
	msg = msg .. "#OFFSET<X:50,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@beishulingqu#3 *01*[三倍领取]>\n\n"
	msg = msg .. "#OFFSET<X:269,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01*「返回首页」>\n"
	return msg
end

function beishulingqu(npc, player, types)
	local types = tonumber(types)
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")
	local msg = ""
	
	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "你的炼药时间异常，已清零\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main      *01*「返回」>"
	end
	
	if curTime < BeginTime then
		BeginTime = curTime
	end
	
	if EndTime - BeginTime > 2000*3600 then
		EndTime = BeginTime
	end
	
	
	if curTime <= EndTime then
		msg = msg.."可以领取" .. TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour .. "小时奖励\n"
		msg = msg..types.."倍领取需要花费".. TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour * 50 * (types - 1).."元宝！\n"
        msg = msg .."可获得"..TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour*types.."药灵#COLORCOLOR_RED#("..types.."倍)#COLOREND#\n"
        msg = msg .."可获得经验"..(TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2].."经验！\n"
		msg = msg.."\n\n#IMAGE1902700031##OFFSET<X:0,Y:-1>#<@GetRewardEx#"..types.." *01*确定领取>\n\n"
        msg = msg .. "#OFFSET<X:250,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	else
		msg = msg .. "可以领取" .. TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour .. "小时奖励\n"
        msg = msg..types.."倍领取需要花费".. TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour * 50 * (types - 1).."元宝！\n"
        msg = msg .."可获得"..TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour*types.."药灵#COLORCOLOR_RED#("..types.."倍)#COLOREND#\n"
        msg = msg .."可获得经验"..(TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2].."经验！\n"
		msg = msg.."\n\n#IMAGE1902700031##OFFSET<X:0,Y:-1>#<@GetRewardEx#"..types.." *01*确定领取>\n\n"
        msg = msg .. "#OFFSET<X:250,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	end
	
	return msg
	
end


function StopLy(npc, player)
	local msg = ""
	msg = msg .. "如果当前炼药正在进行，终止炼药将终止当前正在进行的炼药，不会退还元宝，是否确定？\n \n \n \n \n \n"
	msg = msg .. " #OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@OK       *01*[确定]>\n"
    msg = msg .. "                                                 #OFFSET<X:0,Y:3>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*「返回」>\n"

	return msg
end

function OK(npc, player)
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")
	local msg = ""

	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "你的炼药时间异常，已清零 \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end
	
	if curTime <= EndTime then
		lualib:Player_SetCustomVarInt(player, "LyTime", LyTime + (curTime - BeginTime))
	elseif curTime > EndTime then
		lualib:Player_SetCustomVarInt(player, "LyTime", LyTime + (EndTime - BeginTime))
	end

	lualib:Player_SetCustomVarInt(player, "BeginTime", curTime)
	lualib:Player_SetCustomVarInt(player, "EndTime", curTime)

	msg = msg .. "炼药已终止\n \n \n \n \n \n \n \n"
	msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg
end

function GetRewardEx(npc, player, types)
	local types = tonumber(types)
	local curTime   = lualib:GetAllTime()
	local YL        = lualib:Player_GetCustomVarInt(player, "YL")
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")

	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "你的炼药时间异常，已清零 \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end
	
	if curTime < BeginTime then
		BeginTime = curTime
	end
	
	if EndTime - BeginTime > 2000*3600 then
		EndTime = BeginTime
	end
		
	if curTime <= EndTime then
		if (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour == 0) and ((TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2] == 0) then
			return "当前没有奖励可以领取！\n \n".. "\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
		end
        if lualib:Player_SubIngot(player, (types - 1) * 50 * TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour, false, "炼药多倍领取", player) == false then
            return "扣除元宝失败，请查看是否足够！\n \n".. "\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
        end
		lualib:Player_SetCustomVarInt(player, "BeginTime", BeginTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200)))
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		lualib:Player_AddExp(player, TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour*Coe*level_gold_exp_t[lualib:Level(player)][2], "炼药奖励经验", "炼药奖励经验")
		lualib:Player_SetCustomVarInt(player, "YL", YL + types * (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour))
		if (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour >= 24) then
			lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") + 1)
		end
	elseif curTime > EndTime then
		if (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour == 0) and ((TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2] == 0) then
			return "当前没有奖励可以领取\n \n" .. "\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
        if lualib:Player_SubIngot(player, (types - 1) * 50 * TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour, false, "炼药多倍领取", player) == false then
            return "扣除元宝失败，请查看是否足够！\n \n".. "\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
        end
		lualib:Player_SetCustomVarInt(player, "BeginTime", curTime)
		lualib:Player_SetCustomVarInt(player, "EndTime",   curTime)
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		lualib:Player_AddExp(player, TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour*Coe*level_gold_exp_t[lualib:Level(player)][2], "炼药奖励经验", "炼药奖励经验")
		lualib:Player_SetCustomVarInt(player, "YL", YL + types * (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour))
		if (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour >= 24) then
			lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") + 1)
		end
	end
	local msg = "奖励已兑换\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"

	return msg
end

--查询药灵
function Query(npc, player)
	if lualib:Player_GetCustomVarInt(player, "YL") < 0 then
	lualib:Player_SetCustomVarInt(player, "YL", 0)
	end

	local msg = ""
	msg = msg .. "您当前已领取到药灵为：" .. lualib:Player_GetCustomVarInt(player, "YL") .. "\n \n \n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange   *01*[我要换取疗伤药]>\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange_2   *01*[我要换取小特制疗伤药]>\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange_3   *01*[我要换取中特制疗伤药]>\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange_zss   *01*[我要换取转生石]>\n"
	--msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange_zhs   *01*[我要换取召唤石]>\n"
	msg = msg .. "                                             #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*「返回」>\n"

	return msg
end

function Exchange(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx#" .. k .. "   *01*" .. v.yl .. "  点药灵      换取      " .. v.yb .. " 个疗伤药包>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*「返回首页」>\n"
	return msg
end

function ExchangeEx(npc, player, count)
	local msg = ""
	count = tonumber(count)

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl[count].yl then
		msg = msg .. "您的药灵不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < exchangeTbl[count].yb then
		msg = msg .. "您的背包空间不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl[count].yl)
	lualib:AddItem(player, yaobaoKey, exchangeTbl[count].yb, false, "药灵兑换", "药灵兑换")
	msg = msg .. "已兑换" .. exchangeTbl[count].yl .. "药灵\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"

	return msg
end


--小特制
function Exchange_2(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl_2) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx2#" .. k .. "   *01*" .. v.yl .. "  点药灵      换取      " .. v.yb .. " 个小特制疗伤药包>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*「返回首页」>\n"
	return msg
end

function ExchangeEx2(npc, player, count)
	local msg = ""
	count = tonumber(count)

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl_2[count].yl then
		msg = msg .. "您的药灵不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < exchangeTbl_2[count].yb then
		msg = msg .. "您的背包空间不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl_2[count].yl)
	lualib:AddItem(player, yaobaoKey_2, exchangeTbl_2[count].yb, false, "药灵兑换", "药灵兑换")
	msg = msg .. "已兑换" .. exchangeTbl_2[count].yl .. "药灵\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"

	return msg
end


--中特制
function Exchange_3(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl_3) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx3#" .. k .. "   *01*" .. v.yl .. "  点药灵      换取      " .. v.yb .. " 个中特制疗伤药包>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*「返回首页」>\n"
	return msg
end


function ExchangeEx3(npc, player, count)
	local msg = ""
	count = tonumber(count)

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl_3[count].yl then
		msg = msg .. "您的药灵不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < exchangeTbl_3[count].yb then
		msg = msg .. "您的背包空间不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl_3[count].yl)
	lualib:AddItem(player, yaobaoKey_3, exchangeTbl_3[count].yb, false, "药灵兑换", "药灵兑换")
	msg = msg .. "已兑换" .. exchangeTbl_3[count].yl .. "药灵\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
	return msg
end



--转生石
function Exchange_zss(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl_zss) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx_zss#" .. k .. "   *01*" .. v.yl .. "  点药灵      换取      " .. v.zss .. " 个转生石>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*「返回首页」>\n"
	return msg
end

function ExchangeEx_zss(npc, player, count)
	local msg = ""
	count = tonumber(count)
    local item_count = exchangeTbl_zhs[count].zhs
    local max_stack = lualib:Item_GetStack("转生石")
    local bagfree = (item_count - item_count % max_stack) / max_stack + 1

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl_zss[count].yl then
		msg = msg .. "您的药灵不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < bagfree then
		msg = msg .. "您的背包空间不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl_zss[count].yl)
	lualib:AddItem(player, zssKey, exchangeTbl_zss[count].zss, false, "药灵兑换", "药灵兑换")
	msg = msg .. "已兑换" .. exchangeTbl_zss[count].yl .. "药灵\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"

	return msg
end

--召唤石
function Exchange_zhs(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl_zhs) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx_zhs#" .. k .. "   *01*" .. v.yl .. "  点药灵      换取      " .. v.zhs .. " 个召唤石>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*「返回首页」>\n"
	return msg
end

function ExchangeEx_zhs(npc, player, count)
	local msg = ""
	count = tonumber(count)    
    local item_count = exchangeTbl_zhs[count].zhs
    local max_stack = lualib:Item_GetStack("召唤石")
    local bagfree = (item_count - item_count % max_stack) / max_stack + 1

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl_zhs[count].yl then
		msg = msg .. "您的药灵不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < bagfree then
		msg = msg .. "您的背包空间不足\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl_zhs[count].yl)
	lualib:AddItem(player, zhsKey, exchangeTbl_zhs[count].zhs, false, "药灵兑换", "药灵兑换")
	msg = msg .. "已兑换" .. exchangeTbl_zhs[count].yl .. "药灵\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*「返回」>\n"

	return msg
end

--离开
function Leave(npc, player)
	return ""
end

function TimeConversion(time)
	local  hour    = (time - (time % 3600)) / 3600
	local  minute  = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local  second  = time - (hour * 3600) - (minute * 60)
	local  timeTbl = {["hour"] = hour, ["minute"] = minute, ["second"] = second}
	return timeTbl
end

function StrTimeConversion(time)
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
	local strTime = hour .. "小时" .. minute .. "分钟" .. second .. "秒"
	return strTime
end