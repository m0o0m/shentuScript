operateMode = {}

--����----------------------------------
function operateMode.main()
	local _parent = LuaGlobal["AttachPartent"]
	
	local oM = as3.tolua(GUI:WndCreateWnd(_parent, "������ʽ", 1800100001, 0, 0))
	if oM ~= 0 then
		GUI:WndSetIsESCClose(oM,true)
		GUI:WndSetMagicUI(oM, 1)
		GUI:WndSetSizeM(oM, 612, 352)
		GUI:WndSetMoveWithLBM(oM)
		CenterWnd(oM)
	end
	
	local tUI =as3.tolua(GUI:ImageCreate(oM, "������ɫ", 1800100002, -42, 26))
	if tUI ~= 0 then
		WndSetEnable(tUI,"",false)
	end
	tUI = as3.tolua(GUI:ImageCreate(oM, "������", 1800100036, 192, 14) )
	if tUI ~= 0 then
		WndSetEnable(tUI,"",false)
	end
	tUI = as3.tolua(GUI:ImageCreate(oM, "����1", 1800100037, 195, 105)) 
	if tUI ~= 0 then
		WndSetEnable(tUI,"",false)
	end
	tUI = as3.tolua(GUI:ImageCreate(oM, "����2", 1800100038, 220, 165)) 
	if tUI ~= 0 then
		WndSetEnable(tUI,"",false)
	end
	tUI = as3.tolua(GUI:ImageCreate(oM, "����3", 1800100039, 285, 235))
	if tUI ~= 0 then
		WndSetEnable(tUI,"",false)
	end
	
	tUI = as3.tolua(GUI:ButtonCreate(oM, "���ģʽ", 1800100012, 235, 280))
	if tUI ~= 0 then
		GUI:WndRegistScript(tUI, RDWndBaseCL_mouse_lbUp, "operateMode.SelectLeft")
	end
	
	tUI = as3.tolua(GUI:ButtonCreate(oM, "�Ҽ�ģʽ", 1800100016, 385, 280))
	if tUI ~= 0 then
		GUI:WndRegistScript(tUI, RDWndBaseCL_mouse_lbUp, "operateMode.SelectRight")
	end
	
	tUI = as3.tolua(GUI:ButtonCreate(oM, "�ر�", 1930001002, 520, 43))
	if tUI ~= 0 then
		GUI:WndRegistScript(tUI, RDWndBaseCL_mouse_lbUp, "operateMode.OnCloseUi")
	end
	
	operateMode.UIInit()
end

function operateMode.UIInit()
	RegisterUIEvent(LUA_EVENT_ONQUITEGAME, "logout", operateMode.onGameClear)
end

operateMode.main()

--�߼�----------------------------------
function operateMode.onGameClear(fromModule, messageName, data)
	operateMode.clear()
end

function operateMode.OnCloseUi(_Handle,_Param)
	operateMode.clear()
end

function operateMode.SelectLeft(_Handle,_Param)
	CL:ChangeBasicSetting(RIGHT_MOUSE,false)--�����Ҽ�����1018
	operateMode.clear()
end

function operateMode.SelectRight(_Handle,_Param)
	CL:ChangeBasicSetting(RIGHT_MOUSE,true)--�����Ҽ�����1018
	operateMode.clear()
end

function operateMode.clear()
	WndClose(nil, "������ʽ")
end
