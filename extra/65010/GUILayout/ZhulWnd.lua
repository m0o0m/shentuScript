ZhulWnd = {} 
function ZhulWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"ZhulWnd",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent, "fireMagic", 3020201000, 37, 52)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_image",1806500008,175,113)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,105, 94)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,197,132,60,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_magic",0,197,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"nengliangback_image",1802400027,91,216)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,267, 24)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"nengliang",1802400028,103,221)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,243, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"zhullv",211,215,70,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"gong_image1",1802400023,52,262)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,146, 81)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"gong_image2",1802400023,254,262)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,146, 81)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_28",1800000366,204,272)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,43, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm2",57,264,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm1",57,287,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sm3",57,309,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz2",123,268,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz1",123,290,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"sz3",123,312,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsm2",256,264,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsm1",256,286,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsm3",256,308,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsz2",323,268,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255361)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsz1",323,289,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255361)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"hsz3",323,313,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255361)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"goumails",342,375,100,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli_have",125,370,72,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"拥有魂力：")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"lingli_back",1806700023,197,371)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetColor(_GUIHandle, 4290950816)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli1",220,371,74,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli_need",125,402,72,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"消耗魂力：")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"lingli_back2",1806700023,197,404)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetColor(_GUIHandle, 4290950816)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli2",220,404,74,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"zhuling",1806700045,174,433)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ZhulWnd.zhul")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,126, 45)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"zhulsm",1806700019,47,452)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,75, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    

	_GUIHandle = GUI:EditCreate(_Parent, "msg", 95, 350, 220, 25)
	if _GUIHandle ~= 0 then 	
		GUI:EditSetTextColor(_GUIHandle, 4294901760)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end		

    ZhulWnd.UIInit(_Parent)
end

--UI Logic Code Start
-----------------------------------------------------------------table-----------------------------------------------------------------------------
----武器1，护腕3，戒指9，项链8，攻击(根据职业三选一)
local shux1 = {	
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}}, 	
} 
----衣服4，腰带7，鞋子6，头盔2，攻击,物防，魔防
local shux2 = {
	{{{11,10},{13,12},{15,14}},{7,6},{9,8}},
	{{{2,1},{2,2},{2,2}},{{3,1},{5,4},{4,4}},{{4,1},{7,6},{6,6}},{{4,2},{10,9},{8,8}},{{5,2},{12,11},{10,10}},{{6,3},{16,12},{13,12}},{{7,4},{19,14},{16,15}},
	{{9,6},{23,17},{19,18}},{{11,7},{27,20},{21,20}},{{13,10},{31,24},{25,23}},{{15,12},{38,28},{29,27}},{{44,32},{18,15},{34,30}}},	
}
----护盾 15    物防，魔防
local shux3 = {
	{{7,6},{9,8}},
	{{{2,2},{2,2}},{{3,3},{3,3}},{{4,4},{5,5}},{{5,5},{7,7}},{{7,7},{9,8}},{{9,9},{11,10}},{{11,11},{12,11}},{{14,14},{16,13}},{{17,17},{19,17}},
	{{21,20},{21,21}},{{27,22},{24,23}},{{34,24},{27,26}}},	
}
----宝石11， 魂珠13     攻击
local shux4 = {	
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}}, 	
}
----勋章10     攻击
local shux5 = {   
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,4},{8,5},{10,6},{12,8},{14,9},{16,11},{19,13},{23,15},{27,18},{33,23}},
}

----每级注灵升级所需要的灵力值
local req_ll = {8,26,68,131,235,377,566,821,1149,1586,2157,2873}

ZhulWnd.WndHandle = 0
ZhulWnd.job = 0
ZhulWnd.DelayTaskId = nil
function ZhulWnd.UIInit(_GUIHandle)	
	ZhulWnd.WndHandle = _GUIHandle

	local _handle = GetWindow(_GUIHandle,"shuom")
	if _handle ~= 0 then
		GUI:RichEditAppendString(_handle,"#SELECT#蕴魂说明#SELECTEND#")
	end	
	
	_handle = GUI:WndFindChildM(_GUIHandle, "item_image")
	if _handle ~= 0 then
		GUI:WndSetCanRevMsg(_handle, false)
	end
	local handle = GetWindow(_GUIHandle,"zhulsm")
	if handle ~= 0 then
		GUI:WndSetHintWidth(handle, 300)
		local txt = "蕴魂说明：                                        "
		txt = txt.."1.双击使用魂石精华可以获得魂力                    "
		txt = txt.."2.将魂力注入到装备中，可以提高装备的战斗属性      "
		txt = txt.."3.魂石精华可以通过活动、怪物掉落、商城购买获得"
		GUI:WndSetHint(handle, txt)
	end

	_handle = GetWindow(_GUIHandle,"goumails")
	if _handle ~= 0 then
		GUI:RichEditAppendString(_handle,"#SELECT#购买蕴魂石精华＞#SELECTEND#")
		GUI:WndRegistScript(_handle, RDWndBaseCL_mouse_lbUp, "ZhulWnd.buy_ls")
	end

	handle = GUI:WndFindChildM(_GUIHandle, "item")
	if handle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
	end	
    UI:Lua_SubmitForm("注灵表单", "get_Zhuling", "")
end	

function ZhulWnd.get_Zhuling(lingli)
    EditSetTextM(ZhulWnd.WndHandle,"lingli1",""..lingli)
end

function ZhulWnd.updata(item,lingli_have)
	if UI:Lua_Str2GUID(item) then
		item = LuaRet
	end	
	for i = 1 , 3 do 
		EditSetText(ZhulWnd.WndHandle,"sm"..i,"")
		EditSetText(ZhulWnd.WndHandle,"sz"..i,"")
		EditSetText(ZhulWnd.WndHandle,"hsm"..i,"")
		EditSetText(ZhulWnd.WndHandle,"hsz"..i,"")
	end	
	local handle = GetWindow(nil,"ForgeWnd,ZhulWnd,item")
	GUI:ItemCtrlClearItemData(handle)	
	GUI:ItemCtrlSetEffectImageID(handle, 0, 1.0)
	--RDItemCtrlSetGUIDataPropByGUID(handle, nil, item)
	ForgeWnd.RDItemCtrlSetGUIDataPropByGUIDEx(handle, nil, item)
	--根据强化等级设置显示特效
	local Entity = CL:GetItemEntityHandleByGUID(item)
	local q_level = 0
	if UI:Lua_GetItemEntityPropByHandle(Entity,ITEM_PROP_EQUIP_REFINELEVEL) then
		q_level = tonumber(LuaRet)
		if q_level > 0 then
			local _AnimateID = nil
			if q_level <= 5 then
				_AnimateID = 1096000100;
			elseif q_level <= 10 then
				_AnimateID = 1096000200;
			else
				_AnimateID = 1096000300;
			end
			if _AnimateID ~= nil then
				GUI:ItemCtrlSetEffectImageID(handle, _AnimateID, 1.5)
			end
		end
	end	
	ZhulWnd.OnEquipIn(handle,lingli_have)
end

function ZhulWnd.OnEquipIn(_handle,lingli_have)	
	local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
	local Temp = CL:GetItemTemplateHandleByGUID(item_guid)
	local Entity = CL:GetItemEntityHandleByGUID(item_guid)
	local item_lv = 0
	if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_LEVEL) then
		item_lv = tonumber(LuaRet)	
	end
	local subtype = 0
	if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_SUBTYPE) then
		subtype = tonumber(LuaRet)	
	end

	local zhul_lv = CL:GetItemEntityCustomVarInt(Entity, "zhul_level")	
	local next_zhul_lv = zhul_lv + 1
	local zhul_num = CL:GetItemEntityCustomVarInt(Entity, "zhul_num")
	local _nengliang = GetWindow(nil,"ForgeWnd,ZhulWnd,nengliang")
	if _nengliang ~= 0 then
		local value = 0
		local a = zhul_lv
		local b = zhul_num
		value = a/b
		if value > 0 then
			GUI:WndSetVisible(_nengliang,true)
			GUI:ImageSetDrawRect(_nengliang,0,value,0,1)
			EditSetText(ZhulWnd.WndHandle,"zhullv",""..a.."/"..b)
		else
			GUI:WndSetVisible(_nengliang,false)
			EditSetText(ZhulWnd.WndHandle,"zhullv",""..a.."/"..b)
		end

	end	
	
	if zhul_lv < 12 then 
		EditSetText(ZhulWnd.WndHandle,"lingli1",""..lingli_have)	
		if lingli_have < req_ll[next_zhul_lv] then
			local handle = GetWindow(ZhulWnd.WndHandle,"lingli1")
			GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
		else
			local handle = GetWindow(ZhulWnd.WndHandle,"lingli1")
			GUI:EditSetTextColor(handle, MakeARGB(255,194, 182, 160))
		end	
		EditSetText(ZhulWnd.WndHandle,"lingli2",""..req_ll[next_zhul_lv])
	else
		EditSetText(ZhulWnd.WndHandle,"lingli1",""..lingli_have)	
		EditSetText(ZhulWnd.WndHandle,"lingli2","0")
		return ""
	end

	local k = 10
	local miaos = {{"物理攻击:","魔法攻击:","道术攻击:"},"物防:","魔防:"}
	
	----武器1，护腕3，戒指9，项链8 攻击(根据职业三选一)
	if subtype == 1 or subtype == 3 or subtype == 8 or subtype == 9 then
		if item_lv >= 100 then
			for i = 1, 3 do	
				--取数据
				local old_prop_min = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_min = old_prop_min + shux1[2][next_zhul_lv][1]
				k = k + 1	
				local old_prop_max = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_max = old_prop_max + shux1[2][next_zhul_lv][2]
				k = k + 1
				--给控件设置数据
				EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[1][i])
				EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[1][i])					
				EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
				EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)		
			end
		else
			if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
				if LuaRet ~= nil then ZhulWnd.job = tonumber(LuaRet) end	
			end 
			if ZhulWnd.job == 0 then return end	
			local old_prop_min = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			local new_prop_min = old_prop_min + shux1[2][next_zhul_lv][1]
			k = k + 1	
			local old_prop_max = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			local new_prop_max = old_prop_max + shux1[2][next_zhul_lv][2]
			EditSetText(ZhulWnd.WndHandle,"sm1",miaos[1][ZhulWnd.job])
			EditSetText(ZhulWnd.WndHandle,"hsm1",miaos[1][ZhulWnd.job])					
			EditSetText(ZhulWnd.WndHandle,"sz1",""..old_prop_min.." - "..old_prop_max)
			EditSetText(ZhulWnd.WndHandle,"hsz1",""..new_prop_min.." - "..new_prop_max)
		end
	----勋章 10 ，宝石 11 ，魂珠 13   --- 攻击
	elseif subtype == 10 or subtype == 11 or subtype == 13 then
			for i = 1, 3 do	
				--取数据
				local old_prop_min = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_min = old_prop_min + shux1[2][next_zhul_lv][1]
				k = k + 1	
				local old_prop_max = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_max = old_prop_max + shux1[2][next_zhul_lv][2]
				k = k + 1
				--给控件设置数据
				EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[1][i])
				EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[1][i])					
				EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
				EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)		
			end			
	----衣服4，腰带7，鞋子6，头盔2，---攻击, 物防, 魔防
	elseif subtype == 2 or subtype == 4 or subtype == 6 or subtype == 7 then
		if item_lv >= 100 then		
			if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then ZhulWnd.job = LuaRet end 
		else
			if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
				if LuaRet ~= nil then ZhulWnd.job = tonumber(LuaRet) end	
			end 
		end				
		if ZhulWnd.job == 0 then return end	
			
		for i = 1 , 3 do 
			if i == 1 then
				local old_prop_min = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_min = old_prop_min + shux2[2][next_zhul_lv][i][1]					
				k = k + 1	
				local old_prop_max = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_max = old_prop_max + shux2[2][next_zhul_lv][i][2]
				if item_lv >= 100 then 
					k = k + 5 
				else
					k = k +1
				end
				EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[i][ZhulWnd.job])
				EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[i][ZhulWnd.job])					
				EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
				EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)
			else 
				old_prop_min = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				new_prop_min = old_prop_min + shux2[2][next_zhul_lv][i][1]			
				k = k + 1	
				old_prop_max = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				new_prop_max = old_prop_max + shux2[2][next_zhul_lv][i][2]		
				k = k + 1
				EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[i])
				EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[i])					
				EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
				EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)	
			end 
		end
		
	----护盾 15    物防，魔防	
	elseif subtype == 15 then
		for i = 2, 3 do	
			local l = i -1
			local old_prop_min = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			local new_prop_min = old_prop_min + shux3[2][next_zhul_lv][l][1]			
			k = k + 1	
			local old_prop_max = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			local new_prop_max = old_prop_max + shux3[2][next_zhul_lv][l][2]
			k = k + 1	
			EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[i])
			EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[i])				
			EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
			EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)
		end

	
	end
			
end

function ZhulWnd.buy_ls(_handle)
	local _handle1 = GetWindow(nil,"ForgeWnd, Buy_ls")
	if _handle1 == 0 then
		UI:Lua_OpenWindow(ForgeWnd.WndHandle, "Buy_ls.lua")
	else
		GUI:WndClose(_handle1)
	end
end

function ZhulWnd.zhul(_handle)
	local handle = GetWindow(nil,"ForgeWnd,ZhulWnd,item")	
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid) == 0 or item_guid == nil then
		msg_up("请放入需要强化的装备")
		return
	end
	UI:Lua_GUID2Str(item_guid)
	UI:Lua_SubmitForm("注灵表单", "zhul_item", ""..LuaRet.."#"..ZhulWnd.job)
end

function msg_up(str)
	local _handle = GUI:WndFindChildM(ZhulWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if ZhulWnd.DelayTaskId ~= nil then
		CL:DelDelayTask(ZhulWnd.DelayTaskId)
		ZhulWnd.DelayTaskId = nil
	end
	ZhulWnd.DelayTaskId = CL:AddDelayTask("ZhulWnd.ClearMsg()", 3000, 1)	
end	

function ZhulWnd.ClearMsg()
	local _handle = GUI:WndFindChildM(ZhulWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end


ZhulWnd.main()