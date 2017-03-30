PackageWndInteraction = {}
PackageWndInteraction.packageFriendWnd_ = {}

function PackageWndInteraction.main()
	RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "PackageWndInteraction_�򿪱�������", PackageWndInteraction.openPackage)
	RegisterUIEvent(LUA_EVENT_OPENROLEGUI, "PackageWndInteraction_�򿪽�ɫ����", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENGAMEMALLGUI, "PackageWndInteraction_���̳ǽ���", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENTRADEGUI, "PackageWndInteraction_�򿪽��׽���", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENSTALLGUI, "PackageWndInteraction_�򿪰�̯����", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_VISITSTALLLIST, "PackageWndInteraction_�鿴���˰�̯", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENWAREHOUSEGUI, "PackageWndInteraction_�򿪲ֿ����", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENADVWAREHOUSEGUI, "PackageWndInteraction_�򿪸߼��ֿ����", PackageWndInteraction.packageFriendWndOpenCompletely)
	
	RegisterUIEvent(LUA_EVENT_CLOSEPACKAGEGUI, "PackageWndInteraction_�رձ�������", PackageWndInteraction.closePackage)
	--RegisterUIEvent(LUA_EVENT_CLOSEROLEGUI, "PackageWndInteraction_�رս�ɫ����", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSEGAMEMALLGUI, "PackageWndInteraction_�ر��̳ǽ���", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSETRADEGUI, "PackageWndInteraction_�رս��׽���", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSESTALLGUI, "PackageWndInteraction_�رհ�̯����", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_HIDEVISITSTALL, "PackageWndInteraction_�ر����˰�̯����", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSEWAREHOUSEGUI, "PackageWndInteraction_�رղֿ����", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSEADVWAREHOUSEGUI, "PackageWndInteraction_�رո߼��ֿ����", PackageWndInteraction.)
end

function PackageWndInteraction.openPackage()
	if PackageWndInteraction.packageFriendWnd_[1] then
		PackageWndInteraction.resetWndPos()
	end
end

function PackageWndInteraction.closePackage()
	PackageWndInteraction.resetWndPos()
end

function PackageWndInteraction.packageFriendWndOpenCompletely()
	local _package =  GUIWndFindWindow(0, "Package")
	if _package ~= 0 then
		PackageWndInteraction.resetWndPos()
	end
end

function PackageWndInteraction.packageFriendWndOpen(_Handle)
	for i = 1, #PackageWndInteraction.packageFriendWnd_ do
		if _Handle == PackageWndInteraction.packageFriendWnd_[i] then
			table.remove(PackageWndInteraction.packageFriendWnd_, i)
			break
		end
	end
	table.insert(PackageWndInteraction.packageFriendWnd_, 1, _Handle)
end

function PackageWndInteraction.packageFriendWndClose(_Handle)
	for i = 1, #PackageWndInteraction.packageFriendWnd_ do
		if _Handle == PackageWndInteraction.packageFriendWnd_[i] then
			table.remove(PackageWndInteraction.packageFriendWnd_, i)
			if i == 1 then
				PackageWndInteraction.resetWndPos()
			end
			break
		end
	end
end

function PackageWndInteraction.resetWndPos()
	local _GUIHandle = 0
	local tXml_start, tXml_end = "<Tween><Frame time='0.4' x='", "'/></Tween>"
	local sW = CLGetScreenWidth()
	local sH = CLGetScreenHeight()
	_GUIHandle = GUIWndFindWindow(0, "Package")
	if _GUIHandle ~= 0 then
		if PackageWndInteraction.packageFriendWnd_[1] then	
			GUIWndGetSizeM(PackageWndInteraction.packageFriendWnd_[1])
			local tempW, tempH = as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2])
			GUIWndGetSizeM(_GUIHandle)
			local packageW, packageH = as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2])
			
			GUIWndTween(PackageWndInteraction.packageFriendWnd_[1], tXml_start..(sW/2 - (packageW+tempW)/2).."' y='"..((sH-tempH)/2)..tXml_end, "")
			GUIWndTween(_GUIHandle, tXml_start..(sW/2 + (packageW+tempW)/2 - packageW).."' y='"..((sH-packageH)/2)..tXml_end, "")
		else
			GUIWndGetSizeM(_GUIHandle)
			GUIWndTween(_GUIHandle, tXml_start..((sW - as3.tolua(LuaRet[1]))/2).."' y='"..((sH-as3.tolua(LuaRet[2]))/2)..tXml_end, "")
		end
	else
		if #PackageWndInteraction.packageFriendWnd_ == 1 then
			GUIWndGetSizeM(PackageWndInteraction.packageFriendWnd_[1])
			GUIWndTween(PackageWndInteraction.packageFriendWnd_[1], tXml_start..((sW - as3.tolua(LuaRet[1]))/2).."' y='"..((sH-as3.tolua(LuaRet[2]))/2)..tXml_end, "")
		end
	end
end

PackageWndInteraction.main()