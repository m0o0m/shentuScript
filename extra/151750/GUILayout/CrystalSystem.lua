local _existedHandle = GetWindow(0, "CrystalSystem") 
if _existedHandle ~= 0 then
	GUI:WndClose(_existedHandle)
end
CrystalSystem = {}
function CrystalSystem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"CrystalSystem",1803700001,280,70)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,632, 441)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img_crystal",1803700027,288,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn1",1803700003,42,52)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSystem.itemClick")
        GUI:WndSetTextM(_GUIHandle,"宝石镶嵌")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn2",1803700003,120,52)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSystem.itemClick")
        GUI:WndSetTextM(_GUIHandle,"宝石升级")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn3",1803700003,198,52)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSystem.itemClick")
        GUI:WndSetTextM(_GUIHandle,"宝石转换")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1803700030,576,8)
    if _GUIHandle ~= 0 then
    	GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSystem.closeWnd")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"helpimg",1800000297,480,380)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"helptxt",506,379,80,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end

    CrystalSystem.UIInit(_Parent)
end

--UI Logic Code Start
CrystalSystem.WndHandle = 0
CrystalSystem.functionForm = {"宝石镶嵌表单", "宝石升级表单", "宝石转换表单"}
CrystalSystem.functionHandle = {"InlayCrystal", "OtaCrystal", "ConvCrystal"}

function CrystalSystem.UIInit(_GUIHandle)
	GUI:WndSetSizeM(_GUIHandle, 631, 441)
	CrystalSystem.WndHandle = _GUIHandle
	
	local handle = 0
	for i = 1, #CrystalSystem.functionHandle do
		handle = GetWindow(_GUIHandle, "btn" .. i)
		if handle ~= 0 then
			GUI:WndSetParam(handle, i)
			GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 107, 91, 80))
			GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
			GUI:ButtonSetIsActivePageBtn(handle, true)
			if i == 1 then
				GUI:ButtonSetIsActivePageBtn(handle, true)
			else 
				GUI:ButtonSetIsActivePageBtn(handle, false)
			end
		end
	end
	UI:Lua_OpenWindow(CrystalSystem.WndHandle, CrystalSystem.functionHandle[1] .. ".lua")
	CrystalSystem.hint(1)
end

function CrystalSystem.itemClick(_handle)
	local sender = GUI:WndGetParam(_handle)
	local isPageBtn = GUI:ButtonGetIsActivePageBtn(_handle)
	if not isPageBtn then
		CrystalSystem.Update(_handle)
		UI:Lua_OpenWindow(CrystalSystem.WndHandle, CrystalSystem.functionHandle[sender] .. ".lua")
	end
	CrystalSystem.hint(sender)
end

function CrystalSystem.Update(_handle)
	for i = 1, #CrystalSystem.functionHandle do
		local handle = GetWindow(nil, "CrystalSystem,btn" .. i)
		local formHandle = GetWindow(nil, "CrystalSystem," .. CrystalSystem.functionHandle[i])	
		if handle == _handle then
			ButtonSetIsActivePageBtn(CrystalSystem.WndHandle, "btn"..i, true)
		else 
			ButtonSetIsActivePageBtn(CrystalSystem.WndHandle, "btn"..i, false)
			if formHandle ~= 0 then
				GUI:WndClose(formHandle)
			end
		end
	end
end

function CrystalSystem.closeWnd(_handle)
	GUI:WndClose(CrystalSystem.WndHandle)
end
function CrystalSystem.hint(num)
	local txt_tab = {"宝石镶嵌说明","宝石升级说明","宝石转换说明"}
	local txt_tab2 = {	"宝石镶嵌说明：                            1.同一件装备镶嵌的宝石种类不可重复       2.宝石孔可通过消耗破封印解封             3.破封印可通过参加活动、击杀BOSS、商城购买等方式获得已镶嵌宝石的装备，左键点击可卸下，但会消耗金币",
						"宝石升级说明：                            1.宝石升级100%成功                       2.宝石升级优先消耗绑定金币               3.宝石升级数量不足时，使用“立刻升级”会自动从商城购买缺少的宝石直接升级",
						"宝石转换说明：                            1.宝石转换100%成功                       2.宝石转换优先消耗绑定金币               3.转换后的宝石的级别不会降低"
	}
	local handle = GetWindow(CrystalSystem.WndHandle, "helptxt")
	if handle ~= 0 then 
		GUI:EditSetTextM(handle,txt_tab[num])
		GUI:WndSetHintWidth(handle,250)
		GUI:WndSetHint(handle,txt_tab2[num] )
	end
	handle = GetWindow(CrystalSystem.WndHandle, "helpimg")
	if handle ~= 0 then 
		GUI:WndSetHintWidth(handle,250)
		GUI:WndSetHint(handle,txt_tab2[num] )
	end
	
end

CrystalSystem.main()