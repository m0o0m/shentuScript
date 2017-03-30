--自定义变量表
local bianliang = {"zhongqiou1", "zhongqiou2", "zhongqiou3", "zhongqiou4", "zhongqiou5", "zhongqiou6", "zhongqiou7", "zhongqiou8", "zhongqiou9"}

local weizhi = {"一号位", "二号位", "三号位", "四号位", "五号位", "六号位", "七号位", "八号位", "九号位"}

--普通物品表
local item = {
				{"初级藏宝图", "初级藏宝图", "1990135240", 1}, 
                {"中级藏宝图", "中级藏宝图", "1990135241", 1}, 
                {"高级藏宝图", "高级藏宝图", "1990135242", 1}, 
                {"战神油", "战神油", "1990120026", 1}, 
                {"双倍经验卷轴", "双倍经验卷轴", "1990120029", 1}, 
                {"双倍经验卷轴", "双倍经验卷轴", "1990120029", 1}, 
                {"3倍经验卷轴", "3倍经验卷轴", "1990120030", 1}, 
                {"开光印", "开光印", "1990135336", 1}, 
                {"开光印", "开光印", "1990135336", 1}, 
                {"开光印", "开光印", "1990135336", 1}, 
                {"乾坤囊(10格)", "乾坤囊(10格)", "1990145004", 1}, 
                {"修炼石", "修炼石", "1990135252", 1}, 
                {"修炼石", "修炼石", "1990135252", 1}, 
                {"修炼石", "修炼石", "1990135252", 1}, 
                {"修炼石", "修炼石", "1990135252", 1}, 
                {"超级聚灵珠", "超级聚灵珠", "1990135237", 1}, 
                {"天机罗盘", "天机罗盘", "1990135297", 1}, 
                {"超级聚灵珠", "超级聚灵珠", "1990135237", 1}, 
                {"天机罗盘", "天机罗盘", "1990135297", 1}, 
                {"超级聚灵珠", "超级聚灵珠", "1990135237", 1}, 
                {"天机罗盘", "天机罗盘", "1990135297", 1}, 
                {"超级聚灵珠", "超级聚灵珠", "1990135237", 1}, 
                {"天机罗盘", "天机罗盘", "1990135297", 1}, 
                {"符文", "符文", "1990135234", 1}, 
                {"神羽", "神羽", "1990120036", 1}, 
                {"神羽", "神羽", "1990120036", 2}, 
                {"神羽", "神羽", "1990120036", 5}, 
                {"符文", "符文", "1990135234", 1}, 
                {"神羽", "神羽", "1990120036", 1}, 
                {"神羽", "神羽", "1990120036", 2}, 
                {"神羽", "神羽", "1990120036", 5}, 
                {"神羽", "神羽", "1990120036", 10}, 
                {"神羽", "神羽", "1990120036", 20}, 
                {"神羽", "神羽", "1990120036", 50}, 
			}
--勋章表			
local xunzhang = {
					 {"欢乐国庆徽章", "欢乐国庆徽章", "1990120038"}, 
					 {"国庆特别徽章", "国庆特别徽章", "1990120038"},
					 {"建国荣誉徽章", "建国荣誉徽章", "1990120038"},
					 {"霸下玄龟(未开光)", "霸下玄龟(未开光)", "1990120353"},
				}			
--抽取欢乐勋章机率表			
local rate = {
				{100, 1},
				{200, 2},
				{300, 4},
				{400, 7},
				{500, 15},
				{600, 20},
				{700, 35},
				{800, 70},
				{900, 100},
			}			

local duihuan = {
					{"欢乐国庆徽章", "欢乐国庆徽章", "国庆勋章碎片", 10},
					{"国庆特别徽章", "国庆特别徽章", "欢乐国庆徽章", 10},
					{"建国荣誉徽章", "建国荣誉徽章", "国庆特别徽章", 2},
				}



			
function main(npc, player)
	local start_time = lualib:GetAllDays(lualib:Str2Time("2012-9-28 00:00:00"))
	local end_time = lualib:GetAllDays(lualib:Str2Time("2012-10-8 23:59:00"))
	
	local a = lualib:GetAllTime()
	local timeStr = lualib:Time2Str("%Y-%m-%d %H:%M", a)
	
	local  msg = "     我是中秋国庆节日使者！\n \n活动时间:  9月28日0点-10月7日24点\n当前时间：  #COLORCOLOR_BLUE#"..timeStr.."#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700017>#<@choujiang *01* 幸运抽奖>     #IMAGE<ID:1902700017>#<@dhxz *01* 兑换国庆纪念勋章>     #IMAGE<ID:1902700017>#<@info *01* 活动说明>\n\n"
	msg = msg.."<@leave *01*离开>\n"
	return msg
end


function leave()
	return ""
end

--活动说明

function info(npc, player)
	local msg = "                         #COLORCOLOR_ORANGE#活动介绍#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700017>#<@sub_info#1 *01*幸运抽奖>          #IMAGE<ID:1902700017>#<@sub_info#2 *01*兑换纪念勋章>\n \n"
	msg = msg.."<@main *01*返回>"
	return msg
end


function sub_info(npc, player, types)
	local types = tonumber(types)
	local msg = ""
	if types == 1 then 
		msg = "                         #COLORCOLOR_ORANGE#幸运抽奖#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg..[[1. 抽奖可获得游戏内各类稀有道具
		
	2. 抽取完整个奖池必定能获得一枚国庆纪念勋章，更有机率获得高级纪念勋章！]]
	elseif types == 2 then
		msg = "                       #COLORCOLOR_ORANGE#兑换纪念勋章#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg..[[1. 活动期间在各大地宫击败喽啰可获得材料，集齐相应数量可以兑换国庆纪念勋章！。
		
	2. 而且活动怪物还会掉落月饼，使用月饼可增加自身属性！]]
	end
	msg = msg.."\n \n<@main *01*返回>"
	return msg
end


--节日福利
function jl(npc, player)
	local msg = ""
	local times = lualib:GetAllDays(0)
	local intTime = lualib:GetInt(player, "zhongqiou")
	
	if times == intTime then
		return "您今天已经领取过奖励！"
	end
	
	lualib:AddBuff(player, "中秋国庆快乐", 90)
	lualib:SetInt(player, "zhongqiou", times)
end

--翻牌系统
function choujiang(npc, player, itemIcon)
	local msg = ""
	local numx = 1
	local numy = 1
	local x = 85
	local y = 50
	
	local cishu = 0
	for i = 1, #bianliang do
		local strs = lualib:GetStr(player, bianliang[i])
		if strs ~= "" then
			cishu = cishu + 1
		end
	end
	if cishu == 9 then
		msg = msg.."本轮已经全部抽取完毕，请重置奖池从新开始！\n"	
	else
		msg = msg.."本次抽取需要花费"..rate[cishu + 1][1].."元宝，抽取整个奖池必定能获得国庆纪念勋章！\n"
	end
	
	
	
	for i = 1, #weizhi do
		local str = lualib:GetStr(player, bianliang[i])
		if str == "" then
			msg = msg.."#POS<X:" .. x * numx - 30 .. ">##POS<Y:" .. y * numy - 32 .. ">##IMAGE1990135247#"
			msg = msg.."#POS<X:" .. x * numx - 30 .. ">##POS<Y:" .. y * numy - 37 .. ">#<@chouqu#"..i.."#".. x * numx - 30  .."#".. y * numy - 32 .." *01*     >"
			msg = msg.."#POS<X:" .. x * numx - 32 .. ">##POS<Y:" .. y * numy - 20 .. ">#<@chouqu#"..i.."#".. x * numx - 32  .."#".. y * numy - 32 .." *01*"..weizhi[i]..">"
			numx = numx + 1
		else
			local str_t = string.split(str,"#")
			msg = msg.."#POS<X:" .. x * numx - 30 .. ">##POS<Y:" .. y * numy - 32 .. ">##IMAGE"..str_t[2].."#"
			msg = msg.."#POS<X:" .. x * numx - 32 .. ">##POS<Y:" .. y * numy - 20 .. ">#已抽取"
			numx = numx + 1
		end
		
		
		
		if numx > 3 then
			numx = 1
			numy = numy + 1
		end
	end
	
	local itemIcon = tonumber(itemIcon)
	if itemIcon ~= nil then
		itemIcon = itemIcon - 100000
		msg = msg.."\n#POS<X:302>##POS<Y:40>##COLORCOLOR_BLUE#[上次获得]#COLOREND#\n"
		msg = msg.."\n#POS<X:305>##POS<Y:68>##IMAGE"..itemIcon.."#\n"
		msg = msg.."#POS<X:290>##POS<Y:150>##IMAGE1902700030##POS<X:300>##POS<Y:148>#<@chongzhi# *01*「重置奖池」>"
	else
		msg = msg.."#POS<X:290>##POS<Y:132>##IMAGE1902700030##POS<X:300>##POS<Y:130>#<@chongzhi# *01*「重置奖池」>"
	end
	return msg
end
	
function chouqu(npc, player, types, x, y)
	local player_Name = lualib:Name(player)
	local cishu = 0
	for i = 1, #bianliang do
		local strs = lualib:GetStr(player, bianliang[i])
		if strs ~= "" then
			cishu = cishu + 1
		end
	end
	
	if not lualib:Player_IsIngotEnough(player, rate[cishu + 1][1], false) then return "你的元宝不足"..rate[cishu + 1][1].."，无法继续抽取！" end
	
	lualib:Player_SubIngot(player, rate[cishu + 1][1], false, "国庆抽奖", "国庆抽奖")
	
	
	local itemName = ""
	local itemIcon = ""
	--获取NPC“zhongqiou”自定义变量，产出高级勋章时间
	local intTime = lualib:GetInt(npc, "zhongqiou")
	local times = lualib:GetAllDays(0)
	--奖池内获取欢乐勋章标记“guoqingchoujiang”，1为已获得
	local huode = lualib:GetInt(player, "guoqingchoujiang")
	if intTime ~= times and cishu > 5 and lualib:GenRandom(1,10000) <= 100 then
		
			local rand1 = lualib:GenRandom(2,#xunzhang)
			lualib:AddItem(player, xunzhang[rand1][2], 1, false, "","")
			lualib:SysMsg_SendCenterMsg(1, "玩家【"..player_Name.."】在中秋国庆大使幸运抽奖中获得了【"..xunzhang[rand1][1].."】","")
			itemName = xunzhang[rand1][1]
			itemIcon = xunzhang[rand1][3]
			lualib:SetInt(npc, "zhongqiou", times)
	elseif huode ~= 1 and rate[cishu + 1][2] >= lualib:GenRandom(1,100) then
		
		lualib:AddItem(player, xunzhang[1][2], 1, false, "","")
		lualib:SysMsg_SendCenterMsg(1, "玩家【"..player_Name.."】在中秋国庆大使幸运抽奖中获得了【"..xunzhang[1][1].."】","")
		itemName = xunzhang[1][1]
		itemIcon = xunzhang[1][3]
		lualib:SetInt(player, "guoqingchoujiang", 1)	
	else
		
		local sj = lualib:GenRandom(1,#item)
		lualib:AddItem(player, item[sj][2], item[sj][4], false, "","")
		itemName = item[sj][1]
		itemIcon = item[sj][3]
	end
	
	local b = itemName.."#"..itemIcon
	lualib:SetStr(player, bianliang[tonumber(types)], b)
	
	lualib:RunClientScript(player, "ItemEffect", "choujiang", x.."#"..y)
	
--[[	local num = 0
	for i = 1, #bianliang do
		local str = lualib:GetStr(player, bianliang[i])
		if str ~= "" then
			num = num + 1
		end
	end
	
	if num == #bianliang then 
		for i = 1, #bianliang do
			lualib:SetStr(player, bianliang[i],"")
		end
		lualib:SetInt(player, "guoqingchoujiang", 0)
	end]]
	
	return choujiang(npc, player, itemIcon)
end


function chongzhi(npc, player)
	for i = 1, #bianliang do
		lualib:SetStr(player, bianliang[i],"")
	end
	lualib:SetInt(player, "guoqingchoujiang", 0)
	return choujiang(npc, player)
end


--勋章兑换
function dhxz(npc, player)
	local msg = "请选择你要兑换的勋章！\n \n"
	for i = 1, #duihuan do
		msg = msg.."<@qr#"..i.." *01*"..duihuan[i][1].."        >"
	end
	msg = msg.."\n \n<@main *01*返回>"
	return msg
end

function qr(npc, player, types)
	local types = tonumber(types)
	local msg = "兑换"..duihuan[types][1].."需要使用"..duihuan[types][4].."个"..duihuan[types][3].."，你确定兑换吗？\n \n"
	msg = msg.."<@exchange#"..types.." *01*确定兑换>\n \n"
	msg = msg.."<@main *01*返回>"
	
	return msg
end

function exchange(npc, player, types)
	local types = tonumber(types)
	local msg = "兑换成功！"
	if lualib:BagFree(player, true, false, false) < 1 then
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要1个格子！")
		return "背包空间不够，需要1个格子！"
	end
	
	if not lualib:DelItem(player, duihuan[types][3], duihuan[types][4], 2, "国庆勋章合成", player) then 
		local s = "你没有"..duihuan[types][4].."个"..duihuan[types][3].."，无法合成！"
		return s
	end
	
	lualib:AddItem(player, duihuan[types][2], 1, false, "国庆勋章合成", player)
	return msg
end

