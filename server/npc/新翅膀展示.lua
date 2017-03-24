local ye = 12
local wings_t = {--翅膀列表
	{"大乘之翼特效版",},--翅膀展示列表 --要新增新的道具，从最前面开始加 
	{"新套装(男)30","新套装(女)31","新套装(男)32","新套装(女)33","新套装(男)34","新套装(女)35","新套装(女)37","新套装(男)36","新套装(女)25","新套装(男)24",},--翅膀展示列表 --要新增新的道具，从最前面开始加
        {"","",}, --备用展示
        {"赤金斗笠","翠玉斗笠","红绸斗笠","草斗笠",}, --斗笠展示
	--[[{"风神翼",}, --备用展示
	{"清霜翼",}, --备用展示
	{"天凤翼",}, --备用展示
	{"雷霆翼",}, --备用展示
	{"浣纱洗练翼",}, --备用展示
	{"梦魇翼",}, --备用展示
	{"大乘之翼特效版",}, --备用展示--]]
	
}
function main(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     这里可以领取最新翅膀或其他资源！#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."            #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@wings#1 *01*「翅膀衣服坐骑资源展示」   >  \n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n"
	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    return msg
end

function wings(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术新资源展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以领取各种资源道具！点击标题即可领取该项所有道具，比如点击「翅膀展示」即可领取所有的翅膀展示！领取前，请注意包裹空间是否足够！#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │   #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*「翅膀展示」>   #COLORCOLOR_BROWN#│  #COLOREND# <@ww#2 *01*「衣服展示」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@ww#3 *01*「备用展示」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@ww#4 *01*「斗笠展示」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 135 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#│                  │                  │                  │                  │"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#├─────────┼─────────┼─────────┼─────────┤"
		end
		yt = yt + 1
		for j = 1 , #wings_t do 
			local x = 36 + 120 * j
			if j ~= 4 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #wings_t[j] then
				x = 64 + 120 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_wings#"..wings_t[j][i].."#"..t.." *01*"..wings_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@wingsAg#"..t.." *01*「上一页」>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@wingsNe#"..t.." *01*「下一页」>      <@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,600)
    return ""
end

function wingsAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return wings(npc,player,t)
end

function wingsNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if wings_t[1][k] ~= nil or wings_t[2][k] ~= nil or wings_t[3][k] ~= nil or wings_t[4][k] ~= nil then
		t = t + 1
	end
	return wings(npc,player,t)
end

function get_wings(npc,player,key,t)
	lualib:AddItem(player,key,1,false,"测试","测试")
	return wings(npc,player,t)
end

function ww(npc, player,key)
	key= tonumber(key)
	tempstr =""
	for i = 1, #wings_t[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
			lualib:AddItem(player, wings_t[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..wings_t[key][i].."!")
			tempstr = tempstr .. ",[" .. wings_t[key][i] .. "]"
		end
	end
	return "你获得了" .. tempstr .. "!\n  \n<@wings#1 *01*返回>\n"
end