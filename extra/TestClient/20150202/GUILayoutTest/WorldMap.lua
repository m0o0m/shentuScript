WorldMap = {}
function WorldMap.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_2",1930500008,96,12)
	if _GUIHandle ~= 0 then
		GUI:WndSetIsESCClose(_GUIHandle,true)
		GUI:WndSetMoveWithLBM(_GUIHandle)
		GUI:WndSetMagicUI(_GUIHandle,1)
	end
	_Parent = _GUIHandle
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn0",1930500024,278,334)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 1)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn1",1930500028,117,330)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 2)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn2",1930500032,600,169)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 3)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn3",1930500036,570,265)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 4)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn4",1930500040,235,214)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 5)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn5",1930500044,343,423)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 6)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn6",1930500048,533,397)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 7)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn7",1930500052,417,244)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 8)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn8",1930500056,393,163)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 9)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn9",1930500060,500,172)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 10)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn10",1930500064,97,261)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 11)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn11",1930500074,178,288)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 12)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn12",1930500078,69,133)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 13)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn13",1930500082,490,94)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 14)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn14",1930500086,558,334)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 15)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn15",1930500090,365,218)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 16)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn16",1930500024,598,654)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 17)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn17",1930500098,269,110)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 18)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn18",1930500102,474,312)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 19)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MapBtn19",1930500106,716,332)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 20)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1906300005,787,6)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.CloseOnLBtnUp")
	end
	
	
	

	WorldMap.UIInit(_Parent)
end

--UI Logic Code Start


WorldMap.MapShowName = {
	"Î×É½³Ç",
	"òÚò¼¶´Ò»²ã",
	"ÎÖÂêËÂÃí",
	"¾øÂ·Áë",
	"½«¾üÚ£",
	"·ÏÆú¿ó¶´",
	"Áú³Ç",
	"Öí¶´Èë¿Ú",
	"¾øÂ·¹È",
	"×æÂêËÂÃí",
	"¶«ÁÙ³Ç",
	"³àÔÂÏ¿¹È",
	"º£½ÇÃØ¾³",
	"ÕòÄ§³Ç",
	"ÕòÄ§½ûµØ",
	"³àÑ×²¿Âä"
}

WorldMap.MapKeyName = {
	"Î×É½³Ç",
	"ÑıÉ½°µÑ¨1",
	"¾øÂ·³Ç1",
	"¾øÂ·Áë",
	"½«¾üÚ£1",
	"·ÏÆú¿ó¶´1",
	"Áú³Ç",
	"Ìì»ÄÕó1",
	"¾øÂ·¹È",
	"Ğ°Ãí1",
	"¶«ÁÙ³Ç",
	"ÌìÄ§Ê¯¿ß1",
	"º£µ×Èë¿Ú",
	"ÕòÄ§³Ç",
	"ÕòÄ§½ûµØ1",
	"³àÑ×²¿Âä1"
}

function WorldMap.UIInit(_Handle)
   for i = 1, 20 do
   		local _BtnID = "MapBtn"..i-1
		local _GUIHandle = GUI:WndFindChildM(_Handle, _BtnID)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:WndSetTextColorM(_GUIHandle, GUI:MakeColor(254, 226, 78, 255))
			GUI:ButtonSetTextFont(_GUIHandle,"SIMLI")
		end
   end

	for i = 1, #WorldMap.MapShowName do
   		local _BtnID = "MapBtn"..i-1
		local _GUIHandle = GUI:WndFindChildM(_Handle, _BtnID)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,WorldMap.MapShowName[i])
			GUI:WndSetVisible(_GUIHandle, true)
		end
	end
end


WorldMap.main()
	
function WorldMap.OnLBtnUp(_Handle,_Param)
	if _Handle ~= 0 then 
		local _Param = GUI:WndGetParam(_Handle)
		CL:ShowTypeMsg(1, "".._Param)
		if _Param >= 1 and _Param <= #WorldMap.MapKeyName then
			local _KeyName = WorldMap.MapKeyName[_Param]
			CL:ShowTypeMsg(1, "".._KeyName)
			UI:OpenBigMapWithKeyName(_KeyName)
			local _ParentHandle = GUI:WndGetParentM(_Handle)
			if _ParentHandle ~= 0 then
				GUI:WndClose(_ParentHandle)
			end	
		end
	end
end

	
	
function WorldMap.CloseOnLBtnUp(_Handle,_Param)
	if _Handle ~= 0 then 
		local _ParentHandle = GUI:WndGetParentM(_Handle)
		if _ParentHandle ~= 0 then
			GUI:WndClose(_ParentHandle)
		end
	end
end