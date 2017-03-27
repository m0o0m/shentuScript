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
		GUI:EditSetTextM(_GUIHandle,"说 明")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"caption",42,79,276,50)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"    锁魔宫刷新BOSS，数量多，刷新时间快，容易击杀，")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"caption1",42,99,299,50)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"掉落70级以下全系列装备和大量副本卷轴，前期必抢")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text2",57,240,276,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"2.BOSS数量：10个")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text3",57,275,276,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"3.刷新时间：30-60分钟")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text4",57,310,276,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"4.掉落材料：海量副本卷")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"enterMap",132,406,120,26)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TempleGuider.EnterMap")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#→『进入锁魔宫』←#SELECTEND#")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"costYb",115,432,181,21)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"消耗500绑定元宝或100元宝")
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
		GUI:EditSetTextM(_GUIHandle,"1.进入条件：每次进入消耗")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1_1",205,207,88,27)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"500绑定元宝")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text5",57,345,290,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292004515)
		GUI:EditSetTextM(_GUIHandle,"5.掉落装备：    以下全系列装备（可回收海量经验）")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text5_5",125,351,27,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255360)
		GUI:EditSetTextM(_GUIHandle,"70级")
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