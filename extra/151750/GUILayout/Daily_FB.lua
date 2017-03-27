Daily_FB = {}
local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)
function Daily_FB.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"Daily_FB_Dlg",1850600016,0,0)
	if _Parent ~= 0 then
		--GUI:WndSetSizeM(_Parent,384, 505)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"TitleImg", 225, 15, 50, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
		GUI:EditSetTextM(_GUIHandle, "选 择")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1852700000,455,9)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Daily_FB.CloseWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,38, 38)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImg0",0,12,50)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)		GUI:WndSetSizeM(_GUIHandle, 477, 268)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"ClipWnd", 0, 14, 50)
	if 0 ~=_GUIHandle then
		GUI:WndSetSizeM(_GUIHandle,477, 268)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		Daily_FB.ClipWndHandle = _GUIHandle
	end
	
	local BgImg1 = GUI:ImageCreate(Daily_FB.ClipWndHandle,"BgImg1",0,9,10)
	if BgImg1 ~= 0 then
		GUI:WndSetSizeM(BgImg1, 456, 103)
		GUI:ImageSetAroundImage(BgImg1, 1853000028,1853000030,1853000034,1853000036,1853000032,1853000029,1853000035,1853000031,1853000033)
		--GUI:ImageSetAroundImage(BgImg1, 1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)
		GUI:ImageSetCheckPoint(BgImg1, 0)
		GUI:ImageCreate(BgImg1,"IconBg",1850500016,15,18)
		_GUIHandle = GUI:ImageCreate(BgImg1,"Icon",1891410012,20,25)
		
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle, 58, 58)
			GUI:ImageSetFitSize(_GUIHandle, true)
		end
		_GUIHandle = GUI:EditCreate(BgImg1,"Text_Name",100,22,100,22)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, color.text2)
			GUI:EditSetTextM(_GUIHandle,"经验副本")
			GUI:EditSetCanEdit(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(BgImg1,"Text_Level",100,62,135,22)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, color.text2)
			GUI:EditSetTextM(_GUIHandle,"等级：")
			GUI:EditSetCanEdit(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(BgImg1,"Text_Times",320,70,135,22)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, color.text2)
			GUI:EditSetTextM(_GUIHandle,"次数：")
			GUI:EditSetCanEdit(_GUIHandle, false)
		end
	end

	local BgImg2 = GUI:ImageCreate(Daily_FB.ClipWndHandle,"BgImg2",0,9,122)
	if BgImg2 ~= 0 then
		GUI:WndSetSizeM(BgImg2, 456, 103)
		GUI:ImageSetAroundImage(BgImg2, 1853000028,1853000030,1853000034,1853000036,1853000032,1853000029,1853000035,1853000031,1853000033)
		--GUI:ImageSetAroundImage(BgImg2, 1850600034,1850600036,1850600040,1850600042,1850600038,1850600035,1850600041,1850600037,1850600039)
		GUI:ImageSetCheckPoint(BgImg2, 0)
		GUI:ImageCreate(BgImg2,"IconBg",1850500016,15,18)
		_GUIHandle = GUI:ImageCreate(BgImg2,"Icon",1891700009,20,25)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle, 58, 58)
			GUI:ImageSetFitSize(_GUIHandle, true)
		end
		_GUIHandle = GUI:EditCreate(BgImg2,"Text_Name",100,22,100,22)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, color.text2)
			GUI:EditSetTextM(_GUIHandle,"神翼副本")
			GUI:EditSetCanEdit(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(BgImg2,"Text_Level",100,62,135,22)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, color.text2)
			GUI:EditSetTextM(_GUIHandle,"等级：")
			GUI:EditSetCanEdit(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(BgImg2,"Text_Times",320,70,135,22)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, color.text2)
			GUI:EditSetTextM(_GUIHandle,"次数：")
			GUI:EditSetCanEdit(_GUIHandle, false)
		end
	end


	_GUIHandle = GUI:EditCreate(Daily_FB.ClipWndHandle,"Edit_Level1",170,72,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"30级")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(Daily_FB.ClipWndHandle,"Edit_Times1",390,80,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, color.number)
		GUI:EditSetTextM(_GUIHandle,"3/3")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:ButtonCreate(Daily_FB.ClipWndHandle,"Btn_Enter1", 1850000307, 325, 25)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Daily_FB.SelectMap")
		GUI:WndSetTextM(_GUIHandle,"进 入")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:EditCreate(Daily_FB.ClipWndHandle,"Edit_Level2",170,184,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"30级")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(Daily_FB.ClipWndHandle,"Edit_Times2",390,192,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, color.number)
		GUI:EditSetTextM(_GUIHandle,"3/3")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:ButtonCreate(Daily_FB.ClipWndHandle,"Btn_Enter2", 1850000307, 325, 134)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Daily_FB.SelectMap")
		GUI:WndSetTextM(_GUIHandle,"进 入")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
	end

	Daily_FB.UIInit(_Parent)
end

--UI Logic Code Start
Daily_FB.tb = {}
local DAILY_FB_LIMIT = 2
function Daily_FB.UIInit(_Handle)
	local _GUIHandle = 0
	local tb = deserialize(FormParam[1])
	Daily_FB.tb = tb
	Daily_FB.Handle = _Handle
	for i = 1, #Daily_FB.tb do
		_GUIHandle = GUI:WndFindWindow(Daily_FB.ClipWndHandle, "Btn_Enter"..i)
		if _GUIHandle ~= 0 then
			if Daily_FB.tb[i] == DAILY_FB_LIMIT then
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		end
		_GUIHandle = GUI:WndFindWindow(Daily_FB.ClipWndHandle, "Edit_Times"..i)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, Daily_FB.tb[i].."/"..DAILY_FB_LIMIT)
		end
	end
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		local level = LuaRet
		for i = 1, #Daily_FB.tb do
			_GUIHandle = GUI:WndFindWindow(Daily_FB.ClipWndHandle, "Edit_Level"..i)
			if _GUIHandle ~= 0 then
				if level < 40 then
					GUI:EditSetTextM(_GUIHandle, "30级")
				elseif level < 50 then
					GUI:EditSetTextM(_GUIHandle, "40级")
				elseif level < 60 then
					GUI:EditSetTextM(_GUIHandle, "50级")
				elseif level < 70 then
					GUI:EditSetTextM(_GUIHandle, "60级")
				elseif level < 80 then
					GUI:EditSetTextM(_GUIHandle, "70级")
				elseif level < 90 then
					GUI:EditSetTextM(_GUIHandle, "80级")
				else
					GUI:EditSetTextM(_GUIHandle, "90级")
				end
			end
		end
	end

	CenterWnd(Daily_FB.Handle)
	GUI:WndSetMagicUI(Daily_FB.Handle, 1)
	GUI:WndSetIsESCClose(Daily_FB.Handle, true)
end

function Daily_FB.SelectMap(_Handle)
	local param = GUI:WndGetParam(_Handle)
	UI:Lua_SubmitForm("手游每日副本表单", "EnterMap"..param, "")
end

function Daily_FB.MsgUp(msg)   --消息提示
	local handle = GetWindow(Daily_FB.Handle,"image5")
	local color = MakeARGB(255,255,0,0)
	window_msg_up(handle, msg, 52, 85, 30, color, 2)
end

function Daily_FB.CloseWnd()
	if Daily_FB.Handle ~= 0 then
		GUI:WndClose(Daily_FB.Handle)
	end
end

Daily_FB.main()