CastlellanWorshipWnd ={}
local ui = "<form> <dialog OnInit='CastlellanWorshipWnd.UIInit' id='CastlellanWorshipWnd' image='1806100012' x='356' y='46' w='384' h='505' center='true' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='TestWndChild_18' image='1805500040' x='155' y='9' w='88' h='20' canedit='false' revmsg='true'/>"
	.."	<button id='closeButton' image='1805900080' x='327' y='4' w='34' h='38' OnLButtonUp='CastlellanWorshipWnd.CloseWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='lineImage1' image='1800600004' x='20' y='152' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1800600004' x='21' y='349' w='327' h='2' check_point='0' revmsg='true'/>"
	
	
	.." <wnd id='wnd1' x='0' y='0' w='630' h='490' revmsg='true' visible='true'>"
	.."	<richedit id='introduceText' x='77' y='98' w='212' h='18' canedit='false' text='��ɽ�ǰ�ȫ��Ĥ�ݳ����ɻ�������飡' text_color='#C2B6A0' revmsg='true' font='system'/>"
	.."	<edit id='t1' x='64' y='180' w='61' h='14' revmsg='true' text_color='#E4C19F' text='����˵����' font='system'/>"
	.."	<richedit id='enterMap' x='148' y='378' w='88' h='20' canedit='false' text='#SELECT#������ʼĤ��#SELECTEND#' text_color='#33FF00' OnLButtonUp='CastlellanWorshipWnd.StartWorship' revmsg='true' font='system'/>"
	.."	<edit id='TestWndChild_0' x='108' y='73' w='166' h='16' revmsg='true' text_color='#00FF00' text=' 11:30-12:30  17:30-18:30 	' font='system'/>"
	.."	<edit id='t8' x='78' y='74' w='35' h='14' revmsg='true' text_color='#E4C19F' text='ÿ��' font='system'/>"
	.."	<image id='TestWndChild_1' image='1803300010' x='67' y='215' w='12' h='13' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1803300010' x='67' y='245' w='12' h='13' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1803300010' x='67' y='274' w='12' h='13' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_4' image='1803300010' x='67' y='303' w='12' h='13' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_5' x='86' y='214' w='61' h='14' revmsg='true' text_color='#E4C19F' text='40-59��' font='system'/>"
	.."	<edit id='TestWndChild_6' x='86' y='243' w='61' h='14' revmsg='true' text_color='#E4C19F' text='60-75��' font='system'/>"
	.."	<edit id='TestWndChild_7' x='87' y='272' w='61' h='14' revmsg='true' text_color='#E4C19F' text='76-90��' font='system'/>"
	.."	<edit id='TestWndChild_8' x='87' y='301' w='61' h='14' revmsg='true' text_color='#E4C19F' text='91������' font='system'/>"
	.."	<edit id='TestWndChild_9' x='173' y='215' w='152' h='14' revmsg='true' text_color='#E4C19F' text='ÿ5���ӻ��    ����' font='system'/>"
	.."	<edit id='TestWndChild_10' x='173' y='244' w='152' h='14' revmsg='true' text_color='#E4C19F' text='ÿ5���ӻ��     ����' font='system'/>"
	.."	<edit id='TestWndChild_11' x='173' y='273' w='154' h='14' revmsg='true' text_color='#E4C19F' text='ÿ5���ӻ��     ����' font='system'/>"
	.."	<edit id='TestWndChild_12' x='173' y='302' w='150' h='14' revmsg='true' text_color='#E4C19F' text='ÿ5���ӻ��     ����' font='system'/>"
	.."	<edit id='TestWndChild_13' x='239' y='215' w='40' h='14' revmsg='true' text_color='#E4C19F' text='75��' font='system'/>"
	.."	<edit id='TestWndChild_14' x='239' y='244' w='40' h='14' revmsg='true' text_color='#E4C19F' text='120��' font='system'/>"
	.."	<edit id='TestWndChild_15' x='238' y='273' w='40' h='14' revmsg='true' text_color='#E4C19F' text='180��' font='system'/>"
	.."	<edit id='TestWndChild_16' x='239' y='302' w='40' h='14' revmsg='true' text_color='#E4C19F' text='330��' font='system'/>"
	.."	<richedit id='TestWndChild_17' x='148' y='415' w='88' h='20' canedit='false' text_color='#33FF00' text='#SELECT#�鿴������Ȩ#SELECTEND#' OnLButtonUp='CastlellanWorshipWnd.ShowCastlellanRight' revmsg='true' font='system'/>"
	.."</wnd>"
	.." <wnd id='wnd2'  x='0' y='0' w='630' h='490' revmsg='true' visible='false'>"
	.."	<richedit id='TestWndChild_17' x='155' y='398' w='88' h='20' canedit='false' text='#SELECT#���س���Ĥ��#SELECTEND#' text_color='#33FF00' OnLButtonUp='CastlellanWorshipWnd.ShowCastlellanMain' revmsg='true' font='system'/>"
	.."	<richedit id='TestWndChild_19' x='67' y='71' w='263' h='58' canedit='false' text='    Ⱥ����������ս���ǣ����ǳ���ÿ�տ��ڴ���ȡר��������Ԫ��������ר���������Ρ����ֵ�֮����վ�ʹ�֮�ۣ�ӵ������������������ҫ��' text_color='#C2B6A0' revmsg='true' font='system'/>"
	.."	<richedit id='enterMap' x='142' y='184' w='126' h='20' canedit='false' text='#SELECT#��ȡ����ר������#SELECTEND#' text_color='#33FF00' OnLButtonUp='CastlellanWorshipWnd.GetExclusiveAbility' revmsg='true' font='system'/>"
	.."	<richedit id='TestWndChild_20' x='142' y='233' w='127' h='20' canedit='false' text='#SELECT#��ȡ����ÿ��Ԫ��#SELECTEND#' OnLButtonUp='CastlellanWorshipWnd.GetDayfree' text_color='#33FF00' revmsg='true' font='system'/>"
	--.."	<richedit id='TestWndChild_21' x='142' y='282' w='129' h='20' canedit='false' text='#SELECT#��ȡר����������#SELECTEND#' OnLButtonUp='CastlellanWorshipWnd.GetExclusiveWeapon' text_color='#33FF00' revmsg='true' font='system'/>"
	.."</wnd>"
	.." </dialog>"
	.."</form>"

function CastlellanWorshipWnd.main()
	GenFormByString(ui)
end

CastlellanWorshipWnd.btnClicked = 0
--UI Logic Code Start
function CastlellanWorshipWnd.UIInit(_Handle)
	CastlellanWorshipWnd.wndH = _Handle
	CastlellanWorshipWnd.wnd1H = GetWindow(nil, "CastlellanWorshipWnd, wnd1")
	CastlellanWorshipWnd.wnd2H = GetWindow(nil, "CastlellanWorshipWnd, wnd2")
end

function CastlellanWorshipWnd.StartWorship(this)
	CastlellanWorshipWnd.btnClicked = this
	UI:Lua_SubmitForm("WorshipService", "BeginWorship", "")
end

function CastlellanWorshipWnd.ShowCastlellanRight()
	if CastlellanWorshipWnd.wnd1H ~= 0 then
		GUIWndSetVisible(CastlellanWorshipWnd.wnd1H,false)
	end
	if CastlellanWorshipWnd.wnd2H ~= 0 then
		GUIWndSetVisible(CastlellanWorshipWnd.wnd2H,true)
	end
end

function CastlellanWorshipWnd.ShowCastlellanMain()
	if CastlellanWorshipWnd.wnd1H ~= 0 then
		GUIWndSetVisible(CastlellanWorshipWnd.wnd1H,true)
	end
	if CastlellanWorshipWnd.wnd2H ~= 0 then
		GUIWndSetVisible(CastlellanWorshipWnd.wnd2H,false)
	end
end

function CastlellanWorshipWnd.GetExclusiveAbility(this)
	CastlellanWorshipWnd.btnClicked = this
	UI:Lua_SubmitForm("WorshipService", "GetAbility", "")
end

function CastlellanWorshipWnd.GetDayfree(this)
	CastlellanWorshipWnd.btnClicked = this
	UI:Lua_SubmitForm("WorshipService", "GetWelfare", "")
end

function CastlellanWorshipWnd.GetExclusiveWeapon(this)
	CastlellanWorshipWnd.btnClicked = this
	UI:Lua_SubmitForm("WorshipService", "GetWeapon", "")
end

function CastlellanWorshipWnd.MsgPrompt(str)
	if CastlellanWorshipWnd.btnClicked ~= 0 then
		local color = MakeARGB(255, 255, 0, 0)
		window_msg_up(CastlellanWorshipWnd.btnClicked, str, -68, -30, 40, color, 2)
		--window_msg_up(handle , str, 58, -16, 70, color, 3)
	end
end

function CastlellanWorshipWnd.BeginPrompt(str)
	UI:Lua_GetScreenSize()
	local x = as3.tolua(LuaRet[1])/2-191
	local y = as3.tolua(LuaRet[2])-200
	msg_tip(str,x,y)
end

function CastlellanWorshipWnd.CloseWnd()
	if CastlellanWorshipWnd.wndH ~= 0 then
		GUIWndClose(CastlellanWorshipWnd.wndH)
	end
end
CastlellanWorshipWnd.main()