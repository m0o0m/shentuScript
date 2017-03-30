local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)

require("include/攻城战玩法")
require("system/logic_def_lua")
require("system/forbid_role")
--require("system/魂力系统")
--require("system/master")
require("system/family")
--require("system/item_exp")
--require("system/horse")
--require("system/online_gift")
--require("system/marry")
--require("npc/竞技场管理员")
require("system/充值礼包")
require("system/领取经验")
require("system/每日签到")
--require("campaign/精英竞技场个人赛玩法")
--require("campaign/精英竞技场组队赛玩法")
require("system/龙穴探宝")
--require("system/目标系统")
--require("system/攻略")
require("system/转生")
require("system/日常")
require("system/自动打怪")
--require("system/升级引导")
--require("system/装备引导")
require("system/领取礼包")
--require("system/综合功能")
require("system/奖励大厅")
require("form/奖励大厅表单")
require("form/收藏游戏")
require("form/客户端下载")
require("form/开服活动")
--require("item/天书")
--require("form/时间礼包")
--require("buff/天山雪莲buff")
require("form/首充大礼_s")
require("form/每日充值_s")
require("form/升级礼包")
require("form/TreasureHouse_s")
require("form/Marks2Item_s")
require("system/serializer")
--require("form/Gongcheng_s")
require("form/ChallengeBOSS")
require("system/ItemInit")
require("form/MarsWnd_s")
require("system/DummyAi")
require("form/新开服活动")
require("form/开服豪礼表单")
require("system/BuyExp_sys")
require("form/BuyExp_s")
require("system/右上图标")
require("form/ActivityDegree_s")

local map_name_table = {{"绝路谷", "绝路谷"}, {"绝路岭", "绝路岭"}, {"将军冢1", "将军冢"}, {"废弃矿洞2", "废弃矿洞"}, {"妖山暗穴1", "妖山暗穴"}, {"天荒阵1", "天荒阵"}, {"邪庙4", "天荒邪庙"}}
local timer_table = {{9900, "15分钟"}, {10200, "10分钟"}, {10500, "5分钟"}, {10620, "3分钟"}, {10680, "2分钟"}, {10740, "1分钟"}}
local ma_timer_table = {{27000, "15分钟"}, {27300, "10分钟"}, {27600, "5分钟"}, {27720, "3分钟"}, {27780, "2分钟"}, {27840, "1分钟"}}
local npc_timer_table = {{3420, "3分钟"}, {3480, "2分钟"}, {3540, "1分钟"}}


local ysax_dgwf_call_back_func = "on_timer_ysax_dgwf_call_back_func"
function on_system_start()
	--服务器第一次启动执行
	if lualib:IO_GetCustomVarInt("fuwuqishushihua") == 0 then
		lualib:IO_SetCustomVarInt("fuwuqishushihua",1)
		
		--冲级比赛相关数据初始化
		lualib:IO_SetCustomVarInt("chongjizhanshi45",20)
		lualib:IO_SetCustomVarInt("chongjifashi45",20)
		lualib:IO_SetCustomVarInt("chongjidaoshi45",20)
		lualib:IO_SetCustomVarInt("chongjizhanshi50",15)
		lualib:IO_SetCustomVarInt("chongjifashi50",15)
		lualib:IO_SetCustomVarInt("chongjidaoshi50",15)
		lualib:IO_SetCustomVarInt("chongjizhanshi55",10)
		lualib:IO_SetCustomVarInt("chongjifashi55",10)
		lualib:IO_SetCustomVarInt("chongjidaoshi55",10)
	end
	lualib:SetDBNum("ActivityUnderway",0)      --服务器重启，正在进行的活动数量清零
	--ltszuduiqingli() --清理组队竞技场数据
	
	lualib:DelayCall("", 1, "OnFirstCastleWar", "");		--第一次攻城战
	lualib:DelayCall("", 1, "SetDBNum_consumeTerm", "");		--初始化消费排行consumeTerm变量
	
	lualib:AddTrigger("0",  lua_trigger_first_in_game, "on_first_in_game")
	lualib:AddTrigger("0",  lua_trigger_login, "on_login")
	lualib:AddTrigger("0",  lua_trigger_billin, "on_billin")
	lualib:AddTrigger("0",  lua_trigger_logout, "on_logout")
	lualib:AddTrigger("0",  lua_trigger_castle_war_start, "on_castle_war_start")
	lualib:AddTrigger("0",  lua_trigger_castle_war_end, "on_castle_war_end")
	--lualib:AddTrigger("0",  lua_trigger_castle_war_init, "trigger_castle_war_init")
	lualib:AddTrigger("0",  lua_trigger_level_up, "on_level_up")
	lualib:AddTrigger("0",  lua_trigger_pre_join_family, "on_join_family")  ----有人申请入行会触发
	--lualib:AddTrigger("0",  lua_trigger_add_exp, "on_add_exp")
	lualib:AddTrigger("0",  lua_trigger_monster_post_die, "on_post_monster_die")
	lualib:AddTrigger("0",  lua_trigger_gp, "on_gp")
	--lualib:AddTimer("", 700, 60000, -1, "shijie_boss")
	--lualib:AddTrigger("0",  lua_trigger_post_equip, "chuandaiqian")
	--lualib:AddTrigger("0",  lua_trigger_post_un_equip, "tuozhuangbei")
	lualib:AddTrigger("0",  lua_trigger_kill, "on_trigger_kill")
	lualib:AddTrigger("0",  lua_trigger_add_skill, "on_add_skill")
	lualib:AddTrigger("0", lua_trigger_create, "on_create_item")
	lualib:AddTrigger("0", lua_trigger_pre_die, "on_pre_player_die")	
	lualib:AddTrigger("0", lua_trigger_role_pre_harm, "on_pre_harm")
	lualib:AddTrigger("0", lua_trigger_mall, "on_trigger_mall")
	lualib:AddTrigger("0", lua_trigger_player_change_name, "on_player_name_change")
	

	lualib:AddTrigger("0",  lua_trigger_pre_item_apply, "on_trigger_pre_item_apply")
	--lualib:AddTrigger("0",  363, "on_ride_request")  --上马触发
	--lualib:AddTrigger("0",  364, "on_unride_request")  --下马触发
	lualib:AddTrigger("0", lua_trigger_pre_equip, "on_pre_equip") --穿装备之前触发
	lualib:AddTrigger("0", lua_trigger_post_equip, "on_post_equip") --穿装备之后触发
	lualib:AddTrigger("0", lua_trigger_post_un_equip, "on_post_un_equip") --脱装备之后触发
	lualib:AddTrigger("0", lua_trigger_family_ntf, "on_family_ntf") --行会的创建和销毁触发 87号任务
	lualib:AddTrigger("0", lua_trigger_pre_spell, "on_pre_spell")
	lualib:AddTrigger("0", lua_trigger_enter_map, "on_enter_map") --进入地图触发
	--lualib:AddTrigger("0", lua_trigger_item_pickup, "on_tem_pickup") --拾取物品之后触发
	--lualib:AddTrigger("0",  lua_trigger_spell, "on_spell")
	--lualib:SetTriggerFilters("0",  lua_trigger_spell, "25,26")
	--lualib:AddTrigger("0",  lua_trigger_item_apply, "on_item_apply")
	
	--添加系统定时器（妖山暗穴地宫玩法）
	--[[if lualib:AddTimer("",  lua_ysax_dgwf_timer, 3600000, -1, ysax_dgwf_call_back_func) == false then
		lualib:Error("system.lua 添加定时器：妖山暗穴地宫玩法 失败！")
		return
	end
	if GenMonster_ysax_dgwf() == false then
		lualib:Error("system.lau 添加怪物：妖山暗穴地宫玩法 失败！")
		return
	end--]]

	--[[init_castle()
	lualib:AddTimerEx("0", 151, 60000, 1, "fanhuan", "")

	local CastleWar = lualib:GetConstVar("CastleWar")
	if CastleWar == "" then 
		return 
	end
	local CastleWarTime = lualib:Str2Time(CastleWar)
	local times = lualib:GetAllTime()
	if CastleWarTime > times then
		local addtimer = CastleWarTime - times - 80000
		--lualib:AddTimerEx("0", 155, addtimer, 1, "starWarTime", CastleWar)
	end
	return--]]
end

function on_enter_map(player)
	if 3 == lualib:Job(player) then
		local map = lualib:MapGuid(player)
		local x, y = lualib:X(player), lualib:Y(player)
		local tServant = {}
		tServant = lualib:Player_GetServantList(player)
		for i = 1, #tServant do
			lualib:Monster_JumpXY(map, tServant[i], x, y, 3)
		end
	end
end

function on_player_name_change(player,result,newName)
	if result ~= 0 then
		lualib:SysPromptMsg(player, "名字已存在")
		lualib:AddItem(player, "改名卡", 1, false, "改名失败", "system")
	else
		if lualib:Player_IsPlayer(player) then
			local heros = lualib:GetPlayerHeroList(player)          --获取玩家拥有的英雄列表
			if #heros > 0 then
				local curHeroList = lualib:GetPlayerCurrentHeroList(player)
				--local heroNameTB = {["1"]="天威战将",["2"]="圣威战将",["3"]="怒威战将",["4"]="傲啸战神",["5"]="先锋战圣",}
				for k = 1 , #heros do
					if curHeroList[1] ~= heros[k]["guid"] then
						local a = heros[k]["name"]
						local ending = string.find(a, "（") - 1
						local heroName = string.sub(a, 1, ending)
						if lualib:GenHeroForPlayer(player,tostring(heros[k]["guid"]),"ChangeHeroName",heros[k]["guid"].."?"..newName.."#"..heroName) then
							
						end
					else
						local a = heros[k]["name"]
						local ending = string.find(a, "（") - 1
						local heroName = string.sub(a, 1, ending)
						lualib:Player_ChangeName(curHeroList[1], heroName .."（"..newName.."）")
					end
				end
			end	
		end	
		lualib:SetInt(player, "nameChanged_notrelogin", 1)
		lualib:SysPromptMsg(player, "名字更改成功，重登游戏生效！")
	end
	lualib:ShowFormWithContent(player, "脚本表单", "RenameCard.Close();")
end

function ChangeHeroName(player, err, param)
	
	local str = tostring(param)
	local a1 = string.find(str, "?")
	local heroGuid = string.sub(str, 1, a1-1)
	local a2 = string.find(str, "#")
	local newName = string.sub(str, a1+1, a2-1)
	local length = string.len(str)
	local heroName = string.sub(str, a2+1, length)
	--lualib:SysPromptMsg(player, "newName:::::"..tostring(newName))
	--lualib:SysPromptMsg(player, "heroName:::::"..tostring(heroName))
	--lualib:SysPromptMsg(player, "heroGuid:::::"..tostring(heroGuid))
	if lualib:Player_ChangeName(heroGuid, heroName .."（"..newName.."）") then
		--lualib:SysPromptMsg(player, "nameChangedSuccessfully:::::")
		lualib:DestroyDummy(heroGuid)
	else
		--lualib:SysPromptMsg(player, "failed:::::")
	end
	return ""
end




local true_skill_map = {
						 [25] = 1,
						 [2] = 1,
						 [10105] = 1,
						 [1010] = 1,
						 [1011] = 1,
						 [1012] = 1,
						 [1013] = 1,
						 [1000] = 1,
						 [1001] = 1,
						 [1002] = 1,
						 [1003] = 1,
						 [1030] = 1,
						 [1031] = 1,
						 [1032] = 1,
						 [1033] = 1,
						 [2100] = 1,
						 [2101] = 1,
						 [2102] = 1,
						 [2103] = 1,
						
						
					}			
					
function on_pre_spell(player, skill_id, skill_key)
	--lualib:SysPromptMsg(player, "skill_key="..skill_key);
	local map_name = lualib:KeyName(lualib:MapGuid(player))
	if map_name == "封魔副本" then
		if true_skill_map[tonumber(skill_id)] == nil then
			return false
		else
			return true
		end
	end

	if lualib:Job(player) == 3 then
		if skill_key == "地府之唤" then
			local servant_t = lualib:Player_GetServantList(player) 
			if #servant_t ~= 0 then
				for i = 1 , #servant_t do 
					if lualib:Name(servant_t[i]) == "熊猫侠客" then
						
						return false
					end
				end
			end
		end
	end	
    return true
end

 function on_trigger_pre_item_apply(player, item, item_id, item_name)
	local itemlist = {
	["宝石结晶小"] = 1,
	["宝石结晶中"] = 1 ,
	["宝石结晶大"] = 1,
	["护盾碎片小"] = 1,
	["护盾碎片中"] = 1,
	["护盾碎片大"] = 1,
	["魂珠碎片小"] = 1,
	["魂珠碎片中"] = 1,
	["魂珠碎片大"] = 1,
	["血符碎片小"] = 1,
	["血符碎片中"] = 1,
	["血符碎片大"] = 1,
	["宝石结晶巨"] = 1,
	["护盾碎片巨"] = 1,
	["魂珠碎片巨"] = 1,
	["血符碎片巨"] = 1,
	["灵石精华小"] = 2,
	["灵石精华中"] = 2,
	["灵石精华大"] = 2,
	["金砖中"] = 3,
	["金砖小"] = 3,
	["金砖大"] = 3,
	["超级金砖"] = 3,
	["经验丹大"] = 4,
	["经验丹小"] = 4,
	["经验丹中"] = 4,
	["500元宝"] = 5,
	["2000元宝"] = 5,
	["100元宝"] = 5,
	["1000元宝"] = 5,
	["500绑定元宝"] = 6,
	["5000绑定元宝"] = 6,
	["200绑定元宝"] = 6,
	["2000绑定元宝"] = 6,
	["1000绑定元宝"] = 6,
	["100绑定元宝"] = 6,
	["BOSS积分精魄小"] = 7,
	["超级BOSS积分精魄"] = 7,
	["高级BOSS积分精魄"] = 7,
	["BOSS积分精魄"] = 7,
	["高级成就令牌绑"] = 8,
	["高级成就令牌"] = 8,
	["成就令牌"] = 8,
	["转生丹"] = 9,
	["中级转生丹"] = 9,
	["高级转生丹"] = 9,
	["超级转生丹"] = 9,
	}
	local itemtype = lualib:Item_GetType(player,item) 
	if itemtype == 5 or itemtype == 2 then
		local keyname = lualib:KeyName(item)
		if itemlist[keyname] == nil then
			return true
		else
			if itemlist[keyname] == 3 then
				if lualib:Player_IsGoldEnough(player, 1000000000, true) == true then
					lualib:SysCenterMsg( 0 , "超过系统限制，最高只能拥有1000000000绑定金币!" , player)
					return false
				end
				local vip_lv = lualib:GetVipLevel(player)
				local icounts = lualib:GetDayInt(player,"goldzdayints")
				local DatIntTbl = {
									[0]	=	20	,
									[1]	=	30	,
									[2]	=	50	,
									[3]	=	70	,
									[4]	=	100	,
									[5]	=	150	,
									[6]	=	200	,
									[7]	=	300	,
									[8]	=	400	,
									[9]	=	500	,
									[10] =	600	,
					}
				if icounts >= DatIntTbl[vip_lv] then
					--lualib:SysCenterMsg( 0 , "今天使用金砖次数达到上限" , player_guid )
					return false
				end
			end
			if itemlist[keyname] == 9 then
				local icounts = lualib:GetDayInt(player, keyname.."次数")
				local zsdTbl = {
								["转生丹"] = 20,
								["中级转生丹"] = 20,
								["高级转生丹"] = 20,
								["超级转生丹"] = 10
				}
				if icounts >= zsdTbl[keyname] then
					--lualib:SysCenterMsg( 0 , "今天使用转生丹次数达到上限" , player_guid )
					return false
				end
			end
			local req = lualib:Item_GetSite(player, item) - 21
			req = req % 40
			if req == 0 then
				req = 40
			end
			local gamemainindex = itemlist[keyname]
			local percentage = lualib:GetExp(player)/lualib:Player_GetExpLimit(player)
			if gamemainindex == 4 then
				lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.ParticleEffect(".. req ..",".. gamemainindex ..","..percentage..") ;")
				return true
			end
			lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.ParticleEffect(".. req ..",".. gamemainindex ..") ;")
		end	
	end
	return true
 end

function on_create(object)
	lualib:SysMsg_SendBroadcastMsg(object, "系统")
end

local vip_table = {1000,10000,50000,100000,200000,500000,800000,1000000,2000000,5000000}

function on_billin(player,dc_yb)
	
	
	local vip_level = lualib:GetVipLevel(player)
	local yb = lualib:GetTotalBill(player)
	local vip_l = 0 
	for i = 1 , #vip_table do 
		if yb >= vip_table[i] then
			vip_l = i
			--lualib:SysPromptMsg(player,"viplevel=.."..vip_l)
		else
			break
		end
	end
	local pName = lualib:Name(player)
	--if yb >= vip_table[vip_level] then
	if vip_l > vip_level then
		lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.addEffectToVIP()")	--添加VIP图标特效
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_DARKGOLD#恭喜玩家#COLOREND##COLORCOLOR_BLUE#「"..pName.."」#COLOREND##COLORCOLOR_DARKGOLD#成为 #COLOREND##COLORCOLOR_YELLOW#VIP"..vip_l.."#COLOREND#", 11, 2)
		if string.len(pName) < 6 then
			local s1 = "#COLORCOLOR_BGREENG#玩家#COLOREND##COLORCOLOR_BLUE#「"..pName.."」#COLOREND##COLORCOLOR_BGREENG#成为VIP，享受#COLOREND##COLORCOLOR_ORANGE#【VIP超级大礼】，\n#COLOREND##UILINK<STR:我也要成为VIP,WND:执行脚本,PARAM:UI:Lua_GenForm(\"VIPWnd\")>#"
			lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
		else
			local s1 = "#COLORCOLOR_BGREENG#玩家#COLOREND##COLORCOLOR_BLUE#「"..pName.."」#COLOREND##COLORCOLOR_BGREENG#成为VIP，享受#COLOREND##COLORCOLOR_ORANGE#【VIP超级大礼】，#COLOREND##UILINK<STR:我也要成为VIP,WND:执行脚本,PARAM:UI:Lua_GenForm(\"VIPWnd\")>#"
			lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
		end
	end
	
	if tonumber(dc_yb) >= 10000 then
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_DARKGOLD#玩家#COLOREND##COLORCOLOR_BLUE#「"..pName.."」#COLOREND##COLORCOLOR_DARKGOLD#充值了 #COLOREND##COLORCOLOR_YELLOW#"..dc_yb.."元宝#COLOREND#", 11, 2)
	end
	
	--判断VIP经验BUFF有没有领
	if lualib:GetDayInt(player,"经验buff") == 0 then
		lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.addEffectToVIP()")	--添加VIP图标特效
	end
	
	lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.InitPlayerFundInfo()")

	vip_set(player)
	dailyConsume_billin(player, dc_yb)	--每日充值
	--lualib:SetInt(player, "serviceActivityRechargeYb", lualib:GetInt(player, "serviceActivityRechargeYb")+tonumber(dc_yb))
	--local totalYb = lualib:GetInt(player, "serviceActivityRechargeYb")
	--RecordTop5Info(player, totalYb)
	chongzhi_talk_jt_ex(player)
	--lualib:SetDayInt(player, "IndividalDailyRecharge",tonumber(lualib:GetDayInt(player, "IndividalDailyRecharge")+dc_yb))  --记录玩家每日充值元宝数

end

function on_trigger_mall(player, yb, isbind)
	--lualib:SysPromptMsg(player,"isbind="..tostring(isbind))
	--lualib:SysPromptMsg(player,"yb:"..tostring(yb))
	if isbind == 0 then                          --消费不绑定元宝
		local index = lualib:GetDBNum("consumeTerm")
		local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..index) + tonumber(yb)
		RecordTop10ConsumeInfo(player, totalYb)
	end
end
--角色添加技能触发
function on_add_skill(player, skill_id)
	lualib:RunClientScript(player, "CommonScriptFun", "SkillJudge", ""..skill_id)
end



--根据充值设置vip等级,添加相应等级buff
function vip_set(player)
	--local vip_table = {100,1000,5000,10000,50000,100000,200000,500000,1000000,5000000}
	--local vip_table = {100,10000,50000,100000,200000,500000,800000,1000000,2000000,5000000}
	local vip_buff = {
		{"VIP1级","VIP1级","VIP1级"},
		{"VIP2级","VIP2级","VIP2级"},
		{"VIP3级","VIP3级","VIP3级"},
		{"VIP4级","VIP4级","VIP4级"},
		{"VIP5级","VIP5级","VIP5级"},
		{"VIP6级","VIP6级","VIP6级"},
		{"VIP7级","VIP7级","VIP7级"},
		{"VIP8级","VIP8级","VIP8级"},
		{"VIP9级","VIP9级","VIP9级"},
		{"VIP10级","VIP10级","VIP10级"},

	}
	local yb = lualib:GetTotalBill(player)
	if yb < vip_table[1] then
		return ""
	end
	local vip_level = lualib:GetVipLevel(player)
	
	local vip_l = 0 
	for i = 1 , #vip_table do 
		if yb >= vip_table[i] then
			vip_l = i
			--lualib:SysPromptMsg(player,"viplevel=.."..vip_l)
		else
			break
		end
	end
	
	if vip_level == vip_l then
		local job = lualib:Job(player)
		lualib:AddBuff(player,vip_buff[vip_level][job], 0)
	end
	if vip_level < vip_l then
		if vip_level == 0 then
			lualib:SetDBNumEx("vip_person",lualib:GetDBNum("vip_person") + 1,4)
		end
		lualib:SetVipLevel(player,vip_l)
		--lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.ShowVip("..vip_l..");") --GameMainBar功能开关

		local job = lualib:Job(player)
		if tonumber(vip_level) ~= 0 and job ~= 0 then
			if lualib:HasBuff(player, vip_buff[vip_level][job]) then
				lualib:DelBuff(player, vip_buff[vip_level][job])
			end
		end	
		lualib:AddBuff(player,vip_buff[vip_l][job], 0)
		
		if vip_l >= 3 and vip_l < 6 then
			if vip_level < 3 then
				lualib:SetInt(player, "cmDayNum", lualib:GetInt(player, "cmDayNum")+2)
			end
		elseif vip_l >= 6 then
			if vip_level < 3 then
				lualib:SetInt(player, "cmDayNum", lualib:GetInt(player, "cmDayNum")+4)
			elseif vip_level >= 3 and vip_level < 6 then
				lualib:SetInt(player, "cmDayNum", lualib:GetInt(player, "cmDayNum")+2)
			end
		end
		lualib:NotifyVar(player, "cmDayNum")
	end
	---在线充值成为vip创建英雄
	createHeroViaVipLv(player)	
end	

local wall_table =
	{
		["神歌城"] =
		{
			{"北部皇宫", 6, "", "招募北部守军", 100000, {{"north_wall_guard1", 348, 179}, {"north_wall_guard2", 358, 189}, {"north_wall_guard3", 345, 182}, {"north_wall_guard4", 355, 192}, {"north_wall_guard5", 342, 185}, {"north_wall_guard6", 352, 195}}, "弓箭守卫2"},
			{"西部城墙", 6, "", "招募西部守军", 100000, {{"west_wall_guard1", 288, 152}, {"west_wall_guard2", 299, 141}, {"west_wall_guard3", 284, 156}, {"west_wall_guard4", 303, 137}, {"west_wall_guard5", 280, 160}, {"west_wall_guard6", 307, 133}}, "弓箭守卫2"},
			{"南部城墙", 6, "", "招募南部守军", 100000, {{"south_wall_guard1", 287, 238}, {"south_wall_guard2", 299, 250}, {"south_wall_guard3", 283, 234}, {"south_wall_guard4", 303, 254}, {"south_wall_guard5", 279, 230}, {"south_wall_guard6", 307, 258}}, "弓箭守卫2"},
			{"东部城墙", 6, "", "招募东部守军", 100000, {{"east_wall_guard1", 384, 250}, {"east_wall_guard2", 396, 238}, {"east_wall_guard3", 380, 254}, {"east_wall_guard4", 400, 234}, {"east_wall_guard5", 376, 258}, {"east_wall_guard6", 404, 230}}, "弓箭守卫2"}
		},
	}

function fanhuan()
	--[[
	for i = 1, table.getn(zhandou) do
		for j = 1, table.getn(zhandou[i]) do
			local data = lualib:IO_GetCustomVarStr(zhandou[i][j][1])
			local data_table = string.split(data, "#")
			if data ~= "" and data ~= nil then
				if i == 1 then
					lualib:Mail("竞技场管理员", data_table[1], "你所申请的竞技挑战已过期，系统返还您的金币！", tonumber(data_table[2]), 0, {})
					if data_table[3] ~= nil and data_table[3] ~= "" then
						lualib:Mail("竞技场管理员", data_table[3], "你所申请的竞技挑战已过期，系统返还您的金币！", tonumber(data_table[2]), 0, {})
					end
					lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
					lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
				elseif i == 2 then
					lualib:Mail("竞技场管理员", data_table[1], "你所申请的竞技挑战已过期，系统返还您的金币！", tonumber(data_table[2]), 0, {})
					if data_table[7] ~= nil and data_table[7] ~= "" then
						lualib:Mail("竞技场管理员", data_table[7], "你所申请的竞技挑战已过期，系统返还您的金币！", tonumber(data_table[2]), 0, {})
					end
					lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
					lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
				elseif i == 3 then
					lualib:Mail("竞技场管理员", data_table[1], "你所申请的竞技挑战已过期，系统返还您的金币！", tonumber(data_table[2]), 0, {})
					if data_table[12] ~= nil and data_table[12] ~= "" then
						lualib:Mail("竞技场管理员", data_table[12], "你所申请的竞技挑战已过期，系统返还您的金币！", tonumber(data_table[2]), 0, {})
					end
					lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
					lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
				end
			end
		end
	end
	--]]
end

function init_castle()
	local castle_t = lualib:GetAllCastle()
	if castle_t == nil then return end

	local guard = ""
	for _, v in pairs(castle_t) do
		if wall_table[v] ~= nil then
			for _k, _v in pairs(wall_table[v]) do
				for __k, __v in pairs(_v[6]) do
					if lualib:GetCastleCustomVarStr(v, __v[1]) ~= "" then
						guard = lualib:Map_GenSingleMonster(lualib:GetCastleMapGuid(v), __v[2], __v[3], 0, 3, _v[7], false)
						lualib:SetCastleCustomVarStr(v, __v[1], guard)
						if guard ~= "" then
							lualib:AddTrigger(guard,  lua_trigger_post_die, "on_guard_post_die")
							lualib:Monster_SetCustomVarStr(guard, "castle_name", v)
							lualib:Monster_SetCustomVarInt(guard, "type", _k)
							lualib:Monster_SetCustomVarInt(guard, "index", __k)
						end
					end
				end
			end
		end
	end
end

function on_guard_post_die(actor, killer)
	local castle_name = lualib:Monster_GetCustomVarStr(actor, "castle_name")
	local type = lualib:Monster_GetCustomVarInt(actor, "type")
	local index = lualib:Monster_GetCustomVarInt(actor, "index")
	if wall_table[castle_name][type][6][index] == nil then return end
	lualib:SetCastleCustomVarStr(castle_name, wall_table[castle_name][type][6][index][1], "")
	lualib:RemoveTrigger(actor,  lua_trigger_post_die, "on_guard_post_die")
end

function on_castle_war_start(castle_name, dst_map_guid, basilica_map_guid)
--	lualib:SysMsg_SendBroadcastColor("["..castle_name.."]攻城战开始了！", "", 1, 12)
--	if not lualib:Map_ClearDgnItem(dst_map_guid) then
--		lualib:Error("城堡地图GUID不存在！")
--		return
--	end
--
--	local add_monster_table = {["神歌城"] = {{"神歌城城门", 292, 247, 5}, {"神歌城殿门1", 359, 164, 5},
--							   {"神歌城殿门1", 363, 168, 5}, {"神歌城殿门1", 367, 172, 5}, {"神歌城侧城门1", 390, 247, 3}, {"神歌城侧城门2", 294, 151, 3}}}
--	local remove_npc_table = {["神歌城"] = {"神歌城药材商", "神歌城铁匠", "神歌城裁缝", "神歌城杂货商",
--							  "神歌城首饰商", "神歌城商人", "神歌城教官", "神歌城僧侣", "神歌城管理人"}}
--	local remove_monster_table = {["神歌城"] = {"神歌城寺庙", "神歌城商会", "神歌城军营"}}
--
--	for i = 1, table.getn(add_monster_table[castle_name]) do
--		if not lualib:Map_GenSingleMonster(dst_map_guid, add_monster_table[castle_name][i][2], add_monster_table[castle_name][i][3],
--										   1, add_monster_table[castle_name][i][4], add_monster_table[castle_name][i][1], false) then
--			lualib:Print(castle_name.."刷怪"..add_monster_table[castle_name][i][1].."出错！")
--			return
--		end
--	end
--
--	for i = 1, table.getn(remove_npc_table[castle_name]) do
--		if not lualib:Map_RemoveNpc(dst_map_guid, remove_npc_table[castle_name][i]) then
--			lualib:Print(castle_name.."移除NPC"..remove_npc_table[castle_name][i].."出错！")
--			return
--		end
--	end
--
--	for i = 1, table.getn(remove_monster_table[castle_name]) do
--		if not lualib:Map_RemoveMonster(dst_map_guid, remove_monster_table[castle_name][i]) then
--			lualib:Print(castle_name.."移除怪物"..remove_monster_table[castle_name][i].."出错！")
--			return
--		end
--	end
end

function trigger_castle_war_init(castle_name, dst_map, basilica_map)
	--[[
	if not lualib:AddTimer(basilica_map, -1, 1000, -1, "on_timer_castle_start") then
		lualib:Error(castle_name.."城堡定时器设置失败！")
	end
	lualib:Map_SetCustomVarStr(basilica_map, "castle_war_castle_name", castle_name)
	lualib:Debug(castle_name.."城堡定时器设置成功！")
	--]]
end

function on_timer_castle_start(map, timer_id)
	--[[
	local castle_name = lualib:Map_GetCustomVarStr(map, "castle_war_castle_name")
	if castle_name == "" then return end

	local cur_timer = lualib:GetLocalTime()
	local start_time = lualib:CalcLocalTime(5, "20:00:00")
        local duration = 7200
	local end_time = start_time + duration

	local timer_t = {{-1800, 1, 30}, {-1200, 2, 20}, {-600, 3, 10}, {-300, 4, 5}, {-60, 5, 1}, {-1800, 6, 30}, {-1200, 7, 20}, {-600, 8, 10}, {-300, 9, 5}, {-60, 10, 1}}
	local cur_state = lualib:Map_GetCustomVarInt(map, "castle_war_castle_status")
	if cur_state >= table.getn(timer_t) then
		lualib:Map_SetCustomVarInt(map, "castle_war_castle_status", 0)
		lualib:DisableTimer(map, timer_id)
		return
	end

	if cur_state < 5 then
		if ((cur_timer >= (start_time + timer_t[cur_state + 1][1])) and ((cur_state + 1) == timer_t[cur_state + 1][2])) then
			if (cur_timer < (start_time + timer_t[cur_state + 1][1] + 10)) then
				lualib:SysMsg_SendBroadcastMsg("["..castle_name.."]城堡战还有"..timer_t[cur_state + 1][3].."分钟开始！请攻守双方做好准备！", "系统通知")
			end
			lualib:Map_SetCustomVarInt(map, "castle_war_castle_status", cur_state + 1)F
		end
	else
		if ((cur_timer >= (end_time + timer_t[cur_state + 1][1])) and ((cur_state + 1) == timer_t[cur_state + 1][2])) then
			if (cur_timer < (end_time + timer_t[cur_state + 1][1] + 10)) then
				lualib:SysMsg_SendBroadcastMsg("["..castle_name.."]城堡战还有"..timer_t[cur_state + 1][3].."分钟结束！请攻守双方抓紧时间！", "系统通知")
			end
			lualib:Map_SetCustomVarInt(map, "castle_war_castle_status", cur_state + 1)
		end
	end
	--]]
end

function on_castle_war_end(castle_name, dst_map_guid, basilica_map_guid)
--	local remove_monster_table = {["神歌城"] = {"神歌城城门", "神歌城殿门1", "神歌城侧城门1", "神歌城侧城门2"}}
--	local add_npc_table = {["神歌城"] = {{"神歌城管理人", 335, 203}, {"神歌城药材商", 308, 207}, {"神歌城铁匠", 346, 265}, {"神歌城裁缝", 285, 203}, {"神歌城杂货商", 322, 234}, {"神歌城首饰商", 289, 181}}}
--	local add_monster_table = {["神歌城"] = {{"神歌城寺庙", 330, 154}, {"神歌城商会", 319, 198}, {"神歌城军营", 342, 221}}}
--	local remove_npc_table = {["神歌城"] = {"城门阻挡1", "城门阻挡2", "城门阻挡3", "城门阻挡4", "城门阻挡5", "城门阻挡6", "城门阻挡7"}}
--
--	for i = 1, table.getn(remove_monster_table[castle_name]) do
--		if not lualib:Map_RemoveMonster(dst_map_guid, remove_monster_table[castle_name][i]) then
--			lualib:Print(castle_name.."移除怪物"..remove_monster_table[castle_name][i].."出错！")
--			return
--		end
--	end
--
--	for i = 1, table.getn(add_npc_table[castle_name]) do
--		if not lualib:Map_GenNpc(dst_map_guid, add_npc_table[castle_name][i][1], add_npc_table[castle_name][i][2],
--								add_npc_table[castle_name][i][3], 1, 3) then
--			lualib:Print(castle_name.."刷NPC"..add_npc_table[castle_name][i][1].."出错！")
--		end
--	end
--
--	for i = 1, table.getn(add_monster_table[castle_name]) do
--		if not lualib:Map_GenSingleMonster(dst_map_guid, add_monster_table[castle_name][i][2], add_monster_table[castle_name][i][3],
--										   1, 3, add_monster_table[castle_name][i][1], false) then
--			lualib:Print(castle_name.."刷怪"..add_monster_table[castle_name][i][1].."出错！")
--			return
--		end
--	end
--
--	for i = 1, table.getn(remove_npc_table[castle_name]) do
--		if not lualib:Map_RemoveNpc(dst_map_guid, remove_npc_table[castle_name][i]) then
--			lualib:Print(castle_name.."移除NPC"..remove_npc_table[castle_name][i].."出错！")
--			return
--		end
--	end
--
--	lualib:SysMsg_SendBroadcastColor("["..castle_name.."]攻城战结束了！", "", 1, 12)
--	local own_family = lualib:GetCastleOwnFamily(castle_name)
--
--	--设置城堡拥有者变量
--		local family = lualib:IO_GetCustomVarStr("shengechengzhanling")
--		if own_family == family then
--			local abc = lualib:IO_GetCustomVarInt("zhanlingcishu")
--			lualib:IO_SetCustomVarInt("zhanlingcishu", abc + 1)
--		else
--			lualib:IO_SetCustomVarStr("shengechengzhanling", own_family)
--			lualib:IO_SetCustomVarInt("zhanlingcishu", 1)
--		end
--	--设置城堡次数
--
--
--	if own_family ~= "" then
--		lualib:IO_SetCustomVarInt("castlewar_sgc_flag", 1)          --灵元秘境要使用
--		lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..castle_name.."] #COLORCOLOR_YELLOW#被".."#COLORCOLOR_BROWN#["..own_family.."] #COLORCOLOR_YELLOW#行会占领了！", "", 1, 12)
--		if lualib:IO_GetCustomVarInt("castlewar_sgc_flag") == 1 then
--			local tip = [[                                    #COLORCOLOR_GREENG#灵元秘境开启#COLOREND##COLORCOLOR_SKYBLUE# 
--						  神歌城被初次占领，触发了灵元秘境的开关！
--						一个盛产灵元珠的秘密地图被打开……      #COLOREND#]]
--			local tip2 = [[                                                                        ]]
--			lualib:SysMsg_SendBroadcastColor("     #COLORCOLOR_ORANGE#╔──────═──────═──────═──────═──────╗#COLOREND#", "", 7, 11)
--			lualib:SysMsg_SendBroadcastColor(tip, "", 7, 11)
--
--			lualib:SysMsg_SendBroadcastColor(tip2, "", 2, 11)
--			lualib:SysMsg_SendBroadcastColor("     #COLORCOLOR_ORANGE#╚──────═──────═──────═──────═──────╝#COLOREND#", "", 7, 11)
--		end
--
--	end
--
--	--清除行会会长领取变量
--	lualib:SetCastleCustomVarInt(castle_name, "award_leader_week_count", 0)
--
--	if castle_name == "神歌城" then
--		--清除攻城时间
--		local castle_var = "神歌城_atk_familys"
--		lualib:IO_SetCustomVarStr(castle_var, "")   --T+N时间清除
--
--		--消除武器神歌领取标记
--		--lualib:IO_SetCustomVarStr("神歌城_leader_weapon", "")
--	end
end

function notify_family_war(player)
	if lualib:Player_GetGuidProp(player, lua_role_guild_id) == "" then
		return
	end

	if lualib:GetFamilyName(player) == "" then
		return
	end

	local wars = lualib:GetRunningFamilyWar(player)
	if wars == nil then return end
	for k in pairs(wars) do
		lualib:SysMsg_SendPromptMsg(player, "行会正在与"..wars[k].."行会进行战争！")
	end

	lualib:NotifyRunningFamilyWar(player)
end

function on_first_in_game(player)
	
	lualib:Player_ChangeAttackMode(player,6) --设置玩家的攻击模式为阵营攻击模式
	
	lualib:ShowFormWithContent(player, "form文件表单", "开始游戏表单")
	--lualib:ForceAcceptQuest(player, 1)
	--lualib:AddBuff(player, "随机BUFF14", 7200)
	--lualib:AddBuff(player, "大力丸300", 7200)
    --lualib:AddBuffEx(player, "神秘气息", 7200, 300)
	
	local playername = lualib:KeyName(player)
	lualib:SysMsg_SendBottomColor(playername, "服务器登录成功", 9, 11)
	lualib:SysMsg_SendBottomColor(playername, "欢迎来到【神途】，祝您游戏快乐", 1, 11)
	--//提示  键盘操作
	lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.Taskitem(11);")
	lualib:AddItem(player, "改名卡", 1, true, "新手送", player)
	lualib:Player_AddGold(player, 0, true, "加金币：第一次进入游戏金钱奖励", player)
	lualib:Player_AddIngot(player, 0, true, "加元宝：第一次进入游戏元宝奖励", player)
end

function active_player(player, request_type, times)
	local accountid = lualib:Player_GetAccountID(player)
	local account_name = lualib:AccountName(player)
	local serverid = lualib:GetZoneId()
	local role_name = lualib:Name(player);
	local level = lualib:Level(player);
	local job = lualib:Job(player);

	local url = string.format("http://api.hzyotoy.com:8800/api/putroleinfo.do?type=%d&zoneid=%d&userid=%d&role_guid=%s&level=%d&role_name=%s&job=%d"
								,request_type, serverid, accountid, player, level, lualib:UrlEncode(role_name), job);

	if request_type == nil  or account_name == "" or serverid == nil then
		return
	else
		if request_type == 2 and level < 5 then
			return
		elseif request_type == 3 and level < 10 then
			return
		end
	--[[	
		if times == 0 then
			lualib:GetURL(url, "do_nothing_retry" .. request_type, player, 30)
		else
			lualib:GetURL(url, "do_nothing", player, 30)
		end]]
		
		if request_type == 2 then
			if times == 0 then
				lualib:GetURL(url, "do_nothing", player.."#".."0"..request_type, 30)
			elseif times == 1 then
				lualib:GetURL(url, "do_nothing", player.."#".. times ..request_type, 30)
			end
		elseif request_type == 3 then
			if times == 0 then
				lualib:GetURL(url, "do_nothing", player.."#".."0"..request_type, 30)
			elseif times == 1 then
				lualib:GetURL(url, "do_nothing", player.."#".. times ..request_type, 30)
			end
		end
	end
end


function do_nothing_retry2(player, errorcode, result)
	--[[
	if errorcode ~= 0 then
		active_player(player, 2, 1);  --重试登陆请求
	end
	]]--
end

function do_nothing_retry3(player, errorcode, result)
	--[[
	if errorcode ~= 0 then
		active_player(player, 3, 1);--重试升级请求
	end
	]]--
end

function do_nothing(param, errcode, result)
	local param_t = string.split(param, "#")
	local player = param_t[1]
	local times = tonumber(param_t[2])
	local request_type = tonumber(param_t[3])
	
	if tonumber(errcode) ~= 0 or result == nil then
		active_player(player, request_type, times + 1)
		return 
	end
	
	local result_find1, result_find2 = string.find(result,"%d|%d|%d|%d|%d")

end


function on_msg_dlg_ack(dlg_id, player, button_id, param)
	if button_id ~= 0 then return end
	local x = lualib:X(player)
	if x > 280 then
		lualib:AcceptQuest(player, 1001)
	else
		lualib:AcceptQuest(player, 1101)
	end
end

function on_level_up(player, level)
--	level_yindao(player,level) --升级引导
	--登陆信息发给web服务器，网站查角色需要 type=3代表 升级请求
	active_player(player, 3, 0)
	local level = tonumber(level)
	--回归记录
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	if StartServerTime ~= "" and StartServerTime ~= nil then
		if times < StartServerTime_int then
			if tonumber(level) == 40 then
				local account_Name = tostring(lualib:AccountName(player))
				if lualib:IO_FileExists("fengcehuikui.txt") then
					if not lualib:IO_CheckTextInFile("fengcehuikui.txt", account_Name) then
						lualib:IO_TextFileInsertLine("fengcehuikui.txt", 1, account_Name)
					end
				else
					lualib:IO_CreateTextFile("fengcehuikui.txt", false)
					lualib:IO_TextFileInsertLine("fengcehuikui.txt", 1, account_Name)
				end
			end
		end
	end
	level_up_award(player, level) --升级礼包
	--[[local tanbaoScore = lualib:GetInt(player,"tanbao_score")
	if level == 55 then
		if tanbaoScore > 0 then
			AddSEIcon(player, 2, -6, "战神", 1800200055, "倒计时", "openMarsPage","","")
		else
			AddSEIcon(player, 2, -5, "战神", 1800200055, "倒计时", "openMarsPage","","")
		end
	end--]]
	if level == 40 then
		Button_icon_show(player)
	elseif level == 46 then 
		lualib:ForceAcceptQuest(player, 500)
	elseif level == 50 then
		lualib:ShowFormWithContent(player, "脚本表单","TaskWindow.AddExtraFun("..level..");GameMainBar.Taskitem(17)")
	elseif level == 55 then
		lualib:ShowFormWithContent(player, "form文件表单","marsAwakenUI")
		lualib:ShowFormWithContent(player, "脚本表单","GameMainBar.Taskitem(17)")
	elseif level == 60 then
		openChallengeBoss_show(player) --挑战BOSS
		openTreasureHouse_show(player)	--探宝
		openExchangePage_show(player)	--积分装备	
		ShowIconOfNewServerGift(player)
	elseif level == 62 then 
		lualib:ForceAcceptQuest(player, 5000)   --强制接收5000号任务
	elseif level == 66 then 
		lualib:ForceAcceptQuest(player, 20000)   --强制接收20000号任务
	end	
	if level >= 57 and level < 60  then 
		lualib:ShowFormWithContent(player, "form文件表单","Boss_tip")
	end
	
	if level >= 52 and level < 55  then 
		lualib:ShowFormWithContent(player, "form文件表单","Mars_tip")
	end

	
	if level == 60 then
		--lualib:ShowFormWithContent(player, "脚本表单","DisplayEffectForFirstShow(2)")	--开放精炼功能
		lualib:ShowFormWithContent(player, "脚本表单","DisplayEffectForFirstShow(8)")   --开放探宝功能
		lualib:ShowFormWithContent(player, "脚本表单", "Boss_tip.Closed();")
		lualib:ShowFormWithContent(player, "form文件表单","Wing_tip")  			--弹出翅膀预提士
		
	elseif level == 61 then --开放翅膀功能
		lualib:ShowFormWithContent(player, "form文件表单","Wing_tip")  	
		lualib:ShowFormWithContent(player, "脚本表单","DisplayEffectForFirstShow(4)")
		lualib:ShowFormWithContent(player, "form文件表单","ShenLu_tip")
	elseif level == 62 then --开放神炉功能
		lualib:ShowFormWithContent(player, "form文件表单","ShenLu_tip")
		lualib:ShowFormWithContent(player, "脚本表单","DisplayEffectForFirstShow(3)")
	elseif level == 69 then --弹出经验炼制界面并显示图标
		if buyExp_IsWitinTime() then --经验炼制活动时限为开服3天内
			buyExp_addIcon_openUI(player)
			lualib:ShowFormWithContent(player, "脚本表单", "DisplayEffectForFirstShow(7);")
		end
	elseif level == 70 then
		lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.Taskitem(15)")
	
	elseif level == 75 then --开放宝石功能
		lualib:ShowFormWithContent(player, "脚本表单","DisplayEffectForFirstShow(1)")
	end

	
	
	if lualib:HasQuest(player, 76) then 
		local level = lualib:Level(player)
		if level >= 63 then
			lualib:SetQuestGroupHuntingsCount(player, 76, 444, 1)	
		end
	elseif lualib:HasQuest(player, 79) then 
		
		local level = lualib:Level(player)
		if level >= 64 then
		
			lualib:SetQuestGroupHuntingsCount(player, 79, 444, 1)	
		end
	elseif lualib:HasQuest(player, 82) then 
		
		local level = lualib:Level(player)
		if level >= 65 then
		
			lualib:SetQuestGroupHuntingsCount(player, 82, 444, 1)	
		end
	elseif lualib:HasQuest(player, 85) then 
		local level = lualib:Level(player)
		if level >= 66 then
			lualib:SetQuestGroupHuntingsCount(player, 85, 444, 1)	
		end
	elseif lualib:HasQuest(player, 88) then 
		local level = lualib:Level(player)
		if level >= 67 then
			lualib:SetQuestGroupHuntingsCount(player, 88, 444, 1)	
		end
	elseif lualib:HasQuest(player, 91) then 
		local level = lualib:Level(player)
		if level >= 68 then
			lualib:SetQuestGroupHuntingsCount(player, 91, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 94) then 
		local level = lualib:Level(player)
		if level >= 69 then
			lualib:SetQuestGroupHuntingsCount(player, 94, 444, 1)	
		end
	elseif lualib:HasQuest(player, 96) then 
		
		local level = lualib:Level(player)
		if level >= 70 then
		
			lualib:SetQuestGroupHuntingsCount(player, 96, 444, 1)	
		end
	elseif lualib:HasQuest(player, 98) then 
		local level = lualib:Level(player)
		if level >= 75 then
			lualib:SetQuestGroupHuntingsCount(player, 98, 444, 1)	
		end
		
		
	elseif lualib:HasQuest(player, 99) then 
		local level = lualib:Level(player)
		if level >= 80 then
			lualib:SetQuestGroupHuntingsCount(player, 99, 444, 1)	
		end
			
		
	elseif lualib:HasQuest(player, 102) then 
		local level = lualib:Level(player)
		if level >= 85 then
			lualib:SetQuestGroupHuntingsCount(player, 102, 444, 1)	
		end
	end	
	
	login_levelUp(player,level)	
end

function on_join_family(applyer, family)  --有玩家申请入行会
	local FamilyLeader =  lualib:GetFamilyLeader(family)
	if lualib:HasQuest(applyer, 97) then
		lualib:SetQuestGroupHuntingsCount(applyer, 97, 444, 1)
	end
	if FamilyLeader ~= "" then 
		if not lualib:Player_IsOnline(FamilyLeader) then
			return true              --会长不在线
		end
		lualib:SysPromptMsg(FamilyLeader, "有人申请入会")
		lualib:ShowFormWithContent(FamilyLeader, "脚本表单",[[GameMainBar.ApplyFamily()]])
	end
	return true
end

function achievement(player)
	local client_script = [[WndClick(nil,"GameMainInterface,LittleMap,Achieve")]]
	lualib:ShowFormWithContent(player, "脚本表单", client_script)
	return ""
end	


function level(player, npc)
    return ""
end

--每日签到提示
function meiritishi(dlg_id, player, button_id, param)
	--if button_id ~= 0 then return end
end


function quest_jie(player)
	lualib:ShowFormWithContent(player, "form文件表单", "游戏开始表单")
--	lualib:ShowFormWithContent(player,"脚本表单","GameStart.main()")
end

function UpdataSomeChartInfo(player)
	local theName = lualib:GetStr(player, "playerNameINchart")
	local playerName = lualib:Name(player)
	local t = 1
	if lualib:GetDBNum("consumeTerm") ~= 0 then
		t = lualib:GetDBNum("consumeTerm")
	end
	for index = 1, t do
		local str = lualib:GetDBStr("top10ConsumeChartInfo"..index)
		local Top10InfoArr = {{}}   --difine array record Top5 Information ;    Top10InfoArr[][1]=playerName    Top10InfoArr[][2]=yb
		if str ~= nil and str ~= "" then
			Top10InfoArr = json.decode(str)
			local l = 0
			for i = 1, #Top10InfoArr do
				if Top10InfoArr[i][1] == theName then       --找到玩家的排名（如果有）
					l = i
				end
			end
			if l ~= 0 then											--原本在榜上。名字被
				Top10InfoArr[l][1] = lualib:Name(player)
				lualib:SetDBStr("top10ConsumeChartInfo"..index, json.encode(Top10InfoArr))
			else  --原本不在榜上
				local individualConsume = lualib:GetInt(player, "IndividalTotalConsumeYB"..index)
				RecordTop10ConsumeInfo(player, individualConsume)
			end
		end
	end
	
	
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	local allDays = lualib:GetAllDays(0)
	local r = math.ceil(((allDays+1)*24*60*60-StartServerTime_int)/(24*60*60)) --开服第几天

	local str = lualib:GetDBStr("top5RechargeChartInfo"..r)
	local Top5InfoArr = {{}}   --difine array record Top5 Information ;    Top5InfoArr[][1]=playerName    Top5InfoArr[][2]=yb
	if str ~= nil and str ~= "" then
		Top5InfoArr = json.decode(str)
		local l = 0		
		for i = 1, #Top5InfoArr do
			if theName == Top5InfoArr[i][1] then
				l = i
			end
		end
		if l ~= 0 then
			Top5InfoArr[l][1] = lualib:Name(player)
			lualib:SetDBStr("top5RechargeChartInfo"..r,str)
		else
			local individualRecharge = lualib:GetDayInt(player, "IndividalDailyRecharge")
			RecordTop5Info(player, individualRecharge) ----充值排行
		end
	end

	return ""
end

--每日签到提示
function on_login(player)
	--lualib:ShowFormWithContent(player, "form文件表单", "开始游戏表单")
	
	--[[
	local reinNum = lualib:GetInt(player, "reinNum")
	local title = {
					{81, 83, 85},
					{82, 84, 86},
					}
	
	if reinNum > 0 then
		local gender = lualib:Gender(player)
		local job = lualib:Job(player)
		lualib:AddTitle(player, title[gender][job])
		lualib:SetStr(player, "_name_t", "转生等级:"..reinNum.."转")
		lualib:SetStr(player, "_na_", "转生等级:"..reinNum.."转")
		lualib:NotifyVar(player, "_name_t")
		lualib:NotifyVar(player, "_na_")
	end
	--]]
	if lualib:GetInt(player, "nameChanged_notrelogin") ~= 0 then
		lualib:SetInt(player, "nameChanged_notrelogin", 0)
	end
	if lualib:GetInt(player,"reinLevel") ~= 0 then
		lualib:NotifyVar(player, "reinLevel")
	end	
	
	
--取硬件码
	local playname = lualib:Name(player)
	local computer = lualib:HardwareCode(player)
	local yingjianma = lualib:GetStr(player, "yingjianma")
	
	if computer ~= "" and computer ~= "00-00-00-00-00" then
		local count = lualib:GetDBNum(computer);
		
		if count > 2 then 
		--	lualib:MsgBox(player, "一台机器只能开2个号！")
			lualib:Player_RunGMCmd(player, "kick", "playname")
		else
			lualib:SetDBNum(computer, count + 1);
		end
	end
--取硬件码

--[[	--测试
	local TestServerTime = lualib:GetConstVar("TestServerTime")
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local QQQUN = lualib:GetConstVar("QQQUN")
	local QQ = lualib:GetConstVar("QQ")
	local web = lualib:GetConstVar("WEB")
	local TestServerTime_int = lualib:Str2Time(TestServerTime)
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)
	if lualib:Player_IsGM(player) ~= true then
		if TestServerTime_int > StartServerTime_int or TestServerTime == "" or TestServerTime == nil then
			TestServerTime_int = 0
		end
		
		if StartServerTime == "" or StartServerTime == nil then
			StartServerTime_int = 0
		end
		local s = ""
		local s1 = "请您加入QQ群【"..QQQUN.."】或登陆官方网站："..web.."了解最新消息！如有疑问请联系咨询客服QQ:"..QQ.."！"
		if times < StartServerTime_int and  times > TestServerTime_int then
			s = "尊敬的玩家您好！《".. lualib:GetZoneName() .."》服务器正在筹备阶段，无法登陆，游戏将于"..StartServerTime.."正式开启，敬请期待！"
			for i = 1, 2 do
				lualib:SysMsg_SendBottomColor(player, s, 7, 2)
				lualib:SysMsg_SendBottomColor(player, s1, 7, 2)
			end
			lualib:AddTimer(player, 723, 2000, 1, "kaifutiren")
			return
			--lualib:Player_Kick(player)
		elseif times < TestServerTime_int then
			s = "尊敬的玩家您好！《".. lualib:GetZoneName() .."》将于"..TestServerTime.."结束阶段，介时将删除服务器所有数据，游戏将于"..StartServerTime.."正式开启，敬请期待！\n"
			for i = 1, 2 do
				lualib:SysMsg_SendBottomColor(player, s, 7, 2)
				lualib:SysMsg_SendBottomColor(player, s1, 7, 2)
			end
		end
	end--]]



	local playerlevel = lualib:Level(player)
	local reinNum = lualib:GetInt(player,  "reinNum")
	--登陆信息发给web服务器，网站查角色需要 type=2代表 登陆请求
	
	
	local xun_jifen = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000,0}
	local jifen = lualib:GetInt(player,"Ach_jifen")
	local medalLevel = lualib:GetInt(player,"Ach_xunz")
	local vis = 0 
	if jifen >= xun_jifen[medalLevel+1] and medalLevel ~= #xun_jifen - 1 then
		vis = 1
	end
	local num = lualib:GetInt(player,"GloryGetNum")
	if num >= 0 then
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.MedalNum = "..vis..";GameMainBar.AchNum("..num..")")
	end	
	active_player(player, 2, 0)

	--右上角按钮
	check_forbid_role(player)
	--spirit_on_login(player)	--魂力系统
	family_on_login(player)
	check_player_login(player)
--	online_gift_login(player)
--	marry_load(player)
--	check_first_bill(player)
--	meiriqiandao_xianshi(player) --每日签到图标显示
--	mubiao_xianshi(player) --目标
--	richang_xianshi(player) --日常
	guaji_xianshi(player) --挂机
--	libao_xianshi(player) --领取礼包
	download_show(player)	--微端下载
	openOnlineReward_show(player) --奖励大厅
	openServiceActivities_show(player)	--开服活动
	storeUp_show(player)	--收藏奖励

	ShowIconOfNewServerGift(player)
	Button_icon_show(player)
	--------------------********************************************************************************
	UpdataSomeChartInfo(player)
	lualib:SetStr(player, "playerNameINchart",lualib:Name(player))
	--------------------*************************************************************************************
	local level = lualib:Level(player)
	if level >= 60 then
		openChallengeBoss_show(player) --挑战BOSS
	end

	if level == 61 then
		lualib:ShowFormWithContent(player, "form文件表单","ShenLu_tip")  --神炉提示
	end
	
	if level == 60 then
		lualib:ShowFormWithContent(player, "form文件表单","Wing_tip") --翅膀提示
	end
	
	if level >= 60 then
		openTreasureHouse_show(player)	--探宝
		openExchangePage_show(player)	--积分装备	
	end

	--openGongcheng_show(player) --攻城
	
	if level >= 55 then
		openMarsPage_show(player) --战神
	end
	--if lualib:GetInt(player, "dailyConsume_reward") == 0 then
		dailyConsume_billin(player)
	--end
	
	
	local totalBill = lualib:GetTotalBill(player)
	--if totalBill == 0 then
	if lualib:GetInt(player, "firstConsume_reward") ~= 1 then
		firstConsume_show(player)	--首充
	else 

		dailyConsume_show(player)	--每日充值

	end
	
	if level >= 70 then
		buyExp_icon_show(player) --经验炼制(player) 
	end

	--判断VIP经验BUFF有没有领
	local vip_level = lualib:GetVipLevel(player)
	if 0 < vip_level then
		if lualib:GetDayInt(player,"经验buff") == 0 then
			lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.addEffectToVIP()")	--添加VIP图标特效
		else
			for i = 1, vip_level do
				local str = tostring(lualib:Player_GetAccountID(player)).."vipReward"..i
				if 0 == lualib:GetDBNum(str) then
					lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.addEffectToVIP()")	--添加VIP图标特效
					break
				end
			end
		end
	end
	
	--添加封魔每日任务
	if level >= 66 then
		local FMDayCount = lualib:GetDayInt(player, "fengmo_count")
		if FMDayCount < 3 then 
			if not lualib:HasQuest(player, 20000) then
				lualib:ForceAcceptQuest(player, 20000)   --强制接收20000号任务
			end
		end
	end
	
	--押镖任务,下线上线后继续
	lualib:DelayCall(player, 5 * 1000, "IsDuringEscorter", "") 
    	

--	onlinegift_show(player)		--日常时间礼包
--	lingqujingyan_xianshi(player) --领取经验图标显示
--	if playerlevel >= 23 then
--		gonglue_xianshi(player) --攻略
--	end
--
--	local chongzhi_number = lualib:GetGold(player)
--	if	chongzhi_number >= 0 then--
--		tanbao_xianshi(player) --龙穴探宝
--	end
	
	--清掉在线礼包的变量，让在线礼包每天都有
	local allday = lualib:GetAllDays(0)
	local meiri_day = lualib:GetInt(player, "meiri_day")
	if meiri_day ~= allday then
		lualib:SetInt(player, "meiri_day", allday)
		lualib:Player_SetCustomVarInt(player, "online_gift_level", 0)
		--online_gift_login(player)
	end
	RewardHall_resetSuperVip(player) --根据时间判断 重置超级会员
	--在线礼包页游,记录登陆时间	
	lualib:SetDayInt(player,"online_this",lualib:GetAllTime())
	
	if reinNum > 99 or playerlevel >= 99 then
		if reinNum >0 then
			zhuansheng_xianshi(player) --引导system/转生
		end
	end	
	lualib:SetLockSwitch(player, 1)
	lualib:SetInt(player, "set_lock_pwd", 0)
	lualib:NotifyVar(player, "set_lock_pwd")
	
	if lualib:Player_GetCustomVarInt(player, "vip6_suishen_cangku") == 1 then
		lualib:Player_SetCustomVarInt(player, "vip6_suishen_cangku", 0)
    end

	if lualib:Player_GetCustomVarInt(player, "vip7_ssyao") == 1 then
		lualib:Player_SetCustomVarInt(player, "vip7_ssyao", 0)
	end
    notify_family_war(player)

	local offline_times = lualib:GetAllTime() - lualib:Player_GetTimeProp(player,  lua_role_last_logout)
	offline_times = lualib:Player_GetCustomVarInt(player, "player_total_offline_times") + offline_times
	if offline_times > (1 * 24 * 3600) then offline_times = 1 * 24 * 3600 end
	lualib:Player_SetCustomVarInt(player, "player_total_offline_times", offline_times)

	lualib:AddTimer(player, -1, 1000, 1, "on_login_delay_timer")

	--离线扣坐骑离线饥饿度

--[[
	local mountguid = lualib:Player_GetItemGuid(player,  lua_site_mount) --获取坐骑位的物品GUID
	local mountdur = lualib:Item_GetDurability(player, mountguid)		--获取坐骑位上坐骑的耐久
	if  mountguid ~= nil then
			mountdur = mountdur - offline_times / 10
			lualib:Item_SetDurability(player, mountguid, mountdur)
			if mountdur <= 0 then
			lualib:Item_SetDurability(player, mountguid, 0)
			end
	end
]]--

--[[
	local offline_times1 = lualib:GetAllTime() - lualib:Player_GetTimeProp(player,  lua_role_last_logout)
	local zuoqi_table = lualib:ItemsByType(player, 1, 14,true,true,true,true)
	if zuoqi_table ~= nil and table.getn(zuoqi_table) > 0 then
		for i = 1, table.getn(zuoqi_table) do
			local mountdur = lualib:Item_GetDurability(player, zuoqi_table[i])
			mountdur = mountdur - offline_times1 / 100
			if mountdur <= 0 then
				mountdur = 0
			end
			lualib:Item_SetDurability(player, zuoqi_table[i], mountdur)
		end
	end

	local vip_shangxian = lualib:GetVipRemain(player, 13)
	if vip_shangxian ~= 0 then
		local vip_sx = lualib:GetInt(player, "shangxiangonggao")
		local vip_player_name = lualib:Name(player)
		if vip_sx == 1 then
			local s = "#COLORCOLOR_YELLOW#尊贵的VIP玩家#COLORCOLOR_BROWN#【"..vip_player_name.."】 #COLORCOLOR_YELLOW#上线了！"
			lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		end
	end
	
	lualib:AddTimerEx(player, 116, 900000, -1, "fangchenmi", "")
	
    --调用师徒登录触发
    process_master_apprentice_login(player)
	lualib:AddTrigger(player,lua_trigger_add_exp,"add_exp") --每次增加经验时候调用，vip经验继承中的需要

]]--
	--上线挂载天山雪莲BUFF
	--if lualib:GetInt( player , "天山雪莲上限" ) > 0 then
	--	lualib:AddTrigger( player , lua_trigger_add_buff , "on_add_buff" )
		--lualib:AddTrigger( player , lua_trigger_remove_buff , "on_remove_buff" )
		--lualib:AddBuff( player , "天山雪莲显示" , 0 )
	--else
		--lualib:DelBuff( player , "天山雪莲显示" )
		--lualib:DelBuff( player , "天山雪莲恢复" )
	--end

	--辅助功能里的拾取功能初始化设置
	local PickUp = lualib:GetStr(player,"PickUp")
	if PickUp == "" or PickUp == nil then 
		local PickUp_tab = {["PickMedicines"]=1,["PickGlod"]=1,["PickMaterial"]=1,["PickItem"]=1,["PickEquipped"]=1,["PickRedEquipped"]=1,["level"]=1}
		PickUp = json.encode(PickUp_tab)
	end	
    lualib:SetStr(player,"PickUp", PickUp)
	lualib:NotifyVar(player, "PickUp")

	--奖励大厅 设置上周的登录时间
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local strTime = lualib:Now() 
	local all_week = math.floor((lualib:Str2Time(strTime)-lualib:Str2Time(StartServerTime))/(60*60*24*7))	
	local last_week = lualib:GetInt(player,"week_num") 
	lualib:SetInt(player,"week_times",all_week )
	if all_week == last_week+1 and all_week ~= 1 then   
		local allweektime = lualib:GetInt(player,"online_times_week") 
		lualib:SetInt(player,"week_last",allweektime)

		lualib:SetInt(player,"online_times_week", 0)
	end 
	
	--如果是会长，则让客户端显示申请入会人员数量
	if lualib:GuildGuid(player) ~= "" then
		if lualib:Player_IsGuildLeader(player) then	
			lualib:ShowFormWithContent(player, "脚本表单",[[GameMainBar.ApplyFamily()]])
		end
	end
	
	lualib:SetInt(player,"autoattack", 0)
	lualib:SetInt(player,"autorun", 0)
	
	
	-- 神炉里有可升级的装备
	local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
	local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
	local count = 0
	local varRequireTb = {
						["xuefu_chip"]= {200,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,99999999},
						["hudun_chip"]= {100,100,200,350,550,800,1100,1450,1850,2300,99999999},
						["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,99999999},
						["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,99999999},
					}
	for i = 1, 4 do
		if lualib:GetInt(player, varTb[i]) > varRequireTb[varTb[i]][lualib:GetInt(player, equipLvTb[i])+1] then
			count = count + 1
		end
		if i == 4 then 
			lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.SlNum("..count..")")
		end
	end
	
	--小于80级提示玩家召唤战神
	local playerLevel = lualib:Level(player)
	local x_offset = -68

	--[[local _days = lualib:GetInt(player,"login_days")
	if playerLevel < 80 and playerLevel >= 55 and _days <= 2 then
		local heros = lualib:GetPlayerCurrentHeroList(player)
		if #heros == 0 then
			lualib:ShowFormWithContent(player, "form文件表单", "GuideDlg_mars#"..x_offset)
		end
	end--]]
		--52-54 提示战神功能 开放
	if playerLevel <= 54 and playerLevel >= 52 then
		lualib:ShowFormWithContent(player, "form文件表单","Mars_tip")
	end 
	if playerLevel >= 57 and playerLevel < 60  then 
		lualib:ShowFormWithContent(player, "form文件表单","Boss_tip")
	end
	local reinLevel = lualib:GetInt(player, "reinLevel")
	--lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.JudgeLv("..playerLevel..","..reinLevel..")") --GameMainBar功能开关
	local viplv = lualib:GetVipLevel(player)
	--lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.ShowVip("..viplv..");") --GameMainBar功能开关
	if lualib:GetBagFree(player) <= 0 then
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.PackageIsFull()")
	end
	local ActivityVar = lualib:GetDBNum("ActivityUnderway")          --当前存在进行中的活动 按钮闪烁
	if ActivityVar > 0 then
		local str = lualib:GetDBStr("nowActivityName")
		str = serialize(str)																  
		lualib:ShowFormWithContent(player,"脚本表单","LittleMap.AddActivityMagic();LittleMap.ShowActivitySchedule("..str..");" )
	end
	lualib:ShowFormWithContent(player,"脚本表单","TaskWindow.AddExtraFun("..playerLevel..");") --LittleMap Function （Recycle、....）
	------------------------------------每日变量清零start---------------------------
	if lualib:GetDayInt(player, "isResetVar") == 0 then
		for i=5,10 do 
			local int = lualib:GetDayInt(player, "qianwang".. i)  
			lualib:SetInt(player, "qianwang".. i,int)
			lualib:NotifyVar(player, "qianwang"..i)
		end
		
		local dayIntNameTb = {"62级经验副本","63级羽毛副本","64级盾牌副本","65级经验副本","65级宝珠副本","67级宝石副本"}
		if lualib:GetDayInt(player, "dailyFbDayFlag") == 0 then
			for i = 1, #dayIntNameTb do
				lualib:SetInt(player, dayIntNameTb[i], 0)
				lualib:NotifyVar(player, dayIntNameTb[i])
			end
			lualib:SetDayInt(player, "dailyFbDayFlag", 1)
		end	
		lualib:SetInt(player, "fengmo_count", 0)
		if lualib:GetDayInt(player,"resetDayNum") == 0 then  --每日重置任务次数
			local vl = lualib:GetVipLevel(player)
			if vl < 3 then
				lualib:SetInt(player,"cmDayNum",12)
			elseif vl >= 3 and vl < 6 then
				lualib:SetInt(player,"cmDayNum",14)
			else
				lualib:SetInt(player,"cmDayNum",16)
			end
			lualib:NotifyVar(player, "cmDayNum")
			lualib:SetDayInt(player,"resetDayNum",1)
		end
		local id = tostring(lualib:Player_GetAccountID(player))
		lualib:SetDBNum("dailyConsume_reward"..id, 0)
		lualib:SetDayInt(player, "isResetVar", 1)
	end
	-----------------------------------每日变量清零end------------------------------------
	if lualib:GetTotalBill(player) ~= 0 then
		vip_set(player)
	end
	-----------------------------获取日常任务的变量值通知客户端start--------------------------------------
	for i = 5, 10 do
		lualib:NotifyVar(player, "qianwang"..i)
	end
	local dayIntNameTb = {"62级经验副本","63级羽毛副本","64级盾牌副本","65级经验副本","65级宝珠副本","67级宝石副本"}
	for i = 1, #dayIntNameTb do
		lualib:NotifyVar(player, dayIntNameTb[i])
	end
	lualib:NotifyVar(player, "cmDayNum")
	lualib:NotifyVar(player, "fengmo_count")
	-----------------------------获取日常任务的变量值通知客户端end-----------------------------------------
	
	chongzhi_talk_jt_ex(player)
	if playerLevel >= 60  then 
		if lualib:GetDayInt(player,"sign_today") == 0 then
			lualib:DelayCall(player, 8000, "DelayCall_OpenRewardHall", "")
		end
	end
	login_levelUp(player,level)
	
	--攻城特效
	local ServerTime = lualib:QueryCastleStart("神歌城")+1
	ServerTime =lualib:Time2Str("%Y-%m-%d",ServerTime)
	local strdTime = lualib:Now()
	local strTime = lualib:Str2Time(strdTime)  
	strTime =lualib:Time2Str("%Y-%m-%d",strTime)
	if strTime == ServerTime then
		lualib:SetDBNum("wasActivityUnderway", 1)
		--lualib:SetDBNum("ActivityUnderway", 1)		
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
	else
		lualib:SetDBNum("wasActivityUnderway", 0)	
		--lualib:SetDBNum("ActivityUnderway", 0)			
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
	end
	--攻城特效end
	
	----------开服豪礼活动购买了基金的玩家--发送邮件提醒----------
	local hasPlayerBought = lualib:GetInt(player, "hasBoughtGrowthFund")
	if hasPlayerBought == 1 then 
		local startServerTime = lualib:GetConstVar("StartServerTime")
		local startServerTime_int = lualib:Str2Time(startServerTime)  --开服时间（秒）
		local activityEndTime_int = startServerTime_int + 3*24*60*60
		local nowTime_int = lualib:GetAllTime()
		if nowTime_int < activityEndTime_int then 
			local bool = lualib:GetDayInt(player, "IsFundMailToPlayer")
			if bool == 0 then 
				local deadline_str = lualib:Time2Str("%Y-%m-%d %H:%M", activityEndTime_int)
				lualib:MailToPlayer("成长基金", player, "成长基金活动将在"..deadline_str.."结束，活动结束后将无法领取奖励，加油升级～", 0, 0, {})
				lualib:SetDayInt(player, "IsFundMailToPlayer", 1)
			end
		end
	end
end

function IsDuringEscorter(player)
	if not lualib:IsEscorterDied(player) then
		--lualib:SysPromptMsg(player, "IsEscorterDied");
        local escorter = lualib:GetEscorter(player)
		if escorter ~= "" then 
			--lualib:SysPromptMsg(player, "escorter");
			local AwardList =
			{
				{
					--经验, 	 绑金, 	 	功勋
					{357500,   	 500000,    3000},--一级镖车
					{572000,   	 800000,    4800},--二级镖车
					{893750,   	 1250000,   7500},--三级镖车
					{1287000,  	 1800000,   10800},--四级镖车
					{1787500,    2500000,   15000},--五级镖车
				},
				{250000, 	 400000, 	600000, 	900000, 	1250000},--押金
				{500000, 	 800000, 	1250000, 	1800000, 	2500000},--劫镖奖励(绑金)
			}
			local count = lualib:GetInt(escorter, "count");
			local remain = 600 - count;
			--lualib:SysPromptMsg(player, "remain="..remain);
			if remain > 0 then
				local DATA = {}
				DATA[1] = 4;  --打开客户端面板4
				
				--是否是活动期间双倍奖励
				local IsInCampaign = lualib:GetInt("", "押镖玩法开启");

				DATA[2] = IsInCampaign;
				
				local EscorterLevel = lualib:GetDayInt(player, "EscorterLevel"); 
				local index = EscorterLevel + 1;
				local AWARD = AwardList[1][index];
				DATA[3] = AWARD;
				DATA[4] = index;
				DATA[5] = remain; --倒计时
				lualib:ShowFormWithContent(player, "form文件表单", "EscorterNPC#".. serialize(DATA))
				lualib:ShowFormWithContent(player,"脚本表单","EscorterNPC:ChangeWnd()")
			end
		end
	end
end

function DelayCall_OpenRewardHall(player)
	lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenRewardHall()")
end

function login_levelUp(player,level)
	
	AddKaiFuMagicOnLevelUp(player)  --新开服活动是否加特效
	if lualib:GetInt(player,"可以挖矿") ==1 then 
		local num1 = 2 - lualib:GetDayInt(player,"挖矿次数")
		if level >= 65 then
			if num1>0 then
				if not lualib:HasQuest(player, 800) then
					if not lualib:HasQuest(player, 810) then
						lualib:AcceptQuest(player, 810)
					end
				end
			end
		end
	end
end

--[[function fangchenmi(player)

	local msg = ""
	local AntiIndulge = lualib:Player_GetAntiIndulge(player)
	
	if AntiIndulge == 2 then
		return 
	elseif AntiIndulge == 1 then
		msg = "你当前已经进入防沉迷状态，你的经验收益减半，请尽快将进行防沉迷验证！\n"
		msg = msg.."<@InfoIndulge *01*防沉迷>\n"
		msg = msg.."<@VerifyIndulge *01*防沉迷验证>\n"
		lualib:NPCTalk(player, msg)
	elseif AntiIndulge == 0 then
		msg = "你当前已经进入防沉迷状态，无经验收益，请尽快将进行防沉迷验证！"
		msg = msg.."<@InfoIndulge *01*防沉迷>\n"
		msg = msg.."<@VerifyIndulge *01*防沉迷验证>\n"
		lualib:NPCTalk(player, msg)
	end

end

function InfoIndulge(player)
    lualib:ShowForm(player, "防沉迷表单")
    return ""
end

function VerifyIndulge(player)
	local userid = lualib:Player_GetAccountID(player)
	local times = lualib:GetAllTime()
	lualib:SysMsg_SendWebMsg(player, "防沉迷验证", "http://www.hzyotoy.com/index.do?mod=account&act=info&sign=<SIGNSTR>&ct="..times.."", "")
	return ""
end--]]


------------------------------------获得经验时触发------------------------------------
function add_exp(player,exp)
	lualib:SetInt(player,"vip20_jinriexp",lualib:GetInt(player,"vip20_jinriexp")+exp)
end

--[[function notify_spouse(player)
    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")

    if lualib:Player_GetIntProp(player,  lua_role_gender) ==  lua_gender_male then
        lualib:SysPromptMsg(spouse, "你的丈夫上线了。")
    else
        lualib:SysPromptMsg(spouse, "你的妻子上线了。")
    end

end--]]

function on_pre_player_die(player, killer)
	if not lualib:Player_IsPlayer(player) then  
		
		return true
	else
		local name = lualib:Name(killer)
		--lualib:SysPromptMsg(player, name)
		lualib:ShowFormWithContent(player, "脚本表单", "CL:LogicAddToBlackList(\""..name.."\")")
		return true
	end
end

function on_login_delay_timer(player, timer_id)
	if lualib:Player_IsGM(player) then
        lualib:Player_SetGhost(player, true)
        lualib:SysMsg_SendWarnMsg(player, "你已进入隐身状态！")
        lualib:Player_SetInvincible(player, true)
        lualib:SysMsg_SendWarnMsg(player, "你已进入无敌状态！")
    end
	--离线时间记录
	local curTime = lualib:GetAllTime()
	local logout_time = lualib:LastLogoutTime(player)
	local logout_timer = curTime - logout_time
	local hour_now = math.floor(logout_timer / 3600)
	local hour = lualib:GetInt(player,"logout_hour")
	if hour > 72 then
		hour = 0
	end	
	if hour_now > 72 then
		hour_now = 72
	end	
	if hour_now > hour then
		lualib:SetInt(player,"logout_hour",hour_now) 
	end	
	
	
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)

	if seconds < 3600 then
	--lualib:SysMsg_SendWarnMsg(player, "欢迎您！您可以右键点击背包中的【天书】查看游戏指南，或点击右上角图标【攻略】，再或者访问http://www.shentu5.com/s4/")
		return
	end

	--lualib:SysMsg_SendWarnMsg(player, "欢迎您！您可以右键点击背包中的【天书】查看游戏指南，或点击右上角图标【攻略】，再或者访问http://www.shentu5.com/s4/")
	--[[notify_spouse(player)--]]
end

function on_logout(player)
	--页游在线礼包，当天在线时间统计
	local day_time = lualib:GetDayInt(player,"online_times")
	local this_time = lualib:OnlineTimeEx(player)
	lualib:SetDayInt(player,"online_times",day_time + this_time)
	local this = lualib:GetInt(player,"蜈蚣洞副本")+1
	lualib:SetInt(player,"蜈蚣洞副本",this)
	local npc_guid_cangku = lualib:Player_GetCustomVarStr(player, "yang_cangkuguid_name")
	local npc_guid_shangdian = lualib:Player_GetCustomVarStr(player, "yang_shangdianguid_name")
	--奖励大厅 获取上周的记录上周的登录时间
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local strTime = lualib:Now()
	local all_week = math.floor((lualib:Str2Time(strTime)-lualib:Str2Time(StartServerTime))/(60*60*24*7))
	lualib:SetInt(player,"week_times",all_week )
	local last_week = lualib:GetInt(player,"week_num")    --取出上一次取数时的“周” 
	local allweektime = lualib:GetInt(player,"online_times_week")    
	if all_week == last_week+1 and all_week ~= 1 then 
		lualib:SetInt(player,"week_last",allweektime)
		lualib:SetInt(player,"online_times_week", this_time)
	else
		lualib:SetInt(player,"online_times_week",allweektime + this_time)
	end 
	lualib:SetInt(player,"week_num",all_week) 
	
	--判断角色是否接了一号任务并且一号任务是否是可接状态
	if lualib:HasQuest(player,1) == false and lualib:CanAcceptQuest(player,1) == true then
		lualib:ForceAcceptQuest(player, 1)
	end
	
    --调用师徒登出触发
--[[	
	process_master_apprentice_logout(player)
	if "" ~= npc_guid_cangku then
	lualib:Npc_Remove(npc_guid_cangku)
    end
	if "" ~= npc_guid_shangdian then
	lualib:Npc_Remove(npc_guid_shangdian)
    end
--]]
    --online_gift_logout(player)
    local heros = lualib:GetPlayerCurrentHeroList(player)   --玩家离线召回英雄
	if #heros ~= 0 then
		lualib:DestroyDummy(heros[1])
	end
	--统计战神召唤次数
	--[[local dayNum = lualib:GetDayInt(player, "daynum")   
	local a = 0
	if dayNum < 5 then
		local t1me = lualib:GetDayInt(player,"online_times") + lualib:OnlineTime(player) - 60*30*(dayNum-1)
		a = math.floor(t1me/(60*30))
		if a > 1 then
			local cishu = lualib:GetInt(player,"callnumber")
			if (a+dayNum-1) <= 4 then
				lualib:SetInt(player,"callnumber",cishu+a)
				lualib:SetDayInt(player,"daynum",dayNum + a)
			else
				lualib:SetInt(player,"callnumber",cishu+5-dayNum)
				lualib:SetDayInt(player,"daynum",5)
			end
		end
	end--]]
	lualib:SetInt(player,"personBosssDayF",0)   --个人boss二级弹框变量
end


function on_timer_ysax_dgwf_call_back_func(guid, timer_id)
    if timer_id ==  lua_ysax_dgwf_timer then
        GenMonster_ysax_dgwf()
    end
end


function on_post_monster_die(monster, killer)
	
	local mName = lualib:KeyName(monster)
	local mt1_type = lualib:Monster_Type(mName)
	if mt1_type == 4 then
		local player = ""
		if lualib:Player_IsPlayer(killer) then  
			player = killer
		elseif lualib:Player_IsPlayer(lualib:GetHeroLord(killer)) then  
			player = lualib:GetHeroLord(killer)
		elseif lualib:Player_IsPlayer(lualib:Name2Guid(lualib:Monster_GetMaster(killer))) then  
			player = lualib:Name2Guid(lualib:Monster_GetMaster(killer))
		end
		if player ~= "" then 
			local  boss_points = tonumber(lualib:GetInt(player,"boss_points"))
			local plevel = lualib:Level(monster)
			boss_points =boss_points+plevel
			lualib:SetInt(player,"boss_points",boss_points)
			openChallengeBoss_magic(player)
		end
	end
	
	if lualib:Player_IsPlayer(killer) then
		lualib:SetInt(killer, "kill_monster", lualib:GetInt(killer, "kill_monster") + 1);
		
	--[[	--图鉴所需新加Start
		local handBookTb = lualib:GetStr(killer, "player_monsterBook")
		if handBookTb == "" then
			handBookTb = {}
			handBookTb[1] = mName
		else
			handBookTb = json.decode(handBookTb)
			for i = 1, #handBookTb do
				if handBookTb[i] == mName then return "" end
			end
			table.insert(handBookTb, mName)
		end
		lualib:SetStr(killer, "player_monsterBook", json.encode(handBookTb))
		--图鉴End--]]
		
	else
		local player = lualib:GetHeroLord(killer)
		if player ~= "" and player ~= nil then
			lualib:SetInt(player, "kill_monster", lualib:GetInt(player, "kill_monster") + 1);
		else
			local name = lualib:Monster_GetMaster(killer)
			if name ~= "" then 
				player = lualib:Name2Guid(name)
				lualib:SetInt(player, "kill_monster", lualib:GetInt(player, "kill_monster") + 1);
			end
		end
	end
	-----------------每日活跃度BOSS击杀统计-----------------------
	if 4 == lualib:Monster_Type(lualib:KeyName(monster)) then
		local targetNumber = 3
		local gainActDgr = 10
		local player = killer
		if not lualib:Player_IsPlayer(player) then
			player = lualib:GetHeroLord(killer)
			if not lualib:Player_IsPlayer(player) then
				player = lualib:Name2Guid(lualib:Monster_GetMaster(killer))
			end
		end
		local count = lualib:GetDayInt(player, "activityDgr_BOSS") + 1
		if targetNumber > count then
			lualib:SetDayInt(player, "activityDgr_BOSS", count)
		elseif targetNumber == count then
			lualib:SetDayInt(player, "activityDgr_BOSS", targetNumber)
			lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + gainActDgr )
			ActivityDegree_setFlag(player)
		end
	end
	-----------------每日活跃度BOSS击杀统计END--------------------
	
end	



function GenMonster_ysax_dgwf()
    --判断有几张地图在本GS上
--[[
    local map_table = {{"将军冢1", 0, 181, 59,  "寻宝小妖1"},
                       {"废弃矿洞2", 0, 156, 274, "寻宝小妖2"},
                       {"妖山暗穴1", 0, 280, 184,  "寻宝小妖3"},
                       {"天荒阵1", 0, 279, 240, "寻宝小妖4"},
                       {"邪庙4", 0, 350, 161, "寻宝小妖5"}}
    local map_count = 0
    for i = 1, table.getn(map_table) do
        if lualib:Map_IsInGS(map_table[i][1]) == true then
            map_count = map_count + 1
            map_table[i][2] = map_count
        end
    end
]]--

    if map_count == 0 then return "" end

    --从存在于本GS的地图中随机选一张
    lualib:GenRandom(1, map_count)
    local cur_map_index = lualib:GenRandom(1, map_count)
    local cur_map_keyname = ""
    for i = 1, table.getn(map_table) do
        if map_table[i][2] == cur_map_index then
            cur_map_keyname = map_table[i][1]
            cur_map_index = i
            break
        end
    end

    if cur_map_keyname == "" then return "" end

    --在随机到的地图上刷怪
    local map = lualib:Map_GetMapGuid(cur_map_keyname)
    if map == "" then return "" end

    local monster = lualib:Map_GenSingleMonster(map, map_table[cur_map_index][3],map_table[cur_map_index][4], 16, 3,map_table[cur_map_index][5], true)
    if monster == "" then return "" end
    lualib:Print(cur_map_keyname.."："..map_table[cur_map_index][5].."生成成功！坐标：["..map_table[cur_map_index][3].."，"..map_table[cur_map_index][4].."]。")
    return ""
end


function on_gp(player, gp_runtime, gp, diff_avg_tick)
    local content = "请爱护游戏环境！["..lualib:Name(player).."] 使用外挂，已被系统记录在案。"
    --lualib:SysMsg_SendWarnMsg(player, content)
    --lualib:SetFbdLogin(lualib:Name(player), 2, 600, content)
    --lualib:Player_Kick(player)
end

--[[function shijie_boss(guid, timer_id)
	
	local a = lualib:GenRandom(1, #map_name_table)
	local b = lualib:GenRandom(1, #map_name_table)
	local g = lualib:GenRandom(1, #map_name_table)
	local mon_name = "天魔神幻像"
	local map_name = "龙城"
	local map_guid =  lualib:Map_GetMapGuid(map_name)
	local map_time_zdy = lualib:Map_GetCustomVarInt(map_guid, "map_time_zdy")
	local npc_time_zdy = lualib:Map_GetCustomVarInt(map_guid, "npc_time_zdy")

	local mon_ma_name1 = "汗血野马"
	local mon_ma_name2 = "稀有坐骑"
	local map_time_ma_zdy = lualib:Map_GetCustomVarInt(map_guid, "map_time_ma_zdy")
	local quxiao_duyu_jc = lualib:Map_GetCustomVarInt(map_guid, "quxiao_duyu_jc")

	--local npc_guid = lualib:Map_GenNpc(map, "随身仓库服务员", player_x, player_y, 1, 3)

	map_time_zdy = map_time_zdy + 60
	lualib:Map_SetCustomVarInt(map_guid, "map_time_zdy", map_time_zdy)

	map_time_ma_zdy = map_time_ma_zdy + 60
	lualib:Map_SetCustomVarInt(map_guid, "map_time_ma_zdy", map_time_ma_zdy)

	npc_time_zdy = npc_time_zdy + 60
	lualib:Map_SetCustomVarInt(map_guid, "npc_time_zdy", npc_time_zdy)

	for q, r in pairs(npc_timer_table) do
		if npc_time_zdy == r[1] then
			lualib:SysMsg_SendBroadcastColor("紫气东来，神秘商人将在"..r[2].."后降临天藏大陆。", "", 1, 12)
		end
	end

	if npc_time_zdy > 3593 then
		for n, m in pairs(map_name_table) do
			if a == n then
				local map = lualib:Map_GetMapGuid(m[1])
				local map_xy_table = lualib:MapRndPos(m[1])
				local map_x = map_xy_table["x"]
				local map_y = map_xy_table["y"]
				local npc_guid = lualib:Map_GenNpc(map, "神秘商人", map_x, map_y, 1, 3)
				lualib:SysMsg_SendBroadcastColor("紫气东来，神秘商人降临天藏大陆，有缘邂逅者可购买大量超值仙界至宝，神秘商人现在在【"..m[2].."】等待有缘人！。", "", 1, 12)
				lualib:Map_SetCustomVarInt(map_guid, "npc_time_zdy", 0)
			end
		end
	end

	if quxiao_duyu_jc == 0 then
		for i, p in pairs(timer_table) do
			if map_time_zdy == p[1] then
				lualib:SysMsg_SendBroadcastColor("世界BOSS["..mon_name.."]将在"..p[2].."后降临天藏大陆，想挑战的勇士请做好准备。", "", 1, 12)
			end
		end

		if map_time_zdy == 10800 then
			for k, v in pairs(map_name_table) do
				if b == k then
					local map = lualib:Map_GetMapGuid(v[1])
					local map_xy_table = lualib:MapRndPos(v[1])
					local map_x = map_xy_table["x"]
					local map_y = map_xy_table["y"]
					lualib:Map_GenSingleMonster(map, map_x, map_y, 1, 1, mon_name, false)
					lualib:SysMsg_SendBroadcastColor("世界BOSS["..mon_name.."]出现在地图"..v[2].."，想挑战的勇士请迅速前往击杀。", "", 1, 12)
					lualib:Map_SetCustomVarInt(map_guid, "quxiao_duyu_jc", 1)
				end
			end
		end
	end

	for c, d in pairs(ma_timer_table) do
		if map_time_ma_zdy == d[1] then
			lualib:SysMsg_SendBroadcastColor("珍贵的稀有坐骑将在"..d[2].."分钟后降临天藏大陆，只有一只哦！这可是捕捉它的好时机哦。", "", 1, 12)
		end
	end

	if map_time_ma_zdy > 27898 then	--7.75小时
		for e, f in pairs(map_name_table) do
			if g == e then
				local map = lualib:Map_GetMapGuid(f[1])
				lualib:Map_BatchGenMonster(map, mon_ma_name1, 0, false)
				lualib:Map_BatchGenMonster(map, mon_ma_name2, 1, false)
				lualib:SysMsg_SendBroadcastColor("珍贵的稀有坐骑出现在天藏大陆的【"..f[2].."】，只有一只哦！想要捕捉它的英雄抓紧时间了。", "", 1, 12)
				lualib:Map_SetCustomVarInt(map_guid, "map_time_ma_zdy", 0)
			end
		end
	end
	
end--]]


function on_add_exp(player, exp)
    process_item_add_exp(player, tonumber(exp))
    process_horse_add_exp(player, tonumber(exp))
end

function check_player_login(player)
	--lualib:SysPromptMsg(player, "player first login")
    local last_login_day = lualib:Player_GetCustomVarInt(player, "last_login_day")

    local now = lualib:GetAllDays(0)

    local off_day = now - last_login_day

    if off_day >= 1 then
  
        --登录，累加
        local cur_days = lualib:Player_GetCustomVarInt(player, "login_days")
        lualib:Player_SetCustomVarInt(player, "login_days", cur_days + 1)
    end
	
    lualib:Player_SetCustomVarInt(player, "last_login_day", now)
	lualib:OnGloryTrigger(player, lua_glory_trigger_Login, "", 0, "", "")

	lualib:AddTimer(player, 0, 60000, -1, "CheckOnlineTimer")

	local player_guild = lualib:GuildGuid(player)

	if player_guild ~= "0" and player_guild ~= "" then--角色上线时判断是否有行会
		lualib:OnGloryTrigger(player, lua_glory_trigger_join_family, "", 0, "", "")
		--lualib:Print("玩家的行会"..player_guild.."")
	end
	-----根据玩家登录天数创建英雄
	local heroTB = {"天威神将", "圣威神将", "怒威神将", "傲啸神将"}
	local loginDaynum = lualib:GetInt(player,"login_days")
	local player_Name = lualib:Name(player)
	
	------登录天数达到要求创建英雄
	if lualib:GetDayInt(player,"is_Created") == 0 then           
		if loginDaynum <=3 or loginDaynum == 5 then
			if loginDaynum == 5 then
				loginDaynum = 4
			end
			if lualib:CreateHeroForPlayer(player,heroTB[loginDaynum].."（"..player_Name.."）",1,1, "","") then
				--lualib:SysPromptMsg(player, "create?????")
				lualib:SetInt(player,"viaVipLv_CreateHero"..loginDaynum,1)
			end
		end
		lualib:SetDayInt(player,"is_Created",1)
	end
	-----vip等级达到要求创建英雄
	createHeroViaVipLv(player)
end

function createHeroViaVipLv(player)
	-----vip等级达到要求创建英雄
	local player_Name = lualib:Name(player)
	local heroTB = {
				{"天威神将","天武战刃","天武战甲","天武头盔","天武手镯","天武项链"},
				{"圣威神将","圣武战刃","圣武战甲","圣武头盔","圣武手镯","圣武项链"},
				{"怒威神将","威武战刃","威武战甲","威武头盔","威武手镯","威武项链"},
				{"傲啸神将","洪武行天战刃","洪武行天战甲","洪武行天头盔","洪武行天手镯","洪武行天项链"}
					}
	local vipLevel = lualib:GetVipLevel(player)
	if lualib:GetInt(player,"viaVipLv_CreateHero2") == 0 then
		if vipLevel >= 1 then
			if lualib:CreateHeroForPlayer(player,heroTB[2][1].."（"..player_Name.."）",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero2",1)
			end
		end
	end	
	if lualib:GetInt(player,"viaVipLv_CreateHero3") == 0 then
		if vipLevel >= 2 then
			if lualib:CreateHeroForPlayer(player,heroTB[3][1].."（"..player_Name.."）",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero3",1)
			end
		end
	end
	if lualib:GetInt(player,"viaVipLv_CreateHero4") == 0 then
		if vipLevel >= 3 then
			if lualib:CreateHeroForPlayer(player,heroTB[4][1].."（"..player_Name.."）",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero4",1)
			end
		end
	end
end

function CheckOnlineTimer(player, timer_id)
    lualib:OnGloryTrigger(player, lua_glory_trigger_OnlineTime, "", 0, "", "")
end


--[[function chuandaiqian(player, item, item_id, item_keyname)
	if lualib:Item_GetSubType(player, item) == 10 then
		if item_keyname == "国庆特别徽章" then
			lualib:AddBuff(player, "中秋", 0)
		elseif item_keyname == "建国荣誉徽章" then
			lualib:AddBuff(player, "国庆", 0)
		end
	else
		return
	end
end--]]

--[[function tuozhuangbei(player, item, item_id, item_keyname)
	if lualib:Item_GetSubType(player, item) == 10 then
		if item_keyname == "国庆特别徽章" then
			lualib:DelBuff(player, "中秋")
		elseif item_keyname == "建国荣誉徽章" then
			lualib:DelBuff(player, "国庆")
		end
	end
	
	--同心勋章
	local xz_table = {"同心勋章一级", "同心勋章二级", "同心勋章三级", "同心勋章四级", "同心勋章五级", "同心勋章六级" }
	for i = 1, #xz_table do
		if item_keyname == xz_table[i] then
			lualib:DelBuff(player, "同心连理")
			break
		end
	end
	return
end
--]]

function starWarTime(guid, id, times)
    local familys = lualib:GetAllFamilys()
    local familys_str = ""
    for _, v in pairs(familys) do
        familys_str = familys_str..v.."&"
    end
    
    if not lualib:StartCastleWar("神歌城", familys_str, times, 7200) == false then
        return false
    end
end

--------------杀人回调------------------
function on_trigger_kill(killer, victim)
	victim_name = lualib:KeyName(victim)
	local kill_ren_name = lualib:Name(killer)
	local victim_ren_name = lualib:Name(victim)
	
	if lualib:Player_IsPlayer(victim) == true	then
		victim_family_name = lualib:GetFamilyName(victim)
	end
	
	if 	victim_family_name ~= "" then
		if lualib:Player_IsPlayer(victim) == true then
			local killnotice = "号外！#COLORCOLOR_BROWN#["..kill_ren_name.."]#COLORCOLOR_YELLOW#轻松将→→#COLORCOLOR_BROWN#『"..victim_family_name.."』#COLORCOLOR_YELLOW#行会的#COLORCOLOR_BROWN#["..victim_ren_name.."]#COLORCOLOR_YELLOW#撂倒在脚下！"
			local killnotice1 = "号外！#COLORCOLOR_BROWN#["..kill_ren_name.."]#COLORCOLOR_YELLOW#轻松将→→#COLORCOLOR_BROWN#『"..victim_family_name.."』#COLORCOLOR_YELLOW#行会的#COLORCOLOR_BROWN#["..victim_ren_name.."]#COLORCOLOR_YELLOW#撂倒在脚下"
			--lualib:SysMsg_SendCenterMsg(1, killnotice, "")
			lualib:SysMsg_SendBroadcastColor(killnotice1, "", 1, 0)
		end
	else
		if lualib:Player_IsPlayer(victim) == true then
			local killnotice = "号外！#COLORCOLOR_BROWN#["..kill_ren_name.."]#COLORCOLOR_YELLOW#轻松将→→#COLORCOLOR_BROWN#["..victim_ren_name.."]#COLORCOLOR_YELLOW#撂倒在脚下！"
			local killnotice1 = "号外！#COLORCOLOR_BROWN#["..kill_ren_name.."]#COLORCOLOR_YELLOW#轻松将→→#COLORCOLOR_BROWN#["..victim_ren_name.."]#COLORCOLOR_YELLOW#撂倒在脚下"
			--lualib:SysMsg_SendCenterMsg(1, killnotice, "")
			lualib:SysMsg_SendBroadcastColor(killnotice1, "", 1, 0)
		end
	end
	
	------判断是否为是人物
	if lualib:Player_IsPlayer(killer) == true then
		shaguaichufa(killer,victim) --人物杀怪执行
	elseif lualib:Monster_IsMonster(killer) == true then
		local player_name = lualib:Monster_GetMaster(killer)
		if player_name ~= "" then
			local player_guild = lualib:Name2Guid(player_name)
			shaguaichufa(player_guild,victim) --宝宝杀怪执行
		end
	end
	
end


function shaguaichufa(killer,victim)
--[[
	local victim_name = lualib:KeyName(victim)
	local kill_ren_name = lualib:Name(killer)
	local victim_ren_name = lualib:Name(victim)
	
	if lualib:Monster_IsMonster(victim) and lualib:Monster_Type(victim_name) == 2 then
		--目标系统：猎杀1只精英怪
		if lualib:GetInt(killer,"mubiao_chumo_1") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 1 then
				lualib:SetInt(killer,"mubiao_chumo_1",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀1只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀1只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --除魔进度+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--目标系统：猎杀10只精英怪
		elseif lualib:GetInt(killer,"mubiao_chumo_2") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 10 then
				lualib:SetInt(killer,"mubiao_chumo_2",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀10只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀10只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --除魔进度+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--目标系统：猎杀100只精英怪
		elseif lualib:GetInt(killer,"mubiao_chumo_3") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 100 then
				lualib:SetInt(killer,"mubiao_chumo_3",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀100只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀100只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --除魔进度+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--目标系统：猎杀500只精英怪
		elseif lualib:GetInt(killer,"mubiao_chumo_4") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 500 then
				lualib:SetInt(killer,"mubiao_chumo_4",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀500只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀500只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --除魔进度+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--目标系统：猎杀1000只精英怪
		elseif lualib:GetInt(killer,"mubiao_chumo_5") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 1000 then
				lualib:SetInt(killer,"mubiao_chumo_5",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀1000只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀1000只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --除魔进度+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--目标系统：猎杀2000只精英怪
		elseif lualib:GetInt(killer,"mubiao_chumo_6") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 2000 then
				lualib:SetInt(killer,"mubiao_chumo_6",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀2000只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀2000只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --除魔进度+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--目标系统：猎杀5000只精英怪
		elseif lualib:GetInt(killer,"mubiao_chumo_7") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 5000 then
				lualib:SetInt(killer,"mubiao_chumo_7",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀5000只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀5000只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --除魔进度+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		--目标系统：猎杀10000只精英怪
		elseif lualib:GetInt(killer,"mubiao_chumo_8") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_chumo_shuliang") + 1
			
			if shuliang >= 10000 then
				lualib:SetInt(killer,"mubiao_chumo_8",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀10000只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀10000只精英怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_chumo",lualib:GetInt(killer,"mubiao_chumo")+1) --除魔进度+1
			end
			lualib:SetInt(killer,"mubiao_chumo_shuliang",shuliang)
		end
	end
	
	if lualib:Monster_IsMonster(victim) and lualib:Monster_Type(victim_name) == 4 then
		--目标系统：猎杀1只boss怪
		if lualib:GetInt(killer,"mubiao_boss_1") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 1 then
				lualib:SetInt(killer,"mubiao_boss_1",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀1只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀1只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss进度+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--目标系统：猎杀10只boss怪
		elseif lualib:GetInt(killer,"mubiao_boss_2") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 10 then
				lualib:SetInt(killer,"mubiao_boss_2",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀10只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀10只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss进度+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--目标系统：猎杀50只boss怪
		elseif lualib:GetInt(killer,"mubiao_boss_3") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 50 then
				lualib:SetInt(killer,"mubiao_boss_3",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀50只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀50只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss进度+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--目标系统：猎杀100只boss怪
		elseif lualib:GetInt(killer,"mubiao_boss_4") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 100 then
				lualib:SetInt(killer,"mubiao_boss_4",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀100只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀100只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss进度+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--目标系统：猎杀200只boss怪
		elseif lualib:GetInt(killer,"mubiao_boss_5") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 200 then
				lualib:SetInt(killer,"mubiao_boss_5",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀200只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀200只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss进度+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--目标系统：猎杀500只boss怪
		elseif lualib:GetInt(killer,"mubiao_boss_6") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 500 then
				lualib:SetInt(killer,"mubiao_boss_6",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀500只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀500只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss进度+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		--目标系统：猎杀1000只boss怪
		elseif lualib:GetInt(killer,"mubiao_boss_7") == 0 then
			local shuliang = lualib:GetInt(killer,"mubiao_boss_shuliang") + 1
			
			if shuliang >= 1000 then
				lualib:SetInt(killer,"mubiao_boss_7",1)
				lualib:SysMsg_SendBoardMsg(killer, "目标追求", "”猎杀1000只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
				lualib:SysMsg_SendWarnMsg(killer,"“猎杀1000只boss怪“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
				lualib:SetInt(killer,"mubiao_boss",lualib:GetInt(killer,"mubiao_boss")+1) --boss进度+1
			end
			lualib:SetInt(killer,"mubiao_boss_shuliang",shuliang)
		end
	end
]]--
end



--骑马和下马

-- 上马判断

 --[[function on_ride_request(player)
	local buff_table = {"白茅人变身卡", "木器人变身卡", "花蜘蛛变身卡", "顽猴变身卡", "蛟人变身卡", "铁齿战将变身卡", "飞芒变身卡", "邪魔人偶变身卡", "树妖变身卡", "噬灵妖花变身卡", "妖面监工变身卡", "鬼面监工变身卡", "妖刀侍卫变身卡", "赤面猴变身卡", "绝道白猿变身卡", "巨蛾变身卡", "野狼变身卡", "神兽变身卡", "红面牛魔变身卡", "牛魔将军变身卡", "巨蛇变身卡", "黑水蛇变身卡", "白狼变身卡", "刀奴变身卡", "散兵变身卡", "沙石魔变身卡", "风魔变身卡", "夜行僧变身卡", "黑暗刺客变身卡", "梵天僧变身卡", "天原死士变身卡", "血禅师变身卡", "骷髅王变身卡", "飞刀骷髅变身卡", "骷髅战将变身卡", "尸奴工头变身卡", "僵尸变身卡", "雷暴僵尸变身卡", "墓地蛆虫变身卡", "幽冥尸王变身卡", "鹿变身卡", "千年树魔变身卡", "白茅怪人变身卡", "白茅邪人变身卡", "毒蜘蛛变身卡", "天狼蜘蛛变身卡", "泼猴变身卡", "凶暴猿猴变身卡", "猿猴变身卡", "飞蛾变身卡", "毒蛾变身卡", "苍狼变身卡", "青蛇变身卡", "红蛇变身卡", "白蛇变身卡", "蟒蛇变身卡", "蛇蛟变身卡", "古怪刀客变身卡", "鬼面刀手变身卡", "双刀侩子手变身卡", "魔兵变身卡", "蓝兽变身卡", "妖僧变身卡", "鬼面武者变身卡", "影刺变身卡", "骷髅战士变身卡", "单刀骷髅变身卡", "大斧骷髅变身卡", "飞萤变身卡", "魔萤变身卡", "邪翅变身卡", "食人花变身卡", "天原勇士变身卡", "天原猛士变身卡", "黑面牛魔变身卡", "牛魔勇士变身卡", "牛魔守卫变身卡", "爬尸变身卡", "尸卫变身卡", "腐尸变身卡", "掘铲尸奴变身卡", "铁镐尸奴变身卡", "尸奴变身卡", "骷髅宝宝变身卡", "老母猪变身卡", "小猪变身卡", "羊变身卡", "牛变身卡", "鸡变身卡", "饿鬼蛛变身卡", "剧毒蛛变身卡", "魔蛇变身卡", "魔狼变身卡", "魔猿变身卡", "巨石傀儡变身卡", "牛魔侍卫变身卡", "魔化蜥蜴变身卡", "魔化蝎子变身卡", "魔化沙虫变身卡", "天魔妖蟒变身卡", "恶战天魔变身卡", "天魔奴仆变身卡", "夜灵变身卡", "天魔统领变身卡", "天魔守卫变身卡", "天魔妖道变身卡", "天魔先锋变身卡", "天魔神变身卡", "深海巨螯怪变身卡", "石甲鱼变身卡", "秘境海妖变身卡", "巨钳蟹变身卡", "海魔侍从变身卡", "海魔护卫变身卡", "秘境歌妖变身卡", "铁棘鱼变身卡", "铁螯怪变身卡", "巨人药剂", "武斗场麻布衣男", "武斗场麻布衣女", "武斗场轻型战衣男", "武斗场轻型战衣女", "武斗场元灵铠甲男", "武斗场元灵铠甲女", "武斗场轻便铠甲男", "武斗场轻便铠甲女", "武斗场黄金铠甲男", "武斗场黄金铠甲女", "武斗场赤峰战甲男", "武斗场赤峰战甲女", "武斗场百裂战甲男", "武斗场百裂战甲女", "武斗场熔岩战甲男", "武斗场熔岩战甲女", "武斗场龙鳞战甲男", "武斗场龙鳞战甲女", "武斗场见习法师袍男", "武斗场见习法师袍女", "武斗场紫绸长袍男", "武斗场紫绸长袍女", "武斗场魔力法袍男", "武斗场魔力法袍女", "武斗场阎罗长袍男", "武斗场阎罗长袍女", "武斗场圣灵法衣男", "武斗场圣灵法衣女", "武斗场火麟法袍男", "武斗场火麟法袍女", "武斗场璃梦法袍男", "武斗场璃梦法袍女", "武斗场乾坤道衣男", "武斗场乾坤道衣女", "武斗场天心道衣男", "武斗场天心道衣女", "武斗场降魔道衣男", "武斗场降魔道衣女", "武斗场光明道袍男", "武斗场光明道袍女", "武斗场太玄道袍男", "武斗场太玄道袍女", "武斗场玄清道衣男", "武斗场玄清道衣女", "武斗场天鼎道袍男", "武斗场天鼎道袍女", "武斗场变身", "缩小药剂", "变身2", "变猪术", "变怪显名"}
	local hashorse = lualib:Attr(player, 200)
	
	if hashorse == 1 then
		lualib:MsgBox(player, "你已经处于骑乘状态了！")
		return
	end
	--拥有变身BUFF无法骑马
	for i = 1, #buff_table do
		if lualib:HasBuff(player, buff_table[i]) == true then
			lualib:MsgBox(player, "变身状态无法骑马，请右键点击BUFF图标取消BUFF后再进行尝试")
			return
		end
	end
	--上马读条
	lualib:ProgressBarStart(player, 1000, "上马中", "on_Horse_true", "on_Horse_false", "")	
end

--上马
function on_Horse_true(player)
	lualib:Ride(player)
	return true
end

--上马被打断
function on_Horse_false(player)
	lualib:SysMsg_SendTriggerMsg(player, "上马被打断")
	return true
end


-- 下马
 function on_unride_request(player)
 	local hashorse = lualib:Attr(player, 200)
	if hashorse == 2 then--
		lualib:MsgBox(player, "你还没有骑乘，不能下马状态了！")
	else
		lualib:UnRide(player)
	end

	return true
end

local rongyaozhuangbei = {
["战神之证1"] = 1000,
["战神之证2"] = 5000,
["战神之证3"] = 15000,
["血魂之靴"] = 15000,
["战神之证4"] = 32000,
["血魂护腕(神)"] = 32000,
["血魂护腕(圣)"] = 32000,
["血魂头盔"] = 32000,
["战神之证5"] = 55000,
["血魂项链"] = 55000,
["血魂戒指(神)"] = 55000,
["血魂戒指(圣)"] = 55000,
["战神之证"] = 88000,
["狼牙"] = 88000,
["战神宝甲(男)"] = 88000,
["战神宝甲(女)"] = 88000,
["法神之证1"] = 1000,
["法神之证2"] = 5000,
["法神之证3"] = 15000,
["冰魄之靴"] = 15000,
["法神之证4"] = 32000,
["冰魄护腕(神)"] = 32000,
["冰魄护腕(圣)"] = 32000,
["冰魄头盔"] = 32000,
["法神之证5"] = 55000,
["冰魄项链"] = 55000,
["冰魄戒指(神)"] = 55000,
["冰魄戒指(圣)"] = 55000,
["法神之证"] = 88000,
["怒海"] = 88000,
["法神长袍(男)"] = 88000,
["法神长袍(女)"] = 88000,
["道尊之证1"] = 1000,
["道尊之证2"] = 5000,
["道尊之证3"] = 15000,
["月殇之靴"] = 15000,
["道尊之证4"] = 32000,
["月殇护腕(神)"] = 32000,
["月殇护腕(圣)"] = 32000,
["月殇头盔"] = 32000,
["道尊之证5"] = 55000,
["月殇项链"] = 55000,
["月殇戒指(神)"] = 55000,
["月殇戒指(圣)"] = 55000,
["道尊之证"] = 88000,
["星矢"] = 88000,
["道神宝衣(男)"] = 88000,
["道神宝衣(男)"] = 88000,
}
--]]
function GetPlayerPrompt(player)  --获取人物 6条属性
	--local str = lualib:GetStr("epuip_dressed")
	local tb = {
				["a1"] = {}, --物攻
				["a2"] = {}, --魔攻
				["a3"] = {},	--道攻
				["a4"] = {},	--物防
				["a5"] = {}, --魔防
				["a6"] = {}	--生命
	}
	tb["a1"][1] = lualib:Attr(player, 11)
	tb["a1"][2] = lualib:Attr(player, 10)
	tb["a2"][1] = lualib:Attr(player, 13)
	tb["a2"][2] = lualib:Attr(player, 12)
	tb["a3"][1] = lualib:Attr(player, 15)
	tb["a3"][2] = lualib:Attr(player, 14)
	tb["a4"][1] = lualib:Attr(player, 7)
	tb["a4"][2] = lualib:Attr(player, 6)
	tb["a5"][1] = lualib:Attr(player, 9)
	tb["a5"][2] = lualib:Attr(player, 8)
	tb["a6"][1] = lualib:Attr(player, 3) 
	tb["a6"][2] = 0 
	return tb
end
--------------------------穿上装备之前触发-------------------------------------
function on_pre_equip(player,item,item_id,item_key)
	if lualib:Player_IsPlayer(player) then 
		local rein_level = lualib:GetInt(player,"reinLevel")
		local item_rein = lualib:GetInt(item,"item_rein")
		if rein_level < item_rein then
			lualib:SysMsg_SendBottomColor(player, "转生等级不足,物品使用失败了", 1, 11) 
			return false
		else
			local tb = GetPlayerPrompt(player)
			lualib:SetStr(player, "epuip_dressed", json.encode(tb))
			return true
		end	
	else	
		return true
	end
end
--------------------------穿上装备之后触发-------------------------------------
function on_post_equip(player,item,item_id,item_key)

	--lualib:SysMsg_SendBottomColor(player, "进入on_post_equip1", 1, 11)
    local item_subtype = lualib:Item_GetSubType("",item)  
    if item_subtype == 13 then
		local p_burstharm = lualib:GetInt(player,"burstharm")
		local i_burstharm = lualib:GetInt(item,"burstharm")
		lualib:SetInt(player,"burstharm", p_burstharm + i_burstharm)
		--lualib:NotifyVar(player, "burstharm")
		--lualib:SysMsg_SendBottomColor(player, ""..lualib:GetInt(player,"burstharm"), 1, 11)
    end
	----------------------穿装备属性提升提示START------------------------
	local Upgrade_Packs_Tab = {
["凌霜剑特殊"] = 1, ["轻型战甲特殊"] = 1, ["金手镯特殊"] = 1, ["灯笼项链特殊"] = 1, ["青铜头盔战特殊"] = 1, ["金戒指特殊"] = 1, ["轻型战袍特殊"] = 1,
["海魂特殊"] = 1, ["魔力轻铠男特殊"] = 1, ["黑檀手镯特殊"] = 1, ["生命项链特殊"] = 1, ["青铜头盔法特殊"] = 1, ["六角戒指特殊"] = 1, ["魔力轻铠女特殊"] = 1,
["半月特殊"] = 1, ["轻型道袍特殊"] = 1, ["道士手镯特殊"] = 1, ["白金项链特殊"] = 1, ["青铜头盔道特殊"] = 1, ["珍珠戒指特殊"] = 1, ["轻型道衣特殊"] = 1,
["井中月特殊"] = 1, ["重型铠甲男特殊"] = 1, ["死神手套特殊"] = 1, ["魔鬼项链特殊"] = 1, ["骷髅头盔战特殊"] = 1, ["降妖除魔戒指特殊"] =1 , ["重型铠甲女特殊"] = 1,
["魔杖特殊"] =1 , ["魔法长袍男特殊"] = 1, ["思贝儿手镯特殊"] = 1, ["恶魔铃铛小特殊"] = 1, ["黑铁头盔法特殊"] = 1, ["蛇眼戒指特殊"] = 1, ["魔法长袍女特殊"] = 1,
["银蛇特殊"] = 1,["幽灵道袍特殊"] = 1,["心灵手镯特殊"] = 1,["黄色水晶项链特殊"] = 1,["道士头盔特殊"] = 1,["道德戒指特殊"] = 1,["幽灵道衣特殊"] = 1,
["裁决特殊"] = 1,["战神铠甲男特殊"] = 1,["坚固手套特殊"] = 1,["蓝翡翠项链特殊"] = 1,["黑铁头盔特殊"] = 1,["力量戒指特殊"] = 1,["战神铠甲女特殊"] = 1,
["血饮特殊"] = 1,["恶魔长袍男特殊"] = 1,["龙之手镯特殊"] = 1,["恶魔铃铛大特殊"] = 1,["魔法头盔特殊"] = 1,["紫碧螺特殊"] = 1,["恶魔长袍女特殊"] = 1,
["龙纹特殊"] = 1,["灵巧道袍特殊"] = 1,["三眼手镯特殊"] = 1,["凤凰明珠特殊"] = 1,["骷髅头盔道特殊"] = 1,["泰坦戒指特殊"] = 1,["灵巧道衣特殊"] = 1,
["天使之翼"] = 1}
	
	if lualib:Player_IsPlayer(player) then 
		if Upgrade_Packs_Tab[tostring(item_key)] ~= 1 then
			local str = lualib:GetStr(player, "epuip_dressed")
			if str ~= "" then
				local pre_tb = json.decode(str)
				local post_tb = GetPlayerPrompt(player) 
				local phy_atk_min_D_value = 0   --差值
				local phy_atk_max_D_value = 0   --差值
				local mag_atk_min_D_value = 0   --差值
				local mag_atk_max_D_value = 0   --差值
				local tao_atk_min_D_value = 0   --差值
				local tao_atk_max_D_value = 0   --差值
				local phy_def_min_D_value = 0   --差值
				local phy_def_max_D_value = 0   --差值
				local mag_def_min_D_value = 0   --差值
				local mag_def_max_D_value = 0   --差值
				local HP_D_value = 0   --差值
				if post_tb["a1"][1] - pre_tb["a1"][1] > 0 then
					phy_atk_min_D_value = post_tb["a1"][1] - pre_tb["a1"][1] --物攻下限
				end
				if post_tb["a1"][2] - pre_tb["a1"][2] > 0 then
					phy_atk_max_D_value = post_tb["a1"][2] - pre_tb["a1"][2] --物攻上限
				end
				if post_tb["a2"][1] - pre_tb["a2"][1] > 0 then
					mag_atk_min_D_value = post_tb["a2"][1] - pre_tb["a2"][1] --魔攻下限
				end
				if post_tb["a2"][2] - pre_tb["a2"][2] > 0 then
					mag_atk_max_D_value = post_tb["a2"][2] - pre_tb["a2"][2] --魔攻上限
				end
				if post_tb["a3"][1] - pre_tb["a3"][1] > 0 then
					tao_atk_min_D_value = post_tb["a3"][1] - pre_tb["a3"][1] --道攻下限
				end
				if post_tb["a3"][2] - pre_tb["a3"][2] > 0 then
					tao_atk_max_D_value = post_tb["a3"][2] - pre_tb["a3"][2] --道攻上限
				end
				if post_tb["a4"][1] - pre_tb["a4"][1] > 0 then
					phy_def_min_D_value = post_tb["a4"][1] - pre_tb["a4"][1] --物防下限
				end
				if post_tb["a4"][2] - pre_tb["a4"][2] > 0 then
					phy_def_max_D_value = post_tb["a4"][2] - pre_tb["a4"][2] --物防上限
				end
				if post_tb["a5"][1] - pre_tb["a5"][1] > 0 then
					mag_def_min_D_value = post_tb["a5"][1] - pre_tb["a5"][1] --魔防下限
				end
				if post_tb["a5"][2] - pre_tb["a5"][2] > 0 then
					mag_def_max_D_value = post_tb["a5"][2] - pre_tb["a5"][2] --魔防上限
				end
				if post_tb["a6"][1] - pre_tb["a6"][1] > 0 then
					HP_D_value = post_tb["a6"][1] - pre_tb["a6"][1] --生命
				end
				
				local tb = {
							["a1"] = {}, --物攻(下限，上限)
							["a2"] = {}, --魔攻
							["a3"] = {},	--道攻
							["a4"] = {},	--物防
							["a5"] = {}, --魔防
							["a6"] = {}	--生命
				}

				tb["a1"][1] = phy_atk_min_D_value
				tb["a1"][2] = phy_atk_max_D_value
				tb["a2"][1] = mag_atk_min_D_value
				tb["a2"][2] = mag_atk_max_D_value
				tb["a3"][1] = tao_atk_min_D_value
				tb["a3"][2] = tao_atk_max_D_value
				tb["a4"][1] = phy_def_min_D_value
				tb["a4"][2] = phy_def_max_D_value
				tb["a5"][1] = mag_def_min_D_value
				tb["a5"][2] = mag_def_max_D_value
				tb["a6"][1] = HP_D_value
				tb["a6"][2] = 0	
				if not (tb["a1"][1] <= 0 and tb["a1"][2] <= 0 and tb["a2"][1] <= 0 and tb["a2"][2] <= 0 and tb["a3"][1] <= 0 and tb["a3"][2] <= 0 and tb["a4"][1] <= 0 and tb["a4"][2] <= 0 and tb["a5"][1] <= 0 and tb["a5"][2] <= 0 and tb["a6"][1] <= 0) then
					
					local tab = ""
					for i=1,6 do
						tab = tab .. i .. ","
						tab = tab .. tb["a"..i][1] .. ","
						if i == 6 then
							tab = tab .. tb["a"..i][2]
						else
							tab = tab .. tb["a"..i][2] .. "#"
						end
					end
					
					local param = tab
					local loadnum = lualib:GetInt(player,"loadnum")
					loadform(player,""..param)
					lualib:SetInt(player,"loadnum",loadnum + 1)
				end
			end	
		end
	end
	
	if lualib:HasQuest(player, 74) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local wing_l = lualib:GetInt(player,"wing_level")
		if wing_l >= 1 then
			lualib:SetQuestGroupHuntingsCount(player, 74, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 78) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 50 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 78, 444, counts)	
	elseif lualib:HasQuest(player, 81) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 81, 444, counts)
		
	elseif lualib:HasQuest(player, 86) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 86, 444, counts)
	elseif lualib:HasQuest(player, 87) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local level = lualib:GetInt(player,"xuefu_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 87, 444, 1)	
		end
	elseif lualib:HasQuest(player, 89) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 89, 444, counts)
			
	
	elseif lualib:HasQuest(player, 89) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 88, 444, counts)
		
	elseif lualib:HasQuest(player, 90) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local level = lualib:GetInt(player,"Ach_xunz")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 90, 444, 1)	
		end
	elseif lualib:HasQuest(player, 92) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 92, 444, counts)
	elseif lualib:HasQuest(player, 93) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local level = lualib:GetInt(player,"hudun_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 93, 444, 1)	
		end
	elseif lualib:HasQuest(player, 10001) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 6 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 10001, 444, counts)
		
	end		
	
	
	--[[
	if lualib:HasQuest(player, 74) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local wing_l = lualib:GetInt(player,"wing_level")
		if wing_l >= 1 then
			lualib:SetQuestGroupHuntingsCount(player, 74, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 87) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 87, 444, counts)
	elseif lualib:HasQuest(player, 89) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 89, 444, counts)
		
	elseif lualib:HasQuest(player, 91) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level > 6 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 91, 444, counts)
		
	elseif lualib:HasQuest(player, 94) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 94, 444, counts)
		
	elseif lualib:HasQuest(player, 95) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local level = lualib:GetInt(player,"xuefu_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 95, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 100) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 8 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 100, 444, counts)
		
	elseif lualib:HasQuest(player, 102) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local level = lualib:GetInt(player,"hudun_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 102, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 103) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 70 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 103, 444, counts)
		
	elseif lualib:HasQuest(player, 105) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 8 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 105, 444, counts)
		
	elseif lualib:HasQuest(player, 107) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 70 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 107, 444, counts)
		
	elseif lualib:HasQuest(player, 109) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local level = lualib:GetInt(player,"Ach_xunz")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 109, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 110) then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local level = lualib:GetInt(player,"ach_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 110, 444, 1)	
		end
		
	elseif lualib:HasQuest(player, 112) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 70 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 112, 444, counts)
		
	elseif lualib:HasQuest(player, 123) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 9 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 123, 444, counts)
		
	elseif lualib:HasQuest(player, 127) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 80 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 127, 444, counts)
		
	elseif lualib:HasQuest(player, 134) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 80 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 134, 444, counts)
		
	elseif lualib:HasQuest(player, 138) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 80 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 138, 444, counts)
		
	elseif lualib:HasQuest(player, 142) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:GetInt(Guid, "item_rein")
				if Level >= 1 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 142, 444, counts)
		
	elseif lualib:HasQuest(player, 144) then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:GetInt(Guid, "item_rein")
				if Level >= 1 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 144, 444, counts)
		
	elseif lualib:HasQuest(player, 146) then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:GetInt(Guid, "item_rein")
				if Level >= 1 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 146, 444, counts)
		
	elseif lualib:HasQuest(player, 148) then
		local Guid = lualib:Player_GetItemGuid(player,  5) --获取装备位的物品GUID
		if Guid ~= "" then
			local Level = lualib:GetInt(Guid, "item_rein")
			if Level >= 1 then 
				lualib:SetQuestGroupHuntingsCount(player, 148, 444, 1)	
			end
		end
		
	elseif lualib:HasQuest(player, 150) then
		local Guid = lualib:Player_GetItemGuid(player,  1) --获取装备位的物品GUID
		if Guid ~= "" then
			local Level = lualib:GetInt(Guid, "item_rein")
			if Level >= 1 then 
				lualib:SetQuestGroupHuntingsCount(player, 150, 444, 1)	
			end
		end
		
	end
	--]]
	
	
	----------------------穿装备属性提升提示END--------------------------
	return true
end

function on_family_ntf(guid, name, type, player)
	if lualib:HasQuest(player, 97) then
		lualib:SetQuestGroupHuntingsCount(player, 97, 444, 1)
	end
end

function loadform(player,param)

	lualib:ShowFormWithContent(player, "属性改变表单", param)
end	
--------------------------脱装备之后触发-------------------------------------
function on_post_un_equip(player,item,item_id,item_key)
	--lualib:SysMsg_SendBottomColor(player, "进入on_post_un_equip1", 1, 11)
    local item_subtype = lualib:Item_GetSubType("",item)
    if item_subtype == 13 then
		local p_burstharm = lualib:GetInt(player,"burstharm")
		local i_burstharm = lualib:GetInt(item,"burstharm")
		lualib:SetInt(player,"burstharm", p_burstharm - i_burstharm)
		--lualib:NotifyVar(player, "burstharm")
		--lualib:SysMsg_SendBottomColor(player, ""..lualib:GetInt(player,"burstharm"), 1, 11)
    end
	return true
end

--[[
function kaifutiren(player)
	lualib:Player_Kick(player)
	return true
end
--]]
--------------------------拾取物品之后触发-------------------------------------
function on_tem_pickup(player,item,item_id,item_keyname)
	huanzhuang_yindao(player,item)
end


local hurt_map = {
					["沃玛寺庙一层"] = 1,
					["沃玛寺庙二层"] = 1,
					
					["猪洞一层"] = 1,
					["猪洞二层"] = 1,
					["猪洞三层"] = 1,
					
					["新版新手村"] = 1,
					
					["蜈蚣洞一层"] = 1,
					["蜈蚣洞二层"] = 1,
					["蜈蚣洞三层"] = 1,
					
					["祖玛寺庙一层"] = 1,
					["祖玛寺庙二层"] = 1,
					
					
				}

	--------受到伤害前触发-------------
function on_pre_harm(role, attacker, hp, defense, skill_key,isBurst)  --被攻击者，攻击者，血量（正加负扣），防御值，技能，暴击
	
	if lualib:Player_IsPlayer(attacker) and tonumber(hp) < 0 and isBurst == 1 then      
		local _dv = lualib:GetInt(attacker,"burstharm") --暴击力 
		hp = tonumber(hp)-_dv 
		local job = lualib:Job(attacker)
		local hashorse = 0 
		if tonumber(job)== 1 then 
			hashorse = lualib:Attr(role, 124)
		else 
			hashorse = lualib:Attr(role, 122)
		end 
		hp = hp*(1-  hashorse/100)    
	end
	
	if lualib:Player_IsPlayer(attacker) and lualib:Player_IsPlayer(role) then 
		local att_level = lualib:Level(attacker)
		local role_level = lualib:Level(role)
		if att_level < 60 or role_level < 60 then  
			return -1
		end
	end
	
	
	local map_name = lualib:KeyName(lualib:MapGuid(role))
	if hurt_map[map_name] == nil then
		if hp > -50 then
			if lualib:Player_IsPlayer(role) then
				if lualib:Job(role) == 2 then
					hp = -math.random(15, 50)
				else
					hp = -math.random(50, 100)
				end
			end
		end
	end
	
	
	local role_name = lualib:KeyName(role)
	if role_name == "塔防弓箭侍卫" or role_name == "塔防魔法侍卫" then 
		return -1
	end
	return hp
end 


function SetDBNum_consumeTerm()
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
end