function main(npc, player)
	local name = lualib:Name(player)
    local msg = "     尊敬的"..name.."，能为您「#COLORCOLOR_RED#充值#COLOREND#」是在下莫大的荣幸!\n     我这里的汇率是「#COLORCOLOR_RED#1人民币：100元宝#COLOREND#」 \n     我支持多种充值方式，你可点下方的充值方式查看。\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"

	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@web *01*[我要充值]>\n"
	msg = msg.."#OFFSET<X:0,Y:3>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@JieShao *01*[查看充值方式]>\n"

	return msg
end

function web(npc, player)
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. lualib:GetGroupId()
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

function JieShao(npc, player)
	local msg = "我这里支持以下充值方式:".."\n \n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@dx *01*『短信』  ：>".."   移动、联通短信充值\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@ykt *01*『一卡通』：>".."   #OFFSET<X:0,Y:0>#盛大/骏网/网易/完美/搜狐/征途/久游一卡通\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@czk *01*『充值卡』：>".."   #OFFSET<X:0,Y:0>#移动/联通/电信充值卡\n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@yy *01*『语音』  ：>".."   拨打热销获得V币充值/移动手机拨打(QD-IVR)\n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@wy *01*『网银』  ：>".."   网上银行#COLOREND#\n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *1*「返回」>"
	return msg
end
--短信
function dx(npc, player)
	local msg = "详情资费: \n \n"
	msg = msg.."#COLORCOLOR_GREENG#『移动短信』：#COLOREND##COLORCOLOR_GOLD#1/2/5 元#COLOREND#\n \n \n \n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*「返回」>"
	return msg
end
--一卡通
function ykt(npc, player)
	local msg = "#OFFSET<X:0,Y:-2>#详情资费: \n"
	msg = msg.."#COLORCOLOR_GREENG#『盛大』：#COLOREND##COLORCOLOR_GOLD#5/10/15/25/30/35/45/50/100/300/350/1000 元#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#『骏网』：#COLOREND##COLORCOLOR_GOLD#5/6/10/15/30/50/100 元#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#『网易』：#COLOREND##COLORCOLOR_GOLD#5/10/15/20/30/50/ 元#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#『完美』：#COLOREND##COLORCOLOR_GOLD#15/30/50/100 元#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#『搜狐』：#COLOREND##COLORCOLOR_GOLD#5/10/15/30/40/100 元#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#『征途』：#COLOREND##COLORCOLOR_GOLD#10/15/20/25/30/50/60/100/300/468/500 元#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#『久游』：#COLOREND##COLORCOLOR_GOLD#5/10/15/20/25/30/50/100 元#COLOREND#\n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*「返回」>"
	return msg
end
--充值卡
function czk(npc, player)
	local msg = "详情资费: \n \n"
	msg = msg.."#COLORCOLOR_GREENG#『移动充值卡』：#COLOREND##COLORCOLOR_GOLD#10/20/30/50/100 元#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#『联通充值卡』：#COLOREND##COLORCOLOR_GOLD#20/30/50/100/300/500 元#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#『电信充值卡』：#COLOREND##COLORCOLOR_GOLD#50/100 元#COLOREND#\n \n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*「返回」>"
	return msg
end
--语音
function yy(npc, player)
	local msg = "详情资费: \n \n"
	msg = msg.."#COLORCOLOR_GREENG#『拨打热销获得V币充值』：#COLOREND##COLORCOLOR_GOLD#2/5/10//15/20/30 元#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_GREENG#『拨打热销获得V币充值』：#COLOREND##COLORCOLOR_GOLD#10/20/30 元#COLOREND#\n \n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*「返回」>"
	return msg
end
--网银
function wy(npc, player)
	local msg = "详情资费: \n \n"
	msg = msg.."#COLORCOLOR_GREENG#『网上银行』：#COLOREND##COLORCOLOR_GOLD#任意 元#COLOREND#\n \n \n \n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*「返回」>"
	return msg
end

