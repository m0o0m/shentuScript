local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local cailiao = "镇魂笛"

gQuestMap =
{
	{1025, "", "QuestAccomplish1025","", "*01*完成任务: 变的更强"},
	{1026, "QuestAccept1026", "QuestAccomplish1026","*01*任务: 艰辛的试炼", "*01*完成任务: 艰辛的试炼"},
	{1027, "QuestAccept1027", "","*01*任务: 向天机老人告别", ""},
        {2004, "QuestAccept2004", "QuestAccomplish2004","*01*任务: 天天试炼", "*01*完成任务: 天天试炼"},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"试练场不仅仅是用来训练新人的，高等级玩家也可以坚持训练。", "试练场中的怪物虽然攻击不高，但被它们围住了也挺麻烦的。", "试试你一场最多能得到多少个试练凭证如何？"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 210000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
       local a = 0
       local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#试炼教头#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."　　这是勇者的试炼之地，收集试炼场怪物身上掉落的#COLORCOLOR_GREENG#试炼凭证#COLOREND#可以从我这里兑换大量经验！每人每天可进入试炼场三次(每次持续5分钟)，第1次免费，第2次需要#COLORCOLOR_RED#1个镇魂笛#COLOREND#，第3次需要#COLORCOLOR_RED#3个镇魂笛#COLOREND#！\n     #COLORCOLOR_BROWN#此外试炼场内怪物还会有回城卷轴的掉落！#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#─────────────────────────────#COLOREND#\n"
	msg = msg.."　　　#COLORCOLOR_GRAY#╔───────╗　　　╔────────╗#COLOREND#\n"
	msg = msg.."　　　#COLORCOLOR_GRAY#│#COLOREND#<@jump *01*【进入试炼场】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　　　│#COLOREND#<@award *01*【凭证「兑换」】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　　　#COLORCOLOR_GRAY#╚───────╝　　　╚────────╝#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#─────────────────────────────#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#OFFSET<X:0,Y:-4>##IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
                a = 1
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#OFFSET<X:0,Y:-8>##IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
                a = 1
            end
        end
    end
        if a ~= 1 then
        msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@leave *01*「离开」>\n"
end
    return msg
end





function jump(npc, player)

	local level_t = {16, 26, 36, 46, 200}
	local dgn_t = {"初级试炼副本", "中级试炼副本", "高级试炼副本", "超级试炼副本"}
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	local cur_type = 0

	for k, v in pairs(level_t) do
		if level < v then
			cur_type = k - 1
			break
		end
	end

	if dgn_t[cur_type] == nil then return "你的等级不符合试炼条件！\n \n<@main *01*「返回」>" end
       local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#试炼教头#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:1>#　　我可以让你进入试炼副本探险，不过每天只能进入三次哦，第1次进入不需要任何消耗，第2次需要#COLORCOLOR_RED#1个镇魂笛#COLOREND#，第3次需要#COLORCOLOR_RED#3个#COLOREND#镇魂笛！[镇魂笛]可以在<@tiaozhuan *01*老兵>的<@tiaozhuan *01*[老兵商店]>里购买\n"
        msg = msg.."#OFFSET<X:0,Y:1>##OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#重点提示：#COLOREND#怪物掉落的#COLORCOLOR_GOLD#「试炼凭证」#COLOREND#可换取大量的经验!\n"
        msg = msg.."#OFFSET<X:0,Y:1>##OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."　　　　#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@enter#"..cur_type.." *01*「进入试炼」>　　　　　#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

    return msg
end

function tiaozhuan(npc, player)
	if lualib:Player_MapMoveXY(player, "龙城", 238, 221, 0) == true then
		lualib:OpenShop(npc, player, 24)

	end
	return ""
end

function award(npc, player)
       local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#试炼教头#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."试炼中可以获得#COLORCOLOR_GOLD#「试炼凭证」#COLOREND#，利用试炼凭证可以在我这里兑换高额经验，每天可以在我这里#COLORCOLOR_RED#「兑换」150个#COLOREND#。\n"
        msg = msg.."#OFFSET<X:0,Y:1>##OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n"
        msg = msg.."       #OFFSET<X:0,Y:-6>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@exp *01*凭证「兑换」经验>               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

    return msg
end

function enter(npc, player, index)
    local msg = check_enter(player)
    if msg ~= "" then return msg end

    msg = enter_dgn(player, tonumber(index))
    if msg ~= "" then return msg end
    return msg
end

function leave(npc, player)
    return ""
	end

function check_enter(player)
	local max_count = 3
	--[[local var_ = "试炼副本_days"
	local count_ = "试炼副本_count"

    local days = lualib:Player_GetCustomVarInt(player, var_)
    local all_days = lualib:GetAllDays(0)
    if days == all_days then
        local cur_count = lualib:Player_GetCustomVarInt(player, count_)
        if cur_count >= max_count then
            return "该试炼副本您今日已完成"..max_count.."次！\n \n<@main *01*「返回」>"
        end

		local item = {0, 30000, 100000}
		if not lualib:Player_IsGoldEnough(player, item[cur_count + 1], false) then
			return "金币不足，无法进入" .. item[cur_count + 1] .. "！\n \n<@main *01*「返回」>"
		else
			if not lualib:Player_SubGold(player, item[cur_count + 1], false, "扣金币：试炼场多次传送传送费", "试炼教头") then
				return "扣除金币失败"
			end
		end
    elseif days > all_days then
        return "系统错误！\n \n<@main *01*「返回」>"
    else
        lualib:Player_SetCustomVarInt(player, count_, 0)
    end]]
    
    local count = lualib:CampCount(player, 3)
    --if count >= max_count then return "该试炼副本您今日已完成"..max_count.."次！\n \n<@main *01*「返回」>" end
    
    if not lualib:VerifyCampCount(player, 3) then
        return "该试炼副本您今日已完成"..max_count.."次！\n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end
    
	local itemnum = lualib:ItemCount(player, cailiao)
	
    local item = {0, 1, 3}
	
	if itemnum < item[count + 1] then 
		return "你的"..cailiao.."不足" .. item[count + 1] .. "无法进入！[镇魂笛]可以在<@tiaozhuan *01*老兵>的<@tiaozhuan *01*[老兵商店]>\n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	else
        if itemnum ~= 0 then
            if not lualib:DelItem(player, cailiao, item[count + 1], 2, "进入试炼场删除物品", player) then
                return "扣除道具失败"
            end
        end
	end
	
--[[	
	
    if not lualib:Player_IsGoldEnough(player, item[count + 1], false) then
        return "金币不足，无法进入需要" .. item[count + 1] .. "！\n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    else
        if not lualib:Player_SubGold(player, item[count + 1], false, "扣金币：试炼场多次传送传送费", "试炼教头") then
			return "扣除金币失败"
		end
		
    end]]
        
    return ""
end

function enter_dgn(player, index)
	local var_ = "试炼副本_days"
	local count_ = "试炼副本_count"
    local dgn_table = {"初级试炼场", "中级试炼场", "高级试炼场", "超级试炼场"}

    local dgn = lualib:Map_CreateDgn(dgn_table[index], false, 5 * 60)
    if dgn == "" then
        return "副本："..dgn_table[index].."创建失败！"
    end

    if not lualib:Player_SetDgnTicket(player, dgn) then
        return "您不被许可进入地图！"
    end

    lualib:JoinCamp(player, 3, 0)
    if not lualib:Player_EnterDgn(player, dgn_table[index], 24, 33, 3) then
        return "进入地图失败！"
    end
    return ""
end

function exp(npc, player)
    local limit_count = 150
	local var_ = "试炼凭证_count"
	local item_ = "试炼凭证"
	local days_ = "试炼凭证_days"

	local level_t  = {16, 26, 36, 46, 200}
	local exp_t    = {50, 100, 200, 350}
	local level    = lualib:Player_GetIntProp(player,  lua_role_level)
	local cur_type = 0

	for k, v in pairs(level_t) do
		if level < v then
			cur_type = k - 1
			break
		end
	end

	if exp_t[cur_type] == nil then return "你的等级不符，不能兑换！\n \n \n \n \n \n                                             #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

    local days = lualib:Player_GetCustomVarInt(player, days_)
    local all_days = lualib:GetAllDays(0)

    local count = lualib:Player_GetItemCount(player, item_)
    if count < 1 then return "你没有"..item_.."！\n \n \n \n \n \n                                             #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

    local max_count = 0
    if days == all_days then
        max_count = lualib:Player_GetCustomVarInt(player, var_)
        if max_count >= limit_count then return "每日只能上缴"..limit_count.."个凭证！\n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
    elseif days > all_days then
        return "系统错误！"
    else
        max_count = 0
    end

    if count + max_count > limit_count then count = limit_count - max_count end

    if not lualib:Player_DestroyItem(player, item_, count, "删物品：试炼教头上缴试炼凭证", "试炼教头") then
        return "上缴"..item_.."失败！"
    end


    local exps = level * exp_t[cur_type] * count
    if not lualib:Player_AddExp(player, exps, "加经验：上缴"..item_.."获取经验", player) then
        return "奖励经验失败！"
    end

    lualib:Player_SetCustomVarInt(player, var_, max_count + count)
    lualib:Player_SetCustomVarInt(player, days_, all_days)
	msg = "已上缴"..count.."个凭证, 获得经验"..exps.."！今天日总共上缴凭证"..max_count + count.."/"..limit_count.."个\n \n \n \n \n \n "
	msg = msg.."                                             #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    return msg
end

function info(player, npc)
    return "初级试炼    16 - 25\n中级试炼    26 - 35\n高级试炼    36 - 45\n超级试炼    46 - 55 \n \n<@main *01*「返回」>"
end


----1025交
function QuestAccomplish1025(npc, player)
    msg = "年轻人，请问你找我有什么事情吗？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1025a *01* 我要变强，请你帮助我>\n"
    return msg
end

function Accomplish1025a(npc, player)
    msg = "原来如此，那我就给你指一条明路，但是我得声明，这是一条艰辛的道路，你得做好觉悟才行！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1025b *01* 只要能够得以增强自身实力，什么苦我都受得了>\n"
    return msg
end

function Accomplish1025b(npc, player)
    if lualib:AccomplishQuest(player, 1025, 0) == true then
        msg = "现在就开始吧\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1026 *01* 开始试炼>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---1026接
function QuestAccept1026(npc,player)
    msg = "你准备好了吗，在试炼场进行试炼是很艰辛的，而且怪物也很强大，需要有一定的实力才能生存下来!\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1026 *01* 明白了>\n"
	return msg
end


function Accept1026(npc, player)
    if lualib:AcceptQuest(player, 1026) == true then
		msg = "我这就传送你进入试炼场\n \n"
		msg = msg.."#IMAGE1902700015#<@jump *01* 进入试炼场>\n"
        return msg
    else
        return "任务接取失败"
    end
end


----1026交
function QuestAccomplish1026(npc, player)
    msg = "没想到你真的成功了，真是后生可畏啊！以后你每天可以来我这里参加3次试炼！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1026a *01* 好的，我知道了>\n"
    return msg
end

function Accomplish1026a(npc, player)
    msg = "你是不是从怪物身上捡取了很多的试炼凭证？可以在我这个「兑换」大量的经验！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1026b *01* 是的，我有很多凭证>\n"
    return msg
end

function Accomplish1026b(npc, player)
    if lualib:AccomplishQuest(player, 1026, 0) == true then
        msg = "你已经成为一个了不起的战士，你去找龙城的天机老人，他好像有话对你说！\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1027 *01* 好的>\n"
		return msg
    else
        msg = "哪里出错了？\n \n"
		msg = msg.."<@leave *01*继续努力>\n"
		return msg
    end
end


---1027接
function QuestAccept1027(npc,player)
    msg = "你已经成为一个了不起的战士，你去找龙城的天机老人，他好像有话对你说！\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1027 *01* 好的>\n"
	return msg
end


function Accept1027(npc, player)
    if lualib:AcceptQuest(player, 1027) == true then
		msg = "与#COLORCOLOR_GREENG# #NPCLINK<STR:天机老人,NPCID:25002>##COLOREND#对话完成任务\n"
        return msg
    else
        return "任务接取失败"
    end
end

---2004接
function QuestAccept2004(npc,player)
    msg = "你准备好了吗，在试炼场进行试炼是很艰辛的，而且怪物也很强大，需要有一定的实力才能生存下来!\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2004 *01* 明白了>\n"
	return msg
end


function Accept2004(npc, player)
    if lualib:AcceptQuest(player, 2004) == true then
		msg = "我这就传送你进入试炼场\n \n"
		msg = msg.."#IMAGE1902700015#<@jump *01* 进入试炼场>\n"
        return msg
    else
        return "任务接取失败"
    end
end


----2004交
function QuestAccomplish2004(npc, player)
    msg = "没想到你真的成功了，真是后生可畏啊！以后你每天可以来我这里参加3次试炼！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2004 *01* 好的，我知道了>\n"
    return msg
end

function Accomplish2004(npc, player)
    if lualib:AccomplishQuest(player, 2004, 0) == true then
        msg = "你已经成为一个了不起的战士，你去找龙城的天机老人，他好像有话对你说！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*继续努力>\n"
		return msg
    else
        msg = "哪里出错了？\n \n"
		msg = msg.."<@leave *01*继续努力>\n"
		return msg
    end
end
