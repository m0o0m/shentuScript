QuestDlg = {}
function QuestDlg.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	if _Parent then
		GUI:WndSetPosM(_Parent, (_DeviceSizeX - 900) / 2, (_DeviceSizeY - 600) / 2)
	end

	--大背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 900, 552)
	end

	--第二层背景
	_GUIHandle = GUI:ImageCreate(_Parent,"TopBgImage",0,50,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 800, 452)
	end

	--左边背景
	_GUIHandle = GUI:ImageCreate(_Parent,"LBgImage",0, 54, 106)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 248, 380)
	end

	--右边背景
	_GUIHandle = GUI:ImageCreate(_Parent,"RBgImage",0, 312, 106)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 500, 380)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"wing_Lefttitle",1850100038, 303, 10)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:EditCreate(_Parent,"title_edit", 425, 15,60,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetTextM(_GUIHandle,"任 务")
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"wing_Righttitle",1850100039,507,10)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"Imgtitle",1850500021,385,110)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"QuestBtn0",1850100000,548,49)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"QuestBtn1",1850100004,691,49)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423, 848 ,0)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OnClose")
		GUI:WndSetParam(_GUIHandle, 0)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"QuestName",415,118,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetCanEdit(_GUIHandle,false)
		GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,255,215,0))
	end



	--_GUIHandle = GUI:ButtonCreate(_Parent,"MainQuestName",1850100024,74,179)
	_GUIHandle = GUI:ImageCreate(_Parent,"Tree",0,80,110)
	if _GUIHandle ~= 0 then
		--GUI:WndSetTextM(_GUIHandle, "任务名称")
		GUI:WndSetSizeM(_GUIHandle,233, 373)
		--GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TaskWnd.CloseWnd")
	end


	QuestDlg.UIInit(_Parent)
end

QuestDlg.WndHandle = 0
--UI Logic Code Start
function QuestDlg.UIInit(_Handle)
	QuestDlg.WndHandle = _Handle


	BgImg = GUI:WndFindWindow(QuestDlg.WndHandle, "BgImage")
	if BgImg then
		GUI:WndSetSizeM(BgImg,900, 534)
		GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
	end

	BgImg = GUI:WndFindWindow(QuestDlg.WndHandle, "TopBgImage")
	if BgImg then
		GUI:WndSetSizeM(BgImg,799, 453)
		GUI:ImageSetAroundImage(BgImg, 1850300025,1850300027,1850300031,1850300033,1850300029,1850300026,1850300032,1850300028,1850300030)
	end

	BgImg = GUI:WndFindWindow(QuestDlg.WndHandle, "LBgImage")
	if BgImg then
		GUI:WndSetSizeM(BgImg,252, 391)
		GUI:ImageSetAroundImage(BgImg, 1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)
	end

	BgImg = GUI:WndFindWindow(QuestDlg.WndHandle, "RBgImage")
	if BgImg then
		GUI:WndSetSizeM(BgImg,533, 391)
		GUI:ImageSetAroundImage(BgImg, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
	end
end

function OnClose(_Handle)
    GUI:WndClose(QuestDlg.WndHandle)
end


QuestDlg.main()




