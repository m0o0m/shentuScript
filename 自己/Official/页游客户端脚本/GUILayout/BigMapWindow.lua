BigMapWindow = {}

BigMapWindow.localString = {}
--��ͼ����
if not Map then
	Map = {}
end
--[[Map.zoneKeyName = {
	"��ɽ��",	
	"�������",
	"���ٳ�",
	"а��1",
	"��ɽ��Ѩ1",
	"������1",
	"���ײ���1",
	"��·��",
	"��·��1",
	"����",
	"��ħ��",
	"����ڣ1",
	"��ħʯ��1",
	"�����1",
	"��ħ����1",
	"��·��"
}
Map.zoneShowName = {		
	"��ɽ��",		
	"�����ؾ�",	
	"���ٳ�",		
	"а��",		
	"��ɽ��Ѩ",	
	"������",	
	"���ײ���",	
	"��·��",		
	"��·��",		
	"����",		
	"��ħ��",		
	"����ڣ",		
	"��ħʯ��",	
	"�����",		
	"��ħ����",	
	"��·��",		
	"xxx",			
	"xxx",			
	"xxx",			
	"xxx"		
}
--]]
Map.zoneKeyName = {
"��ͼ����3",
"����֮��",
"��ɽ��",
"����",
"Ѱ���ᱦ",
"��ħ��",
"ҹϮ��ɽ��",
"˭������",
"��",
"��򼶴һ��",
"�����������",
"��ħ��һ��",
"��ħ������",
"��ħ������",
"�������",
"�������2",
"��򼶴����",
"��򼶴����",
"��һ��",
"������",
"������",
"��������һ��",
"�����������",
"��򼶴����",
"������",
"�������3",
"����",
"�����������",
"��������һ��",
"�����������",
"������������",
"ţħ��һ��",
"ţħ������",
"ţħ������",
"ʬħ��һ��",
"ʬħ������",
"ʬħ������",
"�������",
"����������",
"�����������",
"����������",
"��������Ĳ�",
"�������һ��",
"�°����ִ�",
"���Ǹ���",
"ħ����һ��",
"����������",
"�����������",
"��������Ĳ�",
"�������һ��",
"ħ���Ƕ���",
"ħ��������",
"ѩ����������",
"ѩ����������",
"δ֪����",
"BOSS����",
"������������",
"��Ľ�������",
"ѩ������һ��",
"�����������",
"������������",
"�������֮��",
"������ħ���",
"��ħ��һ��",
"��ħ������",
"��ħ������",
"�������һ��",
"����������",
"�����������",
"���׶�Ѩһ��",
"���׶�Ѩ����",
"���׶�Ѩ����",
"��ͨ�һ�",
"VIP1�һ�",
"VIP2�һ�",
"������һ��",
"���������",
"����������",
"���֮��һ��",
"���֮�Ƕ���",
"���֮������",
"������������",
"�����������",
"��������һ��",
"VIP3�һ�",
"VIP4�һ�",
"VIP5�һ�",
"VIP6�һ�",
"VIP7�һ�",
"VIP8�һ�",
"VIP9�һ�",
"VIP10�һ�",
"���µ�",
"��֮��",
"ת�����һ��",
"ת��������",
"ת���������",
"ת������Ĳ�",
"ת��������",
"ת���������",
"ת������߲�",
"ת�����˲�",
"�������һ��",
"����������",
"�����������",
"��������Ĳ�",
"BOSS��������",
"BOSS��������",
"���¶�ħ����",
"ţħ������",
"ħ����������",
"��������",
"������һ��",
"����������",
"����������",
"�������Ĳ�",
"���������",
"����������",
"�������߲�",
"�������˲�",
"�������Ų�",
"������ʮ��",
"������ʮһ��",
"������ʮ����",
"������ʮ����",
"���ǻʹ�",
"����",
"�����ܵ�",
"�����ؾ�"
}

Map.zoneShowName = {		
"��ͼ����3",
"����֮��",
"��ɽ��",
"����",
"Ѱ���ᱦ",
"��ħ��",
"ҹϮ��ɽ��",
"˭������",
"��",
"���涴һ��",
"ħ��Ͽ��",
"���Ƕ�һ��",
"���Ƕ�����",
"���Ƕ�����",
"�������",
"�������2",
"���涴����",
"���涴����",
"ʳ��ħ��Ѩһ��",
"ʳ��ħ��Ѩ����",
"ʳ��ħ��Ѩ����",
"�����һ��",
"��������",
"���涴",
"ʳ��ħ��Ѩ",
"�������3",
"����",
"а�����",
"а��һ��",
"а�����",
"а������",
"ţħ��һ��",
"ţħ������",
"ţħ������",
"��ҹ֮��һ��",
"��ҹ֮�ض���",
"��ҹ֮������",
"�����ؾ�",
"ħ��Ͽ�����",
"ħ��Ͽ������",
"ħ��Ͽ�ȶ���",
"ħ��Ͽ���Ĳ�",
"ħ��Ͽ��һ��",
"���ִ�",
"����",
"���ĳ�һ��",
"����������",
"����������",
"�������Ĳ�",
"������һ��",
"���ĳǶ���",
"���ĳ�����",
"����������",
"����������",
"��ħ��",
"�������һ��",
"��Ĺ���",
"���BOSS",
"������һ��",
"а��BOSS",
"�Ϲ�а��",
"�ڰ���̳",
"��ħʥ��",
"��ħ����һ��",
"��ħ���ض���",
"��ħ��������",
"��ɳ�ض�һ��",
"��ɳ�ض�����",
"��ɳ�ض�����",
"���׽���һ��",
"���׽��ض���",
"���׽�������",
"��ͨ�һ�",
"VIP1�һ�",
"VIP2�һ�",
"�����ؾ�һ��",
"�����ؾ�����",
"�����ؾ�����",
"ѩ�����һ��",
"ѩ���������",
"ѩ���������",
"�����ܵ�����",
"�����ܵ�����",
"�����ܵ�һ��",
"VIP3�һ�",
"VIP4�һ�",
"VIP5�һ�",
"VIP6�һ�",
"VIP7�һ�",
"VIP8�һ�",
"VIP9�һ�",
"VIP10�һ�",
"���µ���",
"��������",
"�ֻ�ʥ��һ��",
"�ֻ�ʥ�����",
"�ֻ�ʥ������",
"�ֻ�ʥ���Ĳ�",
"�ֻ�ʥ�����",
"�ֻ�ʥ������",
"�ֻ�ʥ���߲�",
"�ֻ�ʥ��˲�",
"Զ�����һ��",
"Զ��������",
"Զ���������",
"Զ������Ĳ�",
"������ض���",
"�����������",
"ħ��Ͽ��BOSS",
"ţħ��BOSS",
"���ĳ�BOSS",
"����BOSS",
"�޾���Ԩһ��",
"�޾���Ԩ����",
"�޾���Ԩ����",
"�޾���Ԩ�Ĳ�",
"�޾���Ԩ���",
"�޾���Ԩ����",
"�޾���Ԩ�߲�",
"�޾���Ԩ�˲�",
"�޾���Ԩ�Ų�",
"�޾���Ԩʮ��",
"�޾���Ԩʮһ��",
"�޾���Ԩʮ����",
"�޾���Ԩʮ����",
"�ʹ�",
"����",
"�����ܵ�",
"�����ؾ�"
}


local l = BigMapWindow.localString
l.gotoPos = "ǰ  ��"
l.xPosEdit_f = "X:"
l.yPosEdit_f = "Y:"
l.currentMap = "��ǰ��ͼ"
l.worldMap = "�����ͼ"
l.listPageBtns = {"N P C", "�������"}

BigMapWindow.listPageBtns = {"showNpc", "showPlayer"}
BigMapWindow.unitList = {}
BigMapWindow.cmKeyName = 0
BigMapWindow.mapNameEdit = 0
BigMapWindow.listType = 0

local ui = "<form> <dialog OnInit='BigMapWindow.UIInit' id='BigMapWindow' image='1807400001' x='42' y='173' w='811' h='551' center='true' OnClose='BigMapWindow.wndClose' magic='1' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='TestWndChild_3' image='1807400002' x='33' y='56' w='742' h='474' check_point='0' revmsg='true'/>"
	.."	<image id='wndTitleImage' image='1807400000' x='382' y='8' w='64' h='26' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeBtn' image='1805900080' x='757' y='2' w='34' h='38' OnLButtonClick='luaWndClose' revmsg='true'/>"
	.."	<button id='currentMap' image='1806500017' x='48' y='62' w='77' h='30' page_btn='true' revmsg='true' text='��ǰ��ͼ' text_color='#E6D284'/>"
	--.."	<button id='worldMap' image='1806500017' x='126' y='62' w='77' h='30' OnLButtonClick='BigMapWindow.worldMapLc' revmsg='true' text='�����ͼ' text_color='#E6D284'/>"
	.."	<image id='BigMapCtrl' image='0' x='35' y='94' w='600' h='376' check_point='0' revmsg='true'/>"
	.."	<image id='mapNameBackImg' image='1801900004' x='40' y='100' w='174' h='37' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='mapNameEdit' x='49' y='100' w='140' h='26' revmsg='true' enable='false' font='system'/>"
	.."	<image id='xPosEditImage' image='1807200005' x='491' y='488' w='60' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='yPosEditImage' image='1807200005' x='592' y='488' w='60' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='showNpc' image='1805600150' x='638' y='64' w='64' h='24' OnLButtonClick='BigMapWindow.listPageBtnsLc' revmsg='true' param='1' text='N P C' text_color='#E6D284'/>"
	.."	<button id='showPlayer' image='1805600150' x='707' y='64' w='64' h='24' OnLButtonClick='BigMapWindow.listPageBtnsLc' revmsg='true' param='2' text='�������' text_color='#E6D284'/>"
	.."	<edit id='xPosEdit_f' x='476' y='492' w='25' h='15' revmsg='true' enable='false' text='X:' font='system'/>"
	.."	<edit id='xPosEdit' x='501' y='489' w='40' h='20' type='number'canedit='true'  align='center' limit='5' revmsg='true' text='0' font='system'/>"
	.."	<edit id='yPosEdit_f' x='578' y='491' w='25' h='15' revmsg='true' enable='false' text='Y:' font='system'/>"
	.."	<edit id='yPosEdit' x='603' y='489' w='40' h='20' align='center' canedit='true' type='number' limit='5' revmsg='true' text='0' font='system'/>"
	.."	<button id='gotoPos' image='1806100002' x='675' y='483' w='88' h='31' OnLButtonClick='BigMapWindow.gotoPosLc' revmsg='true' text='ǰ  ��'/>"
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
	
	_GUIHandle = GUIWndFindChildM(bm, "currentMap")	--��ǰ��ͼ��ť
	if _GUIHandle ~= 0 then
		GUIWndSetTextOffset(_GUIHandle, 0, 2)
		GUIButtonSetIsActivePageBtn(_GUIHandle, true)
	end
    
	_GUIHandle = GUIWndFindChildM(bm, "worldMap")	--�����ͼ
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
		--msg(""..type(BigMapWindow.unitList[listType][1]).."npc����="..#BigMapWindow.unitList[listType])
		
		CLGetJumpList(BigMapWindow.cmKeyName)
		BigMapWindow.unitList[3] = getTable(as3.tolua(LuaRet))
		--msg(""..type(BigMapWindow.unitList[3][1]).."����="..#BigMapWindow.unitList[3]) --transmitPointTB[1]��usedata
		
	elseif listType == 2 then
		if BigMapWindow.cmKeyName == CLGetCurMapKeyName() then
			CLGetNearPlayerList(BigMapWindow.cmKeyName)
			BigMapWindow.unitList[listType] = getTable(as3.tolua(LuaRet))
			--msg(""..type(BigMapWindow.unitList[listType]).."����="..#BigMapWindow.unitList[listType])
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
			--GUIListBoxAddString(_GUIHandle, "����", CLMakeARGB(255, 230, 210, 132))
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
				--msg('����'.."BigMapWindow.unitList[3][i][1]="..BigMapWindow.unitList[3][i][1])
				GUIListBoxAddString(_GUIHandle, BigMapWindow.unitList[3][i][1], CLMakeARGB(255, 230, 210, 132))
				--GUIListBoxAddString(_GUIHandle, "����", CLMakeARGB(255, 230, 210, 132))
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
			UI:Lua_SubmitForm("��ͼ��", "Position", BigMapWindow.unitList[1][index][2]) 
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