local _existedHandle = GetWindow(0, "CrystalSystem") 
if _existedHandle ~= 0 then
	GUI:WndClose(_existedHandle)
end
CrystalSystem = {}
function CrystalSystem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"CrystalSystem",1803700001,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,632, 441)
        GUI:WndSetIsESCClose(_Parent, true)
        GUI:WndSetMoveWithLBM(_Parent)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img_crystal",1803700027,288,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,55, 23)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn1",1803700003,42,52)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSystem.itemClick")
        GUI:WndSetTextM(_GUIHandle,"��ʯ��Ƕ")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 29)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn2",1803700003,120,52)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSystem.itemClick")
        GUI:WndSetTextM(_GUIHandle,"��ʯ���")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 29)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn3",1803700003,198,52)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSystem.itemClick")
        GUI:WndSetTextM(_GUIHandle,"��ʯ����")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 29)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn4",1803700003,276,52)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSystem.itemClick")
        GUI:WndSetTextM(_GUIHandle,"��ʯת��")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 29)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"close",1803700030,576,8)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSystem.closeWnd")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,30, 36)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"helpimg",1800000297,480,380)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 30)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"helptxt",506,379,80,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    CrystalSystem.UIInit(_Parent)
end

--UI Logic Code Start
CrystalSystem.WndHandle = 0
CrystalSystem.functionForm = {"��ʯ��Ƕ��", "��ʯ�����", "��ʯ������", "��ʯת����"}
CrystalSystem.functionHandle = {"InlayCrystal", "DismantleCrystal", "OtaCrystal", "ConvCrystal"}

function CrystalSystem.UIInit(_GUIHandle)
	GUI:WndSetSizeM(_GUIHandle, 631, 441)
	CenterWnd(_GUIHandle)
	GUI:WndSetMagicUI(_GUIHandle, 1)
	CrystalSystem.WndHandle = _GUIHandle
	
	local handle = 0
	for i = 1, #CrystalSystem.functionHandle do
		handle = GetWindow(_GUIHandle, "btn" .. i)
		if handle ~= 0 then
			GUI:WndSetParam(handle, i)
			GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 107, 91, 80))
			GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
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
	local txt_tab = {"��ʯ��Ƕ˵��","��ʯ���˵��","��ʯ����˵��","��ʯת��˵��"}
	local txt_tab2 = {	"��ʯ��Ƕ˵����                            1.ͬһ��װ����Ƕ�ı�ʯ���಻���ظ�       2.��ʯ�׿�ͨ�������Ʒ�ӡ���             3.�Ʒ�ӡ��ͨ���μӻ����ɱBOSS���̳ǹ���ȷ�ʽ�������Ƕ��ʯ��װ������������ж�£��������Ľ��",
						"��ʯ���˵����                            1.��ʯ���100%�ɹ�                       2.��ʯ�����������İ󶨽��               3.������ʱ���ʧ��",
						"��ʯ����˵����                            1.��ʯ����100%�ɹ�                       2.��ʯ�����������İ󶨽��               3.��ʯ������������ʱ��ʹ�á��������������Զ����̳ǹ���ȱ�ٵı�ʯֱ������",
						"��ʯת��˵����                            1.��ʯת��100%�ɹ�                       2.��ʯת���������İ󶨽��               3.ת����ı�ʯ�ļ��𲻻ή��"
	}
	local handle = GetWindow(CrystalSystem.WndHandle, "helptxt")
	if handle ~= 0 then 
		GUI:EditSetTextM(handle,''..txt_tab[num])
		GUI:WndMoveToParentTop(handle)
		GUI:WndSetHintWidth(handle,250)
		GUI:WndSetHint(handle,txt_tab2[num] )
	end
	handle = GetWindow(CrystalSystem.WndHandle, "helpimg")
	if handle ~= 0 then 
		GUI:WndMoveToParentTop(handle)
		GUI:WndSetHintWidth(handle,250)
		GUI:WndSetHint(handle,txt_tab2[num] )
	end
	
end

CrystalSystem.main()