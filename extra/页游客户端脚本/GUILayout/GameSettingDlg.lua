GameSettingDlg = {}


function GameSettingDlg.main()
	local ui = "<form> <dialog OnInit='GameSettingDlg.UIInit' id='GameSettingDlg' image='1801700001' x='0' y='0' w='613' h='380' esc_close='true' drag='true' revmsg='true'>"
	.."	<button id='Close' image='1800000043' x='586' y='2' w='26' h='26' OnLButtonUp='GameSettingDlg.closeWnd' revmsg='true'/>"
	.."	<image id='image0' image='1801500043' x='210' y='3' w='182' h='24' revmsg='true' enable='false'/>"
	.."	<button id='SettingBasicPage' image='1800000076' x='50' y='35' w='62' h='25' OnLButtonUp='GameSettingDlg.SettingBasic_Wnd' revmsg='true' text='基本' text_color='#646050'/>"
	.."	<button id='SettingPropertyPage' image='1800000076' x='130' y='35' w='62' h='25' OnLButtonUp='GameSettingDlg.Property_Wnd' revmsg='true' text='保护' text_color='#646050'/>"
	.."	<button id='SettingBattlePage' image='1800000076' x='210' y='35' w='62' h='25' OnLButtonUp='GameSettingDlg.SettingBattle_Wnd' revmsg='true' text='战斗' text_color='#646050'/>"
	--.."	<button id='SettingItemPage' image='1800000076' x='290' y='35' w='62' h='25' OnLButtonUp='GameSettingDlg.SettingItem_Wnd' revmsg='true' text='物品' text_color='#646050'/>"
	.."	<button id='SettingItemPage' image='1800000076' x='290' y='35' w='62' h='25' OnLButtonUp='GameSettingDlg.SettingItem_Wnd' revmsg='true' text='拾取' text_color='#646050'/>"
	--.."	<button id='SettingUserGuidePage' image='1800000076' x='370' y='35' w='62' h='25' OnLButtonUp='GameSettingDlg.SettingUserGuide_Wnd' revmsg='true' text='操作指南' text_color='#646050'/>"
	.."	<button id='HotKeySetPage' image='1800000076' x='370' y='35' w='62' h='25' OnLButtonUp='GameSettingDlg.HotKeySet_Wnd' revmsg='true' text='快捷键' text_color='#646050'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)


end

GameSettingDlg.handle = {"SettingBasicPage","SettingPropertyPage","SettingBattlePage","SettingItemPage","SettingUserGuidePage","HotKeySetPage"}
GameSettingDlg.handle1 = {"SettingBasic","SettingProperty","SettingBattle",--[["SettingItem"--]]"SettingPickup","SettingUserGuide","HotKeySet"}
function GameSettingDlg.UIInit(_GUIHandle)
	GameSettingDlg.WndHandle = _GUIHandle
	
	CenterWnd(_GUIHandle)
	
	local SettingBasic_handle = GUIWndFindChildM(_GUIHandle, "SettingBasicPage")
	if SettingBasic_handle ~= 0 then
		GUIWndSetTextArrangeType(SettingBasic_handle,0,2,0,0);
		GUIButtonSetStateTextColor(SettingBasic_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(SettingBasic_handle,2,MakeARGB(255, 199, 123, 97))
	end
	
	local Property_handle = GUIWndFindChildM(_GUIHandle, "SettingPropertyPage")
	if Property_handle ~= 0 then
		GUIWndSetTextArrangeType(Property_handle,0,2,0,0);
		GUIButtonSetStateTextColor(Property_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(Property_handle,2,MakeARGB(255, 199, 123, 97))
	end
	local Battle_handle = GUIWndFindChildM(_GUIHandle, "SettingBattlePage")
	if Battle_handle ~= 0 then
		GUIWndSetTextArrangeType(Battle_handle,0,2,0,0);
		GUIButtonSetStateTextColor(Battle_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(Battle_handle,2,MakeARGB(255, 199, 123, 97))
	end
	local Item_handle = GUIWndFindChildM(_GUIHandle, "SettingItemPage")
	if Item_handle ~= 0 then
		GUIWndSetTextArrangeType(Item_handle,0,2,0,0);
		GUIButtonSetStateTextColor(Item_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(Item_handle,2,MakeARGB(255, 199, 123, 97))
	end
	local UserGuide_handle = GUIWndFindChildM(_GUIHandle, "SettingUserGuidePage")
	if UserGuide_handle ~= 0 then
		GUIWndSetTextArrangeType(UserGuide_handle,0,2,0,0);
		GUIButtonSetStateTextColor(UserGuide_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(UserGuide_handle,2,MakeARGB(255, 199, 123, 97))
	end
	local HotKeySet_handle = GUIWndFindChildM(_GUIHandle, "HotKeySetPage")
	if HotKeySet_handle ~= 0 then
		GUIWndSetTextArrangeType(HotKeySet_handle,0,2,0,0);
		GUIButtonSetStateTextColor(HotKeySet_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(HotKeySet_handle,2,MakeARGB(255, 199, 123, 97))
	end
	
	ButtonSetIsActivePageBtn(GameSettingDlg.WndHandle,"SettingBasicPage",true)
	UI:Lua_OpenWindow(GameSettingDlg.WndHandle, "SettingBasic.lua")
end

function GameSettingDlg.SettingBasic_Wnd(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		GameSettingDlg.update(_handle)
		UI:Lua_OpenWindow(GameSettingDlg.WndHandle, "SettingBasic.lua")
	end	

end

function GameSettingDlg.Property_Wnd(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		GameSettingDlg.update(_handle)
		UI:Lua_OpenWindow(GameSettingDlg.WndHandle, "SettingProperty.lua")
	end	

end

function GameSettingDlg.SettingBattle_Wnd(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		GameSettingDlg.update(_handle)
		UI:Lua_OpenWindow(GameSettingDlg.WndHandle, "SettingBattle.lua")
	end	

end

function GameSettingDlg.SettingItem_Wnd(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		GameSettingDlg.update(_handle)
		--UI:Lua_OpenWindow(GameSettingDlg.WndHandle, "SettingItem.lua")
		UI:Lua_OpenWindow(GameSettingDlg.WndHandle, "SettingPickup.lua")
	end	

end



function GameSettingDlg.SettingUserGuide_Wnd(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		GameSettingDlg.update(_handle)
		CLSetSettingWindowTab(1)
	end	

end
function GameSettingDlg.HotKeySet_Wnd(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		GameSettingDlg.update(_handle)
		CLSetSettingWindowTab(2)
	end	

end

function GameSettingDlg.closeWnd(_handle)
		
	GUIWndClose(GameSettingDlg.WndHandle)

end
function GameSettingDlg.update(_handle)
	for i = 1 , #GameSettingDlg.handle do 
		local handle = GetWindow(nil,"GameSettingDlg,"..GameSettingDlg.handle[i])
		local handle1 = GetWindow(nil,"GameSettingDlg,"..GameSettingDlg.handle1[i])
		if handle == _handle then
			ButtonSetIsActivePageBtn(GameSettingDlg.WndHandle,GameSettingDlg.handle[i],true)
			
		else
			ButtonSetIsActivePageBtn(GameSettingDlg.WndHandle,GameSettingDlg.handle[i],false)
			if handle1 ~= 0 then
				GUIWndClose(handle1)
			end	
		end
	end
	
end
GameSettingDlg.main()