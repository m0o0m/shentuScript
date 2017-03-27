RankItem = {}
function RankItem.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"RankItem",0,0,0)
	if _Parent ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"index",86,0,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"name",218,0,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"lv",370,0,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"job",450,0,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gender",544,0,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	RankItem.UIInit(_Parent)
end

--UI Logic Code Start
function RankItem.UIInit(_Handle)
end
RankItem.main()




