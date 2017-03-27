TempleGuider = {}
function TempleGuider.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TempleGuider",1806100012,298,81)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,384, 505)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"title",1805500020,130,12)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,126, 22)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"title3",178,144,68,35)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"˵ ��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"caption",42,79,276,50)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"    ��ħ��ˢ��BOSS�������࣬ˢ��ʱ��죬���׻�ɱ��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"caption1",42,99,299,50)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"����70������ȫϵ��װ���ʹ����������ᣬǰ�ڱ���")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text2",57,240,276,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"2.BOSS������10��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text3",57,275,276,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"3.ˢ��ʱ�䣺30-60����")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text4",57,310,276,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"4.������ϣ�����������")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"enterMap",132,406,120,26)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TempleGuider.EnterMap")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#����������ħ������#SELECTEND#")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"costYb",115,432,181,21)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"����500��Ԫ����100Ԫ��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"costNum",139,434,43,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"500")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1",57,205,149,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"1.����������ÿ�ν�������")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1_1",205,207,88,27)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"500��Ԫ��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text5",57,345,290,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"5.����װ����    ����ȫϵ��װ�����ɻ��պ������飩")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text5_5",125,351,27,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"70��")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,326,7)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TempleGuider.CloseWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 38)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"1",217,434,43,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"100")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	TempleGuider.UIInit(_Parent)
end

--UI Logic Code Start
function TempleGuider.UIInit(_Handle)
	TempleGuider.Handle = _Handle
	GUI:WndSetSizeM(TempleGuider.Handle,361, 524)
	CenterWnd(TempleGuider.Handle)
	GUI:WndSetMagicUI(TempleGuider.Handle, 1)
	GUI:WndSetIsESCClose(TempleGuider.Handle, true)
end

function TempleGuider.CloseWnd()
	if TempleGuider.Handle ~= 0 then
		GUI:WndClose(TempleGuider.Handle)
	end
end

function TempleGuider.EnterMap()
	UI:Lua_SubmitForm("TempleGuider_s","EnterMap","")
end

TempleGuider.main()