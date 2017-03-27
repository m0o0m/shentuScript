CreateRole = {}

function CreateRole.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"BlackImg",1901900038,-100,-100)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,94, 80)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg",1852500054,-222,-240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1136, 640)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    --[[_GUIHandle = GUI:ImageCreate(_Parent,"RoleBkImg",1804700005,1320,164)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,289, 374)
    end--]]
    
	
	--[[_GUIHandle = GUI:ImageCreate(_Parent,"RoleImageNew",1852500037,575,104)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,481, 482)
    end--]]
    
	_GUIHandle = GUI:ImageCreate(_Parent,"CreateMage",1852500034,770,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 100,100)
        GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetCanRevMsg(_GUIHandle,true)
		GUI:WndSetEnableM(_GUIHandle,true)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnSelectBtnDown") 
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CreateTao",1852500042,371,150)
    if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetCanRevMsg(_GUIHandle,true)
		GUI:WndSetEnableM(_GUIHandle,true)  
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnSelectBtnDown") 
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"CreateWarrior",1852500037,575,150)
    if _GUIHandle ~= 0 then
       -- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnSelectBtnDown")
        GUI:WndSetParam(_GUIHandle, 1)
		
		--GUI:ImageSetDrawCenter(_GUIHandle, true)		
		GUI:WndSetCanRevMsg(_GUIHandle,true)
		GUI:WndSetEnableM(_GUIHandle,true)  
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnSelectBtnDown") 
        
    end
    
  
    
    
    
	_GUIHandle = GUI:ImageCreate(_Parent,"RoleIllustration",1852500047,117,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,294, 480)
    end
    
   --[[ _GUIHandle = GUI:ImageCreate(_Parent,"RoleShadow",1804700059,704,675)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,516, 204)
    end--]]
    
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonMaleNew",1852500016,1071,355)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnGenderBtnDown")
        GUI:WndSetParam(_GUIHandle, 1)
        --GUI:WndSetSizeM(_GUIHandle,80, 30)
		GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonFemaleNew",1852500020,1071,447)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnGenderBtnDown")
        GUI:WndSetParam(_GUIHandle, 2)
       -- GUI:WndSetSizeM(_GUIHandle,80, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		
    end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"NameBack",1852500024,450,485)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,294, 60)
	end
    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",645,503,300,39)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CreateRole.OnNameEditUp")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle, "请输入角色名称")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Create",1852500000,662,556)
    if _GUIHandle ~= 0 then
        --GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnNameEditUp")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1852500029,241,548)
    if _GUIHandle ~= 0 then
       -- GUI:WndSetParam(_GUIHandle, 0)
       -- GUI:WndSetSizeM(_GUIHandle,114, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	
   
	
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Randombutton",1852500025,664,502)
	if _GUIHandle ~= 0 then
		
	end
	
	
	

        CreateRole.UIInit(_Parent)
end

--UI Logic Code Start
CreateRole.CtrlGroup = {
	{"BkImg"},
	{"RoleBkImg","CreateWarrior","CreateMage","CreateTao","ButtonMaleNew","ButtonFemaleNew","RoleName","Create","Back"},
	{"RoleImageNew","RoleShadow"},
	{"RoleIllustration"}
}
CreateRole.Job = 1	--默认选战士
CreateRole.Gender = 1	--默认为男性，同微端代码中一致
function CreateRole.UIInit(_Handle)
	CreateRole.WndHandle = _Handle
	LuaGlobal["CreateRole_EffectSound"] = false

	local width = CL:GetScreenWidth()
	local height = CL:GetScreenHeight()

	local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "BlackImg")
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, width+200, height+200)
	end
	
	if width > 1500 then	--全屏的情况下
		--首先根据屏幕大小调整背景图位置
		local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "BkImg")
		if _GUIHandle ~= 0 then
			GUI:WndGetSizeM(_GUIHandle)
			local xoff = (width - LuaRet[1])/2
			local yoff = (height - LuaRet[2])/2
			GUI:WndSetPosM(_GUIHandle, xoff, yoff)
			CreateRole.GroupMove(CreateRole.CtrlGroup[2], xoff, yoff)
			CreateRole.GroupMove(CreateRole.CtrlGroup[3], xoff, yoff)
			CreateRole.GroupMove(CreateRole.CtrlGroup[4], xoff, yoff)
		end
	else
		local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "BkImg")
		if _GUIHandle ~= 0 then
			GUI:WndGetSizeM(_GUIHandle)
			local xoff = (width - LuaRet[1])/2
			local yoff = (height - LuaRet[2])/2
			GUI:WndSetPosM(_GUIHandle, xoff, yoff)
			CreateRole.GroupMove(CreateRole.CtrlGroup[2], xoff - 150, yoff)
			CreateRole.GroupMove(CreateRole.CtrlGroup[3], xoff, yoff)
			CreateRole.GroupMove(CreateRole.CtrlGroup[4], xoff - 150, yoff)
		end
	end

	_GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "RoleName")
	if _GUIHandle ~= 0 then
		GUI:EditSetMaxCharNum(_GUIHandle, 14)
	end
	CreateRole.SelectJob(1)	--默认选择战士
	CreateRole.SelectGender(1) --默认为男性
end

function CreateRole.GroupMove(group, xoff, yoff)
	for i = 1, #group do
		local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, group[i])
		if _GUIHandle ~= 0 then
			GUI:WndGetPosM(_GUIHandle)
			local x = LuaRet[1] + xoff
			local y = LuaRet[2] + yoff
			GUI:WndSetPosM(_GUIHandle, x, y)
		end
	end
end

function CreateRole.OnSelectBtnDown(h)
	local job = GUI:WndGetParam(h)	--战士1 法师2 道士3
	dbg("OnSelectBtnDown = "..tostring(job))
	CreateRole.SelectJob(job)
end

function CreateRole.FindhandleByJob(job)
		local id = ""
		if job == 1 then
			id = "CreateWarrior"
		elseif  job == 2 then
			id = "CreateMage"
		elseif job == 3 then
			id = "CreateTao"
		end
		local  _GUIHandle = GUI:WndFindWindow(CreateRole.WndHandle, id)
		if _GUIHandle then
			return _GUIHandle
		else
			return 0
		end
end

function CreateRole.switchHandlePos(_Handle1, _Handle2)
	local x = 0
	local y = 0
	if GUI:WndGetPosM(_Handle1) then
		x = LuaRet[1]
		y = LuaRet[2]
	end

	if GUI:WndGetPosM(_Handle2) then
		GUI:WndSetPosM(_Handle1, LuaRet[1], LuaRet[2])
	end
	
	GUI:WndSetPosM(_Handle2, x, y)
end

--控制选中职业后，左侧职业描述的更新
function CreateRole.SelectJob(job)
	dbg("Seletct = "..tostring(job))
	
		if job ~= CreateRole.Job then
			local jobhandle = CreateRole.FindhandleByJob(job)
			local prevhandle = CreateRole.FindhandleByJob(CreateRole.Job)
			if jobhandle ~= 0 and prevhandle ~= 0 then
				CreateRole.switchHandlePos(jobhandle, prevhandle)	
			end
		end
	CreateRole.Job = job
	local roleImage = {0,0,0}
	local imgId = 0
	if job == 1 then
		imgId = 1852500047
		roleImage = {1852500042,1852500037,1852500034}
	elseif job == 2 then
		imgId = 1852500048
		roleImage = {1852500042,1852500038,1852500033}
	else
		imgId = 1852500049
		roleImage = {1852500041,1852500038,1852500034}
	end
	if CreateRole.Gender == 2 then
		for i = 1 ,#roleImage do 
			roleImage[i] = roleImage[i] + 2
		end	
	end	
	local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "RoleIllustration")
	if _GUIHandle ~= 0 then	
		GUI:WndSetImageID(_GUIHandle, imgId)
	end
	
	local handleId = {"CreateTao","CreateWarrior","CreateMage"}
	for i = 1 , #handleId do 
		local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, handleId[i])
		if _GUIHandle ~= 0 then	
			GUI:WndSetImageID(_GUIHandle, roleImage[i])
		end
	end	
	
	-- ui switch

end

function CreateRole.OnGenderBtnDown(h)
	local gender = GUI:WndGetParam(h)	--1男 2女
	CreateRole.SelectGender(gender)
end

function CreateRole.SelectGender(gender)
	CreateRole.Gender = gender
	local tmp = {{1, "ButtonMaleNew"},{2, "ButtonFemaleNew"}}
	for i = 1, #tmp do
		local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, tmp[i][2])
		if _GUIHandle ~= 0 then
			if tmp[i][1] == gender then
				GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
			else
				GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
			end
		end
	end
	CreateRole.SelectJob(CreateRole.Job)
end



function CreateRole.OnNameEditUp()
	local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "RoleName")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "")	--只会清空一次
	end
	_GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle,"Create")
	if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "")
	end
end

CreateRole.main()