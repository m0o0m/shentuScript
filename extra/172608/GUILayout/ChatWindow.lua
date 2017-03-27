ChatWindow = {}


ChatWindow.UseChatFace = true
ChatWindow.MaxFaceCount = 3
function ChatWindow.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

	_GUIHandle = GUI:ButtonCreate(_Parent,"BlockBtn",1930000088,20,-6)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"打开私聊屏蔽列表")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatCurrent",1930000092,20,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽附近聊天频道")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatPrivate",1930000096,20,38)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽私聊聊天频道")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatFamily",1930000100,20,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽行会聊天频道")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatWorld",1930000104,20,82)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽喊话聊天频道")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatTeam",1930000108,20,104)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"屏蔽组队聊天频道")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"ChatInputEdit",85,121,641,19)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "ChatChannelBtn",1930000152,51,123)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:RichEditCreate(_Parent, "ChatContentRE",44,8,683,116)
	if _GUIHandle ~= 0 then
	end

	local _LockPosX = CL:GetScreenWidth() - 390
	_GUIHandle = GUI:ButtonCreate(_Parent,"ChatLock",1903600001,_LockPosX,122)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"锁定")
	end

	_GUIHandle = GUI:ScrollBarVCreate(_Parent,"ChatScroll",1930000007,1930000011,1930000015,1930000006,728,6,110)
	if _GUIHandle ~= 0 then

	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"CurrentChannel",1930000228,807,13)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭当前显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"PrivateChannel",1930000232,807,35)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭私聊显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"FamilyChannel",1930000240,807,57)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭行会聊天显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"WorldChannle",1930000244,807,79)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭喊话聊天显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"TeamChannel",1930000236,807,101)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭组队聊天显示")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"AllChannel",1930000224,807,-9)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"关闭所有频道显示")
	end

	ChatWindow.UIInit(_Parent)
end

--UI Logic Code Start
ChatWindow.WndHandle = 0
function ChatWindow.UIInit(_Handle)
	ChatWindow.WndHandle = _Handle

	local _Parent = _Handle
	if ChatWindow.UseChatFace then
		local _ExpressPosX = CL:GetScreenWidth() - 408
		_GUIHandle = GUI:ButtonCreate(_Parent,"ChatExpresionBtn",1901900110,_ExpressPosX,121)
		if _GUIHandle ~= 0 then
			GUI:WndSetHint(_GUIHandle,"表情")
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp,"ChatWindow.OnExpressBtnUp")
		end
		CL:SetEnableUseChatFace(true)

		local _RichEditHandle = GUI:WndFindChildM(_Parent, "ChatContentRE")
		if _RichEditHandle ~=0 then
			GUI:RichEditRegisterControlString(_RichEditHandle, "FACE")
		end
	else
		CL:SetEnableUseChatFace(false)	
		local _RichEditHandle = GUI:WndFindChildM(_Parent, "ChatContentRE")
		if _RichEditHandle ~=0 then
			GUI:RichEditUnRegisterControlString(_RichEditHandle, "FACE")
		end
	end
	CL:SetMaxFaceCount(ChatWindow.MaxFaceCount)

	local _ScrollHandle = GUI:WndFindChildM(_Parent, "ChatScroll")
	if _ScrollHandle ~= 0 then
		local _PosX = CL:GetScreenWidth() - 382
		GUI:WndSetPosM(_ScrollHandle, _PosX, 6);
	end
end

function ChatWindow.OnExpressBtnUp(_Handle,_Param)
	local _WndHandle = GUI:WndFindChildM(ChatWindow.WndHandle, "ChatExpresion")
	if _WndHandle ~= 0 then
		GUI:WndClose(_WndHandle)
	else
		UI:Lua_OpenWindow(ChatWindow.WndHandle, "ChatExpresion.lua")
	end
end

ChatWindow.main()
