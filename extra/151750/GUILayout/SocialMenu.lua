SocialMenu = {}
function SocialMenu.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
    	
	
	_Parent = GUI:WndCreateWnd(_Parent,"SocialMenu",0,_DeviceSizeX / 2  - 180, _DeviceSizeY - 220)
    if _Parent ~= 0 then
    end    
	
    	
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0, 0, 0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 346, 94)
		GUI:ImageSetAroundImage(_GUIHandle, 1850700044, 1850700046, 1850700050, 1850700052, 1850700048, 1850700045, 1850700051, 1850700047, 1850700049)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"DownImage",1850700053,240,73)
    if _GUIHandle ~= 0 then
    end
    
    --邮件
    _GUIHandle = GUI:ButtonCreate(_Parent,"Mail",1850000491,28,10)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "SocialMenu.OnMail")
    end

    --好友
    _GUIHandle = GUI:ButtonCreate(_Parent,"Contact",1850000467,128,10)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SocialMenu.OnContactBtn")
    end

    --行会
    _GUIHandle = GUI:ButtonCreate(_Parent,"Guild",1850000475,228,10)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "SocialMenu.OnGuildBtn")
    end
    
    SocialMenu.UIInit(_Parent)
end

--UI Logic Code Start
function SocialMenu.UIInit(_Handle)
    SocialMenu.WndHandle = _Handle
end



function SocialMenu.OnMail()
	GUI:WndSetVisible(SocialMenu.WndHandle,false)
	CL:OnMailWindow()
	local btn = GUI:WndFindChildM(GameMainBar.WndHandle, "newMail")
	if btn ~= 0 then
		GUI:WndSetVisible(btn, false)
	end
end


function SocialMenu.OnContactBtn()
	GUI:WndSetVisible(SocialMenu.WndHandle,false)
    CL:OnFriendWindow()
end


function SocialMenu.OnGuildBtn()
	GUI:WndSetVisible(SocialMenu.WndHandle,false)
	UI:Lua_SubmitForm("等级判断表单", "OnFamilyWindow", "")
end


SocialMenu.main()






