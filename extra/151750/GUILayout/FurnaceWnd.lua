FurnaceWnd = {}
function FurnaceWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()


    _Parent = GUI:WndCreateWnd(_Parent,"FurnaceWnd",1803900035,0,0)
    if _Parent ~= 0 then
    end

    --大背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
    end

    --第二层背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",0,17,63)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 34, _DeviceSizeY - 80)
    end

    --第三层背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,32,82)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,1074, 430)
    end

    --上面背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,56,106)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,1030, 130)
    end

    --左边九宫格
    _GUIHandle = GUI:ImageCreate(_Parent,"gong_image1",0,56,242)
    if _GUIHandle ~= 0 then
    	GUI:WndSetSizeM(_GUIHandle,512, 252)
    end

    --右边九宫格
    _GUIHandle = GUI:ImageCreate(_Parent,"gong_image2",0,574,242)
    if _GUIHandle ~= 0 then
    	GUI:WndSetSizeM(_GUIHandle,512, 252)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
    	--GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.closeWnd")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"LeftBtn",1850600088,102,140)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RightBtn",1850600092,1010,140)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShengjiTitleBg",1850700005,782,252)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:EditCreate(_Parent,"ShengjiTitle",846,262,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle, "升级效果")
        GUI:EditSetFontCenter(_GUIHandle)	
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"LineImg",1850700003,660,414)
	if _GUIHandle ~= 0 then
	end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button1",1850700010,477,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.XueFu")
    end
    
	_GUIHandle = GUI:ImageCreate(_GUIHandle,"showNum1",1804600026,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"button2",1850700014,625,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.HuDun")
    end
    
	_GUIHandle = GUI:ImageCreate(_GUIHandle,"showNum2",1804600026,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"button3",1850700018,773,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.BaoShi")
    end
    
	_GUIHandle = GUI:ImageCreate(_GUIHandle,"showNum3",1804600026,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"button4",1850700022,921,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.HunZhu")
    end
    
	_GUIHandle = GUI:ImageCreate(_GUIHandle,"showNum4",1804600026,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_image",1850700002,228,270)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,272,288,55,55)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm2",650,314,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,180,255,160))
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm1",650,339,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,180,255,160))
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm3",650,362,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,180,255,160))
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz2",750,314,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz1",750,339,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz3",750,362,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsm2",870,314,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,180,255,160))
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsm1",870,339,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,180,255,160))
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsm3",870,362,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,180,255,160))
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsz2",970,314,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsz1",970,339,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsz3",970,362,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm4",91,400,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,180,255,160))
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz4",230,400,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm5",340,400,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,180,255,160))
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz5",480,400,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,180,255,160))
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"shengji",1850000307,918,436)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.get")
        GUI:WndSetTextM(_GUIHandle,"升级")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"smBtn",1850000307,80,436)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"规则")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.Furnacesm")
    end
    
    --_GUIHandle = GUI:RichEditCreate(_Parent,"sm6",294,383,100,30)
    --if _GUIHandle ~= 0 then
    --    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.buy")
    --    GUI:RichEditSetEditEnable(_GUIHandle, false)
    --    GUI:RichEditAppendString(_GUIHandle, "")
    --end
    
    --_GUIHandle = GUI:RichEditCreate(_Parent,"sm7",68,458,70,30)
    --if _GUIHandle ~= 0 then
        --GUI:RichEditSetEditEnable(_GUIHandle, false)
        --GUI:RichEditAppendString(_GUIHandle, "")
    --end
    
   -- _GUIHandle = GUI:RichEditCreate(_Parent,"sm8",303,449,100,30)
    --if _GUIHandle ~= 0 then
    --    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.elseitem")
    --    GUI:RichEditSetEditEnable(_GUIHandle, false)
    --    GUI:RichEditAppendString(_GUIHandle, "")
    --end
    
	_GUIHandle = GUI:EditCreate(_Parent, "msg", 111, 320, 0, 0)
	if _GUIHandle ~= 0 then 	
		GUI:EditSetFontCenter(_GUIHandle)
	end		

    
    FurnaceWnd.UIInit(_Parent)
end

--UI Logic Code Start
hint = {
	"护符说明：                               1.护符可以极大的增强生命上限             2.护符印记可以通过参加活动、击杀BOSS、回收装备等方式获得                         3.魔符碎片可以通过前往苍月岛击杀BOSS、收集苍月令牌兑换等方式获得                 4.护符不能被强化和注灵",
	"盾牌说明：                               1.盾牌可以极大增加防御能力               2.盾牌残片可以通过参加活动、击杀BOSS、回收装备等方式获得                         3.魔盾碎片可以通过前往苍月岛击杀BOSS、收集苍月令牌兑换等方式获得                 4.升级后盾牌的强化和注灵等级不变",
	"宝珠说明：                               1.宝珠可以极大的增加攻击能力             2.宝珠碎片可以通过参加活动、探宝积分兑换等方式获得                               3.升级后宝珠的强化和注灵等级不变",
	"灵珠说明：                               1.灵珠可以极大的增加暴击率               2.狂暴之灵可以通过参加活动、击杀BOSS、商城购买等方式获得                         3.升级后灵珠的强化和注灵等级不变",
}
str = {
	{"生命上限：","","","消耗护符印记：","拥有护符印记：","","#SELECT#护符说明#SELECTEND#","#SELECT#其他护符＞#SELECTEND#"},
	{"物理防御：","魔法防御：","","消耗盾牌残片：","拥有盾牌残片：","","#SELECT#盾牌说明#SELECTEND#","#SELECT#其他盾牌＞#SELECTEND#"},
	{"物理攻击：","魔法攻击：","道术攻击：","消耗宝珠碎片：","拥有宝珠碎片：","#SELECT#购买宝珠碎片＞#SELECTEND#","#SELECT#宝珠说明#SELECTEND#","#SELECT#其他宝珠＞#SELECTEND#"},
	{"暴击伤害：","暴击率：","","消耗狂暴之灵：","拥有狂暴之灵：","#SELECT#购买狂暴之灵＞#SELECTEND#","#SELECT#灵珠说明#SELECTEND#","#SELECT#其他灵珠＞#SELECTEND#"},
}

smStr = {
	"1.护符可以极大的增强生命上限 \r\n\r\n2.护符印记可以通过参加活动、击杀BOSS、回收装备等方式获得\r\n\r\n3.魔符碎片可以通过前往苍月岛击杀BOSS、收集苍月令牌兑换等\r\n方式获得\r\n\r\n4.护符不能被强化和注灵\r\n\r\n",
	"1.盾牌可以极大增加防御能力\r\n\r\n2.盾牌残片可以通过参加活动、击杀BOSS、回收装备等方式获得\r\n\r\n3.魔盾碎片可以通过前往苍月岛击杀BOSS、收集苍月令牌兑换等\r\n方式获得\r\n\r\n4.升级后盾牌的强化和注灵等级不变",
	"1.宝珠可以极大的增加攻击能力\r\n\r\n2.宝珠碎片可以通过参加活动、探宝积分兑换等方式获得\r\n\r\n3.升级后宝珠的强化和注灵等级不变",
	"1.灵珠可以极大的增加暴击率\r\n\r\n2.狂暴之灵可以通过参加活动、击杀BOSS、商城购买等方式获得\r\n\r\n3.升级后灵珠的强化和注灵等级不变",
}

--魂珠暴击伤害
local hunzhu_burstharm = {180,360,653,947,1376,1806,2357,2909,3576,4243,5001,5760,6632,7504,8528,9552,11970,14849,18290,22408,28047,0}

FurnaceWnd.WndHandle = 0
FurnaceWnd.job = 0
FurnaceWnd._control = {}
FurnaceWnd.need = 0
FurnaceWnd.ElseItem = 0
function FurnaceWnd.UIInit(_GUIHandle)
	FurnaceWnd.WndHandle = _GUIHandle

	local BgImg = GUI:WndFindWindow(FurnaceWnd.WndHandle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end
    --第二层背景
    local BgImg0 = GUI:WndFindWindow(FurnaceWnd.WndHandle, "BgImage0")
    if BgImg0 then
        GUI:ImageSetAroundImage(BgImg0, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
    end 

     --第三层背景
    local BgImg1 = GUI:WndFindWindow(FurnaceWnd.WndHandle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850700035, 1850700037, 1850700041, 1850700043, 1850700039, 1850700036, 1850700042, 1850700038, 1850700040)
    end 

    local BgImg2 = GUI:WndFindWindow(FurnaceWnd.WndHandle, "BgImage2")
    if BgImg2 then
        GUI:ImageSetAroundImage(BgImg2, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
    end 

    local BgImg2 = GUI:WndFindWindow(FurnaceWnd.WndHandle, "gong_image1")
    if BgImg2 then
        GUI:ImageSetAroundImage(BgImg2, 1850600034, 1850600036, 1850600040, 1850600042, 1850600038, 1850600035, 1850600041, 1850600037, 1850600039)
    end 

    local BgImg2 = GUI:WndFindWindow(FurnaceWnd.WndHandle, "gong_image2")
    if BgImg2 then
        GUI:ImageSetAroundImage(BgImg2, 1850600034, 1850600036, 1850600040, 1850600042, 1850600038, 1850600035, 1850600041, 1850600037, 1850600039)
    end 
    
	local _handle = 0;
	for i = 1, 4 do
		_handle = GUI:WndFindChildM(FurnaceWnd.WndHandle, "button"..i)
		FurnaceWnd._control["button"..i] = _handle
		--GUI:WndSetTextArrangeType(_handle,2,0,4,1);
		--GUI:ButtonSetStateTextColor(_handle,0,MakeARGB(255, 100, 96, 80))
		--GUI:ButtonSetStateTextColor(_handle,2,MakeARGB(255, 201, 184, 116))
        --GUI:ButtonSetStateTextColor(_handle,3,MakeARGB(255, 201, 184, 116))
	end	

    for i = 1 , 4 do 
        ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button"..i,false)
    end
    ButtonSetIsActivePageBtn(_GUIHandle,"button1",true)
	
	for i = 6 , 8 do  
		_handle = GetWindow(FurnaceWnd.WndHandle,"sm"..i)
		if _handle ~= 0 then FurnaceWnd._control["sm"..i] = _handle end
	end
	_handle = GetWindow(FurnaceWnd.WndHandle,"FurnaceWnd,item",nil)
	if _handle ~= 0 then
	 	FurnaceWnd._control["item"] = _handle 
	end
	FurnaceWnd.XueFu(FurnaceWnd._control["button1"])
	UI:Lua_SubmitForm("神炉表单", "xuefu", "")
	_handle = GUI:WndFindChildM(FurnaceWnd.WndHandle, "smBtn")
	if _handle ~= 0 then
		GUI:WndSetHint(_handle, hint[1])
	end
end	

function FurnaceWnd.ShowLevelupPrompt(tb)
	local handle = 0
	for i = 1, 4 do
		handle = GetWindow(nil, "FurnaceWnd,button"..i..",showNum"..i)
		if handle ~= 0 then
			if tb[i] ~= 0 then
				GUI:WndSetVisible(handle, true)
			else
				GUI:WndSetVisible(handle, false)
			end
		end
	end
end

function FurnaceWnd.XueFu(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button1",true)
		for i = 1 , 4 do 
			local _handle1 = GetWindow(nil,"FurnaceWnd, ElseItem"..i)
			if _handle1 ~= 0 then
			GUI:WndClose(_handle1)
			FurnaceWnd.ElseItem = 0
			end
			if i >= 3 then 
				local _handle2 = GetWindow(nil,"FurnaceWnd, ShenLu_buy"..i)
				if _handle2 ~= 0 then
				GUI:WndClose(_handle2)
				end
			end
		end
		UI:Lua_SubmitForm("神炉表单", "xuefu", "")
		--GUI:WndSetHint(FurnaceWnd._control["sm7"], hint[1])
	end	
	--GUI:WndSetVisible(FurnaceWnd.WndHandle,"sm6",false)
	
end
	
function FurnaceWnd.HuDun(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button2",true)
		for i = 1 , 4 do 
			local _handle1 = GetWindow(nil,"FurnaceWnd, ElseItem"..i)
			if _handle1 ~= 0 then
			GUI:WndClose(_handle1)
			FurnaceWnd.ElseItem = 0
			end
			if i >= 3 then 
				local _handle2 = GetWindow(nil,"FurnaceWnd, ShenLu_buy"..i)
				if _handle2 ~= 0 then
				GUI:WndClose(_handle2)
				end
			end
		end
		UI:Lua_SubmitForm("神炉表单", "hudun", "")
		--GUI:WndSetHint(FurnaceWnd._control["sm7"], hint[2])
	end
	
end
function FurnaceWnd.BaoShi(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button3",true)
		for i = 1 , 4 do 
			local _handle1 = GetWindow(nil,"FurnaceWnd, ElseItem"..i)
			if _handle1 ~= 0 then
			GUI:WndClose(_handle1)
			FurnaceWnd.ElseItem = 0
			end
			if i >= 3 then 
				local _handle2 = GetWindow(nil,"FurnaceWnd, ShenLu_buy"..i)
				if _handle2 ~= 0 then
				GUI:WndClose(_handle2)
				end
			end
		end
		UI:Lua_SubmitForm("神炉表单", "baoshi", "")
		--GUI:WndSetHint(FurnaceWnd._control["sm7"], hint[3])
	end	
end
function FurnaceWnd.HunZhu(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button4",true)
		for i = 1 , 4 do 
			local _handle1 = GetWindow(nil,"FurnaceWnd, ElseItem"..i)
			if _handle1 ~= 0 then
			GUI:WndClose(_handle1)
			FurnaceWnd.ElseItem = 0
			end
			if i >= 3 then 
				local _handle2 = GetWindow(nil,"FurnaceWnd, ShenLu_buy"..i)
				if _handle2 ~= 0 then
				GUI:WndClose(_handle2)
				end
			end
		end
		UI:Lua_SubmitForm("神炉表单", "hunzhu", "")
		--GUI:WndSetHint(FurnaceWnd._control["sm7"], hint[4])
	end
end

function FurnaceWnd.updata(data,tb)
	local index = tonumber(data[1])			--返回类型 血符 护盾 宝石 护珠
	for i = 1 , 8 do 
		if i < 4 then
			EditSetText(FurnaceWnd.WndHandle,"sm"..i,"")
			EditSetText(FurnaceWnd.WndHandle,"sz"..i,"")
			EditSetText(FurnaceWnd.WndHandle,"hsm"..i,"")
			EditSetText(FurnaceWnd.WndHandle,"hsz"..i,"")
		elseif i >= 4 and i <= 5 then 
			EditSetText(FurnaceWnd.WndHandle,"sm"..i,"")
		elseif i > 5 then
			if FurnaceWnd._control["sm"..i] ~= nil then 
				GUI:RichEditClear(FurnaceWnd._control["sm"..i])
			end
		end
	end
	for i = 1 , 8 do 
		if i < 4 then
			EditSetText(FurnaceWnd.WndHandle,"sm"..i,str[index][i])
			EditSetText(FurnaceWnd.WndHandle,"hsm"..i,str[index][i])
		elseif i >= 4 and i <= 5 then 
			EditSetText(FurnaceWnd.WndHandle,"sm"..i,str[index][i])
		elseif i > 5 then
			if FurnaceWnd._control["sm"..i] ~= nil then 
				GUI:RichEditAppendString(FurnaceWnd._control["sm"..i],str[index][i])
			end
		end
	end
	FurnaceWnd.need = tonumber(data[4])		--下一级需要的积分
	EditSetText(FurnaceWnd.WndHandle,"sz4",""..FurnaceWnd.need)
	local chip = tonumber(data[5])
	FurnaceWnd.chipupdata(chip)
	if index == 1 then
		local xuefu_lv = tonumber(data[2])	--当前等级
		local xuefu_tab = data[3]			--物品名称列表
		local xuefu_nextlv = xuefu_lv + 1
		if xuefu_lv >= #xuefu_tab then xuefu_nextlv = xuefu_lv end
		UI:Lua_Log("1111   FurnaceWnd._control item = ".. FurnaceWnd._control["item"].." xuefu_tab[xuefu_nextlv] = "..xuefu_tab[xuefu_nextlv].."xuefu_nextlv = "..xuefu_nextlv)
		FurnaceWnd.InitItemInfoByKeyName(FurnaceWnd._control["item"], xuefu_tab[xuefu_nextlv])
		if xuefu_lv <= 0 then
			EditSetText(FurnaceWnd.WndHandle,"sz1","0")
		else
			local temp1 = CL:GetItemTemplateHandleByKeyName(xuefu_tab[xuefu_lv]) 
			if CL:GetItemTemplatePropByHandle(temp1,74) then
				local sm_now = LuaRet
				EditSetText(FurnaceWnd.WndHandle,"sz1",""..sm_now)
			end
		end
		local temp2 = CL:GetItemTemplateHandleByKeyName(xuefu_tab[xuefu_nextlv])
		if CL:GetItemTemplatePropByHandle(temp2,74) then
			local sm_next = LuaRet
			EditSetText(FurnaceWnd.WndHandle,"hsz1",""..sm_next)
		end
	elseif index == 2 then
		local tab1 = {{76,77},{78,79}}
		local mi = 0 
		local ma = 0
		local hudun_lv = tonumber(data[2])
		local hudun_tab = data[3]
		local hudun_nextlv = hudun_lv + 1
		if hudun_lv >= #hudun_tab then hudun_nextlv = hudun_lv end
		UI:Lua_Log("22222")
		FurnaceWnd.InitItemInfoByKeyName(FurnaceWnd._control["item"], hudun_tab[hudun_nextlv])
		if hudun_lv <= 0 then
			EditSetText(FurnaceWnd.WndHandle,"sz1","0")
			EditSetText(FurnaceWnd.WndHandle,"sz2","0")
		else
			local temp1 = CL:GetItemTemplateHandleByKeyName(hudun_tab[hudun_lv]) 
			for i = 1 , 2 do 
				if CL:GetItemTemplatePropByHandle(temp1,tab1[i][1]) then
					ma = LuaRet
				end
				if CL:GetItemTemplatePropByHandle(temp1,tab1[i][2]) then
					mi = LuaRet
				end
				EditSetText(FurnaceWnd.WndHandle,"sz"..i,mi.." - "..ma)
			 end	
		end
		local temp2 = CL:GetItemTemplateHandleByKeyName(hudun_tab[hudun_nextlv])
		for i = 1 , 2 do 
			if CL:GetItemTemplatePropByHandle(temp2,tab1[i][1]) then
				ma = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(temp2,tab1[i][2]) then
				mi = LuaRet
			end
			EditSetText(FurnaceWnd.WndHandle,"hsz"..i,mi.." - "..ma)
		end	
	elseif index == 3 then
		local tab1 = {{80,81},{82,83},{84,85}}
		local mi = 0 
		local ma = 0
		local baoshi_lv = tonumber(data[2])
		local baoshi_tab = data[3]
		local baoshi_nextlv = baoshi_lv + 1
		if baoshi_lv >= #baoshi_tab then baoshi_nextlv = baoshi_lv end
		UI:Lua_Log("3333")
		FurnaceWnd.InitItemInfoByKeyName(FurnaceWnd._control["item"], baoshi_tab[baoshi_nextlv])
		if baoshi_lv <= 0 then
			EditSetText(FurnaceWnd.WndHandle,"sz1","0")
			EditSetText(FurnaceWnd.WndHandle,"sz2","0")
			EditSetText(FurnaceWnd.WndHandle,"sz3","0")
		else
			local temp1 = CL:GetItemTemplateHandleByKeyName(baoshi_tab[baoshi_lv]) 
			for i = 1 , 3 do 
				if CL:GetItemTemplatePropByHandle(temp1,tab1[i][1]) then
					ma = LuaRet
				end
				if CL:GetItemTemplatePropByHandle(temp1,tab1[i][2]) then
					mi = LuaRet
				end
				EditSetText(FurnaceWnd.WndHandle,"sz"..i,mi.." - "..ma)
			 end	
		end
		local temp2 = CL:GetItemTemplateHandleByKeyName(baoshi_tab[baoshi_nextlv])
		for i = 1 , 3 do 
			if CL:GetItemTemplatePropByHandle(temp2,tab1[i][1]) then
				ma = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(temp2,tab1[i][2]) then
				mi = LuaRet
			end
			EditSetText(FurnaceWnd.WndHandle,"hsz"..i,mi.." - "..ma)
		end
	elseif index == 4 then
		local hunzhu_lv = tonumber(data[2])
		local hunzhu_tab = data[3]
		local hunzhu_nextlv = hunzhu_lv + 1
		if hunzhu_lv >= #hunzhu_tab then hunzhu_nextlv = hunzhu_lv end
		UI:Lua_Log("4444")
		FurnaceWnd.InitItemInfoByKeyName(FurnaceWnd._control["item"], hunzhu_tab[hunzhu_nextlv])
		if hunzhu_lv <= 0 then
			EditSetText(FurnaceWnd.WndHandle,"sz1","0")
			EditSetText(FurnaceWnd.WndHandle,"sz2","0")
		else
			EditSetText(FurnaceWnd.WndHandle,"sz1",""..hunzhu_burstharm[hunzhu_lv])
			local temp1 = CL:GetItemTemplateHandleByKeyName(hunzhu_tab[hunzhu_lv]) 
			if CL:GetItemTemplatePropByHandle(temp1,102) then
				local baojilu_now = LuaRet
				baojilu_now = baojilu_now/100
				EditSetText(FurnaceWnd.WndHandle,"sz2",""..baojilu_now.."%")
			end
		end
		EditSetText(FurnaceWnd.WndHandle,"hsz1",""..hunzhu_burstharm[hunzhu_nextlv])
		local temp2 = CL:GetItemTemplateHandleByKeyName(hunzhu_tab[hunzhu_nextlv])
		if CL:GetItemTemplatePropByHandle(temp2,102) then
			local baojilu_next = LuaRet
			baojilu_next = baojilu_next/100
			EditSetText(FurnaceWnd.WndHandle,"hsz2",""..baojilu_next.."%")
		end
	end
	FurnaceWnd.ShowLevelupPrompt(tb)
end


function FurnaceWnd.chipupdata(chip)
	if chip < FurnaceWnd.need then
		local handle = GetWindow(FurnaceWnd.WndHandle,"sz5")
		GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
	else
		local handle = GetWindow(FurnaceWnd.WndHandle,"sz5")
		GUI:EditSetTextColor(handle, MakeARGB(255,255, 255, 255))
	end	
	EditSetText(FurnaceWnd.WndHandle,"sz5","")
	EditSetText(FurnaceWnd.WndHandle,"sz5",""..chip)
end

function FurnaceWnd.buy(_handle)
	for i = 3 , 4 do 	
		local Is_true = ButtonGetIsActivePageBtn(FurnaceWnd._control["button"..i])
		if Is_true then
			local _handle2 = GetWindow(nil,"FurnaceWnd, ElseItem"..i)
			if _handle2 ~= 0 then
				GUI:WndClose(_handle2)
			end
			local _handle3 = GetWindow(nil,"FurnaceWnd, ShenLu_buy"..i)
			if _handle3 == 0 then
				UI:Lua_OpenWindow(FurnaceWnd.WndHandle, "ShenLu_buy"..i..".lua")
			else
				GUI:WndClose(_handle3)
			end
		end
	end
end


function FurnaceWnd.elseitem(_handle)
	for i = 1 , 4 do 	
		local Is_true = ButtonGetIsActivePageBtn(FurnaceWnd._control["button"..i])
		if Is_true then
			local _handle2 = GetWindow(nil,"FurnaceWnd, ShenLu_buy"..i)
			if _handle2 ~= 0 then
				GUI:WndClose(_handle2)
			end
			local _handle3 = GetWindow(nil,"FurnaceWnd, ElseItem"..i)
			if _handle3 == 0 then
				UI:Lua_OpenWindow(FurnaceWnd.WndHandle, "ElseItem"..i..".lua")
				FurnaceWnd.ElseItem = 1
			else
				GUI:WndClose(_handle3)
				FurnaceWnd.ElseItem = 0
			end
		end
	end
end

function FurnaceWnd.get(_handle)
	local get_index = 0
	for i = 1 , 4 do 	
		local Is_true = ButtonGetIsActivePageBtn(FurnaceWnd._control["button"..i])
		if Is_true then
			 get_index = i
		end
	end
	if get_index == 1 then 
		UI:Lua_SubmitForm("神炉表单", "get_xuefu", ""..FurnaceWnd.ElseItem)
	elseif get_index == 2 then
		UI:Lua_SubmitForm("神炉表单", "get_hudun", ""..FurnaceWnd.ElseItem)
	elseif get_index == 3 then
		UI:Lua_SubmitForm("神炉表单", "get_baoshi", ""..FurnaceWnd.ElseItem)
	elseif get_index == 4 then
		UI:Lua_SubmitForm("神炉表单", "get_hunzhu", ""..FurnaceWnd.ElseItem)
	end
	UI:Lua_SubmitForm("神炉表单", "ShowTolNum", "")
end	

function FurnaceWnd.closeWnd(_handle)	
	GUI:WndClose(FurnaceWnd.WndHandle)
end

function FurnaceWnd.InitItemInfoByKeyName(_WndHandle, KeyName)
	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
	UI:Lua_Log("执行到了InitItemInfoByKeyName  _ItemDataHandle = ".._ItemDataHandle)
	if 0 ~= _ItemDataHandle then
		local _ItemTemplateHandle = CL:GetItemTemplateHandleByKeyName(KeyName)
		if _ItemTemplateHandle ~= 0 then
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_TIPSICON) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
			end
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_ID) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
			end
		end
		LuaArg = true
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
		LuaArg = 0xFFFF
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
	end
end

function FurnaceWnd.msg_up(str)
	local _handle = GUI:WndFindChildM(FurnaceWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if FurnaceWnd.DelayTaskId ~= nil then
		CL:DelDelayTask(FurnaceWnd.DelayTaskId)
		FurnaceWnd.DelayTaskId = nil
	end
	FurnaceWnd.DelayTaskId = CL:AddDelayTask("FurnaceWnd.ClearMsg()", 3000, 1)
end

function FurnaceWnd.ClearMsg()
	local _handle = GUI:WndFindChildM(FurnaceWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end


function FurnaceWnd.Furnacesm()
	local _GUIHandle = GUI:WndFindWindow(FurnaceWnd.WndHandle, "QianghSMWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(FurnaceWnd.WndHandle, "QianghSMWnd.lua")
    end

    local Is_true = false
	local Page = 1
	for i = 1 , 4 do 
		_GUIHandle = GUI:WndFindWindow(FurnaceWnd.WndHandle, "button"..i)
		if _GUIHandle ~= nil then
			Is_true = ButtonGetIsActivePageBtn(_GUIHandle)
			if Is_true then 
				Page = i
			end
		end
	end

	local txt = smStr[Page]

    local _QianghSMWnd = GUI:WndFindWindow(FurnaceWnd.WndHandle, "QianghSMWnd")
    if _QianghSMWnd ~= 0 then
		local Edithandle = GUI:WndFindWindow(_QianghSMWnd, "Edit0")
    	if Edithandle ~= 0 then
        	GUI:EditSetTextM(Edithandle,txt)
    	end    
    end
end

FurnaceWnd.main()