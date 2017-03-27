SelectRole = {}
function SelectRole.main()
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
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleBkImg",1804700006,1320,164)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,289, 374)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"EnterGame",1804700029,1347,482)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,235, 73)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleCreateBtn0",1804700051,1371,239)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleCreateBtn1",1804700051,1371,299)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleCreateBtn2",1804700051,1371,359)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    --[[_GUIHandle = GUI:ButtonCreate(_Parent,"RoleCreateBtn3",1804700051,1371,419)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end--]]

    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleSelectBtn0",1804700055,1371,239)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleSelectBtn1",1804700055,1371,299)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleSelectBtn2",1804700055,1371,359)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    --[[_GUIHandle = GUI:ButtonCreate(_Parent,"RoleSelectBtn3",1804700055,1371,419)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end--]]
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player0Name",1423,243,130,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        ----GUI:EditSetTextM(_GUIHandle,"一二三四五六七")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player1Name",1423,303,130,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:EditSetTextM(_GUIHandle,"一二三四五六七")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player2Name",1423,363,130,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:EditSetTextM(_GUIHandle,"一二三四五六七")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleHeadImg0",0,1361,233)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,54, 54)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleHeadImg1",0,1361,293)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,54, 54)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleHeadImg2",0,1361,353)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,54, 54)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"StaticEditLv0",1423,262,27,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        GUI:EditSetTextM(_GUIHandle,"等级")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"StaticEditLv1",1423,322,27,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        GUI:EditSetTextM(_GUIHandle,"等级")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"StaticEditLv2",1423,382,27,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        GUI:EditSetTextM(_GUIHandle,"等级")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player0Level",1474,262,23,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        --GUI:EditSetTextM(_GUIHandle,"100")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player1Level",1474,322,23,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        --GUI:EditSetTextM(_GUIHandle,"100")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player2Level",1474,382,23,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        --GUI:EditSetTextM(_GUIHandle,"100")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player0Job",1525,262,33,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        --GUI:EditSetTextM(_GUIHandle,"战士")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player1Job",1525,322,33,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        --GUI:EditSetTextM(_GUIHandle,"战士")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player2Job",1525,382,33,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4279070077)
        --GUI:EditSetTextM(_GUIHandle,"战士")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DeleteRole",1804700033,1609,706)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,141, 40)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ResetRole",1804700037,1609,746)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,141, 40)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1804700041,1609,786)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,141, 40)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleShadow",1804700059,704,675)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,516, 204)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImageNew",0,734,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,481, 482)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleIllustration",0,315,145)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,292, 501)
    end
    
        SelectRole.UIInit(_Parent)
end

--UI Logic Code Start
SelectRole.CtrlGroup = {
	{"BkImg"},
	{"EnterGame","RoleBkImg","RoleCreateBtn0","RoleCreateBtn1",	"RoleCreateBtn2",
	"RoleCreateBtn3","RoleSelectBtn0","RoleSelectBtn1","RoleSelectBtn2",
	"RoleSelectBtn3","Player0Name","Player1Name","Player2Name","RoleHeadImg0",
	"RoleHeadImg1","RoleHeadImg2","StaticEditLv0","StaticEditLv1",
	"StaticEditLv2","Player0Level","Player1Level","Player2Level",
	"Player0Job","Player1Job","Player2Job"},

	{"Back","ResetRole","DeleteRole"},
	{"RoleImageNew","RoleShadow"},
	{"RoleIllustration"}
}
function SelectRole.UIInit(_Handle)
	SelectRole.WndHandle = _Handle

	--角色图片起始ID，默认按照 战（男女） 法（男女） 道（男女）这六个顺序
	LuaGlobal["SelectRole_NewRoleImg"] = 1804700060
	LuaGlobal["SelectRole_NewRoleHeadImg"] = 1804700045
	--职业说明图片顺序是按照道 法 战
	LuaGlobal["SelectRole_IllustrationImg_Warrior"] = 1804700004
	LuaGlobal["SelectRole_IllustrationImg_Mage"] = 1804700003
	LuaGlobal["SelectRole_IllustrationImg_Tao"] = 1804700002

	local width = CL:GetScreenWidth()
	local height = CL:GetScreenHeight()
	
	local _GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "BlackImg")
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, width+200, height+200)
	end

	local tmp = {"RoleSelectBtn0","RoleSelectBtn1","RoleSelectBtn2","StaticEditLv0","StaticEditLv1","StaticEditLv2"}
	SelectRole.GroupVisible(tmp, false)

	for i = 0, 2 do
		_GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "RoleHeadImg"..i)
		if _GUIHandle ~= 0 then
			GUI:WndSetCanRevMsg(_GUIHandle, false)
		end
	end

	if width > 1500 then	--全屏的情况下
		--首先根据屏幕大小调整背景图位置
		local _GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "BkImg")
		if _GUIHandle ~= 0 then
			GUI:WndGetSizeM(_GUIHandle)
			local xoff = (width - LuaRet[1])/2
			local yoff = (height - LuaRet[2])/2
			GUI:WndSetPosM(_GUIHandle, xoff, yoff)
			SelectRole.GroupMove(SelectRole.CtrlGroup[2], xoff, yoff)
			SelectRole.GroupMove(SelectRole.CtrlGroup[3], xoff, yoff)
			SelectRole.GroupMove(SelectRole.CtrlGroup[4], xoff, yoff)
			SelectRole.GroupMove(SelectRole.CtrlGroup[5], xoff, yoff)
		end
	else
		local _GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "BkImg")
		if _GUIHandle ~= 0 then
			GUI:WndGetSizeM(_GUIHandle)
			local xoff = (width - LuaRet[1])/2
			local yoff = (height - LuaRet[2])/2
			GUI:WndSetPosM(_GUIHandle, xoff, yoff)
			SelectRole.GroupMove(SelectRole.CtrlGroup[2], xoff - 150, yoff)
			SelectRole.GroupMove(SelectRole.CtrlGroup[3], xoff - 365, yoff - 70)
			SelectRole.GroupMove(SelectRole.CtrlGroup[4], xoff, yoff)
			SelectRole.GroupMove(SelectRole.CtrlGroup[5], xoff + 160, yoff)
		end
	end
end

function SelectRole.GroupVisible(group, visible)
	for i = 1, #group do
		local _GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, group[i])
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, visible)
		end
	end
end

function SelectRole.GroupMove(group, xoff, yoff)
	for i = 1, #group do
		local _GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, group[i])
		if _GUIHandle ~= 0 then
			GUI:WndGetPosM(_GUIHandle)
			local x = LuaRet[1] + xoff
			local y = LuaRet[2] + yoff
			GUI:WndSetPosM(_GUIHandle, x, y)
		end
	end
end

SelectRole.main()