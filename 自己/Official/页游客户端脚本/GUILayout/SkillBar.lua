SkillBar = {}

function SkillBar.main()

	local _Parent = as3.tolua(LuaGlobal["AttachPartent"])

	local _GUIHandle = 0
	local itemctrl = nil
	local edit = nil
	local key_tab = {"1","2","3","4","5","6","Q","W","E","R",}
	for i = 0, 9 do
		itemctrl = GUIItemCtrlCreate(_Parent, "Skill"..i, 0, 0 + i*51, 0, 40, 40)
		if itemctrl ~= 0 then
			RDItemCtrlSetProp(itemctrl, nil, true, true, true, true, true, true)
		end
		
		edit = GUIEditCreate(_Parent, "Edit"..i, 20 + i*51, 27, 20, 16)
		if edit ~= 0 then
		end
		
		edit = GUIEditCreate(_Parent, "HotEdit"..i, 14 + i*51, 38, 12, 12)
		if edit ~= 0 then
			GUIWndSetEnableM(edit, false)
			GUIEditSetCanEdit(edit, false)
			GUIEditSetTextM(edit, key_tab[tonumber(i+1)]) 
			GUIEditSetFontCenter(edit)
		end
	end
 
	SkillBar.UIInit(_Parent)
	
end



--UI Logic Code Start
SkillBar.WndHandle = 0
function SkillBar.UIInit(_Handle)
	SkillBar.WndHandle = _Handle
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SkillBar_分辨率改变", SkillBar.UpdataScreenSize)
	SkillBar.UpdataScreenSize()
end

function SkillBar.UpdataScreenSize()

	local _ScreenWidth = CLGetScreenWidth()
	local _ScreenHeight = CLGetScreenHeight()
	local GameMainBarPosX = 0
	local GameMainBarPosY = 0
	local newX = CLGetScreenWidth()	
	local newY = CLGetScreenHeight()
	if newX > 1151 and newX < 1490 then
			GameMainBarPosX = 410
			GameMainBarPosY = newY - 110
		else
			GameMainBarPosX = newX/2 - 335
			GameMainBarPosY = newY - 110
		end	
	--[[local _GUIHandle = GUIWndFindWindow(0,"GameMainInterface,GameMainBar")
	GUI:WndGetPosM(_GUIHandle)--]]
	--GUI:WndSetPosM(SkillBar.WndHandle, as3.tolua(LuaRet[1])+115, as3.tolua(LuaRet[2])+40)
	GUI:WndSetPosM(SkillBar.WndHandle, GameMainBarPosX+115, GameMainBarPosY+40)
end

SkillBar.main()