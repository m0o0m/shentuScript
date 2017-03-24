local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/攻城战玩法")
-- require("system/自动打怪")
require("system/online_gift")
require("system/充值礼包")
require("form/ChallengeBOSS")
require("system/horse")
require("system/marry")
require("system/master")

function on_system_start()
	lualib:AddTrigger("", lua_trigger_login, "on_player_login");
	lualib:AddTrigger("", lua_trigger_add_exp, "on_player_add_exp");		--经验增加时
	lualib:AddTrigger("", lua_trigger_logout, "on_player_logout");
	lualib:DelayCall("", 1, "OnFirstCastleWar", "");		--第一次攻城战
	lualib:AddTrigger("0",  lua_trigger_first_in_game, "on_first_in_game")
	lualib:AddTrigger("0",  lua_trigger_level_up, "on_level_up")				--升级触发
	lualib:AddTrigger("0",  lua_trigger_gp, "on_gp")				--反外挂触发
	lualib:AddTrigger("0",  363, "on_ride_request")  --上马触发
	lualib:AddTrigger("0",  364, "on_unride_request")  --下马触发
	lualib:AddTrigger("0",	lua_trigger_role_pre_harm, "on_pre_harm")
	lualib:AddTrigger("0",  lua_trigger_post_equip, "on_post_equip")
	lualib:AddTrigger("0",  lua_trigger_post_un_equip, "on_post_un_equip")
	lualib:AddTrigger("0",  lua_trigger_player_pre_die, "on_pre_player_die")
end

-- 上马判断

 function on_ride_request(player)
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


function on_player_login(player)
	if lualib:GetInt(player, "petlv") == 0 then
		lualib:SetInt(player, "petlv", 1)
	end


lualib:ShowFormWithContent(player, "form文件表单", "服务器时间表单#"..lualib:GetAllTime());
--lualib:OpenWarehouseEx(player)
	lualib:AddItem(player, "蛮荒城传送石", 1, true, "给物品", player)
	lualib:DelayCall(player, 1, "首充礼包表单:first_show", "");
	lualib:DelayCall(player, 1, "登陆脚本:main", "");
        lualib:DelayCall(player, 1, "魔气血石:on_login", "");
	active_player(player, 2, 0)	--登录时向网站发送角色最新信息，不要删除否则影响统计功能
sure(player)
	 --GM登陆
	if lualib:Player_IsGM(player) then
		lualib:Player_SetGhost(player, true)
		lualib:SysMsg_SendTriggerMsg(player, "你已进入隐身状态！")
		lualib:Player_SetInvincible(player, true)
		lualib:SysMsg_SendTriggerMsg(player, "你已进入无敌状态！")
		lualib:AddBuff(player, "疾驰", 60*60*24)
		lualib:SysMsg_SendTriggerMsg(player, "你已进入疾驰状态！")
	end
	lualib:DelayCall(player, 1000, "龙吟修仙诀表单:addtimer", "")
	
	--右上角图标显示
	online_gift_login(player)	--在线礼包
	-- guaji_xianshi(player)		--自动打怪
	check_first_bill(player)	--首充与充值礼包
	-- FamilyWar(player); 			--行会争霸
	openChallengeBoss_show(player);

	--功能导入
	marry_load(player)			--夫妻是否组队/跨天扣除亲密度	
	process_master_apprentice_login(player)	--调用师徒登录触发
end
local timeId = 12582	--定时器ID

local second = 1	--多少秒加一次经验

local limit = 200	--多少级开始不能使用泡点


function sure(player)

	if lualib:Level(player) >= 200 then

		return ""
    end
	
	if lualib:HasTimer(player, timeId) then

		return ""
	end
	lualib:AddTimer(player, timeId, second * 1000, -1, "on_time_exp")
	lualib:Player_MapMoveXY(player,"天怒之城",255,405,5)
	
	return ""
end


function on_time_exp(player, id)
	if lualib:Level(player) >= limit then
		lualib:DisableTimer(player, id)
		lualib:SysWarnMsg(player, "等级达到"..limit.."级无法再进行随身泡点。")
		return false
	end
	if lualib:IsOffline(player) then
		lualib:DisableTimer(player, id)
		return false
	end
	
	local temp = lualib:GetTempInt(player, "tbingot") + 1

	lualib:AddExp(player, 100000, "加经验:随身泡点", player)

end


function on_login_delay_timer(player, timer_id)    
	local caller = (lualib:Gender(player) == 1) and "丈夫" or "妻子"
	local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	lualib:SysPromptMsg(spouse, "你的"..caller.."上线了。")
end

function on_player_logout(player)
	lualib:DelayCall(player, 1, "退出脚本:main", "");
	online_gift_logout(player)						--在线礼包退出
end

function on_player_add_exp(player, expv)
	lualib:DelayCall(player, 1, "经验脚本:main", tostring(expv));
	process_horse_add_exp(player, tonumber(exp))
end

function on_level_up(player, level)	    
	active_player(player, 3, 0)	--升级时向网站发送角色最新信息，不要删除否则影响统计功能
	process_apprentice_level_up(player, level)			--调用徒弟升级触发
end

--------[[玩家第一次进入游戏]]
function on_first_in_game(player)
	
	local item_k = {"木剑", "金创药(小)包", }
	local item_n = {1, 1, }
	local item_b = {1, 1, }
	local item_o = {0, 0, }
	
	if not lualib:Player_ItemRequest(player, item_k, item_n, item_b, item_o, "给物品：第一次进游戏", "") then
		lualib:SysMsg_SendTriggerMsg(player, "新手物品赠送失败！")	
	end
	
	local Gender = lualib:Gender(player)	
	local award_item = {"布衣(男)", "布衣(女)"}
	if not lualib:AddItem(player, award_item[Gender], 1, true, "", "") then
		lualib:SysMsg_SendTriggerMsg(player, "赠送布衣失败！")
	end	
         lualib:Player_AddGold(player, 300000, true, "加金币：第一次进入游戏金钱奖励", player)
	local player_name = lualib:Name(player)
	lualib:SysMsg_SendBroadcastMsg("玩家【"..player_name.."】加入游戏,为神途新添了一份力量", "[系统提示]")
end

function on_gp(player, gp_runtime, gp, diff_avg_tick)
    if lualib:GetTempInt(player, "SetNetCheck") == 0  then
        lualib:SetTempInt(player, "SetNetCheck", 1)
        lualib:SetNetCheckEx(player, true, true)
        lualib:DelayCall(player, 1200 * 1000, "CancelCheck", "")
    end
end

function CancelCheck(player)
    lualib:SetTempInt(player, "SetNetCheck", 0)
    lualib:SetNetCheck(player, false)
end

--上报角色信息
function active_player(player, request_type, times)
	if times >= 3 then
		return;	
	end
	
	local accountid = lualib:Player_GetAccountID(player)
	local account_name = lualib:AccountName(player)
	local serverid = lualib:GetZoneId()
	local role_name = lualib:Name(player);
	local level = lualib:Level(player);
	local job = lualib:Job(player);

	local url = string.format("http://api.hzyotoy.com:8800/api/putroleinfo.do?type=%d&zoneid=%d&userid=%d&role_guid=%s&level=%d&role_name=%s&job=%d"
								,request_type, serverid, accountid, player, level, lualib:UrlEncode(role_name), job);

	if request_type == nil  or account_name == "" or serverid == 0 then
		return
	else
		if request_type == 3 and level < 20 then
			return
		end

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

--上报角色信息回调
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

	if result_find1 ~= nil and result_find2 ~= nil then
		local s = string.sub(result, result_find1, result_find2)
		local t = string.split(s, "|")
		local s1 = {"密码过于简单", "密保信息未设置", "身份信息未认证", "安全手机未认证", "安全邮箱未认证"}
		
		local tip = [[                                    #COLORCOLOR_GREENG#账 号 安 全#COLOREND#
				     尊敬的玩家，您的账号存在安全隐患，为了您的游戏财产安全，请补充资料]]
		local tip2 = [[        
				        ]]
		local req = false
		
		for i = 1, #t do
			if t[i] == "1" then
				req = true
			end
		end
			
		if req then
			lualib:SysMsg_SendBottomColor(player, "     #COLORCOLOR_ORANGE#╔──────═──────═──────═──────═──────╗#COLOREND#", 7, 11)
			lualib:SysMsg_SendBottomColor(player, tip, 7, 11)

			local num = 0
			for i = 1, #t do
				if t[i] == "1" then
					num = num + 1
					if num == 1 then
						tip2 = tip2..s1[i]
					else
						tip2 = tip2.."   "..s1[i]
					end
				end
			end
			
			lualib:SysMsg_SendBottomColor(player, tip2, 2, 11)
			lualib:SysMsg_SendBottomColor(player, "     #COLORCOLOR_ORANGE#╚──────═──────═──────═──────═──────╝#COLOREND#", 7, 11)
			
			lualib:SysMsg_SendBoardMsg(player, "补充安全资料",  "\n#COLORCOLOR_GREENG##UILINK<WND:提交表单,PARAM:小贴士;web;player,STR:请点我进入网站补充账号安全资料##COLOREND#", 10000)   
		end
	end
end


---------------------------------------------------------------319
	--------受到伤害前触发-------------
function on_pre_harm(role, attacker, hp, defense, skill_key,isBurst)  --被攻击者，攻击者，血量（正加负扣），防御值，技能，暴击
	
	-- if lualib:Player_IsPlayer(attacker) and tonumber(hp) < 0 and isBurst == 1 then      
		-- local _dv = lualib:GetInt(attacker,"burstharm") --暴击力 
		-- hp = tonumber(hp)-_dv 
		-- local job = lualib:Job(attacker)
		-- local hashorse = 0 
		-- if tonumber(job)== 1 then 
			-- hashorse = lualib:Attr(role, 124)
		-- else 
			-- hashorse = lualib:Attr(role, 122)
		-- end 
		-- hp = hp*(1-  hashorse/100)    
	-- end
	
	-- if lualib:Player_IsPlayer(attacker) and lualib:Player_IsPlayer(role) then 
		-- local att_level = lualib:Level(attacker)
		-- local role_level = lualib:Level(role)
		-- if att_level < 60 or role_level < 60 then  
			-- return -1
		-- end
	-- end
	local Wing_KeyName = {
		["翅膀1"] 	=	0.02 	,
		["翅膀2"]	=	0.04 	,
		["翅膀3"]	=	0.06 	,
		["翅膀4"]	=	0.08 	,
		["翅膀5"]	=	0.1		,
		["翅膀6"]	=	0.12	,
		["翅膀7"]	=	0.14	,
		["翅膀8"]	=	0.16	,
		["翅膀9"]	=	0.18	,
		["翅膀10"]	=	0.2		,
		["翅膀11"]	=	0.22	,
		["翅膀12"]	=	0.24	,
	}
	if lualib:Player_IsPlayer(attacker) then 
		local wings = lualib:Wings(attacker);
		if wings ~= "" then
			local KeyName = lualib:KeyName(wings);
			-- lualib:SysPromptMsg(attacker, ""..KeyName);
			local random = math.random(1, 100);
			if random <= 20 then 
				local percent = Wing_KeyName[KeyName];
				if percent then
					local phy_att = lualib:PhyAtk(attacker, true)    --取上限
					local sorb_HP = phy_att * percent;
					sorb_HP = math.ceil(sorb_HP);
					-- local str = string.format("%q", "#COLORCOLOR_GREENG##COLORCOLOR_YELLOW#"..lualib:Name(wings).."#COLORCOLOR_GREENG#吸血特效,#COLORCOLOR_MAGENTA#血量增加"..sorb_HP);
					-- lualib:ShowFormWithContent(attacker, "脚本表单", "win_msg_up("..str..")");
					lualib:SysCenterMsg(0, ""..lualib:Name(wings).."吸血特效,血量增加"..sorb_HP.."！！", attacker);
					lualib:SetHp(attacker, lualib:Hp(attacker, false) + sorb_HP, false);
					
				end
			end
		end
	end
	
	local Hat_KeyName = {--最大生命值伤害  	，当前生命值伤害
		
		["斗笠1-1"] =	{ 	5,	0.01,		10,	0.01},
		["斗笠1-2"]	=	{	5,  0.02,		10,	0.02},
		["斗笠2-1"]	=	{	5,  0.03,		10,	0.03},
		["斗笠2-2"]	=	{	5,  0.04,		10,	0.04},
		["斗笠3-1"]	=	{	5,  0.05,		10,	0.05},
		["斗笠3-2"]	=	{	5,  0.06,		10,	0.06},
		["斗笠4-1"]	=	{	5,  0.07,		10,	0.07},
		["斗笠4-2"]	=	{	5,  0.08,		10,	0.08},
	}
	if lualib:Player_IsPlayer(attacker) and lualib:Monster_IsMonster(role) then
		local mon_keyname =  lualib:KeyName(role);
		if mon_keyname ~= "世界BOSS" then 
		
			local hat = lualib:Player_GetItemGuid(attacker, lua_site_hat)  
			if hat == "" then
				return hp
			end
			local KeyName = lualib:KeyName(hat);
			
			local percent1 = Hat_KeyName[KeyName][1];
			local percent2 = Hat_KeyName[KeyName][3];
			local subPercent1 = Hat_KeyName[KeyName][2];
			local subPercent2 = Hat_KeyName[KeyName][4];
			if percent1 and percent2 and subPercent1 and subPercent2 then
				local random = math.random(1, 100);
				local subHp = 0
				if random <= percent1 then 
					local max_hp = lualib:Hp(role, true);
					subHp = max_hp * subPercent1
					subHp = math.ceil(subHp);
					lualib:SysCenterMsg(0, ""..lualib:Name(hat).."切割之力,造成最大生命值的"..subHp.."点额外伤害！！", attacker);
					return hp - subHp;
				elseif random <= percent2 then
					local cur_hp = lualib:Hp(role, false);
					subHp = cur_hp * subPercent2
					subHp = math.ceil(subHp);
					lualib:SysCenterMsg(0, ""..lualib:Name(hat).."切割之力,造成当前生命值的"..subHp.."点额外伤害！！", attacker);
					return hp - subHp;
				end
			end
		end
	end
	
	--麻痹属性
	if lualib:Player_IsPlayer(attacker) then 
		local mb_rate = lualib:GetInt(attacker, "dizziness");
		if mb_rate ~= 0 then 
			local random = math.random(1, 100);
			local sub_rate = 0
			if lualib:Player_IsPlayer(role) then
				local num = lualib:GetEquipSuitCount(role, "", 0, 479);
				if num == 12 then 
					sub_rate = 0.7;
				elseif num == 0 then 	
					num = lualib:GetEquipSuitCount(role, "", 0, 480);
					if num == 12 then 
						sub_rate = 0.4;
					elseif num == 0 then
						num = lualib:GetEquipSuitCount(role, "", 0, 481);
						if num == 12 then 
							sub_rate = 0.1;
						end
					end
				end
				if sub_rate ~= 0 then
					mb_rate = mb_rate * sub_rate;
				end
				-- lualib:SysPromptMsg(role, "sub_rate============"..sub_rate);
				-- lualib:SysPromptMsg(attacker, "sub_rate============"..sub_rate);
			end
			
			if random <= mb_rate then 
				lualib:AddBuff(role, "脚本麻痹", 2);
			end
		end
	end
	return hp
end 


local GEM_KEYNAME = {
	["宝石1"] 	={	0.10 	,	100		},
	["宝石2"]	={	0.20 	,   95      },
	["宝石3"]	={	0.30 	,   85      },
	["宝石4"]	={	0.40 	,   80      },
	["宝石5"]	={	0.50	,   75      },
	["宝石6"]	={	0.60	,   70      },
	["宝石7"]	={	0.70	,   65      },
	["宝石8"]	={	0.75	,   60      },
	["宝石9"]	={	0.80	,   55	    },
	["宝石10"]	={	0.85	,   50      },
	["宝石11"]	={	0.90	,   40      },
	["宝石12"]	={	0.95	,   30      },
}

function on_post_equip(player, item, item_id, KeyName)
	-- lualib:SysPromptMsg(player, ""..KeyName);
	if GEM_KEYNAME[KeyName] then 
		local second = GEM_KEYNAME[KeyName][2];
		lualib:AddBuff(player, "长生石复活", second);
		lualib:ShowFormWithContent(player, "脚本表单", "PlayerHeaderInfo:ReliveCD("..second..")");
	end
end
function on_post_un_equip(player, item, item_id, KeyName)
	--不需要做处理
	-- lualib:SysPromptMsg(player, ""..KeyName);
	-- if GEM_KEYNAME[KeyName] then 
		-- lualib:DelBuff(player, "长生石复活");
		-- lualib:ShowFormWithContent(player, "脚本表单", "PlayerHeaderInfo:RemoveReliveCD()");
	-- end
end


function on_pre_player_die(player, killer)
    local gem = lualib:Gem(player)
	if gem == "" then
		return true
	end
	local gem_KeyName = lualib:KeyName(gem);
	if not GEM_KEYNAME[gem_KeyName] then 	
		return true
	end 
	if lualib:HasBuff(player, "长生石复活") then 
		return true
	end
	-- local x, y = lualib:X(player), lualib:Y(player);
	-- lualib:Player_Relive(player, "", x, y, 5, GEM_KEYNAME[gem_KeyName][1]);
	local max_hp = lualib:Hp(player, true);
	local hp = max_hp * GEM_KEYNAME[gem_KeyName][1];
	lualib:SetHp(player, hp, false)     --设置当前HP
	local second = GEM_KEYNAME[gem_KeyName][2];
	lualib:AddBuff(player, "长生石复活", second);
	lualib:SysCenterMsg(0, ""..lualib:Name(gem).."长生之力,原地复活！！", player);
	lualib:SysMsg_SendPromptMsg(player, "#COLORCOLOR_GREENG#触发#COLORCOLOR_YELLOW#"..lualib:Name(gem).."#COLORCOLOR_GREENG#长生之力,#COLORCOLOR_MAGENTA#原地复活！！");
	lualib:ShowFormWithContent(player, "脚本表单", "PlayerHeaderInfo:ReliveCD("..second..")");
	return false
end

-- function on_pre_drop(role)
    -- local map = lualib:MapGuid(role)
    -- if lualib:KeyName(map) == "龙城" then
        -- print("该地图不爆道具")
        -- return false
    -- end
    
    -- return true
-- end