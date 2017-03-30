mayaTemple2 ={}
local ui = "<form> <dialog visible='false' OnInit='mayaTemple2.UIInit' id='mayaTemple2' image='1806100012' x='298' y='46' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='title' image='1805500019' x='124' y='12' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='138' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='mayaTemple2.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='t1' x='174' y='157' w='145' h='20' revmsg='true' text_color='#00FF00' text='说 明' font='system'/>"
	.."	<edit id='t2' x='70' y='261' w='281' h='20' revmsg='true' text_color='#E4C19F' text='2、BOSS数量：每层' font='system'/>"
	.."	<edit id='t4' x='71' y='293' w='212' h='20' revmsg='true' text_color='#E4C19F' text='3、刷新时间：30-180分钟' font='system'/>"
	.."	<edit id='t8' x='70' y='198' w='281' h='20' revmsg='true' text_color='#E4C19F' text='1、进入条件：进入远古神殿二层需要消耗' font='system'/>"
	.."	<edit id='t0' x='87' y='229' w='38' h='20' revmsg='true' text_color='#00FF00' text='1个' font='system'/>"
	.."	<edit id='t6' x='71' y='325' w='159' h='20' revmsg='true' text_color='#E4C19F' text='4、掉落材料：' font='system'/>"
	.."	<edit id='t7' x='70' y='355' w='281' h='20' revmsg='true' text_color='#E4C19F' text='5、掉落装备：' font='system'/>"
	.."	<edit id='0' x='83' y='73' w='233' h='20' revmsg='true' text_color='#E4C19F' text='远古神殿刷新全系列BOSS，人少BOSS多，' font='system'/>"
	.."	<edit id='t9' x='180' y='261' w='83' h='20' revmsg='true' text_color='#00FF00' text='3个' font='system'/>"
	.."	<edit id='t12' x='205' y='261' w='108' h='20' revmsg='true' text_color='#E4C19F' text='（远古神殿共4层）' font='system'/>"
	.."	<edit id='t13' x='154' y='325' w='121' h='20' revmsg='true' text_color='#00FF00' text='全系列材料' font='system'/>"
	.."	<edit id='t15' x='154' y='354' w='66' h='20' revmsg='true' text_color='#00FF00' text='全系列装备' font='system'/>"
	.."	<edit id='t16' x='111' y='443' w='156' h='20' revmsg='true' text_color='#E4C19F' text='消耗远古卷轴：' font='system'/>"
	.."	<edit id='1' x='59' y='105' w='233' h='20' revmsg='true' text_color='#E4C19F' text='不可多得的打BOSS好地方。' font='system'/>"
	.."	<richedit id='enterMap' x='119' y='418' w='150' h='28' canedit='false' text_color='#00FF00' text='#SELECT#→ 『进入神殿二层』 ←#SELECTEND#' OnLButtonUp='mayaTemple2.EnterMap' revmsg='true' font='system'/>"
	.."	<edit id='t10' x='112' y='229' w='225' h='20' revmsg='true' text_color='#E4C19F' text='远古卷轴（每天     机会进入）' font='system'/>"
	.."	<edit id='t3' x='202' y='228' w='27' h='20' revmsg='true' text_color='#00FF00' text='2次' font='system'/>"
	.."	<edit id='t17' x='191' y='442' w='66' h='20' revmsg='true' text_color='#00FF00' text='1个' font='system'/>"
	.."	<edit id='t18' x='213' y='442' w='121' h='20' revmsg='true' text_color='#E4C19F' text='（拥有　　  ）' font='system'/>"
	.."	<edit id='counts' x='254' y='442' w='66' h='20' revmsg='true' text_color='#00FF00' text='' font='system'/>"
	.." </dialog>"
	.."</form>"

	
function mayaTemple2.main()
	local handle = GetWindow(nil,"mayaTemple2")
	if handle ~= 0 then
		GUIWndClose(handle)
		return
	end
	GenFormByString(ui)
end

--UI Logic Code Start
function mayaTemple2.UIInit(_Handle)
	--GUIWndSetSizeM(_Handle, 361, 524)
	msg()
	CenterWnd(_Handle) 
	WndSetVisible(_Handle, "",true)
	local counts = tonumber(deserialize(as3.tolua(FormParam[1])))
	local _handle = GetWindow(nil,"mayaTemple2,counts")
	if _handle ~= 0 then 
		GUIEditSetTextM(_handle, ""..counts.."个")
	end
end
mayaTemple2.main()

function mayaTemple2.closeWnd()     --关闭按钮
	local hand = GetWindow(nil,"mayaTemple2")
	if hand ~= 0 then
		GUIWndClose(hand)
	end
end

function mayaTemple2.EnterMap()
	UI:Lua_SubmitForm("玛雅神殿表单", "enter2", "")
end

function mayaTemple2.msg(str)
	local hand = GetWindow(nil,"mayaTemple2,enterMap")
	if hand ~= 0 then 
		window_msg_up(hand,str,-77,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end

function mayaTemple2.msgbox()
	luaMsgBox.new("系统", "#COLORCOLOR_GOLD#   还欠缺1张【远古卷轴】， 是否花费200元宝购买使用#COLORCOLOREND#", {"是", "否"}, {"mayaTemple2.get", 0}, _handle)
end


function mayaTemple2.get(_handle)
	UI:Lua_SubmitForm("玛雅神殿表单","Buy","")
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end


function mayaTemple2.YBMsg()
	luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
	
end