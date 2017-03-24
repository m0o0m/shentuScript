function AE_show_msg(ret)
	local str = ret[0]
	if str == "��ɱ����"  or  str == "��ɱ����"  then
		--[[CL:GetPlayerSelfSkillArray()  
		local skill_list = getTable(LuaRet)
		for i=1,#skill_list do 
			local s_list = getTable(skill_list[i])
			if s_list[3] == "����ն" then 
				AE_create_msg(str,webColor.goldenText)
				break
			end
		end --]]
	else
		AE_create_msg(str,4293317252)
	end 
end	

ErrorWnd = {}
ErrorWnd.wndHandle = 0
ErrorWnd.color = 0
ErrorWnd.editHandle = 0
ErrorWnd.imageHandle = 0
ErrorWnd.wordsImageHandle = 0
ErrorWnd.content = ""
ErrorWnd.timeid = 0

function ErrorWnd.Clear()
	ErrorWnd.wndHandle = 0
	ErrorWnd.color = 0
	ErrorWnd.editHandle = 0
	ErrorWnd.imageHandle = 0
	ErrorWnd.content = ""
	ErrorWnd.timeid = 0
end

function AE_create_msg(content ,color)	 --public �ⲿ���ýӿڲ��� content:������ʾ����, color ������ɫ
	if content == "�����ѹ���" then
		if ErrorWnd.imageHandle ~= 0 then
			GUI:WndSetVisible(ErrorWnd.imageHandle,false)
		end
		if ErrorWnd.editHandle ~= 0 then
			GUI:EditSetTextM(ErrorWnd.editHandle, "")
		end
		if ErrorWnd.wordsImageHandle ~= 0 then
			GUI:WndSetVisible(ErrorWnd.wordsImageHandle,false)
		end
		return
	end
	local newX = CL:GetScreenWidth()
	local newY = CL:GetScreenHeight()
	local edit_x = 0
	local edit_y = newY - 130
	if newX > 1151 and newX < 1490 then	
		edit_x = 740
		edit_y = newY - 130
	else
		edit_x = newX / 2
		edit_y = newY - 130
	end
	if ErrorWnd.wndHandle ~= 0 then	
		GUI:WndSetVisible(ErrorWnd.wordsImageHandle,true)
		GUI:WndSetPosM(ErrorWnd.wndHandle, edit_x - 60 ,edit_y - 115) 
		if content == "�һ���Ч" then
			content = "�����������������"		
			--GUI:WndSetPosM(ErrorWnd.editHandle , 0 , 0) 
			GUI:WndSetVisible(ErrorWnd.imageHandle,true)
		else
			--GUI:WndSetPosM(ErrorWnd.editHandle , 0 , 60) 
			--_GUIHandle = GUI:EditCreate(_Parent,"ae_show_msg", ,180,27)
			if content == "�������" then
				content = "60��������򣬼���������"
			elseif content == "�����ɾ�" then
				content = "50�������ɾͣ�����������"
			elseif content == "�������а�" then
				content = "60���������а񣬼���������"
			elseif content == "�����л�" then
				content = "70�������лᣬ����������"
			elseif content == "������¯" then
				content = "61��������¯������������"
			elseif content == "��������" then
				content = "60����������������������"
			elseif content == "������ʯ" then
				content = "ת��5��������ʯ������������"
			end
			--GUI:WndSetVisible(ErrorWnd.imageHandle,false)
		end	
	else	
		local _Parent = GetWindow(0, "GameMainInterface")
		ErrorWnd.wndHandle = GUI:WndCreateWnd(_Parent,"ae_show",0,edit_x - 60 ,edit_y - 115)
		GUI:WndRegistScript(ErrorWnd.wndHandle, RDWndBaseCL_wnd_destroy, "ErrorWnd.Clear")
		if ErrorWnd.wndHandle ~= 0 then
			GUI:WndSetCanRevMsg(ErrorWnd.wndHandle,false)
			GUI:WndSetSizeM(ErrorWnd.wndHandle, 200, 200)
			GUI:WndSetEnableM(ErrorWnd.wndHandle,false)
		end	
		
		ErrorWnd.wordsImageHandle = GUI:ImageCreate(ErrorWnd.wndHandle, "ae_words_image", 1806200004, -18, -3)
		if ErrorWnd.wordsImageHandle ~= 0 then	
			GUI:ImageSetFitSize(ErrorWnd.wordsImageHandle, true)
			GUI:WndSetSizeM(ErrorWnd.wordsImageHandle, 220, 22)
		end
		ErrorWnd.editHandle = GUI:EditCreate(ErrorWnd.wndHandle,"ae_show_msg", 0, 0,180,16)
		if ErrorWnd.editHandle ~= 0 then
			GUI:EditSetFontCenter(ErrorWnd.editHandle)
		end	
		if content == "�һ���Ч" then
			content = "�����������������"		
			ErrorWnd.imageHandle =GUI:ImageCreate(ErrorWnd.wndHandle, "ae_show_image", 1892000004, 70, 32)
			if ErrorWnd.imageHandle ~= 0 then	
				GUI:ImageSetFitSize(ErrorWnd.imageHandle, true)
				GUI:WndSetSizeM(ErrorWnd.imageHandle, 40, 40)
				WndAddEffect(ErrorWnd.imageHandle,nil,3020060000,-40,-40,200,0) 
			end		
		else
			--GUI:WndSetPosM(ErrorWnd.editHandle , 0 , 60) 
			if content == "�������" then
				content = "60��������򣬼���������"
			end
			if content == "�����ɾ�" then
				content = "50�������ɾͣ�����������"
			end
			if content == "�������а�" then
				content = "60���������а񣬼���������"
			end
			if content == "�����л�" then
				content = "70�������лᣬ����������"
			elseif content == "������¯" then
				content = "61��������¯������������"
			elseif content == "��������" then
				content = "60����������������������"
			elseif content == "������ʯ" then
				content = "ת��5��������ʯ������������"
			end
			--GUI:WndSetVisible(ErrorWnd.imageHandle,false)
		end	
	end
	ErrorWnd.content = content
	if ErrorWnd.editHandle ~= 0  then
		GUI:EditSetTextM(ErrorWnd.editHandle, content)
		if color == nil then
			color = 4280656732
		end
		if color ~= ErrorWnd.color then
			ErrorWnd.color = color
			GUI:EditSetTextColor(ErrorWnd.editHandle, color)		
		end
		
		if content ~= "�����������������" then
			if ErrorWnd.timeid ~= 0 then
				CL:DelDelayTask(ErrorWnd.timeid)
			end
			ErrorWnd.timeid = CL:AddDelayTask("AE_clear_msg()", 3000, 1)	
		else
			GUI:EditSetTextColor(ErrorWnd.editHandle, MakeARGB(255,255,217,1))
		end	
	end
end

function AE_clear_msg()
	if ErrorWnd.content ~= "�����������������" then
		if ErrorWnd.editHandle ~= 0 then
			GUI:EditSetTextM(ErrorWnd.editHandle, "")
		end
		if GUI:WndGetVisible(ErrorWnd.imageHandle) then
			GUI:EditSetTextColor(ErrorWnd.editHandle, MakeARGB(255,255,217,0))
			GUI:EditSetTextM(ErrorWnd.editHandle, "�����������������")
		else
			if ErrorWnd.wordsImageHandle ~= 0 then
				GUI:WndSetVisible(ErrorWnd.wordsImageHandle,false)
			end
		end
	end
end

function Skill_Apply()
	local linkageId = LuaParam[1]
	if tonumber(linkageId) == 59 then
		if ErrorWnd.imageHandle ~= 0 then
			GUI:WndSetVisible(ErrorWnd.imageHandle,false)
		end
		if ErrorWnd.editHandle ~= 0 then
			GUI:EditSetTextM(ErrorWnd.editHandle, "")
		end
		
		if ErrorWnd.wordsImageHandle ~= 0 then
			GUI:WndSetVisible(ErrorWnd.wordsImageHandle,false)
		else 
		end
	end
end	
RegisterUIEvent(LUA_EVENT_SKIllAPPLY,"����ʹ�ú�","Skill_Apply")	

function AE_ScreenSizeChange()
	local newX = CL:GetScreenWidth()
	local newY = CL:GetScreenHeight()
	local edit_x = 0
	local edit_y = newY - 130
	if newX > 1151 and newX < 1490 then	
		edit_x = 740
		edit_y = newY - 130
	else
		edit_x = newX / 2
		edit_y = newY - 130
	end
	if ErrorWnd.wndHandle ~= 0 then	
		GUI:WndSetPosM(ErrorWnd.wndHandle, edit_x - 60 ,edit_y - 115) 
	end
end
RegisterUIEvent(LUA_EVENT_INITMAININTERFACE, "AE_ScreenSizeChange", AE_ScreenSizeChange)   --�ֱ��ʸı�


