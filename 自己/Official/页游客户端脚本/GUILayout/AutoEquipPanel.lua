local Upgrade_Packs_Tab = {
"��˪������","����ս������","����������","������������","��ͭͷ��ս����","���ָ����","����ս������",
"��������","ħ������������","��̴��������","������������","��ͭͷ��������","���ǽ�ָ����","ħ������Ů����",
"��������","���͵�������","��ʿ��������","�׽���������","��ͭͷ��������","�����ָ����","���͵�������",
"����������","��������������","������������","ħ����������","����ͷ��ս����","������ħ��ָ����","��������Ů����",
"ħ������","ħ������������","˼������������","��ħ����С����","����ͷ��������","���۽�ָ����","ħ������Ů����",
"��������","�����������","������������","��ɫˮ����������","��ʿͷ������","���½�ָ����","�����������",
"�þ�����","ս������������","�����������","�������������","����ͷ������","������ָ����","ս������Ů����",
"Ѫ������","��ħ����������","��֮��������","��ħ����������","ħ��ͷ������","�ϱ�������","��ħ����Ů����",
"��������","���ɵ�������","������������","�����������","����ͷ��������","̩̹��ָ����","���ɵ�������",
"��ʹ֮��"}

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
	
	_GUIHandle = GUIRichEditCreate(_Parent,"PromoteInfo1",85,75,142,20)   --�����������ħ������
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,142, 20)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttackImg1",1804600006,211,72)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIRichEditCreate(_Parent,"PromoteInfo2",85,95,142,20)   --�������
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,142, 20)
	end
	
	_GUIHandle = GUIImageCreate(_Parent,"AttackImg2",1804600006,211,92)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUIRichEditCreate(_Parent,"PromoteInfo3",85,115,142,20)   --ħ������
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,142, 20)
	end
	_GUIHandle = GUIImageCreate(_Parent,"AttackImg3",1804600006,211,112)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	end
end

AutoEquipPanel.main()