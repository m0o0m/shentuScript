function main(npc, player)
    msg = "排行榜的称号，都可以在我这里领取呦！\n \n \n"
    msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@lqch *01*领取称号>\n"
    msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700030##OFFSET<X:0,Y:-1>#<@chjs *01*称号介绍>\n \n \n \n"
    msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@chjs *01*[离开]>"
    return msg
end

function lqch(npc, player)
	msg = "你要领取那个排行榜的称号呢\n \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@hfb *01*【豪富榜】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@bqb *01*【兵器榜】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@erb *01*【恶人榜】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@gspx *01*【高手排行】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@mlpx *01*【魅力排行】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@txsc *01*【铁血沙场】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@tlmtx *01*【桃李满天下】>称号\n"
	msg = msg.."                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
    return msg
end

function gspx(npc, player)
	msg = "你要领取那个称号呢\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@gspx1 *01*领取:排名第一的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@gspx2 *01*领取:排名第二的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@gspx3 *01*领取:排名第三的称号>\n"
    return msg
end

function gspx1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 8);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function gspx2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 7);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function gspx3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 6);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function mlpx(npc, player)
	msg = "你要领取那个称号呢\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@mlpx1 *01*领取:排名第一的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@mlpx2 *01*领取:排名第二的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@mlpx3 *01*领取:排名第三的称号>\n"
    return msg
end


function mlpx1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 19);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function mlpx2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 18);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function mlpx3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 17);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function hfb(npc, player)
	msg = "你要领取那个称号呢\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@hfb1 *01*领取:排名第一的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@hfb2 *01*领取:排名第二的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@hfb3 *01*领取:排名第三的称号>\n"
    return msg
end

function hfb1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 50);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function hfb2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 49);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function hfb3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 57);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function bqb(npc, player)
	msg = "你要领取那个称号呢\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@bqb1 *01*领取:排名第一的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@bqb2 *01*领取:排名第二的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@bqb3 *01*领取:排名第三的称号>\n"
    return msg
end

function bqb1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function bqb2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function bqb3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function txsc(npc, player)
	msg = "你要领取那个称号呢\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@txsc1 *01*领取:排名第一的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@txsc2 *01*领取:排名第二的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@txsc3 *01*领取:排名第三的称号>\n"
    return msg
end

function txsc1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 11);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function txsc2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 10);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function txsc3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 9);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function tlmtx(npc, player)
	msg = "你要领取那个称号呢\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx1 *01*领取:排名第一的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx2 *01*领取:排名第二的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx3 *01*领取:排名第三的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx4 *01*领取:排名第四的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx5 *01*领取:排名第五的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx6 *01*领取:排名第六-十的称号>\n"
    return msg
end

function tlmtx1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 36);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function tlmtx2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 35);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function tlmtx3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 33);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function tlmtx4(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 32);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function tlmtx5(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 34);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function tlmtx6(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 31);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function erb(npc, player)
	msg = "你要领取那个称号呢\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@erb1 *01*领取:排名第一的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@erb2 *01*领取:排名第二的称号>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@erb3 *01*领取:排名第三的称号>\n"
    return msg
end

function erb1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function erb2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function erb3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function likai(npc, player)
	return ""
end

function chjs(npc, player)
	msg = "你要领取那个排行榜的称号呢\n \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@hfb *01*【豪富榜】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@bqb *01*【兵器榜】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@erb *01*【恶人榜】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@gspx *01*【高手排行】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@mlpx *01*【魅力排行】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@txsc *01*【铁血沙场】>称号\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#领取<@tlmtx *01*【桃李满天下】>称号\n"
	msg = msg.."                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
    return msg
end

--[[function addch1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch2(npc, player)
	if lualib:HasTitle(player, 2) == false then
	lualib:AddTitle(player, 2);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch3(npc, player)
	if lualib:HasTitle(player, 3) == false then
	lualib:AddTitle(player, 3);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch6(npc, player)
	if lualib:HasTitle(player, 6) == false then
	lualib:AddTitle(player, 6);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch7(npc, player)
	if lualib:HasTitle(player, 7) == false then
	lualib:AddTitle(player, 7);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch8(npc, player)
	if lualib:HasTitle(player, 8) == false then
	lualib:AddTitle(player, 8);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch9(npc, player)
	if lualib:HasTitle(player, 9) == false then
	lualib:AddTitle(player, 9);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch10(npc, player)
	if lualib:HasTitle(player, 10) == false then
	lualib:AddTitle(player, 10);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch11(npc, player)
	if lualib:HasTitle(player, 11) == false then
	lualib:AddTitle(player, 11);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch12(npc, player)
	if lualib:HasTitle(player, 12) == false then
	lualib:AddTitle(player, 12);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch13(npc, player)
	if lualib:HasTitle(player, 13) == false then
	lualib:AddTitle(player, 13);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch14(npc, player)
	if lualib:HasTitle(player, 14) == false then
	lualib:AddTitle(player, 14);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch15(npc, player)
	if lualib:HasTitle(player, 15) == false then
	lualib:AddTitle(player, 15);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch16(npc, player)
	if lualib:HasTitle(player, 16) == false then
	lualib:AddTitle(player, 16);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch17(npc, player)
	if lualib:HasTitle(player, 17) == false then
	lualib:AddTitle(player, 17);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch18(npc, player)
	if lualib:HasTitle(player, 18) == false then
	lualib:AddTitle(player,18);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch19(npc, player)
	if lualib:HasTitle(player, 19) == false then
	lualib:AddTitle(player, 19);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch20(npc, player)
	if lualib:HasTitle(player, 20) == false then
	lualib:AddTitle(player, 20);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch21(npc, player)
	if lualib:HasTitle(player, 21) == false then
	lualib:AddTitle(player, 21);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end

function addch22(npc, player)
	if lualib:HasTitle(player, 22) == false then
	lualib:AddTitle(player, 22);
	return "领取成功"
	else
    return "你已经有该称号了!"
	end
end]]



    --void AddTitle(const std::string& player_guid, UINT16 title_id);添加
    --void RemoveTitle(const std::string& player_guid, UINT16 title_id);删除
    --void ApplyTitle(const std::string& player_guid, UINT16 title_id);应用
    --void HasTitle(const std::string& player_guid, UINT16 title_id);检测
