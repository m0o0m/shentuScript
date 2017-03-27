FamilyWnd ={}
local ui = "<form> <dialog OnInit='FamilyWnd.UIInit' id='FamilyWnd' image='1802100021' x='0' y='0' w='684' h='511' OnClose='FamilyWnd.wndClose' esc_close='true' drag='true' center='true' revmsg='true'>"
	.."	<button id='closeBtn' image='1800000043' x='652' y='3' w='26' h='26' OnLButtonClick='luaWndClose' revmsg='true'/>"
	.."	<image id='wndTitleImg' image='1801500068' x='304' y='0' w='80' h='27' enable = 'false'/>"
	.."	<button id='pageBtn1' param='1' image='1800000368' x='27' y='46' w='72' h='27' page_btn='true' OnLButtonClick='FamilyWnd.turnPage' revmsg='true' text='行会成员' text_color='#E6D284'/>"
	.."	<button id='pageBtn2' param='2' image='1800000368' x='104' y='46' w='72' h='27' OnLButtonClick='FamilyWnd.turnPage' revmsg='true' text='行会信息' text_color='#E6D284'/>"
	.."	<button id='pageBtn3' param='3' image='1800000368' x='181' y='46' w='72' h='27' OnLButtonClick='FamilyWnd.turnPage' revmsg='true' text='行会仓库' text_color='#E6D284'/>"
	.."	<button id='pageBtn4' param='4' image='1800000368' x='258' y='46' w='72' h='27' OnLButtonClick='FamilyWnd.turnPage' revmsg='true' text='行会日志' text_color='#E6D284'/>"
	.."	<button id='pageBtn5' param='5' image='1800000368' x='335' y='46' w='72' h='27' OnLButtonClick='FamilyWnd.turnPage' revmsg='true' text='行会红包' text_color='#E6D284'/>"
	.."	<button id='pageBtn6' param='6' image='1800000368' x='412' y='46' w='72' h='27' OnLButtonClick='FamilyWnd.turnPage' revmsg='true' text='行会列表' text_color='#E6D284'/>"
	.."	<button id='pageBtn7' param='7' image='1800000368' x='489' y='46' w='72' h='27' OnLButtonClick='FamilyWnd.turnPage' revmsg='true' text='申请列表' text_color='#E6D284'/>"
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
l.WndScript = {	
					[1] = "FamilyWnd_Member.lua",
					[2] = "FamilyWnd_Info.lua",
					[3] = "FamilyWnd_Warehouse.lua",
					[4] = "FamilyWnd_Log.lua",
					[5] = "FamilyWnd_RedPacket.lua",
					[6] = "FamilyWnd_FamilyList.lua",
					[7] = "FamilyWnd_ApplyList.lua",
	}



--UI Logic Code Start
function FamilyWnd.UIInit(_Handle)
	FamilyWnd._wnd = _Handle
	GUIWndSetSizeM(_Handle, 684, 511)	
	
	CLFamilyInfoRequest(4,"FamilyWnd_行会封号","FamilyWnd.getFamilyTitle")	--请求封号
	CLFamilyInfoRequest(128,"FamilyWnd_行会基本信息", "FamilyWnd.getFamilyBasicInfo")
end

function FamilyWnd.turnPage(_Handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		
		FamilyWnd.updateBtn(_Handle)
		FamilyWnd._lastBtn = _Handle
		FamilyWnd.updatelist(_Handle)
	end
end

function FamilyWnd.updateBtn(_Handle)
	if FamilyWnd._lastBtn then 
		GUIButtonSetIsActivePageBtn(FamilyWnd._lastBtn, false)
	end	
	
	GUIButtonSetIsActivePageBtn(_Handle, true)
end

function FamilyWnd.updatelist(_Handle)	
	if FamilyWnd._nowPage then
		GUIWndClose(FamilyWnd._nowPage)
	end	

	local WndScript = l.WndScript[WndGetParam(_Handle)]
	if WndScript then
		UI:Lua_OpenWindow(FamilyWnd._wnd, WndScript)
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
		FamilyWnd.turnPage(_GUIHandle)
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

