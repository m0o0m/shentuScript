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
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg",1804700001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1920, 900)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleBkImg",1804700005,1320,164)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,289, 374)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CreateWarrior",1804700007,1371,239)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnSelectBtnDown")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CreateMage",1804700009,1371,299)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnSelectBtnDown")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CreateTao",1804700011,1371,359)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnSelectBtnDown")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleIllustration",1804700002,315,145)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,292, 501)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleShadow",1804700059,704,675)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,516, 204)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImageNew",1804400037,734,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,481, 482)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonMaleNew",1804700013,1372,419)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnGenderBtnDown")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,80, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonFemaleNew",1804700017,1474,419)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnGenderBtnDown")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,80, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",1372,468,180,27)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CreateRole.OnNameEditUp")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle, "        请输入角色名称")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Create",1804700025,1348,524)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "CreateRole.OnNameEditUp")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,114, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1804700021,1468,524)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,114, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
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
			CreateRole.GroupMove(CreateRole.CtrlGroup[4], xoff + 160, yoff)
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
	CreateRole.SelectJob(job)
end

--控制选中职业后，左侧职业描述的更新
function CreateRole.SelectJob(job)
	CreateRole.Job = job
	local imgId = 0
	if job == 1 then
		imgId = 1804700004
	elseif job == 2 then
		imgId = 1804700003
	else
		imgId = 1804700002
	end
	local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "RoleIllustration")
	if _GUIHandle ~= 0 then
		local oldImg = GUI:WndGetImageID(_GUIHandle)
		local xoff = 0
		local yoff = 0
		if tostring(oldImg) == "1804700002" then
			--上次是道士，这次不是道士
			if job ~= 3 then
				xoff = -14
				yoff = -3
			end
		else
			--上次不是道士,这次是道士
			if job == 3 then
				xoff = 14
				yoff = 3
			end
		end
		GUI:WndGetPosM(_GUIHandle)
		local x = LuaRet[1] + xoff
		local y = LuaRet[2] + yoff
		GUI:WndSetPosM(_GUIHandle, x, y)
		GUI:WndSetImageID(_GUIHandle, imgId)
	end

	--设定三个职业图片是否高亮
	local tmp = {
		{1,"CreateWarrior",1804700007,1804700008},
		{2,"CreateMage",1804700009,1804700010},
		{3,"CreateTao",1804700011,1804700012}
	}
	for i = 1, #tmp do
		local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, tmp[i][2])
		if _GUIHandle ~= 0 then
			if job == tmp[i][1] then	--当前选中
				GUI:WndSetImageID(_GUIHandle, tmp[i][4])
			else
				GUI:WndSetImageID(_GUIHandle, tmp[i][3])
			end
		end
	end
	CreateRole.UpdateRoleImg()
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
				GUI:ButtonSetIsActiveBtn(_GUIHandle, true)
			else
				GUI:ButtonSetIsActiveBtn(_GUIHandle, false)
			end
		end
	end
	CreateRole.UpdateRoleImg()
end

function CreateRole.UpdateRoleImg()
	local tImg = {{1804700060,1804700061}, {1804700062,1804700063}, {1804700064,1804700065}}
	local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "RoleImageNew")
	if _GUIHandle ~= 0 then
		GUI:WndSetImageID(_GUIHandle, tImg[CreateRole.Job][CreateRole.Gender])
	end
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