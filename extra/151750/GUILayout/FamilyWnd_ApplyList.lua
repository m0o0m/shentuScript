FamilyWnd_ApplyList = {}
function FamilyWnd_ApplyList.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"FamilyWnd_ApplyList",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"Bg",1832800009,50,106)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,1012, 350)
	end
		
	_GUIHandle = GUI:EditCreate(_Parent,"Edit1",170,76,100,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle,  GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"姓名")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit2",400,76,100,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle,  GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"等级")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit3",600,76,100,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle,  GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"职业")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"Edit4",880,76,100,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle,  GUI:MakeARGB(255,255,215,0))
		GUI:EditSetTextM(_GUIHandle,"操作")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"PrevBtn",1850600088,480,450)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"NextBtn",1850600092,614,450)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"PageEdit",518,464,100,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"1")
		GUI:EditSetFontCenter(_GUIHandle)
	end

	FamilyWnd_ApplyList.UIInit(_Parent)
end

--UI Logic Code Start
FamilyWnd_ApplyList.applyList_ = {}

function FamilyWnd_ApplyList.UIInit(_Handle)
	FamilyWnd_ApplyList._wnd = _Handle
	local _ClipWndHandle = GUI:WndCreateWnd(_Handle,"FamilyApplyListClipWnd",0,60,100)
    if _ClipWndHandle then
        GUI:WndSetFlagsM(_ClipWndHandle, flg_wndBase_useBkBuffer)
        GUI:WndSetSizeM(_ClipWndHandle,1000, 350)
        FamilyWnd_ApplyList.ClipWndHandle = _ClipWndHandle
    end

	CL:GetApplyPlayerList(0, 50, "FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
end

function FamilyWnd_ApplyList.getApplyList()
	UI:Lua_Log("FamilyWnd_ApplyList.getApplyList 开始触发")
	--1.totalNum;2.first_index;3.num;     4-1 guid 4-2 playername 4-3 level 4-4 job
	FamilyWnd_ApplyList.totalNum = LuaParam[1]
	FamilyWnd_ApplyList.curList = LuaParam[4]
	local first_index = LuaParam[2]	--当前获取的第一个数据相对于全部数据的偏移  
	UI:Lua_Log("totalNum = "..FamilyWnd_ApplyList.totalNum.." curList = "..#FamilyWnd_ApplyList.curList.." LuaParam[2] = "..LuaParam[2].." LuaParam[3] = "..LuaParam[3])
	for i = 1, 50 do
		if i <= LuaParam[3] then
			FamilyWnd_ApplyList.applyList_[first_index + i] = FamilyWnd_ApplyList.curList[i]	--更新当前获取到的一页数据
		else
			FamilyWnd_ApplyList.applyList_[first_index + i] = nil	--如果本页没有填满的话，后面也不会再有了
		end
	end
	
	FamilyWnd_ApplyList.updataPage()
end

function FamilyWnd_ApplyList.updataPage()
	UI:Lua_Log("FamilyWnd_ApplyList.applyList_ 大小等于 "..#FamilyWnd_ApplyList.applyList_)
	local intervalY =  36
	for i = 1, 50 do
		local index = i
		if FamilyWnd_ApplyList.applyList_[index] then
			if FamilyWnd_ApplyList.ClipWndHandle ~= nil then
				_GUIHandle = GUI:ButtonCreate(FamilyWnd_ApplyList.ClipWndHandle,"familyApplyBtn"..i,1802100013,206,16 + intervalY * (i - 1))
	        	if _GUIHandle ~= 0 then
	            	GUI:WndSetSizeM(_GUIHandle,650, 31)
	        	end

		         _GUIHandle = GUI:EditCreate(FamilyWnd_ApplyList.ClipWndHandle,"familyLvlEdit"..i,216,18 + intervalY * (i - 1),100,24)
		        if _GUIHandle ~= 0 then
		        	GUI:EditSetTextM(_GUIHandle , tostring(FamilyWnd_ApplyList.applyList_[index][3]))
		            GUI:WndSetEnableM(_GUIHandle, false)
		            GUI:EditSetFontCenter(_GUIHandle)
		        end
		        
		        _GUIHandle = GUI:EditCreate(FamilyWnd_ApplyList.ClipWndHandle,"familyNameEdit"..i,344,18 + intervalY * (i - 1),106,24)
		        if _GUIHandle ~= 0 then
		            GUI:EditSetTextM(_GUIHandle , tostring(FamilyWnd_ApplyList.applyList_[index][2]))
		            GUI:WndSetEnableM(_GUIHandle, false)
		            GUI:EditSetFontCenter(_GUIHandle)
		        end
		        
		        _GUIHandle = GUI:EditCreate(FamilyWnd_ApplyList.ClipWndHandle,"familyJobEdit"..i,487,18 + intervalY * (i - 1),84,24)
		        if _GUIHandle ~= 0 then
		            GUI:EditSetTextM(_GUIHandle , tostring(RDJOBName[FamilyWnd_ApplyList.applyList_[index][4]]))
		            GUI:WndSetEnableM(_GUIHandle, false)
		            GUI:EditSetFontCenter(_GUIHandle)
		        end
		         
		        _GUIHandle = GUI:ButtonCreate(FamilyWnd_ApplyList.ClipWndHandle,"acceptBtn"..i,1800000285,620,20 + intervalY * (i - 1))
		        if _GUIHandle ~= 0 then
		            GUI:WndSetTextM(_GUIHandle, "接受")
		            GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
		            GUI:WndSetParam(_GUIHandle, i)
		            GUI:WndSetSizeM(_GUIHandle,67, 23)
		        end

		       	_GUIHandle = GUI:ButtonCreate(FamilyWnd_ApplyList.ClipWndHandle,"refuseBtn"..i,1800000285,760,20 + intervalY * (i - 1))
		        if _GUIHandle ~= 0 then
		            GUI:WndSetTextM(_GUIHandle, "拒绝")
		            GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
		            GUI:WndSetParam(_GUIHandle, i)
		            GUI:WndSetSizeM(_GUIHandle,67, 23)
		        end
	    	end
		end
	end
	--FamilyWnd_ApplyList.updatePgBtn()
end

function FamilyWnd_ApplyList.acceptBtn_LC(_Handle)
	local param = GUI:WndGetParam(_Handle)
    local guid = FamilyWnd_ApplyList.applyList_[param][1]
	CL:FamilyJoinDenyOrAccept(1, guid)
end

function FamilyWnd_ApplyList.refuseBtn_LC(_Handle)
	local param = GUI:WndGetParam(_Handle)
    local guid = FamilyWnd_ApplyList.applyList_[param][1]
	CL:FamilyJoinDenyOrAccept(0, guid)
end



FamilyWnd_ApplyList.main()




