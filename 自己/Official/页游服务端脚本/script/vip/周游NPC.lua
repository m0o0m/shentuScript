function main(player_guid, item_guid)
    local issgc = lualib:IsCastleWarStart("神歌城")
	local msg = ""
	msg = msg.."#COLORCOLOR_BLUE#                                      〖#COLOREND#请选择区域#COLORCOLOR_BLUE#〗#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."　#COLORCOLOR_LIGHTBROWN#            ╔━━━━━━╗　    ╔━━━━━━╗　    ╔━━━━━━╗#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#          ●  #COLOREND##COLORCOLOR_LIGHTBROWN#┃   #COLOREND#<@wsc#"..item_guid.." *01*巫山城>#OFFSET<X:1,Y:0>##COLORCOLOR_LIGHTBROWN#   ┃#COLOREND##COLORCOLOR_RED#  ●  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃    #COLOREND#<@lc#"..item_guid.." *01*龙城>#OFFSET<X:3,Y:0>##COLORCOLOR_LIGHTBROWN#    ┃#COLOREND##COLORCOLOR_RED#  ●  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃   #COLOREND#<@dlc#"..item_guid.." *01*东临城>#OFFSET<X:2,Y:0>##COLORCOLOR_LIGHTBROWN#   ┃#COLOREND##COLORCOLOR_RED#  ●  #COLOREND#\n"
    msg = msg.."　#COLORCOLOR_LIGHTBROWN#            ╚━━━━━━╝　    ╚━━━━━━╝　    ╚━━━━━━╝#COLOREND#\n"
    if issgc == false then
        msg = msg.."　#COLORCOLOR_LIGHTBROWN#            ╔━━━━━━╗　    ╔━━━━━━╗　    ╔━━━━━━╗#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#          ●  #COLOREND##COLORCOLOR_LIGHTBROWN#┃   #COLOREND#<@tsc#"..item_guid.." *01*天桑村>#OFFSET<X:1,Y:0>##COLORCOLOR_LIGHTBROWN#   ┃#COLOREND##COLORCOLOR_RED#  ●  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃    #COLOREND#<@sgc#"..item_guid.." *01*神歌城>#OFFSET<X:3,Y:0>##COLORCOLOR_LIGHTBROWN#  ┃#COLOREND##COLORCOLOR_RED#  ●  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃     #COLOREND#<@yw#"..item_guid.." *01*野外>#OFFSET<X:2,Y:0>##COLORCOLOR_LIGHTBROWN#   ┃#COLOREND##COLORCOLOR_RED#  ●  #COLOREND#\n"
        msg = msg.."　#COLORCOLOR_LIGHTBROWN#            ╚━━━━━━╝　    ╚━━━━━━╝　    ╚━━━━━━╝#COLOREND#\n"
    else
        msg = msg.."　#COLORCOLOR_LIGHTBROWN#                        ╔━━━━━━╗　    ╔━━━━━━╗#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#                      ●  #COLOREND##COLORCOLOR_LIGHTBROWN#┃   #COLOREND#<@tsc#"..item_guid.." *01*天桑村>#OFFSET<X:1,Y:0>##COLORCOLOR_LIGHTBROWN#   ┃#COLOREND##COLORCOLOR_RED#  ●  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN##COLOREND##COLORCOLOR_RED##COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#┃     #COLOREND#<@yw#"..item_guid.." *01*野外>#OFFSET<X:2,Y:0>##COLORCOLOR_LIGHTBROWN#   ┃#COLOREND##COLORCOLOR_RED#  ●  #COLOREND#\n"
        msg = msg.."　#COLORCOLOR_LIGHTBROWN#                        ╚━━━━━━╝　    ╚━━━━━━╝#COLOREND#\n"
    end
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
   lualib:NPCTalk(player_guid, msg)
    return msg
end


--巫山城
function wsc(player_guid, item_guid)
	local msg = ""
	msg = msg.."#COLORCOLOR_BLUE#                                  〖#COLOREND#巫山城#COLORCOLOR_BLUE#〗#COLOREND#\n \n"
    msg = msg.."#COLORCOLOR_BLUE#  〖#COLOREND#商店#COLORCOLOR_BLUE#〗#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#01#"..item_guid.." *01*铁匠        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#02#"..item_guid.." *01*裁缝        >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#13#"..item_guid.." *01*老兵        >  "
            msg = msg.."#OFFSET<X:4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#07#"..item_guid.." *01*书商        >  "
            msg = msg.."#OFFSET<X:4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#09#"..item_guid.." *01*首饰商        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#15#"..item_guid.." *01*杂货商      >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#22#"..item_guid.." *01*药材商      >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#24#"..item_guid.." *01*仓库管理员  > \n \n "
	msg = msg.."#COLORCOLOR_BLUE# 〖#COLOREND#功能#COLORCOLOR_BLUE#〗#COLOREND#\n "
            msg = msg.."#OFFSET<X:-6,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#10#"..item_guid.." *01*天机老人    >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#03#"..item_guid.." *01*装备大师    >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#11#"..item_guid.." *01*装备合成大师>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#21#"..item_guid.." *01*炼药师      >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#12#"..item_guid.." *01*元宝充值    >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#16#"..item_guid.." *01*寄售商人    >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#17#"..item_guid.." *01*武斗场使者  >  "
            msg = msg.."#OFFSET<X:-2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#18#"..item_guid.." *01*师徒管理员  >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#19#"..item_guid.." *01*行会管理员  >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#14#"..item_guid.." *01*结婚管理员  >  \n \n"
	msg = msg.."#COLORCOLOR_BLUE#  〖#COLOREND#其他#COLORCOLOR_BLUE#〗#COLOREND#\n "
            msg = msg.."#OFFSET<X:-6,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#25#"..item_guid.." *01*练功师      >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#77#"..item_guid.." *01*冲级比赛领奖>  "
            msg = msg.."#OFFSET<X:-2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#08#"..item_guid.." *01*升级奖励    >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#26#"..item_guid.." *01*武馆教练    >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#20#"..item_guid.." *01*攻城战管理员>  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#23#"..item_guid.." *01*防沉迷管理员>  "
            msg = msg.."#OFFSET<X:-4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#74#"..item_guid.." *01*天下第一    >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#78#"..item_guid.." *01*练功师      >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#76#"..item_guid.." *01*幸运转盘使者>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#75#"..item_guid.." *01*神之翼      >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#04#"..item_guid.." *01*天下第一道士>  "
            msg = msg.."#OFFSET<X:-3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#05#"..item_guid.." *01*天下第一法师>  "
            msg = msg.."#OFFSET<X:-2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#06#"..item_guid.." *01*天下第一战士>   \n"
            msg = msg.."#OFFSET<X:450,Y:3>##OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*「返回」>\n"
	return msg
end

--龙城
function lc(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   〖#COLOREND#龙城#COLORCOLOR_BLUE#〗#COLOREND#\n \n"
        msg = msg.."#COLORCOLOR_BLUE#  〖#COLOREND#商店#COLORCOLOR_BLUE#〗#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#36#"..item_guid.." *01*老兵        >  "
            msg = msg.."#OFFSET<X:3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#46#"..item_guid.." *01*杂货商      >  "
            msg = msg.."#OFFSET<X:4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#47#"..item_guid.." *01*药材商      >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#57#"..item_guid.." *01*书商        >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#58#"..item_guid.." *01*首饰商      >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#59#"..item_guid.." *01*裁缝        >  "
            msg = msg.."#OFFSET<X:3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#60#"..item_guid.." *01*铁匠        >  "
            msg = msg.."#OFFSET<X:5,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#69#"..item_guid.." *01*悲伤的老人>  "
            msg = msg.."#OFFSET<X:12,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#38#"..item_guid.." *01*仓库管理员  >  \n \n"
        msg = msg.."#COLORCOLOR_BLUE#  〖#COLOREND#活动#COLORCOLOR_BLUE#〗#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#27#"..item_guid.." *01*龙城军需官  >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#28#"..item_guid.." *01*镇魔殿传送人>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#29#"..item_guid.." *01*禁地使者    >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#30#"..item_guid.." *01*何童天小妖  >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#31#"..item_guid.." *01*幻境引渡者  >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#32#"..item_guid.." *01*通灵师      >  "
            msg = msg.."#OFFSET<X:3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#33#"..item_guid.." *01*古墓守卫    >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#34#"..item_guid.." *01*夺宝大使    >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#35#"..item_guid.." *01*引灵尊者    >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#37#"..item_guid.." *01*封魔阵引路人>  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#39#"..item_guid.." *01*初级试炼教头>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#40#"..item_guid.." *01*锁魔宫传送人>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#44#"..item_guid.." *01*传花使者    >  \n \n"
        msg = msg.."#COLORCOLOR_BLUE#  〖#COLOREND#功能#COLORCOLOR_BLUE#〗#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#70#"..item_guid.." *01*冲级比赛领奖>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#43#"..item_guid.." *01*天机老人    >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#41#"..item_guid.." *01*装备大师    >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#42#"..item_guid.." *01*意见箱      >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#45#"..item_guid.." *01*元宝充值    >  \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*「返回」>\n"
	return msg
end

--东临城

function dlc(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   〖#COLOREND#东临城#COLORCOLOR_BLUE#〗#COLOREND#\n \n"
        msg = msg.."#COLORCOLOR_BLUE#  〖#COLOREND#商店#COLORCOLOR_BLUE#〗#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#52#"..item_guid.." *01*老兵        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#48#"..item_guid.." *01*裁缝        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#49#"..item_guid.." *01*药材商      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#50#"..item_guid.." *01*杂货商      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#53#"..item_guid.." *01*铁匠        >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#54#"..item_guid.." *01*首饰商      >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#55#"..item_guid.." *01*仓库管理员  >  \n \n"
        msg = msg.."#COLORCOLOR_BLUE#  〖#COLOREND#功能#COLORCOLOR_BLUE#〗#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#56#"..item_guid.." *01*东临城军需官>  "
            msg = msg.."#OFFSET<X:-4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#51#"..item_guid.." *01*驯兽师      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#72#"..item_guid.." *01*烈焰深渊传送人>  \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*「返回」>\n"
	return msg
end

--天桑村

function tsc(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   〖#COLOREND#天桑村#COLORCOLOR_BLUE#〗#COLOREND#\n \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#61#"..item_guid.." *01*裁缝        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#62#"..item_guid.." *01*药材商      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#63#"..item_guid.." *01*杂货商      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#64#"..item_guid.." *01*铁匠        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#65#"..item_guid.." *01*车夫        >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#66#"..item_guid.." *01*新手引导员  >  "
            msg = msg.."#OFFSET<X:-3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#73#"..item_guid.." *01*书商        >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#67#"..item_guid.." *01*首饰商      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#68#"..item_guid.." *01*仓库管理员  >  \n \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*「返回」>\n"
	return msg
end

--神歌城
function sgc(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   〖#COLOREND#神歌城#COLORCOLOR_BLUE#〗#COLOREND#\n \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#89#"..item_guid.." *01*神歌城管理人>  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#90#"..item_guid.." *01*铁匠        >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#91#"..item_guid.." *01*药材商      >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#92#"..item_guid.." *01*裁缝        >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#93#"..item_guid.." *01*首饰商      >  \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#94#"..item_guid.." *01*杂货商      >  \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*「返回」>\n"
	return msg
end
--野外
function yw(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   〖#COLOREND#野外#COLORCOLOR_BLUE#〗#COLOREND#\n \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#71#"..item_guid.." *01*神秘老者    >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#79#"..item_guid.." *01*绝路谷杂货商>  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#80#"..item_guid.." *01*绝路谷仓库  >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#81#"..item_guid.." *01*绝路谷书商  >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#82#"..item_guid.." *01*红名村杂货商>  \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#83#"..item_guid.." *01*受伤的弓箭手>  "
        msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#84#"..item_guid.." *01*濒死的人类  >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#85#"..item_guid.." *01*绝路城守卫  >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#86#"..item_guid.." *01*妖山暗穴守卫>  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#87#"..item_guid.." *01*天荒邪庙守卫>  \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#88#"..item_guid.." *01*天荒阵守卫  >  \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*「返回」>\n"
	return msg
end

function JumpMap(player_guid, index, item_guid)
    local npc_table = { "-n 巫山城铁匠", --1
                        "-n 巫山城裁缝", --2
                        "-n 装备大师", --3
                        "-n 天下第一道士", --4
                        "-n 天下第一法师", --5
                        "-n 天下第一战士", --6
                        "-n 巫山城书商", --7
                        "-n 升级奖励", --8
                        "-n 巫山城首饰商", --9
                        "-n 天机老人", --10
                        "-n 装备合成大师", --11
                        "-n 元宝充值", --12
                        "-n 巫山城老兵", --13
                        "-n 结婚管理员", --14
                        "-n 巫山城杂货商", --15
                        "-n 寄售商人", --16
                        "-n 武斗场使者", --17
                        "-n 师徒管理员", --18
                        "-n 行会管理员", --19
                        "-n 攻城战管理员", --20
                        "-n 巫山城炼药师", --21
                        "-n 巫山城药材商", --22
                        "-n 防沉迷管理员", --23
                        "-n 巫山城仓库管理员", --24
                        "-n 练功师 ", --25
                        "-n 武馆教练场外", --26
                        "-n 龙城军需官", --27
                        "-n 镇魔殿传送人", --28
                        "-n 禁地使者", --29
                        "-n 何童天小妖", --30
                        "-n 幻境引渡者", --31
                        "-n 通灵师", --32
                        "-n 古墓守卫", --33
                        "-n 夺宝大使", --34
                        "-n 引灵尊者", --35
                        "-n 龙城老兵", --36
                        "-n 封魔阵引路人", --37
                        "-n 龙城仓库管理员", --38
                        "-n 初级试炼教头", --39
                        "-n 锁魔宫传送人", --40
                        "-n 装备大师龙城", --41
                        "-n 意见箱", --42
                        "-n 天机老人龙城", --43
                        "-n 传花使者", --44
                        "-n 元宝充值", --45
                        "-n 龙城杂货商", --46
                        "-n 龙城药材商", --47
                        "-n 东临城裁缝", --48
                        "-n 东临城药材商", --49
                        "-n 东临城杂货商", --50
                        "-n 驯兽师", --51
                        "-n 东临城老兵", --52
                        "-n 东临城铁匠", --53
                        "-n 东临城首饰商", --54
                        "-n 东临城仓库管理员", --55
                        "-n 东临城军需官", --56
                        "-n 龙城书商", --57
                        "-n 龙城首饰商", --58
                        "-n 龙城裁缝", --59
                        "-n 龙城铁匠", --60
                        "-n 新手村裁缝左", --61
                        "-n 新手村药材商左", --62
                        "-n 新手村杂货商左", --63
                        "-n 新手村铁匠左", --64
                        "-n 新手村车夫", --65
                        "-n 新手引导员左", --66
                        "-n 新手村首饰商左", --67
                        "-n 新手村仓库管理员左", --68
                        "-n 悲伤的老人", --69
                        "-n 龙城冲级比赛", --70
                        "-n 神秘老者", --71
                        "-n 烈焰深渊传送人", --72
                        "-n 新手村书商左", --73
                        "-n 天下第一", --74
                        "-n 神之翼", --75
                        "-n 幸运转盘使者", --76
                        "-n 巫山城冲级比赛", --77
                        "-n 练功师", --78
                        "-n 绝路谷杂货商", --79
                        "-n 绝路谷仓库管理员", --80
                        "-n 绝路谷书商", --81
                        "-n 红名村杂货商", --82
                        "-n 受伤的弓箭手", --83
                        "-n 濒死的人类", --84
                        "-n 绝路城守卫", --85
                        "-n 妖山暗穴守卫", --86
                        "-n 天荒邪庙守卫", --87
                        "-n 天荒阵守卫", --88
                        "-n 神歌城管理人", --89
                        "-n 神歌城铁匠", --90
                        "-n 神歌城药材商", --91
                        "-n 神歌城裁缝", --92
                        "-n 神歌城首饰商", --93
                        "-n 神歌城杂货商", --94
					   }
	if not lualib:Player_RunGMCmd(player_guid, "mv", npc_table[tonumber(index)]) then
        return "追踪NPC失败"
    end


    return ""
end
