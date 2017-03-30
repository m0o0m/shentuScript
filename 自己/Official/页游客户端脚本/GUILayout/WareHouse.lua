WareHouse = {}

function WareHouse.main()
	local ui = "<form><dialog OnInit=WareHouse.UIInit id='WareHouse' image='1806100012' x='0' y='0' w='299' h='535' fitsize='true' center='true' magic='3' OnClose='WareHouse.wndClose' esc_close='true' drag='true' revmsg='true' enable='true'>"
	.."<image id='TitleImg' image='1805500013' x='80' y='12' w='79' h='25' revmsg='true' enable='false'/>"
	.."<button id='closeWnd' image='1805900080' x='259' y='4' w='34' h='38' OnLButtonUp='luaWndClose' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item0' x='34' y='66' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item1' x='82' y='66' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item2' x='130' y='66' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item3' x='178' y='66' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item4' x='226' y='66' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item5' x='34' y='115' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item6' x='82' y='115' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item7' x='130' y='115' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item8' x='178' y='115' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item9' x='226' y='115' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item10' x='34' y='164' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item11' x='82' y='164' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item12' x='130' y='164' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item13' x='178' y='164' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item14' x='226' y='164' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item15' x='34' y='213' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item16' x='82' y='213' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item17' x='130' y='213' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item18' x='178' y='213' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item19' x='226' y='213' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item20' x='34' y='262' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item21' x='82' y='262' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item22' x='130' y='262' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item23' x='178' y='262' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item24' x='226' y='262' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item25' x='34' y='311' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item26' x='82' y='311' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item27' x='130' y='311' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item28' x='178' y='311' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item29' x='226' y='311' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item30' x='34' y='360' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item31' x='82' y='360' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item32' x='130' y='360' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item33' x='178' y='360' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item34' x='226' y='360' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item35' x='34' y='409' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item36' x='82' y='409' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item37' x='130' y='409' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item38' x='178' y='409' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<itemctrl id='Item39' x='226' y='409' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='1800000080' revmsg='true' enable='true'/>"
	.."<button id='sort' image='1806400136' x='200' y='452' w='63' h='26' OnLButtonUp='WareHouse.sortOut' revmsg='true' enable='true' text='仓库整理'/>"
	.."<button id='saveMoney' image='1806400136' x='33' y='452' w='63' h='26' OnLButtonUp='WareHouse.saveMoney' revmsg='true' enable='true' text='存 钱'/>"
	.."<button id='drawMoney' image='1806400136' x='103' y='452' w='63' h='26' OnLButtonUp='WareHouse.drawMoney' revmsg='true' enable='true' text='取钱'/>"
	.."<image id='goldImg' image='1806600015' x='58' y='482' w='16' h='14' revmsg='true' enable='false'/>"
	.."<image id='BackImg' image='1800800005' x='80' y='480' w='144' h='22' revmsg='true' enable='false'/>"
	.."<edit id='countEdit' x='94' y='483' w='120' h='16' revmsg='true' enable='false' text='0' font='system'/>"
	.."</dialog></form>"
	GenFormByString(ui)
end

--UI Logic Code Start
WareHouse.WndHandle = 0

function WareHouse.UIInit(_handle)
	WareHouse.WndHandle = _handle
	GUIWndSetSizeM(_handle, 299, 529)
	RegisterUIEvent(LUA_EVENT_PLAYERATTREXTREF, "WareHouse_PropDataChange", WareHouse.propDataChange)		--玩家数据改变
	local wnd = GUIWndFindWindow(WareHouse.WndHandle, 'countEdit') 
	if wnd > 0 and UI:Lua_GetPlayerSelfProperty64(ROLE_PROP64_GOLD_DEPOSIT) then
		GUI:EditSetTextM(wnd,LuaRet)
	end
	--背包互动
	wnd = GUIWndFindWindow(0, "Package")
	if wnd ~= 0 then 
		WndMoveToParentTop(wnd)
	else
		CLOnOpenPakage()
	end
	PackageWndInteraction.packageFriendWndOpen(_handle)
end

function WareHouse.propDataChange()
	if as3.tolua(LuaParam[2]) == ROLE_PROP64_GOLD_DEPOSIT then
		local wnd = GUIWndFindWindow(WareHouse.WndHandle, 'countEdit') 
		if wnd > 0 and UI:Lua_GetPlayerSelfProperty64(ROLE_PROP64_GOLD_DEPOSIT) then
			GUI:EditSetTextM(wnd,LuaRet)
		end
	end
end

function WareHouse.wndClose(_handle)
	PackageWndInteraction.packageFriendWndClose(_handle)
	local wnd = GUI:WndFindWindow(0, 'WareHouse') 
	if wnd == 0 then
		WareHouse = nil
	end
end

function WareHouse.gotoShop(_handle)
	CL:OpenGameFormDlg('商城',-1,-1)
end

function WareHouse.sortOut(_handle)
	CL:DoItemArrange(1)
end

function WareHouse.saveMoney()
	UI:Lua_OpenWindow(0, "SaveMoney.lua")
	SaveMoney.SetType(1)
end

function WareHouse.drawMoney()
	UI:Lua_OpenWindow(0, "SaveMoney.lua")
	SaveMoney.SetType(2)
end

WareHouse.main()