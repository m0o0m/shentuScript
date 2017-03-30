local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("map/封魔阵")

gQuestMap =
{
   {1023, "", "QuestAccomplish1023","", "*01*完成任务: 封魔阵"},
   {1024, "QuestAccept1024", "QuestAccomplish1024","*01*任务: 镇压封魔阵", "*01*完成任务: 镇压封魔阵"},
   {1025, "QuestAccept1025", "","01*任务: 变的更强", ""},
   {2003, "QuestAccept2003", "QuestAccomplish2003","*01*任务: 消除邪魔人偶", "*01*完成任务: 消除邪魔人偶"},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"封魔阵里的怪物会不断分裂，每死亡一只，就会分裂成两只，十分难缠。", "封魔阵是新人晋级的最佳场所。", "封魔阵中的怪物很弱，用群体技能使劲的招呼吧。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 290000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#封魔阵#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."　　据说封魔阵内有一位极端邪恶的异位面强者，他擅长神秘的傀儡分身术，只要打败它及分身，就能获得较高的#COLORCOLOR_GREENG#经验#COLOREND#和#COLORCOLOR_GOLD#金币#COLOREND#！进入需要#COLORCOLOR_GREENG#杂货店#COLOREND#出售的#COLORCOLOR_GOLD#镇魂笛#COLOREND#，对于初入江湖的你来说，这里很合算！\n"
         msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		 msg = msg.."#OFFSET<X:0,Y:0># #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump *01*「挑战封魔阵」>       #OFFSET<X:0,Y:1>##IMAGE<ID:1902700017>#<@info *01*「活动介绍」>        #IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@leave *01*「离开」>\n"
		 msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.." #OFFSET<X:0,Y:-2>##IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end

    --msg = msg.."<@jump *01*挑战封魔阵>\n"
    --msg = msg.."<@duihuan *01*「兑换」精元结晶>\n"

	return msg
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#封魔阵#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
         msg = msg.."#COLORCOLOR_RED#进入要求：#COLOREND#等级大于等于20级，需要道具：[镇魂笛]\n"
         msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
         msg = msg.."#COLORCOLOR_RED#活动介绍：#COLOREND#每个角色每天可以开启3次封魔阵\n"
         msg = msg.."#COLORCOLOR_RED#活动介绍：#COLOREND#每次开启封魔阵的持续时间为30分钟\n"
         msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
         msg = msg.."#COLORCOLOR_RED#重要提示：#COLOREND#由于时间有限,强烈建议玩家组队进入探险\n"
         msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
         msg = msg.." #OFFSET<X:0,Y:-2>#                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

	return msg
end

function leave(npc, player)
    return ""
end

function jump(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#封魔阵#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:4>#  #COLORCOLOR_RED#提示⑴：#COLOREND#挑战需要您的等级大于等于20级！\n"
         msg = msg.."  #COLORCOLOR_RED#提示⑵：#COLOREND#如果您有组队的话，请确保队友在您旁边！\n"
         msg = msg.."  #COLORCOLOR_RED#提示⑶：#COLOREND#挑战需要消耗1个[镇魂笛]！[镇魂笛]可以在<@tiaozhuan *01*老兵>的\n          <@tiaozhuan *01*[老兵商店]>里购买\n"
         msg = msg.."#OFFSET<X:0,Y:4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    local p = CPlayer:new()
    p.guid = player
	
	local count = 0
	local map = ""
	local surplus = 0
			
	
    if CDgn:CheckDgnTime(p) == true then --判断是否拥有副本门票
		local map = lualib:Player_GetDgnByTicket(player,"封魔阵")
		count = CMap.max_monster - CMap:GetCurMonsterCount(map)
		surplus = count + CMap:GetMonsterCount(map)
	end
	
	if surplus > 0 then
	msg = msg.."　　　#COLORCOLOR_GRAY#╔──────╗　　　　　╔──────╗　#COLOREND#\n"
	msg = msg.."　　　#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#│#COLOREND#<@enter *01*「继续挑战」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　　　　　│#COLOREND#<@main *01*「返回首页」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　　　#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#╚──────╝　　　　　╚──────╝　#COLOREND#\n"
	else
	msg = msg.."　　　#COLORCOLOR_GRAY#╔──────╗　　　　　╔──────╗　#COLOREND#\n"
	msg = msg.."　　　#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#│#COLOREND#<@jumpex *01*「进入挑战」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　　　　　│#COLOREND#<@main *01*「返回首页」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　　　#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#╚──────╝　　　　　╚──────╝　#COLOREND#\n"
    end

    return msg
end

function jumpex(npc, player)
    local p = CPlayer:new()
    p.guid = player
	
    if not p:CheckLevel() then return "你的等级不够！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
    if not p:CheckGold() then return "你的金币不足！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
    if not p:CheckItem() then return "你的#COLORCOLOR_YELLOW#[镇魂笛]#COLOREND#不够！[镇魂笛]可以在<@tiaozhuan *01*老兵>的<@tiaozhuan *01*[老兵商店]>里购买\n                                  #OFFSET<X:1,Y:-9>##COLORCOLOR_YELLOW#─#OFFSET<X:-2,Y:0>#─#COLOREND# \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
    if not CDgn:CheckEnter(p) then return "每日只能进入三次！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

    if not p:SubGold() then return "扣除金币失败！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
    if not p:DestroyItem() then return "上缴镇魂笛失败！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

	local dgn = CDgn:CreateDgn()
    if dgn == "" then return "创建副本失败！" end
	
	--CDgn:SetEnter(p)
	if not p:SetDgnTicket(dgn) then return "你不能进入封魔阵！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
	lualib:JoinCamp(player, 1, 0)
    if not p:EnterDgn(CDgn.dgn_name, 0, 0, 0) then return "你不能进入封魔阵！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
    return ""
end

function tiaozhuan(npc, player)
	if lualib:Player_MapMoveXY(player, "龙城", 238, 221, 0) == true then
		lualib:OpenShop(npc, player, 24)

	end
	return ""
end


function enter(npc, player)
    local p = CPlayer:new()
    p.guid = player
    if not p:EnterDgn(CDgn.dgn_name, 0, 0, 0) then
        return "进入副本失败！"
    end
	
    return ""
end

function duihuan(npc, player)
	msg = "每10个邪气精华可以「兑换」1个精元结晶，你要「兑换」吗？ \n"
	msg = msg.."<@award *01*「兑换」>\n"
    msg = msg.."<@main *01*不「兑换」>\n"
	return msg
end

function award(npc, player)
    local require_item = "邪气精华"
    local require_item_count = 10
    local award_item = "精元结晶"
    local award_item_count = 1
    if lualib:Player_GetItemCount(player, require_item) < require_item_count then
        return "您的"..require_item.."不足"..require_item_count.."个！"
    end

    if not lualib:Player_DestroyItem(player, require_item, require_item_count, "删物品：封魔阵引路人「兑换」精元结晶", player) then
        return "删除物品失败！"
    end

    if not lualib:Player_GiveItemUnbind(player, award_item, award_item_count, "给物品：封魔阵引路人「兑换」精元结晶", player) then
        return "给物品失败！"
    end

    return "「兑换」成功！"
end

CPlayer =
{
    require_level = 20,
    require_gold = 0,
    require_item = "镇魂笛",
    require_item_count = 1,
    guid = ""
}

function CPlayer:CheckLevel()
    return lualib:Player_GetIntProp(self.guid,  lua_role_level) >= self.require_level
end

function CPlayer:CheckGold()
    return lualib:Player_IsGoldEnough(self.guid, self.require_gold, false)
end

function CPlayer:CheckItem()
    return lualib:Player_GetItemCount(self.guid, self.require_item) >= self.require_item_count
end

function CPlayer:SubGold()
    return lualib:Player_SubGold(self.guid, self.require_gold, false, "扣金币：封魔阵引路人传送费", self.guid)
end

function CPlayer:DestroyItem()
    return lualib:Player_DestroyItem(self.guid, self.require_item, self.require_item_count, "删物品：封魔阵引路人传送", self.guid)
end

function CPlayer:GetName()
    return lualib:Player_GetStrProp(self.guid,  lua_role_user_name)
end

function CPlayer:IsInGS()
    return lualib:Player_IsInGS(self.guid)
end

function CPlayer:IsOnline()
    return lualib:Player_IsOnline(self.guid)
end

function CPlayer:SetDgnTicket(dgn)
    return lualib:Player_SetDgnTicket(self.guid, dgn)
end

function CPlayer:EnterDgn(dgn_name, x, y, range)
    return lualib:Player_EnterDgn(self.guid, dgn_name, x, y, range)
end

function CPlayer:GetDistance(x, y)
    player_x = lualib:Player_GetPosX(self.guid)
    player_y = lualib:Player_GetPosY(self.guid)
    return lualib:Map_GetDistance(x, y, player_x, player_y)
end

function CPlayer:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

CDgn =
{
    dgn_name = "封魔阵",
    dgn_times = 1800,
    dgn_days = "fwzwf_dgn_days",
    dgn_count = "fwzwf_dgn_count",
    max_count = 3
}

function CDgn:CreateDgn()
    return lualib:Map_CreateDgn(self.dgn_name, false, self.dgn_times)
end

function CDgn:CheckEnter(player)
    --[[local fwzwf_dgn_days = lualib:Player_GetCustomVarInt(player.guid, self.dgn_days)
    local cur_days = lualib:GetAllDays(0)
    if cur_days == fwzwf_dgn_days then
        if lualib:Player_GetCustomVarInt(player.guid, self.dgn_count) < self.max_count then
            return true
        else
            return false
        end
    else
        lualib:Player_SetCustomVarInt(player.guid, self.dgn_count, 0)
        return true
    end]]
	
	return lualib:VerifyCampCount(player.guid, 1)
end

function CDgn:SetEnter(player)
    local fwzwf_dgn_count = lualib:Player_GetCustomVarInt(player.guid, self.dgn_count)
    lualib:Player_SetCustomVarInt(player.guid, self.dgn_count, fwzwf_dgn_count + 1)
    lualib:Player_SetCustomVarInt(player.guid, self.dgn_days, lualib:GetAllDays(0))
end

function CDgn:CheckDgnTime(player)
    return lualib:Player_HasDgnTicket(player.guid, "封魔阵")
end


---1023交
function QuestAccomplish1023(npc, player)
    msg = "封魔阵的妖魔蠢蠢欲动。勇士，你是否能够帮忙镇压一下。\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1023 *01* 好的>\n"
    return msg
end

function Accomplish1023(npc, player)
    if lualib:AccomplishQuest(player, 1023, 0) == true then
        msg = "我这就传送你去封魔阵。\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1024 *01*没问题，我这就去>\n"
		return msg
    else
        msg = "任务失败。\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

---1024接
function QuestAccept1024(npc,player)
    msg = "封魔阵的妖魔蠢蠢欲动。勇士，你是否能够帮忙镇压一下。\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1024 *01* 好的>\n"
	return msg
end


function Accept1024(npc, player)
    if lualib:AcceptQuest(player, 1024) == true then
		msg = "前往封魔阵\n \n"
		msg = msg.."#IMAGE1902700015#<@jump *01*传送进入封魔阵> \n"
        return msg
    else
        return "任务接取失败"
    end
end

---1024交
function QuestAccomplish1024(npc, player)
    msg = "镇守封印不是一时之功，妖魔随时都有可能冲破封印，所以，我们每天都要进入清理妖魔，这虽然是一份责任，但是，也是锻炼自身提升实力的途径，你每天都可以到我这里来参加3次，记得每天都要来哈！对了，试炼教头也有让你变得更强的方法，你去找他吧！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1024 *01* 当然，我要变的更强>\n"
    return msg
end

function Accomplish1024(npc, player)
    if lualib:AccomplishQuest(player, 1024, 0) == true then
        msg = "那你去找试炼教头，他会帮助你的！\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1025 *01*我这就去>\n"
		return msg
    else
        msg = "任务失败。\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*我知道了>\n"
		return msg
    end
end

---1025接
function QuestAccept1025(npc,player)
    msg = "那你去找试炼教头，他会帮助你的，你要有心理准备，变强可不是一件容易的事！\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1025 *01* 好的>\n"
	return msg
end


function Accept1025(npc, player)
    if lualib:AcceptQuest(player, 1025) == true then
		msg = "找#COLORCOLOR_GREENG# #NPCLINK<STR:试炼教头,NPCID:30006>##COLOREND#求教变强的方法\n"
        return msg
    else
        return "任务接取失败"
    end
end

---2003接
function QuestAccept2003(npc,player)
    msg = "封魔阵的妖魔蠢蠢欲动。勇士，你是否能够帮忙镇压一下。\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2003 *01* 好的>\n"
	return msg
end


function Accept2003(npc, player)
    if lualib:AcceptQuest(player, 2003) == true then
		msg = "前往封魔阵\n \n"
		msg = msg.."#IMAGE1902700015#<@jump *01*传送进入封魔阵> \n"
        return msg
    else
        return "任务接取失败"
    end
end

---2003交
function QuestAccomplish2003(npc, player)
    msg = "镇守封印不是一时之功，妖魔随时都有可能冲破封印，所以，我们每天都要进入清理妖魔，这虽然是一份责任，但是，也是锻炼自身提升实力的途径，你每天都可以到我这里来参加3次，记得每天都要来哈！对了，试炼教头也有让你变得更强的方法，你去找他吧！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2003 *01* 当然，我要变的更强>\n"
    return msg
end

function Accomplish2003(npc, player)
    if lualib:AccomplishQuest(player, 2003, 0) == true then
        msg = "那你去找试炼教头，他会帮助你的！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*我知道了>\n"
		return msg
    else
        msg = "任务失败。\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end
