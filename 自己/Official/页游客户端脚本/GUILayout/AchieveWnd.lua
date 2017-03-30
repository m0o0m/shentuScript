AchieveWnd = {}

function AchieveWnd.main()
	local ui = "<form>"..
		"<dialog OnInit=AchieveWnd.UIInit id='AchieveWnd' image='1802200001' x='-240' y='-157' w='680' h='514' center='true' magic='1' esc_close='true' drag='true' revmsg='true'>"..
			"<image id='image0' image='1801500075' x='285' y='1' w='89' h='25' revmsg='true' enable='false'/>"..
			"<button id='Close' image='1800000043' x='645' y='7' w='26' h='26' OnLButtonUp='AchieveWnd.closeWnd' revmsg='true' />"..
			"<button id='hero_ach' image='1800000072' x='20' y='48' w='66' h='24' OnLButtonUp='AchieveWnd.hero' revmsg='true' text='英雄成就' />"..
			--"<image id='image1' image='0' x='50' y='41' w='20' h='20' enable='false' />"..
			"<image id='image2' image='0' x='70' y='41' w='20' h='20' enable='false' />"..
			"<button id='ach_xuanz' image='1800000072' x='90' y='48' w='66' h='24' OnLButtonUp='AchieveWnd.ach' revmsg='true' text='成就勋章' />"..
			"<edit id='Achjf' x='500' y='50' w='80' h='19' canedit='false' revmsg='true' enable='false' text_color='#FFF500' text='当前成就积分:' />"..
			"<edit id='Achjifen' x='580' y='50' w='70' h='19' revmsg='true' text_color='#FFF500' text='0' />"..
			"<image id='image3' image='1804600026' x='145' y='41' w='20' h='20' enable='false' revmsg='false' visible='false'/>"..
		"</dialog>"..
		"</form>"

	GenFormByString(ui)
end
AchieveWnd.WndHandle = 0
function AchieveWnd.UIInit(_Parent)
	AchieveWnd.WndHandle = _Parent
	GUIWndSetSizeM(_Parent, 680, 514)
	ButtonSetIsActivePageBtn(_Parent,"hero_ach",true)
	
	GUIWndSetMagicUI(AchieveWnd.WndHandle, 3)
	GUIWndSetMoveWithLBM(AchieveWnd.WndHandle)
	
	local hero_handle = GUIWndFindChildM(_Parent, "hero_ach")
	if hero_handle ~= 0 then
		GUIWndSetTextArrangeType(hero_handle,0,2,0,0);
		GUIButtonSetStateTextColor(hero_handle,0,MakeARGB(255, 96, 94, 73))
		GUIButtonSetStateTextColor(hero_handle,1,MakeARGB(255, 96, 94, 73))
		GUIButtonSetStateTextColor(hero_handle,2,MakeARGB(255, 208, 179, 99))
	end
	
	local ach_handle = GUIWndFindChildM(_Parent, "ach_xuanz")
	if ach_handle ~= 0 then
		GUIWndSetTextArrangeType(ach_handle,0,2,0,0);
		GUIButtonSetStateTextColor(ach_handle,0,MakeARGB(255, 96, 94, 73))
		GUIButtonSetStateTextColor(ach_handle,2,MakeARGB(255, 208, 179, 99))
	end
	
	
	UI:Lua_OpenWindow(0,"HeroAch_Wnd.lua")

end

function AchieveWnd.hero(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then	
		ButtonSetIsActivePageBtn(_handle,nil,true)
		ButtonSetIsActivePageBtn(AchieveWnd.WndHandle,"ach_xuanz",false)
		
		local handle = GetWindow(AchieveWnd.WndHandle,"Xunz_Win")
		if handle ~= 0 then
			GUIWndClose(handle)
			UI:Lua_OpenWindow(AchieveWnd.WndHandle,"HeroAch_Wnd.lua")
		end	
	end
end

function AchieveWnd.ach(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ButtonSetIsActivePageBtn(_handle,nil,true)	
		ButtonSetIsActivePageBtn(AchieveWnd.WndHandle,"hero_ach",false)
		local handle = GetWindow(AchieveWnd.WndHandle,"HeroAch_Wnd")
		if handle ~= 0 then
			GUIWndClose(handle)
			UI:Lua_OpenWindow(AchieveWnd.WndHandle,"Xunz_Win.lua")
		end	
	end	
	WndMoveToParentTop(AchieveWnd.WndHandle,"image3")
	
end

function AchieveWnd.closeWnd(_handle)
		
	GUIWndClose(AchieveWnd.WndHandle)

end
AchieveWnd.main()