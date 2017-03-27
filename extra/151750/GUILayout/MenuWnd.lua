MenuWnd = {}
MenuWnd.wndHandle = 0
MenuWnd.hideHandle = 0

function MenuWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _GUIHandle = GUI:ButtonCreate(_Parent,"MenuBtn",1850000127,_DeviceSizeX - 100 ,120)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"菜单")
 		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp,"MenuWnd.MenuBtnUp")
    end

    MenuWnd.UIInit(_Parent)
end

function MenuWnd.MenuBtnUp(_Handle)
	if MenuWnd.hideHandle then
		local visiable = not GUI:WndGetVisible(MenuWnd.hideHandle)
		GUI:WndSetVisible(MenuWnd.hideHandle, visiable)
	end
end

--UI Logic Code Start
function MenuWnd.UIInit(_Handle)
	local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

	MenuWnd.wndHandle = _Handle
	MenuWnd.hideHandle = GUI:WndCreateWnd(MenuWnd.wndHandle,"MenuItemWnd",0,_DeviceSizeX - 390, 60)
	local _Parent = MenuWnd.hideHandle

	if _Parent then
		GUI:WndSetVisible(MenuWnd.hideHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent, "MenuItemBg", 1850700035, 0, 0)
	if _GUIHandle ~= 0 then
		--GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,300, 490)
		GUI:ImageSetAroundImage(_GUIHandle, 1850700035,1850700037,1850700041,1850700043,1850700039,1850700036,1850700042,1850700038,1850700040)
	end

    
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"RideBtn",1830700059, 113, 30)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OnRideBtn")
    -- end

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"FamilyBtn",1850000475,  199, 30)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OnFamilyBtn")
    -- end

    _GUIHandle = GUI:ButtonCreate(_Parent,"GameMallBtn",1850000082, 26, 110)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OnGameMallBtn")
    end

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"EnhancePropertyBtn",1832400029, 113, 110)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OnEnhancePropertyBtn")
    -- end

    --[[_GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn",1831300005, 199, 110)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OnAchieveBtn")
    end--]]

    
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"RankBtn",1832100009, 113, 190)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OnRankBtn")
    -- end

    --[[_GUIHandle = GUI:ButtonCreate(_Parent,"CampaignBtn",1832700005, 199, 190)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OnCampaignBtn")
    end--]]

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"AutoBtn",1830700044, 26, 270)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OnAutoBtn")
    -- end

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"CrystalBtn",1830700000,  113, 270)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetTextM(_GUIHandle,"宝石")
    --     GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OpenCrystalFun")
    -- end

    --[[_GUIHandle = GUI:ButtonCreate(_Parent,"TestColorBtn",1830700000, 199, 270)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"测试颜色")
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.TestColorFun")
    end--]]

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"WingBtn",1830700000, 26, 350)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetTextM(_GUIHandle,"翅膀")
    --     GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OpenWingFun")
    -- end

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"ShenLuBtn",1830700000, 113, 350)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetTextM(_GUIHandle,"神炉")
    --     GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OpenShenLuFun")
    -- end

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"ForgeBtn",1830700000, 199, 350)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetTextM(_GUIHandle,"锻造")
    --     GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "MenuWnd.OpenForgeFun")
    -- end

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"VIPButton",1800500060,26,430)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "MenuWnd.OnVipButton")
    -- end

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"PayMoney",1800500064,113,430)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "MenuWnd.OnPayButton")
    -- end

end

function MenuWnd.OnQuestBtn()
    CL:OnQuestWindow()
end

function MenuWnd.OnTeamBtn()
    CL:OnTeamBtn()
end

function MenuWnd.OnFriendBtn()
    CL:OnFriendWindow()
end

function MenuWnd.OnFamilyBtn()
    CL:OnFamilyWindow()
end

function MenuWnd.OnGameMallBtn()
    CL:OnGameMallWindow()
end

function MenuWnd.OnEnhancePropertyBtn()
    CL:OnEhanceRolePreperyWindow()
end

function MenuWnd.OnAchieveBtn()
    CL:OnAchieveWindow()
end

function MenuWnd.OnMailBtn()
    CL:OnMailWindow()
end

function MenuWnd.OnCampaignBtn()
    CL:OnCampaignWindow()
end

function MenuWnd.OnRankBtn()
	local level = 0
	if CL:GetPlayerSelfProperty32(ROLE_PROP32_LEVEL) then
		level = LuaRet
	end
	if level < 60 then
		luaMsgBox.new("确认", "60级开启排行榜，加油升级吧！", 1, {"luaMsgBox.Close"}, "")
		return
	end
    CL:OnRankWindow()
end


function MenuWnd.OnAutoBtn()
    CL:OnAutoWindow()
end

function MenuWnd.OnRideBtn()
    CL:OnRide()
end

function MenuWnd.OnSettingBtn()
    CL:OnSettingWindow()
end

function MenuWnd.OpenWingFun()
    local _GUIHandle = GUI:WndFindWindow(0, "WingWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(0, "WingWnd.lua")
    end
end

function MenuWnd.OpenShenLuFun()
    local _GUIHandle = GUI:WndFindWindow(0, "ShenLuWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(0, "ShenLuWnd.lua")
    end
end

function MenuWnd.OpenForgeFun()
    local _GUIHandle = GUI:WndFindWindow(0, "ForgeWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(0, "ForgeWnd.lua")
    end
end

function MenuWnd.OpenCrystalFun()
    local _GUIHandle = GUI:WndFindWindow(0, "CrystalSystem")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(0,"CrystalSystem.lua")
    end
end

function MenuWnd.OnVipButton(_Handle,_Param)
    CL:OnVIPWindow()
end

function MenuWnd.OnPayButton(_Handle,_Param)
    CL:OpenUrlUseIEByType(3)--打开充值页面
end

function MenuWnd.TestColorFun(_handle)
    GUI:WndSetTextColorM(_handle, 4291736418)
end


MenuWnd.main()




