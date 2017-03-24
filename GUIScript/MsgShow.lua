function AE_show_msg(ret)
	local str = ret[0]
	if str == "攻杀允许"  or  str == "攻杀结束"  then
		--[[CL:GetPlayerSelfSkillArray()  
		local skill_list = getTable(LuaRet)
		for i=1,#skill_list do 
			local s_list = getTable(skill_list[i])
			if s_list[3] == "攻心斩" then 
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

function AE_create_msg(content ,color)	 --public 外部调用接口参数 content:所需显示内容, color 字体颜色
	if content == "烈焰已过期" then
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
		if content == "烈火生效" then
			content = "您的武器精神火球发热"		
			--GUI:WndSetPosM(ErrorWnd.editHandle , 0 , 0) 
			GUI:WndSetVisible(ErrorWnd.imageHandle,true)
		else
			--GUI:WndSetPosM(ErrorWnd.editHandle , 0 , 60) 
			--_GUIHandle = GUI:EditCreate(_Parent,"ae_show_msg", ,180,27)
			if content == "开启翅膀" then
				content = "60级开启翅膀，加油升级吧"
			elseif content == "开启成就" then
				content = "50级开启成就，加油升级吧"
			elseif content == "开启排行榜" then
				content = "60级开启排行榜，加油升级吧"
			elseif content == "开启行会" then
				content = "70级开启行会，加油升级吧"
			elseif content == "开启神炉" then
				content = "61级开启神炉，加油升级吧"
			elseif content == "开启精炼" then
				content = "60级开启精炼，加油升级吧"
			elseif content == "开启宝石" then
				content = "转生5级开启宝石，加油升级吧"
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
		if content == "烈火生效" then
			content = "您的武器精神火球发热"		
			ErrorWnd.imageHandle =GUI:ImageCreate(ErrorWnd.wndHandle, "ae_show_image", 1892000004, 70, 32)
			if ErrorWnd.imageHandle ~= 0 then	
				GUI:ImageSetFitSize(ErrorWnd.imageHandle, true)
				GUI:WndSetSizeM(ErrorWnd.imageHandle, 40, 40)
				WndAddEffect(ErrorWnd.imageHandle,nil,3020060000,-40,-40,200,0) 
			end		
		else
			--GUI:WndSetPosM(ErrorWnd.editHandle , 0 , 60) 
			if content == "开启翅膀" then
				content = "60级开启翅膀，加油升级吧"
			end
			if content == "开启成就" then
				content = "50级开启成就，加油升级吧"
			end
			if content == "开启排行榜" then
				content = "60级开启排行榜，加油升级吧"
			end
			if content == "开启行会" then
				content = "70级开启行会，加油升级吧"
			elseif content == "开启神炉" then
				content = "61级开启神炉，加油升级吧"
			elseif content == "开启精炼" then
				content = "60级开启精炼，加油升级吧"
			elseif content == "开启宝石" then
				content = "转生5级开启宝石，加油升级吧"
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
		
		if content ~= "您的武器精神火球发热" then
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
	if ErrorWnd.content ~= "您的武器精神火球发热" then
		if ErrorWnd.editHandle ~= 0 then
			GUI:EditSetTextM(ErrorWnd.editHandle, "")
		end
		if GUI:WndGetVisible(ErrorWnd.imageHandle) then
			GUI:EditSetTextColor(ErrorWnd.editHandle, MakeARGB(255,255,217,0))
			GUI:EditSetTextM(ErrorWnd.editHandle, "您的武器精神火球发热")
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
RegisterUIEvent(LUA_EVENT_SKIllAPPLY,"技能使用后","Skill_Apply")	

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
RegisterUIEvent(LUA_EVENT_INITMAININTERFACE, "AE_ScreenSizeChange", AE_ScreenSizeChange)   --分辨率改变


