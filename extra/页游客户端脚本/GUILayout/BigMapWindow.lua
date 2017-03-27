BigMapWindow = {}

BigMapWindow.localString = {}
--地图名字
if not Map then
	Map = {}
end
--[[Map.zoneKeyName = {
	"巫山城",	
	"海底入口",
	"东临城",
	"邪庙1",
	"妖山暗穴1",
	"废弃矿洞1",
	"赤炎部落1",
	"绝路谷",
	"绝路城1",
	"龙城",
	"镇魔城",
	"将军冢1",
	"天魔石窟1",
	"天荒阵1",
	"镇魔禁地1",
	"绝路岭"
}
Map.zoneShowName = {		
	"巫山城",		
	"海角秘境",	
	"东临城",		
	"邪庙",		
	"妖山暗穴",	
	"废弃矿洞",	
	"赤炎部落",	
	"绝路谷",		
	"绝路城",		
	"龙城",		
	"镇魔城",		
	"将军冢",		
	"天魔石窟",	
	"天荒阵",		
	"镇魔禁地",	
	"绝路岭",		
	"xxx",			
	"xxx",			
	"xxx",			
	"xxx"		
}
--]]
Map.zoneKeyName = {
"地图测试3",
"龙魂之刃",
"巫山城",
"龙城",
"寻龙夺宝",
"镇魔城",
"夜袭巫山城",
"谁与争锋",
"矿洞",
"蜈蚣洞一层",
"副本赤月神殿",
"骨魔洞一层",
"骨魔洞二层",
"骨魔洞三层",
"狐月神殿",
"狐月神殿2",
"蜈蚣洞二层",
"蜈蚣洞三层",
"猪洞一层",
"猪洞二层",
"猪洞三层",
"沃玛寺庙一层",
"沃玛寺庙二层",
"蜈蚣洞副本",
"猪洞副本",
"狐月神殿3",
"土城",
"祖玛寺庙二层",
"祖玛寺庙一层",
"祖玛寺庙入口",
"祖玛寺庙三层",
"牛魔洞一层",
"牛魔洞二层",
"牛魔洞三层",
"尸魔洞一层",
"尸魔洞二层",
"尸魔洞三层",
"海底入口",
"赤月神殿五层",
"赤月神殿三层",
"赤月神殿二层",
"赤月神殿四层",
"赤月神殿一层",
"新版新手村",
"神歌城副本",
"魔龙城一层",
"火龙神殿二层",
"火龙神殿三层",
"火龙神殿四层",
"火龙神殿一层",
"魔龙城二层",
"魔龙城三层",
"雪域试炼二层",
"雪域试炼三层",
"未知暗殿",
"BOSS大厅",
"副本沃玛寺庙",
"天荒教主副本",
"雪域试炼一层",
"祖玛教主副本",
"副本祖玛寺庙",
"副本天空之城",
"副本封魔恶谷",
"封魔洞一层",
"封魔洞二层",
"封魔洞三层",
"狐月神殿一层",
"狐月神殿二层",
"狐月神殿三层",
"雷炎洞穴一层",
"雷炎洞穴二层",
"雷炎洞穴三层",
"普通挂机",
"VIP1挂机",
"VIP2挂机",
"玄冰殿一层",
"玄冰殿二层",
"玄冰殿三层",
"天空之城一层",
"天空之城二层",
"天空之城三层",
"海底世界三层",
"海底世界二层",
"海底世界一层",
"VIP3挂机",
"VIP4挂机",
"VIP5挂机",
"VIP6挂机",
"VIP7挂机",
"VIP8挂机",
"VIP9挂机",
"VIP10挂机",
"苍月岛",
"祈福之地",
"转生神殿一层",
"转生神殿二层",
"转生神殿三层",
"转生神殿四层",
"转生神殿五层",
"转生神殿六层",
"转生神殿七层",
"转生神殿八层",
"玛雅神殿一层",
"玛雅神殿二层",
"玛雅神殿三层",
"玛雅神殿四层",
"BOSS大厅二层",
"BOSS大厅三层",
"赤月恶魔副本",
"牛魔王副本",
"魔龙教主副本",
"火龙副本",
"神威狱一层",
"神威狱二层",
"神威狱三层",
"神威狱四层",
"神威狱五层",
"神威狱六层",
"神威狱七层",
"神威狱八层",
"神威狱九层",
"神威狱十层",
"神威狱十一层",
"神威狱十二层",
"神威狱十三层",
"神歌城皇宫",
"神歌城",
"神歌城密道",
"海角秘境"
}

Map.zoneShowName = {		
"地图测试3",
"龙魂之刃",
"巫山城",
"龙城",
"寻龙夺宝",
"镇魔城",
"夜袭巫山城",
"谁与争锋",
"矿洞",
"毒虫洞一层",
"魔月峡谷",
"骸骨洞一层",
"骸骨洞二层",
"骸骨洞三层",
"狐月神殿",
"狐月神殿2",
"毒虫洞二层",
"毒虫洞三层",
"食人魔洞穴一层",
"食人魔洞穴二层",
"食人魔洞穴三层",
"天荒阵一层",
"天荒阵二层",
"毒虫洞",
"食人魔洞穴",
"狐月神殿3",
"龙城",
"邪庙二层",
"邪庙一层",
"邪庙入口",
"邪庙三层",
"牛魔洞一层",
"牛魔洞二层",
"牛魔洞三层",
"永夜之地一层",
"永夜之地二层",
"永夜之地三层",
"海角秘境",
"魔月峡谷五层",
"魔月峡谷三层",
"魔月峡谷二层",
"魔月峡谷四层",
"魔月峡谷一层",
"新手村",
"神歌城",
"蛮荒城一层",
"火龙洞二层",
"火龙洞三层",
"火龙洞四层",
"火龙洞一层",
"蛮荒城二层",
"蛮荒城三层",
"玄冰洞二层",
"玄冰洞三层",
"锁魔宫",
"灭神禁地一层",
"天荒古阵",
"天荒BOSS",
"玄冰洞一层",
"邪庙BOSS",
"上古邪庙",
"黑暗祭坛",
"镇魔圣殿",
"镇魔禁地一层",
"镇魔禁地二层",
"镇魔禁地三层",
"流沙秘洞一层",
"流沙秘洞二层",
"流沙秘洞三层",
"赤炎禁地一层",
"赤炎禁地二层",
"赤炎禁地三层",
"普通挂机",
"VIP1挂机",
"VIP2挂机",
"海底秘境一层",
"海底秘境二层",
"海底秘境三层",
"雪域冰宫一层",
"雪域冰宫二层",
"雪域冰宫三层",
"深岩密道三层",
"深岩密道二层",
"深岩密道一层",
"VIP3挂机",
"VIP4挂机",
"VIP5挂机",
"VIP6挂机",
"VIP7挂机",
"VIP8挂机",
"VIP9挂机",
"VIP10挂机",
"弥月岛城",
"副本测试",
"轮回圣殿一层",
"轮回圣殿二层",
"轮回圣殿三层",
"轮回圣殿四层",
"轮回圣殿五层",
"轮回圣殿六层",
"轮回圣殿七层",
"轮回圣殿八层",
"远古神殿一层",
"远古神殿二层",
"远古神殿三层",
"远古神殿四层",
"灭神禁地二层",
"灭神禁地三层",
"魔月峡谷BOSS",
"牛魔王BOSS",
"蛮荒城BOSS",
"火龙BOSS",
"无尽深渊一层",
"无尽深渊二层",
"无尽深渊三层",
"无尽深渊四层",
"无尽深渊五层",
"无尽深渊六层",
"无尽深渊七层",
"无尽深渊八层",
"无尽深渊九层",
"无尽深渊十层",
"无尽深渊十一层",
"无尽深渊十二层",
"无尽深渊十三层",
"皇宫",
"神歌城",
"神歌城密道",
"海角秘境"
}


local l = BigMapWindow.localString
l.gotoPos = "前  往"
l.xPosEdit_f = "X:"
l.yPosEdit_f = "Y:"
l.currentMap = "当前地图"
l.worldMap = "世界地图"
l.listPageBtns = {"N P C", "附近玩家"}

BigMapWindow.listPageBtns = {"showNpc", "showPlayer"}
BigMapWindow.unitList = {}
BigMapWindow.cmKeyName = 0
BigMapWindow.mapNameEdit = 0
BigMapWindow.listType = 0

local ui = "<form> <dialog OnInit='BigMapWindow.UIInit' id='BigMapWindow' image='1807400001' x='42' y='173' w='811' h='551' center='true' OnClose='BigMapWindow.wndClose' magic='1' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='TestWndChild_3' image='1807400002' x='33' y='56' w='742' h='474' check_point='0' revmsg='true'/>"
	.."	<image id='wndTitleImage' image='1807400000' x='382' y='8' w='64' h='26' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeBtn' image='1805900080' x='757' y='2' w='34' h='38' OnLButtonClick='luaWndClose' revmsg='true'/>"
	.."	<button id='currentMap' image='1806500017' x='48' y='62' w='77' h='30' page_btn='true' revmsg='true' text='当前地图' text_color='#E6D284'/>"
	--.."	<button id='worldMap' image='1806500017' x='126' y='62' w='77' h='30' OnLButtonClick='BigMapWindow.worldMapLc' revmsg='true' text='世界地图' text_color='#E6D284'/>"
	.."	<image id='BigMapCtrl' image='0' x='35' y='94' w='600' h='376' check_point='0' revmsg='true'/>"
	.."	<image id='mapNameBackImg' image='1801900004' x='40' y='100' w='174' h='37' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='mapNameEdit' x='49' y='100' w='140' h='26' revmsg='true' enable='false' font='system'/>"
	.."	<image id='xPosEditImage' image='1807200005' x='491' y='488' w='60' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='yPosEditImage' image='1807200005' x='592' y='488' w='60' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='showNpc' image='1805600150' x='638' y='64' w='64' h='24' OnLButtonClick='BigMapWindow.listPageBtnsLc' revmsg='true' param='1' text='N P C' text_color='#E6D284'/>"
	.."	<button id='showPlayer' image='1805600150' x='707' y='64' w='64' h='24' OnLButtonClick='BigMapWindow.listPageBtnsLc' revmsg='true' param='2' text='附近玩家' text_color='#E6D284'/>"
	.."	<edit id='xPosEdit_f' x='476' y='492' w='25' h='15' revmsg='true' enable='false' text='X:' font='system'/>"
	.."	<edit id='xPosEdit' x='501' y='489' w='40' h='20' type='number'canedit='true'  align='center' limit='5' revmsg='true' text='0' font='system'/>"
	.."	<edit id='yPosEdit_f' x='578' y='491' w='25' h='15' revmsg='true' enable='false' text='Y:' font='system'/>"
	.."	<edit id='yPosEdit' x='603' y='489' w='40' h='20' align='center' canedit='true' type='number' limit='5' revmsg='true' text='0' font='system'/>"
	.."	<button id='gotoPos' image='1806100002' x='675' y='483' w='88' h='31' OnLButtonClick='BigMapWindow.gotoPosLc' revmsg='true' text='前  往'/>"
	.." </dialog>"
	.."</form>"


function BigMapWindow.main()
	if GetWindow("","BigMapWindow") ~= 0 then
		BigMapWindow.wndClose()
	else
		GenFormByString(ui)
	end
end

function BigMapWindow.UIInit(bm)
	BigMapWindow.wndHandle = bm
	GUIWndSetSizeM(bm, 811, 551)
	if CurrentMapKeyName == nil then
		BigMapWindow.cmKeyName = CLGetCurMapKeyName()
		CurrentMapKeyName = BigMapWindow.cmKeyName
	else
		BigMapWindow.cmKeyName = CurrentMapKeyName
	end
	BigMapWindow.mapNameEdit = GUIWndFindWindow(BigMapWindow.wndHandle, "mapNameEdit") 
	--for i = 1, #Map.zoneKeyName do
		--if Map.zoneKeyName[i] == BigMapWindow.cmKeyName then
			
			GUIEditSetTextM(BigMapWindow.mapNameEdit, CLGetMapNameByKeyName(BigMapWindow.cmKeyName))
			--break
		--end
	--end
	
	local _GUIHandle = 0
	_GUIHandle = GUIWndFindWindow(0, "WorldMap") 
	if _GUIHandle ~= 0 then
		GUIWndClose(_GUIHandle)
	end
	
	_GUIHandle = GUIWndFindChildM(bm, "currentMap")	--当前地图按钮
	if _GUIHandle ~= 0 then
		GUIWndSetTextOffset(_GUIHandle, 0, 2)
		GUIButtonSetIsActivePageBtn(_GUIHandle, true)
	end
    
	_GUIHandle = GUIWndFindChildM(bm, "worldMap")	--世界地图
	if _GUIHandle ~= 0 then
		GUIWndSetTextOffset(_GUIHandle, 0, 2)
	end
	
	_GUIHandle = GUIListBoxCreate(bm, "unitList", 641, 99, 135, 372)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbDbClick, "BigMapWindow.listLdc")
	end
	
	_GUIHandle = GUIWndFindChildM(bm, BigMapWindow.listPageBtns[1])
	if _GUIHandle ~= 0 then BigMapWindow.listPageBtnsLc(_GUIHandle) end
end

function BigMapWindow.worldMapLc()
	UI:Lua_OpenWindow(0, "WorldMap.lua")
end

function BigMapWindow.listPageBtnsLc(_Handle)
	updataPageBtnByHandle(BigMapWindow.listPageBtns, _Handle)
	
	local listType = GUIWndGetParam(_Handle)
	BigMapWindow.listType = listType
	if listType == 1 then
		CLGetMapNpcList(BigMapWindow.cmKeyName)
		BigMapWindow.unitList[listType] = getTable(as3.tolua(LuaRet))
		--msg(""..type(BigMapWindow.unitList[listType][1]).."npc表长度="..#BigMapWindow.unitList[listType])
		
		CLGetJumpList(BigMapWindow.cmKeyName)
		BigMapWindow.unitList[3] = getTable(as3.tolua(LuaRet))
		--msg(""..type(BigMapWindow.unitList[3][1]).."长度="..#BigMapWindow.unitList[3]) --transmitPointTB[1]是usedata
		
	elseif listType == 2 then
		if BigMapWindow.cmKeyName == CLGetCurMapKeyName() then
			CLGetNearPlayerList(BigMapWindow.cmKeyName)
			BigMapWindow.unitList[listType] = getTable(as3.tolua(LuaRet))
			--msg(""..type(BigMapWindow.unitList[listType]).."表长度="..#BigMapWindow.unitList[listType])
			--msg(""..type(BigMapWindow.unitList[listType]))
		end
	end
	
	

	if BigMapWindow.unitList[listType] == {} or BigMapWindow.unitList[listType] == nil then return end
	
	for i = 1, #BigMapWindow.unitList[listType] do
		BigMapWindow.unitList[listType][i] = getTable(BigMapWindow.unitList[listType][i])
	end
	
	
	local _GUIHandle = GUIWndFindWindow(BigMapWindow.wndHandle, "unitList")
	GUIListBoxClear(_GUIHandle)
	if _GUIHandle ~= 0 then
		for i = 1, #BigMapWindow.unitList[listType] do
			GUIListBoxAddString(_GUIHandle, BigMapWindow.unitList[listType][i][1], CLMakeARGB(255, 230, 210, 132))
			--GUIListBoxAddString(_GUIHandle, "测试", CLMakeARGB(255, 230, 210, 132))
			--msg(""..BigMapWindow.unitList[listType][i][1])
		end
		if listType == 1 then 
			if #BigMapWindow.unitList[3] == 0 then 
				return
			end
			for i = 1, #BigMapWindow.unitList[3] do
				BigMapWindow.unitList[3][i] = getTable(BigMapWindow.unitList[3][i])
			end
			for i = 1, #BigMapWindow.unitList[3] do
				--msg('进入'.."BigMapWindow.unitList[3][i][1]="..BigMapWindow.unitList[3][i][1])
				GUIListBoxAddString(_GUIHandle, BigMapWindow.unitList[3][i][1], CLMakeARGB(255, 230, 210, 132))
				--GUIListBoxAddString(_GUIHandle, "测试", CLMakeARGB(255, 230, 210, 132))
				--msg(""..BigMapWindow.unitList[listType][i][1])
			end
		end
		
	end
end

function BigMapWindow.listLdc(_Handle)
	if CLGetCurMapKeyName() ~= BigMapWindow.cmKeyName then return end
	local index = GUIListBoxGetCurSelLine(_Handle) + 1
	if BigMapWindow.listType == 1 then
		local len = #BigMapWindow.unitList[1]
		if index <= len then 
			CLAutoRunByNpcName(BigMapWindow.unitList[1][index][2])
			UI:Lua_SubmitForm("地图表单", "Position", BigMapWindow.unitList[1][index][2]) 
		else
			local i = index - len 
			CLAutoRunByPos(BigMapWindow.cmKeyName, BigMapWindow.unitList[3][i][2], BigMapWindow.unitList[3][i][3])
		end
		
	elseif BigMapWindow.listType == 2 then
		CLAutoRunByPos(BigMapWindow.cmKeyName, BigMapWindow.unitList[2][index][2], BigMapWindow.unitList[2][index][3])
	end
	
end

function BigMapWindow.gotoPosLc()
	local _GUIHandle, xPos, yPos = 0, 0, 0
	_GUIHandle = GUIWndFindWindow(BigMapWindow.wndHandle, "xPosEdit")
	if _GUIHandle ~= 0 then xPos = GUIEditGetTextM(_GUIHandle) end
	_GUIHandle = GUIWndFindWindow(BigMapWindow.wndHandle, "yPosEdit")
	if _GUIHandle ~= 0 then yPos = GUIEditGetTextM(_GUIHandle) end
	CLAutoRunByPos(BigMapWindow.cmKeyName, xPos, yPos)
end

function BigMapWindow.setEdit(xx,yy) 
	local _GUIHandle = GUIWndFindWindow(BigMapWindow.wndHandle, "xPosEdit")
	if _GUIHandle ~= 0 then  GUIEditSetTextM(_GUIHandle,""..xx) end
	_GUIHandle = GUIWndFindWindow(BigMapWindow.wndHandle, "yPosEdit")
	if _GUIHandle ~= 0 then  GUIEditSetTextM(_GUIHandle,""..yy) end
end

function BigMapWindow.wndClose()
	local wnd = GUIWndFindWindow(0, "BigMapWindow") 
	if wnd == 0 then
		BigMapWindow = nil
	end
end

BigMapWindow.main()