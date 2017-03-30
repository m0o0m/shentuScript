RoleRein = {}

function RoleRein.main()
local ui = "<form default_parent='RoleGUI'> <dialog OnInit='RoleRein.UIInit' id='RoleRein' image='0' x='35' y='57' w='16' h='16' revmsg='true' OnClose='RoleRein.OnClose'>"
	.."	<image id='ReinBackImg' image='1805900170' x='0' y='0' w='592' h='473' check_point='0' revmsg='true'/>"
	.."	<image id='ReinLevelImg1' image='1805900042' x='212' y='34' w='157' h='31' check_point='0' revmsg='true'/>"
	.."	<image id='LevelImg1' image='1805900043' x='372' y='36' w='22' h='29' check_point='0' revmsg='true'/>"
	.."	<image id='LevelImg2' image='0' x='389' y='36' w='22' h='29' check_point='0' revmsg='true'/>"
	.."	<button id='ReinBtn' image='1805900100' x='234' y='417' w='124' h='45' OnLButtonUp='RoleRein.ReinB' revmsg='true'/>"
	.."	<image id='ConsumePointImg' image='1805900018' x='227' y='355' w='130' h='22' check_point='0' revmsg='true'/>"
	.."	<image id='HavePointImg' image='1805900018' x='227' y='388' w='130' h='22' check_point='0' revmsg='true'/>"
	.."	<image id='ToImg' image='1800000366' x='278' y='191' w='43' h='58' check_point='0' revmsg='true'/>"
	.."	<edit id='NowValueNameEdit1' x='84' y='147' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='物理攻击：' font='system'/>"
	.."	<edit id='NowValueNameEdit2' x='84' y='173' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='魔法攻击：' font='system'/>"
	.."	<edit id='NowValueNameEdit3' x='84' y='199' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='道术攻击：' font='system'/>"
	.."	<edit id='NowValueNameEdit4' x='84' y='225' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='物理防御：' font='system'/>"
	.."	<edit id='NowValueNameEdit5' x='84' y='251' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='魔法防御：' font='system'/>"
	.."	<edit id='NowValueNameEdit6' x='84' y='277' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='生命上限：' font='system'/>"
	.."	<edit id='NowValueEdit1' x='150' y='147' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NowValueEdit2' x='150' y='173' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NowValueEdit3' x='150' y='199' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NowValueEdit4' x='150' y='225' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NowValueEdit5' x='150' y='251' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NowValueEdit6' x='150' y='277' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NextValueNameEdit1' x='364' y='147' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='物理攻击：' font='system'/>"
	.."	<edit id='NextValueNameEdit2' x='364' y='173' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='魔法攻击：' font='system'/>"
	.."	<edit id='NextValueNameEdit3' x='364' y='199' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='道术攻击：' font='system'/>"
	.."	<edit id='NextValueNameEdit4' x='364' y='225' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='物理防御：' font='system'/>"
	.."	<edit id='NextValueNameEdit5' x='364' y='251' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='魔法防御：' font='system'/>"
	.."	<edit id='NextValueNameEdit6' x='364' y='277' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='生命上限：' font='system'/>"
	.."	<edit id='NextValueEdit1' x='430' y='147' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NextValueEdit2' x='430' y='173' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NextValueEdit3' x='430' y='199' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NextValueEdit4' x='430' y='225' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NextValueEdit5' x='430' y='251' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='NextValueEdit6' x='430' y='277' w='80' h='16' canedit='false' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ConsumePointNameEdit' x='159' y='358' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='修为消耗：' font='system'/>"
	.."	<edit id='HavePointNameEdit' x='159' y='391' w='65' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='拥有修为：' font='system'/>"
	.."	<edit id='ConsumePointEdit' x='222' y='358' w='150' h='16' canedit='false' align='center' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='HavePointEdit' x='222' y='391' w='150' h='16' canedit='false' align='center' revmsg='true' enable='false' font='system'/>"
	.."	<richedit id='ConvertPointBtn' x='476' y='437' w='104' h='26' text='#SELECT#获得修为>>#SELECTEND#' text_color='#00ff00'  OnLButtonUp='RoleRein.RoleReinPoint' revmsg='true' font='system'/>"
	.."	<image id='arrowMagic' image='3020200700' type='animate' x='270' y='189' w='43' h='58' check_point='0'/>"
	.."	<image id='hintImg' image='1800000297' x='13' y='428' w='27' h='30' tip='1.转生消耗转生修为\n2.转生修为可通过等级兑换或使用转生丹来获取' check_point='0' revmsg='true'/>"
	.."	<richedit id='textPrompt' x='39' y='437' w='104' h='26' text='转生说明' revmsg='true' tip='1.转生消耗转生修为\n2.转生修为可通过等级兑换或使用转生丹来获取' text_color='#7bff31' font='system'/>".." </dialog>"
	.."</form>"
	CLGenFormByStringCache("RoleGUI","RoleRein",ui)
end


RoleRein.WndHandle = 0
RoleRein.Open = false
--RoleRein.image = {1801500108,1801500109,1801500110,1801500111,1801500112,1801500113,1801500114,1801500115,1801500116,1801500107}
RoleRein.image = {1805900044,1805900045,1805900046,1805900047,1805900048,1805900049,1805900050,1805900051,1805900052,1805900043}
function RoleRein.UIInit(_Handle)
	RoleRein.WndHandle = _Handle
	RoleRein.Open = true
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleSkill")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleSkillChoose")
	if  _GUIHandle ~= 0   then
		GUIWndClose(_GUIHandle)
	end
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleInner")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleEquipment")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleFeatsTitle")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	local _GUIHandle = GUIWndFindChildM(RoleGUI.WndHandle,"TitleImg")
	if _GUIHandle ~= 0 then
		GUIWndSetImageID(_GUIHandle, 1805900010)
	end
	
	
	
	for i = 1, 5 do
		_GUIHandle=GUIWndFindChildM(RoleGUI.WndHandle, "StateBtn_"..i)
		GUIButtonSetIsActivePageBtn(_GUIHandle, false)
	end		
	_GUIHandle = GUIWndFindWindow(RoleGUI.WndHandle, "StateBtn_5")--按钮
	GUIButtonSetIsActivePageBtn(_GUIHandle, true)
	WndMoveToParentTop(_GUIHandle)
	UI:Lua_SubmitForm("页游转生表单","show_update","")
end

function RoleRein.update(info)
	RoleRein.attNow = info[1]
	RoleRein.attNext = info[2]
	RoleRein.level = info[3]
	RoleRein.job = info[4]
	RoleRein.repair = info[5]
	RoleRein.needrepair = info[6]
	local tabNow = RoleRein.getvalue(RoleRein.attNow)
	local tabNext = RoleRein.getvalue(RoleRein.attNext)
	EditSetText(RoleRein.WndHandle,"ConsumePointEdit",""..RoleRein.needrepair)
	EditSetText(RoleRein.WndHandle,"HavePointEdit",""..RoleRein.repair)
	if RoleRein.repair < RoleRein.needrepair then
		EditSetTextColor(RoleRein.WndHandle,"HavePointEdit",CLMakeARGB(255, 255, 0, 0))
	else
		EditSetTextColor(RoleRein.WndHandle,"HavePointEdit",CLMakeARGB(255, 255, 255, 255))
	end
	RoleRein.SetEdit(tabNow,1)
	RoleRein.SetEdit(tabNext,2)
	local level = tonumber(RoleRein.level)
	if level > 9 then
		local a = math.floor(level / 10)
		local b = level % 10
		if b == 0 then
			b = 10 
		end
		ImageSetImageID(RoleRein.WndHandle,"LevelImg1",RoleRein.image[a])
		ImageSetImageID(RoleRein.WndHandle,"LevelImg2",RoleRein.image[b])
	else
		if level == 0 then
			ImageSetImageID(RoleRein.WndHandle,"LevelImg1",RoleRein.image[10])
		else
			ImageSetImageID(RoleRein.WndHandle,"LevelImg1",RoleRein.image[level])
		end
	end	
end	

function RoleRein.SetEdit(tab,index)
	local id = {"NowValueEdit","NextValueEdit"}
	local a = 1 
	for i = 1 , 6 do 
		if i < 6 then
			EditSetText(RoleRein.WndHandle,""..id[tonumber(index)]..i,""..tab[a].." - "..tab[a + 1])
		else
			EditSetText(RoleRein.WndHandle,""..id[tonumber(index)]..i,""..tab[a])
		end	
		a = a + 2
	end
	
end	

function RoleRein.getvalue(tab)
	local value = {0,0,0,0,0,0,0,0,0,0,0}
	for k , v in pairs(tab) do 
		if k == "11" then
			value[1] = v
		elseif k == "10" then
			value[2] = v
		elseif k == "13" then
			value[3] = v
		elseif k == "12" then
			value[4] = v
		elseif k == "15" then
			value[5] = v
		elseif k == "14" then
			value[6] = v
		elseif k == "7" then
			value[7] = v
		elseif k == "6" then
			value[8] = v
		elseif k == "9" then
			value[9] = v
		elseif k == "8" then
			value[10] = v
		elseif k == "3" then
			value[11] = v								
		end
	end
	return value
end	

function RoleRein.ReinB(_Handle)
	if RoleRein.repair < RoleRein.needrepair then
		RoleRein.msg_up("修为不足，无法转生")
		return ""
	end
	UI:Lua_SubmitForm("页游转生表单","zhuanshen","")
end	

function RoleRein.RoleReinPoint(_Handle)
	UI:Lua_OpenWindow(0, "RoleReinPoint.lua")
end

function RoleRein.wndClose()
	RoleRein.Open = false
end

function RoleRein.msg_up(str)
	local _handle = GetWindow(0,"RoleGUI,RoleRein,ReinBtn")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -45 , -16 , 70 , color , 3)	
end	


--[[
function RoleRein.msg_up(str)
	local index = 1 
	for i = 1 , 5 do 
		if EditGetText(RoleRein.WndHandle,"msg"..i) == "" then
			index = i
		end
	end	
	EditSetText(RoleRein.WndHandle,"msg"..index,str)
	local _handle = GetWindow(RoleRein.WndHandle,"msg"..index)
	if _handle ~= 0 then
		GUI:WndTween(_handle, "<Tween><Frame time='3' y = '350' /></Tween>","RoleRein.clear("..index..")")
	end		
end	
function RoleRein.clear(index)
	--EditSetText(RoleRein.WndHandle,"msg"..index,"")
	EditSetText(0, "RoleGUI,RoleRein,msg"..index,"")
	local _handle = GetWindow(RoleRein.WndHandle,"msg"..index)
	GUI:WndTween(_handle, "<Tween><Frame time='0.5' y = '410' /></Tween>","")
end
--]]


function RoleRein.OnClose(_handle)
	for i = 1, 5 do 
		local handle = GetWindow(0,"RoleGUI,RoleRein,msg"..i)
		if tonumber(handle) ~= 0 then 
			GUI:WndClose(handle)
		end
	end
end

RoleRein.main()