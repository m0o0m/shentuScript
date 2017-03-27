--ҳ�γ�����ɫ
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

--������ҳ��ť
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

--���µ�ѡ��(��ѡ��)
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



--�����ϸ������д���(���ƫ�ƵĿؼ��������ʾ���ݣ�x���꣬y���꣬�߶ȣ���ɫ������ʱ��)
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

function window_msg_update(handle,str,h,color,times) --laye�ļ��ر�ʱ������ʧ
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

--��������������λ��(��һ�����ڣ��ڶ�������)
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


--�жϼ����Ƿ���Ҫ������ʾ��������
local skill_tab = { --��Ҫ��ʾ��ӿ�����ļ���
	["���ս���1��"] = 1 ,
	["����ն1��"] = 1 ,
	["Ұ�����1��"] = 1 ,
	["�»��䵶1��"] = 1 ,
	
	["��������1��"] = 1 ,
	["ħ��1��"] = 1 ,
	["��������1��"] = 1 ,	
	["�����1��"] = 1 ,
	["�ױ���1��"] = 1 ,
	["������1��"] = 1 ,
	["������1��"] = 1 ,
	
	["Ⱥ��ƶ�Ѫ��1��"] = 1 ,
	["��֮ͥ��1��"] = 1 ,
	["�ش���1��"] = 1 ,
	["������1��"] = 1 ,
	["�ظ�֮��1��"] = 1 ,
	["�����1��"] = 1 ,
	["�ƶ���1��"] = 1 ,
	["�������1��"] = 1 ,
	["��ɷ��ħ��1��"] = 1 ,

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
	UI:Lua_SubmitForm("���ܿ������", "main", ""..skill)
end	

--��ȡ��npc�Ƿ�������
function GetNpcTask(npcGuid,formName,funName)
	local task_state = 0
	if CLGetNpcQuestStateByID(npcGuid) then
		task_state = as3.tolua(LuaRet)
	end

	UI:Lua_SubmitForm(formName, funName, ""..task_state)
end	

--��ȡ��½�Ƿ���΢�˵�½
function GetIsClient()
	--msg("GetIsClient")
	local clientType = as3.tolua(CLGetIsClient())
	--msg("clientType="..clientType)
	UI:Lua_SubmitForm("�ͻ�������", "clintSet", ""..clientType)
end	

--�򿪼�սboss
taskBoss = 0
function TaskBoss(param)
	taskBoss = tonumber(param)
	CLOnOpenBoss()
	--UI:Lua_SubmitForm("����սBOSS��", "OpenWin", ""..param)
end	

--���׳����
function OpenFirstConsume()
	UI:Lua_SubmitForm("�׳����_s", "firstConsume_click", "")
end
--��ת��
RoleReing = 0
function OpenRoleRein()
	RoleReing = 1
	local _GUIHandle = GetWindow(nil,"RoleGUI")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	else 
		UI:Lua_SubmitForm("��ɫ��","Open_Rein","")
	end 
	
end	

--�򿪻
taskOpenActivities = 0
function TaskOpenActivities(param)
	taskOpenActivities = tonumber(param)
	CLOnOpenServiceActivities()
	--UI:Lua_SubmitForm("����սBOSS��", "OpenActivities", ""..param)
end	
--�򿪶������
taskOpenForge = 0
function TaskOpenForge(param)
	taskOpenForge = tonumber(param)
	CLOnOpenForge()
	--UI:Lua_SubmitForm("����սBOSS��", "OpenActivities", ""..param)
end

--�򿪳ɾ�ѫ��
taskAchieve = 0
function TaskAchieve()
	taskAchieve = 2
	CLOnAchieveWindow()
end	

function TaskFurnace(param)
	CLOnOpenFurnace()
	FurnaceWnd.tabs = tonumber(param)
end	

--ͨ�ùر�lua���溯��
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


--����icon
if not webIcon then
	webIcon = {}
end
webIcon.bindGold_s = 1806600014
webIcon.gold_s = 1806600015
webIcon.bindIngot_s = 1806600013
webIcon.ingot_s = 1806600012
webIcon.integral_s =  1800000055


function msg_tip(msgs,x,y)      --��ʾ��ʾ��Ϣ  
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
	{   --1��ʯ,  	2����, 		3��¯, 		4���, 		5�л�, 		6�ɾ�, 		7��������,     8̽��
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
		"UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")", --��ʯ,  
		"CL:OnOpenForge()",  	--����,
		"CL:OnOpenFurnace()",	--��¯,
		"CL:OnOpenWing()",		--���,
		"CL:OnFamilyWindow()",	--�л�, 
		"CL:OnAchieveWindow()", --�ɾ�,
		"UI:Lua_OpenWindow(0,\"BuyExp.lua\")",		--��������
		"CL:OnOpenTreasure()",  --̽��
	}
	if FUNCTION[DisplayEffectForFirstShowindex] then
		local func = loadstring(FUNCTION[DisplayEffectForFirstShowindex])
		func()
	end
	DisplayEffectForFirstShowindex = 0
end