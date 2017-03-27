RedPacketNew = {}
RedPacketNew.data = {}

function RedPacketNew.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

	_Parent = GUI:WndCreateWnd(_Parent,"RedPacketNew",1808600000,392,58)
	if _Parent ~= 0 then
		CenterWnd(_Parent)
		GUI:WndSetSizeM(_Parent,283, 401)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"close",1808600029,252,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,23, 21)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "RedPacketNew.close")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerTitle",1802700050,85,20)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit",20,132,130,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"程蝶衣程蝶衣衣")
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit1",150,132,121,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"发出一个红包")
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"getButton",1808600021,91,232)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,110, 68)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "RedPacketNew.grab")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit2",70,332,173,41)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"恭喜发财大吉大利")
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"tilteBack",1808600003,12,-38)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,260, 36)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"titleImage",1808600002,71,-37)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,142, 34)
	end

	RedPacketNew.UIInit(_Parent)
end

--UI Logic Code Start
local bigHeadIcon = {{1802700050,1802700052,1802700054},{1802700051,1802700053,1802700055}}
function RedPacketNew.UIInit(_Handle)
	RedPacketNew.data = deserialize(FormParam[1])
	if 0 ~= #RedPacketNew.data then
		if 0 >= RedPacketNew.data[7] then
			ButtonSetImageID(_Handle, "getButton", 1808600025)
			local flag = true
			local grabPlayerList = RedPacketNew.data[5]
			for i = 1, #grabPlayerList do
				local id = 0
				if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
					id = tostring(LuaRet)
				end
				UI:Lua_Str2GUID(grabPlayerList[i][2])
				local guid = LuaRet
				if id == guid then
					flag = false
					break
				end
			end
			_GUIHandle = GetWindow(_Handle,"edit2")
			if _GUIHandle ~= 0 and flag then
				GUI:EditSetTextM(_GUIHandle,"手慢了,红包派完了！")
			end
		end
		local id = 0
		if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
			id = tostring(LuaRet)
		end
		UI:Lua_Str2GUID(RedPacketNew.data[2])
		local guid = LuaRet
		if id == guid then
			ButtonSetImageID(_Handle, "getButton", 1808600025)
			_GUIHandle = GetWindow(_Handle,"edit2")
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle,"恭喜发财大吉大利")
			end
		end
		local grabPlayerList = RedPacketNew.data[5]
		for i = 1, #grabPlayerList do
			local id = 0
			if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
				id = tostring(LuaRet)
			end
			UI:Lua_Str2GUID(grabPlayerList[i][2])
			local guid = LuaRet
			if id == guid then
				ButtonSetImageID(_Handle, "getButton", 1808600025)
				break
			end
		end
		_GUIHandle = GetWindow(_Handle, "nameEdit")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,RedPacketNew.data[1])
		end
		_GUIHandle = GetWindow(_Handle, "playerTitle")
		if _GUIHandle ~= 0 then
			if 0 ~= RedPacketNew.data[10] and 0 ~= RedPacketNew.data[11] then
				ImageSetImageID(_GUIHandle, nil, bigHeadIcon[RedPacketNew.data[10]][RedPacketNew.data[11]])
			end
		end
	end
end

function RedPacketNew.close(_Handle)
	local _GUIHandle = GetWindow(nil, "RedPacketNew")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	end
end

function RedPacketNew.grab(_Handle)
	if 0 ~= #RedPacketNew.data then
		UI:Lua_SubmitForm("RedPacket", "grabRedPacket", RedPacketNew.data[2].."#"..RedPacketNew.data[6].."#"..RedPacketNew.data[9])
	end
end


RedPacketNew.main()