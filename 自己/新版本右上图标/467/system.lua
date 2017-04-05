local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/攻城战玩法")
require("system/自动打怪")
require("system/online_gift")
require("system/充值礼包")


function on_system_start()
	lualib:AddTrigger("", lua_trigger_login, "on_player_login");
	lualib:AddTrigger("", lua_trigger_add_exp, "on_player_add_exp");		--经验增加时
	lualib:AddTrigger("", lua_trigger_pre_logout, "on_pre_logout");
	lualib:DelayCall("", 1, "OnFirstCastleWar", "");		--第一次攻城战
	lualib:AddTrigger("0",  lua_trigger_billin, "on_trigger_billin")--充值回调
	lualib:AddTrigger("0",  lua_trigger_first_in_game, "on_first_in_game")
	lualib:AddTrigger("0",  lua_trigger_level_up, "on_level_up")				--升级触发
	lualib:AddTrigger("0",  lua_trigger_gp, "on_gp")				--反外挂触发
	lualib:AddTrigger("0",  363, "on_ride_request")  --上马触发
	lualib:AddTrigger("0",  364, "on_unride_request")  --下马触发
	lualib:AddTrigger("0", 302, "on_post_equip") --穿戴触发
	lualib:AddTrigger("0",  lua_trigger_player_relive, "on_player_relive") --复活前回调
	lualib:AddTrigger("0",  lua_trigger_post_die, "on_post_die") --死亡时回调
	lualib:AddTrigger("0", lua_trigger_hack_check, "on_hack_check");
	lualib:AddTrigger("0", lua_trigger_hack_check2, "on_hack_check2");
	lualib:AddTrigger("0",  356, "on_player_pre_die")  --死前触发
	lualib:AddTrigger("0", lua_trigger_post_drop_one, "on_post_drop_one");
end

function on_post_die(player)
	lualib:SetInt(player, "die_flag", 1)
end

function on_ride_request(player)
	local hashorse = lualib:Attr(player, 200)
    if hashorse == 1 then
		lualib:MsgBox(player, "你已经处于骑乘状态了！")
		return
	end
    
    --上马读条
    lualib:ProgressBarStart(player, 1000, "上马中", "on_Horse_true", "on_Horse_false", "")    
end

--上马
function on_Horse_true(player)
	lualib:Ride(player)
end

--上马被打断
function on_Horse_false(player)
	lualib:SysTriggerMsg(player, "上马被打断")
end

-- 下马
function on_unride_request(player)
 	local hashorse = lualib:Attr(player, 200)
	if hashorse == 2 then
		lualib:MsgBox(player, "你还没有骑乘，不能下马状态了！")
	else
		lualib:UnRide(player)
	end
end

function on_player_relive(player)
	lualib:SetInt(player, "die_flag", 0)
	local map = lualib:Map_GetMapGuid("龙城")
	if lualib:IsCastleWarStart("神歌城") then
		local own_family = lualib:GetCastleOwnFamily("神歌城")
		local my_family = lualib:GetFamilyName(player)
		
		if own_family == "" or my_family == "" then
			return true
		else
			if lualib:GetCastleOwnFamily("神歌城")== my_family or lualib:GetCastleTempFamily("神歌城") == my_family then
				lualib:Player_Relive(player, map, 532, 243, 5, 20)
				return false
			else
				return true
			end
		end
	else
		return true
	end
end




function on_player_login(player)
	lualib:ShowFormWithContent(player, "form文件表单", "服务器时间表单#"..lualib:GetAllTime());
    for i = 10, 11 do
        local item = lualib:Player_GetItemGuid(player, i)
        if item ~= "" then
            on_post_equip(player, item)
        end
    end
	lualib:DelayCall(player, 1, "登陆脚本:main", "");
	lualib:DelayCall(player, 1, "魔气血石:on_login", "");
	active_player(player, 2, 0)	--登录时向网站发送角色最新信息，不要删除否则影响统计功能
	--lualib:DelayCall(player, 2000, "client_ver", "");	--检测客户端版本
	
	--攻城战死亡上线
	local die_flag = lualib:GetInt(player, "die_flag")
	if lualib:IsCastleWarStart("神歌城") and die_flag == 1 then
		local own_family = lualib:GetCastleOwnFamily("神歌城")
		local my_family = lualib:GetFamilyName(player)
		
		if own_family ~= "" and own_family == my_family then
			lualib:Player_MapMoveXY(player, "龙城", 532, 243, 5)
			lualib:SetInt(player, "die_flag", 0)
		end
	end
	
	--GM登陆
	if lualib:Player_IsGM(player) then
		lualib:Player_SetGhost(player, true)
		lualib:SysTriggerMsg(player, "你已进入隐身状态！")
		lualib:Player_SetInvincible(player, true)
		lualib:SysTriggerMsg(player, "你已进入无敌状态！")
		lualib:AddBuff(player, "疾驰", 60*60*24)
		lualib:SysTriggerMsg(player, "你已进入疾驰状态！")
	end
	
	--右上角图标显示
	online_gift_login(player)	--在线礼包
	guaji_xianshi(player)		--自动打怪
	check_first_bill(player)	--首充与充值礼包

	local spouse = lualib:GetStr(player, "配偶GUID")
	if spouse ~= "" then
		local caller = (lualib:Gender(player) == 1) and "丈夫" or "妻子"
		lualib:SysPromptMsg(spouse, "你的"..caller.."上线了。")
	end
end

function client_ver(player)
	lualib:RequestClientVer(player);
	lualib:DelayCall(player, lualib:GenRandom(2, 5) * 1000, "client_ver_ex", "");
end

function client_ver_ex(player)
    local ver = lualib:GetClientVerEx(player);

    if (ver < 3003) or (ver <  lualib:GetGSClientVer()) then
		lualib:SysTriggerMsg(player, "客户端太老请关闭所有游戏窗口不要双开，重新打开登录器更新！")
		lualib:SysTriggerMsg(player, "客户端太老请关闭所有游戏窗口不要双开，重新打开登录器更新！")
		lualib:SysTriggerMsg(player, "客户端太老请关闭所有游戏窗口不要双开，重新打开登录器更新！")
		lualib:SysTriggerMsg(player, "如果不更新请点击登录器上资源修复完整修复后才可以正常游戏！")
		lualib:SysTriggerMsg(player, "如果不更新请点击登录器上资源修复完整修复后才可以正常游戏！")
		lualib:DelayCall(player, 3000, "kick_player", "");
    end
end

function kick_player(player)
	lualib:Player_Kick(player)
end

function on_pre_logout(player, type)
	lualib:DelayCall(player, 1, "master:process_master_apprentice_logout", ""); --师徒退出处理
	lualib:DelayCall(player, 1, "online_gift:online_gift_logout", ""); --在线礼包退出
	
	return true;
end

function on_player_add_exp(player, expv)
	lualib:DelayCall(player, 1, "经验脚本:main", tostring(expv));
end

function on_level_up(player, level)	    
	active_player(player, 3, 0)	--升级时向网站发送角色最新信息，不要删除否则影响统计功能
	lualib:DelayCall(player, 1, "master:process_apprentice_level_up", tostring(level))  --调用徒弟升级触发
end

--------[[玩家第一次进入游戏]]
function on_first_in_game(player)
	lualib:AddBuff(player, "新手护佑", 3600);
	local item_k = {"木剑", "逍遥游"}
	local item_n = {1, 1}
	local item_b = {1, 1}
	local item_o = {0, 0}
	
	if not lualib:Player_ItemRequest(player, item_k, item_n, item_b, item_o, "给物品：第一次进游戏", "") then
		lualib:SysTriggerMsg(player, "新手物品赠送失败！")	
	end
	
	local Gender = lualib:Gender(player)	
	local award_item = {"布衣(男)", "布衣(女)"}
	if not lualib:AddItem(player, award_item[Gender], 1, true, "", "") then
		lualib:SysTriggerMsg(player, "赠送布衣失败！")
	end	
	
	local player_name = lualib:Name(player)
	lualib:SysMsg_SendBroadcastMsg("玩家【"..player_name.."】加入游戏,为神途新添了一份力量", "[系统提示]")
end

function on_gp(player, gp_runtime, gp, diff_avg_tick)
	local count = lualib:GetTempInt(player, "SetNetCheck");
    if count <= 0  then
		--第一次触发, 给玩家加上严格模式
        lualib:SetTempInt(player, "SetNetCheck", 1);
        lualib:SetNetCheckEx(player, true, true);
        lualib:DelayCall(player, 1200 * 1000, "CancelCheck", "");
	elseif count == 1 then
		--严格模式下, 第二次触发, 给玩家发送警告
		lualib:SetTempInt(player, "SetNetCheck", 2);
		lualib:SysWarnMsg(player, "系统检测到你使用非法外挂，请立即停止使用，否则将对你采取惩罚措施！");
	else
		--严格模式下, 第三次触发, 直接T下线
		lualib:KickByName(lualib:Name(player), 2, "使用外挂");
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

function on_hack_check(player, a, b)
    if b > 10 then
       lualib:SysWarnMsg(player, "请不要使用外挂,你已经被系统记录，情节严重者直接封号！");
       lualib:Error(lualib:Name(player) .. "可能使用挂机外挂");
    end
end

function on_hack_check2(player, param1)
    local PreTime = lualib:GetTempInt(player, "HackCheckTime");
    local NowTime = lualib:GetAllTime();
    if NowTime - PreTime < 600 then
        return;
    end
    lualib:SetTempInt(player, "HackCheckTime", NowTime);
    if param1 >= 1 then
        --发送答题验证(详见"神途验证码功能"),或直接踢下线
    end
end

function on_player_pre_die(self,target)
	local times = lualib:GetAllTime()
	local revive_times = lualib:GetInt(self,"revive_times")
	local timeCount = tonumber(times) - tonumber(revive_times)
	if timeCount < 10 then
		return true
	end
	
	local revive = true
	--if math.random(1, 100) > 80 then
	for i = 10, 11 do
		local guid = lualib:Player_GetItemGuid(self, i)
		if guid ~= "" and guid ~= nil then
			local name = lualib:KeyName(guid)
			if name == "复活戒指" then
				revive = false
				local Durabilit = lualib:Item_GetDurability("", guid)
				if Durabilit < 1000 then
					lualib:Item_Destroy(self, guid, "", "")
				else
					lualib:Item_SetDurability("", guid, Durabilit - 1000)
				end
			end
		end
	end
	
	
		
		if revive == false then
			local self_Hp = lualib:Hp(self, true)
			--lualib:SysMsg_SendWarnMsg(self, "时间差："..self_Hp)
			local set_hp = self_Hp
			lualib:SetHp(self, set_hp, false)
			
			lualib:SetInt(self, "revive_times", times)
			lualib:SysMsg_SendWarnMsg(self, "天藏浩荡，神品【复活戒指】替你挡下破灭一劫！")
			
			lualib:DelayCall(self,800, "on_player_pre_dietx", "");
			
			--lualib:SysMsg_SendWarnMsg(self, "因为你！")
			return false
		else
			return true
		end
	--else return	true
	--end
end
function on_player_pre_dietx(self)
	
	lualib:SendRoleHPNtf(self)
	
end
local is_skill_t = {
                            [1010] = 1,
                            [1011] = 1,
                            [1012] = 1,
                            [1013] = 1,
                            [1020] = 1,
                            [1021] = 1,
                            [1022] = 1,
                            [1023] = 1,
                            [1030] = 1,
                            [1031] = 1,
                            [1032] = 1,
                            [1033] = 1,
                            [1040] = 1,
                            [1041] = 1,
                            [1042] = 1,
                            [1043] = 1,
                            [1050] = 1,
                            [1051] = 1,
                            [1052] = 1,
                            [1053] = 1,
                            [1060] = 1,
                            [1061] = 1,
                            [1062] = 1,
                            [1063] = 1,
                            [25] = 1,
                        }

function on_post_equip(player, item)
    local itemName = lualib:KeyName(item)
    if itemName == "麻痹戒指" then
        lualib:AddTrigger(player, lua_trigger_damage_process, "damage_process")
    elseif itemName == "隐身戒指" then
        lualib:AddBuff(player, "隐身戒指", 20000000)
    end
    return true
end

function damage_process(self, target, skill_id)        
    local ringGuid1, ringGuid2 = lualib:Player_GetItemGuid(self, 10), lualib:Player_GetItemGuid(self, 11)
    local ringName1, ringName2 = "", ""
    if ringGuid1 ~= "" then
        ringName1 = lualib:KeyName(ringGuid1)
    end
    
    if ringGuid2 ~= "" then
        ringName2 = lualib:KeyName(ringGuid2)
    end
    --判断戒指位置是否有麻痹，有走麻痹流程，没有则删除触发器
    if ringName1 == "麻痹戒指" or ringName2 == "麻痹戒指" then
        --增加麻痹buff几率计算
        if is_skill_t[skill_id] == 1 then
            if math.random(1, 100) > 70 then
                lualib:AddBuff(target, "怪物麻痹3秒", 0)
            end
        end
    else
        lualib:RemoveTrigger(self, lua_trigger_damage_process, "")
    end
    
    return true
end

function on_trigger_billin(player, yb) 
	local name = lualib:Name(player)
	lualib:SysWarnMsg(player, "你充值了"..yb.."元宝")
	lualib:SysMsg_SendBroadcastMsg("恭喜"..name.."在线充值获得" .. yb ..  "元宝，如果你也想要请点击屏幕右下角商铺进行充值","[充值提示]")
end

function on_post_drop_one(map, role, item)
	local item_key = lualib:KeyName(item);
	local data = lualib:Item_DataRow(item_key);
	local isTip = data.TipDrop;
	if isTip == 1 then
		local map_name = lualib:Name(map);
		local item_name = lualib:Name(item);
		local item_x = lualib:X(item);
		local item_y = lualib:Y(item);
		if item_x < 10000 and item_y < 10000 then
			lualib:SysMsg_SendBroadcastColor("#IMAGE1900300001##COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..map_name.."]#COLORCOLOR_YELLOW#的["..item_x..","..item_y.."]！！！", "", 1, 12);
		end
	end
end