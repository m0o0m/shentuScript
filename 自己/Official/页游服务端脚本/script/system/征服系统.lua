-------------------------------------------妖山暗穴征服界面--------------------------------------------------------
function chumojiemian1(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"yaoshanzhengfu1",0)
lualib:SetInt(player,"yaoshanzhengfu2",0)
lualib:SetInt(player,"yaoshanzhengfu3",0)
lualib:SetInt(player,"yaoshanzhengfu4",0)
lualib:SetInt(player,"yaoshanzhengfu5",0)
lualib:SetInt(player,"yaoshanzhengfu6",0)
lualib:SetInt(player,"yaoshanzhengfu7",0)
lualib:SetInt(player,"yaoshanzhengfu8",0)
lualib:SetInt(player,"yaoshanzhengfu9",0)
lualib:SetInt(player,"yaoshanzhengfu10",0)
lualib:SetInt(player,"yaoshanzhengfu11",0)
lualib:SetInt(player,"yaoshanzhengfu12",0)
lualib:SetInt(player,"yaoshanzhengfu13",0)
lualib:SetInt(player,"yaoshanzhengfu14",0)
lualib:SetInt(player,"yaoshanzhengfudian",0)
lualib:SetInt(player,"chumolingqu110",0)
lualib:SetInt(player,"chumolingqu120",0)
lualib:SetInt(player,"chumolingqu130",0)
lualib:SetInt(player,"chumolingqu140",0)
lualib:SetInt(player,"chumolingqu150",0)
lualib:SetInt(player,"chumolingqu160",0)
lualib:SetInt(player,"chumolingqu170",0)
lualib:SetInt(player,"chumolingqu180",0)
lualib:SetInt(player,"chumolingqu190",0)
lualib:SetInt(player,"chumolingqu1100",1)--]]

	yaoshanzhengfudian = 4/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu2")
				+6/30*lualib:GetInt(player,"yaoshanzhengfu3")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu4")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu5")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu6")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu7")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu8")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu9")
				+10/3*lualib:GetInt(player,"yaoshanzhengfu10")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu11")
				--+6/2*lualib:GetInt(player,"yaoshanzhengfu12")
				+10/10*lualib:GetInt(player,"yaoshanzhengfu13")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu14")
				
	if yaoshanzhengfudian >= 10 and string.len(tostring(yaoshanzhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,5)
	elseif yaoshanzhengfudian < 10 and string.len(tostring(yaoshanzhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,4)
	else
		yaoshanzhengfudxs = yaoshanzhengfudian
	end

	local msg = "#COLORCOLOR_RED#【征服-妖山暗穴】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. yaoshanzhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu1 *01*领取进度奖励>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#征服目标                      状况                  占比重#COLOREND#\n"
	if lualib:GetInt(player,"yaoshanzhengfu1") < 30 then
		msg = msg .. "消灭30只尸奴                  " .. lualib:GetInt(player,"yaoshanzhengfu1") .. "/30                    4%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭30只尸奴                  " .. lualib:GetInt(player,"yaoshanzhengfu1") .. "/30                    4%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu2") < 30 then
		msg = msg .. "消灭30只鬼面监工              " .. lualib:GetInt(player,"yaoshanzhengfu2") .. "/30                    5%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭30只鬼面监工              " .. lualib:GetInt(player,"yaoshanzhengfu2") .. "/30                    5%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu3") < 30 then
		msg = msg .. "消灭30只妖面监工              " .. lualib:GetInt(player,"yaoshanzhengfu3") .. "/30                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭30只妖面监工              " .. lualib:GetInt(player,"yaoshanzhengfu3") .. "/30                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu4") < 30 then
		msg = msg .. "消灭30只飞芒                  " .. lualib:GetInt(player,"yaoshanzhengfu4") .. "/30                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭30只飞芒                  " .. lualib:GetInt(player,"yaoshanzhengfu4") .. "/30                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu5") < 30 then
		msg = msg .. "消灭30只飞萤                  " .. lualib:GetInt(player,"yaoshanzhengfu5") .. "/30                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭30只飞萤                  " .. lualib:GetInt(player,"yaoshanzhengfu5") .. "/30                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu6") < 30 then
		msg = msg .. "消灭30只魔萤                  " .. lualib:GetInt(player,"yaoshanzhengfu6") .. "/30                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭30只魔萤                  " .. lualib:GetInt(player,"yaoshanzhengfu6") .. "/30                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu7") < 30 then
		msg = msg .. "消灭30只掘铲尸奴              " .. lualib:GetInt(player,"yaoshanzhengfu7") .. "/30                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭30只掘铲尸奴              " .. lualib:GetInt(player,"yaoshanzhengfu7") .. "/30                    8%#COLOREND#\n"
	end
	
	
	if lualib:GetInt(player,"yaoshanzhengfu8") < 30 then
		msg = msg .. "消灭30只铁镐尸奴              " .. lualib:GetInt(player,"yaoshanzhengfu8") .. "/30                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭30只铁镐尸奴              " .. lualib:GetInt(player,"yaoshanzhengfu8") .. "/30                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu9") < 30 then
		msg = msg .. "消灭30只尸奴工头              " .. lualib:GetInt(player,"yaoshanzhengfu9") .. "/30                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭30只尸奴工头              " .. lualib:GetInt(player,"yaoshanzhengfu9") .. "/30                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu10") < 3 then
		msg = msg .. "消灭3只精英怪物               " .. lualib:GetInt(player,"yaoshanzhengfu10") .. "/3                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭3只精英怪物               " .. lualib:GetInt(player,"yaoshanzhengfu10") .. "/3                    10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu11") < 1 then
		msg = msg .. "消灭1只千年树魔               " .. lualib:GetInt(player,"yaoshanzhengfu11") .. "/1                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭1只千年树魔               " .. lualib:GetInt(player,"yaoshanzhengfu11") .. "/1                    10%#COLOREND#\n"
	end
	
	--[[if lualib:GetInt(player,"yaoshanzhengfu12") < 2 then
		msg = msg .. "打开2个宝箱                   " .. lualib:GetInt(player,"yaoshanzhengfu12") .. "/2                     6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#打开2个宝箱                   " .. lualib:GetInt(player,"yaoshanzhengfu12") .. "/2                     6%#COLOREND#\n"
	end--]]
	
	if lualib:GetInt(player,"yaoshanzhengfu13") < 10 then
		msg = msg .. "收集10个妖山矿石              " .. lualib:GetInt(player,"yaoshanzhengfu13") .. "/10                   10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集10个妖山矿石              " .. lualib:GetInt(player,"yaoshanzhengfu13") .. "/10                   10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"yaoshanzhengfu14") < 1 then
		msg = msg .. "收集1个黑暗矿石               " .. lualib:GetInt(player,"yaoshanzhengfu14") .. "/1                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集1个黑暗矿石               " .. lualib:GetInt(player,"yaoshanzhengfu14") .. "/1                    10%#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------妖山暗穴领取界面--------------------------------------------------------
function chumolingqu1(player)
	local msg = "#COLORCOLOR_RED#【征服-妖山暗穴】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. yaoshanzhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian1 *01*查看征服进度>\n"
	msg = msg .. "#COLORCOLOR_GREENG#征服度10%#COLOREND#               绑钱袋(10万)            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu110") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. yaoshanzhengfudian .. "#10#绑钱袋(10万)#1#chumolingqu110#chumolingqu1 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度20%#COLOREND#               回阳水包*2              #COLOREND#"
	if lualib:GetInt(player,"chumolingqu120") == 0 then 
		msg = msg .. "#OFFSET<X:-3,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#20#太阳水包#2#chumolingqu120#chumolingqu1 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度30%#COLOREND#               聚灵珠(小)*2            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu130") == 0 then 
		msg = msg .. "#OFFSET<X:-2,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#30#聚灵珠(小)#2#chumolingqu130#chumolingqu1 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度40%#COLOREND#               1.5倍经验卷轴*1         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu140") == 0 then 
		msg = msg .. "#OFFSET<X:-4,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#40#1.5倍经验卷轴#1#chumolingqu140#chumolingqu1 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-4,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度50%#COLOREND#               随机传送(10次)*1        #COLOREND#"
	if lualib:GetInt(player,"chumolingqu150") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#50#随机传送(10次)#1#chumolingqu150#chumolingqu1 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度60%#COLOREND#               封印鉴定符*3            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu160") == 0 then 
		msg = msg .. "#OFFSET<X:-2,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#60#封印鉴定符#3#chumolingqu160#chumolingqu1 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度70%#COLOREND#               灵元珠*3                #COLOREND#"
	if lualib:GetInt(player,"chumolingqu170") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. yaoshanzhengfudian .. "#70#灵元珠#3#chumolingqu170#chumolingqu1 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度80%#COLOREND#               低级转神石              #COLOREND#"
	if lualib:GetInt(player,"chumolingqu180") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. yaoshanzhengfudian .. "#80#低级转神石#1#chumolingqu180#chumolingqu1 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度90%#COLOREND#               #COLORCOLOR_RED#中级鉴定灵符*3#COLOREND#          #COLOREND#"
	if lualib:GetInt(player,"chumolingqu190") == 0 then 
		msg = msg .. "#OFFSET<X:-2,Y:0>#<@chumogeiyu#" .. yaoshanzhengfudian .. "#90#中级鉴定灵符#3#chumolingqu190#chumolingqu1 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度100%#COLOREND#              #COLORCOLOR_RED#35级套装单件#COLOREND#           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu1100") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. yaoshanzhengfudian .. "#100#妖山暗穴至宝#1#chumolingqu1100#chumolingqu1 *01*领取奖励>\n"
	else
		--msg = msg .. "<@chumochongling#100#妖山暗穴至宝#1 *01*再次领取>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#提示：可以从其他人手中购买道具完成搜集道具的目标。#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end


-------------------------------------------天荒阵征服界面--------------------------------------------------------
function chumojiemian2(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"tianhuangzhengfu1",0)
lualib:SetInt(player,"tianhuangzhengfu2",0)
lualib:SetInt(player,"tianhuangzhengfu3",0)
lualib:SetInt(player,"tianhuangzhengfu4",0)
lualib:SetInt(player,"tianhuangzhengfu5",0)
lualib:SetInt(player,"tianhuangzhengfu6",0)
lualib:SetInt(player,"tianhuangzhengfu7",0)
lualib:SetInt(player,"tianhuangzhengfu8",0)
lualib:SetInt(player,"tianhuangzhengfu9",0)
lualib:SetInt(player,"tianhuangzhengfu10",0)
lualib:SetInt(player,"tianhuangzhengfu11",0)
lualib:SetInt(player,"tianhuangzhengfu12",0)
lualib:SetInt(player,"tianhuangzhengfu13",0)
lualib:SetInt(player,"tianhuangzhengfu14",0)
lualib:SetInt(player,"tianhuangzhengfudian",0)
lualib:SetInt(player,"chumolingqu210",0)
lualib:SetInt(player,"chumolingqu220",0)
lualib:SetInt(player,"chumolingqu230",0)
lualib:SetInt(player,"chumolingqu240",0)
lualib:SetInt(player,"chumolingqu250",0)
lualib:SetInt(player,"chumolingqu260",0)
lualib:SetInt(player,"chumolingqu270",0)
lualib:SetInt(player,"chumolingqu280",0)
lualib:SetInt(player,"chumolingqu290",0)
lualib:SetInt(player,"chumolingqu2100",1)--]]

	tianhuangzhengfudian = 6/50*lualib:GetInt(player,"tianhuangzhengfu1")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu2")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu3")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu4")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu5")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu6")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu7")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu8")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu9")
				+6/50*lualib:GetInt(player,"tianhuangzhengfu10")
				+10/6*lualib:GetInt(player,"tianhuangzhengfu11")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu12")
				--+5/4*lualib:GetInt(player,"tianhuangzhengfu13")
				+10/20*lualib:GetInt(player,"tianhuangzhengfu14")
				+10/1*lualib:GetInt(player,"tianhuangzhengfu15")
				
	if tianhuangzhengfudian >= 10 and string.len(tostring(tianhuangzhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,5)
	elseif tianhuangzhengfudian < 10 and string.len(tostring(tianhuangzhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		tianhuangzhengfudxs = string.sub(tianhuangzhengfudian,1,4)
	else
		tianhuangzhengfudxs = tianhuangzhengfudian
	end

	local msg = "#COLORCOLOR_RED#【征服-天荒阵】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. tianhuangzhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu2 *01*领取进度奖励>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#征服目标                      状况                  占比重#COLOREND#\n"
	if lualib:GetInt(player,"tianhuangzhengfu1") < 50 then
		msg = msg .. "消灭50只沙石魔                " .. lualib:GetInt(player,"tianhuangzhengfu1") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只沙石魔                " .. lualib:GetInt(player,"tianhuangzhengfu1") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu2") < 50 then
		msg = msg .. "消灭50只蓝兽                  " .. lualib:GetInt(player,"tianhuangzhengfu2") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只蓝兽                  " .. lualib:GetInt(player,"tianhuangzhengfu2") .. "/50                   6#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu3") < 50 then
		msg = msg .. "消灭50只巨蛾                  " .. lualib:GetInt(player,"tianhuangzhengfu3") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只巨蛾                  " .. lualib:GetInt(player,"tianhuangzhengfu3") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu4") < 50 then
		msg = msg .. "消灭50只散兵                  " .. lualib:GetInt(player,"tianhuangzhengfu4") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只散兵                  " .. lualib:GetInt(player,"tianhuangzhengfu4") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu5") < 50 then
		msg = msg .. "消灭50只魔兵                  " .. lualib:GetInt(player,"tianhuangzhengfu5") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只魔兵                  " .. lualib:GetInt(player,"tianhuangzhengfu5") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu6") < 50 then
		msg = msg .. "消灭50只刀奴                  " .. lualib:GetInt(player,"tianhuangzhengfu6") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只刀奴                  " .. lualib:GetInt(player,"tianhuangzhengfu6") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu7") < 50 then
		msg = msg .. "消灭50只风魔                  " .. lualib:GetInt(player,"tianhuangzhengfu7") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只风魔                  " .. lualib:GetInt(player,"tianhuangzhengfu7") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu8") < 50 then
		msg = msg .. "消灭50只古怪刀客              " .. lualib:GetInt(player,"tianhuangzhengfu8") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只古怪刀客              " .. lualib:GetInt(player,"tianhuangzhengfu8") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu9") < 50 then
		msg = msg .. "消灭50只鬼面刀手              " .. lualib:GetInt(player,"tianhuangzhengfu9") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只鬼面刀手              " .. lualib:GetInt(player,"tianhuangzhengfu9") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu10") < 50 then
		msg = msg .. "消灭50只双刀侩子手            " .. lualib:GetInt(player,"tianhuangzhengfu10") .. "/50                   6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭50只双刀侩子手            " .. lualib:GetInt(player,"tianhuangzhengfu10") .. "/50                   6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu11") < 6 then
		msg = msg .. "消灭6只精英怪物               " .. lualib:GetInt(player,"tianhuangzhengfu11") .. "/6                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭6只精英怪物               " .. lualib:GetInt(player,"tianhuangzhengfu11") .. "/6                    10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu12") < 1 then
		msg = msg .. "消灭1只血禅师                 " .. lualib:GetInt(player,"tianhuangzhengfu12") .. "/1                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭1只血禅师                 " .. lualib:GetInt(player,"tianhuangzhengfu12") .. "/1                    10%#COLOREND#\n"
	end
	
	--[[if lualib:GetInt(player,"tianhuangzhengfu13") < 4 then
		msg = msg .. "打开4个宝箱                   " .. lualib:GetInt(player,"tianhuangzhengfu13") .. "/4                     5%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#打开4个宝箱                   " .. lualib:GetInt(player,"tianhuangzhengfu13") .. "/4                     5%#COLOREND#\n"
	end--]]
	
	if lualib:GetInt(player,"tianhuangzhengfu14") < 20 then
		msg = msg .. "收集20个妖兽指环              " .. lualib:GetInt(player,"tianhuangzhengfu14") .. "/20                   10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集20个妖兽指环              " .. lualib:GetInt(player,"tianhuangzhengfu14") .. "/20                   10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianhuangzhengfu15") < 1 then
		msg = msg .. "收集1个滴血禅珠               " .. lualib:GetInt(player,"tianhuangzhengfu15") .. "/1                    10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集1个滴血禅珠               " .. lualib:GetInt(player,"tianhuangzhengfu15") .. "/1                    10%#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#提示：可以从其他人手中购买道具完成搜集道具的目标。#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------天荒阵领取界面--------------------------------------------------------
function chumolingqu2(player)
	local msg = "#COLORCOLOR_RED#【征服-天荒阵】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. tianhuangzhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian2 *01*查看征服进度>\n"
	msg = msg .. "#COLORCOLOR_GREENG#征服度10%#COLOREND#               绑钱袋(20万)             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu210") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianhuangzhengfudian .. "#10#绑钱袋(20万)#1#chumolingqu210#chumolingqu2 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度20%#COLOREND#               强效太阳水包*2           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu220") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianhuangzhengfudian .. "#20#强效太阳水包#2#chumolingqu220#chumolingqu2 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度30%#COLOREND#               聚灵珠(中)*2             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu230") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#30#聚灵珠(中)#2#chumolingqu230#chumolingqu2 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度40%#COLOREND#               1.5倍经验卷轴*2          #COLOREND#"
	if lualib:GetInt(player,"chumolingqu240") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianhuangzhengfudian .. "#40#1.5倍经验卷轴#2#chumolingqu240#chumolingqu2 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度50%#COLOREND#               随机传送(10次)*2         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu250") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#50#随机传送(10次)#2#chumolingqu250#chumolingqu2 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度60%#COLOREND#               封印鉴定符*5             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu260") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#60#封印鉴定符#5#chumolingqu260#chumolingqu2 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:2,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度70%#COLOREND#               灵元珠*5                 #COLOREND#"
	if lualib:GetInt(player,"chumolingqu270") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#70#灵元珠#5#chumolingqu270#chumolingqu2 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度80%#COLOREND#               低级转神石*3            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu280") == 0 then 
		msg = msg .. "#OFFSET<X:3,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#80#低级转神石#3#chumolingqu280#chumolingqu2 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度90%#COLOREND#               #COLORCOLOR_RED#高级鉴定灵符*3#COLOREND#          #COLOREND#"
	if lualib:GetInt(player,"chumolingqu290") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianhuangzhengfudian .. "#90#高级鉴定灵符#3#chumolingqu290#chumolingqu2 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度100%#COLOREND#              #COLORCOLOR_RED#40级套装单件#COLOREND#             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu2100") == 0 then 
		msg = msg .. "#OFFSET<X:2,Y:0>#<@chumogeiyu#" .. tianhuangzhengfudian .. "#100#天荒阵至宝#1#chumolingqu2100#chumolingqu2 *01*领取奖励>\n"
	else
		--msg = msg .. "#OFFSET<X:2,Y:0>#<@chumochongling#100#天荒阵至宝#1 *01*再次领取>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------天荒邪庙征服界面--------------------------------------------------------
function chumojiemian3(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"xiemiaozhengfu1",0)
lualib:SetInt(player,"xiemiaozhengfu2",0)
lualib:SetInt(player,"xiemiaozhengfu3",0)
lualib:SetInt(player,"xiemiaozhengfu4",0)
lualib:SetInt(player,"xiemiaozhengfu5",0)
lualib:SetInt(player,"xiemiaozhengfu6",0)
lualib:SetInt(player,"xiemiaozhengfu7",0)
lualib:SetInt(player,"xiemiaozhengfu8",0)
lualib:SetInt(player,"xiemiaozhengfu9",0)
lualib:SetInt(player,"xiemiaozhengfu10",0)
lualib:SetInt(player,"xiemiaozhengfu11",0)
lualib:SetInt(player,"xiemiaozhengfu12",0)
lualib:SetInt(player,"xiemiaozhengfu13",0)
lualib:SetInt(player,"xiemiaozhengfu14",0)
lualib:SetInt(player,"xiemiaozhengfudian",0)
lualib:SetInt(player,"chumolingqu310",0)
lualib:SetInt(player,"chumolingqu320",0)
lualib:SetInt(player,"chumolingqu330",0)
lualib:SetInt(player,"chumolingqu340",0)
lualib:SetInt(player,"chumolingqu350",0)
lualib:SetInt(player,"chumolingqu360",0)
lualib:SetInt(player,"chumolingqu370",0)
lualib:SetInt(player,"chumolingqu380",0)
lualib:SetInt(player,"chumolingqu390",0)
lualib:SetInt(player,"chumolingqu3100",1)--]]

	xiemiaozhengfudian = 4/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu2")
				+6/100*lualib:GetInt(player,"xiemiaozhengfu3")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu4")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu5")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu6")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu7")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu8")
				+8/12*lualib:GetInt(player,"xiemiaozhengfu9")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu10")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu11")
				--+5/8*lualib:GetInt(player,"xiemiaozhengfu12")
				+10/40*lualib:GetInt(player,"xiemiaozhengfu13")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu14")
				
	if xiemiaozhengfudian >= 10 and string.len(tostring(xiemiaozhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,5)
	elseif xiemiaozhengfudian < 10 and string.len(tostring(xiemiaozhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,4)
	else
		xiemiaozhengfudxs = xiemiaozhengfudian
	end

	local msg = "#COLORCOLOR_RED#【征服-天荒邪庙】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. xiemiaozhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu3 *01*领取进度奖励>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#征服目标                      状况                  占比重#COLOREND#\n"
	if lualib:GetInt(player,"xiemiaozhengfu1") < 100 then
		msg = msg .. "消灭100只夜行僧              " .. lualib:GetInt(player,"xiemiaozhengfu1") .. "/100                    4%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只夜行僧              " .. lualib:GetInt(player,"xiemiaozhengfu1") .. "/100                    4%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu2") < 100 then
		msg = msg .. "消灭100只邪翅                " .. lualib:GetInt(player,"xiemiaozhengfu2") .. "/100                    5%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只邪翅                " .. lualib:GetInt(player,"xiemiaozhengfu2") .. "/100                    5%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu3") < 100 then
		msg = msg .. "消灭100只天原猛士            " .. lualib:GetInt(player,"xiemiaozhengfu3") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只天原猛士            " .. lualib:GetInt(player,"xiemiaozhengfu3") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu4") < 100 then
		msg = msg .. "消灭100只天原勇士            " .. lualib:GetInt(player,"xiemiaozhengfu4") .. "/100                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只天原勇士            " .. lualib:GetInt(player,"xiemiaozhengfu4") .. "/100                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu5") < 100 then
		msg = msg .. "消灭100只天原死士            " .. lualib:GetInt(player,"xiemiaozhengfu5") .. "/100                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只天原死士            " .. lualib:GetInt(player,"xiemiaozhengfu5") .. "/100                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu6") < 100 then
		msg = msg .. "消灭100只鬼面武者            " .. lualib:GetInt(player,"xiemiaozhengfu6") .. "/100                    7%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只鬼面武者            " .. lualib:GetInt(player,"xiemiaozhengfu6") .. "/100                    7%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu7") < 100 then
		msg = msg .. "消灭100只黑暗刺客            " .. lualib:GetInt(player,"xiemiaozhengfu7") .. "/100                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只黑暗刺客            " .. lualib:GetInt(player,"xiemiaozhengfu7") .. "/100                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu8") < 100 then
		msg = msg .. "消灭100只影刺                " .. lualib:GetInt(player,"xiemiaozhengfu8") .. "/100                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只影刺                " .. lualib:GetInt(player,"xiemiaozhengfu8") .. "/100                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu9") < 12 then
		msg = msg .. "消灭12只精英怪物             " .. lualib:GetInt(player,"xiemiaozhengfu9") .. "/12                    8%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭12只精英怪物             " .. lualib:GetInt(player,"xiemiaozhengfu9") .. "/12                    8%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu10") < 1 then
		msg = msg .. "消灭1只妖刀侍卫              " .. lualib:GetInt(player,"xiemiaozhengfu10") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭1只妖刀侍卫              " .. lualib:GetInt(player,"xiemiaozhengfu10") .. "/1                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu11") < 1 then
		msg = msg .. "消灭1只梵天僧                " .. lualib:GetInt(player,"xiemiaozhengfu11") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭1只梵天僧                " .. lualib:GetInt(player,"xiemiaozhengfu11") .. "/1                     10%#COLOREND#\n"
	end
	
	--[[if lualib:GetInt(player,"xiemiaozhengfu12") < 8 then
		msg = msg .. "打开8个宝箱                  " .. lualib:GetInt(player,"xiemiaozhengfu12") .. "/8                     5%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#打开8个宝箱                  " .. lualib:GetInt(player,"xiemiaozhengfu12") .. "/8                     5%#COLOREND#\n"
	end--]]
	
	if lualib:GetInt(player,"xiemiaozhengfu13") < 40 then
		msg = msg .. "收集40个邪教经书             " .. lualib:GetInt(player,"xiemiaozhengfu13") .. "/40                   10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集40个邪教经书             " .. lualib:GetInt(player,"xiemiaozhengfu13") .. "/40                   10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"xiemiaozhengfu14") < 1 then
		msg = msg .. "收集1个邪神令                " .. lualib:GetInt(player,"xiemiaozhengfu14") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集1个邪神令                " .. lualib:GetInt(player,"xiemiaozhengfu14") .. "/1                     10%#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#提示：可以从其他人手中购买道具完成搜集道具的目标。#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------天荒邪庙领取界面--------------------------------------------------------
function chumolingqu3(player)	
	local msg = "#COLORCOLOR_RED#【征服-天荒邪庙】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. xiemiaozhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian3 *01*查看征服进度>\n"
	msg = msg .. "#COLORCOLOR_GREENG#征服度10%#COLOREND#               绑钱袋(20万)*2           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu310") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. xiemiaozhengfudian .. "#10#绑钱袋(20万)#2#chumolingqu310#chumolingqu3 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度20%#COLOREND#               万年雪霜包               #COLOREND#"
	if lualib:GetInt(player,"chumolingqu320") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. xiemiaozhengfudian .. "#20#万年雪霜包#1#chumolingqu320#chumolingqu3 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度30%#COLOREND#               聚灵珠(大)*2             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu330") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#30#聚灵珠(大)#2#chumolingqu330 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度40%#COLOREND#               双倍经验卷轴             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu340") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. xiemiaozhengfudian .. "#40#双倍经验卷轴#1#chumolingqu340 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度50%#COLOREND#               随机传送(50次)*1         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu350") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#50#随机传送(50次)#1#chumolingqu350#chumolingqu3 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度60%#COLOREND#               封印鉴定符*10            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu360") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#60#封印鉴定符#10#chumolingqu360#chumolingqu3 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度70%#COLOREND#               灵元珠*10                #COLOREND#"
	if lualib:GetInt(player,"chumolingqu370") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#70#灵元珠#10#chumolingqu370#chumolingqu3 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度80%#COLOREND#               #COLORCOLOR_RED#中级转神石#COLOREND#              #COLOREND#"
	if lualib:GetInt(player,"chumolingqu380") == 0 then 
		msg = msg .. "#OFFSET<X:3,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#80#中级转神石#1#chumolingqu380#chumolingqu3 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度90%#COLOREND#               #COLORCOLOR_RED#物防精炼符(+10)*1#COLOREND#       #COLOREND#"
	if lualib:GetInt(player,"chumolingqu390") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. xiemiaozhengfudian .. "#90#物防精炼符(+10)#1#chumolingqu390#chumolingqu3 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度100%#COLOREND#              #COLORCOLOR_RED#45级套装单件#COLOREND#            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu3100") == 0 then 
		msg = msg .. "#OFFSET<X:2,Y:0>#<@chumogeiyu#" .. xiemiaozhengfudian .. "#100#天荒邪庙至宝#1#chumolingqu3100#chumolingqu3 *01*领取奖励>\n"
	else
		--msg = msg .. "#OFFSET<X:2,Y:0>#<@chumochongling#100#天荒邪庙至宝#1 *01*再次领取>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end


-------------------------------------------天魔石窟征服界面--------------------------------------------------------
function chumojiemian4(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"tianmozhengfu1",0)
lualib:SetInt(player,"tianmozhengfu2",0)
lualib:SetInt(player,"tianmozhengfu3",0)
lualib:SetInt(player,"tianmozhengfu4",0)
lualib:SetInt(player,"tianmozhengfu5",0)
lualib:SetInt(player,"tianmozhengfu6",0)
lualib:SetInt(player,"tianmozhengfu7",0)
lualib:SetInt(player,"tianmozhengfu8",0)
lualib:SetInt(player,"tianmozhengfu9",0)
lualib:SetInt(player,"tianmozhengfu10",0)
lualib:SetInt(player,"tianmozhengfu11",0)
lualib:SetInt(player,"tianmozhengfu12",0)
lualib:SetInt(player,"tianmozhengfu13",0)
lualib:SetInt(player,"tianmozhengfu14",0)
lualib:SetInt(player,"tianmozhengfudian",0)
lualib:SetInt(player,"chumolingqu410",0)
lualib:SetInt(player,"chumolingqu420",0)
lualib:SetInt(player,"chumolingqu430",0)
lualib:SetInt(player,"chumolingqu440",0)
lualib:SetInt(player,"chumolingqu450",0)
lualib:SetInt(player,"chumolingqu460",0)
lualib:SetInt(player,"chumolingqu470",0)
lualib:SetInt(player,"chumolingqu480",0)
lualib:SetInt(player,"chumolingqu490",0)
lualib:SetInt(player,"chumolingqu4100",1)--]]

	tianmozhengfudian = 6/100*lualib:GetInt(player,"tianmozhengfu1")
				+6/100*lualib:GetInt(player,"tianmozhengfu2")
				+6/100*lualib:GetInt(player,"tianmozhengfu3")
				+6/100*lualib:GetInt(player,"tianmozhengfu4")
				+6/100*lualib:GetInt(player,"tianmozhengfu5")
				+6/100*lualib:GetInt(player,"tianmozhengfu6")
				+6/100*lualib:GetInt(player,"tianmozhengfu7")
				+6/100*lualib:GetInt(player,"tianmozhengfu8")
				+6/100*lualib:GetInt(player,"tianmozhengfu9")
				+6/12*lualib:GetInt(player,"tianmozhengfu10")
				+10/1*lualib:GetInt(player,"tianmozhengfu11")
				+10/1*lualib:GetInt(player,"tianmozhengfu12")
				+10/40*lualib:GetInt(player,"tianmozhengfu13")
				+10/1*lualib:GetInt(player,"tianmozhengfu14")
				
	if tianmozhengfudian >= 10 and string.len(tostring(tianmozhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,5)
	elseif tianmozhengfudian < 10 and string.len(tostring(tianmozhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,4)
	else
		tianmozhengfudxs = tianmozhengfudian
	end

	local msg = "#COLORCOLOR_RED#【征服-天魔石窟】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. tianmozhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu4 *01*领取进度奖励>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#征服目标                      状况                  占比重#COLOREND#\n"
	if lualib:GetInt(player,"tianmozhengfu1") < 100 then
		msg = msg .. "消灭100只魔化蝎子            " .. lualib:GetInt(player,"tianmozhengfu1") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只魔化蝎子            " .. lualib:GetInt(player,"tianmozhengfu1") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu2") < 100 then
		msg = msg .. "消灭100只魔化蜥蜴            " .. lualib:GetInt(player,"tianmozhengfu2") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只魔化蜥蜴            " .. lualib:GetInt(player,"tianmozhengfu2") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu3") < 100 then
		msg = msg .. "消灭100只魔化沙虫            " .. lualib:GetInt(player,"tianmozhengfu3") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只魔化沙虫            " .. lualib:GetInt(player,"tianmozhengfu3") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu4") < 100 then
		msg = msg .. "消灭100只天魔奴仆            " .. lualib:GetInt(player,"tianmozhengfu4") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只天魔奴仆            " .. lualib:GetInt(player,"tianmozhengfu4") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu5") < 100 then
		msg = msg .. "消灭100只天魔守卫            " .. lualib:GetInt(player,"tianmozhengfu5") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只天魔守卫            " .. lualib:GetInt(player,"tianmozhengfu5") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu6") < 100 then
		msg = msg .. "消灭100只金鳞妖蟒            " .. lualib:GetInt(player,"tianmozhengfu6") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只金鳞妖蟒            " .. lualib:GetInt(player,"tianmozhengfu6") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu7") < 100 then
		msg = msg .. "消灭100只天魔妖道            " .. lualib:GetInt(player,"tianmozhengfu7") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只天魔妖道            " .. lualib:GetInt(player,"tianmozhengfu7") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu8") < 100 then
		msg = msg .. "消灭100只天魔先锋            " .. lualib:GetInt(player,"tianmozhengfu8") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只天魔先锋            " .. lualib:GetInt(player,"tianmozhengfu8") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu9") < 100 then
		msg = msg .. "消灭100只天魔妖蟒            " .. lualib:GetInt(player,"tianmozhengfu9") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只天魔妖蟒            " .. lualib:GetInt(player,"tianmozhengfu9") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu10") < 12 then
		msg = msg .. "消灭12只精英怪物             " .. lualib:GetInt(player,"tianmozhengfu10") .. "/12                      6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭12只精英怪物             " .. lualib:GetInt(player,"tianmozhengfu10") .. "/12                      6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu11") < 1 then
		msg = msg .. "消灭1只天魔统领              " .. lualib:GetInt(player,"tianmozhengfu11") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭1只天魔统领              " .. lualib:GetInt(player,"tianmozhengfu11") .. "/1                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu12") < 1 then
		msg = msg .. "消灭1只天魔神                " .. lualib:GetInt(player,"tianmozhengfu12") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭1只天魔神                " .. lualib:GetInt(player,"tianmozhengfu12") .. "/1                     10%#COLOREND#\n"
	end
	
	
	if lualib:GetInt(player,"tianmozhengfu13") < 40 then
		msg = msg .. "收集40个魔灵元气             " .. lualib:GetInt(player,"tianmozhengfu13") .. "/40                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集40个魔灵元气             " .. lualib:GetInt(player,"tianmozhengfu13") .. "/40                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"tianmozhengfu14") < 1 then
		msg = msg .. "收集1个天魔密藏              " .. lualib:GetInt(player,"tianmozhengfu14") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集1个天魔密藏              " .. lualib:GetInt(player,"tianmozhengfu14") .. "/1                     10%#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#提示：可以从其他人手中购买道具完成搜集道具的目标。#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------天魔石窟领取界面--------------------------------------------------------
function chumolingqu4(player)	
	local msg = "#COLORCOLOR_RED#【征服-天魔石窟】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. tianmozhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian4 *01*查看征服进度>\n"
	msg = msg .. "#COLORCOLOR_GREENG#征服度10%#COLOREND#               绑钱袋(20万)*3           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu410") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianmozhengfudian .. "#10#小特制疗伤药包#2#chumolingqu410#chumolingqu4 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度20%#COLOREND#               疗伤药包*2               #COLOREND#"
	if lualib:GetInt(player,"chumolingqu420") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianmozhengfudian .. "#20#疗伤药包#2#chumolingqu420#chumolingqu4 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度30%#COLOREND#               超级聚灵珠*2             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu430") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#30#超级聚灵珠#2#chumolingqu430 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度40%#COLOREND#               双倍经验卷轴*2           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu440") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianmozhengfudian .. "#40#双倍经验卷轴#2#chumolingqu440 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度50%#COLOREND#               随机传送(50次)*2         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu450") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#50#随机传送(50次)#2#chumolingqu450#chumolingqu4 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度60%#COLOREND#               封印鉴定符*15            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu460") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#60#封印鉴定符#15#chumolingqu460#chumolingqu4 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度70%#COLOREND#               灵元珠*15                #COLOREND#"
	if lualib:GetInt(player,"chumolingqu470") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#70#灵元珠#15#chumolingqu470#chumolingqu4 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度80%#COLOREND#               #COLORCOLOR_RED#中级转神石*3#COLOREND#             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu480") == 0 then 
		msg = msg .. "#OFFSET<X:3,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#80#中级转神石#3#chumolingqu480#chumolingqu4 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度90%#COLOREND#               #COLORCOLOR_RED#魔防精炼符(+10)*1#COLOREND#        #COLOREND#"
	if lualib:GetInt(player,"chumolingqu490") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. tianmozhengfudian .. "#90#魔防精炼符(+10)#1#chumolingqu490#chumolingqu4 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度100%#COLOREND#              #COLORCOLOR_RED#50级套装单件#COLOREND#             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu4100") == 0 then 
		msg = msg .. "#OFFSET<X:2,Y:0>#<@chumogeiyu#" .. tianmozhengfudian .. "#100#天魔石窟至宝#1#chumolingqu4100#chumolingqu4 *01*领取奖励>\n"
	else
		--msg = msg .. "#OFFSET<X:2,Y:0>#<@chumochongling#100#天魔石窟至宝#1 *01*再次领取>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end


-------------------------------------------海角秘境征服界面--------------------------------------------------------
function chumojiemian5(npc,player)

	if player == nil then
		player = npc
	end
--[[lualib:SetInt(player,"haidizhengfu1",0)
lualib:SetInt(player,"haidizhengfu2",0)
lualib:SetInt(player,"haidizhengfu3",0)
lualib:SetInt(player,"haidizhengfu4",0)
lualib:SetInt(player,"haidizhengfu5",0)
lualib:SetInt(player,"haidizhengfu6",0)
lualib:SetInt(player,"haidizhengfu7",0)
lualib:SetInt(player,"haidizhengfu8",0)
lualib:SetInt(player,"haidizhengfu9",0)
lualib:SetInt(player,"haidizhengfu10",0)
lualib:SetInt(player,"haidizhengfu11",0)
lualib:SetInt(player,"haidizhengfu12",0)
lualib:SetInt(player,"haidizhengfu13",0)
lualib:SetInt(player,"haidizhengfu14",0)
lualib:SetInt(player,"haidizhengfudian",0)
lualib:SetInt(player,"chumolingqu510",0)
lualib:SetInt(player,"chumolingqu520",0)
lualib:SetInt(player,"chumolingqu530",0)
lualib:SetInt(player,"chumolingqu540",0)
lualib:SetInt(player,"chumolingqu550",0)
lualib:SetInt(player,"chumolingqu560",0)
lualib:SetInt(player,"chumolingqu570",0)
lualib:SetInt(player,"chumolingqu580",0)
lualib:SetInt(player,"chumolingqu590",0)
lualib:SetInt(player,"chumolingqu5100",1)--]]

	haidizhengfudian = 6/100*lualib:GetInt(player,"haidizhengfu1")
				+6/100*lualib:GetInt(player,"haidizhengfu2")
				+6/100*lualib:GetInt(player,"haidizhengfu3")
				+6/100*lualib:GetInt(player,"haidizhengfu4")
				+6/100*lualib:GetInt(player,"haidizhengfu5")
				+6/100*lualib:GetInt(player,"haidizhengfu6")
				+6/100*lualib:GetInt(player,"haidizhengfu7")
				+6/100*lualib:GetInt(player,"haidizhengfu8")
				+6/100*lualib:GetInt(player,"haidizhengfu9")
				+6/12*lualib:GetInt(player,"haidizhengfu10")
				+10/1*lualib:GetInt(player,"haidizhengfu11")
				+10/1*lualib:GetInt(player,"haidizhengfu12")
				+10/40*lualib:GetInt(player,"haidizhengfu13")
				+10/1*lualib:GetInt(player,"haidizhengfu14")
				
	if haidizhengfudian >= 10 and string.len(tostring(haidizhengfudian)) > 5 then --征服点数小数超过2位后只取前2位用来显示出来
		haidizhengfudxs = string.sub(haidizhengfudian,1,5)
	elseif haidizhengfudian < 10 and string.len(tostring(haidizhengfudian)) > 4 then --征服点数小数超过2位后只取前2位用来显示出来
		haidizhengfudxs = string.sub(haidizhengfudian,1,4)
	else
		haidizhengfudxs = haidizhengfudian
	end

	local msg = "#COLORCOLOR_RED#【征服-海角秘境】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. haidizhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700031>#<@chumolingqu5 *01*领取进度奖励>\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#征服目标                      状况                  占比重#COLOREND#\n"
	if lualib:GetInt(player,"haidizhengfu1") < 100 then
		msg = msg .. "消灭100只铁棘鱼              " .. lualib:GetInt(player,"haidizhengfu1") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只铁棘鱼              " .. lualib:GetInt(player,"haidizhengfu1") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu2") < 100 then
		msg = msg .. "消灭100只铁螯怪              " .. lualib:GetInt(player,"haidizhengfu2") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只铁螯怪              " .. lualib:GetInt(player,"haidizhengfu2") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu3") < 100 then
		msg = msg .. "消灭100只石甲鱼              " .. lualib:GetInt(player,"haidizhengfu3") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只石甲鱼              " .. lualib:GetInt(player,"haidizhengfu3") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu4") < 100 then
		msg = msg .. "消灭100只巨钳蟹              " .. lualib:GetInt(player,"haidizhengfu4") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只巨钳蟹              " .. lualib:GetInt(player,"haidizhengfu4") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu5") < 100 then
		msg = msg .. "消灭100只秘境海妖            " .. lualib:GetInt(player,"haidizhengfu5") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只秘境海妖            " .. lualib:GetInt(player,"haidizhengfu5") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu6") < 100 then
		msg = msg .. "消灭100只秘境歌妖            " .. lualib:GetInt(player,"haidizhengfu6") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只秘境歌妖            " .. lualib:GetInt(player,"haidizhengfu6") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu7") < 100 then
		msg = msg .. "消灭100只海魔侍从            " .. lualib:GetInt(player,"haidizhengfu7") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只海魔侍从            " .. lualib:GetInt(player,"haidizhengfu7") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu8") < 100 then
		msg = msg .. "消灭100只海魔护卫            " .. lualib:GetInt(player,"haidizhengfu8") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只海魔护卫            " .. lualib:GetInt(player,"haidizhengfu8") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu9") < 100 then
		msg = msg .. "消灭100只海魔触手            " .. lualib:GetInt(player,"haidizhengfu9") .. "/100                    6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭100只海魔触手            " .. lualib:GetInt(player,"haidizhengfu9") .. "/100                    6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu10") < 12 then
		msg = msg .. "消灭12只精英怪物             " .. lualib:GetInt(player,"haidizhengfu10") .. "/12                      6%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭12只精英怪物             " .. lualib:GetInt(player,"haidizhengfu10") .. "/12                      6%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu11") < 1 then
		msg = msg .. "消灭1只深海巨螯怪            " .. lualib:GetInt(player,"haidizhengfu11") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭1只深海巨螯怪            " .. lualib:GetInt(player,"haidizhengfu11") .. "/1                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu12") < 1 then
		msg = msg .. "消灭1只海魔                  " .. lualib:GetInt(player,"haidizhengfu12") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#消灭1只海魔                  " .. lualib:GetInt(player,"haidizhengfu12") .. "/1                     10%#COLOREND#\n"
	end
	
	
	if lualib:GetInt(player,"haidizhengfu13") < 40 then
		msg = msg .. "收集40个深海之魂             " .. lualib:GetInt(player,"haidizhengfu13") .. "/40                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集40个深海之魂             " .. lualib:GetInt(player,"haidizhengfu13") .. "/40                     10%#COLOREND#\n"
	end
	
	if lualib:GetInt(player,"haidizhengfu14") < 1 then
		msg = msg .. "收集1个海洋之心              " .. lualib:GetInt(player,"haidizhengfu14") .. "/1                     10%\n"
	else
		msg = msg .. "#COLORCOLOR_BLUE#收集1个海洋之心              " .. lualib:GetInt(player,"haidizhengfu14") .. "/1                     10%#COLOREND#\n"
	end
	msg = msg .. "\n#COLORCOLOR_RED#提示：可以从其他人手中购买道具完成搜集道具的目标。#COLOREND#"
	lualib:NPCTalk(player,msg)
	return ""
end

-------------------------------------------海角秘境领取界面--------------------------------------------------------
function chumolingqu5(player)	
	local msg = "#COLORCOLOR_RED#【征服-海角秘境】#COLOREND#"
	msg = msg .. "       #COLORCOLOR_ORANGE#征服度 " .. haidizhengfudxs .. "%#COLOREND#       #IMAGE<ID:1902700042>#<@chumojiemian4 *01*查看征服进度>\n"
	msg = msg .. "#COLORCOLOR_GREENG#征服度10%#COLOREND#               绑钱袋(50万)*2          #COLOREND#"
	if lualib:GetInt(player,"chumolingqu510") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. haidizhengfudian .. "#10#绑钱袋(50万)#2#chumolingqu510#chumolingqu5 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度20%#COLOREND#               小特制疗伤药包*2        #COLOREND#"
	if lualib:GetInt(player,"chumolingqu520") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. haidizhengfudian .. "#20#小特制疗伤药包#2#chumolingqu520#chumolingqu5 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度30%#COLOREND#               坐骑聚灵珠(大)*2        #COLOREND#"
	if lualib:GetInt(player,"chumolingqu530") == 0 then 
		msg = msg .. "#OFFSET<X:-1,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#30#坐骑聚灵珠(大)#2#chumolingqu530 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度40%#COLOREND#               套索*10                 #COLOREND#"
	if lualib:GetInt(player,"chumolingqu540") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. haidizhengfudian .. "#40#套索#10#chumolingqu540 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度50%#COLOREND#               循环魔咒*10             #COLOREND#"
	if lualib:GetInt(player,"chumolingqu550") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#50#循环魔咒#10#chumolingqu550#chumolingqu5 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度60%#COLOREND#               封印鉴定符*20           #COLOREND#"
	if lualib:GetInt(player,"chumolingqu560") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#60#封印鉴定符#20#chumolingqu560#chumolingqu5 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度70%#COLOREND#               灵元珠*20               #COLOREND#"
	if lualib:GetInt(player,"chumolingqu570") == 0 then 
		msg = msg .. "#OFFSET<X:1,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#70#灵元珠#20#chumolingqu570#chumolingqu5 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度80%#COLOREND#               #COLORCOLOR_RED#高级转神石*1#COLOREND#            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu580") == 0 then 
		msg = msg .. "#OFFSET<X:3,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#80#高级转神石#1#chumolingqu580#chumolingqu5 *01*领取奖励>\n"
	else
		msg = msg .."#OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度90%#COLOREND#               #COLORCOLOR_RED#HP精炼符(+10)*1#COLOREND#         #COLOREND#"
	if lualib:GetInt(player,"chumolingqu590") == 0 then 
		msg = msg .. "<@chumogeiyu#" .. haidizhengfudian .. "#90#HP精炼符(+10)#1#chumolingqu590#chumolingqu5 *01*领取奖励>\n"
	else
		msg = msg .."#COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	msg = msg .. "#COLORCOLOR_GREENG#征服度100%#COLOREND#              #COLORCOLOR_RED#55级套装单件#COLOREND#            #COLOREND#"
	if lualib:GetInt(player,"chumolingqu5100") == 0 then 
		msg = msg .. "#OFFSET<X:2,Y:0>#<@chumogeiyu#" .. haidizhengfudian .. "#100#海底秘境至宝#1#chumolingqu5100#chumolingqu5 *01*领取奖励>\n"
	else
		--msg = msg .. "#OFFSET<X:2,Y:0>#<@chumochongling#100#海底秘境至宝#1 *01*再次领取>\n"
		msg = msg .."#OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#已领取#COLOREND#\n"
	end
	lualib:NPCTalk(player,msg)
	return ""
end



-----------------------------------------------------领取奖励-----------------------------------------------------------------------
function chumogeiyu(player,zhengfudian,dushu,jiangli,shuliang,lingqu,fanhui)
	zhengfudian = tonumber(zhengfudian)
	dushu = tonumber(dushu)
	shuliang = tonumber(shuliang)
	
	if lualib:GetInt(player,lingqu) ~= 0 then --检测是否领取过
		return ""
	end
	
	if zhengfudian >= dushu then --检测是否征服度是否够
		if lualib:Player_GetBagFree(player) >= shuliang then --检测包裹是否能放入奖励
			local name_table = {jiangli}
			local count_table = {shuliang}
			local bind_table = {1}
			local opr_table = {0}
			if lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "达到征服度领取",player) == true then
				lualib:SetInt(player,lingqu,1) --领取成功后变量记录
				lualib:NPCTalk(player,"征服奖励：".. jiangli .."，领取成功！\n \n<@".. fanhui .." *01*返回>")
			else
				lualib:NPCTalk(player,"领取失败，请重试。\n \n<@".. fanhui .." *01*返回>")
			end
		else
			lualib:NPCTalk(player,"包裹空位不足！请保留至少" .. shuliang .."个空位。\n \n<@".. fanhui .." *01*返回>")
		end
	else
		lualib:NPCTalk(player,"征服度不够领取这个奖励！\n \n<@".. fanhui .." *01*返回>")
	end
	return ""
end

-----------------------------------------------------勋章多次领取确认-----------------------------------------------------------------------
function chumochongling(player,yuanbao,jiangli,shuliang)
	lualib:NPCTalk(player,"再次领取" .. jiangli .. "需要消耗" .. yuanbao .. "元宝,想要领取吗？\n \n<@bangorbuy#yuanbao#" .. yuanbao .."#" .. jiangli .."#" .. shuliang .. "#0#0#征服勋章重复购买#player#0 *01*购买>\n<@main *01*返回>")
	return ""
end