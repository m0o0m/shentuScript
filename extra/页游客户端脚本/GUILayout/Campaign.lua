Campaign ={}
function Campaign.main()
local ui = "<form> <dialog OnInit='Campaign.UIInit' id='Campaign' center='true' image='1806500000' x='109' y='188' w='722' h='504' magic='1' OnClose='Campaign.wndClose' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='image' image='1807100003' x='34' y='56' w='652' h='427' check_point='0' revmsg='true'/>"
	.."	<button id='closeWnd' image='1805900080' x='665' y='2' w='34' h='38' OnLButtonUp='luaWndClose' revmsg='true'/>" 
	.."	<image id='TitleImg3' image='1807100006' x='471' y='63' w='213' h='43' check_point='0' revmsg='true'/>"
	.."	<button id='ItemBtn1' image='1807100007' x='36' y='93' w='409' h='39' OnLButtonUp='Campaign.select' revmsg='true' param='1'/>"
	.."	<button id='ItemBtn2' image='1807100007' x='36' y='136' w='409' h='39' OnLButtonUp='Campaign.select' revmsg='true' param='2'/>"
	.."	<button id='ItemBtn3' image='1807100007' x='36' y='181' w='409' h='39' OnLButtonUp='Campaign.select' revmsg='true' param='3'/>"
	.."	<button id='ItemBtn4' image='1807100007' x='36' y='226' w='409' h='39' OnLButtonUp='Campaign.select' revmsg='true' param='4'/>"
	.."	<button id='ItemBtn5' image='1807100007' x='36' y='271' w='409' h='39' OnLButtonUp='Campaign.select' revmsg='true' param='5'/>"
	.."	<button id='ItemBtn6' image='1807100007' x='36' y='316' w='409' h='39' OnLButtonUp='Campaign.select' revmsg='true' param='6'/>"
	.."	<button id='ItemBtn7' image='1807100007' x='36' y='361' w='409' h='39' OnLButtonUp='Campaign.select' revmsg='true' param='7'/>"
	.."	<button id='ItemBtn8' image='1807100007' x='36' y='406' w='409' h='39' OnLButtonUp='Campaign.select' revmsg='true' param='8'/>"
	
	.."	<edit id='DataNameEdit1' x='36' y='64' w='85' h='20' align='center' revmsg='true' text_color='#BD9281' text='活动时间' font='system'/>"
	.."	<edit id='DataNameEdit2' x='153' y='64' w='85' h='20' align='center' revmsg='true' text_color='#BD9281' text='活动名称' font='system'/>"
	.."	<edit id='DataNameEdit3' x='267' y='64' w='85' h='20' align='center' revmsg='true' text_color='#BD9281' text='参加等级' font='system'/>"
	.."	<edit id='DataNameEdit4' x='369' y='64' w='85' h='20' align='center' revmsg='true' text_color='#BD9281' text='操作' font='system'/>"
	.."	<edit id='TitleEdit3' x='516' y='72' w='131' h='25' revmsg='true' align='center' text_color='#FFC009' font='SIMLI18'/>"
	.."	<image id='TitleNameImg' image='1807100000' x='329' y='7' w='66' h='27' check_point='0' revmsg='true'/>"
	.."	<richedit id='AwardRichEdit' x='471' y='134' w='210' h='98' canedit='false' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<richedit id='DescRichEdit' x='472' y='274' w='210' h='196' canedit='false' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='TimeEdit1' x='38' y='103' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='NameEdit1' x='154' y='105' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='LevelEdit1' x='270' y='104' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='OperateEdit1' x='366' y='104' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='TimeEdit2' x='38' y='149' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='NameEdit2' x='154' y='149' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='LevelEdit2' x='270' y='149' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='OperateEdit2' x='366' y='149' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='TimeEdit3' x='38' y='194' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='NameEdit3' x='154' y='194' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='LevelEdit3' x='270' y='194' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='OperateEdit3' x='366' y='194' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='TimeEdit4' x='38' y='239' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='NameEdit4' x='154' y='239' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='LevelEdit4' x='270' y='239' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='OperateEdit4' x='366' y='239' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='TimeEdit5' x='38' y='284' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='NameEdit5' x='154' y='283' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='LevelEdit5' x='270' y='284' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='OperateEdit5' x='366' y='284' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='TimeEdit6' x='38' y='329' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='NameEdit6' x='154' y='329' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='LevelEdit6' x='270' y='329' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='OperateEdit6' x='366' y='329' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='TimeEdit7' x='38' y='374' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='NameEdit7' x='154' y='374' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='LevelEdit7' x='270' y='374' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='OperateEdit7' x='366' y='374' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='TimeEdit8' x='38' y='419' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='NameEdit8' x='154' y='419' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='LevelEdit8' x='270' y='419' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<edit id='OperateEdit8' x='366' y='419' w='85' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<button id='OperateBtn1' image='1800000081' x='377' y='98' w='63' h='26' OnLButtonUp='Campaign.operate' revmsg='true' param='1' text='参与' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='OperateBtn2' image='1800000081' x='377' y='143' w='63' h='26' OnLButtonUp='Campaign.operate' revmsg='true' param='2' text='参与' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='OperateBtn3' image='1800000081' x='377' y='188' w='63' h='26' OnLButtonUp='Campaign.operate' revmsg='true' param='3' text='参与' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='OperateBtn4' image='1800000081' x='377' y='233' w='63' h='26' OnLButtonUp='Campaign.operate' revmsg='true' param='4' text='参与' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='OperateBtn5' image='1800000081' x='377' y='278' w='63' h='26' OnLButtonUp='Campaign.operate' revmsg='true' param='5' text='参与' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='OperateBtn6' image='1800000081' x='377' y='323' w='63' h='26' OnLButtonUp='Campaign.operate' revmsg='true' param='6' text='参与' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='OperateBtn7' image='1800000081' x='377' y='368' w='63' h='26' OnLButtonUp='Campaign.operate' revmsg='true' param='7' text='参与' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='OperateBtn8' image='1800000081' x='377' y='413' w='63' h='26' OnLButtonUp='Campaign.operate' revmsg='true' param='8' text='参与' visible='false' text_color='#C2B6A0'/>"
	.."	<button id='nextBtn' image='1806700033' x='296' y='453' w='22' h='22' OnLButtonUp='Campaign.nextPage' revmsg='true'/>"
	.."	<button id='preBtn' image='1806700029' x='190' y='453' w='22' h='22' OnLButtonUp='Campaign.prePage' revmsg='true'/>"
	.."	<image id='pageImg' image='1806700027' x='217' y='455' w='75' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='PageEdit' x='225' y='456' w='58' h='16' align='center' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<image id='TestWndChild_2' image='1807100002' x='551' y='109' w='52' h='14' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1807100001' x='551' y='251' w='52' h='14' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

--UI Logic Code Start

Campaign.WndHandle = 0
Campaign.NowPage = 1
Campaign.TolPage = 1
Campaign.DataList = {}
Campaign.operateHandle = 0
Campaign.index = {}
function Campaign.UIInit(_Handle)
	Campaign.WndHandle = _Handle 
	local handle = GetWindow(_Handle,"DescRichEdit")
	if handle ~= 0 then
		GUIWndSetTextArrangeType(handle,0,0,5,0)
	end
	UI:Lua_SubmitForm("活动表单", "WarsStart", "")
end

function Campaign.getListBack(tab)
	Campaign.index = tab
	RegisterUIEvent(LUA_EVENT_CAMPAIGNLIST, "Campaign_list", Campaign.listBack)		--活动列表
end

function Campaign.listBack()
	local Campaigntab = getTable(as3.tolua(LuaParam[1]))	
	local itemCount = #Campaigntab
	local index = 1
	for i = 1 , itemCount do
		local temp = getTable(Campaigntab[i])
		if temp[2] ~= "日常活动" then
			Campaign.DataList[index] = getTable(Campaigntab[i])
			index = index + 1
		end
	end
	Campaign.sort()--排序
	
	if Campaign.index[1] == 1 then
		table.insert(Campaign.DataList, 1, {0,"攻城战",Campaign.index[2],Campaign.index[3],70,200,0,0,Campaign.index[1],0,"只有坚持到最后的行会，才能占领神歌城!","占领神歌城，会长可获取城主称号、大量元宝、城主之力！"})
	end
	Campaign.NowPage = 1
	Campaign.TolPage = math.ceil(itemCount/8)
	Campaign.show()
	local hand = GUIWndFindWindow(Campaign.WndHandle,"ItemBtn1")
	if hand ~= 0 then 
		Campaign.select(hand)
	end
end

function Campaign.select(_Handle)
	local index = GUIWndGetParam(_Handle)
	for i = 1 , 8 do
		if i == index then
			ButtonSetIsActivePageBtn(_Handle,nil,true)
			EditSetTextM(Campaign.WndHandle,'TitleEdit3',Campaign.DataList[index+(Campaign.NowPage-1)*8][2])
		else
			ButtonSetIsActivePageBtn(Campaign.WndHandle,'ItemBtn'..i,false)
		end	
	end
	
	if #Campaign.DataList > 0 then
		
		local _UIHandle = GUIWndFindWindow(Campaign.WndHandle,"AwardRichEdit")
		if _UIHandle ~= 0 then 
			GUIRichEditClear(_UIHandle)
		end
		_UIHandle = GUIWndFindWindow(Campaign.WndHandle,"DescRichEdit")
		if _UIHandle ~= 0 then 
			GUIRichEditClear(_UIHandle)
		end
		RichEditAppendString(Campaign.WndHandle,"AwardRichEdit",Campaign.DataList[index+(Campaign.NowPage-1)*8][12])
		RichEditAppendString(Campaign.WndHandle,"DescRichEdit",Campaign.DataList[index+(Campaign.NowPage-1)*8][11])
		
	end	
end

function Campaign.msg(str) 
	window_msg_up(Campaign.operateHandle,str,-77,-25,60,MakeARGB(255, 255, 0, 0),1.5)
end

function Campaign.operate(_Handle)
	UI:Lua_SubmitForm("NPC_IsNotInScene", "AutoFindBoss", "")
	Campaign.operateHandle = _Handle
	local index = GUIWndGetParam(_Handle)
	local wnd = GUIWndFindWindow(Campaign.WndHandle, "ItemBtn"..index)
	Campaign.select(wnd)
	CLCampaignJoin(Campaign.DataList[index][1])
end

function Campaign.prePage()
	if Campaign.NowPage>1 then
		Campaign.NowPage = Campaign.NowPage - 1
		Campaign.show()
	end
end

function Campaign.nextPage()
	if Campaign.NowPage<Campaign.TolPage then
		Campaign.NowPage = Campaign.NowPage + 1
		Campaign.show()
	end
end

function Campaign.empty()
	EditSetTextM(Campaign.WndHandle,'TitleEdit3',"")
	RichEditClear(Campaign.WndHandle,"AwardRichEdit") 
	RichEditClear(Campaign.WndHandle,"DescRichEdit") 
end

function Campaign.show()
	Campaign.empty()
	local index = (Campaign.NowPage-1)*8
	local operateStr = ""
	local level = 0
	local bool = false
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		level = tonumber(as3.tolua(LuaRet))
	end 
	for i = 1 , 8 do
		bool = false
		index=index+1
		ButtonSetIsActivePageBtn(Campaign.WndHandle,'ItemBtn'..i,false)
		if index <= #Campaign.DataList then
			WndSetVisibleM(Campaign.WndHandle,'TimeEdit'..i,true)
			WndSetVisibleM(Campaign.WndHandle,'NameEdit'..i,true)
			WndSetVisibleM(Campaign.WndHandle,'LevelEdit'..i,true)
			WndSetVisibleM(Campaign.WndHandle,'ItemBtn'..i,true)
			--EditSetTextM(Campaign.WndHandle,'TimeEdit'..i,string.sub(Campaign.DataList[index][3],0,5).."-"..string.sub(Campaign.DataList[index][4],0,5))
			if string.len(Campaign.DataList[index][3]) >9 then
				EditSetTextM(Campaign.WndHandle,'TimeEdit'..i,string.sub(Campaign.DataList[index][3],3,-4).."-"..string.sub(Campaign.DataList[index][4],3,-4))
			else
				EditSetTextM(Campaign.WndHandle,'TimeEdit'..i,string.sub(Campaign.DataList[index][3],0,-4).."-"..string.sub(Campaign.DataList[index][4],0,-4))
			end
			EditSetTextM(Campaign.WndHandle,'NameEdit'..i,Campaign.DataList[index][2])
			EditSetTextM(Campaign.WndHandle,'LevelEdit'..i,Campaign.DataList[index][5].."-"..Campaign.DataList[index][6])
			if Campaign.DataList[index][9] == 2 then --and Campaign.DataList[index][7]<Campaign.DataList[index][8] 
				operateStr = "进行中"
				local handle = GUIWndFindWindow(Campaign.WndHandle, "OperateEdit"..i)
					GUIEditSetTextColor(handle, MakeARGB(255, 228, 193, 159))
				--  1  未开始  2 进行  3  结束  7  活动进行次数   8 活动总次数
				if level >= tonumber(Campaign.DataList[index][5]) and level <= tonumber(Campaign.DataList[index][6]) then
					bool=true
				end
			else
				if tonumber(Campaign.DataList[index][9]) == 3 then
					operateStr = "已结束"
					local handle = GUIWndFindWindow(Campaign.WndHandle, "OperateEdit"..i)
					GUIEditSetTextColor(handle, MakeARGB(255, 98, 98, 98))
				else
					operateStr = "未开始"
					local handle = GUIWndFindWindow(Campaign.WndHandle, "OperateEdit"..i)
					GUIEditSetTextColor(handle, MakeARGB(255, 228, 193, 159))
				end
			end
			if	bool then
				WndSetVisibleM(Campaign.WndHandle,'OperateEdit'..i,false)
				WndSetVisibleM(Campaign.WndHandle,'OperateBtn'..i,true)
			else
				WndSetVisibleM(Campaign.WndHandle,'OperateEdit'..i,true)
				EditSetTextM(Campaign.WndHandle,'OperateEdit'..i,operateStr)
				WndSetVisibleM(Campaign.WndHandle,'OperateBtn'..i,false)
			end
		else
			WndSetVisibleM(Campaign.WndHandle,'TimeEdit'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'NameEdit'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'LevelEdit'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'OperateEdit'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'OperateBtn'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'ItemBtn'..i,false)
		end
	end
	EditSetTextM(Campaign.WndHandle,'PageEdit',Campaign.NowPage.."/"..Campaign.TolPage)
	if Campaign.NowPage == 1 and Campaign.index[1] == 1 then
		WndAddEffect("", "Campaign,ItemBtn1", 3020301300, -51, -46, 100, 0)
	else
		WndDelEffect("", "Campaign,ItemBtn1")
	end
end

function Campaign.sort()
	local data = {{},{}}
	for i = 1, #Campaign.DataList do
		if Campaign.DataList[i][9] == 1 or Campaign.DataList[i][9] == 2 then
			table.insert(data[1], Campaign.DataList[i])
		elseif Campaign.DataList[i][9] == 3 then
			table.insert(data[2], Campaign.DataList[i])
		end
	end
	data[1] = Campaign.bubble(data[1])
	data[2] = Campaign.bubble(data[2])
	local index = 1
	for i = 1, #data[1] do
		Campaign.DataList[index] = data[1][i]
		index = index + 1
	end
	for i = 1, #data[2] do
		Campaign.DataList[index] = data[2][i]
		index = index + 1
	end
end
function Campaign.bubble(data)
	local this_data = {}
	this_data = data
	local temp = #this_data - 1
	for i = 1, temp do
		local time1 = 0
		local time2 = 0
		if string.len(this_data[i][3]) > 9 then
			time1 = string.sub(this_data[i][3],3,-4)
		else
			time1 = string.sub(this_data[i][3],0,-4)
		end
		if string.len(this_data[i + 1][3]) > 9 then
			time2 = string.sub(this_data[i + 1][3],3,-4)
		else
			time2 = string.sub(this_data[i + 1][3],0,-4)
		end
		if time1 > time2 then
			temp = this_data[i]
			this_data[i] = this_data[i + 1]
			this_data[i + 1] = temp
		elseif time1 == time2 then
			time1 = string.sub(time1, -2, -1)
			time2 = string.sub(time2, -2, -1)
			if time1 > time2 then
				temp = this_data[i]
				this_data[i] = this_data[i + 1]
				this_data[i + 1] = temp
			end
		end
	end
	return this_data
end


function Campaign.wndClose()
	local wnd = GUI:WndFindWindow(0, 'Campaign') 
	if wnd == 0 then
		Campaign = nil
	end
end

Campaign.main()