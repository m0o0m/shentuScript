YXWSC_in ={}
local ui = "<form> <dialog OnInit='YXWSC_in.UIInit' id='YXWSC_in' image='0' x='0' y='250' w='16' h='16' revmsg='true'>"
	.."<image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000011,1805000008,1805000014,1805000010,1805000012' x='10' y='0' w='208' h='320' check_point='0' revmsg='true'/>"
	.."	<button id='HideBtn' image='1805000003' x='191' y='-27' w='26' h='27' OnLButtonUp='YXWSC_in.OnHideWndBtn' revmsg='true'/>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='10' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<edit id='text1' x='28' y='15' w='80' h='22' revmsg='true' text_color='#F1E761' text='活动剩余时间：' font='system'/>"
	.."	<edit id='restTimes' x='113' y='18' w='69' h='16' revmsg='true' text_color='#00CC33' font='system'/>"
	.."	<richedit id='leaveMap' x='87' y='291' w='134' h='18' text='#SELECT#退出活动#SELECTEND#' text_color='#E4C19F' OnLButtonUp='YXWSC_in.LeaveMap' revmsg='true' font='system'/>"
	.."	<edit id='title' x='63' y='-27' w='92' h='26' revmsg='true' text_color='#F1E761' text='夜袭巫山城' font='SIMLI18'/>"
	.."	<image id='background' image='1805000002' x='10' y='42' w='216' h='27' check_point='0' revmsg='true'/>"   --background
	.."	<edit id='awardHint' x='150' y='15' w='59' h='20' text='参与奖励' text_color='#00C932' revmsg='true' font='system'/>"
	.."	<edit id='playerNames' x='49' y='44' w='59' h='21' revmsg='true' text_color='#C2B6A0' text='玩家名' font='system'/>"
	.."	<edit id='playerScores' x='120' y='44' w='59' h='21' revmsg='true' text_color='#C2B6A0' text='积分' font='system'/>"
	.."	<edit id='playerRanks' x='164' y='44' w='59' h='21' revmsg='true' text_color='#C2B6A0' text='排行' font='system'/>"
	.."	<image id='lineImage' image='1800600004' fitsize='true' x='11' y='248' w='209' h='2' revmsg='true'/>"
	
	.."	<edit id='playerScore1' x='113' y='75' w='40' h='20' revmsg='true' align='center' text_color='#E101E8' text='' font='system'/>"
	.."	<edit id='playerScore2' x='113' y='95' w='40' h='20' revmsg='true' align='center' text_color='#00A2F6' text='' font='system'/>"
	.."	<edit id='playerScore3' x='113' y='115' w='40' h='20' revmsg='true' align='center' text_color='#23A05B' text='' font='system'/>"
	.."	<edit id='playerScore4' x='113' y='135' w='40' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='playerScore5' x='113' y='155' w='40' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='playerScore6' x='113' y='175' w='40' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='playerScore7' x='113' y='195' w='40' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='playerScore8' x='113' y='215' w='40' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	
	.."	<edit id='playerName1' x='21' y='75' w='100' h='21' revmsg='true' align='center' text_color='#E101E8' text='' font='system'/>"
	.."	<edit id='playerName2' x='21' y='95' w='100' h='21' revmsg='true' align='center' text_color='#00A2F6' text='' font='system'/>"
	.."	<edit id='playerName3' x='21' y='115' w='100' h='21' revmsg='true' align='center' text_color='#23A05B' text='' font='system'/>"
	.."	<edit id='playerName4' x='21' y='135' w='100' h='21' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='playerName5' x='21' y='155' w='100' h='21' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='playerName6' x='21' y='175' w='100' h='21' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='playerName7' x='21' y='195' w='100' h='21' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='playerName8' x='21' y='215' w='100' h='21' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	
	.."	<edit id='rank1' x='164' y='75' w='34' h='20' revmsg='true' align='center' text_color='#E101E8' text='' font='system'/>"
	.."	<edit id='rank2' x='164' y='95' w='34' h='20' revmsg='true' align='center' text_color='#00A2F6' text='' font='system'/>"
	.."	<edit id='rank3' x='164' y='115' w='34' h='20' revmsg='true' align='center' text_color='#23A05B' text='' font='system'/>"
	.."	<edit id='rank4' x='164' y='135' w='34' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='rank5' x='164' y='155' w='34' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='rank6' x='164' y='175' w='34' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='rank7' x='164' y='195' w='34' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	.."	<edit id='rank8' x='164' y='215' w='34' h='20' revmsg='true' align='center' text_color='#E4C19F' text='' font='system'/>"
	
	.."	<edit id='individual1' x='21' y='257' w='71' h='18' revmsg='true' text_color='#F2CE07' text='我的积分：' font='system'/>"
	.."	<edit id='individualScore' x='87' y='257' w='39' h='18' revmsg='true' text_color='#FFFFFF' text='' font='system'/>"
	.."	<edit id='individual2' x='139' y='257' w='71' h='18' revmsg='true' text_color='#F2CE07' text='排名：' font='system'/>"
	.."	<edit id='individualRank' x='176' y='257' w='39' h='18' revmsg='true' text_color='#FFFFFF' text='' font='system'/>"
	
	.." </dialog>"
	.."</form>"

function YXWSC_in.main()
	if GetWindow(0,"YXWSC_in") ~= 0 then
		YXWSC_in.CloseDlg()
	else
		GenFormByString(ui)
	end
end

local _l = tonumber(deserialize(FormParam[1]))
YXWSC_in.second = 60
YXWSC_in.minute = 19
YXWSC_in.hour = 0
YXWSC_in.individualScore = 0
YXWSC_in.individualRank = 0
--UI Logic Code Start
function YXWSC_in.UIInit(h)
	YXWSC_in._hideWnd = 0
	YXWSC_in._wnd = h
	local r0 = "参与奖励：                                                        "
	local r1 = "1.参与超过5分钟，可领取9个魂珠碎片(小)、15000点BOSS积分、\n10000成就积分                                                            "
	local r2 = "2.被杀一次，可领取3个魂珠碎片(小)、5000点BOSS积分                 "
	local r3 = "3.击杀10人，可领取6个魂珠碎片(小)、15000点BOSS积分、10000\n成就积分"
	local r4 = "4.入前10名，可领取大量可领取大量狂暴之灵、BOSS积分、成就积分，排\n名越高奖励越丰厚"
	local handle = 0
	local handle = 0
	handle = GetWindow(h, "awardHint")
	if handle ~= 0 then
		GUI:WndSetHintWidth(handle, 400)
		GUI:WndSetHint(handle, r0..r1..r2..r3..r4)
	end
	local day, hour, minute, second = GetDetailTime(_l)
	YXWSC_in.second = second
	YXWSC_in.minute = minute 
	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= nil then
		GUI:WndSetVisible(taskWnd, false)
	end
	handle = GetWindow(h,"HideBtn")
	if handle ~= 0 then
		GUI:WndMoveToParentTop(handle)
	end
    local sX = CL:GetScreenWidth()
	local tw = GUI:WndFindWindow(0, "YXWSC_in")
    if tw ~= 0 then
        GUI:WndSetPosM(tw, sX-215, 250)
    end
	
	local _wnd = GUI:WndCreateWnd(0, "FbWndHideUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		YXWSC_in._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -31)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "YXWSC_in.OnShowWndBtn")
		end
	end
	
	GUI:WndAddTimerBrief(h, 1000, "YXWSC_in.DcUpdata")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED YXWSC_in", "YXWSC_in.width") 
	
end

function YXWSC_in.width()
	local width = CL:GetScreenWidth()
	local handle = GetWindow(0, "YXWSC_in")
	if handle ~= 0 then 
		GUI:WndSetPosM(handle, width-215, 250)
	end
end

function YXWSC_in.OnHideWndBtn(h)
	local sX = CL:GetScreenWidth()
	GUI:WndGetPosM(YXWSC_in._wnd)
	GUI:WndSetPosM(YXWSC_in._wnd, sX, LuaRet[2])
	YXWSC_in.HideTweenEnd()
	--local tXml = "<Tween><Frame time='0.3' x='"..sX.."' /></Tween>"
	--GUI:WndTween(YXWSC_in._wnd, tXml, "YXWSC_in.HideTweenEnd()")
end

function YXWSC_in.HideTweenEnd()
	local sX = CL:GetScreenWidth()
	GUI:WndSetPosM(YXWSC_in._hideWnd, sX-31, 251)
	GUI:WndSetVisible(YXWSC_in._wnd, false)
	GUI:WndSetVisible(YXWSC_in._hideWnd, true)
end

function YXWSC_in.OnShowWndBtn(h)
	GUI:WndSetVisible(YXWSC_in._wnd, true)
	GUI:WndSetVisible(YXWSC_in._hideWnd, false)
	local tweenX = CL:GetScreenWidth()- 215
	GUI:WndGetPosM(YXWSC_in._wnd)
	GUI:WndSetPosM(YXWSC_in._wnd, tweenX, LuaRet[2])
	--local tXml = "<Tween><Frame time='0.3' x='"..tweenX.."' /></Tween>"
	--GUI:WndTween(YXWSC_in._wnd, tXml, "")
end

function YXWSC_in.DcUpdata()
	--YXWSC_in.lastTime()
	local min_Offset = ""
	local second_Offset = ""
	local handle = GetWindow(YXWSC_in._wnd, "restTimes")
	YXWSC_in.second = YXWSC_in.second - 1
	if YXWSC_in.minute < 10 then
		min_Offset = "0"
	end
	if YXWSC_in.second < 10 then
		second_Offset = "0"
	end
	GUI:EditSetTextM(handle, min_Offset..YXWSC_in.minute..":"..second_Offset..YXWSC_in.second)
	if YXWSC_in.minute == 0 and YXWSC_in.second == 0 then
		YXWSC_in.second = 1
		--UI:Lua_SubmitForm("NPC_IsNotInScene", "Back_LC", "")
		if YXWSC_in.hour == 0 then 
			UI:Lua_SubmitForm("夜袭巫山城表单", "Time_Out",YXWSC_in.individualScore.."#".. YXWSC_in.individualRank)
			YXWSC_in.hour = 1
		end
		return
	end	
	if YXWSC_in.second == 0 then
		YXWSC_in.minute = YXWSC_in.minute - 1
		YXWSC_in.second = 60
	end
end

function YXWSC_in.RankChange(data)
	if YXWSC_in.hour == 1 then 
		return 
	end
	local handle = 0 
	local name = ""
	if CL:GetPlayerSelfPropBase(1) then 
		name = LuaRet
	end
	for i=1,8 do
		handle = GetWindow(YXWSC_in._wnd, "rank"..i)
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end
		handle = GetWindow(YXWSC_in._wnd, "playerScore"..i)
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)		
		end
		handle = GetWindow(YXWSC_in._wnd, "playerName"..i)
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)		
		end
	end
	
	for i=1,#data do
		if name == data[i][1] then 
			handle = GetWindow(YXWSC_in._wnd, "individualScore")
			if handle ~= 0 then
				YXWSC_in.individualScore=data[i][2]
				GUI:EditSetTextM(handle, ''..data[i][2])			
			end
			handle = GetWindow(YXWSC_in._wnd, "individualRank")
			if handle ~= 0 then
				YXWSC_in.individualRank=i
				GUI:EditSetTextM(handle, ''..i)			
			end
		end
		if i<9 then 
			if data[i][1] ~= nil and data[i][1] ~= "" then 
				handle = GetWindow(YXWSC_in._wnd, "rank"..i)
				if handle ~= 0 then
					GUI:EditSetTextM(handle, ''..i)	
					GUI:WndSetVisible(handle, true)		
				end
				handle = GetWindow(YXWSC_in._wnd, "playerScore"..i)
				if handle ~= 0 then
					GUI:EditSetTextM(handle, ''..data[i][2])	
					GUI:WndSetVisible(handle, true)			
				end
				handle = GetWindow(YXWSC_in._wnd, "playerName"..i)
				if handle ~= 0 then
					GUI:EditSetTextM(handle, ''..data[i][1])	
					GUI:WndSetVisible(handle, true)	
				end
			end
		end
	end
end

function YXWSC_in.LeaveMap()
	UI:Lua_SubmitForm("NPC_IsNotInScene", "Back_LC", "")
	YXWSC_in.CloseDlg()
end


function YXWSC_in.CloseDlg()
	YXWSC_in._wnd = GetWindow(0, "YXWSC_in")
	if YXWSC_in._wnd ~= 0 then
		GUI:WndClose(YXWSC_in._wnd)
	end
	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= nil then
		GUI:WndSetVisible(taskWnd, true)
	end
	local Wnd = GetWindow(0, "backimg")
	if Wnd ~= nil then
		GUI:WndClose(Wnd)
	end
	Wnd = GetWindow(0, "backimg1")
	if Wnd ~= nil then
		GUI:WndClose(Wnd)
	end
end

function YXWSC_in.msgtip(msgs)
	
	UI:Lua_GetScreenSize()
	local x = LuaRet[1]/2-191
	local y = LuaRet[2]-200
	msg_tip(msgs,x,y)
	
end

function YXWSC_in.kill(name,num)
	local name_tab = {"三连斩","三连斩","三连斩","四连斩","五连斩","六连斩","超神",}
	local sY = CL:GetScreenHeight()
	local _parent = GUI:WndFindWindow(0, "GameMainInterface")
	local _Handle = GUI:ImageCreate(_parent,"backimg",1806200003,0,sY-290)
	if _Handle ~= 0 then
		GUI:WndSetParam(_Handle, 0)
		GUI:WndSetSizeM(_Handle,297, 72)
	end
	local _GUIHandle = GUI:EditCreate(_Handle,"backimg_name",50,25,125,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		--GUI:EditSetTextM(_GUIHandle,"名字最长七个字")
		EditSetProp("", "backimg,backimg_name", true, false, false, true, MakeARGB(255, 228, 193, 159), false, name)
	end
	_GUIHandle = GUI:EditCreate(_Handle,"TestWndChild_15",180,22,112,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"已经")
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
		GUI:WndSetTextColorM(_GUIHandle, 4294953984)
	end
	_GUIHandle = GUI:EditCreate(_Handle,"TestWndChild_16",225,22,112,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, name_tab[tonumber(num)].."!")
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
		GUI:WndSetTextColorM(_GUIHandle, 4278253311)
	end
	CL:AddDelayTask("YXWSC_in.Miss()", 4000, 1)
end

function YXWSC_in.Miss()
	local Wnd = GetWindow(0, "backimg")
	if Wnd ~= nil then
		GUI:WndClose(Wnd)
	end
end

function YXWSC_in.lastTime()
	if YXWSC_in.minute >= 5 then return end
	local tab_minute = {}
	local tab_second = {}
	local a = YXWSC_in.minute
	for i=1, 10 do 
		tab_minute[i]= a %10
		a= math.floor(a/10)
		if a == 0 then 
			tab_minute[i+1]= 0
			break
		end
	end
	a = YXWSC_in.second - 1
	for i=1, 10 do 
		tab_second[i]= a %10
		a= math.floor(a/10)
		if a == 0 then 
			tab_second[i+1]= 0
			break
		end
	end
	
	local sX = CL:GetScreenWidth() 
	local _parent = GUI:WndFindWindow(0, "GameMainInterface")
	local _Handle = GUI:ImageCreate(_parent,"backimg1",1806200002,(sX/2-110),100 )
	if _Handle ~= 0 then 
		GUI:WndSetSizeM(_Handle,210, 70)
	end
	local _GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_17",1806200008,95,26)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,22, 34)
	end
	
	_GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_13",1806200009+tab_minute[2],45,21)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,34, 41)
	end
	_GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_16",1806200009+tab_minute[1],70,21)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,34, 41)
	end
	
	_GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_14",1806200009+tab_second[2],108,21)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,34, 41)
	end
	
	_GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_15",1806200009+tab_second[1],133,21)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,34, 41)
	end
	
end
 

YXWSC_in.main()