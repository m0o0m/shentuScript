function on_create(npc_guid)
	lualib:AddTimer(npc_guid, 815, 180000, 1, "ssck_scnpc")
	lualib:AddTimer(npc_guid, 816, 1000, -1, "ssck_scnpcc")
end

function ssck_scnpc(npc_guid)
     lualib:Npc_Remove(npc_guid)
end

function ssck_scnpcc(npc_guid)
	local player_guid = lualib:GetStr(npc_guid, "vip7_player_guid")
	if not lualib:Player_IsOnline(player_guid) then
    lualib:Npc_Remove(npc_guid)
	end
end

function main(npc, player)
    lualib:AddShop(npc, 10)
	local msg = ""
	local player_npc = lualib:GetStr(npc, "vip7_player_guid")
	if player_npc == player then
		msg = msg.."高贵的主人，请问有什么需要？#COLORCOLOR_RED#我每次出现时间为3分钟，请抓紧时间！#COLOREND#\n \n"
		msg = msg.."#IMAGE<ID:1902700037>#<@OpenShop#2 *01*购买武器>     #IMAGE<ID:1902700037>#<@OpenShop#4 *01*购买衣服>     #IMAGE1902700037#<@OpenShop#6 *01*购买首饰>     #IMAGE<ID:1902700037>#<@OpenShop#13 *01*购买技能>\n"
		msg = msg.."#IMAGE<ID:1902700037>#<@OpenShop#8 *01*购买药品>     #IMAGE<ID:1902700037>#<@OpenShop#10 *01*购买杂货>     #IMAGE<ID:1902700037>#<@OpenShop#24 *01*老兵商店>     #IMAGE<ID:1902700037>#<@OpenShop#25 *01*驯兽商店>\n"
		msg = msg.."#COLORCOLOR_BROWN#──────────────────────────────#COLOREND#\n"
		msg = msg.."#IMAGE1902700036#<@SellItem#1 *01*出售物品>        #IMAGE1902700036#<@ShowRepire#1 *01*普通修理>        #IMAGE1902700036#<@ShowRepireEx#1 *01*特殊修理>\n"
		msg = msg.."#COLORCOLOR_BROWN#──────────────────────────────#COLOREND#\n"
		msg = msg.."#COLORCOLOR_RED#●#COLOREND#<@InfoItemRefine *01*装备精炼>#COLORCOLOR_RED#●#COLOREND#<@FengYin *01*解除封印>#COLORCOLOR_RED#●#COLOREND#<@jinglianzhuanyi *01*精炼转移>#COLORCOLOR_RED#●#COLOREND#<@jingliangaibian *01*精炼改变>#COLORCOLOR_RED#●#COLOREND#<@Openfumo *01*装备附魔>#COLORCOLOR_RED#●#COLOREND#<@Openxishou *01*属性吸收>\n"
		msg = msg.."#COLORCOLOR_BROWN#──────────────────────────────#COLOREND#\n"
		msg = msg.."#IMAGE<ID:1902700037>#<@kaiguang *01*坐骑开光>"
		return msg
	else
		msg = msg.."您不是我的主人，我无法为您提供以下服务：\n#COLORCOLOR_DARKGREY#购买武器     购买衣服     购买首饰     购买技能\n购买药品     购买杂货     老兵商店     驯兽商店\n出售物品        普通修理        特殊修理\n装备精炼  解除封印  精炼转移  精炼改变  装备附魔  属性吸收\n坐骑开光#COLOREND#\n \n"
		msg = msg.."想要拥有和我一样的贴心助手？#COLOREND#\n \n你可以#IMAGE<ID:1902700037>#<@OpenShop#24 *01*点此打开老兵商店购买随身仓库或随身商店>\n"
		return msg
	end
end



function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
	end


function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "修理表单")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "特殊修理表单")
    return ""
end

function InfoItemRefine(npc, player)
    lualib:ShowForm(player, "精炼表单2")

    return ""
end

function FengYin(npc, player)
	local msg = ""
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	local time_cha = times - StartServerTime_int
	
	if time_cha < 86400 * 5 then 	--(5天) 
		msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#封印鉴定系统将在开服5天后开启，请5天后再来！~\n"
		msg = msg.."　　　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [返回]>\n"
		return msg
	end
	
   lualib:ShowForm(player, "鉴定表单")

    return ""
end

function jinglianzhuanyi(npc, player)
   lualib:ShowForm(player, "精炼转移表单")

    return ""
end

function jingliangaibian(npc, player)
   lualib:ShowForm(player, "精炼改变表单")

    return ""
end

function Openfumo(npc, player)
    lualib:ShowForm(player, "装备附魔表单")
    return ""
end


function Openxishou(npc, player)
    lualib:ShowForm(player, "附魔石吸收表单")
    return ""
end


function kaiguang(npc, player)
    lualib:ShowForm(player, "开光表单")
    return ""
end