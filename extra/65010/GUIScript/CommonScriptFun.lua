window_msg = {}
function window_msg_up(handle,str,x,y,h,color,times)
	if window_msg.DelayTaskId ~= nil then
		window_msg_ClearMsg()
		CL:DelDelayTask(window_msg.DelayTaskId)
		window_msg.DelayTaskId = nil
	end
	local fh = WndGetParentM(handle)
	GUI:WndGetPosM(handle)
	local posX = LuaRet[1] + tonumber(x)
	local posY = LuaRet[2] + tonumber(y)
	local endY = posY - tonumber(h)
	local index = 1 
	if GetWindow(fh,"msg") == 0 then
		window_msg.MsgHandle = GUI:EditCreate(fh, "msg", posX, endY, 230, 25)
		if window_msg.MsgHandle ~= 0 then 	
			GUI:EditSetTextColor(window_msg.MsgHandle, color)
			GUI:EditSetFontCenter(window_msg.MsgHandle)
			GUI:WndSetCanRevMsg(window_msg.MsgHandle, false)
		end
	end
	
	GUI:WndMoveToParentTop(window_msg.MsgHandle)
	GUI:WndSetPosM(window_msg.MsgHandle, posX, endY)
	EditSetText(window_msg.MsgHandle,nil,str)
		
	window_msg.DelayTaskId = CL:AddDelayTask("window_msg_ClearMsg()", times * 1000, 1)
end

function window_msg_ClearMsg()
	if window_msg.MsgHandle ~= nil then
		GUI:WndClose(window_msg.MsgHandle)
	end
end

--通用关闭lua界面函数
function luaWndClose(h)
	local parentHandle = GUI:WndGetParentM(h)
	if parentHandle ~= 0 then GUI:WndClose(parentHandle) end
end

--获取该npc是否有任势
function GetNpcTask(npcGuid,formName,funName)
	local task_state = 0
	if CL:GetNpcQuestStateByID(npcGuid) then
		task_state = LuaRet
	end

	UI:Lua_SubmitForm(formName, funName, ""..task_state)
end	

--两关联窗口重设位罿第一个窗口，第二个窗叿
function reset_two_relationWnd(_handle1, _handle2)
	local sW = CL:GetScreenWidth()
	local sH = CL:GetScreenHeight()
	if _handle1 ~= 0 then
		GUI:WndGetSizeM(_handle1)
		local firstW, firstH = LuaRet[1], LuaRet[2]
		if _handle2 ~= 0 then
			GUI:WndGetSizeM(_handle2)
			local secondW, secondH = LuaRet[1], LuaRet[2]
			GUI:WndSetPosM(_handle1, sW/2 - (firstW+secondW)/2, (sH-firstH)/2)
			local hand = GetWindow(0,"TreasureHouse_c")
			if hand ~= 0 then  
				GUI:WndSetPosM(_handle2, sW/2 + (firstW+secondW)/2 - secondW, (sH-secondH)/2 + 19)
			else 
				GUI:WndSetPosM(_handle2, sW/2 + (firstW+secondW)/2 - secondW, (sH-secondH)/2 + 9)
			end
		else	
			GUI:WndSetPosM(_handle1, (sW - firstW)/2, (sH - firstH)/2)
		end
	else
		if _handle2 ~= 0 then
			GUI:WndGetSizeM(_handle2) 
			local firstW, firstH = LuaRet[1], LuaRet[2]
			GUI:WndSetPosM(_handle2, (sW - firstW)/2, (sH - firstH)/2 + 19)
		end	
	end
end


function SkillJudge(skill)
	--提示获得技能，微端不做任何处理
end

--打开激战boss
function TaskBoss(param)
	local _GUIHandle = GetWindow(0, "BossWnd")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		UI:Lua_OpenWindow(0, "BossWnd.lua")
	end
end	

--打开首充大礼
function OpenFirstConsume()
	UI:Lua_SubmitForm("首充大礼_s", "firstConsume_click", "")
end

--打开转生
RoleReing = 0
function OpenRoleRein()
	RoleReing = 1
	local _GUIHandle = GetWindow(0,"RoleGUI")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else 
		UI:Lua_SubmitForm("角色表单","Open_Rein","")
	end 
	
end	

--打开活动
function TaskOpenActivities(param)
	local _GUIHandle = GetWindow(0, "ServiceActivities")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		UI:Lua_OpenWindow(0, "ServiceActivities.lua")
	end
end	

--打开成就勋章
taskAchieve = 0
function TaskAchieve()
	taskAchieve = 2
	local _GUIHandle = GetWindow(0, "AchieveWnd")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		UI:Lua_OpenWindow(0, "AchieveWnd.lua")
	end
end	

function OnEventUILink()
	if LuaParam[1] == "执行脚本" then
		loadstring(LuaParam[2])()
	end
end
RegisterUIEvent(LUA_EVENT_UILINK, "UILink点击事件", OnEventUILink)


function msg_tip(msgs,x,y)      --显示提示消息  
	local _GUIHandle = GUI:ImageCreate(0,"TestWndChild_0",1806200004 ,x,y) --1806000064
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,382, 22)
	end
	local width = CL:GetFontStrWidth("system", msgs)
	_GUIHandle = GUI:EditCreate(0,"TestWndChild_1",x+(382-width)/2,y-7,width+10,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293841431)
		EditSetProp(0, "TestWndChild_1", true, false, false, true, MakeARGB(255, 255, 204, 00), false, msgs)
	end
	CL:AddDelayTask("msg_close()", 3000, 1)
end

function msg_close()
	local hand = GetWindow(0,"TestWndChild_0")
	if hand ~= 0 then 
		GUI:WndClose(hand)
	end
	local hand = GetWindow(0,"TestWndChild_1")
	if hand ~= 0 then 
		GUI:WndClose(hand)
	end
end


function OnScreenSizeChange(handle1,handle2,x1,x2)
	local mainUih = handle1
	local hidenUih = handle2
	local mainX = tonumber(x1)
	local hidenX = tonumber(x2)
	local newX = CL:GetScreenWidth()
	local newY = CL:GetScreenHeight()
	
	if mainUih ~= 0 then
		if GUI:WndGetVisible(mainUih) then
			GUI:WndSetPosM(mainUih, newX-mainX, 250)
		else
			GUI:WndSetPosM(mainUih, newX, 250)
		end
	end
	
	if hidenUih ~= 0 then
		GUI:WndSetPosM(hidenUih, newX-hidenX, 251)
	end
	
end