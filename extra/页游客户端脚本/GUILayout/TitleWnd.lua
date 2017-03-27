TitleWnd ={}
local ui = "<form> <dialog OnInit='TitleWnd.UIInit' id='TitleWnd' image='1806100012' x='224' y='67' w='384' h='505' center='true' drag='true' revmsg='true'>"
	.."	<image id='TitleImg' image='1805500015' x='130' y='11' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='lineImage1' image='1800600004' x='29' y='129' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<edit id='text1' x='49' y='68' w='100' h='23' revmsg='true' text_color='#2CA8E1' text='经验、功勋' font='SIMLI18'/>"
	.."	<richedit id='text2' x='78' y='93' w='247' h='24' revmsg='true' text_color='#645748' font='system'/>"
	.."	<button id='closeBtn' image='1805900080' x='327' y='5' w='34' h='38' OnLButtonUp='TitleWnd.CloseWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='experienceImg' image='1892100043' x='53' y='191' w='48' h='48' fitsize='true' check_point='0' revmsg='true'/>"
	.."	<edit id='text4' x='112' y='209' w='46' h='21' revmsg='true' text_color='#C2B6A0' text='经验：' font='system'/>"
	.."	<edit id='experienceNum' x='148' y='208' w='65' h='24' revmsg='true' text_color='#C27D39' font='system'/>"
	.."	<image id='exploitsImg' image='1802200022' x='53' y='255' w='42' h='42' check_point='0' revmsg='true'/>"
	.."	<edit id='text5' x='112' y='272' w='46' h='21' revmsg='true' text_color='#C2B6A0' text='功勋：' font='system'/>"
	.."	<edit id='exploitsNum' x='148' y='271' w='65' h='24' revmsg='true' text_color='#C27D39' font='system'/>"
	.."	<edit id='textFullStar' x='264' y='331' w='77' h='16' revmsg='true' visible='false' text_color='#C2B6A0' text='任务满星！' font='system'/>"
	.."	<button id='continueMission' image='1800000150' x='148' y='393' w='84' h='32' OnLButtonUp='TitleWnd.ContinueMission' revmsg='true' text='继续任务' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='buyNum' image='1800000150' x='148' y='393' w='84' h='32' OnLButtonUp='TitleWnd.PayYbRevMission' revmsg='true' text='购买1次' visible='false' text_color='#C2B6A0'/>"
	.."	<richedit id='buyNumInfo' x='158' y='425' w='150' h='20' revmsg='true' visible='false' font='system'/>"
	.."	<image id='TestWndChild_0' image='1806100000' x='40' y='147' w='224' h='28' revmsg='true'/>"
	.."	<image id='lineImage2' image='1800600004' x='30' y='370' w='327' h='2' check_point='0' revmsg='true'/>"

	.."	 <wnd id='wnd1' image='0' x='0' y='0' w='16' h='16' revmsg='true' visible='false'>"
	.."	<edit id='inf1' x='39' y='438' w='100' h='21' revmsg='true' text_color='#C2B6A0' text='任务剩余次数：' font='system'/>"
	.."	<edit id='inf2' x='121' y='441' w='15' h='17' revmsg='true' text_color='#FFD901' text='10' font='system'/>"
	.."	<edit id='inf3' x='39' y='458' w='200' h='17' revmsg='true' text_color='#00FF0C' font='system'/>"
	
	.."	<image id='starImg1' image='1806700025' x='49' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	.."	<image id='starImg2' image='1806700025' x='69' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	.."	<image id='starImg3' image='1806700025' x='89' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	.."	<image id='starImg4' image='1806700025' x='109' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	.."	<image id='starImg5' image='1806700025' x='129' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	.."	<image id='starImg6' image='1806700025' x='149' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	.."	<image id='starImg7' image='1806700025' x='169' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	.."	<image id='starImg8' image='1806700025' x='189' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	.."	<image id='starImg9' image='1806700025' x='209' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	.."	<image id='starImg10' image='1806700025' x='229' y='330' w='19' h='17' check_point='0' revmsg='true'/>"
	
	.."	<image id='starImgMagic1' image='3020301700' x='34' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='starImgMagic2' image='3020301700' x='54' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='starImgMagic3' image='3020301700' x='74' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='starImgMagic4' image='3020301700' x='94' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='starImgMagic5' image='3020301700' x='114' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='starImgMagic6' image='3020301700' x='134' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='starImgMagic7' image='3020301700' x='154' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='starImgMagic8' image='3020301700' x='174' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='starImgMagic9' image='3020301700' x='194' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='starImgMagic10' image='3020301700' x='214' y='316' w='19' h='17' type='animate' visible='false' check_point='0' revmsg='true'/>"
	
	.."	<button id='getMission' image='1800000150' x='148' y='393' w='84' h='32' OnLButtonUp='TitleWnd.ReceiveMission' revmsg='true' text='领取任务' text_color='#C2B6A0'/>"
	.."	<richedit id='updateNum' x='263' y='334' w='52' h='20' text='#SELECT#刷新等级#SELECTEND#' OnLButtonUp='TitleWnd.UpdateStarNum' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<richedit id='upgradeTitle' x='263' y='439' w='53' h='20' text='#SELECT#升级称号#SELECTEND#' OnLButtonUp='TitleWnd.OpenUpdateTitleWnd' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<button id='notice' image='1804600019' x='339' y='430' w='188' h='50' text='马上获得称号' visible='false' text_color='#DBC300'/>"
	.."	<button id='tips' image='1804600019' x='340' y='315' w='188' h='50' text='刷新10星任务' visible='false' text_color='#DBC300'/>"
	.." </wnd>"
	.."	 <wnd id='wnd2' image='0' x='0' y='10' w='16' h='16' revmsg='true' visible='false'>"
	.."	<edit id='info1' x='79' y='367' w='119' h='19' revmsg='true' text_color='#C2B6A0' text='花费       金币' font='system'/>"
	.."	<edit id='info2' x='107' y='368' w='58' h='18' revmsg='true' text_color='#FFD901' text='600000' font='system'/>"
	.."	<edit id='info3' x='78' y='400' w='119' h='19' revmsg='true' text_color='#C2B6A0' text='花费       金币' font='system'/>"
	.."	<edit id='info4' x='106' y='401' w='58' h='18' revmsg='true' text_color='#FFD901' text='300000' font='system'/>"
	.."	<richedit id='info5' x='238' y='367' w='74' h='20' text='#SELECT#领取3倍奖励#SELECTEND#' OnLButtonUp='TitleWnd.GetReward' revmsg='true' text_color='#00FF00' param='3' font='system'/>"
	.."	<richedit id='info6' x='238' y='400' w='75' h='20' text='#SELECT#领取2倍奖励#SELECTEND#' OnLButtonUp='TitleWnd.GetReward' revmsg='true' param='2' text_color='#00FF00' font='system'/>"
	.."	<richedit id='info7' x='238' y='433' w='77' h='20' text='#SELECT#免费领取奖励#SELECTEND#' OnLButtonUp='TitleWnd.GetReward' revmsg='true' param='1' text_color='#00FF00' font='system'/>"
	.."	<button id='GET_REWARD_TIP' image='1804600019' x='339' y='350' w='188' h='50' text='领三倍升级更快' visible='false' revmsg='false' text_color='#DBC300'/>"
	.." </wnd>"
	.." </dialog>"
	.."</form>"

function TitleWnd.main()
	local handle = GetWindow(nil,"TitleWnd")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	GenFormByString(ui)
end

	TitleWnd.rewardTb = nil
	TitleWnd.dayNum = 0
	TitleWnd.exploitLevel = 0
	TitleWnd.monsterNum = 0
	TitleWnd.Title_three = 0
	TitleWnd.questConst = 0
	
--UI Logic Code Start
function TitleWnd.UIInit(_Handle)
	
	TitleWnd.Handle = _Handle
	
	
	WndAddEffect(TitleWnd.Handle,"wnd1,updateNum",3020100300, -5, -5, 100, 0)
	WndAddEffect(TitleWnd.Handle,"info5",3020100500,-15,-7,150,0)
	
	CL:GetPlayerSelfProperty32(201)
	local lv = as3.tolua(LuaRet)
	if lv < 3 then
		local handle = GetWindow(_Handle, "wnd1, inf3")
		if handle ~= 0 then
			GUIEditSetTextM(handle, "成为vip3每日次数增加2次")
		end
	end
	
	UI:Lua_SubmitForm("功勋称号表单","Open_CM_Wnd","")

end

function TitleWnd.RedrawGUI(data)
	local hh = GetWindow(nil,"Achieve")
	if hh ~= 0 then
		GUIWndClose(hh)
	end
	hh = GetWindow(nil,"TaskOperationDlg")
	if hh ~= 0 then
		GUIWndClose(hh)
	end
	
	TitleWnd.rewardTb = data[2]
	TitleWnd.dayNum = data[5]
	TitleWnd.exploitLevel = tonumber(data[7])
	TitleWnd.Title_three = tonumber(data[10]) 
	TitleWnd.monsterNum = 0
	TitleWnd.questConst = tonumber(data[11]) 
	local isComplete = tonumber(data[1])
	local starNum = tonumber(data[3])
	local missionIng = tonumber(data[4])
	local payNum = tonumber(data[6])
	local handle = 0
	
	local Title_clink = tonumber(data[8]) 
	local ach_score = tonumber(data[9]) 
	
	handle = GetWindow(_Handle, "wnd1,tips")
	if handle ~= 0 then
		if Title_clink == 0 then 
			GUIButtonSetTextFont(handle,"SIMLI18") 
			GUIWndSetTextArrangeType(handle,10,0,0,0)
			TitleWnd.itemTweenUp01(handle) 
			GUIWndSetVisible(handle, true)
		end
	end
	handle = GetWindow(_Handle, "wnd1,notice")
	if handle ~= 0 then
		if ach_score >= 30000 and TitleWnd.exploitLevel == 0 then 
			GUIButtonSetTextFont(handle,"SIMLI18") 
			GUIWndSetTextArrangeType(handle,10,0,0,0)
			TitleWnd.itemTweenUp01(handle) 
			GUIWndSetVisible(handle, true)
			local _hand = GetWindow(TitleWnd.Handle, "wnd1,upgradeTitle")
			if _hand ~= 0 then
				GUIRichEditClear(_hand) 
				GUIRichEditAppendString(_hand, "#SELECT#领取称号#SELECTEND# ") 
				GUIWndSetHint(_hand, "<font color='#47B260'>称号可领取，点击链接领取称号</font>")
			end
		end
	end
	local ach_tb = {30000, 210000, 550000, 870000, 950000, 1380000, 2590000, 3450000, 4320000, 7120000, 999999999}
	local _hand = GetWindow(TitleWnd.Handle, "wnd1,upgradeTitle")
	if _hand ~= 0 then
		if ach_score >= ach_tb[TitleWnd.exploitLevel+1] then
			WndAddEffect(TitleWnd.Handle, "wnd1,upgradeTitle", 3020100300, -5, -5, 100, 0)
		else
			WndDelEffect(_hand)
		end
	end
	
	local costYb = ""
	if payNum <= 4 then
		costYb = ""..(math.pow(2, payNum) * 98)
	end
	TitleWnd.monsterNum = 6 + 2*starNum
	
	
	handle = GetWindow(TitleWnd.Handle, "wnd1,updateNum")
	if handle ~= 0 then
		GUIWndSetHint(handle, "<font color='#B8A085'>花费</font><font color='#FFD901'>10000</font><font color='#B8A085'>绑定金币刷新任务星级</font>")
	end
	handle = GetWindow(TitleWnd.Handle, "wnd1,inf2")
	if handle ~= 0 then
		GUIEditSetTextM(handle, TitleWnd.dayNum)
		if TitleWnd.dayNum ==0 then
			local color = MakeARGB(255,255,0,0)
			GUI:WndSetTextColorM(handle, color)
		end
	end
	if isComplete == 0 then  --任务未完成
		handle = GetWindow(TitleWnd.Handle, "wnd1")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		
		handle = GetWindow(TitleWnd.Handle, "wnd2")
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
		if missionIng == 0 then
			if TitleWnd.dayNum ~= 0 then  --剩余次数不为0
				handle = GetWindow(TitleWnd.Handle, "wnd1,getMission")
				if handle ~= 0 then
					GUIWndSetVisible(handle, true)
				end
			else   --为0
				handle = GetWindow(TitleWnd.Handle, "buyNum")
				if handle ~= 0 then
					GUIWndSetVisible(handle, true)
					GUIButtonSetShine(handle,true)
					if payNum > 4 then
						GUIWndSetEnableM(handle,false)
						GUIButtonSetShine(handle,false)
					end
				end
				handle = GetWindow(TitleWnd.Handle, "wnd1,getMission")
				if handle ~= 0 then
					GUIWndSetVisible(handle, false)
				end
				handle = GetWindow(TitleWnd.Handle, "buyNumInfo")
				if handle ~= 0 then
					if payNum <= 4  then
						GUIWndSetVisible(handle, true)		
						--[[if tonumber(costYb) > 100 then
							GUIWndSetPosM(handle, 141, 453)
						end
						if tonumber(costYb) > 1000 then
							GUIWndSetPosM(handle, 137, 453)
						end
						if tonumber(costYb) > 10000 then
							GUIWndSetPosM(handle, 135, 453)
						end
						if tonumber(costYb) > 100000 then
							GUIWndSetPosM(handle, 133, 453)
						end
						if tonumber(costYb) > 1000000 then
							GUIWndSetPosM(handle, 131, 453)
						end--]]
						GUIRichEditClear(handle) 
						GUIRichEditAppendString(handle, "#COLORCOLOR_DARKGOLD#".."消耗".."#COLOREND#" .."#COLORCOLOR_GOLD#"..costYb.."#COLOREND#".."#COLORCOLOR_DARKGOLD#".."元宝".."#COLOREND#" )
					else
						GUIRichEditClear(handle) 
						GUIRichEditAppendString(handle, "#COLORCOLOR_DARKGOLD#".."购买次数已达上限".."#COLOREND#")
					end
				end
			end
			handle = GetWindow(TitleWnd.Handle, "continueMission")
			if handle ~= 0 then
				GUIWndSetVisible(handle, false)
			end
			handle = GetWindow(TitleWnd.Handle, "wnd1,updateNum")
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
			end
		else   --任务进行中
			handle = GetWindow(TitleWnd.Handle, "wnd1,getMission")
			if handle ~= 0 then
				GUIWndSetVisible(handle, false)
			end
			handle = GetWindow(TitleWnd.Handle, "continueMission")
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
			end
			handle = GetWindow(TitleWnd.Handle, "wnd1,updateNum")
			if handle ~= 0 then
				GUIWndSetVisible(handle, false)
			end
		end
		
		for i = 1 , 10 do  --显示任务星级
			--ImageSetImageID(TitleWnd.Handle, "wnd1,starImg" .. i, 1806700025 )
			handle = GetWindow(TitleWnd.Handle, "wnd1,starImgMagic" .. i)
			if handle ~= 0 then
				GUIWndSetVisible(handle, false)
			end
		end
		for i = 1 , starNum do
			--ImageSetImageID(TitleWnd.Handle, "wnd1,starImg" .. i, 1806700026 )
			handle = GetWindow(TitleWnd.Handle, "wnd1,starImgMagic" .. i)
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
			end
		end
		if starNum == 10 then
			handle = GetWindow(TitleWnd.Handle,"textFullStar")
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
			end
			handle = GetWindow(TitleWnd.Handle,"wnd1,updateNum")
			if handle ~= 0 then
				GUIWndSetVisible(handle, false)
			end
		end
	else  --任务完成
		handle = GetWindow(TitleWnd.Handle, "wnd2")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		
		handle = GetWindow(TitleWnd.Handle, "wnd1")
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
	
		if TitleWnd.Title_three == 0 then 
			handle = GetWindow(TitleWnd.Handle, "wnd2,GET_REWARD_TIP")
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
				GUIWndSetTextArrangeType(handle,10,0,0,0)
				TitleWnd.itemTweenUp01(handle)
				GUIButtonSetTextFont(handle,"SIMLI18")
			end
		end
	end
	
	TitleWnd.UpdateMissionInfo(starNum)
end


function TitleWnd.UpdateStarUI(a)
	local handle = 0            --刷新任务星级
	for i = 1 , 10 do
		--ImageSetImageID(TitleWnd.Handle, "wnd1,starImg" .. i, 1806700025 )
		handle = GetWindow(TitleWnd.Handle, "wnd1,starImgMagic" .. i)
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
	end
	handle = GetWindow(TitleWnd.Handle, "wnd1,starImg1")
	if handle ~= 0 then
		WndAddEffect(TitleWnd.Handle,"wnd1,starImg1",1089400000,138,7,100,1)
	end
	for i = 1 , a do
		--ImageSetImageID(TitleWnd.Handle, "wnd1,starImg" .. i, 1806700026 )
		handle = GetWindow(TitleWnd.Handle, "wnd1,starImgMagic" .. i)
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
	end
	if a == 10 then
		handle = GetWindow(TitleWnd.Handle,"textFullStar")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow(TitleWnd.Handle,"wnd1,updateNum")
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
	end
	TitleWnd.UpdateMissionInfo(a)
end

function TitleWnd.UpdateMissionInfo(a)
	local handle = 0               --刷新奖励信息
	handle = GetWindow(TitleWnd.Handle,"experienceNum")
	if handle ~= 0 then
		GUIEditSetTextM(handle,TitleWnd.rewardTb[a][1])
	end
	handle = GetWindow(TitleWnd.Handle,"exploitsNum")
	if handle ~= 0 then
		GUIEditSetTextM(handle,TitleWnd.rewardTb[a][2])
	end
	--任务需求
	local playerLevel = 0
	if CLGetPlayerSelfProperty32(ROLE_PROP32_LEVEL) then
		playerLevel = as3.tolua(LuaRet)
	end
	TitleWnd.monsterNum = 6 + 2*a
	handle = GetWindow(TitleWnd.Handle, "text2")
	if handle ~= 0 then
		GUIRichEditClear(handle)
	end
	--[[if handle ~= 0 then
		GUIRichEditAppendString(handle, "前往指定地点杀死"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
	end--]]
	--[[if tonumber(TitleWnd.exploitLevel) == 0 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往毒虫洞杀死"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	elseif TitleWnd.exploitLevel >= 1 and TitleWnd.exploitLevel <= 5 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往邪庙杀死"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	else
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往魔月峡谷杀死"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	end--]]
	if TitleWnd.questConst == 1 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往毒虫洞杀死"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	end
	if TitleWnd.questConst == 4 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往邪庙一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	end
	if TitleWnd.questConst == 2 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往食人魔洞穴一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	end
	if TitleWnd.questConst == 3 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往天荒阵一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	end
	if TitleWnd.questConst == 5 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往蜘蛛洞一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	end
	if TitleWnd.questConst == 6 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往牛魔洞一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	end
	if TitleWnd.questConst == 7 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往骸骨洞一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	end
	if TitleWnd.questConst == 8 then
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "前往永夜之地一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
		end
	end
end

function TitleWnd.UpdateStarNum()  --刷新任务星级
	local handle = GetWindow(TitleWnd.Handle, "wnd1,tips")
	if handle ~= 0 then 
		GUIWndSetVisible(handle, false)
	end
	UI:Lua_SubmitForm("功勋称号表单","UpdateStarNum","")
end

function TitleWnd.ReceiveMission()	  --接受任务
	UI:Lua_SubmitForm("功勋称号表单","Receive_CM_Mission","")
end

function TitleWnd.ContinueMission()  --继续任务
	UI:Lua_SubmitForm("功勋称号表单","Continue_CM_Mission","")
end

function TitleWnd.PayYbRevMission()  --购买任务次数
	UI:Lua_SubmitForm("功勋称号表单","PayYbRev_CM_Mission","")
end

function TitleWnd.GetReward(h)       --领取奖励
	local index = GUIWndGetParam(h)
	UI:Lua_SubmitForm("功勋称号表单","Get_CM_Reward",index)
end

function TitleWnd.MsgUp(msg)   --消息提示
	local handle = GetWindow(TitleWnd.Handle,"lineImage2")
	local color = MakeARGB(255,255,0,0)
	window_msg_up(handle, msg, 55, -10, 30, color, 2)
end

function TitleWnd.OpenUpdateTitleWnd()  --打开升级称号窗口
	local handle = 0
	if TitleWnd.exploitLevel < 10 then
		if TitleWnd.Handle ~= 0 then 
			GUIWndSetVisible(TitleWnd.Handle, false)	
		end
		handle = GetWindow(nil, "Achieve")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)	
			UI:Lua_SubmitForm("功勋称号表单", "main", "")
		else
			UI:Lua_OpenWindow("", "Achieve.lua")
		end
		
	else
		TitleWnd.MsgUp("您的称号已经满级！")
	end
end

function TitleWnd.itemTweenUp01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='337' /></Tween>", "TitleWnd.itemTweenDown01("..hand..")")
end 
function TitleWnd.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='327' /></Tween>" , "TitleWnd.itemTweenUp01("..hand..")")
end 

function TitleWnd.CloseWnd()
	if TitleWnd.Handle ~= 0 then 
		GUIWndClose(TitleWnd.Handle)
	end
end
TitleWnd.main()