function LuaUI.RoleGUI.OnInit(this)	
	LuaGlobal["RoleNameX"] = 207;
	LuaGlobal["RoleNameY"] = 28;
	
	WndClose(this, "RoleEquimentPage");
	WndClose(this, "RoleSkillPage");
	WndClose(this, "RolePropertyPage");
	WndClose(this, "RoleStatusPage");
	WndClose(this, "RoleTitlePage");
	WndClose(this, "RoleOtherPage");
	
	ImageSetImageID(this, "GUI_2", 1820400160);	
	WndSetPos(this, "Close", 620, -5);
	GUI:WndSetSizeM(this, 627, 494);
	
	local Btns = {"属性", "状态", "技能", "称号"};
	for k, v in ipairs(Btns) do
		local _GUIHandle = GUI:ButtonCreate(this, "RolePage"..k, 1820400103, 50*k+360, 28);
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, 4290950816);
			GUI:WndSetTextM(_GUIHandle, v);
			GUI:WndSetTextOffset(_GUIHandle, -6, 0);
			GUI:WndSetParam(_GUIHandle, k);
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "LuaUI.RoleGUI.OnClickPage");
		end
	end
	
	GUI:ImageCreate(this, "AttackImage", 1820400138, 70, 413);
	for i = 1, 8 do	
		GUI:ImageCreate(this, "AttackImage"..i, 0, 30*i+140, 423);
	end
	
	CL:AddDelayTask("LuaUI.RoleGUI.DelayInit("..this..")", 0, 1);
end

function LuaUI.RoleGUI.DelayInit(this)	
	local default = 1;
	if WndGetVisible(this, "RoleSkill") then
		default = 3;
		WndSetVisible(this, "RoleEquiment", true);
	else
		WndSetVisible(this, "RolePropertyGUI", true);
	end

	local _Default = GetWindow(this, "RolePage"..default);
	GUI:ButtonSetIsActivePageBtn(_Default, true);
	GUI:WndMoveToParentTop(_Default);
	LuaUI.RoleGUI.page = default;
	
	local _Status = GetWindow(this, "RoleStatus");
	if _Status ~= 0 then
		local items = 
		{
			{0, "职业", 0}, 
			{1, "声望", 0}, 
			{2, "经验", 0}, 
			{19, "HP", 0}, 
			{20, "MP", 0}, 
			{4, "生命恢复", 0}, 
			{5, "魔法恢复", 0}, 
			{7, "攻击速度", 0}, 
			{8, "移动速度", 0}, 
			{9, "金攻", 0}, 
			{10, "木攻", 0}, 
			{11, "水攻", 0}, 
			{12, "火攻", 0}, 
			{13, "土攻", 0}, 
			{14, "金防", 1}, 
			{15, "木防", 1}, 
			{16, "水防", 1}, 
			{17, "火防", 1}, 
			{18, "土防", 1}, 
			{6, "中毒恢复"}, 
		};
		WndClose(_Status, "GUI_3");
		GUI:WndSetPosM(_Status, 395, 50);
		for k, v in ipairs(items) do
			if v[3] then
				x = 120*v[3]+20;
				y = 30*(k-5*v[3])-20;
				local _Edit = GUI:EditCreate(_Status, "Name"..v[1], 120*v[3]+20, 30*(k-5*v[3])-20, 100, 20);
				if _Edit ~= 0 then
					EditSetProp(_Edit, nil, true, false, false, false, 4290950816, false, v[2]);
				end
				WndSetPosM(_Status, "Edit"..v[1], 120*v[3]+80, 30*(k-5*v[3])-18);
			else
				WndClose(_Status, "Edit"..v[1]);
			end
			
		end
	end
	
	local _Skill = GetWindow(this, "RoleSkill");
	if _Skill ~= 0 then
		GUI:WndSetPosM(_Skill, 395, 50);
		ImageSetImageID(_Skill, "GUI_2", 1820400176);
		local _BtnR = GetWindow(_Skill, "RightBtn");
		if _BtnR ~= 0 then
			GUI:WndSetImageID(_BtnR, 1820400171);
			GUI:WndSetPosM(_BtnR, 150, 395);
		end
		local _BtnL = GetWindow(_Skill, "LeftBtn");
		if _BtnL ~= 0 then
			GUI:WndSetImageID(_BtnL, 1820400167);
			GUI:WndSetPosM(_BtnL, 70, 395);
		end
		for i = 0, 5 do
			local _Handle = GetWindow(_Skill, "Skill"..i);
			if _Handle ~= 0 then
				GUI:WndSetSizeM(_Handle, 50, 50);
				GUI:WndSetPosM(_Handle, 7, 64*i+10);
			end
			local _Name = GetWindow(_Skill, "Name"..i);
			if _Name ~= 0 then
				GUI:WndSetPosM(_Name, 80, 64*i+10);
			end
			local _Level = GetWindow(_Skill, "Level"..i);
			if _Level ~= 0 then
				GUI:WndSetPosM(_Level, 186, 64*i+12);
			end
			local _Image = GetWindow(_Skill, "Image"..i);
			if _Image ~= 0 then
				GUI:WndSetImageID(_Image, 1820400165);
				GUI:WndSetPosM(_Image, 72, 64*i+40);
			end
			local _HotKey = GetWindow(_Skill, "HotKey"..i);
			if _HotKey ~= 0 then
				GUI:WndSetPosM(_HotKey, 210, 64*i+17);
			end
			local _Edit = GetWindow(_Skill, "Edit"..i);
			if _Edit ~= 0 then
				GUI:WndSetPosM(_Edit, 93, 64*i+35);
			end
		end
	end
	
	local _Title = GetWindow(this, "PlayerTitle");
	if _Title ~= 0 then
		GUI:WndSetPosM(_Title, 395, 50);
		ImageSetImageID(_Title, "GUI_2", 1820400134);
		WndSetPosM(_Title, "CurTitleEdit", 90, 6);
		WndSetPosM(_Title, "TitlesLB", 6, 34);
		WndSetSizeM(_Title, "TitlesLB", 230, 163);
		WndSetPosM(_Title, "CurTitleDescRE", 7, 238);
		WndSetSizeM(_Title, "CurTitleDescRE", 228, 56);
		local _ShowBtn = GetWindow(_Title, "ShowTitle");
		if _ShowBtn ~= 0 then
			GUI:WndSetImageID(_ShowBtn, 1820400126);
			GUI:WndSetTextColorM(_ShowBtn, 4290950816);
			GUI:WndSetTextM(_ShowBtn, "显示称号");
			GUI:WndSetPosM(_ShowBtn, 60, 205);
		end
		local _HideBtn = GetWindow(_Title, "HideTitle");
		if _HideBtn ~= 0 then
			GUI:WndSetImageID(_HideBtn, 1820400126);
			GUI:WndSetTextColorM(_HideBtn, 4290950816);
			GUI:WndSetTextM(_HideBtn, "隐藏称号");
			GUI:WndSetPosM(_HideBtn, 150, 205);
		end
		GUI:WndRegistScript(_Title, RDWndBaseCL_wnd_visible, "LuaUI.RoleGUI.OnTitleVisible");
	end
	
	local _Other = GetWindow(this, "RoleOther");
	if _Other ~= 0 then
		WndClose(_Other, "GUI_3");
		WndClose(_Other, "EditBK0");
		WndClose(_Other, "EditBK1");
		WndClose(_Other, "EditBK2");
		WndClose(_Other, "TEXT0");
		WndClose(_Other, "TEXT1");
		WndClose(_Other, "TEXT2");
		GUI:WndSetPosM(_Other, 395, 50);
		GUI:WndSetCanRevMsg(_Other, false);
		for i = 0, 2 do
			WndSetPosM(_Other, "Edit"..i, 90, 36*i+318)
		end
	end
	
	local job = CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) and LuaRet or 0;
	if job == 1 then
		LuaUI.RoleGUI.att = 10;
	elseif job == 2 then
		LuaUI.RoleGUI.att = 12;
	elseif job == 3 then
		LuaUI.RoleGUI.att = 14;
	end
	LuaUI.RoleGUI.OnPropertyData(LuaUI.RoleGUI.att);
end

function LuaUI.RoleGUI.OnClickPage(this)
	local param = GUI:WndGetParam(this);
	if param == LuaUI.RoleGUI.page then
		return;
	end

	ButtonSetIsActivePageBtn(this, "parent,RolePage"..LuaUI.RoleGUI.page, false);
	GUI:ButtonSetIsActivePageBtn(this, true);
	GUI:WndMoveToParentTop(this);
	
	local wnds = {"RolePropertyGUI", "RoleStatus", "RoleSkill", "PlayerTitle", "RoleOther"};
	WndSetVisible(this, "parent,"..wnds[LuaUI.RoleGUI.page], false);
	WndSetVisible(this, "parent,"..wnds[param], true);
	
	LuaUI.RoleGUI.page = param;
end

function LuaUI.RoleGUI.OnTitleVisible(_Title)
	local _Other = GetWindow(_Title, "parent,RoleOther");
	if _Other ~= 0 then
		GUI:WndSetVisible(_Other, GUI:WndGetVisible(_Title));
	end
end

function LuaUI.RoleGUI.OnPropertyData(param)
	if LuaUI.RoleGUI.att == LuaParam[2] or LuaUI.RoleGUI.att == param then
		local _GUIHandle = GetWindow(nil, "RoleGUI");
		if _GUIHandle == 0 then
			return;
		end
		
		local value = CL:GetPlayerSelfProperty32(LuaUI.RoleGUI.att) and LuaRet or 0;
		value = tostring(value);
		
		for i = 1, #value do
			ImageSetImageID(_GUIHandle, "AttackImage"..i, tonumber("182040014"..value:sub(i,i)));
		end
		
		for i = #value+1, 8 do
			ImageSetImageID(_GUIHandle, "AttackImage"..i, 0);
		end
	end
end

RegisterUIEvent(LUA_EVENT_PROPERTYDATA, "玩家属性变化", LuaUI.RoleGUI.OnPropertyData);