function LtsReloadEnd()
	LuaParam = {}
	LuaParam[1] = "����ƽ̨��"
	LuaParam[2] = "Ԫ��" --��� Ԫ�� ��Ʒ
	UIDriver_JiaoyipingtaiWnd_OnShowForm()
end

--�ű���
function UIDriver_Jiaoben_OnShowForm()
	if LuaParam[1] ~= "�ű���" then return end
	local str = LuaParam[2]
	local func = loadstring(str)
	func()
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"�ű���",UIDriver_Jiaoben_OnShowForm)

--form���ݱ�
function UIDriver_Forminfo_OnShowForm()
	if LuaParam[1] ~= "form���ݱ�" then return end
	local str = LuaParam[2]
	UI:Lua_GenFormByString(str)
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"form���ݱ�",UIDriver_Forminfo_OnShowForm)

--form�ļ���
function UIDriver_Formfile_OnShowForm()
	if LuaParam[1] ~= "form�ļ���" then return end
	local str = LuaParam[2]
	UI:Lua_GenForm(str)
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"form�ļ���",UIDriver_Formfile_OnShowForm)

--���˾�������Ϣ��--
function UIDriver_LtsSelfInfo_OnShowForm()
	if LuaParam[1] ~= "���˾�������Ϣ��" then return end
	local Wnd = GetWindow(nil, "���˾�������Ϣ")
	if Wnd ~= 0 then return end
	CreateWnd(nil, nil, "���˾�������Ϣ")
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"���˾�������Ϣ��",UIDriver_LtsSelfInfo_OnShowForm)

--���˾�������--
function UIDriver_LtsSelfWnd_OnShowForm()
	if LuaParam[1] ~= "���˾�������" then return end
	local Wnd = GetWindow(nil, "���˾�����")
	if Wnd == 0 then
		CreateWnd(nil, nil, "���˾�����")
	else
		Lts_swnd_data_init()
		Lts_swnd_wnd_init()
		Lts_swnd_do_init(Wnd)
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"���˾�������",UIDriver_LtsSelfWnd_OnShowForm)

--��ħʯ�ύ��--
function UIDriver_FmsxsWnd_OnShowForm()
	if LuaParam[1] ~= "��ħʯ���ձ�" then return end
	if GetWindow(nil, "��ħʯ����") == 0 then
		CreateWnd(nil, nil, "��ħʯ����")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ħʯ���ձ�",UIDriver_FmsxsWnd_OnShowForm)

--װ����ħ�ύ��--
function UIDriver_ZbfumoWnd_OnShowForm()
	if LuaParam[1] ~= "װ����ħ��" then return end
	if GetWindow(nil, "װ����ħ") == 0 then
		CreateWnd(nil, nil, "װ����ħ")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"װ����ħ��",UIDriver_ZbfumoWnd_OnShowForm)

--��ҫװ���һ���--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ���һ���" then return end
	if GetWindow(nil, "��ҫװ���һ�") == 0 then
		CreateWnd(nil, nil, "��ҫװ���һ�")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ���һ���",UIDriver_RyzbduihuanWnd_OnShowForm)

--��ҫװ��������Ʒ��--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ���һ����ݱ�" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "��ҫװ���һ�") ~= 0 then
		LuaUI["��ҫװ���һ�"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ��������Ʒ��",UIDriver_RyzbwupinWnd_OnShowForm)


--��ҫװ��2ת��--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ��2ת��" then return end
	if GetWindow(nil, "��ҫװ��2ת") == 0 then
		CreateWnd(nil, nil, "��ҫװ��2ת")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ��2ת��",UIDriver_RyzbduihuanWnd_OnShowForm)

--��ҫװ��2ת������Ʒ��--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ��2ת���ݱ�" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "��ҫװ��2ת") ~= 0 then
		LuaUI["��ҫװ��2ת"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ��2ת������Ʒ��",UIDriver_RyzbwupinWnd_OnShowForm)

--��ҫװ��3ת��--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ��3ת��" then return end
	if GetWindow(nil, "��ҫװ��3ת") == 0 then
		CreateWnd(nil, nil, "��ҫװ��3ת")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ��3ת��",UIDriver_RyzbduihuanWnd_OnShowForm)

--��ҫװ��3ת������Ʒ��--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ��3ת���ݱ�" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "��ҫװ��3ת") ~= 0 then
		LuaUI["��ҫװ��3ת"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ��3ת������Ʒ��",UIDriver_RyzbwupinWnd_OnShowForm)

--��ҫװ��4ת��--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ��4ת��" then return end
	if GetWindow(nil, "��ҫװ��4ת") == 0 then
		CreateWnd(nil, nil, "��ҫװ��4ת")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ��4ת��",UIDriver_RyzbduihuanWnd_OnShowForm)

--��ҫװ��4ת������Ʒ��--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ��4ת���ݱ�" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "��ҫװ��4ת") ~= 0 then
		LuaUI["��ҫװ��4ת"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ��4ת������Ʒ��",UIDriver_RyzbwupinWnd_OnShowForm)

--��ҫװ��5ת��--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ��5ת��" then return end
	if GetWindow(nil, "��ҫװ��5ת") == 0 then
		CreateWnd(nil, nil, "��ҫװ��5ת")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ��5ת��",UIDriver_RyzbduihuanWnd_OnShowForm)

--��ҫװ��5ת������Ʒ��--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫװ��5ת���ݱ�" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "��ҫװ��5ת") ~= 0 then
		LuaUI["��ҫװ��5ת"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫװ��5ת������Ʒ��",UIDriver_RyzbwupinWnd_OnShowForm)



--��ҫ���߶һ���--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫ���߶һ���" then return end
	if GetWindow(nil, "��ҫ���߶һ�") == 0 then
		CreateWnd(nil, nil, "��ҫ���߶һ�")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫ���߶һ���",UIDriver_RyzbduihuanWnd_OnShowForm)

--��ҫ����������Ʒ��--
function UIDriver_RyzbwupinWnd_OnShowForm()
	if LuaParam[1] ~= "��ҫ���߶һ����ݱ�" then return end
	local func = loadstring(LuaParam[2])
	func()
	if GetWindow(nil, "��ҫ���߶һ�") ~= 0 then
		LuaUI["��ҫ���߶һ�"].Update()
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"��ҫ����������Ʒ��",UIDriver_RyzbwupinWnd_OnShowForm)

--����ƽ̨��--
function UIDriver_JiaoyipingtaiWnd_OnShowForm()
	if LuaParam[1] ~= "����ƽ̨��" then return end
	local style = LuaParam[2]
	if style == "���" or style == "Ԫ��" or style == "��Ʒ" then
		if GetWindow(nil, "����ƽ̨") == 0 then
			CreateWnd(nil, nil, "����ƽ̨")
		end
		LuaUI["����ƽ̨"].OnStyle(style)
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"����ƽ̨��",UIDriver_JiaoyipingtaiWnd_OnShowForm)

--�����ϳɱ�--
function UIDriver_Wuqihecheng_OnShowForm()
	if LuaParam[1] ~= "�����ϳɱ�" then return end
	LuaParam[3] = 1
	if GetWindow(nil, "װ���ϳ�") ~= 0 then
		WndClose(nil, "װ���ϳ�")
	end
	CreateWnd(nil, nil, "װ���ϳ�")
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"�����ϳɱ�",UIDriver_Wuqihecheng_OnShowForm)

--�·��ϳɱ�--
function UIDriver_Yifuhecheng_OnShowForm()
	if LuaParam[1] ~= "�·��ϳɱ�" then return end
	LuaParam[3] = 2
	if GetWindow(nil, "װ���ϳ�") ~= 0 then
		WndClose(nil, "װ���ϳ�")
	end
	CreateWnd(nil, nil, "װ���ϳ�")
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"�·��ϳɱ�",UIDriver_Yifuhecheng_OnShowForm)

--װ���ϳ����ݱ�--
function UIDriver_Zbhechengneirong_OnShowForm()
	if LuaParam[1] ~= "װ���ϳ����ݱ�" then return end
	local func = loadstring(LuaParam[2])
	func()
	LuaUI["װ���ϳ�"].Update()
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"װ���ϳ����ݱ�",UIDriver_Zbhechengneirong_OnShowForm)

--���ߺϳɱ�--
function UIDriver_Daojunhecheng_OnShowForm()
	if LuaParam[1] ~= "���ߺϳɱ�" then return end
	if GetWindow(nil, "���ߺϳ�") ~= 0 then
		WndClose(nil, "���ߺϳ�")
	end
	CreateWnd(nil, nil, "���ߺϳ�")
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"���ߺϳɱ�",UIDriver_Daojunhecheng_OnShowForm)

--���ߺϳ����ݱ�--
function UIDriver_Djhechengneirong_OnShowForm()
	if LuaParam[1] ~= "���ߺϳ����ݱ�" then return end
	local func = loadstring(LuaParam[2])
	func()
	LuaUI["���ߺϳ�"].Update()
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"���ߺϳ����ݱ�",UIDriver_Djhechengneirong_OnShowForm)

--˫���--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "˫���" then return end
	if GetWindow(nil, "˫���") == 0 then
		CreateWnd(nil, nil, "˫���")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"˫���",UIDriver_RyzbduihuanWnd_OnShowForm)

--ת����--
function UIDriver_RyzbduihuanWnd_OnShowForm()
	if LuaParam[1] ~= "ת����" then return end
	if GetWindow(nil, "ת����") == 0 then
		CreateWnd(nil, nil, "ת����")
	end
end
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"ת����",UIDriver_RyzbduihuanWnd_OnShowForm)