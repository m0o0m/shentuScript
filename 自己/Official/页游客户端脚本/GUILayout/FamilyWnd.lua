FamilyWnd ={}
local ui = "<form> <dialog OnInit='FamilyWnd.UIInit' id='FamilyWnd' image='0' x='198' y='15' w='720' h='530' esc_close='true' drag='true' center='true' revmsg='true'>"
	.."	<image id='backGround' image='1807000009' x='0' y='0' w='720' h='530' check_point='0' fitsize='true' enable='false' revmsg='false'/>"
	.."	<image id='backGround1' image='1806500001' x='33' y='57' w='656' h='427' check_point='0' fitsize='true'/>"
	.."	<button id='closeBtn' image='1805900080' x='669' y='8' w='34' h='38' OnLButtonClick='luaWndClose' revmsg='true'/>"
	.."	<image id='wndTitleImg' image='1807700000' x='326' y='8' w='65' h='26' check_point='0' enable='false'/>"
	.."	<button id='pageBtn1' image='1806500017' x='53' y='63' w='77' h='30' page_btn='true' OnLButtonClick='FamilyWnd.pageBtn_LC' revmsg='true' text='行会成员' text_color='#E6D284'/>"
	.."	<button id='pageBtn2' image='1806500017' x='130' y='63' w='77' h='30' OnLButtonClick='FamilyWnd.pageBtn_LC' revmsg='true' text='行会信息' text_color='#E6D284'/>"
	.."	<button id='pageBtn3' image='1806500017' x='207' y='63' w='77' h='30' OnLButtonClick='FamilyWnd.pageBtn_LC' revmsg='true' text='行会仓库' text_color='#E6D284'/>"
	.."	<button id='pageBtn4' image='1806500017' x='282' y='63' w='77' h='30' OnLButtonClick='FamilyWnd.pageBtn_LC' revmsg='true' text='行会日志' text_color='#E6D284'/>"
	.."	<button id='pageBtn5' image='1806500017' x='359' y='63' w='77' h='30' OnLButtonClick='FamilyWnd.pageBtn_LC' revmsg='true' text='行会红包' text_color='#E6D284'/>"
	.."	<button id='pageBtn6' image='1806500017' x='436' y='63' w='77' h='30' OnLButtonClick='FamilyWnd.pageBtn_LC' revmsg='true' text='行会列表' text_color='#E6D284'/>"
	.."	<button id='pageBtn7' image='1806500017' x='513' y='63' w='77' h='30' OnLButtonClick='FamilyWnd.pageBtn_LC' revmsg='true' text='申请列表' text_color='#E6D284' visible='false'/>"
	.." </dialog>"
	.."</form>"

	
function FamilyWnd.main()
	GenFormByString(ui)
end


FamilyWnd.localString = {}
local l = FamilyWnd.localString
l.pageBtn_ = {"行会成员", "行会信息", "行会仓库", "行会日志", "行会红包", "行会列表", "申请列表"}
l.familyInfo = "行会信息"
l.id = "ID:"



--UI Logic Code Start
function FamilyWnd.UIInit(_Handle)
	--GUI:ImageSetFitSize(_Handle, "true")
	--GUIWndSetSizeM(_Handle, 684, 511)	
	FamilyWnd._wnd = _Handle
	CLFamilyInfoRequest(4,"FamilyWnd_行会封号","FamilyWnd.getFamilyTitle")	--请求封号
	CLFamilyInfoRequest(128,"FamilyWnd_行会基本信息", "FamilyWnd.getFamilyBasicInfo")
end

function FamilyWnd.pageBtn_LC(_Handle)
	if _Handle == FamilyWnd._selPageBtn then  return end
	GUIButtonSetIsActivePageBtn(_Handle, true)
	if FamilyWnd._selPageBtn then 
		GUIButtonSetIsActivePageBtn(FamilyWnd._selPageBtn, false)
	end
	FamilyWnd._selPageBtn = _Handle
	
	local close_tab = {"FamilyWnd_Member","FamilyWnd_Info","FamilyWnd_Warehouse", "FamilyWnd_Log", "FamilyWnd_RedPacket", "FamilyWnd_FamilyList", "FamilyWnd_ApplyList"}
	for i=1,7 do 
		local hand = GetWindow(FamilyWnd._wnd, "pageBtn"..i)
		if _Handle ~= hand then 
			local handle = GetWindow(FamilyWnd._wnd, close_tab[i])
			if handle ~= 0 then 
				GUIWndClose(handle)
			end
		end
	end
	
	local id = GUIWndGetIDM(_Handle)
	if id == "pageBtn1" then
		as3.tolua(UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_Member.lua"))
	elseif id == "pageBtn2" then
		as3.tolua(UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_Info.lua"))
	elseif id == "pageBtn3" then
		CLFamilyOpenWarehouse()
	elseif id == "pageBtn4" then
		as3.tolua(UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_Log.lua"))
	elseif id == "pageBtn5" then
		as3.tolua(UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_RedPacket.lua"))
	elseif id == "pageBtn6" then
		as3.tolua(UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_FamilyList.lua"))
	elseif id == "pageBtn7" then
		as3.tolua(UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_ApplyList.lua"))
	end
end
 
 function FamilyWnd.getFamilyBasicInfo()
	dbg("getFamilyBasicInfo")
	FamilyWnd.createTime = tonumber(as3.tolua(LuaParam[1]))
	FamilyWnd.guid = as3.tolua(LuaParam[2])
	FamilyWnd.memberNum = tonumber(as3.tolua(LuaParam[3]))
	FamilyWnd.name = as3.tolua(LuaParam[4])
	FamilyWnd.selfTitleID = tonumber(as3.tolua(LuaParam[5]))
	local _GUIHandle = 0
	_GUIHandle = GUIWndFindChildM(FamilyWnd._wnd, "pageBtn1")
	if _GUIHandle ~= 0 then
		FamilyWnd.pageBtn_LC(_GUIHandle)
	end

	FamilyWnd.updateFamilyWarehouse()
end

function FamilyWnd.updateFamilyWarehouse()
	if FamilyWnd.selfTitleID == 1 or FamilyWnd.selfTitleID == 2 then
		local handle = GetWindow(nil,"FamilyWnd,pageBtn7")
		if handle ~= 0 then 
			GUIWndSetVisible(handle, true)
		end
	end
end

function FamilyWnd.getFamilyTitle()
	FamilyWnd.familyTitle_  = {}
	FamilyWnd.familyTitle_ = getTable(as3.tolua(LuaParam[1]))
	for i = 1, #FamilyWnd.familyTitle_ do
		FamilyWnd.familyTitle_[i] = getTable(FamilyWnd.familyTitle_[i])
	end
	if FamilyWnd_Member then
	if FamilyWnd_Member.needfamilyTitle == 1 then
		local index, tempT_ = 0, {}
		for i = 1, 10 do
			if FamilyWnd_Member.showOnlineOnly then
				tempT_ = FamilyWnd_Member.memberOnline_
			else
				tempT_ = FamilyWnd_Member.member_
			end
			index = (FamilyWnd_Member.nowPage-1)*10 + i
			if tempT_[index] then
				for j, k in pairs(FamilyWnd.familyTitle_) do
					if k[1] == tempT_[index][6] then
						GUIEditSetTextM(FamilyWnd_Member._position_[i], k[2])
						break
					end
				end
			end
		end
	end
	end
end

 function FamilyWnd.wndClose()
	local wnd = GUIWndFindWindow(0, "FamilyWnd") 
	if wnd == 0 then
		FamilyWnd = nil
	end
 end

function FamilyWnd.leaveWndClose()
	local _Parent = LuaGlobal["AttachPartent"]
	local wnd = GUIWndFindWindow(_Parent, "FamilyWnd") 
	if wnd ~= 0 then
		GUIWndClose(wnd)
	end
 end


RegisterUIEvent(LUA_EVENT_ONLEAVEFAMILY, "FamilyWnd_close",FamilyWnd.leaveWndClose)

FamilyWnd.main()