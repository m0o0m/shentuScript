local Upgrade_Packs_Tab = {
"凌霜剑特殊","轻型战甲特殊","金手镯特殊","灯笼项链特殊","青铜头盔战特殊","金戒指特殊","轻型战袍特殊",
"海魂特殊","魔力轻铠男特殊","黑檀手镯特殊","生命项链特殊","青铜头盔法特殊","六角戒指特殊","魔力轻铠女特殊",
"半月特殊","轻型道袍特殊","道士手镯特殊","白金项链特殊","青铜头盔道特殊","珍珠戒指特殊","轻型道衣特殊",
"井中月特殊","重型铠甲男特殊","死神手套特殊","魔鬼项链特殊","骷髅头盔战特殊","降妖除魔戒指特殊","重型铠甲女特殊",
"魔杖特殊","魔法长袍男特殊","思贝儿手镯特殊","恶魔铃铛小特殊","黑铁头盔法特殊","蛇眼戒指特殊","魔法长袍女特殊",
"银蛇特殊","幽灵道袍特殊","心灵手镯特殊","黄色水晶项链特殊","道士头盔特殊","道德戒指特殊","幽灵道衣特殊",
"裁决特殊","战神铠甲男特殊","坚固手套特殊","蓝翡翠项链特殊","黑铁头盔特殊","力量戒指特殊","战神铠甲女特殊",
"血饮特殊","恶魔长袍男特殊","龙之手镯特殊","恶魔铃铛大特殊","魔法头盔特殊","紫碧螺特殊","恶魔长袍女特殊",
"龙纹特殊","灵巧道袍特殊","三眼手镯特殊","凤凰明珠特殊","骷髅头盔道特殊","泰坦戒指特殊","灵巧道衣特殊",
"天使之翼"}

function GetUpgradePacksList()
	return as3.toarray(Upgrade_Packs_Tab)
end
-- gui

AutoEquipPanel = {}
AutoEquipPanel.WndHandle = 0

function AutoEquipPanel.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	
	_Parent = GUIWndCreateWnd(_Parent,"AutoEquipPanel",1804600001,300,250)
	AutoEquipPanel.WndHandle = _Parent

	_GUIHandle = GUIEditCreate(_Parent,"Title",51,4,156,27)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,156, 27)
		GUIEditSetTextColor(_GUIHandle, webColor.whiteText)
		GUIEditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUIItemCtrlCreate(_Parent,"Item",0,21,75,56,56)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,56, 56)
		GUIItemCtrlSetBackImageID(_GUIHandle, 1803100002)
	end

	_GUIHandle = GUIEditCreate(_Parent,"Descrip",59,37,142,20)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,142, 20)
		GUIEditSetTextColor(_GUIHandle, CLMakeARGB(255,0,204,51))	 
		GUIEditSetCanEdit(_GUIHandle, false)
		GUIEditSetFontCenter(_GUIHandle)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"EquipBtn",1804600002,61,148)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,144, 40)
		WndAddEffect(_GUIHandle,nil,3020301400,-67,-33,100,0)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"CloseBtn",0,231,10)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,26, 26)
	end
	
	_GUIHandle = GUIRichEditCreate(_Parent,"PromoteInfo1",85,75,142,20)   --攻击提升（物、魔、道）
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,142, 20)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttackImg1",1804600006,211,72)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIRichEditCreate(_Parent,"PromoteInfo2",85,95,142,20)   --物防提升
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,142, 20)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttackImg2",1804600006,211,92)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUIRichEditCreate(_Parent,"PromoteInfo3",85,115,142,20)   --魔防提升
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,142, 20)
	end
	_GUIHandle = GUIImageCreate(_Parent,"AttackImg3",1804600006,211,112)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	end
end

AutoEquipPanel.main()