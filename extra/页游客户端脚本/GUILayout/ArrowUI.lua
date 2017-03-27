ArrowUI = {}
ArrowUI.wnd_ = {}

--[[
	ArrowUI.new(name, direction, pointUIName, xPos, yPos) 
	param1:name(string),UI名字
	param2:direction(int),箭头方向，1↑ 2→ 3↓ 4←
	param3:pointUIName(string),指向的目标UI名字
	param4:xPos(int),指向目标UI的X轴偏移
	param5:yPos(int),指向目标UI的y轴偏移
	
	ArrowUI.close(name)
	ArrowUI.closeAll()
--]]
function ArrowUI.new(name, direction, pointUIName, xPos, yPos)
	ArrowUI.wnd_[name] = {}
	ArrowUI.wnd_[name].xPos = xPos
	ArrowUI.wnd_[name].yPos = yPos
	
	local _GUIHandle, _Parent = 0, 0
	local parentX, parentY = 0, 0
	if pointUIName and pointUIName ~= "" then
		_GUIHandle = GUIWndFindWindow(0, pointUIName)
		if _GUIHandle ~= 0 then
			ArrowUI.wnd_[name]._parentHandle = _GUIHandle
			GUIWndGetPosM(_GUIHandle)
			parentX = as3.tolua(LuaRet[1])
			parentY = as3.tolua(LuaRet[2])
			GUIWndRegistScript(_GUIHandle, RDWndBaseCL_wnd_move, "ArrowUI.refreshUI")
			
			_Parent = GUIWndGetParentM(_GUIHandle)
		end
	end
	
	local arrowImgInfo_ = {
		{1800000366, 45, -40},
		{1800000366, 100, 3},
		{1800000367, 45, 60},
		{1800000367, -40, 3}
	}
	local _wnd = GUIWndCreateWnd(_Parent, name, 0, parentX-150+xPos, parentY-30+yPos)
	if _wnd ~= 0 then 
		GUIWndRegistScript(_wnd, RDWndBaseCL_wnd_close, "ArrowUI.wndClose")
		GUIWndAddProperty(_wnd, "name", name)
		ArrowUI.wnd_[name]._wnd = _wnd
		GUIWndSetSizeM(_wnd, 100, 60)
		--GUIEditCreate
		_GUIHandle = GUIImageCreate(_wnd, "arrowImg", arrowImgInfo_[direction][1], arrowImgInfo_[direction][2], arrowImgInfo_[direction][3])
		if _GUIHandle ~= 0 then
			GUIWndSetEnableM(_GUIHandle, false)
			ArrowUI.wnd_[name]._arrowImg = _GUIHandle
		end
	end
	ArrowUI.tween1(name, direction)
end

function ArrowUI.tween1(name, direction)
	if not ArrowUI.wnd_[name]._arrowImg then 
		return
	end
	
	local tXml_ = {
		"<Tween><Frame time='0.3' y='-60' /></Tween>",
		"<Tween><Frame time='0.3' x='120' /></Tween>",
		"<Tween><Frame time='0.3' x='80' /></Tween>",
		"<Tween><Frame time='0.3' x='-60' /></Tween>",
	}
	GUIWndTween(ArrowUI.wnd_[name]._arrowImg, tXml_[direction], "ArrowUI.tween2(\""..name.."\","..direction..")")
end

function ArrowUI.tween2(name, direction)
	if not ArrowUI.wnd_[name]._arrowImg then 
		return
	end
	
	local tXml_ = {
		"<Tween><Frame time='0.4' y='-40' /></Tween>",
		"<Tween><Frame time='0.4' x='100' /></Tween>",
		"<Tween><Frame time='0.4' y='60' /></Tween>",
		"<Tween><Frame time='0.4' x='-40' /></Tween>",
	}
	GUIWndTween(ArrowUI.wnd_[name]._arrowImg, tXml_[direction], "ArrowUI.tween1(\""..name.."\","..direction..")")
end

function ArrowUI.refreshUI(_Handle)
msg("pos")
	if GUIWndGetPosM(_Handle) then
		for i, v in pairs(ArrowUI.wnd_) do
			if v._parentHandle == _Handle then
				GUIWndSetPosM(v._wnd, as3.tolua(LuaRet[1])-120+v.xPos, as3.tolua(LuaRet[2])-30+v.yPos)
				GUIWndMoveToParentTop(v._wnd)
			end
		end
	end
end

function ArrowUI.close(name)
	if ArrowUI.wnd_[name]._wnd then
		GUIWndClose(ArrowUI.wnd_[name]._wnd)
	end
end

function ArrowUI.closeAll()
	for i, v in pairs(ArrowUI.wnd_) do
		GUIWndClose(v._wnd)
	end
end

function ArrowUI.wndClose(_Handle)
	local name = GUIWndGetProperty(_Handle, "name")
	WndUnRegistScript(ArrowUI.wnd_[name]._parentHandle, GUIWndGetIDM(ArrowUI.wnd_[name]._parentHandle), RDWndBaseCL_wnd_move, "ArrowUI.refreshUI")
	ArrowUI.wnd_[name] = nil
end