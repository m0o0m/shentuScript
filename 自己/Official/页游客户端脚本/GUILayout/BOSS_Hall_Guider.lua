BOSS_Hall_Guider ={}
local ui = "<form> <dialog OnInit='BOSS_Hall_Guider.UIInit' id='BOSS_Hall_Guider' image='1806100012' x='302' y='81' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='TitleImg' image='1805500021' x='134' y='11' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='title3' x='176' y='144' w='68' h='35' revmsg='true' text_color='#00FF00' text='说   明' font='system'/>"
	.."	<edit id='caption' x='44' y='80' w='299' h='23' revmsg='true' text_color='#C2B6A0' text='     毫无疑问，灭神禁地绝对是神途里刷新最多BOSS的' font='system'/>"
	.."	<edit id='text6' x='75' y='201' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='1.进入条件：成为VIP（充值1元就能成为VIP）' font='system'/>"
	.."	<edit id='text2' x='75' y='226' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='2.BOSS数量：一层10个，二层5个，三层3个' font='system'/>"
	.."	<edit id='text3' x='75' y='251' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='3.刷新时间：15-360分钟' font='system'/>"
	.."	<edit id='text4' x='75' y='276' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='4.掉落材料：全系列材料' font='system'/>"
	.."	<richedit id='enterMap' x='130' y='379' w='130' h='26' text='#SELECT#→『进入灭神禁地』←#SELECTEND#' text_color='#00FF00' OnLButtonUp='BOSS_Hall_Guider.EnterMap' revmsg='true' font='system'/>"
	.."	<edit id='text5' x='75' y='301' w='276' h='25' revmsg='true' text_color='#D2CAA3' text='5.掉落装备：全系列装备' font='system'/>"
	.."	<button id='closeBtn' image='1805900080' x='326' y='7' w='34' h='38' OnLButtonUp='BOSS_Hall_Guider.CloseWnd' revmsg='true'/>"
	.."	<edit id='TestWndChild_16' x='44' y='99' w='299' h='23' revmsg='true' text_color='#C2B6A0' text=' 地方！数量多、刷新快，且掉落全系列装备！！！' font='system'/>"
	.."	<richedit id='TestWndChild_18' x='147' y='206' w='65' h='18' text='#SELECT#成为VIP#SELECTEND#' text_color='#00FF00' OnLButtonUp='BOSS_Hall_Guider.Recharge' revmsg='true' font='system'/>"
	
	.."	<button id='vipbtn' image='1803400030' x='113' y='405' w='34' h='38' OnLButtonUp='BOSS_Hall_Guider.Recharge' revmsg='true' visible='false'/>"
	.."	<image id='btnMagic' image='3020300200' x='192' y='436' w='125' h='22' type='animate' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </dialog>"
	.."</form>"


function BOSS_Hall_Guider.main()
	local handle = GetWindow(0,"BOSS_Hall_Guider")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	GenFormByString(ui)
end

--UI Logic Code Start
function BOSS_Hall_Guider.UIInit(_Handle)
	BOSS_Hall_Guider._wnd = _Handle
	--UI:Lua_SubmitForm("BossHall_s","getVip","")
	CL:GetPlayerSelfProperty32(201)
	local lv = as3.tolua(LuaRet)
	local handle = GetWindow(BOSS_Hall_Guider._wnd,"btnMagic")
	if handle ~= 0 then
		GUIImageSetDrawCenter(handle,true)		
		GUIImageSetAnimateEnable(handle, true, 150)
		GUIImageSetTransfrom(handle, 12000, 10000,0)
		if lv >= 1 then 
			GUIWndSetVisible(handle,false)	
		else
			GUIWndSetVisible(handle,true)	
		end	
	end
	local handle = GetWindow(BOSS_Hall_Guider._wnd,"vipbtn")
	if handle ~= 0 then
		if lv >= 1 then 
			GUIWndSetVisible(handle,false)	
		else
			GUIWndSetVisible(handle,true)	
		end	
	end
	
end

function BOSS_Hall_Guider.Recharge()
	UI:Lua_OpenWindow(0, "VIPWnd.lua")
	--CLOpenUrlUseIEByType(3)
end

function BOSS_Hall_Guider.EnterMap()
	UI:Lua_SubmitForm("BossHall_s","EnterBossHall","")
end

function BOSS_Hall_Guider.MsgUp(msg)   --消息提示
	local handle = GetWindow(BOSS_Hall_Guider._wnd, "enterMap")
	local color = MakeARGB(255,255,0,0)
	window_msg_up(handle, msg, -50, -10, 30, color, 2)
end

function BOSS_Hall_Guider.CloseWnd()
	if BOSS_Hall_Guider._wnd ~= 0 then
		GUIWndClose(BOSS_Hall_Guider._wnd)
	end
end


BOSS_Hall_Guider.main()