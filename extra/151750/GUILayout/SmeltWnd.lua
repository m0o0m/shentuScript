SmeltWnd = {}
function SmeltWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"SmeltWnd",1851000058,400,110)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,697, 403)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"fireMagic",3020201000,144,18)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,400, 250)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 100)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"arrow",1800000366,328,87)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,43, 58)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"arrowMagic",2147483647,320,87)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,43, 58)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"success",298,170,142,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:RichEditAppendString(_GUIHandle,"成功率：")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"gong_image1",1802400023,69,143)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle, 205, 119)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s1",77,152,200,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s2",77,188,200,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s3",77,223,201,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image1",1851000014,117,16)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,96, 96)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,135,34,60,60)
	if _GUIHandle ~= 0 then
		-- GUI:WndRegistScript(_GUIHandle,1002, "SmeltWnd.EquipSelect")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"name2",100,117,195,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image2",1850700002,462,17)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,148, 96)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"desItem",0,506,33,60,60)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"desName",462,117,220,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"gong_image2",1802400023,446,143)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,205, 119)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong1",453,151,202,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong2",453,187,200,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong3",453,222,200,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"declare1",248,269,104,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"炼化数量：")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"editBack",0,345,268)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,74, 37)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"input",355,269,67,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetMaxCharNum(_GUIHandle, 3)
		GUI:WndRegistScript(_GUIHandle, RDWnd2DEditCL_str_change, "SmeltWnd._OnEditStrChange")
		-- GUI:EditSetTextM(_GUIHandle,"1")
		
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"max",1851000037,427,265)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,79, 39)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbDown, "SmeltWnd._InputMaxNum")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gold_need",248,306,104,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"消耗金币：")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"gold_back",1850300005,351,309)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,37, 25)
		GUI:ImageSetColor(_GUIHandle, 4290950816)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	-- _GUIHandle = GUI:ImageCreate(_Parent,"editBack2",0,395,302)
	-- if _GUIHandle ~= 0 then
		
		-- GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetSizeM(_GUIHandle,111, 37)
		-- GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
	-- end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gold",400,306,99,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	_GUIHandle = GUI:CheckBoxCreate(_Parent,"yb",1850000272,"",160,336)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1200, "SmeltWnd._CheckChange")
		GUI:WndSetVisible(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,37, 42)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"ybsm",203,352,290,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_GOLD#每次消耗#COLORCOLOR_GREENG#99#COLORCOLOR_GOLD#元宝,失败后返还材料")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"lianhua",1850000307,510,330)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "SmeltWnd._YunHunSmelt")
		GUI:WndSetTextM(_GUIHandle,"炼  化")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
	end
	SmeltWnd:UIInit(_Parent)
end

--UI Logic Code Start


--蕴魂石初始化	
local YunHun = 
{

--生命蕴魂石
	["低级生命蕴魂石"] = 
	{
		{3,3,3,},
		{5,8,15,},
		1000,
	},
	["中级生命蕴魂石"] = 
	{
		{3,3,3,},
		{8,15,30,},
		1500,
	},
	["高级生命蕴魂石"] = 
	{
		{3,3,3,},
		{15,30,40,},
		3000,
	},
	["极品生命蕴魂石"] = 
	{
		{3,3,3,},
		{30,40,50,},
		7500,
	},
	
--物防蕴魂石
	["低级物防蕴魂石"] = 
	{
		{7,6,7,6,7,6},
		{1,5,3,8,10,15},
		1000,
	},
	["中级物防蕴魂石"] = 
	{
		{7,6,7,6,7,6},
		{3,8,10,15,20,30},
		1500,
	},
	["高级物防蕴魂石"] = 
	{
		{7,6,7,6,7,6},
		{10,15,20,30,25,40},
		3000,
	},
	["极品物防蕴魂石"] = 
	{
		{7,6,7,6,7,6},
		{20,30,25,40,40,60},
		7500,
	},

--魔防蕴魂石	
	["低级魔防蕴魂石"] = 
	{
		{9,8,9,8,9,8,},
		{1,5,3,8,10,15},
		1000,
	},
	["中级魔防蕴魂石"] = 
	{
		{9,8,9,8,9,8,},
		{3,8,10,15,20,30},
		1500,
	},
	["高级魔防蕴魂石"] = 
	{
		{9,8,9,8,9,8,},
		{10,15,20,30,25,40},
		3000,
	},
	["极品魔防蕴魂石"] = 
	{
		{9,8,9,8,9,8,},
		{20,30,25,40,40,60},
		7500,
	},
	
--物攻蕴魂石
	["低级物攻蕴魂石"] = 
	{
		{11,10,11,10,11,10,},
		{1,5,3,8,10,15},
		1000,
		
	},
	["中级物攻蕴魂石"] = 
	{
		{11,10,11,10,11,10,},
		{3,8,10,15,20,30},
		1500,
	},
	["高级物攻蕴魂石"] = 
	{
		{11,10,11,10,11,10,},
		{10,15,20,30,25,40},
		3000,
	},
	["极品物攻蕴魂石"] = 
	{
		{11,10,11,10,11,10,},
		{20,30,25,40,40,60},
		7500,
	},
	
--魔攻蕴魂石	
	["低级魔攻蕴魂石"] = 
	{
		{13,12,13,12,13,12,},
		{1,5,3,8,10,15},
		1000,
	},
	["中级魔攻蕴魂石"] = 
	{
		{13,12,13,12,13,12,},
		{3,8,10,15,20,30},
		1500,
	},
	["高级魔攻蕴魂石"] = 
	{
		{13,12,13,12,13,12,},
		{10,15,20,30,25,40},
		3000,
	},
	["极品魔攻蕴魂石"] = 
	{
		{13,12,13,12,13,12,},
		{20,30,25,40,40,60},
		7500,
	},
	
--道攻蕴魂石	
	["低级道攻蕴魂石"] = 
	{
		{15,14,15,14,15,14,},
		{1,5,3,8,10,15},
		1000,
	},
	["中级道攻蕴魂石"] = 
	{
		{15,14,15,14,15,14,},
		{3,8,10,15,20,30},
		1500,
	},
	["高级道攻蕴魂石"] = 
	{
		{15,14,15,14,15,14,},
		{10,15,20,30,25,40},
		3000,
	},
	["极品道攻蕴魂石"] = 
	{
		{15,14,15,14,15,14,},
		{20,30,25,40,40,60},
		7500,
	},
}

local EDIT_COLOR =
{
	["低级"] = {0xFFffffff, 0xFF00ff00, 0xFF1E90FF},
	["中级"] = {0xFF00ff00, 0xFF1E90FF, 0xFFA020F0},
	["高级"] = {0xFF1E90FF, 0xFFA020F0, 0xFFFFA500},
}


local miaos = 
{
	[3] = "生命上限: ",
	[7] = "物理防御: ",
	[9] = "魔法防御: ",
	[11] = "物理攻击:",
	[13] = "魔法攻击:",
	[15] = "道术攻击:", 
}

local EXPEND =
{
	["中级"] = {10000, "80%"},
	["高级"] = {20000, "60%"},
}


SmeltWnd.WndHandle = 0
SmeltWnd.job = 0
SmeltWnd.DelayTaskId = nil
function SmeltWnd:UIInit(_GUIHandle)	
	SmeltWnd.WndHandle = _GUIHandle
	SmeltWnd.check = 0
	self:CreateYunHunList()
	local _handle = GetWindow(self._listView, "ItemBgBtn1")
	if _handle ~= 0 then 
		SmeltWnd._ClickItem(_handle)
	end
	
end	


--创建菜单列表
local ITEM = 
{
	"中级物攻蕴魂石", "高级物攻蕴魂石", 
	"中级魔攻蕴魂石", "高级魔攻蕴魂石", 
	"中级道攻蕴魂石", "高级道攻蕴魂石", 
	"中级物防蕴魂石", "高级物防蕴魂石", 
	"中级魔防蕴魂石", "高级魔防蕴魂石", 
	"中级生命蕴魂石", "高级生命蕴魂石", 
}
function SmeltWnd:CreateYunHunList()
    --装备列表
	self._listView = GUI:WndCreateWnd(self.WndHandle, "ListWnd", 0, -350, -30)
	if self._listView ~= 0 then
		GUI:WndSetSizeM(self._listView, 340, 420)
		GUI:WndSetEnableM(self._listView, false)
		GUI:WndSetFlagsM(self._listView, flg_wndBase_useBkBuffer)
	end

	for i = 1, #ITEM do
		local _Parent = GUI:ButtonCreate(self._listView, "ItemBgBtn"..i, 1851000009, 10, 110 * (i -1))
		if _Parent ~= 0 then
			GUI:WndSetParam(_Parent, i)
			GUI:WndRegistScript(_Parent,RDWndBaseCL_mouse_lbUp, "SmeltWnd._ClickItem")
		end
		
		local _GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrlBG",1850500016,20,20)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetSizeM(_GUIHandle,66, 66)
		end	

		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCtrl",0,22,22,64,64)
		if _GUIHandle ~= 0 then
			RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle, "",  ITEM[i]);
			local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_GUIHandle)
			if 0 ~= _ItemDataHandle then
				LuaArg = true
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
				LuaArg = 0xFFFF
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
			end
		end 
		
		local color_str = ""
		local _tempHandle = CL:GetItemTemplateHandleByKeyName(ITEM[i])
		if _tempHandle ~= 0 then 
			if not CL:GetItemTemplatePropByHandle(_tempHandle, ITEM_PROP_COLOR) then
				dbg("ITEM_PROP_COLOR 错误false")
				return
			else
				local color =  LuaRet
				if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿
					color_str = "#COLORCOLOR_PURPLE#";
				elseif color == "GOLD" or color == "YELLOW" then
					color_str = "#COLORCOLOR_GOLD#";
				elseif color == "RED" then
					color_str = "#COLORCOLOR_RED#";
				elseif color == "SKYBLUE" then
					color_str = "#COLORCOLOR_SKYBLUE#";
				elseif color == "GREENG" then
					color_str = "#COLORCOLOR_GREENG#";
				elseif color == "WHITE" then
					color_str = "#COLORCOLOR_WHITE#";
				end
			end	
		end
		_GUIHandle = GUI:RichEditCreate(_Parent, "ItemName", 116, 25, 200, 20)
		if _GUIHandle ~= 0 then
			GUI:RichEditClear(_GUIHandle)
			GUI:RichEditAppendString(_GUIHandle, color_str..ITEM[i])
		end
	end
end


--物品框点击回调事件
function SmeltWnd._ClickItem(_Handle)
	if SmeltWnd._saveHanle ~= 0 and SmeltWnd._saveHanle ~= nil then 
		GUI:ButtonSetIsActivePageBtn(SmeltWnd._saveHanle, false);
	end
	GUI:ButtonSetIsActivePageBtn(_Handle, true);
	SmeltWnd._saveHanle = _Handle;
    local _handle = GetWindow(_Handle, "ItemCtrl")
    if _handle ~= 0 then 
		local item_id = RDItemCtrlGetGUIDataPropByType(_handle, nil, ITEMGUIDATA_ITEMID)
		if item_id ~= 0 and item_id ~= nil then
			SmeltWnd:FillDesItemCtr(item_id)
		end
    end
end	

function SmeltWnd._OnEditStrChange(_handle)
	local num = GUI:EditGetInt(_handle);
	local max_num = math.floor(SmeltWnd.count/5);
	-- dbg("-------******************************"..max_num)
	if num > max_num then 
		GUI:EditSetInt(_handle, max_num);
	end
	
end

function SmeltWnd._InputMaxNum(_handle)
	
	local max_num = math.floor(SmeltWnd.count/5)

	local _han = GetWindow(SmeltWnd.WndHandle, "input");
	if _han ~= 0 then 
		GUI:EditSetInt(_han, max_num);
	end
end

function SmeltWnd._CheckChange(_Handle)
window_msg_up("***********************_CheckChange")
	local Is_true = GUI:CheckBoxGetCheck(_Handle)
	if Is_true then 
		SmeltWnd.check = 1;
	else
		SmeltWnd.check = 0;
	end
end

function SmeltWnd:FillDesItemCtr(item_id)
	local _handle = GetWindow(SmeltWnd.WndHandle, "desItem");
	if _handle ~= 0 then 
		RDItemCtrlSetGUIDataPropByItemID(_handle, nil, item_id, 1, false);
		self:OnEquipIn(_handle, item_id);
	end
end


function SmeltWnd:OnEquipIn(_handle,item_id)
	--显示蕴魂石Name
	local name = ""
	if CL:GetItemTemplatePropByID(item_id, ITEM_PROP_NAME) then
		name = tostring(LuaRet);
	end
	local color_str = ""
	if not CL:GetItemTemplatePropByID(item_id, ITEM_PROP_COLOR) then
		dbg("ITEM_PROP_COLOR 错误false")
		return
	else
		local color =  LuaRet
		if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿
			color_str = "#COLORCOLOR_PURPLE#";
		elseif color == "GOLD" or color == "YELLOW" then
			color_str = "#COLORCOLOR_GOLD#";
		elseif color == "RED" then
			color_str = "#COLORCOLOR_RED#";
		elseif color == "SKYBLUE" then
			color_str = "#COLORCOLOR_SKYBLUE#";
		elseif color == "GREENG" then
			color_str = "#COLORCOLOR_GREENG#";
		elseif color == "WHITE" then
			color_str = "#COLORCOLOR_WHITE#";
		end
	end
	
	local handle = GetWindow(SmeltWnd.WndHandle, "desName")
	if handle ~= 0 then
		GUI:RichEditClear(handle)
		GUI:RichEditAppendString(handle, color_str..name.."#COLOREND#")
	end	
	local keyname = ""
	if CL:GetItemTemplatePropByID(item_id, ITEM_PROP_KEYNAME) then
		keyname = tostring(LuaRet);
	end
	SmeltWnd.desItem_keyname = keyname;
	local TABLE = YunHun[keyname] 
	if not TABLE then 
		return ""
	end
	
	local index_str = keyname:sub(1,6);
	local att_prop_name = TABLE[1][1]
	if att_prop_name ~= 0 then 
		
		EditSetTextColor(SmeltWnd.WndHandle, "edit_gong1", EDIT_COLOR[index_str][1]);
		EditSetTextColor(SmeltWnd.WndHandle, "edit_gong2", EDIT_COLOR[index_str][2]);
		EditSetTextColor(SmeltWnd.WndHandle, "edit_gong3", EDIT_COLOR[index_str][3]);
		
		if att_prop_name == 3 then 
			
			local str = " "..YunHun[keyname][2][1];
			EditSetText(SmeltWnd.WndHandle, "edit_gong1", miaos[att_prop_name]..str);
			
			str = " "..YunHun[keyname][2][2];
			EditSetText(SmeltWnd.WndHandle, "edit_gong2", miaos[att_prop_name]..str);
			
			str = " "..YunHun[keyname][2][3];
			EditSetText(SmeltWnd.WndHandle, "edit_gong3", miaos[att_prop_name]..str);
		else
			local str = " "..YunHun[keyname][2][1].." - "..YunHun[keyname][2][2];
			EditSetText(SmeltWnd.WndHandle, "edit_gong1", miaos[att_prop_name]..str);
			
			str = " "..YunHun[keyname][2][3].." - "..YunHun[keyname][2][4];
			EditSetText(SmeltWnd.WndHandle, "edit_gong2", miaos[att_prop_name]..str);
			
			str = " "..YunHun[keyname][2][5].." - "..YunHun[keyname][2][6];
			EditSetText(SmeltWnd.WndHandle, "edit_gong3", miaos[att_prop_name]..str);
		end
	end
	local _GUIHandle = GetWindow(self.WndHandle, "success");
	if _GUIHandle ~= 0 then 
		GUI:RichEditClear(_GUIHandle)
		GUI:RichEditAppendString(_GUIHandle, "成功率：".."#COLORCOLOR_GREENG#"..EXPEND[index_str][2].."#COLOREND#")
	end
	EditSetText(self.WndHandle, "gold", ""..EXPEND[index_str][1])
	local strHead = ""
	if index_str == "中级"  then 
		strHead = "低级"
	elseif index_str == "高级"  then
		strHead = "中级"
	end
	local strEnd = keyname:sub(7,-1);
	local ori_keyname = strHead..strEnd;
	dbg(ori_keyname);
	UI:Lua_SubmitForm("炼制表单", "ItemCount", ori_keyname)
end



function SmeltWnd:FillOriginItemCtr(DATA)
	local count = DATA[1];
	self.count = count;
	if count >= 5 then 
		EditSetText(self.WndHandle, "input", "1")
	else
		EditSetText(self.WndHandle, "input", "0")
	end
	
	local keyname = DATA[2];
	-- dbg(keyname);
	if count <= 0 then 
		SmeltWnd:ClearOriginItemCtr()
		return 
	end
	RDItemCtrlSetGUIDataPropByKeyName(self.WndHandle, "item2",  keyname, count, false);
	local _handle = GetWindow(self.WndHandle, "item2")
    if _handle ~= 0 then 
		local item_id = RDItemCtrlGetGUIDataPropByType(_handle, nil, ITEMGUIDATA_ITEMID)
		if item_id == 0 or item_id == nil then
			return
		end
		--显示蕴魂石Name
		local name = ""
		if CL:GetItemTemplatePropByID(item_id, ITEM_PROP_NAME) then
			name = tostring(LuaRet);
		end
		local color_str = ""
		if not CL:GetItemTemplatePropByID(item_id, ITEM_PROP_COLOR) then
			dbg("ITEM_PROP_COLOR 错误false")
			return
		else
			local color =  LuaRet
			if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿
				color_str = "#COLORCOLOR_PURPLE#";
			elseif color == "GOLD" or color == "YELLOW" then
				color_str = "#COLORCOLOR_GOLD#";
			elseif color == "RED" then
				color_str = "#COLORCOLOR_RED#";
			elseif color == "SKYBLUE" then
				color_str = "#COLORCOLOR_SKYBLUE#";
			elseif color == "GREENG" then
				color_str = "#COLORCOLOR_GREENG#";
			elseif color == "WHITE" then
				color_str = "#COLORCOLOR_WHITE#";
			end
		end
		
		local handle = GetWindow(SmeltWnd.WndHandle, "name2")
		if handle ~= 0 then
			GUI:RichEditClear(handle)
			GUI:RichEditAppendString(handle, color_str..name.."#COLOREND#")
		end	
		local keyname = ""
		if CL:GetItemTemplatePropByID(item_id, ITEM_PROP_KEYNAME) then
			keyname = tostring(LuaRet);
		end
		local TABLE = YunHun[keyname] 
		if not TABLE then 
			return ""
		end
		
		local index_str = keyname:sub(1,6);
		local att_prop_name = TABLE[1][1]
		if att_prop_name ~= 0 then 
			
			EditSetTextColor(SmeltWnd.WndHandle, "gong_s1", EDIT_COLOR[index_str][1]);
			EditSetTextColor(SmeltWnd.WndHandle, "gong_s2", EDIT_COLOR[index_str][2]);
			EditSetTextColor(SmeltWnd.WndHandle, "gong_s3", EDIT_COLOR[index_str][3]);
			
			if att_prop_name == 3 then 
				
				local str = " "..YunHun[keyname][2][1];
				EditSetText(SmeltWnd.WndHandle, "gong_s1", miaos[att_prop_name]..str);
				
				str = " "..YunHun[keyname][2][2];
				EditSetText(SmeltWnd.WndHandle, "gong_s2", miaos[att_prop_name]..str);
				
				str = " "..YunHun[keyname][2][3];
				EditSetText(SmeltWnd.WndHandle, "gong_s3", miaos[att_prop_name]..str);
			else
				local str = " "..YunHun[keyname][2][1].." - "..YunHun[keyname][2][2];
				EditSetText(SmeltWnd.WndHandle, "gong_s1", miaos[att_prop_name]..str);
				
				str = " "..YunHun[keyname][2][3].." - "..YunHun[keyname][2][4];
				EditSetText(SmeltWnd.WndHandle, "gong_s2", miaos[att_prop_name]..str);
				
				str = " "..YunHun[keyname][2][5].." - "..YunHun[keyname][2][6];
				EditSetText(SmeltWnd.WndHandle, "gong_s3", miaos[att_prop_name]..str);
			end
		end
    end
	
end

function SmeltWnd:ClearOriginItemCtr()
	local _handle = GetWindow(self.WndHandle, "item2")	
	if _handle ~= 0 then
		GUI:ItemCtrlClearItemData(_handle)	
	end
	_handle = GetWindow(self.WndHandle, "name2")
	if _handle ~= 0 then 
		GUI:RichEditClear(_handle)
	end
	for i = 1 , 3 do 
		EditSetText(self.WndHandle,"gong_s"..i,"")
	end
end








function SmeltWnd._YunHunSmelt(_handle)
	dbg("dasdadad")
	if SmeltWnd.count < 5 then 
		-- local script = "SmeltWnd.unseal()"
		MessageBox( 0, "		所拥有的蕴魂石不足#COLORCOLOR_GREENG#五个#COLOREND#,无法炼化成1个"..SmeltWnd.desItem_keyname)
	end
	local _handle = GetWindow(SmeltWnd.WndHandle, "input");
	if _handle ~= 0 then 
		local num = GUI:EditGetInt(_handle);
		if num == 0 then 
			MessageBox( 0, "		所拥有的蕴魂石不足#COLORCOLOR_GREENG#五个#COLOREND#,无法炼化成1个"..SmeltWnd.desItem_keyname);
		end
	end
	
	-- handle = GetWindow(nil,"ForgeWnd4,SmeltWnd,item2")	
	-- local item_guid2 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
	-- if tonumber(item_guid2) == 0 or item_guid2 == nil then
		-- msg("请放入蕴魂石")
		-- return
	-- end
	-- if UI:Lua_GUID2Str(item_guid1) then 
		-- item_guid1 = LuaRet
	-- end
	-- if UI:Lua_GUID2Str(item_guid2) then 
		-- item_guid2 = LuaRet
	-- end
	-- UI:Lua_SubmitForm("注灵表单", "YunHun_item", ""..item_guid1.."#"..item_guid2)
end



function SmeltWnd:RefillItemCtr2(item_guid)
	-- dbg("RefillItemCtr2----------------------------------------------")
	local _handle = GetWindow(self.WndHandle, "item2")	
	if _handle ~= 0 then
		GUI:ItemCtrlClearItemData(_handle)	
		if UI:Lua_Str2GUID(item_guid) then 
			item_guid = LuaRet
		end
		RDItemCtrlSetGUIDataPropByGUID(_handle, "",  item_guid);
	end
end

-- function SmeltWnd:window_msg_up(handle, str, x, y, h, times, color)
	-- local fh = GUI:WndGetParentM(handle)
	-- GUI:WndGetPosM(handle)
	-- local posX = LuaRet[1];
	-- local posY = LuaRet[2];
	-- GUI:WndGetPosM(SmeltWnd.WndHandle)
	-- posX = posX + tonumber( x )
	-- posY = posY + tonumber( y )
	-- local endY = posY - tonumber( h ) 
	-- local _GUIHandle = GUI:EditCreate(fh, "prompt", posX, posY, 230, 22)
	-- if _GUIHandle ~= 0 then 	
		
		-- GUI:WndSetEnableM(_GUIHandle, false);
		-- EditSetText(_GUIHandle, nil, str);
		-- GUIEditSetFontCenter(_GUIHandle)
		-- GUI:WndMoveToParentTop(_GUIHandle)
		-- CLAddDelayTask("GUIWndClose(".._GUIHandle..")",times*500, 1)
		-- GUI:WndTween(_GUIHandle, "<Tween><Frame time=\'" .. times .. "\' y = \'" .. endY .."\' /></Tween>","")
		-- if not color then 
			-- color = 0xFFff0000;
		-- end
		-- GUI:EditSetTextColor(_GUIHandle, color)
		-- if not times then 
			-- times = 500;
		-- end 
		-- GUI:WndTween(_GUIHandle, "<Tween><Frame time='" .. times .. "' y = '" .. endY .."' /></Tween>","");
	-- end	
-- end	 

function SmeltWnd.zhulsm()
	local _GUIHandle = GUI:WndFindWindow(SmeltWnd.WndHandle, "QianghSMWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(SmeltWnd.WndHandle, "QianghSMWnd.lua")
    end

	local txt = "1.双击使用魂石精华可以获得魂力\r\n\r\n"
		txt = txt.."2.将魂力注入到装备中，可以提高装备的战斗属性\r\n\r\n"
		txt = txt.."3.魂石精华可以通过活动、怪物掉落、商城购买获得"

    local _QianghSMWnd = GUI:WndFindWindow(SmeltWnd.WndHandle, "QianghSMWnd")
    if _QianghSMWnd ~= 0 then
		local Edithandle = GUI:WndFindWindow(_QianghSMWnd, "Edit0")
    	if Edithandle ~= 0 then
        	GUI:EditSetTextM(Edithandle,txt)
    	end    
    end
end

SmeltWnd:main()