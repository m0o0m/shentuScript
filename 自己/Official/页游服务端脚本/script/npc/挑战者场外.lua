local cailiao = "循环魔咒"
local num = 10


function main(npc, player)
	if lualib:GetAllDays(0) - lualib:GetInt(player,"fuben_chushihua") >= 1 then
		lualib:SetInt(player,"fuben_chushihua",lualib:GetAllDays(0)) --记录开启计时的当前天数
		lualib:SetInt(player,"fuben_cishu",0) --今日副本次数初始化
	end
	
	local cishu = 1 --普通玩家每日次数
	if lualib:GetVipLevel(player) > 0 then
		cishu = 3 --vip玩家每日次数
	end
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#挑战场#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "普通玩家每日可进入#COLORCOLOR_YELLOW#1#COLOREND#次。今日你已进入：#COLORCOLOR_RED#"..	lualib:GetInt(player, "fuben_cishu").."/"..cishu.."#COLOREND#次\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@benfu#40#挑战场1#53#86 *01*进入挑战场[40级可进入]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@benfu#45#挑战场2#62#69 *01*进入挑战场[45级可进入]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@benfu#50#挑战场3#27#76 *01*进入挑战场[50级可进入]>\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_GREENG#小提示：进入后打败所有怪物会自动刷新下一波怪物，总共刷新3波，后面波数的怪物能力依次增强，中途退出或死亡都算失败！#COLOREND#\n"
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	msg = msg .. ""
	return msg
end

function guanbi()
	return ""
end

function benfu(npc, player,lv,mapname,x,y)
	local msg = "你想要哪种形式进入？\n\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##IMAGE1902700018#<@benfu1#"..lv.."#"..mapname.."#"..x.."#"..y.." *01*[单人进入]>\n \n \n"
	msg = msg .. "#OFFSET<X:0,Y:5>##IMAGE1902700018#<@benfu2#"..lv.."#"..mapname.."#"..x.."#"..y.." *01*[组队进入]>\n \n \n"
--	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@qingchu *01*[重置副本]>\n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end

function benfu1(npc, player,lv,mapname,x,y)
	local level = lualib:Level(player)
	if level < tonumber(lv) then
		return "等级不够，无法进入！\n \n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	end

	if lualib:GetAllDays(0) - lualib:GetInt(player,"fuben_chushihua") >= 1 then
		lualib:SetInt(player,"fuben_chushihua",lualib:GetAllDays(0)) --记录开启计时的当前天数
		lualib:SetInt(player,"fuben_cishu",0) --今日副本次数初始化
	end

	local cishu = 1 --普通玩家每日次数
	if lualib:GetVipLevel(player) > 0 then
		cishu = 3 --vip玩家每日次数
	end
	
	if lualib:GetInt(player, "fuben_cishu") >= cishu then
		return "今日你不可再进入副本，明日再来吧！\n\n<@guanbi *01*关闭>"
	end

	x = tonumber(x)
	y = tonumber(y)
	
	local dgn = lualib:Map_CreateDgn(mapname, true, 3600)
	if dgn == "" then
		return "副本：创建失败！\n \n<@likai *01*关闭>"
	end

	if lualib:Player_SetDgnTicket(player, dgn) == false then 
		return "您不被许可进入地图！\n \n<@likai *01*关闭>" 
	end
		
	if lualib:Player_EnterDgn(player, mapname, x, y, 3) == false then
		return "进入副本失败！\n \n<@likai *01*关闭>"
	end
	if lualib:HasSkill(player, "乾坤一掷", false) == false then 
		if not lualib:AddSkill(player, "乾坤一掷") == true then
			lualib:Error("进入镇魔殿学习乾坤一掷技能失败！")
		end
		if not lualib:AddItem(player, "技能石（大）", 1, true, "第一次进入镇魔殿赠送技能石道具", player) == true then
			lualib:Error("进入镇魔殿给予技能石道具失败！")
		end
	end
	lualib:SetInt(player,"fuben_cishu",lualib:GetInt(player,"fuben_cishu")+1)
	return ""
end

function benfu2(npc, player,lv,mapname,x,y)
	lv = tonumber(lv)
	if not lualib:Player_IsTeamLeader(player) then
        return "你不是队长！\n \n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
    end
	
	if not lualib:Player_IsTeamLeader(player) then
        return "你不是队长！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

	local members = lualib:Player_GetTeamList(player)
	if members == nil or #members == 0 then
        return "队伍成员为空！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

	local require_distance = 20
	for _, v in pairs(members) do
		local distance = lualib:Distance(v, npc)
		if distance > require_distance then
			if player == v then
				return "您的距离过远！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "队友【"..lualib:Name(v).."】的距离过远！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end

	local require_level = lv
	for _, v in pairs(members) do
		if lualib:Level(v) < require_level then
			if player == v then
				return "您的等级过低，请"..require_level.."级再来！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "队友【"..lualib:Name(v).."】的等级未到"..require_level.."级！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end

--[[	for _, v in pairs(members) do
        for _, _v in pairs(CMap.keys) do
		    if lualib:Player_HasDgnTicket(v, _v) then
                if player == v then
                    return "您已经进入过其它队伍的副本！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
                else
			        return "队友【"..lualib:Name(v).."】已经进入过其它队伍的副本！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
                end
            end
        end
	end--]]

	for _, v in pairs(members) do
		if lualib:GetAllDays(0) - lualib:GetInt(v,"fuben_chushihua") >= 1 then
			lualib:SetInt(v,"fuben_chushihua",lualib:GetAllDays(0)) --记录开启计时的当前天数
			lualib:SetInt(v,"fuben_cishu",0) --今日副本次数初始化
		end
		
		local cishu = 1 --普通玩家每日次数
		if lualib:GetVipLevel(player) > 0 then
			cishu = 3 --vip玩家每日次数
		end
	
		if lualib:GetInt(v, "fuben_cishu") >= cishu then
			if v == player then
				return "你今日不可再进入该副本，明日再来吧！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "队友【"..lualib:Name(v).."】今日不能再进入该副本了！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end

	x = tonumber(x)
	y = tonumber(y)
	
	local dgn = lualib:Map_CreateDgn(mapname, true, 3600)
	if dgn == "" then
		return "副本：创建失败！\n \n<@likai *01*关闭>"
	end
	
	for _, v in pairs(members) do
		if lualib:Player_SetDgnTicket(v, dgn) == false then 
			return "您不被许可进入地图！\n\n<@likai *01*关闭>" 
		end
		if lualib:Player_EnterDgn(v, mapname, x, y, 3) == false then
			return "进入副本失败！\n\n<@likai *01*关闭>"
		end
		if lualib:HasSkill(v, "乾坤一掷", false) == false then 
			if not lualib:AddSkill(v, "乾坤一掷") == true then
				lualib:Error("进入镇魔殿学习乾坤一掷技能失败！")
			end
			if not lualib:AddItem(v, "技能石（大）", 1, true, "第一次进入镇魔殿赠送技能石道具", v) == true then
				lualib:Error("进入镇魔殿给予技能石道具失败！")
			end
		end
		lualib:SetInt(v,"fuben_cishu",lualib:GetInt(v,"fuben_cishu")+1)
    end
	
	return ""
end

function qingchu(npc, player)
	local msg = "重置副本后，可以再次进入副本，重置副本需要#COLORCOLOR_RED#"..num.."个["..cailiao.."]#COLOREND#，你确定重置吗？\n\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@chongzhi *01*[重置副本]>\n"
	
	
	return msg
end
function chongzhi(npc, player)
	
	local cailiao_num = lualib:ItemCountByKey(player, cailiao, true, false, false, 2)
	
	if cailiao_num >= num then
		if lualib:DelItem(player, cailiao, num, 2, "重置挑战场", player) == false then
				lualib:SysMsg_SendPromptMsg(player, "扣除道具失败")
				return "扣除"..cailiao.."失败！"
			else
			lualib:SetInt(player, "fuben_cishu", 0)
		end
	

	else
		return cailiao.."不足"..num.."个，无法重置！"
	
	end
	
	local msg = "重置成功，你可再进入一次挑战场了！\n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	
	
	return msg
end