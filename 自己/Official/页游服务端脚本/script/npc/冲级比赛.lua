local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"冲级吧，只要你率先达到40级以上，就可以获得令人羡慕的奖励。", "人品不是问题，级别才是问题！", "如果你第一个达到50级，我会给你独一份的奖励哦。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 290000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "     为庆祝新区开放，现在只要你达到下面的等级就可以来领取一份丰厚的奖品，数量有限，先到先得哟！\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_GREENG#等级                    剩余名额#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_ORANGE#45级#COLOREND#    战士："..lualib:IO_GetCustomVarInt("chongjizhanshi45").."        法师："..lualib:IO_GetCustomVarInt("chongjifashi45").."       道士："..lualib:IO_GetCustomVarInt("chongjidaoshi45").."\n"
	msg = msg .. "         #OFFSET<X:1,Y:2>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@chakanjiangp1 *01*[查看奖品]>       #OFFSET<X:1,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@lingqu#45 *01*[领取奖品]>\n"
	msg = msg .. "#COLORCOLOR_ORANGE#50级#COLOREND#    战士："..lualib:IO_GetCustomVarInt("chongjizhanshi50").."  #OFFSET<X:1,Y:0>#      #OFFSET<X:1,Y:0>#法师："..lualib:IO_GetCustomVarInt("chongjifashi50").."       #OFFSET<X:1,Y:0>##OFFSET<X:1,Y:0>#道士："..lualib:IO_GetCustomVarInt("chongjidaoshi50").."\n"
	msg = msg .. "         #OFFSET<X:1,Y:2>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@chakanjiangp2 *01*[查看奖品]>       #OFFSET<X:1,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@lingqu#50 *01*[领取奖品]>\n"
	msg = msg .. "#COLORCOLOR_ORANGE#55级#COLOREND#    #OFFSET<X:1,Y:0>#战士："..lualib:IO_GetCustomVarInt("chongjizhanshi55").."         #OFFSET<X:1,Y:0>#法师："..lualib:IO_GetCustomVarInt("chongjifashi55").."        #OFFSET<X:1,Y:0>#道士："..lualib:IO_GetCustomVarInt("chongjidaoshi55").."\n"
	msg = msg .. "         #OFFSET<X:1,Y:2>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@chakanjiangp3 *01*[查看奖品]>       #OFFSET<X:1,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@lingqu#55 *01*[领取奖品]>\n"
	msg = msg .. "                                                       #OFFSET<X:0,Y:-8>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*[离开]>"
	return msg
end

function chakanjiangp1(npc,player)
	local msg = "#COLORCOLOR_GREENG#各职业第1名#COLOREND#达到#COLORCOLOR_SKYBLUE#45级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#断空(珍)#COLOREND#、随机一件末日级首饰、封印鉴定符*20、灵元珠*60\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#碎空(珍)#COLOREND#、随机一件血夜级首饰、封印鉴定符*20、灵元珠*60\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#噬空(珍)#COLOREND#、随机一件天劫级首饰、封印鉴定符*20、灵元珠*60\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#各职业第2~7名#COLOREND#达到#COLORCOLOR_SKYBLUE#45级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#断空(极)#COLOREND#、随机一件末日级首饰、封印鉴定符*10、灵元珠*60\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#碎空(极)#COLOREND#、随机一件血夜级首饰、封印鉴定符*10、灵元珠*60\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#噬空(极)#COLOREND#、随机一件天劫级首饰、封印鉴定符*10、灵元珠*60\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#各职业第8~20名#COLOREND#达到#COLORCOLOR_SKYBLUE#45级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#断空#COLOREND#、封印鉴定符*5、灵元珠*60\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#碎空#COLOREND#、封印鉴定符*5、灵元珠*60\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#噬空#COLOREND#、封印鉴定符*5、灵元珠*60\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	return msg
end

function chakanjiangp2(npc,player)
	local msg =  "#COLORCOLOR_GREENG#各职业第1~2名#COLOREND#达到#COLORCOLOR_SKYBLUE#50级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#帝释(珍)#COLOREND#、随机一件疾雷级首饰、高级物攻精炼符*1\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#残虹(珍)#COLOREND#、随机一件火灵级首饰、高级魔攻精炼符*1\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#无常(珍)#COLOREND#、随机一件云扬级首饰、高级道术精炼符*1\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#各职业第3~6名#COLOREND#达到#COLORCOLOR_SKYBLUE#50级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#帝释(极)#COLOREND#、随机一件疾雷级首饰、高级物攻精炼符*1\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#残虹(极)#COLOREND#、随机一件火灵级首饰、高级魔攻精炼符*1\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#无常(极)#COLOREND#、随机一件云扬级首饰、高级道术精炼符*1\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#各职业第7~15名#COLOREND#达到#COLORCOLOR_SKYBLUE#50级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#帝释#COLOREND#、高级物攻精炼符*1\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#残虹#COLOREND#、高级魔攻精炼符*1\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#无常#COLOREND#、高级道术精炼符*1\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	return msg
end

function chakanjiangp3(npc,player)
	local msg =  "#COLORCOLOR_GREENG#各职业第1名#COLOREND#达到#COLORCOLOR_SKYBLUE#55级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#十殿阎罗(珍)#COLOREND#、随机一件天怒级首饰、高级物攻精炼符*2\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#七劫浮屠(珍)#COLOREND#、随机一件深渊级首饰、高级魔攻精炼符*2\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#赤霄白帝(珍)#COLOREND#、随机一件四象级首饰、高级道术精炼符*2\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#各职业第2~4名#COLOREND#达到#COLORCOLOR_SKYBLUE#55级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#十殿阎罗(极)#COLOREND#、随机一件天怒级首饰、高级物攻精炼符*2\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#七劫浮屠(极)#COLOREND#、随机一件深渊级首饰、高级魔攻精炼符*2\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#赤霄白帝(极)#COLOREND#、随机一件四象级首饰、高级道术精炼符*2\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#各职业第5~10名#COLOREND#达到#COLORCOLOR_SKYBLUE#55级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#十殿阎罗#COLOREND#、高级物攻精炼符*2\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#七劫浮屠#COLOREND#、高级魔攻精炼符*2\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#赤霄白帝#COLOREND#、高级道术精炼符*2\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	return msg
end


--[[

function chakanjiangp1(npc,player)
	local msg = "#COLORCOLOR_GREENG#各职业第1名#COLOREND#达到#COLORCOLOR_SKYBLUE#42级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#十杀(珍)#COLOREND#、随机一件圣武级首饰、封印鉴定符*10、灵元珠*30\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#天瀑(珍)#COLOREND#、随机一件苍冥级首饰、封印鉴定符*10、灵元珠*30\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#龙渊(珍)#COLOREND#、随机一件飞尘级首饰、封印鉴定符*10、灵元珠*30\n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#各职业第2~7名#COLOREND#达到#COLORCOLOR_SKYBLUE#42级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#十杀(极)#COLOREND#、随机一件圣武级首饰、封印鉴定符*10、灵元珠*30\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#天瀑(极)#COLOREND#、随机一件苍冥级首饰、封印鉴定符*10、灵元珠*30\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#龙渊(极)#COLOREND#、随机一件飞尘级首饰、封印鉴定符*10、灵元珠*30\n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#各职业第8~20名#COLOREND#达到#COLORCOLOR_SKYBLUE#42级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#十杀#COLOREND#、封印鉴定符*10、灵元珠*30\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#天瀑#COLOREND#、封印鉴定符*10、灵元珠*30\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#龙渊#COLOREND#、封印鉴定符*10、灵元珠*30\n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	return msg
end

function chakanjiangp2(npc,player)
	local msg =  "#COLORCOLOR_GREENG#各职业第1~2名#COLOREND#达到#COLORCOLOR_SKYBLUE#47级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#断空(珍)#COLOREND#、随机一件末日级首饰、封印鉴定符*20、灵元珠*60\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#碎空(珍)#COLOREND#、随机一件血夜级首饰、封印鉴定符*20、灵元珠*60\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#噬空(珍)#COLOREND#、随机一件天劫级首饰、封印鉴定符*20、灵元珠*60\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#各职业第3~6名#COLOREND#达到#COLORCOLOR_SKYBLUE#47级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#断空(极)#COLOREND#、随机一件末日级首饰、封印鉴定符*20、灵元珠*60\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#碎空(极)#COLOREND#、随机一件血夜级首饰、封印鉴定符*20、灵元珠*60\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#噬空(极)#COLOREND#、随机一件天劫级首饰、封印鉴定符*20、灵元珠*60\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#各职业第7~15名#COLOREND#达到#COLORCOLOR_SKYBLUE#47级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#断空#COLOREND#、封印鉴定符*20、灵元珠*60\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#碎空#COLOREND#、封印鉴定符*20、灵元珠*60\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#噬空#COLOREND#、封印鉴定符*20、灵元珠*60\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	return msg
end

function chakanjiangp3(npc,player)
	local msg =  "#COLORCOLOR_GREENG#各职业第1名#COLOREND#达到#COLORCOLOR_SKYBLUE#52级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#帝释(珍)#COLOREND#、随机一件疾雷级首饰、高级物攻精炼符*1\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#残虹(珍)#COLOREND#、随机一件火灵级首饰、高级魔攻精炼符*1\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#无常(珍)#COLOREND#、随机一件云扬级首饰、高级道术精炼符*1\n \n \n \n"
	
	msg = msg .. "#COLORCOLOR_GREENG#各职业第2~4名#COLOREND#达到#COLORCOLOR_SKYBLUE#52级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#帝释(极)#COLOREND#、随机一件疾雷级首饰、高级物攻精炼符*1\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#残虹(极)#COLOREND#、随机一件火灵级首饰、高级魔攻精炼符*1\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#无常(极)#COLOREND#、随机一件云扬级首饰、高级道术精炼符*1\n \n \n \n"

	msg = msg .. "#COLORCOLOR_GREENG#各职业第5~10名#COLOREND#达到#COLORCOLOR_SKYBLUE#52级#COLOREND#玩家可领取以下道具。\n"
	msg = msg .. "战士可领取：#COLORCOLOR_ORANGE#帝释#COLOREND#、高级物攻精炼符*1\n"
	msg = msg .. "法师可领取：#COLORCOLOR_ORANGE#残虹#COLOREND#、高级魔攻精炼符*1\n"
	msg = msg .. "道士可领取：#COLORCOLOR_ORANGE#无常#COLOREND#、高级道术精炼符*1\n \n \n \n"
	msg = msg .. "                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	return msg
end
]]
function lingqu(npc,player,jishu)
	local ItemName = ""
	local jishu = tonumber(jishu)
	if lualib:GetInt(player,"chongjilingqu"..jishu) == 1 then 
		return "你已领取奖励，不可重复领取！\n \n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	end
	
	if lualib:Level(player) < jishu then
		return "等级不够！领取失败！\n \n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	end
	
	if lualib:Player_GetIntProp(player,lua_role_job) == 1 and lualib:IO_GetCustomVarInt("chongjizhanshi"..jishu) > 0 then
		local shuliang = lualib:IO_GetCustomVarInt("chongjizhanshi"..jishu)
		if jishu == 45 then
			if shuliang >= 20 then
				ItemName = jishu.."级冲级大礼包珍"
			elseif shuliang >= 14 then
				ItemName = jishu.."级冲级大礼包极"
			else
				ItemName = jishu.."级冲级大礼包"
			end
		elseif jishu == 50 then			
			if shuliang >= 14 then
				ItemName = jishu.."级冲级大礼包珍"
			elseif shuliang >= 10 then
				ItemName = jishu.."级冲级大礼包极"
			else
				ItemName = jishu.."级冲级大礼包"
			end
			
		elseif jishu == 55 then			
			if shuliang >= 10 then
				ItemName = jishu.."级冲级大礼包珍"
			elseif shuliang >= 7 then
				ItemName = jishu.."级冲级大礼包极"
			else
				ItemName = jishu.."级冲级大礼包"
			end				
			
		end
		
		if lualib:Player_ItemRequest(player, {ItemName}, {1}, {0}, {0}, "冲级比赛领取", player) == true then
			lualib:IO_SetCustomVarInt("chongjizhanshi"..jishu,shuliang-1)
			lualib:SysMsg_SendCenterMsg(1, "恭喜玩家"..lualib:Player_GetStrProp(player, lua_role_user_name).."领取了"..jishu.."级冲级大礼包，"..jishu.."级战士冲级奖励剩余名额还有"..shuliang-1 .."个", "")
			lualib:SetInt(player,"chongjilingqu"..jishu,1)
			return "领取成功！获得："..jishu.."级冲级大礼包\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
		else
			return jishu.."级冲级大礼包".."领取失败，背包空位不足！\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
		end
		
		
	elseif lualib:Player_GetIntProp(player,lua_role_job) == 2 and lualib:IO_GetCustomVarInt("chongjifashi"..jishu) > 0 then	
		local shuliang = lualib:IO_GetCustomVarInt("chongjifashi"..jishu)
		
		if jishu == 45 then
			if shuliang >= 20 then
				ItemName = jishu.."级冲级大礼包珍"
			elseif shuliang >= 14 then
				ItemName = jishu.."级冲级大礼包极"
			else
				ItemName = jishu.."级冲级大礼包"
			end
		elseif jishu == 50 then			
			if shuliang >= 14 then
				ItemName = jishu.."级冲级大礼包珍"
			elseif shuliang >= 10 then
				ItemName = jishu.."级冲级大礼包极"
			else
				ItemName = jishu.."级冲级大礼包"
			end
			
		elseif jishu == 55 then			
			if shuliang >= 10 then
				ItemName = jishu.."级冲级大礼包珍"
			elseif shuliang >= 7 then
				ItemName = jishu.."级冲级大礼包极"
			else
				ItemName = jishu.."级冲级大礼包"
			end				
			
		end

		if lualib:Player_ItemRequest(player, {ItemName}, {1}, {0}, {0}, "冲级比赛领取", player) == true then
			lualib:IO_SetCustomVarInt("chongjifashi"..jishu,lualib:IO_GetCustomVarInt("chongjifashi"..jishu)-1)
			lualib:SysMsg_SendCenterMsg(1, "恭喜玩家"..lualib:Player_GetStrProp(player, lua_role_user_name).."领取了"..jishu.."级冲级大礼包，"..jishu.."级法师冲级奖励剩余名额还有"..shuliang-1 .."个", "")
			lualib:SetInt(player,"chongjilingqu"..jishu,1)
			return "领取成功！获得："..jishu.."级冲级大礼包\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
		else
			return jishu.."级冲级大礼包".."领取失败，背包空位不足！\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
		end
	elseif lualib:Player_GetIntProp(player,lua_role_job) == 3 and lualib:IO_GetCustomVarInt("chongjidaoshi"..jishu) > 0 then
		local shuliang = lualib:IO_GetCustomVarInt("chongjidaoshi"..jishu)
		
		if jishu == 45 then
			if shuliang >= 20 then
				ItemName = jishu.."级冲级大礼包珍"
			elseif shuliang >= 14 then
				ItemName = jishu.."级冲级大礼包极"
			else
				ItemName = jishu.."级冲级大礼包"
			end
		elseif jishu == 50 then			
			if shuliang >= 14 then
				ItemName = jishu.."级冲级大礼包珍"
			elseif shuliang >= 10 then
				ItemName = jishu.."级冲级大礼包极"
			else
				ItemName = jishu.."级冲级大礼包"
			end
			
		elseif jishu == 55 then			
			if shuliang >= 10 then
				ItemName = jishu.."级冲级大礼包珍"
			elseif shuliang >= 7 then
				ItemName = jishu.."级冲级大礼包极"
			else
				ItemName = jishu.."级冲级大礼包"
			end				
			
		end
		
		if lualib:Player_ItemRequest(player, {ItemName}, {1}, {0}, {0}, "冲级比赛领取", player) == true then
			lualib:IO_SetCustomVarInt("chongjidaoshi"..jishu,lualib:IO_GetCustomVarInt("chongjidaoshi"..jishu)-1)
			lualib:SysMsg_SendCenterMsg(1, "恭喜玩家"..lualib:Player_GetStrProp(player, lua_role_user_name).."领取了"..jishu.."级冲级大礼包，"..jishu.."级道士冲级奖励剩余名额还有"..shuliang-1 .."个", "")
			lualib:SetInt(player,"chongjilingqu"..jishu,1)
			return "领取成功！获得："..jishu.."级冲级大礼包\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
		else
			return jishu.."级冲级大礼包".."领取失败，背包空位不足！\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
		end
	else
		return jishu.."级冲级大礼包".."领取失败，已经没有领取名额了！\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
	end
end

function likai()
	return ""
end