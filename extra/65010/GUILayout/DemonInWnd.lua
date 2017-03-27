DemonInWnd ={}
local ui = "<form> <dialog OnInit='DemonInWnd.UIInit' id='DemonInWnd' image='0' x='0' y='250' w='16' h='16' revmsg='true' esc_close='false'>"
	.." <image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000011,1805000008,1805000014,1805000010,1805000012' x='10' y='0' w='208' h='320' check_point='0' revmsg='true'/>"
	.."	<button id='HideBtn' image='1805000003' x='191' y='-27' w='26' h='27' OnLButtonUp='DemonInWnd.OnHideWndBtn' revmsg='true'/>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='10' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<edit id='text1' x='28' y='15' w='120' h='22' revmsg='true' text_color='#F1E761' text='活动剩余时间：' font='system'/>"
	.."	<edit id='restTimes' x='113' y='18' w='69' h='16' revmsg='true' text_color='#00CC33' font='system'/>"
	.."	<richedit id='leaveMap' x='87' y='291' w='134' h='18' text='#SELECT#退出活动#SELECTEND#' text_color='#E4C19F' OnLButtonUp='DemonInWnd.LeaveMap' revmsg='true' font='system'/>"
	.."	<edit id='title' x='63' y='-27' w='92' h='26' revmsg='true' text_color='#F1E761' text='禁魔神殿' font='SIMLI18'/>"
	.."	<image id='title' image='1805500041' x='75' y='-24' w='126' h='22' check_point='0' revmsg='false'/>"
	.."	<image id='background' image='1805000002' x='10' y='42' w='216' h='27' check_point='0' revmsg='true'/>"   --background
	.."	<edit id='awardHint' x='150' y='18' w='59' h='20' text='参与奖励' text_color='#00C932' revmsg='true' font='system'/>"
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

function DemonInWnd.main()
	if GetWindow(nil,"DemonInWnd") ~= 0 then
		DemonInWnd.CloseDlg()
	else
		GenFormByString(ui)
	end
end

--UI Logic Code Start
DemonInWnd.second = 60
DemonInWnd.minute = 19
DemonInWnd.hour = 0
DemonInWnd.individualScore = 0
DemonInWnd.individualRank = 0
local _l = tonumber(deserialize(FormParam[1]))
function DemonInWnd.UIInit(h)
	DemonInWnd._hideWnd = 0
	DemonInWnd._wnd = h
	local r0 = "排名奖励：                                        "
	local r1 = "前五名玩家在活动结束后，可进入神秘地图挑战终极BOSS"
	local handle = 0
	handle = GetWindow(h, "awardHint")
	if handle ~= 0 then
		GUI:WndSetHintWidth(handle, 300)
		GUI:WndSetHint(handle, r0..r1)
	end
	local day, hour, minute, second = GetDetailTime(_l)
	dbg('second:'..second)
	DemonInWnd.second = second
	DemonInWnd.minute = minute 
	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= 0 then
		GUI:WndSetVisible(taskWnd, false)
	end
	handle = GetWindow(h,"HideBtn")
	if handle ~= 0 then
		GUI:WndMoveToParentTop(handle)
	end
    local sX = CL:GetScreenWidth()
	local tw = GUI:WndFindWindow(0, "DemonInWnd")
    if tw ~= 0 then
        GUI:WndSetPosM(tw, sX-215, 250)
    end
	
	local _wnd = GUI:WndCreateWnd(0, "FbWndHideUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		DemonInWnd._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -27)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "DemonInWnd.OnShowWndBtn")
		end
	end
	
	if GUI:WndAddTimerBrief(h, 1000, "DemonInWnd.DcUpdata") then    --设置定时器
		DemonInWnd.time_id = LuaRet
	end
	--GUI:WndRegistScript(h, RDWndBaseCL_wnd_close, "DemonInWnd.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED DemonInWnd", "DemonInWnd.width") 
	
end

function DemonInWnd.width()
	OnScreenSizeChange(DemonInWnd._wnd, DemonInWnd._hideWnd,215,26)  
end

--[[function DemonInWnd.cleartime()  --关闭定时器
	UI:Lua_DelDelayTask(tonumber(DemonInWnd.time_id))
end--]]

function DemonInWnd.OnHideWndBtn(h)
	local sX = CL:GetScreenWidth()
	GUI:WndGetPosM(DemonInWnd._wnd)
	GUI:WndSetPosM(DemonInWnd._wnd, sX, LuaRet[2])
	DemonInWnd.HideTweenEnd()
end

function DemonInWnd.HideTweenEnd()
	local sX = CL:GetScreenWidth()
	GUI:WndSetPosM(DemonInWnd._hideWnd, sX-26, 251)
	GUI:WndSetVisible(DemonInWnd._wnd, false)
	GUI:WndSetVisible(DemonInWnd._hideWnd, true)
end

function DemonInWnd.OnShowWndBtn(h)
	GUI:WndSetVisible(DemonInWnd._wnd, true)
	GUI:WndSetVisible(DemonInWnd._hideWnd, false)
	local tweenX = CL:GetScreenWidth()- 215
	GUI:WndGetPosM(DemonInWnd._wnd)
	GUI:WndSetPosM(DemonInWnd._wnd, tweenX, LuaRet[2])
end

function DemonInWnd.DcUpdata()
	--DemonInWnd.lastTime()
	local min_Offset = ""
	local second_Offset = ""
	local handle = GetWindow(DemonInWnd._wnd, "restTimes")
	DemonInWnd.second = DemonInWnd.second - 1
	if DemonInWnd.minute < 10 then
		min_Offset = "0"
	end
	if DemonInWnd.second < 10 then
		second_Offset = "0"
	end
	GUI:EditSetTextM(handle, min_Offset..DemonInWnd.minute..":"..second_Offset..DemonInWnd.second)
	if DemonInWnd.minute == 0 and DemonInWnd.second == 0 then
		DemonInWnd.second = 1
		--UI:Lua_SubmitForm("NPC_IsNotInScene", "Back_LC", "")
		if DemonInWnd.hour == 0 then 
			UI:Lua_SubmitForm("魔族入侵表单", "Time_Out",DemonInWnd.individualScore.."#".. DemonInWnd.individualRank)
			DemonInWnd.hour = 1
		end
		return
	end	
	if DemonInWnd.second <= 0 then
		DemonInWnd.minute = DemonInWnd.minute - 1
		DemonInWnd.second = 60
	end
end

function DemonInWnd.RankChange(data)
	if DemonInWnd.hour == 1 then 
		return 
	end
	local handle = 0 
	local name = ""
	if CL:GetPlayerSelfPropBase(1) then 
		name = LuaRet
	end
	for i=1,8 do
		handle = GetWindow(DemonInWnd._wnd, "rank"..i)
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end
		handle = GetWindow(DemonInWnd._wnd, "playerScore"..i)
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)		
		end
		handle = GetWindow(DemonInWnd._wnd, "playerName"..i)
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)		
		end
	end
	
	for i=1,#data do
		if name == data[i][2] then 
			handle = GetWindow(DemonInWnd._wnd, "individualScore")
			if handle ~= 0 then
				DemonInWnd.individualScore=data[i][3]
				GUI:EditSetTextM(handle, ''..data[i][3])			
			end
			handle = GetWindow(DemonInWnd._wnd, "individualRank")
			if handle ~= 0 then
				DemonInWnd.individualRank=i
				GUI:EditSetTextM(handle, ''..i)			
			end
		end
		if i<9 then 
			if data[i][1] ~= nil and data[i][1] ~= "" then 
				if data[i][3] == 0 then break end
				handle = GetWindow(DemonInWnd._wnd, "rank"..i)
				if handle ~= 0 then
					GUI:EditSetTextM(handle, ''..i)	
					GUI:WndSetVisible(handle, true)		
				end
				handle = GetWindow(DemonInWnd._wnd, "playerScore"..i)
				if handle ~= 0 then
					GUI:EditSetTextM(handle, ''..data[i][3])	
					GUI:WndSetVisible(handle, true)			
				end
				handle = GetWindow(DemonInWnd._wnd, "playerName"..i)
				if handle ~= 0 then
					GUI:EditSetTextM(handle, ''..data[i][2])	
					GUI:WndSetVisible(handle, true)	
				end
			end
		end
	end
end

function DemonInWnd.LeaveMap()
	UI:Lua_SubmitForm("NPC_IsNotInScene", "Back_LC", "")
	DemonInWnd.CloseDlg()
end


function DemonInWnd.CloseDlg()
	DemonInWnd._wnd = GetWindow(0, "DemonInWnd")
	if DemonInWnd._wnd ~= 0 then
		GUI:WndClose(DemonInWnd._wnd)
	end
	local handle = GetWindow(0,"Demon_RankWnd")
	if handle ~= 0 then 
		GUI:WndClose(handle)
	end
	
	local Wnd = GetWindow(0, "backimg")
	if Wnd ~= 0 then
		GUI:WndClose(Wnd)
	end
	Wnd = GetWindow(0, "backimg1")
	if Wnd ~= 0 then
		GUI:WndClose(Wnd)
	end
	
	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= 0 then
		GUI:WndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUI:WndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

function DemonInWnd.msgtip(msgs) --中间字的显示  “30秒内击杀相同目标不能获得积分”
	
	UI:Lua_GetScreenSize()
	local x = LuaRet[1]/2-191
	local y = LuaRet[2]-200
	msg_tip(msgs,x,y)
	
end

function DemonInWnd.kill(name,num)
	local name_tab = {"三连斩","三连斩","三连斩","四连斩","五连斩","六连斩","超神",}
	local sY = CL:GetScreenHeight()
	local _Handle = GUI:ImageCreate("","backimg",1806200003,0,sY-290)
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
		EditSetProp(0, "backimg,backimg_name", true, false, false, true, MakeARGB(255, 228, 193, 159), false, name)
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
	CL:AddDelayTask("DemonInWnd.Miss()", 4000, 1)
end

function DemonInWnd.Miss()
	local Wnd = GetWindow(0, "backimg")
	if Wnd ~= 0 then
		GUI:WndClose(Wnd)
	end
end

function DemonInWnd.lastTime()
	if DemonInWnd.minute >= 5 then return end
	local tab_minute = {}
	local tab_second = {}
	local a = DemonInWnd.minute
	for i=1, 10 do 
		tab_minute[i]= a %10
		a= math.floor(a/10)
		if a == 0 then 
			tab_minute[i+1]= 0
			break
		end
	end
	a = DemonInWnd.second - 1
	for i=1, 10 do 
		tab_second[i]= a %10
		a= math.floor(a/10)
		if a == 0 then 
			tab_second[i+1]= 0
			break
		end
	end
	
	local sX = CL:GetScreenWidth() 
	local _Handle = GUI:ImageCreate(0,"backimg1",1806200002,(sX/2-110),100 )
	if _Handle ~= 0 then 
		GUI:WndSetSizeM(_Handle,210, 70)
	end
	local _GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_17",1806200008,95,26)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,22, 34)
	end
	
	local imgid = CL:Plus("1806200009", tostring(tab_minute[2]))
	_GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_13",tonumber(imgid),45,21)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,34, 41)
	end
	local imgid = CL:Plus("1806200009", tostring(tab_minute[1]))
	_GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_16",tonumber(imgid),70,21)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,34, 41)
	end
	
	local imgid = CL:Plus("1806200009", tostring(tab_second[2]))
	_GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_14",tonumber(imgid),108,21)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,34, 41)
	end
	
	local imgid = CL:Plus("1806200009", tostring(tab_second[1]))
	_GUIHandle = GUI:ImageCreate(_Handle,"TestWndChild_15",tonumber(imgid),133,21)
	if _GUIHandle ~= 0 then 
		GUI:WndSetSizeM(_GUIHandle,34, 41)
	end
	
end
 

DemonInWnd.main()