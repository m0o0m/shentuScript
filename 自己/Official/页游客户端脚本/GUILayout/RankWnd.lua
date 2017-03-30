RankWnd = {}

RankWnd.localString = {}
local l = RankWnd.localString
l.rankTypeBtn = {
	{"总 排 行",  "此榜根据所有玩家数据进行排行"},
	{"战 神 榜",  "此榜根据所有战士玩家数据进行排行"},
	{"法 师 榜",  "此榜根据所有法师玩家数据进行排行"},
	{"道 士 榜",  "此榜根据所有道士玩家数据进行排行"}
}
l.gridTitleTable = {"排名", "姓名", "等级", "职业", "性别"}
l.myRank_f = "我的排名:"
l.outofRank = "未上榜"
l.getRankFail = "排行榜获取失败，参数错误"

RankWnd.nowPage = 1
RankWnd.nowRankType = 1
RankWnd.list = {}
RankWnd.myRank = {}
RankWnd.updateTime = 0
RankWnd.selected = 0
RankWnd._playerBtn_ = {}
RankWnd._rankImg_ = {}
RankWnd._rankEdit_ = {}
RankWnd._nameEdit_ = {}
RankWnd._levelEdit_ = {}
RankWnd._classEdit_ = {}
RankWnd._sexEdit_ = {}

function RankWnd.main()
	local ui = "<form>"..
		 "<dialog OnInit='RankWnd.UIInit' id='RankWnd' image='1806500000' x='-242' y='-139' w='684' h='478' center='true' OnClose='RankWnd.wndClose' magic='1' esc_close='true' drag='true' revmsg='true'>"..
			"<image id='embeddedImg' image='1806900001' x='35' y='60' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='wndTitleImage' image='1806900000' x='325' y='6' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='pageEditImage' image='1806700027' x='362' y='453' w='16' h='16' revmsg='true' enable='false'/>"..
			"<button id='pgBtn1' image='1806900004' x='42' y='63' w='76' h='43' OnLButtonClick='RankWnd.pageBtnLc' revmsg='true' param='1'/>"..
			"<button id='pgBtn2' image='1806900008' x='42' y='113' w='76' h='43' OnLButtonClick='RankWnd.pageBtnLc' revmsg='true' param='2'/>"..
			"<button id='pgBtn3' image='1806900012' x='42' y='163' w='76' h='43' OnLButtonClick='RankWnd.pageBtnLc' revmsg='true' param='3'/>"..
			"<button id='pgBtn4' image='1806900016' x='42' y='213' w='76' h='43' OnLButtonClick='RankWnd.pageBtnLc' revmsg='true' param='4'/>"..
			"<edit id='rankTitle' image='0' x='218' y='71' w='46' h='15' revmsg='true' enable='false' text_color='#F1B674' text='排名' />"..
			"<edit id='nameTitle' image='0' x='332' y='71' w='46' h='15' revmsg='true' enable='false' text_color='#F1B674' text='姓名' />"..
			"<edit id='levelTitle' image='0' x='447' y='71' w='46' h='15' revmsg='true' enable='false' text_color='#F1B674' text='等级' />"..
			"<edit id='classTitle' image='0' x='536' y='71' w='46' h='15' revmsg='true' enable='false' text_color='#F1B674' text='职业' />"..
			"<edit id='guidTitle' image='0' x='628' y='71' w='46' h='15' revmsg='true' enable='false' text_color='#F1B674' text='性别' />"..
			"<edit id='myRank_f' image='0' x='195' y='456' w='68' h='20' revmsg='true' enable='false' text_color='#FFCC00' text='我的排名:' />"..
			"<edit id='myRank' image='0' x='253' y='456' w='68' h='20' revmsg='true' enable='false' text='未上榜' />"..
			"<edit id='tips' image='0' x='504' y='456' w='200' h='20' revmsg='true' enable='false' text_color='#DED7C7' text='此榜根据所有玩家数据进行排行' />"..
			"<button id='closeBtn' image='1805900080' x='652' y='3' w='4095' h='4095' OnLButtonClick='luaWndClose' revmsg='true' />"..
			"<edit id='pageEdit' image='0' x='382' y='451' w='40' h='25' revmsg='true' enable='false' text_color='#CEB362' />"..
			"<button id='pgUpBtn' image='1806700029' x='339' y='452' w='4095' h='4095' OnLButtonClick='RankWnd.pgUpBtn_LC' revmsg='true' />"..
			"<button id='pgDownBtn' image='1806700033' x='438' y='452' w='4095' h='4095' OnLButtonClick='RankWnd.pgDownBtn_LC' revmsg='true' />"..
			"<image id='playerBtn1' image='1806900002' x='186' y='98' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='1' />"..
			"<image id='playerBtn1Selected' image='1806900003' x='186' y='98' w='499' h='36' visible='false' enable='false' revmsg='true'/>"..
			"<edit id='rankEdit1' image='0' x='190' y='102' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit1' image='0' x='274' y='102' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit1' image='0' x='419' y='102' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit1' image='0' x='507' y='102' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit1' image='0' x='573' y='102' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='playerBtn2' image='1806900002' x='186' y='132' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='2' />"..
			"<image id='playerBtn2Selected' image='1806900003' x='186' y='132' w='499' h='36' enable='false' visible='false' revmsg='true'/>"..
			"<edit id='rankEdit2' image='0' x='190' y='136' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit2' image='0' x='274' y='136' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit2' image='0' x='419' y='136' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit2' image='0' x='507' y='136' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit2' image='0' x='573' y='136' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='playerBtn3' image='1806900002' x='186' y='166' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='3' />"..
			"<image id='playerBtn3Selected' image='1806900003' x='186' y='166' w='499' h='36' enable='false' visible='false' revmsg='true'/>"..
			"<edit id='rankEdit3' image='0' x='190' y='170' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit3' image='0' x='274' y='170' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit3' image='0' x='419' y='170' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit3' image='0' x='507' y='170' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit3' image='0' x='573' y='170' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='playerBtn4' image='1806900002' x='186' y='200' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='4' />"..
			"<image id='playerBtn4Selected' image='1806900003' x='186' y='200' w='499' h='36' enable='false' visible='false' revmsg='true'/>"..
			"<edit id='rankEdit4' image='0' x='190' y='204' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit4' image='0' x='274' y='204' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit4' image='0' x='419' y='204' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit4' image='0' x='507' y='204' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit4' image='0' x='573' y='204' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='playerBtn5' image='1806900002' x='186' y='234' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='5' />"..
			"<image id='playerBtn5Selected' image='1806900003' x='186' y='234' w='499' h='36' enable='false' visible='false' revmsg='true'/>"..
			"<edit id='rankEdit5' image='0' x='190' y='238' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit5' image='0' x='274' y='238' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit5' image='0' x='419' y='238' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit5' image='0' x='507' y='238' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit5' image='0' x='573' y='238' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='playerBtn6' image='1806900002' x='186' y='268' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='6' />"..
			"<image id='playerBtn6Selected' image='1806900003' x='186' y='268' w='499' h='36' enable='false' visible='false' revmsg='true'/>"..
			"<edit id='rankEdit6' image='0' x='190' y='272' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit6' image='0' x='274' y='272' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit6' image='0' x='419' y='272' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit6' image='0' x='507' y='272' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit6' image='0' x='573' y='272' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='playerBtn7' image='1806900002' x='186' y='302' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='7' />"..
			"<image id='playerBtn7Selected' image='1806900003' x='186' y='302' w='499' h='36' enable='false' visible='false' revmsg='true'/>"..
			"<edit id='rankEdit7' image='0' x='190' y='306' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit7' image='0' x='274' y='306' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit7' image='0' x='419' y='306' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit7' image='0' x='507' y='306' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit7' image='0' x='573' y='306' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='playerBtn8' image='1806900002' x='186' y='336' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='8' />"..
			"<image id='playerBtn8Selected' image='1806900003' x='186' y='336' w='499' h='36' enable='false' visible='false' revmsg='true'/>"..
			"<edit id='rankEdit8' image='0' x='190' y='340' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit8' image='0' x='274' y='340' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit8' image='0' x='419' y='340' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit8' image='0' x='507' y='340' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit8' image='0' x='573' y='340' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='playerBtn9' image='1806900002' x='186' y='370' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='9' />"..
			"<image id='playerBtn9Selected' image='1806900003' x='186' y='370' w='499' h='36' enable='false' visible='false' revmsg='true'/>"..
			"<edit id='rankEdit9' image='0' x='190' y='374' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit9' image='0' x='274' y='374' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit9' image='0' x='419' y='374' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit9' image='0' x='507' y='374' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit9' image='0' x='573' y='374' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='playerBtn10' image='1806900002' x='186' y='404' w='4095' h='4095' OnLButtonClick='RankWnd.playerBtn_LC' revmsg='true' param='10' />"..
			"<image id='playerBtn10Selected' image='1806900003' x='186' y='404' w='499' h='36' enable='false' visible='false' revmsg='true'/>"..
			"<edit id='rankEdit10' image='0' x='190' y='408' w='76' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='nameEdit10' image='0' x='274' y='408' w='140' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='levelEdit10' image='0' x='419' y='408' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='classEdit10' image='0' x='507' y='408' w='83' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<edit id='sexEdit10' image='0' x='573' y='408' w='137' h='30' revmsg='true' enable='false' text_color='#E4C19F' align='center' />"..
			"<image id='rankImage1' image='1801500039' x='220' y='100' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='rankImage2' image='1801500040' x='218' y='134' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='rankImage3' image='1801500041' x='218' y='168' w='16' h='16' revmsg='true' enable='false'/>"..
		 "</dialog>"..
	"</form>"
	GenFormByString(ui)
end

--UI Logic Code Start
function RankWnd.UIInit(_Parent)
	RankWnd._wnd = _Parent
	GUIWndSetSizeM(_Parent, 684, 478)
	UI:Lua_OpenWindow(_Parent, "Menu.lua")
	
	local _GUIHandle = 0
	--[[for i = 1, 4 do
		_GUIHandle = GUIWndFindChildM(_Parent, "pgBtn"..i)
		if _GUIHandle ~= 0 then
			GUIButtonSetTextFont(_GUIHandle,"SIMLI18")
		end
	end--]]
	RankWnd.backHandleTb = {}
	for i = 1, 10 do
		RankWnd.backHandleTb[i] = GetWindow(RankWnd._wnd, "playerBtn"..i.."Selected")
		if i < 4 then
			_GUIHandle = GUIWndFindChildM(_Parent, "rankImage"..i)
			if _GUIHandle ~= 0 then
				RankWnd._rankImg_[i] = _GUIHandle
			end
		end
		_GUIHandle = GUIWndFindChildM(_Parent, "playerBtn"..i)
		if _GUIHandle ~= 0 then
			RankWnd._playerBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Parent, "rankEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._rankEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Parent, "nameEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._nameEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Parent, "levelEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._levelEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Parent, "classEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._classEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(_Parent, "sexEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._sexEdit_[i] = _GUIHandle
		end
	end
	
	_GUIHandle = GUIWndFindChildM(_Parent, "myRank")
	if _GUIHandle ~= 0 then
		RankWnd._myRankEdit = _GUIHandle
	end
	_GUIHandle = GUIWndFindChildM(_Parent, "pageEdit")
	if _GUIHandle ~= 0 then
		RankWnd._pgEdit = _GUIHandle
	end
	_GUIHandle = GUIWndFindChildM(_Parent, "pgUpBtn")
	if _GUIHandle ~= 0 then
		RankWnd._pgUpBtn = _GUIHandle
	end
	_GUIHandle = GUIWndFindChildM(_Parent, "pgDownBtn")
	if _GUIHandle ~= 0 then
		RankWnd._pgDownBtn = _GUIHandle
	end

	_GUIHandle = GUIWndFindChildM(_Parent, "pgBtn1")
	if _GUIHandle ~= 0 then
		RankWnd.pageBtnLc(_GUIHandle)
	end
end

function RankWnd.pageBtnLc(h)
	if RankWnd._selPgBtn == h then return end
	GUIButtonSetIsActivePageBtn(h, true)
	if RankWnd._selPgBtn then
		GUIButtonSetIsActivePageBtn(RankWnd._selPgBtn, false)
	end
	RankWnd._selPgBtn = h
	RankWnd.nowPage = 1
	
	local param = GUIWndGetParam(h)
	RankWnd.nowRankType = param
	if RankWnd.updateTime ~= 0 and RankWnd.list[param] then		--服务器没有数据 & 本地有数据
		RankWnd.newPage()
	else	--请求
		if not CLGetRankList(param-1,"RankWnd_获取排行列表", "RankWnd.getRankList") then
			GUIWndClose(RankWnd._wnd)
		end
	end
end

function RankWnd.getRankList()
	local rType = as3.tolua(LuaParam[1]) + 1
	RankWnd.updateTime = as3.tolua(LuaParam[3])
	if RankWnd.updateTime > 0 then
		GUIWndAddTimerBrief(RankWnd._wnd, RankWnd.updateTime*1000, "RankWnd.getListTime")
	end
	
	if RankWnd.nowRankType ~= rType then return end
	RankWnd.list[RankWnd.nowRankType] = getTable(as3.tolua(LuaParam[4]))
	for i = 1, #RankWnd.list[RankWnd.nowRankType] do
		RankWnd.list[RankWnd.nowRankType][i] = getTable(RankWnd.list[RankWnd.nowRankType][i])
	end
	
	RankWnd.newPage()
end

function RankWnd.newPage()
	local _GUIHandle = 0
	local listCount = #RankWnd.list[RankWnd.nowRankType]
	
	CLGetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
	local myName = as3.tolua(LuaRet)
	local list = RankWnd.list[RankWnd.nowRankType]
	for i = 1, #list do
		if list[i][2] == myName then
			RankWnd.myRank[RankWnd.nowRankType] = i
			break
		end
	end
	if RankWnd.myRank[RankWnd.nowRankType] == nil then
		RankWnd.myRank[RankWnd.nowRankType] = l.outofRank
	end
	
	for i = 1, 10 do
		local index = i+(RankWnd.nowPage-1)*10
		if index <= listCount then
			RankWnd.setPlayerBtnVisible(i, true)
			
			local btnImg, specialColor = 0, 0
			if index == 1 then
				--btnImg = 1801400021
				specialColor = CL:MakeARGB(255, 216, 1, 223)
			elseif index == 2 then
				--btnImg = 1801400021
				specialColor = CL:MakeARGB(255, 0, 168, 255)
			elseif index == 3 then
				--btnImg = 1801400025
				specialColor = CL:MakeARGB(255, 18, 167, 46)
			else
				--btnImg = 1801400029
				specialColor = CL:MakeARGB(255, 228, 193, 159)
			end
			
			--GUIWndSetImageID(RankWnd._playerBtn_[i], btnImg)

			_GUIHandle = RankWnd._rankImg_[i]
			if _GUIHandle then
				if index <= 3 then
					GUIWndSetVisible(_GUIHandle, true)
				else
					GUIWndSetVisible(_GUIHandle, false)
				end
			end
			
			_GUIHandle = RankWnd._rankEdit_[i]
			if index <= 3 then
				GUIWndSetVisible(_GUIHandle, false)
			else
				GUIWndSetVisible(_GUIHandle, true)
				GUIWndSetTextColorM(_GUIHandle, specialColor)
				GUIEditSetTextM(_GUIHandle, tostring(index))
			end
			
			_GUIHandle = RankWnd._nameEdit_[i]
			if _GUIHandle ~= 0 then
				GUIWndSetTextColorM(RankWnd._nameEdit_[i], specialColor)
				GUIEditSetTextM(RankWnd._nameEdit_[i], RankWnd.list[RankWnd.nowRankType][index][2])
			end

			_GUIHandle = RankWnd._levelEdit_[i]
			if _GUIHandle then
				GUIWndSetTextColorM(_GUIHandle, specialColor)
				GUIEditSetTextM(_GUIHandle, RankWnd.list[RankWnd.nowRankType][index][5])
			end
			_GUIHandle = RankWnd._classEdit_[i]
			if _GUIHandle then
				GUIWndSetTextColorM(_GUIHandle, specialColor)
				GUIEditSetTextM(_GUIHandle, RDJOBName[RankWnd.list[RankWnd.nowRankType][index][3]])
			end
			_GUIHandle = RankWnd._sexEdit_[i]
			if _GUIHandle then
				GUIWndSetTextColorM(_GUIHandle, specialColor)
				GUIEditSetTextM(_GUIHandle, RDSexName[RankWnd.list[RankWnd.nowRankType][index][4]])
			end
		else
			RankWnd.setPlayerBtnVisible(i, false)
		end
	end
	
	local pageCount = math.ceil(listCount/10)
	_GUIHandle = RankWnd._pgEdit
	if _GUIHandle then
		GUIEditSetFontCenter(_GUIHandle)
		GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 206, 179, 98))
		GUIEditSetTextM(_GUIHandle, RankWnd.nowPage.."/"..pageCount)
	end
	
	GUIEditSetTextM(RankWnd._myRankEdit, RankWnd.myRank[RankWnd.nowRankType])
	
	_GUIHandle = RankWnd._pgUpBtn
	if RankWnd.nowPage == 1 then 
		GUIWndSetEnableM(_GUIHandle, false) 
	else
		GUIWndSetEnableM(_GUIHandle, true) 
	end
	_GUIHandle = RankWnd._pgDownBtn
	if RankWnd.nowPage == pageCount then 
		GUIWndSetEnableM(_GUIHandle, false) 
	else
		GUIWndSetEnableM(_GUIHandle, true) 
	end
end

function RankWnd.pgUpBtn_LC()
	RankWnd.nowPage = RankWnd.nowPage - 1
	RankWnd.newPage()
end

function RankWnd.pgDownBtn_LC()
	RankWnd.nowPage = RankWnd.nowPage + 1
	RankWnd.newPage()
end

function RankWnd.playerBtn_LC(h)
	local p = GUIWndGetParam(h)
	if RankWnd._selIndex ~= 0 then
		GUIWndSetVisible(RankWnd.backHandleTb[p], true)
		GUIWndSetVisible(RankWnd.backHandleTb[RankWnd._selIndex], false)
	else
		GUIWndSetVisible(RankWnd.backHandleTb[p], true)
	end
	RankWnd._selIndex = p
	GUIGetWndMousePos(RankWnd._wnd)
	GUIWndSetPosM(Menu._wnd["RankWnd"],  as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2]))
	GUIWndSetVisible(Menu._wnd["RankWnd"], true)
end



function RankWnd.setPlayerBtnVisible(i, bool)
	if i < 4 then
		GUIWndSetVisible(RankWnd._rankImg_[i], bool)
	end
	GUIWndSetVisible(RankWnd._playerBtn_[i], bool)
	GUIWndSetVisible(RankWnd._rankEdit_[i], bool)
	GUIWndSetVisible(RankWnd._nameEdit_[i], bool)
	GUIWndSetVisible(RankWnd._levelEdit_[i], bool)
	GUIWndSetVisible(RankWnd._classEdit_[i], bool)
	GUIWndSetVisible(RankWnd._sexEdit_[i], bool)
end

function RankWnd.getListTime()
	GUIWndDelAllTimer(RankWnd._wnd)
	RankWnd.updateTime = 0
end

function RankWnd.wndClose()
	local wnd = GUIWndFindWindow(0, "RankWnd") 
	if wnd == 0 then
		RankWnd = nil
	end
end


RankWnd.main()