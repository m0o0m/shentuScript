BOSS_ThirdWnd ={}
local ui = "<form> <dialog OnInit='BOSS_ThirdWnd.UIInit' id='BOSS_ThirdWnd' image='1806100012' x='302' y='81' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='TitleImg' image='1805500021' x='129' y='11' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='title3' x='171' y='144' w='68' h='35' revmsg='true' text_color='#00FF00' text='说   明' font='system'/>"
	.."	<edit id='caption' x='44' y='80' w='350' h='23' revmsg='true' text_color='#C2B6A0' text='  灭神禁地三层刷新3个神秘BOSS，只有强力玩家才能击' font='system'/>"
	.."	<edit id='text6' x='60' y='201' w='276' h='25' revmsg='true' text_color='#D2CAA3'  text='1.进入条件：        玩家免费进入，VIP1-2玩家' font='system'/>"
	.."	<edit id='text2' x='60' y='251' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='2.BOSS数量：3个' font='system'/>"
	.."	<edit id='text3' x='60' y='276' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='3.刷新时间：240-360分钟' font='system'/>"
	.."	<edit id='text4' x='60' y='301' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='4.掉落材料：全系列材料' font='system'/>"
	.."	<richedit id='enterMap' x='125' y='427' w='165' h='26' canedit='false' text_color='#00FF00' text='#SELECT#→『进入灭神禁地三层』←#SELECTEND#' OnLButtonUp='BOSS_ThirdWnd.EnterMap' revmsg='true' font='system'/>"
	.."	<edit id='text5' x='60' y='326' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='5.掉落装备：全系列装备' font='system'/>"
	.."	<button id='closeBtn' image='1805900080' x='326' y='7' w='34' h='38' OnLButtonUp='BOSS_ThirdWnd.CloseWnd' revmsg='true'/>"
	.."	<edit id='TestWndChild_16' x='44' y='99' w='299' h='23' revmsg='true' text_color='#C2B6A0' text='杀，获得丰厚材料和极品装备！' font='system'/>"
	.."	<richedit id='TestWndChild_18' x='129' y='205' w='65' h='18' canedit='false' text_color='#00FF00' text='#SELECT#VIP3以上#SELECTEND#' OnLButtonUp='BOSS_ThirdWnd.Recharge' revmsg='true' font='system'/>"
	.."	<edit id='text7' x='60' y='226' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='消耗100元宝' font='system'/>"
	.."	<image id='TestWndChild_0' image='1806100013' x='41' y='134' w='299' h='2' revmsg='true'/>"
	.."	<image id='TestWndChild_1' image='1806100013' x='42' y='392' w='299' h='2' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function BOSS_ThirdWnd.main()
	GenFormByString(ui)
end

--UI Logic Code Start
function BOSS_ThirdWnd.UIInit(_Handle)
	BOSS_ThirdWnd._wnd = _Handle
end

function BOSS_ThirdWnd.Recharge()
	UI:Lua_OpenWindow(0, "VIPWnd.lua")
	--CLOpenUrlUseIEByType(3)
end

function BOSS_ThirdWnd.EnterMap()
	UI:Lua_SubmitForm("BossHall_s","jinru3","")
end

function BOSS_ThirdWnd.MsgUp(msg)   --消息提示
	local handle = GetWindow(BOSS_ThirdWnd._wnd, "enterMap")
	local color = MakeARGB(255,255,0,0)
	window_msg_up(handle, msg, -40, -10, 50, color, 2)
end

function BOSS_ThirdWnd.CloseWnd()
	if BOSS_ThirdWnd._wnd ~= 0 then
		GUIWndClose(BOSS_ThirdWnd._wnd)
	end
end

BOSS_ThirdWnd.main()