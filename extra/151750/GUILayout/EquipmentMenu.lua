EquipmentMenu = {}
function EquipmentMenu.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
    	
	
	_Parent = GUI:WndCreateWnd(_Parent,"EquipmentMenu",0,_DeviceSizeX / 2  - 280, _DeviceSizeY - 220)
    if _Parent ~= 0 then
    end    
	
    	
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0, 0, 0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 520, 94)
		GUI:ImageSetAroundImage(_GUIHandle, 1850700044, 1850700046, 1850700050, 1850700052, 1850700048, 1850700045, 1850700051, 1850700047, 1850700049)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"DownImage",1850700053,40,73)
    if _GUIHandle ~= 0 then
    end
    
		--锻造按钮 Forge 
    _GUIHandle = GUI:ButtonCreate(_Parent,"Enhance",1850000435,18,10)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "EquipmentMenu.OpenEnhanceFun")
    end
		--蕴魂  
    _GUIHandle = GUI:ButtonCreate(_Parent,"YunHun",1850000479,118,10)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "EquipmentMenu.OpenYunHunFun")
    end
		-- 宝石  
    _GUIHandle = GUI:ButtonCreate(_Parent,"Crystall",1850000431,218,10)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "EquipmentMenu.OpenCrystallFun")
    end
		-- 炼制  
    _GUIHandle = GUI:ButtonCreate(_Parent,"Smelt",1850000471,318,10)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "EquipmentMenu.OpenSmeltFun")
    end
	
		--传承 ShenLu
    _GUIHandle = GUI:ButtonCreate(_Parent,"Inherit",1850000483,418,10)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "EquipmentMenu.OpenInheritFun")
    end

    --回收按钮 Recycle 
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"RecycleBtn",1850000062,528,10)
    -- if _GUIHandle ~= 0 then
        -- GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "EquipmentMenu.OpenRecycleFun")
    -- end
    
    EquipmentMenu.UIInit(_Parent)
end

--UI Logic Code Start
function EquipmentMenu.UIInit(_Handle)
    EquipmentMenu.WndHandle = _Handle
end

function EquipmentMenu.OpenEnhanceFun()
    GUI:WndSetVisible(EquipmentMenu.WndHandle,false)
    local _GUIHandle = GUI:WndFindWindow(0, "ForgeWnd")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		--UI:Lua_SubmitForm("等级判断表单", "OnOpenForge", "")
		UI:Lua_OpenWindow(0, "ForgeWnd.lua")
	end
end


function EquipmentMenu.OpenYunHunFun()
    GUI:WndSetVisible(EquipmentMenu.WndHandle,false)
    local _GUIHandle = GUI:WndFindWindow(0, "ForgeWnd2")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		UI:Lua_OpenWindow(0, "ForgeWnd2.lua")
	end
end

function EquipmentMenu.OpenCrystallFun()
    GUI:WndSetVisible(EquipmentMenu.WndHandle,false)
    local _GUIHandle = GUI:WndFindWindow(0, "ForgeWnd3")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		UI:Lua_OpenWindow(0, "ForgeWnd3.lua")
	end
end



function EquipmentMenu.OpenSmeltFun()
    GUI:WndSetVisible(EquipmentMenu.WndHandle,false)
    local _GUIHandle = GUI:WndFindWindow(0, "ForgeWnd4")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		--UI:Lua_SubmitForm("等级判断表单", "OnOpenForge", "")
		UI:Lua_OpenWindow(0, "ForgeWnd4.lua")
	end
end

function EquipmentMenu.OpenInheritFun()
    GUI:WndSetVisible(EquipmentMenu.WndHandle,false)
    local _GUIHandle = GUI:WndFindWindow(0, "ForgeWnd5")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		--UI:Lua_SubmitForm("等级判断表单", "OnOpenForge", "")
		UI:Lua_OpenWindow(0, "ForgeWnd5.lua")
	end
end



EquipmentMenu.main()






