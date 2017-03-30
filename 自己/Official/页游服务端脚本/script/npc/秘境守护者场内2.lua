



function main(npc, player)
	local msg = ""
    msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."     感谢可敬的勇士来这里守护深海的封印，破坏者们已经把这里破坏的不成样子，请你用包裹里的#COLORCOLOR_RED#召唤石#COLOREND#来召唤守护者们吧！\n"
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700037#<@jieshao *01*副本介绍>#OFFSET<X:210,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@level *01*结束对话>\n"
	return msg
end


function jieshao(npc, player)
	local msg = ""
    msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
    msg = msg.."#COLORCOLOR_BROWN#使用召唤石，选择要召唤的守护者类型，就可以召唤出守护者来防御破坏秘海封印的破坏者！(召唤守护者需要消耗#COLOREND##COLORCOLOR_RED#召唤石#COLOREND##COLORCOLOR_BROWN#)#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#破坏者会分成八波，每一波的难度逐渐上升，请在破坏者来临之前就召唤足够的守护者进行防守#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#防守期间会有奖励怪出现，掉落经验道具或大量金币#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#最终BOSS消灭后，请到另一个NPC处领取奖励，那人跟我有矛盾，在副本的另一侧，你去找找吧！#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
    msg = msg.."#IMAGE1902700015#<@main *01*返回>\n"
	return msg
end

function level(npc, player)
    return ""
end

