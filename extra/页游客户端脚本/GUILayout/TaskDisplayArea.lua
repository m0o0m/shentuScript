TaskDisplayArea = {}

function TaskDisplayArea.main()
	local _GUI = 0
	local _Parent = LuaGlobal["AttachPartent"]
	
	_GUI = GUIScrollBarVCreate(_Parent,"ScrollBar",1800000419,1800000423,1800000435,1800000439, 680, 125, 335)	--程序控制

	_Parent = GUIWndCreateWnd(_Parent, "TaskDisplayArea", 0, 231, 125) 
	
	_GUI = GUIRichEditCreate(_Parent, "Edit", 32, 21, 400, 90)
	
	_GUI = GUIRichEditCreate(_Parent, "Accept", 50, 120, 83, 20)
	
	_GUI = GUIRichEditCreate(_Parent, "Finish", 260, 120, 83, 20)
	
	_GUI = GUIRichEditCreate(_Parent, "FromNPC", 125, 120, 129, 20) 	--领取npc
	
	_GUI = GUIRichEditCreate(_Parent, "ToNPC", 335, 120, 129, 20)	--完成npc
	 
	_GUI = GUIEditCreate(_Parent, "Goal", 50, 143, 83, 20)
	
	_GUI = GUIRichEditCreate(_Parent, "GoalEdit", 32, 167, 400, 20)	--任务目标
	
	_GUI = GUIEditCreate(_Parent, "Awards", 50, 208, 83, 20)
	
	_GUI = GUIImageCreate(_Parent, "Coins", 1903700002, 32, 227)
	
	_GUI = GUIImageCreate(_Parent, "Exp", 1903700003, 178, 227)
	
	_GUI = GUIEditCreate(_Parent, "CoinEdit", 62, 234, 93,15)
	
	_GUI = GUIEditCreate(_Parent, "ExpEdit", 208, 234, 93,15)
	
	_GUI = GUIEditCreate(_Parent, "Optional", 50, 272, 83,20)
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item1", 0, 32, 292, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item2", 0, 92, 292, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item3", 0, 152, 292, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item4", 0, 212, 292, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item5", 0, 272, 292, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item6", 0, 332, 292, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item7", 0, 32, 352, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item8", 0, 92, 352, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item9", 0, 152, 352, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item10", 0, 212, 352, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item11", 0, 272, 352, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	_GUI = GUIItemCtrlCreate(_Parent, "Item12", 0, 332, 352, 48, 48)	--奖励道具
	if _GUI ~= 0 then GUIItemCtrlSetBackImageID(_GUI, 1804200004) end
	
	TaskDisplayArea.UIInit(_Parent)
end
function TaskDisplayArea.UIInit(_Handle)
	TaskDisplayArea.WndHandle = _Handle
	GUIWndSetSizeM(TaskDisplayArea.WndHandle, 469, 335)
end
TaskDisplayArea.main()