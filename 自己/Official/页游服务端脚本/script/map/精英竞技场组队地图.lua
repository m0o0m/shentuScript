local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/精英竞技场")
require("npc/竞技场助手")

--------------创建副本时触发------------------
function on_map_create(map)
	lualib:SetInt(map,"jyjjc_chuangjian",lualib:GetAllTime()) --记录副本创建时间
	lualib:SetInt(map,"jyjjc_duiwujifen1",500) --队伍1积分
	lualib:SetInt(map,"jyjjc_duiwujifen2",500) --队伍2积分
	
    lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map") --进入副本回调
    lualib:AddTrigger(map, lua_trigger_kill, "on_trigger_kill") --杀人回调
	lualib:AddTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive") --死亡回调
	lualib:AddTrigger(map, lua_trigger_dungeon_end, "on_dungeon_end") --副本时间到后回调
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map") --离开地图触发
	
	lualib:Map_GenNpc(map, "竞技场助手", 37, 40, 0, 4)
	lualib:Map_GenNpc(map, "竞技场助手", 23, 57, 0, 4)
	
	if not lualib:AddTimerEx(map,1,30000,1,"leitaikaishi",map) then --启动比赛开始定时器，30秒后执行。
		lualib:Error("精英竞技场组队赛比赛开始定时器生成失败！")
	else
		lualib:Error("精英竞技场组队赛比赛开始定时器生成成功！")
	end
	
	if not lualib:AddTimerEx(map,2,30000,10,"renshubuchong",map) then --启动人数补充定时器。
		lualib:Error("精英竞技场组队赛人数补充定时器生成失败！")
	else
		lualib:Error("精英竞技场组队赛人数补充定时器生成成功！")
	end
	
	if not lualib:AddTimerEx(map,3,30000,-1,"renshupanduan",map) then --启动在场人数判断定时器。
		lualib:Error("精英竞技场组队赛人数判断定时器生成失败！")
	else
		lualib:Error("精英竞技场组队赛人数判断定时器生成成功！")
	end--]]
end

--------------有人退出副本触发------------------
--执行人数判断函数，为地图上人数为0时删除副本
function on_trigger_leave_map(player)
	lualib:Player_DelBuff(player,"竞技场反方")  --人物阵营区分
	lualib:Player_DelBuff(player,"竞技场正方")  --人物阵营区分
	lualib:SetCamp(player,0) --人物取消玩家阵营
	renshupanduan(lualib:MapGuid(player)) --人数判断
end

--------------比赛开始触发------------------
function leitaikaishi(guid, timer_id,map)
	
	local fanwei = 0
	if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
		fanwei = lualib:Map_GetHeight(map)
	else
		fanwei = lualib:Map_GetWidth(map)
	end
	local mingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
	
	chuansongruchang(map)
		
	if #mingdan ~= 0 then
		for i=1,#mingdan do
			--lualib:Player_DelBuff(mingdan[i],"精英竞技场入场") --删除buff
			lualib:SysMsg_SendCenterMsg(0, "比赛正式开始！持续15分钟，击败敌对玩家可以获得积分，比赛结束后积分最高的队伍获胜。",mingdan[i])
		end
	end
	lualib:SetInt(map,"jyjjc_kaishi",1) --比赛开始状况变更
	lualib:SysMsg_SendMapMsg(map, "比赛正式开始！持续15分钟，击败敌对玩家可以获得积分，比赛结束后积分最高的队伍获胜。")
	
	renshupanduan(map) --人数判断
	lualib:AddTimerEx(map,4,110000,1,"chuansongruchangtishi",map) --传送入场提示
	lualib:AddTimerEx(map,6,300000,1,"daojishi_5fen",map) --比赛倒计时5分钟提示
	lualib:AddTimerEx(map,7,600000,1,"daojishi_10fen",map) --比赛倒计时10分钟提示
end

--------------倒计时5分钟提示------------------
function daojishi_5fen(map)
	lualib:SysMsg_SendMapMsg(map, "比赛还有10分钟结束！")
end

--------------倒计时10分钟提示------------------
function daojishi_10fen(map)
	lualib:SysMsg_SendMapMsg(map, "比赛还有5分钟结束！")
end

--------------传送入场提示------------------
function chuansongruchangtishi(map)
	local fanwei = 0
	if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
		fanwei = lualib:Map_GetHeight(map)
	else
		fanwei = lualib:Map_GetWidth(map)
	end
	local mingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
		
	for k,v in pairs(mingdan) do
		if lualib:HasBuff(v,"精英竞技场准备") == true then
			lualib:SysMsg_SendCenterMsg(0, "10秒以后将传送你至中央比赛场地！",v)
			lualib:SysMsg_SendWarnMsg(v,"10秒以后将传送你至中央比赛场地！")
		end
	end
	
	lualib:AddTimerEx(map,5,10000,1,"chuansongruchang",map) --传送入场
	lualib:AddTimerEx(map,4,110000,1,"chuansongruchangtishi",map) --传送入场提示
end

--------------传送入场------------------
function chuansongruchang(map)
	local fanwei = 0
	if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
		fanwei = lualib:Map_GetHeight(map)
	else
		fanwei = lualib:Map_GetWidth(map)
	end
	local mingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
	
	--比赛正式开始后将还在安全区的玩家传送到比赛场地
	for k,v in pairs(mingdan) do
		if lualib:HasBuff(v,"精英竞技场准备") == true then
			move("",v) --传送到比赛场地中间
		end
	end
end

--------------人数判断------------------
function renshupanduan(map)
	if lualib:Map_IsDgnExist(map) == true then
	else
		return
	end
		
	gengxinduiwu(map) --更新队伍信息
	local p1 = renshutongji(map,1) --人数统计
	local p2 = renshutongji(map,2) --人数统计
	if lualib:GetAllTime() - lualib:GetInt(map,"jyjjc_chuangjian") >= 30 then --检测是否开场30秒以后
		if p1 == 0 or p2 == 0 then
			lualib:Map_DestroyDgn(map) --摧毁副本
		end
	end
end

--------------副本被摧毁后------------------
function on_dungeon_end(map, keyname)
--死亡的玩家自动复活
--lualib:Player_Relive(player,"", 45, 31, 3, 50) --复活
local longcheng_map = lualib:Map_GetMapGuid("龙城")


	local sheng,bai,jifencha = 0,0,0 --胜利队伍、失败队伍、双方积分差值
	gengxinduiwu(map) --更新队伍信息
	
	local i1 = renshutongji(map,1) --人数统计
	local i2 = renshutongji(map,2) --人数统计
	
	if lualib:GetInt(map,"jyjjc_duiwujifen1") > lualib:GetInt(map,"jyjjc_duiwujifen2") or i2 == 0 then
		sheng = 1
		bai = 2
		jifencha = lualib:GetInt(map,"jyjjc_duiwujifen1") - lualib:GetInt(map,"jyjjc_duiwujifen2")
	elseif lualib:GetInt(map,"jyjjc_duiwujifen1") < lualib:GetInt(map,"jyjjc_duiwujifen2") or i1 == 0 then
		sheng = 2
		bai = 1
		jifencha = lualib:GetInt(map,"jyjjc_duiwujifen2") - lualib:GetInt(map,"jyjjc_duiwujifen1")
	else --如果平手
		for i=1,2 do
			while true do --胜利方公告
				local s = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
				local p1 = 0
				local p2 = 1
				local p3 = 0 --该加的竞技场积分
				while true do
					p1 = string.find(s,",",p1+1)	
					if p1 == nil then
						break
					end
							
					local player1 = string.sub(s,p2,p1-1)
					p2 = p1+1
					if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
						if lualib:GetStr(map,"jyjjc_dengji") == "gaoji" then
							p3 = 150
						elseif lualib:GetStr(map,"jyjjc_dengji") == "diji" then
							p3 = 120
						else
							break
						end
						lualib:Player_Relive(player1,longcheng_map,238, 228, 3, 50) --复活
						lualib:SetInt(player1, "jjc_rongyao", lualib:GetInt(player1, "jjc_rongyao")+p3) --荣耀增加
						lualib:SysMsg_SendMsgDlg(player1, 1, "#COLORCOLOR_GOLD#比赛结束，双方#COLOREND##COLORCOLOR_GREENG#平手#COLOREND#\n\n本场积分为 #COLORCOLOR_GREENG#"..lualib:GetInt(map,"jyjjc_duiwujifen"..i).."："..lualib:GetInt(map,"jyjjc_duiwujifen"..i).."#COLOREND#  荣耀值+#COLORCOLOR_ORANGE#"..p3.."#COLOREND#\n\n现有荣耀值：#COLORCOLOR_ORANGE#"..lualib:GetInt(player1, "jjc_rongyao").."#COLOREND##BUTTON0#确定#BUTTONEND#", 100, "guanbi", "")
						end
				end
				break
			end
		end
		return
	end
	
	while true do --胜利方公告
		local s = lualib:GetStr(map,"jyjjc_duiwuxinxi"..sheng)
		local p1 = 0
		local p2 = 1
		local p3 = 0 --该加的竞技场积分
		while true do
			p1 = string.find(s,",",p1+1)
			if p1 == nil then
				break
			end
					
			local player1 = string.sub(s,p2,p1-1)
			p2 = p1+1
			if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
				if lualib:GetStr(map,"jyjjc_dengji") == "gaoji" then
					p3 = 200+jifencha/5
				elseif lualib:GetStr(map,"jyjjc_dengji") == "diji" then
					p3 = math.ceil(160+jifencha/5/100*80)
				else
					break
				end
				lualib:Player_Relive(player1,longcheng_map,238, 228, 3, 50) --复活
				lualib:SetInt(player1, "jjc_rongyao", lualib:GetInt(player1, "jjc_rongyao")+p3) --荣耀增加
				lualib:SysMsg_SendMsgDlg(player1, 1, "#COLORCOLOR_GOLD#比赛结束，你的队伍#COLOREND##COLORCOLOR_GREENG#获胜#COLOREND#\n\n本场积分为 #COLORCOLOR_GREENG#"..lualib:GetInt(map,"jyjjc_duiwujifen"..sheng).."："..lualib:GetInt(map,"jyjjc_duiwujifen"..bai).."#COLOREND#  荣耀值+#COLORCOLOR_ORANGE#"..p3.."#COLOREND#\n\n现有荣耀值：#COLORCOLOR_ORANGE#"..lualib:GetInt(player1, "jjc_rongyao").."#COLOREND##BUTTON0#确定#BUTTONEND#", 100, "guanbi", "")
			end
		end
		break
	end
	
	while true do --失败方公告
		local s = lualib:GetStr(map,"jyjjc_duiwuxinxi"..bai)
		local p1 = 0
		local p2 = 1
		local p3 = 0 --该加的竞技场积分
		while true do
			p1 = string.find(s,",",p1+1)	
			if p1 == nil then
				break
			end
					
			local player1 = string.sub(s,p2,p1-1)
			p2 = p1+1
			if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
				if lualib:GetStr(map,"jyjjc_dengji") == "gaoji" then
					p3 = math.ceil(100 + 100 * math.sin(math.pi / (2 * math.sqrt(jifencha + 1))))
				elseif lualib:GetStr(map,"jyjjc_dengji") == "diji" then
					p3 = math.ceil(80 + 80 * math.sin(math.pi / (2 * math.sqrt(jifencha + 1))))
				else
					break
				end
				lualib:Player_Relive(player1,longcheng_map,238, 228, 3, 50) --复活
				lualib:SetInt(player1, "jjc_rongyao", lualib:GetInt(player1, "jjc_rongyao")+p3) --荣耀增加
				lualib:SysMsg_SendMsgDlg(player1, 1, "#COLORCOLOR_GOLD#比赛结束，你的队伍#COLOREND##COLORCOLOR_GREENG#获败#COLOREND#\n\n本场积分为 #COLORCOLOR_GREENG#"..lualib:GetInt(map,"jyjjc_duiwujifen"..bai).."："..lualib:GetInt(map,"jyjjc_duiwujifen"..sheng).."#COLOREND#  荣耀值+#COLORCOLOR_ORANGE#"..p3.."#COLOREND#\n\n现有荣耀值：#COLORCOLOR_ORANGE#"..lualib:GetInt(player1, "jjc_rongyao").."#COLOREND##BUTTON0#确定#BUTTONEND#", 100, "guanbi", "")
			end
		end
		break
	end
end

--------------更新队伍信息------------------
function gengxinduiwu(map)
	--更新队伍信息，清除不在场的玩家
	for i=1,2 do
		local v1 = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
		local p1 = 0
		local p2 = 1
		while true do
			p1 = string.find(v1,",",p1+1)	
			if p1 == nil then
				break
			end
					
			local player1 = string.sub(v1,p2,p1-1)
			p2 = p1+1
			if lualib:Player_IsOnline(player1) == true or lualib:MapGuid(player1) == map then
			else
				--从队伍信息中删除
				v1 = string.gsub(v1,player1..",","")
			end
		end
		lualib:SetStr(map,"jyjjc_duiwuxinxi"..i,v1)
	end
end

--------------人数统计------------------
function renshutongji(map,i)
	local v1 = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
	local p1 = 0
	local p2 = 1
	local p3 = 0 --在场人数
	while true do
		p1 = string.find(v1,",",p1+1)
		if p1 == nil then
			break
		end
		
		local player1 = string.sub(v1,p2,p1-1)
		p2 = p1+1
		if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
			p3 = p3+1
		end
	end
	return p3
end

--------------人数补充------------------
function renshubuchong(guid, timer_id,map)
	gengxinduiwu(map) --更新队伍信息
	for i=1,2 do
		local p2 = renshutongji(map,i) --统计各队伍到场人数
	--如果人数不够，从报名库中添加玩家进来
		if p2 < 5 then
			local p3 = 5-p2
				for i1=1,p3 do
					local mingdan = lualib:GetStr("0", "jyjjc_"..lualib:GetStr(map,"jyjjc_dengji").."1baoming")
					
					if mingdan == "" then
						break
					end
					
					mingdan = json.decode(mingdan)
					
					if #mingdan > 0 then
					else
						break
					end
					
					for k,v in pairs(mingdan) do
						if lualib:Player_IsOnline(v) == true then
							--如果对方在线发送邀请
							lualib:SetStr(v,"jyjjc_zuduiditu",map) --给玩家记录比赛场地的地图标识符
							
							local msg = ""
							if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..v.."\"") ~= nil then
								msg = "diji"
							elseif string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..v.."\"") ~= nil then
								msg = "gaoji"
							else
								return
							end
							shanchubaoming(msg,v)
							
							table.remove(mingdan,1)
							lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan))
							if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
								lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
							end
							
							local s1 = ""
							if i == 1 then
								s1 = "jyjjc_duiwuxinxi1"
							elseif i == 2 then
								s1 = "jyjjc_duiwuxinxi2"
							end
							lualib:SetStr(map,s1,lualib:GetStr(map,s1)..v..",") --记录进队伍信息中
							lualib:Player_SetDgnTicket(v,map) --获得进入比赛场地的资格
							lualib:SysMsg_SendMsgDlg(v, 1, "你报名的组队竞技场已经匹配完毕，现在就可以入场，点击确定即可入场！#BUTTON0#确定入场#BUTTONEND##BUTTON0#取消#BUTTONEND#", 100, "tanzuduiruchang", "guanbi")
							break
						end
					end
				end
		end
	end
end 

--------------进入副本回调------------------
function on_trigger_enter_map(player)
	local map = lualib:MapGuid(player)
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#23#55#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#23#56#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#22#54#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#22#55#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#24#56#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#24#57#0#0")
	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#37#41#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#37#42#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#36#41#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#36#40#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#35#40#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#35#39#0#0")
	
--	if lualib:GetAllTime() - lualib:GetInt(lualib:MapGuid(player),"jyjjc_chuangjian") < 30 then --检测是否开场30秒以后，如果30秒以后不增加buff
		--lualib:Player_AddBuff(player,"精英竞技场入场",0) --进入以后不可释放技能，不可移动buff
		--lualib:SysMsg_SendMsgDlg(player, 1, "比赛开始前暂时不可移动，不可攻击，请耐心等待比赛开始。#BUTTON0#确定#BUTTONEND#", 100, "guanbi", "")
--	else
--	end
	
	lualib:Player_ChangeAttackMode(player,6) --进入阵营攻击模式
	if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi1"),player) ~= nil then
		lualib:SetCamp(player,1) --人物阵营设置
		lualib:Player_AddBuff(player,"竞技场正方",0)  --人物阵营区分
	elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi2"),player) ~= nil then
		lualib:SetCamp(player,2) --人物阵营设置
		lualib:Player_AddBuff(player,"竞技场反方",0)  --人物阵营区分
	end
	
	lualib:SetHp(player,lualib:Hp(player,true), false)--生命值恢复满
	lualib:SetMp(player,lualib:Mp(player,true), false)--魔法值恢复满
	lualib:SysMsg_SendWarnMsg(player,"头顶与你标记一样的为队友，反之为敌对阵营。准备时间30秒，时间到以后将传送你至中央比赛场地！")
	
	lualib:SetInt(player, "jyjjc_zuduicanjiacishu",lualib:GetInt(player, "jyjjc_zuduicanjiacishu")+1) --参加组队赛次数增加
	lualib:Player_AddBuff(player,"精英竞技场准备",0) --给玩家增加无敌和不能攻击的buff
end

function guanbi()
	return ""
end

--------------杀人回调------------------
function on_trigger_kill(killer, victim)
	local map = lualib:MapGuid(killer)
	local p1,p2 = 0
	if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi".. 1),killer) ~= nil then
		p1 = 1
	elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi".. 2),killer) ~= nil then
		p1 = 2
	else
		return
	end
	
	if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi".. 1),victim) ~= nil then
		p2 = 1
	elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi".. 2),victim) ~= nil then
		p2 = 2
	else
		return
	end
	
--[[	if lualib:GetInt(map,"jyjjc_duiwujifen"..p2) <= 0 then --如果积分低于0便调整至0
		lualib:SetInt(map,"jyjjc_duiwujifen"..p2,1)
	end
	
	if lualib:GetInt(map,"jyjjc_duiwujifen"..p2) <= 0 then --如果积分低于0便调整至0
		lualib:SetInt(map,"jyjjc_duiwujifen"..p2,1)
	end]]
	
	if p1 ~= p2 then --判断杀人者和被杀者是否为一个队
		local n1 = lualib:GetInt(map,"jyjjc_duiwujifen"..p1) --队伍1的总积分
		local n2 = lualib:GetInt(map,"jyjjc_duiwujifen"..p2) --队伍2的总积分
		local i1 = n1+math.floor(10*(n2/n1))
		local i2 = n2-math.floor(5*(n2/n1))
		n1 = i1
		n2 = i2
		
		if n1 > 1121 then
			n1 = 1121
		end
		
		if n2 > 1121 then
			n2 = 1121
		end
		
		lualib:SetInt(map,"jyjjc_duiwujifen"..p1,n1) --自己队伍增加积分
		lualib:SetInt(map,"jyjjc_duiwujifen"..p2,n2) --对方队伍减少积分
	else
		return
	end
	
	
	lualib:SysMsg_SendWarnMsg(killer,"您击败了"..lualib:KeyName(victim).."。")
	
	for i=1,2 do
		while true do
			local s = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
			local p1 = 0
			local p2 = 1
			while true do
				p1 = string.find(s,",",p1+1)	
				if p1 == nil then
					break
				end
						
				local player1 = string.sub(s,p2,p1-1)
				p2 = p1+1
				if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
					if i == 1 then
						lualib:SysMsg_SendWarnMsg(player1,"你的队伍得分："..lualib:GetInt(map,"jyjjc_duiwujifen1").."，敌对队伍得分："..lualib:GetInt(map,"jyjjc_duiwujifen2").."。")
					elseif i == 2 then
						lualib:SysMsg_SendWarnMsg(player1,"你的队伍得分："..lualib:GetInt(map,"jyjjc_duiwujifen2").."，敌对队伍得分："..lualib:GetInt(map,"jyjjc_duiwujifen1").."。")
					end
				end
			end
			break
		end
	end
end

--------------死亡回调------------------
function on_trigger_player_relive(player)
	lualib:ProgressBarStart(player, 15000, "复活中...", "on_relive_complete", "guanbi", "") --启动复活条
	return false
end

function on_relive_complete(player, param)
	local map = lualib:MapGuid(player)
	local hp = lualib:Hp(player,true)
	lualib:SetHp(player,hp,false)
	if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi1"),player) ~= nil then
		lualib:Player_Relive(player,"", 45, 31, 3, 100) --复活
	elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi2"),player) ~= nil then
		lualib:Player_Relive(player,"", 17, 64, 3, 100) --复活
	end
	
	lualib:Player_AddBuff(player,"精英竞技场准备",0) --复活以后给玩家增加无敌和不能攻击的buff
end