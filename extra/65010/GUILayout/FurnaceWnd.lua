FurnaceWnd = {}
function FurnaceWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"FurnaceWnd",1803900035,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,434, 503)
        GUI:WndSetIsESCClose(_Parent, true)
        GUI:WndSetMoveWithLBM(_Parent)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ShenLuWnd_title",1801500089,176,7)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,78, 25)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"close",1800000068,374,11)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.closeWnd")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button1",1803900026,-5,66)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.XueFu")
        GUI:WndSetTextM(_GUIHandle,"护符")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 76)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:ImageCreate(_GUIHandle,"showNum1",1804600026,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"button2",1803900026,-5,129)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.HuDun")
        GUI:WndSetTextM(_GUIHandle,"盾牌")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 76)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:ImageCreate(_GUIHandle,"showNum2",1804600026,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"button3",1803900026,-5,192)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.BaoShi")
        GUI:WndSetTextM(_GUIHandle,"宝珠")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 76)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:ImageCreate(_GUIHandle,"showNum3",1804600026,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"button4",1803900026,-5,257)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.HunZhu")
        GUI:WndSetTextM(_GUIHandle,"灵珠")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 76)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:ImageCreate(_GUIHandle,"showNum4",1804600026,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
    _GUIHandle = GUI:ImageCreate(_Parent,"image_back",1803900004,29,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,378, 279)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_image",1803900001,175,97)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,89, 89)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,192,115,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"gong_image1",1802400023,44,208)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,146, 81)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"gong_image2",1802400023,248,208)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,146, 81)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_28",1800000366,198,217)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,43, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm2",59,208,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm1",59,233,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm3",59,256,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz2",117,212,80,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz1",117,237,80,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz3",117,260,80,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsm2",261,208,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsm1",261,233,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsm3",261,256,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsz2",320,212,80,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255361)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsz1",320,237,80,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255361)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsz3",320,260,80,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255361)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"back1",1803900020,173,343)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,96, 26)
        GUI:ImageSetColor(_GUIHandle, 4290950816)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"back2",1803900020,173,389)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,96, 26)
        GUI:ImageSetColor(_GUIHandle, 4290950816)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm4",91,345,72,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz4",185,344,74,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm5",90,391,72,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz5",185,389,74,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"shengji",1803900005,156,424)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.get")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,122, 43)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"sj_back",1803900030,189,430)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,54, 28)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"smBtn",1800000297,39,451)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"sm6",294,383,100,30)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.buy")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"sm7",68,458,70,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"sm8",303,449,100,30)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FurnaceWnd.elseitem")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
	_GUIHandle = GUI:EditCreate(_Parent, "msg", 111, 320, 220, 25)
	if _GUIHandle ~= 0 then 	
		GUI:EditSetTextColor(_GUIHandle, 4294901760)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end		

    
    
    FurnaceWnd.UIInit(_Parent)
end

--UI Logic Code Start
hint = {
	"护符说明：                               1.护符可以极大的增强生命上限             2.护符印记可以通过参加活动、击杀BOSS、回收装备等方式获得                         3.护符不能被强化和注灵",
	"盾牌说明：                               1.盾牌可以极大增加防御能力               2.盾牌残片可以通过参加活动、击杀BOSS等方式获得                                   3.升级后盾牌的强化和注灵等级不变",
	"宝珠说明：                               1.宝珠可以极大的增加攻击能力             2.宝珠碎片可以通过参加活动、击杀BOSS、探宝积分兑换、商城购买等方式获得           3.升级后宝珠的强化和注灵等级不变",
	"灵珠说明：                               1.灵珠可以极大的增加暴击率               2.狂暴之灵可以通过参加活动、击杀BOSS、探宝积分兑换、商城购买等方式获得           3.升级后灵珠的强化和注灵等级不变",
}
str = {
	{"生命上限：","","","消耗护符印记：","拥有护符印记：","","#SELECT#护符说明#SELECTEND#","#SELECT#其他护符＞#SELECTEND#"},
	{"物理防御：","魔法防御：","","消耗盾牌残片：","拥有盾牌残片：","","#SELECT#盾牌说明#SELECTEND#","#SELECT#其他盾牌＞#SELECTEND#"},
	{"物理攻击：","魔法攻击：","道术攻击：","消耗宝珠碎片：","拥有宝珠碎片：","#SELECT#购买宝珠碎片＞#SELECTEND#","#SELECT#宝珠说明#SELECTEND#","#SELECT#其他宝珠＞#SELECTEND#"},
	{"暴击伤害：","暴击率：","","消耗狂暴之灵：","拥有狂暴之灵：","#SELECT#购买狂暴之灵＞#SELECTEND#","#SELECT#灵珠说明#SELECTEND#","#SELECT#其他灵珠＞#SELECTEND#"},
}

--魂珠暴击伤害
local hunzhu_burstharm = {180,360,653,947,1376,1806,2357,2909,3576,4243,5001,5760,6632,7504,8528,9552,11970,14849,18290,22408,28047,0}

FurnaceWnd.WndHandle = 0
FurnaceWnd.job = 0
FurnaceWnd._control = {}
FurnaceWnd.need = 0
FurnaceWnd.ElseItem = 0
FurnaceWnd.tabs = 0
function FurnaceWnd.UIInit(_GUIHandle)
	FurnaceWnd.WndHandle = _GUIHandle
	GUI:WndSetSizeM(FurnaceWnd.WndHandle, 434, 503)
	GUI:WndSetMagicUI(FurnaceWnd.WndHandle, 1)
	CenterWnd(FurnaceWnd.WndHandle)

	local _handle = 0;
	for i = 1, 4 do
		_handle = GUI:WndFindChildM(FurnaceWnd.WndHandle, "button"..i)
		FurnaceWnd._control["button"..i] = _handle
		GUI:WndSetTextArrangeType(_handle,12,15,4,1);
		GUI:ButtonSetStateTextColor(_handle,0,MakeARGB(255, 100, 96, 80))
		GUI:ButtonSetStateTextColor(_handle,2,MakeARGB(255, 201, 184, 116))
	end	
	
	for i = 6 , 8 do  
		_handle = GetWindow(FurnaceWnd.WndHandle,"sm"..i)
		if _handle ~= 0 then FurnaceWnd._control["sm"..i] = _handle end
	end
	_handle = GetWindow(nil,"FurnaceWnd,item")	
	if _handle ~= 0 then FurnaceWnd._control["item"] = _handle end
	_handle = GUI:WndFindChildM(FurnaceWnd.WndHandle, "smBtn")
	if _handle ~= 0 then
        FurnaceWnd._control["smBtn"] = _handle
		GUI:WndSetHintWidth(_handle, 250)
	end
    
    if FurnaceWnd.tabs == 0 then 
        FurnaceWnd.XueFu(FurnaceWnd._control["button1"])
    elseif FurnaceWnd.tabs == 2 then
        FurnaceWnd.HuDun(FurnaceWnd._control["button2"])        
    elseif FurnaceWnd.tabs == 3 then 
        FurnaceWnd.BaoShi(FurnaceWnd._control["button3"])
    elseif FurnaceWnd.tabs == 4 then 
        FurnaceWnd.HunZhu(FurnaceWnd._control["button4"])
    end
    FurnaceWnd.tabs = 0
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
		WndMoveToParentTop(FurnaceWnd.WndHandle,"button1")
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
		GUI:WndSetHint(FurnaceWnd._control["smBtn"], hint[1])
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
		WndMoveToParentTop(FurnaceWnd.WndHandle,"button2")
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
		GUI:WndSetHint(FurnaceWnd._control["smBtn"], hint[2])
	end
	
end
function FurnaceWnd.BaoShi(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button3",true)
		WndMoveToParentTop(FurnaceWnd.WndHandle,"button3")
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
		GUI:WndSetHint(FurnaceWnd._control["smBtn"], hint[3])
	end	
end
function FurnaceWnd.HunZhu(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(FurnaceWnd.WndHandle,"button4",true)
		WndMoveToParentTop(FurnaceWnd.WndHandle,"button4")
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
		GUI:WndSetHint(FurnaceWnd._control["smBtn"], hint[4])
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
			GUI:RichEditClear(FurnaceWnd._control["sm"..i])
		end
	end
	for i = 1 , 8 do 
		if i < 4 then
			EditSetText(FurnaceWnd.WndHandle,"sm"..i,str[index][i])
			EditSetText(FurnaceWnd.WndHandle,"hsm"..i,str[index][i])
		elseif i >= 4 and i <= 5 then 
			EditSetText(FurnaceWnd.WndHandle,"sm"..i,str[index][i])
		elseif i > 5 then
			GUI:RichEditAppendString(FurnaceWnd._control["sm"..i],str[index][i])
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
				EditSetText(FurnaceWnd.WndHandle,"sz2",""..string.format("%.2f",baojilu_now).."%")
			end
		end
		EditSetText(FurnaceWnd.WndHandle,"hsz1",""..hunzhu_burstharm[hunzhu_nextlv])
		local temp2 = CL:GetItemTemplateHandleByKeyName(hunzhu_tab[hunzhu_nextlv])
		if CL:GetItemTemplatePropByHandle(temp2,102) then
			local baojilu_next = LuaRet
			baojilu_next = baojilu_next/100
			EditSetText(FurnaceWnd.WndHandle,"hsz2",""..string.format("%.2f",baojilu_next).."%")
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

FurnaceWnd.main()