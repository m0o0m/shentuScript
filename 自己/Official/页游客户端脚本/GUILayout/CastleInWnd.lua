CastleInWnd ={}
local ui = "<form> <dialog OnInit='CastleInWnd.UIInit' id='CastleInWnd' image='0' x='0' y='250' w='16' h='16' revmsg='true'>"
	.." <image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000008,1805000014,1805000010,1805000012,1805000011' x='0' y='0' w='223' h='285' check_point='0' revmsg='true'/>"
	.."	<button id='HideBtn' image='1805000003' x='190' y='-27' w='26' h='27' OnLButtonUp='CastleInWnd.OnHideWndBtn' revmsg='true'/>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='0' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<edit id='text1' x='18' y='15' w='84' h='22' revmsg='true' text_color='#F1E761' text='攻城剩余时间：' font='system'/>"
	.."	<edit id='restTimes' x='101' y='18' w='69' h='16' revmsg='true' text_color='#00CC33' font='system'/>"
	--.."	<richedit id='leaveMap' x='87' y='291' w='134' h='18' text='#SELECT#退出活动#SELECTEND#' text_color='#E4C19F' OnLButtonUp='CastleInWnd.LeaveMap' revmsg='true' font='system'/>"
	.."	<edit id='title' x='68' y='-27' w='92' h='26' revmsg='true' text_color='#F1E761' text='攻城战' font='SIMLI18'/>"

	--.."	<richedit id='awardHint' x='157' y='19' w='59' h='20' text='#SELECT#城主奖励#SELECTEND#' revmsg='true' font='system'/>"
	.."	<edit id='playerNames' x='35' y='44' w='59' h='21' revmsg='true' text_color='#C2B6A0' text='玩家' font='system'/>"
	.."	<edit id='playerScores' x='90' y='44' w='59' h='21' revmsg='true' text_color='#C2B6A0' text='杀人数' font='system'/>"
	.."	<edit id='playerRanks' x='150' y='44' w='59' h='21' revmsg='true' text_color='#C2B6A0' text='行会' font='system'/>"
	.."	<image id='lineImage' image='1800600004' x='1' y='248' w='209' h='2' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<edit id='playerScore1' x='95' y='76' w='30' h='20' align='center' revmsg='true' text_color='#E101E8' text='99' font='system'/>"
	.."	<edit id='playerScore2' x='95' y='96' w='30' h='20' align='center' revmsg='true' text_color='#00A2F6' font='system'/>"
	.."	<edit id='playerScore3' x='95' y='116' w='30' h='20' align='center' revmsg='true' text_color='#23A05B' font='system'/>"
	.."	<edit id='playerScore4' x='95' y='136' w='30' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='playerScore5' x='95' y='156' w='30' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='playerScore6' x='95' y='176' w='30' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='playerScore7' x='95' y='196' w='30' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='playerScore8' x='95' y='216' w='30' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='playerName1' x='5' y='76' w='90' h='20' align='center' revmsg='true' text_color='#E101E8' text='吾乃常山赵子龙' font='system'/>"
	.."	<edit id='playerName2' x='5' y='96' w='90' h='20' align='center' revmsg='true' text_color='#00A2F6' font='system'/>"
	.."	<edit id='playerName3' x='5' y='116' w='90' h='20' align='center' revmsg='true' text_color='#23A05B' font='system'/>"
	.."	<edit id='playerName4' x='5' y='136' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='playerName5' x='5' y='156' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='playerName6' x='5' y='176' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='playerName7' x='5' y='196' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='playerName8' x='5' y='216' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='rank1' x='120' y='76' w='90' h='20' align='center' revmsg='true' text_color='#E101E8' text='魏国蜀国吴国蜀' font='system'/>"
	.."	<edit id='rank2' x='120' y='96' w='90' h='20' align='center' revmsg='true' text_color='#00A2F6' font='system'/>"
	.."	<edit id='rank3' x='120' y='116' w='90' h='20' align='center' revmsg='true' text_color='#23A05B' font='system'/>"
	.."	<edit id='rank4' x='120' y='136' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='rank5' x='120' y='156' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='rank6' x='120' y='176' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='rank7' x='120' y='196' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='rank8' x='120' y='216' w='90' h='20' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='individual1' x='10' y='257' w='90' h='18' revmsg='true' text_color='#F2CE07' text='本行会人数：' font='system'/>"
	.."	<edit id='individualScore' x='79' y='257' w='39' h='18' revmsg='true' text_color='#FFFFFF' text='99' font='system'/>"
	.."	<edit id='individual2' x='102' y='257' w='85' h='18' revmsg='true' text_color='#F2CE07' text='其它行会人数：' font='system'/>"
	.."	<edit id='individualRank' x='185' y='257' w='39' h='18' revmsg='true' text_color='#FFFFFF' text='99' font='system'/>"
	.." </dialog>"
	.."</form>"

function CastleInWnd.main()
	if GetWindow("","CastleInWnd") ~= 0 then
		CastleInWnd.CloseDlg()
	else
		GenFormByString(ui)
	end
end

CastleInWnd.second = 60
CastleInWnd.minute = 19
CastleInWnd.hour = 0
CastleInWnd.individualScore = 0
CastleInWnd.individualRank = 0
--UI Logic Code Start
function CastleInWnd.UIInit(h)
	CastleInWnd._hideWnd = 0
	CastleInWnd._wnd = h
	local r1 = "<font color='#9C846D'>成为城主，可享受城主的各种福利</font>\n"
	local handle = 0
	handle = GetWindow(h, "awardHint")
	if handle ~= 0 then
		GUIWndSetHint(handle, "<font color='#D58840'>城主奖励：\n</font>"..r1)
	end
	local _l = tonumber(deserialize(as3.tolua(FormParam[1])))
	local day, hour, minute, second = GetDetailTime(_l)
	CastleInWnd.second = second
	CastleInWnd.minute = minute 
	CastleInWnd.hour = hour
	local taskWnd = GetWindow("", "TaskWindow")
	if taskWnd ~= 0 then
		GUIWndSetVisible(taskWnd, false)
	end
	handle = GetWindow(h,"HideBtn")
	if handle ~= 0 then
		GUIWndMoveToParentTop(handle)
	end
    local sX = CLGetScreenWidth()
	local tw = GUIWndFindWindow("", "CastleInWnd")
    if tw ~= 0 then
        GUIWndSetPosM(tw, sX-216, 250)
    end
	
	local _wnd = GUIWndCreateWnd("", "FbWndHideUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		CastleInWnd._hideWnd = _wnd
		GUIWndSetVisible(_wnd, false)
		local btn = GUIButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -27)
		if btn ~= 0 then
			GUIWndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "CastleInWnd.OnShowWndBtn")
		end
	end
	
	if GUIWndAddTimerBrief(h, 1000, "CastleInWnd.DcUpdata") then    --设置定时器
		CastleInWnd.time_id = as3.tolua(LuaRet)
	end
	--GUIWndRegistScript(h, RDWndBaseCL_wnd_close, "CastleInWnd.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED CastleInWnd", "CastleInWnd.width") 
	
end

function CastleInWnd.width()
	OnScreenSizeChange(CastleInWnd._wnd, CastleInWnd._hideWnd,216,26)  
end

--[[function CastleInWnd.cleartime()  --关闭定时器
	UI:Lua_DelDelayTask(tonumber(CastleInWnd.time_id))
end--]]

function CastleInWnd.OnHideWndBtn(h)
	local sX = CLGetScreenWidth()
	local tXml = "<Tween><Frame time='0.3' x='"..sX.."' /></Tween>"
	GUIWndTween(CastleInWnd._wnd, tXml, "CastleInWnd.HideTweenEnd()")
end

function CastleInWnd.HideTweenEnd()
	local sX = CLGetScreenWidth()
	GUIWndSetPosM(CastleInWnd._hideWnd, sX-26, 251)
	GUIWndSetVisible(CastleInWnd._wnd, false)
	GUIWndSetVisible(CastleInWnd._hideWnd, true)
end

function CastleInWnd.OnShowWndBtn(h)
	GUIWndSetVisible(CastleInWnd._wnd, true)
	GUIWndSetVisible(CastleInWnd._hideWnd, false)
	local tweenX = CLGetScreenWidth()- 216
	local tXml = "<Tween><Frame time='0.3' x='"..tweenX.."' /></Tween>"
	GUIWndTween(CastleInWnd._wnd, tXml, "")
end

function CastleInWnd.DcUpdata()
	--CastleInWnd.lastTime()
	local min_Offset = ""
	local second_Offset = ""
	local handle = GetWindow(CastleInWnd._wnd, "restTimes")
	CastleInWnd.second = CastleInWnd.second - 1
	if CastleInWnd.minute < 10 then
		min_Offset = "0"
	end
	if CastleInWnd.second < 10 then
		second_Offset = "0"
	end
	GUIEditSetTextM(handle, CastleInWnd.hour..":"..min_Offset..CastleInWnd.minute..":"..second_Offset..CastleInWnd.second)
	if CastleInWnd.minute == 0 and CastleInWnd.second == 0 then
		if CastleInWnd.hour == 1 then 
			CastleInWnd.hour = 0
			CastleInWnd.minute = 59
			CastleInWnd.second = 59
		elseif CastleInWnd.hour == 0 then 
			UI:Lua_SubmitForm("NPC_IsNotInScene", "cs_SafeArea", "")
			--UI:Lua_SubmitForm("魔族入侵表单", "Time_Out",CastleInWnd.individualScore.."#".. CastleInWnd.individualRank)
			CastleInWnd.CloseDlg()
		end
		return
	end
	if CastleInWnd.second <= 0 then
		CastleInWnd.minute = CastleInWnd.minute - 1
		CastleInWnd.second = 60
	end
end

function CastleInWnd.RankChange(data)

	local handle,s,n = 0,0,0
	local familyname = ""
	if CLGetPlayerSelfPropBase(19) then 
		familyname = as3.tolua(LuaRet)
	end
	for i=1,8 do
		handle = GetWindow(CastleInWnd._wnd, "rank"..i)
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
		handle = GetWindow(CastleInWnd._wnd, "playerScore"..i)
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)		
		end
		handle = GetWindow(CastleInWnd._wnd, "playerName"..i)
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)		
		end
	end
	for i=1,#data do
		if i<9 then 
			if data[i][1] ~= nil and data[i][1] ~= "" then 
				if data[i][3] == 0 then break end
				handle = GetWindow(CastleInWnd._wnd, "rank"..i)
				if handle ~= 0 then
					GUIEditSetTextM(handle, data[i][3])	
					GUIWndSetVisible(handle, true)	
					if familyname == data[i][3] then
						GUIWndSetTextColorM(handle, MakeARGB(255, 0, 162, 246)) 
					else
						GUIWndSetTextColorM(handle, MakeARGB(255, 255, 0, 0))
					end
				end
				handle = GetWindow(CastleInWnd._wnd, "playerScore"..i)
				if handle ~= 0 then
					GUIEditSetTextM(handle, data[i][2])	
					GUIWndSetVisible(handle, true)	
					if familyname == data[i][3] then
						GUIWndSetTextColorM(handle, MakeARGB(255, 0, 162, 246)) 
					else
						GUIWndSetTextColorM(handle, MakeARGB(255, 255, 0, 0))
					end		
				end
				handle = GetWindow(CastleInWnd._wnd, "playerName"..i)
				if handle ~= 0 then
					GUIEditSetTextM(handle, data[i][1])	
					GUIWndSetVisible(handle, true)
					if familyname == data[i][3] then
						GUIWndSetTextColorM(handle, MakeARGB(255, 0, 162, 246)) 
					else
						GUIWndSetTextColorM(handle, MakeARGB(255, 255, 0, 0))
					end
				end
			end
		end
		if data[i][3] == familyname then 
			s=s+1
		else
			n=n+1
		end
	end
	
	if familyname ~= "" then
		handle = GetWindow(CastleInWnd._wnd, "individualScore")      --本行会人数
		if handle ~= 0 then
			GUIEditSetTextM(handle, ""..s)			
		end
		handle = GetWindow(CastleInWnd._wnd, "individualRank")       --其它行会人数
		if handle ~= 0 then
			GUIEditSetTextM(handle, ""..n)			
		end
	end
	
end

function CastleInWnd.LeaveMap()
	--UI:Lua_SubmitForm("NPC_IsNotInScene", "Back_LC", "")
	CastleInWnd.CloseDlg()
end


function CastleInWnd.CloseDlg()
	CastleInWnd._wnd = GetWindow("", "CastleInWnd")
	if CastleInWnd._wnd ~= 0 then
		GUIWndClose(CastleInWnd._wnd)
	end 
	
	local taskWnd = GetWindow(0, "TaskWindow")
	if taskWnd ~= 0 then
		GUIWndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

--[[function CastleInWnd.msgtip(msgs) --中间字的显示  “30秒内击杀相同目标不能获得积分”
	
	UI:Lua_GetScreenSize()
	local x = as3.tolua(LuaRet[1])/2-191
	local y = as3.tolua(LuaRet[2])-200
	msg_tip(msgs,x,y)
	
end

function CastleInWnd.kill(name,num)
	local name_tab = {"三连斩","三连斩","三连斩","四连斩","五连斩","六连斩","超神",}
	local sY = CLGetScreenHeight()
	local _Handle = GUIImageCreate("","backimg",1806200003,0,sY-290)
	if _Handle ~= 0 then
		GUIWndSetParam(_Handle, 0)
		GUIWndSetSizeM(_Handle,297, 72)
	end
	local _GUIHandle = GUIEditCreate(_Handle,"backimg_name",50,25,125,22)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIEditSetFontM(_GUIHandle, "SIMLI18")
		GUIWndSetTextColorM(_GUIHandle, 4293181855)
		--GUIEditSetTextM(_GUIHandle,"名字最长七个字")
		EditSetProp("", "backimg,backimg_name", true, false, false, true, MakeARGB(255, 228, 193, 159), false, name)
	end
	_GUIHandle = GUIEditCreate(_Handle,"TestWndChild_15",180,22,112,20)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIEditSetTextM(_GUIHandle,"已经")
		GUIEditSetFontM(_GUIHandle, "SIMLI18")
		GUIWndSetTextColorM(_GUIHandle, 4294953984)
	end
	_GUIHandle = GUIEditCreate(_Handle,"TestWndChild_16",225,22,112,20)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
		GUIEditSetTextM(_GUIHandle, name_tab[tonumber(num)].."!")
		GUIEditSetFontM(_GUIHandle, "SIMLI18")
		GUIWndSetTextColorM(_GUIHandle, 4278253311)
	end
	CLAddDelayTask("CastleInWnd.Miss()", 4000, 1)
end

function CastleInWnd.Miss()
	local Wnd = GetWindow("", "backimg")
	if Wnd ~= 0 then
		GUIWndClose(Wnd)
	end
end

function CastleInWnd.lastTime()
	if CastleInWnd.minute >= 5 then return end
	local tab_minute = {}
	local tab_second = {}
	local a = CastleInWnd.minute
	for i=1, 10 do 
		tab_minute[i]= a %10
		a= math.floor(a/10)
		if a == 0 then 
			tab_minute[i+1]= 0
			break
		end
	end
	a = CastleInWnd.second - 1
	for i=1, 10 do 
		tab_second[i]= a %10
		a= math.floor(a/10)
		if a == 0 then 
			tab_second[i+1]= 0
			break
		end
	end
	
	local sX = CLGetScreenWidth() 
	local _Handle = GUIImageCreate("","backimg1",1806200002,(sX/2-110),100 )
	if _Handle ~= 0 then 
		GUIWndSetSizeM(_Handle,210, 70)
	end
	local _GUIHandle = GUIImageCreate(_Handle,"TestWndChild_17",1806200008,95,26)
	if _GUIHandle ~= 0 then 
		GUIWndSetSizeM(_GUIHandle,22, 34)
	end
	
	_GUIHandle = GUIImageCreate(_Handle,"TestWndChild_13",1806200009+tab_minute[2],45,21)
	if _GUIHandle ~= 0 then 
		GUIWndSetSizeM(_GUIHandle,34, 41)
	end
	_GUIHandle = GUIImageCreate(_Handle,"TestWndChild_16",1806200009+tab_minute[1],70,21)
	if _GUIHandle ~= 0 then 
		GUIWndSetSizeM(_GUIHandle,34, 41)
	end
	
	_GUIHandle = GUIImageCreate(_Handle,"TestWndChild_14",1806200009+tab_second[2],108,21)
	if _GUIHandle ~= 0 then 
		GUIWndSetSizeM(_GUIHandle,34, 41)
	end
	
	_GUIHandle = GUIImageCreate(_Handle,"TestWndChild_15",1806200009+tab_second[1],133,21)
	if _GUIHandle ~= 0 then 
		GUIWndSetSizeM(_GUIHandle,34, 41)
	end
	
end--]]
 

CastleInWnd.main()