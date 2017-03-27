PackageWndInteraction = {}
PackageWndInteraction.packageFriendWnd_ = {}

function PackageWndInteraction.main()
	RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "PackageWndInteraction_打开背包界面", PackageWndInteraction.openPackage)
	RegisterUIEvent(LUA_EVENT_OPENROLEGUI, "PackageWndInteraction_打开角色界面", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENGAMEMALLGUI, "PackageWndInteraction_打开商城界面", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENTRADEGUI, "PackageWndInteraction_打开交易界面", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENSTALLGUI, "PackageWndInteraction_打开摆摊界面", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_VISITSTALLLIST, "PackageWndInteraction_查看他人摆摊", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENWAREHOUSEGUI, "PackageWndInteraction_打开仓库界面", PackageWndInteraction.packageFriendWndOpenCompletely)
	RegisterUIEvent(LUA_EVENT_OPENADVWAREHOUSEGUI, "PackageWndInteraction_打开高级仓库界面", PackageWndInteraction.packageFriendWndOpenCompletely)
	
	RegisterUIEvent(LUA_EVENT_CLOSEPACKAGEGUI, "PackageWndInteraction_关闭背包界面", PackageWndInteraction.closePackage)
	--RegisterUIEvent(LUA_EVENT_CLOSEROLEGUI, "PackageWndInteraction_关闭角色界面", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSEGAMEMALLGUI, "PackageWndInteraction_关闭商城界面", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSETRADEGUI, "PackageWndInteraction_关闭交易界面", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSESTALLGUI, "PackageWndInteraction_关闭摆摊界面", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_HIDEVISITSTALL, "PackageWndInteraction_关闭他人摆摊界面", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSEWAREHOUSEGUI, "PackageWndInteraction_关闭仓库界面", PackageWndInteraction.)
	--RegisterUIEvent(LUA_EVENT_CLOSEADVWAREHOUSEGUI, "PackageWndInteraction_关闭高级仓库界面", PackageWndInteraction.)
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
	local _package =  GUI:WndFindWindow(0, "Package")
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
	local sW = CL:GetScreenWidth()
	local sH = CL:GetScreenHeight()
	_GUIHandle = GUI:WndFindWindow(0, "Package")
	if _GUIHandle ~= 0 then
		if PackageWndInteraction.packageFriendWnd_[1] then	
			GUI:WndGetSizeM(PackageWndInteraction.packageFriendWnd_[1])
			local tempW, tempH = LuaRet[1], LuaRet[2]
			GUI:WndGetSizeM(_GUIHandle)
			local packageW, packageH = LuaRet[1], LuaRet[2]
			GUI:WndSetPosM(PackageWndInteraction.packageFriendWnd_[1], sW/2 - (packageW+tempW)/2, (sH-tempH)/2)
			GUI:WndSetPosM(_GUIHandle, sW/2 + (packageW+tempW)/2 - packageW, (sH-packageH)/2)
		else
			GUI:WndGetSizeM(_GUIHandle)
			GUI:WndSetPosM(_GUIHandle, (sW - LuaRet[1])/2, (sH-LuaRet[2])/2)
		end
	else
		if #PackageWndInteraction.packageFriendWnd_ == 1 then
			if GUI:WndGetSizeM(PackageWndInteraction.packageFriendWnd_[1]) then
				GUI:WndSetPosM(PackageWndInteraction.packageFriendWnd_[1], (sW - LuaRet[1])/2, (sH-LuaRet[2])/2)
			end
		end
	end
end

PackageWndInteraction.main()