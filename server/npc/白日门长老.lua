

function main(npc, player)
	local Quest_Id = lualib:GetInt(player, "Quest_Shield")
	
	---------------------------------------第31步：掀开迷雾见富商
	if Quest_Id == 224 then		
		local msg = [[
		四下分散的护体元神，大致已经归位。
		英雄众神也刚好都在我这边休息。
		他们都已经听说了你的事情，都非常愿意传授你武学护体神盾。
		现在是时候，让这些神技出现在玛法大陆了。			
		]]
		msg = msg.."\n"
		msg = msg.."<@TY_LQSY *01*领取护体神盾>　　　　　<@CREATEHERO *01*创建英雄>\n\n"
		msg = msg.."<@TY_FHMF *01*返回玛法大陆>\n\n"
		return msg			
		
	end
	
	local msg = [[
	快点返回玛法大陆吧！那边需要你们！
	]]
	msg = msg.."\n"
	msg = msg.."<@TY_FHMF *01*返回玛法大陆>\n\n"
	return msg	
end

function leave()
	return ""
end

function CREATEHERO(npc, player)
	if lualib:GetInt(player, "227") == 1 then				------领取后设为0
		local msg = [[
		恭喜您可以带领您的英雄去闯荡玛法大陆了，
		您想带领哪位英雄呢？
		]]
		msg = msg.."\n"		
		
		msg = msg.."<@CH_EX#1 *01*男战士>　　　　　<@CH_EX#3 *01*男法师>　　　　　<@CH_EX#5 *01*男道士>\n\n"
		msg = msg.."<@CH_EX#2 *01*女战士>　　　　　<@CH_EX#4 *01*女法师>　　　　　<@CH_EX#6 *01*女道士>\n\n"
		msg = msg.."<@main *01*返回>\n\n"		
		return msg
	else
		return "你没有资格领取英雄，或你已经领过英雄！"
	end
	
	return ""
end

function CH_EX(npc, player, int)
	lualib:InputDlg(player, 1, "输入你的英雄的名称", 60, 14, "CreateHeroInput", index)
    return ""
end


function CreateHeroInput(id, player, input, index)
	local index = tonumber(index)
	local hero_ = 
	{
		{"英雄（男战士）", 1, 1},
		{"英雄（女战士）", 1, 2},
		{"英雄（男法师）", 2, 1},
		{"英雄（女法师）", 2, 2},
		{"英雄（男道士）", 3, 1},
		{"英雄（女道士）", 3, 2},
	}	
	lualib:CreateHeroForPlayer(player, string.trim(input), hero_[index][2], hero_[index][3],  "CreateHeroResult", string.trim(input))
	lualib:SetInt(player, "227", 0)
	return ""
end

function CreateHeroResult(player, err, name)
    if err == 0 then
        lualib:SysWarnMsg(player, "创建英雄"..name.."成功")
    else
        lualib:SysWarnMsg(player, "创建英雄"..name.."失败，错误码是"..err)
    end
end


function TY_LQSY(npc, player)	
	if lualib:GetInt(player, "IsReceive") == 1 then
		local msg = [[
		你已经领过一次护体神盾了！不能再领了！
		]]
		msg = msg.."\n"
		msg = msg.."<@main *01*返回>\n\n"
		return msg
	else
		if lualib:AddItem(player, "英雄护体神盾", 1, true, "", "") then
			local p_name = lualib:Name(player)
			lualib:SysMsg_SendBroadcastMsg("恭喜："..p_name.."，通过重重试炼成功解救出护体元神,获得上古神技‘护体神盾’！", "")
			lualib:SetInt(player, "IsReceive", 1)
			
			local msg = [[
			跟随你的英雄都是白日门最优秀的精英，
			他们都可以掌握白日门特有的各种魔法技能。
			不过很多白日门的技能书都在一场灾难中被毁得残破不堪，
			现在只剩下一些零散的书页，
			而且其中的很多书页已经流散的玛法的各处很难凑齐。
			去找白日门的龙人，
			他也许能从残留的书页里找到一些技能秘籍
			]]
			msg = msg.."\n"
			msg = msg.."<@TY_FHMF *01*好的，我这就去找他>\n\n"
			return msg			
		else
			return "领取失败！请检查背包有足够的空间！"
		end
	end
		
end

function TY_FHMF(npc, player)	
	local map_k = "龙城"
	local x, y = 248, 273
	lualib:Player_MapMoveXY(player, map_k, x, y, 5)			
	return ""

end


