function AE_show_msg(ret)
	local str = as3.tolua(ret[0])
	if str == "��ɱ����"  or  str == "��ɱ����"  then
		--[[CLGetPlayerSelfSkillArray()  
		local skill_list = getTable(as3.tolua(LuaRet))
		for i=1,#skill_list do 
			local s_list = getTable(as3.tolua(skill_list[i]))
			if s_list[3] == "����ն" then 
				AE_create_msg(str,webColor.goldenText)
				break
			end
		end --]]
	else
		AE_create_msg(str,webColor.goldenText)
	end 
end	

ErrorWnd = {}
ErrorWnd.wndHandle = 0
ErrorWnd.color = 0
ErrorWnd.editHandle = 0
ErrorWnd.imageHandle = 0
ErrorWnd.wordsImageHandle = 0
ErrorWnd.content = ""

function AE_create_msg(content ,color)	 --public �ⲿ���ýӿڲ��� content:������ʾ����, color ������ɫ
	--msg("AE_create_msg")
	if content == "�����ѹ���" then
		if ErrorWnd.imageHandle ~= 0 then
			GUIWndSetVisible(ErrorWnd.imageHandle,false)
		end
		if ErrorWnd.wordsImageHandle ~= 0 then
			GUIWndSetVisible(ErrorWnd.wordsImageHandle,false)
		end
		
		if ErrorWnd.editHandle ~= 0 then
			GUIEditSetTextM(ErrorWnd.editHandle, "")
		end
		return
	end
	local newX = CLGetScreenWidth()
	local newY = CLGetScreenHeight()
	local edit_x = 0
	local edit_y = newY - 130
	if newX > 1151 and newX < 1490 then	
		edit_x = 640
		edit_y = newY - 130
	else
		edit_x = newX / 2
		edit_y = newY - 130
	end
	if ErrorWnd.wndHandle ~= 0 then	
		GUIWndSetVisible(ErrorWnd.wordsImageHandle,true)
		GUIWndSetPosM(ErrorWnd.wndHandle, edit_x - 60 ,edit_y - 105) 
		if content == "�һ���Ч" then
			content = "�����������������"		
			--GUIWndSetPosM(ErrorWnd.editHandle , 0 , 0)
			GUIWndSetVisible(ErrorWnd.imageHandle,true)
		else
			--GUIWndSetPosM(ErrorWnd.editHandle , 0 , 60) 
			--_GUIHandle = GUIEditCreate(_Parent,"ae_show_msg", ,180,27)
			if content == "�������" then
				content = "61��������򣬼���������"
			elseif content == "�����ɾ�" then
				content = "50�������ɾͣ�����������"
			elseif content == "�������а�" then
				content = "60���������а񣬼���������"
			elseif content == "�����л�" then
				content = "70�������лᣬ����������"
			elseif content == "������¯" then
				content = "62��������¯������������"
			elseif content == "��������" then
				content = "60����������������������"
			elseif content == "������ʯ" then
				content = "75��������ʯ������������"
			end
		--	GUIWndSetVisible(ErrorWnd.imageHandle,false)
		end	
	else	
		ErrorWnd.wndHandle = GUIWndCreateWnd(0,"ae_show",0,edit_x - 60 ,edit_y - 105)
		if ErrorWnd.wndHandle ~= 0 then
			GUIWndSetSizeM(ErrorWnd.wndHandle, 200, 200)
			GUIWndSetEnableM(ErrorWnd.wndHandle,false)
		end	
		
		ErrorWnd.wordsImageHandle = GUIImageCreate(ErrorWnd.wndHandle, "ae_words_image", 1806200004, -18, -3)
		if ErrorWnd.wordsImageHandle ~= 0 then	
			GUIImageSetFitSize(ErrorWnd.wordsImageHandle, true)
			GUIWndSetSizeM(ErrorWnd.wordsImageHandle, 220, 22)
		end
		ErrorWnd.editHandle = GUIEditCreate(ErrorWnd.wndHandle,"ae_show_msg", 0, 0,180,17)
		if ErrorWnd.editHandle ~= 0 then
			GUIEditSetFontCenter(ErrorWnd.editHandle)
		end
			
		ErrorWnd.imageHandle =GUIImageCreate(ErrorWnd.wndHandle, "ae_show_image", 1892000004, 70, 32)
		if ErrorWnd.imageHandle ~= 0 then
			GUIImageSetFitSize(ErrorWnd.imageHandle, true)
			GUIWndSetSizeM(ErrorWnd.imageHandle, 40, 40)
			WndAddEffect(ErrorWnd.imageHandle,nil,3020060000,-40,-40,200,0) 
		end
		if content == "�һ���Ч" then
			content = "�����������������"	
			GUIWndSetVisible(ErrorWnd.imageHandle,true)
		else
			GUIWndSetVisible(ErrorWnd.imageHandle,false)
		
		end	
			--GUIWndSetPosM(ErrorWnd.editHandle , 0 , 60) 
			if content == "�������" then
				content = "61��������򣬼���������"
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
				content = "62��������¯������������"
			elseif content == "��������" then
				content = "60����������������������"
			elseif content == "������ʯ" then
				content = "75��������ʯ������������"
			end 
			--GUIWndSetVisible(ErrorWnd.imageHandle,false)
		
	end
	ErrorWnd.content = content
	if ErrorWnd.editHandle ~= 0  then
		GUIEditSetTextM(ErrorWnd.editHandle, content)
		if color == nil then
			color = MakeARGB(255,255,217,1)
		end
		if color ~= ErrorWnd.color then
			ErrorWnd.color = color
			GUIEditSetTextColor(ErrorWnd.editHandle, color)		
		end
		
		if content ~= "�����������������" then
			CLAddDelayTask("AE_clear_msg()", 3000, 1)	
		else
			GUIEditSetTextColor(ErrorWnd.editHandle, MakeARGB(255,255,217,1))
		end	
	end
end

function AE_clear_msg()
	if ErrorWnd.content ~= "�����������������" then
		if ErrorWnd.editHandle ~= 0 then
			GUIEditSetTextM(ErrorWnd.editHandle, "")
		end
		if ErrorWnd.wordsImageHandle ~= 0 then
			GUIWndSetVisible(ErrorWnd.wordsImageHandle,false)
		end
		if GUIWndGetVisible(ErrorWnd.imageHandle) and ErrorWnd.imageHandle ~= 0 then
			GUIEditSetTextColor(ErrorWnd.editHandle, MakeARGB(255,255,217,0))
			GUIEditSetTextM(ErrorWnd.editHandle, "�����������������")
			GUIWndSetVisible(ErrorWnd.wordsImageHandle,true)
		end
	end
end

function Skill_Apply()
	local linkageId = as3.tolua(LuaParam[1])
	if tonumber(linkageId) == 59 then
		if ErrorWnd.imageHandle ~= 0 then
			GUIWndSetVisible(ErrorWnd.imageHandle,false)
		end
		if ErrorWnd.editHandle ~= 0 then
			GUIEditSetTextM(ErrorWnd.editHandle, "")
		end
		if ErrorWnd.wordsImageHandle ~= 0 then
			GUIWndSetVisible(ErrorWnd.wordsImageHandle,false)
		else 
		end
	end
end	
RegisterUIEvent(LUA_EVENT_SKIllAPPLY,"����ʹ�ú�","Skill_Apply")