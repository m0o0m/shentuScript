local ye = 12
local monster_t = {--怪物列表
        {"低级镖车","初级镖车","中级镖车","高级镖车","顶级镖车","钱树怪","孢子女王","弓箭手","新骷髅王","蛟龙王","熔岩巨魔","侍卫总管","锦衣卫统领","黄蜂女王","地狱魔龙","天荒教主","虹魔教主","魔龙教主",},--怪物展示列表 --要新增新的怪物，从最前面开始加 
        {"蜘蛛人","骷髅兵","召唤者","诅咒巫师","远古巨猿","防具大师","魔鬼戈登","尸王","血刹魔王","暗夜女王","深海恶魔","新牛魔王",}, --怪物展示
        {"镜幻渺","骷髅战士","士兵巫师","冰魔狼","千人斩","牛头人酋长","暗夜魔熊","嫪毐","黑炎魔","新白野猪","新牛魔将军",}, --怪物展示
        {"阿修罗","骷髅箭手","玄翎法师","熊猫酒仙","蝎尾虎","新九千岁","死灵咒师","灵蟒","邪庙统领","流沙蝗虫","骷髅王",}, --怪物展示

	
}
function main(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     这里可以查看最新怪物资源！#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."            #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@monster#1 *01*「怪物展示」   >  \n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n"
	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    return msg
end

function monster(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术新怪物资源展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以查看各种怪物资源！点击怪物名称即可刷新查看该怪物！#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │   #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*「怪物展示」>   #COLORCOLOR_BROWN#│  #COLOREND# <@ww#2 *01*「怪物展示」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@ww#3 *01*「怪物展示」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@ww#4 *01*「怪物展示」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 122 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#│                  │                  │                  │                  │"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#├─────────┼─────────┼─────────┼─────────┤"
		end
		yt = yt + 1
		for j = 1 , #monster_t do 
			local x = 36 + 120 * j
			if j ~= 4 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #monster_t[j] then
				x = 78 + 120 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_monsters#"..monster_t[j][i].."#"..t.." *01*"..monster_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@monsterAg#"..t.." *01*「上一页」>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@monsterNe#"..t.." *01*「下一页」>      <@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,600)
    return ""
end

function monsterAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return monster(npc,player,t)
end

function monsterNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if monster_t[1][k] ~= nil or monster_t[2][k] ~= nil or monster_t[3][k] ~= nil or monster_t[4][k] ~= nil then
		t = t + 1
	end
	return monster(npc,player,t)
end

function get_monsters(npc,player,key,t)
	local x, y, strMap = lualib:X(player), lualib:Y(player), lualib:MapGuid(player);
	local servant = lualib:Map_GenSingleMonster(strMap, x, y, 2, lualib:GenRandom(0, 7), key, false);
	assert(servant ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");
	lualib:AddTimer(servant, 1, 30000, -1, "del_monster")
	lualib:SysWarnMsg(player, "你在身边刷新了【".. key .."】!它将在30秒后消失！")
	 
	--return ""
	--lualib:AddItem(player,key,1,false,"测试","测试")
	return monster(npc,player,t)
end

function ww(npc, player,key)

	return ""
	
end

function del_monster(servant)
	if servant ~= "" then
		lualib:Monster_Remove(servant)
	end
end