--页游常用颜色
if not webColor then
	webColor = {}
end
webColor.redText = CL:MakeARGB(255, 255, 0, 0)
webColor.normalText = CL:MakeARGB(255, 194, 182, 160)
webColor.whiteText = CL:MakeARGB(255, 255, 255, 255)
webColor.goldenText = CL:MakeARGB(255, 230, 210, 132)
webColor.goldenText_hl = CL:MakeARGB(255, 250, 222, 65)
webColor.blueText = CL:MakeARGB(255, 69, 221, 254)
webColor.purpleText = CL:MakeARGB(255, 230, 2, 237)
webColor.greenText = CL:MakeARGB(255, 37, 163, 92)
webColor.grayText = CL:MakeARGB(255, 192, 192, 192)

--更新切页按钮
function updataPageBtnByHandle(btnsTable, selectHandle)
	local parentHandle = GUIWndGetParentM(selectHandle)
	local _GUIHandle = 0
	for i = 1, #(btnsTable) do
		_GUIHandle = GUIWndFindChildM(parentHandle, btnsTable[i])
		if _GUIHandle == 0 then break end 
		if _GUIHandle == selectHandle then
			GUIButtonSetIsActivePageBtn(_GUIHandle, true)
		else
			GUIButtonSetIsActivePageBtn(_GUIHandle, false)
		end
	end
end

--更新单选框(复选框)
function updataCheckBox(cbTable, h)
	local parentHandle = GUIWndGetParentM(h)
	local _GUIHandle = 0
	for i = 1, #cbTable do
		_GUIHandle = GUIWndFindChildM(parentHandle, cbTable[i])
		if _GUIHandle == h then
			GUICheckBoxSetCheck(_GUIHandle, true)
			GUIWndSetTextColorM(_GUIHandle, webColor.goldenText_hl)
		else
			GUICheckBoxSetCheck(_GUIHandle, false)
			GUIWndSetTextColorM(_GUIHandle, webColor.goldenText)
		end
	end
end



--文字上浮，依托窗口(相对偏移的控件句柄，显示内容，x坐标，y坐标，高度，颜色，到达时间)
function window_msg_up(handle,str,x,y,h,color,times)
	local fh = WndGetParentM(handle)
	GUIWndGetPosM(handle)
	local posX = as3.tolua(LuaRet[1]) + tonumber(x)
	local posY = as3.tolua(LuaRet[2]) + tonumber(y)
	local endY = posY - tonumber(h)
	local index = 1 
	if GetWindow(fh,"msg1") == 0 then
		local _GUIHandle = 0
		for i = 1 , 5 do 
			_GUIHandle = GUIEditCreate(fh, "msg"..i, posX, posY, 230, 25)
			if _GUIHandle ~= 0 then 	
				GUIEditSetTextColor(_GUIHandle, color)
				GUIEditSetFontCenter(_GUIHandle)
				GUIWndSetEnableM(_GUIHandle, false)
			end		
		end	
	else
		for i = 1 , 5 do 
			if EditGetText(fh,"msg"..i) == "" then
				
				index = i
				break
			end
		end	
	end	
	local _handle = GetWindow(fh,"msg"..index)
	if _handle ~= 0 then
		GUIWndSetPosM(_handle, posX, posY)
		EditSetText(_handle,nil,str)
		GUI:WndTween(_handle, "<Tween><Frame time=\'" .. times .. "\' y = \'" .. endY .."\' /></Tween>","ClearTween(".._handle..")")
	end		
end	


function ClearTween(handle,posY)
	if tonumber(handle) ~= 0 then
		EditSetText(handle,nil,"")
	end	
end

function window_msg_update(handle,str,h,color,times) --laye文件关闭时可以消失
	local fh = WndGetParentM(handle)
	GUIWndGetPosM(fh)
	local fX = as3.tolua(LuaRet[1])
	local fY = as3.tolua(LuaRet[2])
	GUIWndGetPosM(handle)
	local strlen = string.len(str)/2*10
	local posX = fX+as3.tolua(LuaRet[1]) - 150 + strlen
	local posY = fY+as3.tolua(LuaRet[2]) 
	local endY = posY - tonumber(h)
	local _GUIHandle = GUIEditCreate("", "msg", posX , posY, 300, 20)
	if _GUIHandle ~= 0 then
		GUIEditSetTextColor(_GUIHandle, color)
		GUIEditSetFontCenter(_GUIHandle)
		GUIWndSetEnableM(_GUIHandle, false)
		EditSetText(_GUIHandle,nil,str)
		GUI:WndTween(_GUIHandle, "<Tween><Frame time=\'" .. times .. "\' y = \'" .. endY .."\' /></Tween>","ClearTween(".._GUIHandle..")")
	end
end	

--两关联窗口重设位置(第一个窗口，第二个窗口)
function reset_two_relationWnd(_handle1, _handle2)
	local tXml_start, tXml_end = "<Tween><Frame time='0.4' x='", "'/></Tween>"
	local sW = CLGetScreenWidth()
	local sH = CLGetScreenHeight()
	if _handle1 ~= 0 then
		GUIWndGetSizeM(_handle1)
		local firstW, firstH = as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2])
		if _handle2 ~= 0 then
			GUIWndGetSizeM(_handle2)
			local secondW, secondH = as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2])
			GUIWndTween(_handle1, tXml_start..(sW/2 - (firstW+secondW)/2).."' y='"..((sH-firstH)/2)..tXml_end, "")
			local hand = GetWindow(nil,"TreasureHouse_c")
			if hand ~= 0 then  
				GUIWndTween(_handle2, tXml_start..(sW/2 + (firstW+secondW)/2 - secondW).."' y='"..((sH-secondH)/2 + 19)..tXml_end, "")
			else 
				GUIWndTween(_handle2, tXml_start..(sW/2 + (firstW+secondW)/2 - secondW).."' y='"..((sH-secondH)/2 + 9)..tXml_end, "")
			end
		else	
			GUIWndTween(_handle1, tXml_start..((sW - firstW)/2).."' y='"..((sH - firstH)/2)..tXml_end, "")
		end
	else
		if _handle2 ~= 0 then
			GUIWndGetSizeM(_handle2) 
			local firstW, firstH = as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2])
			GUIWndTween(_handle2, tXml_start..((sW - firstW)/2).."' y= '"..((sH - firstH)/2 + 19)..tXml_end, "")
		end	
	end
end


--判断技能是否需要弹框提示进入快捷栏
local skill_tab = { --需要提示添加快捷栏的技能
	["逐日剑法1级"] = 1 ,
	["烈焰斩1级"] = 1 ,
	["野蛮冲锋1级"] = 1 ,
	["月弧弯刀1级"] = 1 ,
	
	["冰爆漩涡1级"] = 1 ,
	["魔盾1级"] = 1 ,
	["雷霆极光1级"] = 1 ,	
	["烈焰火海1级"] = 1 ,
	["炎爆术1级"] = 1 ,
	["天雷术1级"] = 1 ,
	["炎球术1级"] = 1 ,
	
	["群体蛊毒血咒1级"] = 1 ,
	["天庭之唤1级"] = 1 ,
	["回春咒1级"] = 1 ,
	["隐形咒1级"] = 1 ,
	["地府之唤1级"] = 1 ,
	["神魂火符1级"] = 1 ,
	["蛊毒咒1级"] = 1 ,
	["天罡护体咒1级"] = 1 ,
	["地煞镇魔咒1级"] = 1 ,

	}
function SkillJudge(skill)
	local skillid = tonumber(skill)
	local level = 0
	local Keyname = ""
	if CLGetSkillTemplatePropByID(skillid,SKILL_PROP_KEYNAME) then
		Keyname = as3.tolua(LuaRet)
	end
	if skill_tab[Keyname] == nil then
		return ""
	end	
	UI:Lua_SubmitForm("技能快捷栏表单", "main", ""..skill)
end	

--获取该npc是否有任务
function GetNpcTask(npcGuid,formName,funName)
	local task_state = 0
	if CLGetNpcQuestStateByID(npcGuid) then
		task_state = as3.tolua(LuaRet)
	end

	UI:Lua_SubmitForm(formName, funName, ""..task_state)
end	

--获取登陆是否是微端登陆
function GetIsClient()
	--msg("GetIsClient")
	local clientType = as3.tolua(CLGetIsClient())
	--msg("clientType="..clientType)
	UI:Lua_SubmitForm("客户端下载", "clintSet", ""..clientType)
end	

--打开激战boss
taskBoss = 0
function TaskBoss(param)
	taskBoss = tonumber(param)
	CLOnOpenBoss()
	--UI:Lua_SubmitForm("任务激战BOSS表单", "OpenWin", ""..param)
end	

--打开首充大礼
function OpenFirstConsume()
	UI:Lua_SubmitForm("首充大礼_s", "firstConsume_click", "")
end
--打开转生
RoleReing = 0
function OpenRoleRein()
	RoleReing = 1
	local _GUIHandle = GetWindow(nil,"RoleGUI")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	else 
		UI:Lua_SubmitForm("角色表单","Open_Rein","")
	end 
	
end	

--打开活动
taskOpenActivities = 0
function TaskOpenActivities(param)
	taskOpenActivities = tonumber(param)
	CLOnOpenServiceActivities()
	--UI:Lua_SubmitForm("任务激战BOSS表单", "OpenActivities", ""..param)
end	
--打开锻造面板
taskOpenForge = 0
function TaskOpenForge(param)
	taskOpenForge = tonumber(param)
	CLOnOpenForge()
	--UI:Lua_SubmitForm("任务激战BOSS表单", "OpenActivities", ""..param)
end

--打开成就勋章
taskAchieve = 0
function TaskAchieve()
	taskAchieve = 2
	CLOnAchieveWindow()
end	

function TaskFurnace(param)
	CLOnOpenFurnace()
	FurnaceWnd.tabs = tonumber(param)
end	

--通用关闭lua界面函数
function luaWndClose(h)
	local parentHandle = GUIWndGetParentM(h)
	if parentHandle ~= 0 then GUIWndClose(parentHandle) end
end

function OnScreenSizeChange(handle1,handle2,x1,x2)
	local mainUih = handle1
	local hidenUih = handle2
	local mainX = tonumber(x1)
	local hidenX = tonumber(x2)
	local newX = CLGetScreenWidth()
	local newY = CLGetScreenHeight()
	
	if mainUih ~= 0 then
		if GUIWndGetVisible(mainUih) then
			GUIWndSetPosM(mainUih, newX-mainX, 250)
		else
			GUIWndSetPosM(mainUih, newX, 250)
		end
	end
	
	if hidenUih ~= 0 then
		GUIWndSetPosM(hidenUih, newX-hidenX, 251)
	end
	
end


--常用icon
if not webIcon then
	webIcon = {}
end
webIcon.bindGold_s = 1806600014
webIcon.gold_s = 1806600015
webIcon.bindIngot_s = 1806600013
webIcon.ingot_s = 1806600012
webIcon.integral_s =  1800000055


function msg_tip(msgs,x,y)      --显示提示消息  
	local _GUIHandle = GUIImageCreate("","TestWndChild_0",1806200004 ,x,y) --1806000064
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,382, 22)
	end
	local width = CLGetFontStrWidth("system", msgs)
	_GUIHandle = GUIEditCreate("","TestWndChild_1",x+(382-width)/2,y,width+10,22)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetTextColorM(_GUIHandle, 4293841431)
		EditSetProp("", "TestWndChild_1", true, false, false, true, MakeARGB(255, 255, 204, 00), false, msgs)
	end
	CLAddDelayTask("msg_close()", 3000, 1)
end
function msg_close()
	local hand = GetWindow("","TestWndChild_0")
	if hand ~= 0 then 
		TweenUp(hand)
	end
	local hand = GetWindow("","TestWndChild_1")
	if hand ~= 0 then 
		TweenUp(hand)
	end
end
function TweenUp(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.1' alpha='1' /></Tween>", "TweenDown("..hand..")")
end 
function TweenDown(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' alpha ='0.1' /></Tween>" , GUIWndSetVisible(hand,false))
end


DisplayEffectForFirstShowindex = 0
function DisplayEffectForFirstShow(index)
	local _handle = GetWindow(0,"CenterIconImage")
	if _handle ~= 0 then 
		GUI:WndClose(_handle)
	end
	DisplayEffectForFirstShowindex = tonumber(index)
	
	
	--msg("DisplayEffectForFirstShow")
	
	local ICON =
	{   --1宝石,  	2精炼, 		3神炉, 		4翅膀, 		5行会, 		6成就, 		7经验炼制,     8探宝
		1808100000, 1808100002, 1808100003, 1808100004, 1800500286, 1800500254, 1808100001, 1808100005,
	}
	if ICON[DisplayEffectForFirstShowindex] then 
		--msg("DisplayEffectForFirstShow="..i)
		local sW = CLGetScreenWidth()
		local sH = CLGetScreenHeight()
		local x = sW/2 - 60
		local y = sH/2 - 100
		--msg("x="..x..";y="..y)
		--local _handle = GUIImageCreate("","CenterIconImagemagic",3020300600 , x-280, y-280) 
		local _parent = GUIImageCreate(0, "CenterIconImage", 0, x, y) 
		if _parent ~= 0 then
			CenterWnd(_parent)
			GUIWndGetSizeM(_parent)
			local pW, pH = as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2])
			--msg(''..pW..";"..pH)
			local _handle = GUIImageCreate(_parent, "CenterIconImagemagic", 3020300600 , pW/2 + 2, pH/2 -21) 
			if _handle ~= 0 then 
				--GUIImageSetAnimateEnable(_handle, true, 150)
				GUIWndSetEnableM(_handle, false)
				GUI:ImageSetDrawCenter(_handle, true)
				GUI:ImageSetAnimate(_handle, 150, 4, "DisplayEffectForFirstShow_Close")
			end
			--WndAddEffect(_parent, "", 3020300600, -282, -262, 150, 4)
			_handle = GUIImageCreate(_parent,"CenterIconImage2",1808100006, pW/2 , pH/2 + 6) 
			if _handle ~= 0 then 
				GUI:ImageSetDrawCenter(_handle, true)
			end
			
			_handle = GUIImageCreate(_parent,"CenterIconImage1",ICON[DisplayEffectForFirstShowindex] , pW/2 - 3, pH/2 -33) 
			if _handle ~= 0 then 
				GUI:ImageSetDrawCenter(_handle, true)
			end
		end
	end
	--CLAddDelayTask("DisplayEffectForFirstShow_Close("..i..")", 7000, 1)
end

function DisplayEffectForFirstShow_Close()
	local _handle = GetWindow(0,"CenterIconImage")
	if _handle ~= 0 then 
		GUI:WndClose(_handle)
	end 
	local FUNCTION =
	{   		 	 		 				 		
		"UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")", --宝石,  
		"CL:OnOpenForge()",  	--精炼,
		"CL:OnOpenFurnace()",	--神炉,
		"CL:OnOpenWing()",		--翅膀,
		"CL:OnFamilyWindow()",	--行会, 
		"CL:OnAchieveWindow()", --成就,
		"UI:Lua_OpenWindow(0,\"BuyExp.lua\")",		--经验炼制
		"CL:OnOpenTreasure()",  --探宝
	}
	if FUNCTION[DisplayEffectForFirstShowindex] then
		local func = loadstring(FUNCTION[DisplayEffectForFirstShowindex])
		func()
	end
	DisplayEffectForFirstShowindex = 0
end