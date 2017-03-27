----------------------------------------------------------------------------------------------------
--玩家登录事件--------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
function Event_OnLogin()
	HintData.newflag = true
	for i = 0,500 do
		if HintData[i] == nil then break end
		HintData[i][3] = false
	end
end

----------------------------------------------------------------------------------------------------
--资源初始化完毕事件--------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
function Event_InitResComplete()
	if not IsNewRole() then return end
	if not IsDone(0) then AddHint(0) end
	if not IsDone(1) then AddHint(1) end
	if not IsDone(2) then AddHint(2) end
end

-----------------------------------------------------------------------------------------------------------
----------新手引导对话框函数-------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function Hint_OnConstruction(id)
	--out("ID: "..id)
	SetHintData(nil)
	UI:Lua_HintInitialize(HintData[id][2])
	FirstDo(id)
end

function Hint_OnDestruction(id)
end

function Hint_RichEditEvent(id, str)
end

function Hint_OnTimerClose(id, count)
	DelHint()
end

function Hint_OnTimerM(id, count)
end

function Hint_OnTimer(id, count)
end


-----------------------------------------------------------------------------------------------------
----------0------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
function HINTFUNC_0_BUTTON(id, p1, p2)
	DelHint()
end

function HINTFUNC_0_EDIT(id, p1, p2)
	if p2 == "我是老手，不需要" then
		DelAllHint()
		SetFlag(1023)
	end
end

function HINTFUNC_0_INIT(id, p1, p2)
	if not UI:Lua_GetTextureWidthHeight(1904100010) then return end
	local W = LuaRet["Width"]; local H = LuaRet["Height"];
	if not UI:Lua_GetScreenSize() then return end
	local srcw = LuaRet["w"]; local srch = LuaRet["h"]
	UI:Lua_HintSetImageSize(0, srcw, srch)
	local xpos = math.floor((srcw - W) / 2)
	local ypos = math.floor((srch - H) / 2) - 70
	UI:Lua_HintSetPos(xpos, ypos)
	UI:Lua_HintOffImagePos(0, -xpos, -ypos)
	if not UI:Lua_HintGetWindow("edit_no_use") then return end
	UI:Lua_WndSetSizeM(srcw, srch)
	UI:Lua_WndSetPosM(-xpos, -ypos)
end
-----------------------------------------------------------------------------------------------------
----------1------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
function HINTFUNC_1_INIT(id, p1, p2)
	if not UI:Lua_GetScreenSize() then return end
	local srcw = LuaRet["w"]; local srch = LuaRet["h"]
	UI:Lua_HintSetImageSize(0, srcw, srch)
	UI:Lua_HintSetImagePos(1, 0, math.floor(srch / 2) - 80)
	UI:Lua_HintSetImageSize(1, srcw, 0)
	if not UI:Lua_HintGetWindow("e") then return end
	UI:Lua_WndSetSizeM(srcw, srch)
end

function HINTFUNC_1_EDIT(id, p1, p2)
	if GetHintData() == 1 then
		SetHintData(2)
		UI:Lua_HintAddTimer(1, 10, "HINTFUNC_1_TIMER1")
	end
end

function HINTFUNC_1_ATIME(id, p1, p2)
	SetHintData(2)
	UI:Lua_HintAddTimer(1, 10, "HINTFUNC_1_TIMER1")
end

function HINTFUNC_1_TIMER(id, p1, p2)
	if GetHintData() == nil then
		UI:Lua_HintGetImage(1)
		if LuaRet["h"] < 216 then
			UI:Lua_HintOffImagePos(1, 0, -10)
			UI:Lua_HintOffImageSize(1, 0, 20)
		else
			local offy = math.floor(LuaRet["h"] / 2) - 108
			UI:Lua_HintSetImagePos(1, 0, LuaRet["y"] + offy)
			UI:Lua_HintSetImageSize(1, LuaRet["w"], 216)
			SetHintData(0)
			if not UI:Lua_GetScreenSize() then return end
			local srcw = LuaRet["w"]; local srch = LuaRet["h"]
			local xpos = math.floor((srcw - 468) / 2)
			local ypos = math.floor(srch / 2) - 170
			UI:Lua_HintAddImage(3, 1904100081, xpos, ypos, 0, 0, 8)
		end
    else
		UI:Lua_HintGetImageAlpha(2)
		if LuaRet < 0xff then UI:Lua_HintOffImageAlpha(2, 8) else UI:Lua_HintDelMainTimer(); SetHintData(1) end
    end
end

function HINTFUNC_1_TIMER1(id, p1, p2)
	if GetHintData() == 2 then
		UI:Lua_HintGetImageAlpha(2)
		if LuaRet > 0 then UI:Lua_HintOffImageAlpha(2, -8) return end
		SetHintData(3)
		UI:Lua_HintDelImage(2)
	end
	UI:Lua_HintOffImagePos(1, 0, 10)
	UI:Lua_HintOffImageSize(1, 0, -20)
	if not UI:Lua_HintGetImage(1) then DelHint() return end
	if LuaRet["h"] < 2 then UI:Lua_HintDelTimer(1); DelHint() end
end
-----------------------------------------------------------------------------------------------------
----------2------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
function HINTFUNC_2_INIT(id, p1, p2)
	SetHintData(0)
	if not UI:Lua_GetScreenSize() then return end
	local srcw = LuaRet["w"]; local srch = LuaRet["h"]
	UI:Lua_HintSetImageSize(0, srcw, srch)
	UI:Lua_HintSetPos(0, 0)
	UI:Lua_HintSetSize(srcw, srch)
end

function HINTFUNC_2_TIMER(id, p1, p2)
	if not UI:Lua_GetScreenSize() then return end
	local srcw = LuaRet["w"]; local srch = LuaRet["h"]
	if not UI:Lua_HintGetWindow("e") then return end
	UI:Lua_WndSetSizeM(srcw, srch)
	UI:Lua_HintDelMainTimer()
end

function HINTFUNC_2_ATIME(id, p1, p2)
	if GetHintData() ~= 0 then return end
	SetHintData(1)
	UI:Lua_HintSetImageFlag(1, 3)
	UI:Lua_HintSetImageAlpha(1, 255)
	UI:Lua_HintAddTimer(1, 30, "HINTFUNC_2_TIMER1")
end

function HINTFUNC_2_TIMER1(id, p1, p2)
	UI:Lua_HintOffImageAlpha(1, -4)
	if not UI:Lua_HintGetImage(1) then DelHint() return end
	if LuaRet["Alpha"] == 0 then DelHint() end
end
-----------------------------------------------------------------------------------------------------
----------20-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
function HINTFUNC_21_INIT(id, p1, p2)
	UI:Lua_HintSetZOrder(1)
	UI:Lua_HintSetPos(200, 100)
end

function HINTFUNC_21_TIMER(id, p1, p2)
	if p1 % 2 == 0 then
		UI:Lua_HintOffImagePos(2, 0, 10)
		UI:Lua_HintSetImageId(1, 1904100011)
	else
		UI:Lua_HintOffImagePos(2, 0, -10)
		UI:Lua_HintSetImageId(1, 1904100013)
	end
end

function  HINTFUNC_21_EDIT(id, p1, p2)
	DelHint()
end
-----------------------------------------------------------------------------------------------------
----------21-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
function HINTFUNC_21_INIT(id, p1, p2)
	UI:Lua_HintSetZOrder(1)
	UI:Lua_RectifyHintPosByGrid(333, 312, -94, -128)
end

function HINTFUNC_21_SCRIPT(handle, x, y)
	UI:Lua_PixToGrid(x, y)
	UI:Lua_GetDistGridToGrid(333, 312, LuaRet["x"], LuaRet["y"])
	if LuaRet == 0 then DelHint() end
end

function HINTFUNC_21_TIMER(id, p1, p2)
	if p1 % 2 == 0 then UI:Lua_HintOffImagePos(2, 0, 10)
	else UI:Lua_HintOffImagePos(2, 0, -10) end
end

function HINTFUNC_21_TIMER1(id, p1, p2)
	UI:Lua_RectifyHintPosByGrid(333, 312, -94, -128)
	UI:Lua_GetDistGridToRole(333, 312)
	if LuaRet <= 1 then DelHint() end
	if p1 % 4 == 0 then
		if not UI:Lua_HintGetImage(3) then return end
		if LuaRet["Id"] == 1043000023 then UI:Lua_HintSetImageId(3, 1043000016)
		else UI:Lua_HintOffImageId(3, 1) end
	end
end