ActivityWnd = {}
function ActivityWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"ActivityWnd",0,30,50)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,937, 490)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"mainWndBkg",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600079, 1850600081, 1850600085, 1850600087, 1850600083, 1850600080, 1850600086, 1850600082, 1850600084)
		GUI:WndSetSizeM(_GUIHandle,1050, 532)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"titleImgLeft",1850100038,389,10)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"titleImgRight",1850100039,563,10)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,97, 32)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"title",497,7,63,29)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"活 动")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1850000385,1008,3)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,39, 39)
		--//注册关闭窗口
		GUI:WndRegistScript(_GUIHandle,1002, "ActivityWnd.CloseWnd")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"contentBkg",0,31,49)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
		GUI:WndSetSizeM(_GUIHandle,630, 455)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"mainContentBkg",0,50,88)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029,1850600026, 1850600032, 1850600028, 1850600030)
		GUI:WndSetSizeM(_GUIHandle,590, 395)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"activityTime",95,50,107,39)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"活动时间")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"activityName",268,50,107,39)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"活动名称")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"joinLevel",420,50,107,39)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"参加等级")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"operation",556,50,107,39)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"操作")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
	end
	
	
--[[	_GUIHandle = GUI:EditCreate(_Parent,"timeLine1",76,97,121,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine1",248,97,116,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine1",430,97,58,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine1",526,95,101,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine2",76,152,121,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine2",248,152,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine2",430,152,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine2",526,150,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine3",76,207,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine3",248,207,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine3",430,207,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine3",526,205,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine4",76,262,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine4",248,262,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine4",430,262,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine4",526,260,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine5",76,317,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine5",248,317,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine5",430,317,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine5",526,315,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine6",76,372,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine6",248,372,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"啊啊")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine6",430,372,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine6",526,370,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"timeLine7",76,427,121,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameLine7",248,427,116,37)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"膜拜城主")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelLine7",430,427,58,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:EditSetTextM(_GUIHandle,"40")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"statusLine7",526,425,101,37)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"未开始")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn1",1851700000,535,95)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn2",1851700000,535,150)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn3",1851700000,535,205)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn4",1851700000,535,260)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn5",1851700000,535,315)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn6",1851700000,535,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn7",1851700000,535,425)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:WndSetSizeM(_GUIHandle,86, 46)
		GUI:WndSetVisible(_GUIHandle, false)
	end--]]
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"detailBkg",0,682,49)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
		GUI:WndSetSizeM(_GUIHandle,333, 455)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"activityNameBkg",1850500021,650,51)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,360, 42)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"activityRewardBkg",1850100031,671,98)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,167, 40)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"activityReward",710,104,124,26)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"活动奖励：")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"activityRewardDetail",697,156,300,107)
	if _GUIHandle ~= 0 then
		GUI:RichEditAppendString(_GUIHandle,"dasd按时大大说都按时、随便打几个字意思一下。啊啊啊啊啊啊啊啊啊啊asdasdasdsa啊啊啊啊啊啊啊啊啊啊啊")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"activityInfoBkg",1850100031,671,277)
	if _GUIHandle ~= 0 then
	
		
		GUI:WndSetSizeM(_GUIHandle,167, 40)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"activityInfo",710,282,124,26)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"活动说明：")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"activityInfoDetail",695,326,300,286)
	if _GUIHandle ~= 0 then
		GUI:RichEditAppendString(_GUIHandle,"dasd按时大大说都按时、随便打几个字意思一下。啊啊啊啊啊啊啊啊啊啊asdasdasdsa啊啊啊啊啊啊啊啊啊啊啊")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"selectedActivityBkg",755,50,187,33)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"元宝嘉年华")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	ActivityWnd.UIInit(_Parent)
end

--UI Logic Code Start
function ActivityWnd.UIInit(_Handle)
	ActivityWnd.handle = _Handle
	local ClipWndHandle = GUI:WndCreateWnd(_Handle,"ActivityWndListClipWnd",0,50,100)
	if ClipWndHandle then
		GUI:WndSetFlagsM(ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(ClipWndHandle,590, 380)
		ActivityWnd.ClipWndHandle = ClipWndHandle
	end
	
	ActivityWnd.CreateRankList()
end

--//创建活动列表内容
function ActivityWnd.CreateRankList()
	local _GUIHandle = 0
	local totalCount = 100
	local _Parent = ActivityWnd.ClipWndHandle
	for i = 1, totalCount do
		_GUIHandle = GUI:EditCreate(_Parent,"sustainTime"..i,26,5+55*(i-1),121,37)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,"11:11-22:22")
			GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"activityName"..i,198,5+55*(i-1),116,37)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,"元宝嘉年华"..i)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"levelQuire"..i,380,5+55*(i-1),58,37)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 243, 185, 116))
			GUI:EditSetTextM(_GUIHandle,"100")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"activityStatus"..i,476,5+55*(i-1),101,37)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, 4290950816)
			GUI:EditSetTextM(_GUIHandle,"未开始")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
		
		_GUIHandle = GUI:ButtonCreate(_Parent,"joinBtn"..i,1851700000,485,3+55*(i-1))
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 1)
			GUI:WndSetSizeM(_GUIHandle,86, 46)
			
			if i%2 == 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
		end
	end
end

function ActivityWnd.CloseWnd()
	GUI:WndClose(ActivityWnd.handle)
end

ActivityWnd.main()




