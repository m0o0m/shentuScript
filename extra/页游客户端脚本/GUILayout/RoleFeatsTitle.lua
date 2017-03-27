RoleFeatsTitle ={}

function RoleFeatsTitle.main()
local ui = "<form default_parent='RoleGUI'> <dialog OnInit='RoleFeatsTitle.UIInit' id='RoleFeatsTitle' x='20' y='4' w='662' h='550' OnClose='RoleFeatsTitle.OnClose' revmsg='true'>"
	.."	<edit id='TestWndChild_3' x='50' y='78' w='76' h='22' canedit='false' revmsg='true' text_color='#2EA3DA' text='经验、功勋 ' font='system'/>"
	.."	<richedit id='TestWndChild_4' x='84' y='117' w='497' h='34' text_color='#645748' canedit='false' text='完成日常除魔任务可获得功勋，消耗功勋值可激活【功勋称号】，并获得强大属性加成！' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='nPrompt1' x='417' y='236' w='60' h='18' revmsg='true' text_color='#D4A88B' text='物理攻击' font='system'/>"
	.."	<edit id='nPrompt2' x='417' y='267' w='60' h='18' revmsg='true' text_color='#D4A88B' text='魔法攻击 ' font='system'/>"
	.."	<edit id='nPrompt3' x='417' y='298' w='60' h='18' revmsg='true' text_color='#D4A88B' text='道术攻击' font='system'/>"
	.."	<edit id='nPrompt4' x='417' y='329' w='60' h='18' revmsg='true' text_color='#D4A88B' text='物理免伤 ' font='system'/>"
	.."	<edit id='nPrompt5' x='417' y='360' w='60' h='18' revmsg='true' text_color='#D4A88B' text='魔法免伤' font='system'/>"
	.."	<edit id='sx0' x='418' y='205' w='146' h='18' revmsg='true' text_color='#F317C8' font='system'/>"
	.."	<edit id='sx1' x='496' y='236' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='sx2' x='496' y='267' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='sx3' x='496' y='298' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='sx4' x='496' y='329' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='sx5' x='496' y='360' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."<wnd id='partInfo' x='0' y='0' w='662' h='550' revmsg='false'>"
	.."	<edit id='TestWndChild_17' x='211' y='408' w='60' h='18' revmsg='true' text_color='#9D8972' text='升级消耗：' font='system'/>"
	.."	<edit id='TestWndChild_18' x='411' y='409' w='42' h='18' canedit='false' revmsg='true' text_color='#9D8972' text='功勋值' font='system'/>"
	.."	<image id='TestWndChild_19' image='1802300005' x='269' y='405' w='137' h='26' check_point='0' revmsg='true'/>"
	.."</wnd>"
	.."	<image id='help' image='1800000297' x='46' y='483' w='27' h='30' check_point='0' revmsg='true'/>"
	.."	<richedit id='sx6' x='277' y='411' w='121' h='26' align='center' revmsg='true' font='system'/>"
	.."	<button id='button' image='1805600146' x='282' y='460' w='108' h='36' OnLButtonUp='RoleFeatsTitle.Up' revmsg='true' text='升级称号' text_color='#C2B6A0'/>"
	.."	<image id='TestWndChild_1' image='1806100010' x='404' y='166' w='175' h='28' check_point='0' revmsg='true'/>"
	--.."	<image id='TestWndChild_2' image='1806100008' x='282' y='5' w='95' h='28' check_point='0' revmsg='true'/>"
	
	.."	<edit id='nowTitle' x='135' y='205' w='146' h='18' revmsg='true' text_color='#F317C8' font='system'/>"
	
	.."	<edit id='TestWndChild_0' x='134' y='236' w='60' h='18' revmsg='true' text_color='#D4A88B' text='物理攻击' font='system'/>"
	.."	<edit id='TestWndChild_5' x='134' y='267' w='60' h='18' revmsg='true' text_color='#D4A88B' text='魔法攻击 ' font='system'/>"
	.."	<edit id='TestWndChild_6' x='134' y='298' w='60' h='18' revmsg='true' text_color='#D4A88B' text='道术攻击' font='system'/>"
	.."	<edit id='TestWndChild_12' x='134' y='329' w='60' h='18' revmsg='true' text_color='#D4A88B' text='物理免伤 ' font='system'/>"
	.."	<edit id='TestWndChild_13' x='134' y='360' w='60' h='18' revmsg='true' text_color='#D4A88B' text='魔法免伤' font='system'/>"
	.."	<edit id='nowPormpt1' x='213' y='236' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='nowPormpt2' x='213' y='267' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='nowPormpt3' x='213' y='298' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='nowPormpt4' x='213' y='329' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='nowPormpt5' x='213' y='360' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<image id='TestWndChild_24' image='1806100014' x='121' y='166' w='175' h='28' check_point='0' revmsg='true'/>"
	.."	<richedit id='guide' x='71' y='491' w='94' h='16' canedit='false' text='功勋称号说明' text_color='#b8a085' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"
	CLGenFormByStringCache("RoleGUI","RoleFeatsTitle",ui)
end


--UI Logic Code Start
function RoleFeatsTitle.UIInit(_handlele)

	RoleFeatsTitle.Wnd = _handlele
	
	local _GUIHandle = GUIWndFindChildM(RoleGUI.WndHandle,"TitleImg")
	if _GUIHandle ~= 0 then
		GUIWndSetImageID(_GUIHandle, 1806100015)
	end
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
	local _GUIHandle = GetWindow(nil,"RoleGUI,RoleRein")
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end	
	for i = 1, 5 do
		_GUIHandle=GUIWndFindChildM(RoleGUI.WndHandle, "StateBtn_"..i)
		GUIButtonSetIsActivePageBtn(_GUIHandle, false)
	end		
	_GUIHandle = GUIWndFindWindow(RoleGUI.WndHandle, "StateBtn_3")--按钮
	GUIButtonSetIsActivePageBtn(_GUIHandle, true)
	WndMoveToParentTop(_GUIHandle)

	local handlele = GetWindow(_handlele,"help")
	if handlele ~=0 then 
		GUIWndSetHint(handlele, "<font color='#9D8972'>功勋可兑换高级称号\n功勋通过除魔任务和商城购买获得</font>")
	end
	
	handlele = GetWindow(_handlele,"guide")
	if handlele ~=0 then 
		GUIWndSetHint(handlele, "<font color='#9D8972'>功勋可兑换高级称号\n功勋通过除魔任务和商城购买获得</font>")
	end
	
	UI:Lua_SubmitForm("功勋称号表单", "InformRoleGUIData", "")
end

function RoleFeatsTitle.Updata(data1,score,level,data2)
	local handle = 0
	if data2 ~= nil then 
		handle = GetWindow(RoleFeatsTitle.Wnd,"sx0")
		if handle ~= 0 then 
			GUIEditSetTextM(handle, "★"..data2[1].."★")   --显示下一阶称号
		end  
		for i=1,5 do 
			handle = GetWindow(RoleFeatsTitle.Wnd,"sx".. i)
			if handle ~= 0 then 
				if i<4 then 
					GUIEditSetTextM(handle, data2[2].."-"..data2[3])   --显示下一阶 5条属性
				else  
					GUIEditSetTextM(handle, data2[4].."%")
				end
			end 
		end
		handle = GetWindow(RoleFeatsTitle.Wnd,"sx6")
		if handle ~= 0 then 
			GUIRichEditClear(handle)
			GUIRichEditSetTotalLine(handle, 1)
			if score < data2[5] then   
				GUIRichEditAppendString(handle,"#COLORCOLOR_RED#"..score.."#COLOREND#/".."#COLORCOLOR_BROWN#".. data2[5].."#COLOREND#" ) 
			else 
				GUIRichEditAppendString(handle, "#COLORCOLOR_BROWN#"..score.."/"..data2[5].."#COLOREND#")
			end
		end
	else
		
		handle = GetWindow(RoleFeatsTitle.Wnd,"TestWndChild_1")
		if handle ~= 0 then 
			GUIWndSetVisible(handle, false)   --hide
		end
		handle = GetWindow(RoleFeatsTitle.Wnd,"partInfo")
		if handle ~= 0 then 
			GUIWndSetVisible(handle, false)   --hide
		end
		handle = GetWindow(RoleFeatsTitle.Wnd,"sx6")
		if handle ~= 0 then 
			GUIWndSetVisible(handle, false)   --hide
		end
		handle =  GetWindow(RoleFeatsTitle.Wnd,"sx0")
		if handle ~= 0 then 
			GUIWndSetVisible(handle, false)
		end 
		for i=1,5 do 
			handle = GetWindow(RoleFeatsTitle.Wnd,"sx".. i)
			if handle ~= 0 then 
				GUIWndSetVisible(handle, false)
			end 
			handle = GetWindow(RoleFeatsTitle.Wnd,"nPrompt".. i)
			if handle ~= 0 then 
				GUIWndSetVisible(handle, false)
			end 
		end
	end
	
	handle = GetWindow(RoleFeatsTitle.Wnd,"nowTitle")
	if handle ~= 0 then 
		if tonumber(level) ~= 0 then
			GUIEditSetTextM(handle, "★"..data1[1].."★")   --显示本阶称号
		else
			GUIEditSetTextM(handle, ""..data1[1])   --显示本阶称号
		end
	end  
	for i=1,5 do 
		handle = GetWindow(RoleFeatsTitle.Wnd,"nowPormpt".. i)
		if handle ~= 0 then 
			if i<4 then 
				GUIEditSetTextM(handle, data1[2].."-"..data1[3])   --显示本阶 5条属性
			else  
				GUIEditSetTextM(handle, data1[4].."%")
			end
		end 
	end
	
	
	local ach_tb = {30000, 210000, 550000, 870000, 950000, 1380000, 2590000, 3450000, 4320000, 7120000, 9999999999}
	handle = GetWindow(nil,"RoleFeatsTitle,button")
	if tonumber(score) >= ach_tb[tonumber(level)+1] then	
		if handle ~= 0 then
			WndAddEffect(handle, "button", 3020100700, -13, -8, 100, 0)
		end
	else
		if handle ~= 0 then
			WndDelEffect(handle)
		end
	end

end

function RoleFeatsTitle.Up()
	UI:Lua_SubmitForm("功勋称号表单", "UpLevelForReinGUI", "")
end

function RoleFeatsTitle.AlertMessage(str)
	--msg(""..tostring(str))
	local _handle = GetWindow(nil,"RoleGUI,RoleFeatsTitle,button")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -61 , -16 , 70 , color , 3)
end	

function RoleFeatsTitle.OnClose(_handle)
	for i = 1, 5 do 
		local handle = GetWindow(0,"RoleGUI,RoleFeatsTitle,msg"..i)
		if tonumber(handle) ~= 0 then 
			GUI:WndClose(handle)
		end
	end
end

RoleFeatsTitle.main()