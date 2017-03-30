local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/每日签到物品")
require("system/timecount_def")
require("system/logic_def_lua")

local buqianjiage = 20000 --每漏一天签到需要多少金币补签
local zuidabuqianjiage = 100000 --最多需要支付多少金币补签（如果漏签天数过多，比如十多天没有签到，那么最多也之需要消耗100000金币就可以补签）

-----------------------图标显示-----------------------------
function meiriqiandao_xianshi(player)	
	if lualib:Player_GetIntProp(player, lua_role_level) < 30 then
		return
	end
	
	meirqiandaochongzhi(player) --每日签到重置

	local p1 = 0 --玩家可转动转盘的次数
	if lualib:GetInt(player, "qiandaotianshu") == 1 or lualib:GetInt(player, "qiandaotianshu") == 2 then
		p1 = 1
	elseif lualib:GetInt(player, "qiandaotianshu") >= 3 and lualib:GetInt(player, "qiandaotianshu") <= 6 then
		p1 = 2
	elseif lualib:GetInt(player, "qiandaotianshu") >= 7 then
		p1 = 3
	end
	
	if lualib:GetInt(player, "vipshijian") - lualib:GetAllTime() >= 0 then
		p1 = p1 + 1
	end
	
	local p2 = p1 - lualib:GetInt(player, "每日签到_cishu") --剩余抽奖次数
	
	if p2 >= 1 then
		ShowTimeCount(player, 0, 1903800034, "每日签到") --显示每日签到图标
		meiriqiandao(player)
	else
		ShowTimeCount(player, -1, 1903800034, "每日签到")
	end
end

function meirqiandaochongzhi(player)
    local cur_days = lualib:GetAllDays(0)
    local days = lualib:GetInt(player,"qiandaojishi")
	if cur_days - days == 1 and lualib:GetInt(player, "qiandaojishi") ~= lualib:GetAllDays(0) then
		lualib:SetInt(player,"qiandaotianshu",lualib:GetInt(player,"qiandaotianshu")+1)
		lualib:SetInt(player,"qiandaojishi",lualib:GetAllDays(0))
		lualib:SetInt(player,"每日签到_cishu",0)
		lualib:SetInt(player,"每日签到_漏签天数",0)
	elseif days == 0 then --第一次签到
		lualib:SetInt(player,"qiandaotianshu",1)
		lualib:SetInt(player,"qiandaojishi",lualib:GetAllDays(0))
		lualib:SetInt(player,"每日签到_cishu",0)
		lualib:SetInt(player,"每日签到_漏签天数",0)
	elseif (cur_days - days) >= 2 then
		lualib:SetInt(player,"qiandaotianshu",1)
		lualib:SetInt(player,"qiandaojishi",lualib:GetAllDays(0))
		lualib:SetInt(player,"每日签到_cishu",0)
		lualib:SetInt(player,"每日签到_漏签天数",cur_days - days) --记录上次到今天有多少天没有签到
	end
end
-------------------图标被点击-----------------------
function meiriqiandao(player)
	meirqiandaochongzhi(player) --每日签到重置
	ShowTimeCount(player, 0, 1903800034, "每日签到") --显示每日签到图标
			
	if lualib:GetInt(player,"每日签到_漏签天数") > 0 and lualib:GetInt(player,"每日签到_漏签天数") < 7 then  --漏签天数小于7天可以补签
		local jinbi = lualib:GetInt(player,"每日签到_漏签天数") * buqianjiage
		if jinbi > zuidabuqianjiage then
			jinbi = zuidabuqianjiage
		end
		local msg = "您已有#COLORCOLOR_GREENG#"..lualib:GetInt(player,"每日签到_漏签天数").."#COLOREND#天没有登陆，补签后奖励更丰富！补签#COLORCOLOR_GREENG#"..lualib:GetInt(player,"每日签到_漏签天数").."#COLOREND#天需要消耗#COLORCOLOR_GREENG#"..jinbi.."金币#COLOREND#。\n\n"
		msg = msg .. "<@buqian#1 *01*我要补签>    <@buqian#0 *01*不用补签>\n"
		lualib:NPCTalk(player, msg)
		return
	end
	
	local p1 = 0 --玩家可转动转盘的次数
	if lualib:GetInt(player, "qiandaotianshu") == 1 or lualib:GetInt(player, "qiandaotianshu") == 2 then
		p1 = 1
	elseif lualib:GetInt(player, "qiandaotianshu") >= 3 and lualib:GetInt(player, "qiandaotianshu") <= 6 then
		p1 = 2
	elseif lualib:GetInt(player, "qiandaotianshu") >= 7 then
		p1 = 3
	end
	
	if lualib:GetInt(player, "vipshijian") - lualib:GetAllTime() >= 0 then
		p1 = p1 + 1
	end
	
	local p2 = p1 - lualib:GetInt(player, "每日签到_cishu") --剩余抽奖次数
	
	if p2 >= 1 then
		local msg = "            您已连续登陆 #COLORCOLOR_ORANGE#"..lualib:GetInt(player,"qiandaotianshu").."#COLOREND# 天，剩余抽奖次数 #COLORCOLOR_ORANGE#"..p2.."#COLOREND# 次。"
--[[		if lualib:GetInt(player, "vipshijian") - lualib:GetAllTime() >= 0 then
			msg = msg .. "您当前是会员，每日抽奖次数+1\n"
		else
			msg = msg .. "您如果是会员，每日抽奖次数+1\n"
		end]]
		msg = msg .. "\n                                       <@meiriqiandaochoujiang *01*【开始抽奖】>\n\n"
		msg = msg .. "                          #COLORCOLOR_GREENG#连续登录#COLOREND#     #COLORCOLOR_BLUE#1-2天    3-6天    7天以上#COLOREND#\n"
		msg = msg .. "                          #COLORCOLOR_GREENG#抽奖次数#COLOREND#       #COLORCOLOR_BLUE#1        2         3#COLOREND#\n"
		lualib:NPCTalk(player, msg)
	else
		ShowTimeCount(player, -1, 1903800034, "每日签到")
	end
end

function meiriqiandaochoujiang(player_guid)
	if lualib:BagFree(player_guid, true, false, false) < 1 then
		lualib:SysMsg_SendWarnMsg(player_guid, "包裹空位不足！请整理以后再试！")
		return "包裹空位不足！请整理以后再试！"
	end
	
	lualib:SetStr(player_guid,"zhuanpanleixing","每日签到")
	if lualib:Player_GetCustomVarInt(player_guid, "每日签到_HasAward") == 1 then
        notify_award1(player_guid, 0)
        return "您上次抽中的奖品还未领取，请先领取。"
    end
	
	local player_count = lualib:Player_GetCustomVarInt(player_guid, "每日签到_cishu")
	
	local p1 = 0 --玩家可转动转盘的次数
	if lualib:GetInt(player_guid, "qiandaotianshu") == 1 or lualib:GetInt(player_guid, "qiandaotianshu") == 2 then
		p1 = 1
	elseif lualib:GetInt(player_guid, "qiandaotianshu") >= 3 and lualib:GetInt(player_guid, "qiandaotianshu") <= 6 then
		p1 = 2
	elseif lualib:GetInt(player_guid, "qiandaotianshu") >= 7 then
		p1 = 3
	end
	if lualib:GetInt(player_guid, "vipshijian") - lualib:GetAllTime() >= 0 then
		p1 = p1 + 1
	end
	local p2 = p1 - lualib:GetInt(player_guid, "每日签到_cishu") --剩余抽奖次数
	if p1 - player_count >= 1 then
	else
		return "你的抽奖机会已用完，明日再来吧！"
	end
			
	--开始抽奖
	lualib:Player_SetCustomVarInt(player_guid, "每日签到_times", 0)
	if lualib:GetInt(player_guid, "vipshijian") - lualib:GetAllTime() >= 0 then
		lualib:Player_SetCustomVarInt(player_guid, "每日签到_CurGroupID", 2)
	else
		lualib:Player_SetCustomVarInt(player_guid, "每日签到_CurGroupID", 1)
	end
    local sel = GetRandomAward1(player_guid)
    
    lualib:Player_SetCustomVarInt(player_guid, "每日签到_Sel_1", sel)
    lualib:Player_SetCustomVarInt(player_guid, "每日签到_HasAward", 1)
    lualib:Player_SetCustomVarInt(player_guid, "每日签到_times",1)
    for n = 2, settings1["转盘次数"] do
        lualib:Player_SetCustomVarInt(player_guid, "每日签到_Sel_"..n, 0)
    end
    notify_award1(player_guid, 1)
	lualib:SetInt(player_guid,"每日签到_cishu",lualib:GetInt(player_guid, "每日签到_cishu")+1)
	meiriqiandao_xianshi(player_guid) --判断每日签到图标是否消失
	return ""
end

------------------补签到-------------------------
function buqian(player,leixing)
	if leixing == "1" then
		local jinbi = lualib:GetInt(player,"每日签到_漏签天数") * buqianjiage
		if jinbi > zuidabuqianjiage then
			jinbi = zuidabuqianjiage
		end
		
		if lualib:Player_IsGoldEnough(player,jinbi,true) == true then
			if not lualib:Player_SubGold(player,jinbi,true,"补签到",player) then
				return "扣除金币失败"
			end
		elseif lualib:Player_IsGoldEnough(player,jinbi,false) == true then
			if not lualib:Player_SubGold(player,jinbi,false,"补签到",player) then
				return "扣除金币失败"
			end
		else
			return "金币不足够，补签失败！"
		end
		
		lualib:SetInt(player,"qiandaojishi",lualib:GetAllDays(0)-1)
		lualib:SetInt(player,"qiandaotianshu",lualib:GetInt(player,"每日签到_漏签天数"))
		meiriqiandao(player)
		return "补签成功！"
	else
		lualib:SetInt(player,"每日签到_漏签天数",0)
		meiriqiandao(player)
		return ""
	end
end