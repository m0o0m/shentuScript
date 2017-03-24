local ye = 12
local jewelry_t = {--装备列表  --要新增新的道具，从最前面开始加 
	{"",},--
	{"",},--
	{"",},--
	{"",},--
	{"",},--
	{"",},--
	{"",},--
	{"",},--
}

function main(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     这里可以领取新首饰！#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ───────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."                       #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@jewelry#1 *01*「新更新装备」   >  #COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ───────────────────────────────────────────#COLOREND#\n"
--	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    return msg
end

function jewelry(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#        ━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源首饰展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#    这里可以领取各种装备类道具！点击标题即可领取装备，比如点击「装备类」即可领取所有的装备！领取前，请注意包裹空间是否足够！#COLOREND#\n\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ┌──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*「其他」> #COLORCOLOR_BROWN# │#COLOREND# <@ww#2 *01*「其他」> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#  │ #COLOREND# <@ww#3 *01*「其他」>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND# <@ww#4 *01*「其他」>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#5 *01*「其他」>  #COLORCOLOR_BROWN#│  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#6 *01*「其他」> #COLORCOLOR_BROWN# │  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#7 *01*「其他」> #COLORCOLOR_BROWN# │  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#7 *01*「其他」> #COLORCOLOR_BROWN##OFFSET<X:-	2,Y:0># │#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┤#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 135 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#│            │            │            │            │            │            │            │            │"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#├──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┤"
		end
		yt = yt + 1
		for j = 1 , #jewelry_t do 
			local x = 16 + 90 * j
			if j ~= 8 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #jewelry_t[j] then
				x = 65 + 83 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_jewelry#"..jewelry_t[j][i].."#"..t.." *01*"..jewelry_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      └──────┴──────┴──────┴──────┴──────┴──────┴────────────┴┘#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@jewelryAg#"..t.." *01*「上一页」>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@jewelryNe#"..t.." *01*「下一页」>      <@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,818,800)
    return ""
end

function jewelryAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return jewelry(npc,player,t)
end

function jewelryNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if jewelry_t[1][k] ~= nil or jewelry_t[2][k] ~= nil or jewelry_t[3][k] ~= nil or jewelry_t[4][k] ~= nil or jewelry_t[6][k] ~= nil or jewelry_t[6][k] ~= nil or jewelry_t[7][k] ~= nil or jewelry_t[8][k] ~= nil then
		t = t + 1
	end
	return jewelry(npc,player,t)
end

function ww(npc, player,key)
	key= tonumber(key)
	tempstr =""
	for i = 1, #jewelry_t[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
			lualib:AddItem(player, jewelry_t[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..jewelry_t[key][i].."!")
			tempstr = tempstr .. ",[" .. jewelry_t[key][i] .. "]"
		end
	end
	return "你获得了" .. tempstr .. "!\n  \n<@jewelry#1 *01*返回>\n"
end

function get_jewelry(npc,player,key,t)
	lualib:AddItem(player,key,1,false,"装备","装备")
	return jewelry(npc,player,t)
end