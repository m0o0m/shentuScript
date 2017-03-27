--ENBEG--
local GMBox_script_name = "GMBox";
local GMBox_PreEditHandle = 0;

function GMBox_Init()
	UI:Lua_Log("GMBox_Init开始执行")
	if GetWindow(nil, "GMBOXSetTime") ~= 0 then
		WndClose(nil, "GMBOXSetTime");
	end
	for i = 1, 5 do
		if GetWindow(nil, "NpcTalk,Container,Edit"..i) ~= 0 and WndGetParam(nil, "NpcTalk,Container,Edit"..i) ~= 0 then
			UI:Lua_Log("GMBox_Init获得窗口成功:")
			WndSetActive(nil, "NpcTalk,Container,Edit"..i, true);
			break;
		end
	end
end

function GMBox_OnEditKeyEnter(this)
	local parent = WndGetParent(this);
	local param = WndGetParam(this);
	local next = 0;
	for i = param + 1, 5 do
		if GetWindow(parent, "Edit"..i) ~= 0 and WndGetParam(parent, "Edit"..i) ~= 0 then
			next = i;
			break;
		end
	end
	if next == 0 then
		for j = 1, param - 1 do
			if GetWindow(parent, "Edit"..j) ~= 0 and WndGetParam(parent, "Edit"..j) ~= 0 then
				next = j;
				break;
			end
		end
	end
	if next ~= 0 then
		WndSetActive(parent, "Edit"..next, true);
	end
end

function GMBox_RunGMCommand(this) 
	local data = {};
	local parent = WndGetParent(this);
	local tb = deserialize(GMBox_str_tParams);
	for i = 1, #tb do 
		local handle = GetWindow(parent, "Edit"..i); 
		if handle == 0 then 
			handle = ComboBoxGetEdit(parent, "Combo"..i); 
		end 
		local text = EditGetText(handle);
		if UI:Lua_Base64Encode(text) then 
			data[i] = LuaRet;
		end 
	end 
	data = serialize(data);
	UI:Lua_SubmitForm(GMBox_script_name, "Run_GM", GMBox_str_t.."#"..GMBox_str_s.."#"..data);
end

function GMBox_ComboboxInit(this)
	local param = WndGetParam(this);
	local tb = deserialize(GMBox_str_tParams);
	local str = tb[param][2];
	local content = strsplit(str, ";");
	local color = mkcolor("GREENG");
	for k, v in ipairs(content) do 
		ComboBoxAddStringEx(this, nil, v, k - 1, color) ;
	end 
	ComboBoxSetCurSelect(this, nil, 0) ;
end

function GMBoxTalk_Destroy(this)
	UI:Lua_SubmitForm(GMBox_script_name, "GMBoxTalkWrong", "");
end

function GMBoxTalk_ItemInit(this) 
	local handle = GetWindow(nil, "NpcTalk,Container,Edit2");
	if handle == 0 then 
		return;
	end
	local parent = WndGetParent(this);
	local json_str = EditGetText(handle);
	json_str=string.gsub(json_str, "^%s*(.-)%s*$", "%1");
	if json_str == "" then 
		MessageBox(0, "警告: 道具json串不能为空", "WndClose("..parent..")", "WndClose("..parent..")");
		return;
	end 
	if not RDItemCtrlSetJson(this, nil, json_str) then 
		MessageBox(0, "警告: 道具json串有误", "WndClose("..parent..")", "WndClose("..parent..")");
		return;
	end
	RDItemCtrlUpdateRefineAnimate(this, nil);
end

function GMBOXTalk_CastleWarClick(this)
	local str = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#神途GMBox指令工具箱#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n\n";
	str = str.." #COLORCOLOR_GREENG#服务器上所有行会列表：#COLOREND#\n";
	local script = [[
	<form>
		<dialog id=GMBOXFamilyList w=400 h=230 image=1903700033 fitsize=1 close=1 savepos=1 magic=1 OnInit="GMBoxTalk_FamilyListInit">
			<richedit id=MSG x=10 y=18 w=360 h=20 text="]]..str..[[" />
			<wnd id=PageList x=160 y=42 >
				<button id=PrevBtn x=0 y=0 image=1930900001 enable=0 OnLButtonClick="GMBOXTalk_PreClick"/>
				<button id=NextBtn x=70 y=0 image=1930900005 OnLButtonClick="GMBOXTalk_NextClick"/>
				<image id=Back x=20 y=1 w=50 h=20 fitsize=1 image=1901200025 />
				<edit id=CurPage x=21 y=-1 w=20 h=20 text="1" />
				<edit id=TotalPage x=41 y=-1 w=100 h=20 text="" />
				<check id=CheckAll x=100 y=0 image=1900112013 text="全选" text_color=BROWN OnCheckChange="GMBOXTalk_CheckAll" />
				<check id=Invert x=150 y=0 image=1900112013 text="反选" text_color=BROWN OnCheckChange="GMBOXTalk_Invert" />
			</wnd>
			<wnd id=CheckList x=20 y=80 >
			</wnd>
			<button id=CheckDone x=150 y=180 image=1906300106 OnLButtonClick="GMBOXTalk_CheckDone" />
		</dialog>
	</form>"]];
	GenFormByString(script);
	GMBox_PreEditHandle = this;
end

function GMBoxTalk_FamilyListInit(this)
	for i = 0, 8 do
		local x = 120 * (i % 3);
		local y = 30 * math.floor(i / 3)
		local script = [[
		<form default_parent=GMBOXFamilyList,CheckList>
			<check id=Check]]..i..[[ x=]]..x..[[ y=]]..y..[[ param=]]..i..[[ image=1900112013 text="" text_color=BROWN visible=0 OnCheckChange="GMBOXTalk_FamilyCheckChange" />
		</form>
		]];
		GenFormByString(script);
	end
	GMBoxTalk_Checks = {};
	GMBoxTalk_CurPage = 1;
	if GMBox_str_familys ~= nil then
		GMBoxTalk_familys = deserialize(GMBox_str_familys);
	elseif GMBox_str_familys_tb ~= nil then
		local str = "";
		for k, v in ipairs(GMBox_str_familys_tb) do
			str = str..v;
		end
		GMBoxTalk_familys = deserialize(str);
	else
		GMBoxTalk_familys = {};	
	end
	
	local total_page = math.ceil(#GMBoxTalk_familys / 9);
	if total_page <= 1 then
		total_page = 1;
		WndSetEnableM(this, "PageList,NextBtn", false);
	end
	EditSetTextM(this, "PageList,TotalPage", "/"..total_page);
	GMBoxTalk_FamilyListUpdata();
end

function GMBoxTalk_FamilyListUpdata()
	EditSetTextM(nil, "GMBOXFamilyList,PageList,CurPage", tostring(GMBoxTalk_CurPage));
	for i = 0, 8 do
		WndSetVisibleM(nil, "GMBOXFamilyList,CheckList,Check"..i, false);
	end
	local per = 9;
	if #GMBoxTalk_familys < 1 + per * (GMBoxTalk_CurPage - 1) then
		GMBoxTalk_CurPage = math.max(1, GMBoxTalk_CurPage - 1);
	end
	local num = per * GMBoxTalk_CurPage;	
	if #GMBoxTalk_familys < per + per * (GMBoxTalk_CurPage - 1) then
		num = #GMBoxTalk_familys;
	end
	local i = 0;
	for j = 1 + per * (GMBoxTalk_CurPage - 1), num do
		WndSetVisibleM(nil, "GMBOXFamilyList,CheckList,Check"..i, true);
		CheckSetText(nil, "GMBOXFamilyList,CheckList,Check"..i, GMBoxTalk_familys[j]);
		local is_checked = false;
		if GMBoxTalk_Checks[GMBoxTalk_familys[j]] == 1 then
			is_checked = true;
		end
		CheckSetCheck(nil, "GMBOXFamilyList,CheckList,Check"..i, is_checked);
		i = i + 1;		
	end
end

function GMBOXTalk_CheckAll(this)
	local is_checked = 1;
	if not CheckGetCheck(this) then
		is_checked = nil;
	end
	for _, v in pairs(GMBoxTalk_familys) do
		GMBoxTalk_Checks[v] = is_checked;
	end
	GMBoxTalk_FamilyListUpdata();
end

function GMBOXTalk_Invert(this)
	for _, v in pairs(GMBoxTalk_familys) do
		if GMBoxTalk_Checks[v] == nil then
			GMBoxTalk_Checks[v] = 1;
		else
			GMBoxTalk_Checks[v] = nil;
		end
	end
	GMBoxTalk_FamilyListUpdata();
end

function GMBOXTalk_FamilyCheckChange(this)
	local param = WndGetParam(this);
	local key = 9 * (GMBoxTalk_CurPage - 1) + param + 1;
	local name = GMBoxTalk_familys[key];
	if GMBoxTalk_Checks[name] == nil then
		GMBoxTalk_Checks[name] = 1;
	else
		GMBoxTalk_Checks[name] = nil;
	end
end

function GMBOXTalk_CheckDone(this)
	local handle = GMBox_PreEditHandle;
	if handle == 0 then
		return;
	end
	local str = "";
	for k, v in pairs(GMBoxTalk_Checks) do
		if #(str..k) > 8000 then
			MessageBox(0, "行会字符串过长，超过限制部分自动舍去！");
			break;
		end
		str = str .. k .. "&";
	end
	str = string.sub(str, 1, -2);
	EditSetTextM(handle, nil, str);
	local parent = WndGetParent(this);
	WndClose(parent);
	GMBox_PreEditHandle = 0;
end

function GMBOXTalk_PreClick(this)
	GMBoxTalk_CurPage = GMBoxTalk_CurPage - 1;
	if GMBoxTalk_CurPage <= 1 then
		GMBoxTalk_CurPage = 1;
		WndSetEnableM(this, nil, false);
	end
	local parent = WndGetParent(this);
	WndSetEnableM(parent, "NextBtn", true);
	GMBoxTalk_FamilyListUpdata();
end

function GMBOXTalk_NextClick(this)
	GMBoxTalk_CurPage = GMBoxTalk_CurPage + 1;
	local total_page = math.ceil(#GMBoxTalk_familys / 9);
	if GMBoxTalk_CurPage >= total_page then
		GMBoxTalk_CurPage = total_page;
		WndSetEnableM(this, nil, false);
	end
	local parent = WndGetParent(this);
	WndSetEnableM(parent, "PrevBtn", true);
	GMBoxTalk_FamilyListUpdata();
end

function GMBOXTalk_SetTimeClick(this)
	local str = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#神途GMBox指令工具箱#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n\n";
	str = str.." #COLORCOLOR_GREENG#请选择时间：#COLOREND#\n";
	local script = [[
	<form>
		<dialog id=GMBOXSetTime w=400 h=230 image=1903700033 fitsize=1 close=1 savepos=1 magic=1 OnInit="GMBoxTalk_SetTimeInit">
			<richedit id=MSG x=10 y=18 w=360 h=20 text="]]..str..[[" />
			<wnd id=TimeList x=20 y=80 >
			</wnd>
			<button id=OK x=150 y=180 image=1906300106 OnLButtonClick="GMBOXTalk_SetTime" />
		</dialog>
	</form>"]];
	GenFormByString(script);
	GMBox_PreEditHandle = this;
end

function GMBoxTalk_SetTimeInit(this)
	local strs = {"年", "月", "日", "时", "分", "秒"};
	
	for i = 0, 5 do
		local x = 120 * (i % 3)+50;
		local y = 40 * math.floor(i / 3)
		local script = [[
		<form default_parent=GMBOXSetTime,TimeList>
			<edit id=Tab]]..i..[[ x=]]..(x-30)..[[ y=]]..(y+1)..[[ w=130 h=20 text="]]..strs[i+1]..[[" text_color=BROWN />
			<image id=BackImage]]..i..[[ x=]]..x..[[ y=]]..(y+1)..[[ w=50 h=25 image=1901200025 fitsize=1 />
			<combobox id=Time]]..i..[[ x=]]..x..[[ y=]]..y..[[ w=50 image=1900100108 fill_image=1901500047 text_color=GREENG />
		</form>
		]];
		GenFormByString(script);
	end
	
	local color = mkcolor("GREENG");
	for j = 0, 2 do
		ComboBoxAddStringEx(this, "TimeList,Time0", tostring(j+2013), j, color);
	end
	for j = 0, 11 do
		ComboBoxAddStringEx(this, "TimeList,Time1", tostring(j+1), j, color);
	end
	for j = 0, 30 do
		ComboBoxAddStringEx(this, "TimeList,Time2", tostring(j+1), j, color);
	end
	for j = 0, 23 do
		ComboBoxAddStringEx(this, "TimeList,Time3", tostring(j), j, color);
	end
	for j = 0, 59 do
		ComboBoxAddStringEx(this, "TimeList,Time4", tostring(j), j, color);
	end
	for j = 0, 59 do
		ComboBoxAddStringEx(this, "TimeList,Time5", tostring(j), j, color);
	end
	
	for k = 0, 5 do
		ComboBoxSetCurSelect(this, "TimeList,Time"..k, 0);
		local edit = ComboBoxGetEdit(this, "TimeList,Time"..k);
		local x = 15;
		if k == 0 then
			x = 5;
		end
		WndSetPos(edit, nil, x, 0);
	end
end

function GMBOXTalk_SetTime(this)
	local handle = GMBox_PreEditHandle;
	if handle == 0 then
		return;
	end
	local parent = WndGetParent(this);
	local Times = {};
	for i = 0, 5 do
		Times[i+1] = ComboBoxGetText(parent, "TimeList,Time"..i);
	end
	local strTime = string.format("%04d-%02d-%02d %02d:%02d:%02d", Times[1], Times[2], Times[3], Times[4], Times[5], Times[6]);
	EditSetTextM(handle, nil, strTime);
	WndClose(parent);
	GMBox_PreEditHandle = 0;
end
--ENEND--