ShenLuWnd = {}
function ShenLuWnd.main()	
	local _handle = GetWindow(nil,"ShenLuWnd")
	if _handle ~= 0 then
		GUIWndClose(_handle)
		--msg("�ر�")
	else	
		local ui = "<form> <dialog OnInit='ShenLuWnd.UIInit' id='ShenLuWnd' image='1803900035' x='0' y='0' w='434' h='503' center = 'true' esc_close='true' drag='true' revmsg='true'>"
		.."	<image id='ShenLuWnd_title' image='1801500089' x='176' y='7' w='78' h='25' check_point='0' revmsg='true' enable='false'/>"
		.."	<button id='close' image='1800000068' x='374' y='11' w='24' h='24' OnLButtonUp='ShenLuWnd.closeWnd' revmsg='true'/>"
		
		.."	<button id='button1' image='1803900026' x='-5' y='66' w='34' h='76' OnLButtonUp='ShenLuWnd.XueFu' revmsg='true' text='����' text_color='#CEB362'>"
		.."	<image id='showNum1' image='1804600026' x='0' y='0' w='20' h='20' enable='false' visible='false' check_point='0' revmsg='true'/>"
		.." </button>"
		
		.."	<button id='button2' image='1803900026' x='-5' y='129' w='34' h='76' OnLButtonUp='ShenLuWnd.HuDun' revmsg='true' text='����' text_color='#CEB362'>"
		.."	<image id='showNum2' image='1804600026' x='0' y='0' w='20' h='20' enable='false' visible='false' check_point='0' revmsg='true'/>"
		.." </button>"
		
		.."	<button id='button3' image='1803900026' x='-5' y='192' w='34' h='76' OnLButtonUp='ShenLuWnd.BaoShi' revmsg='true' text='����' text_color='#CEB362'>"
		.."	<image id='showNum3' image='1804600026' x='0' y='0' w='20' h='20' enable='false' visible='false' check_point='0' revmsg='true'/>"
		.." </button>"
		
		.."	<button id='button4' image='1803900026' x='-5' y='257' w='34' h='76' OnLButtonUp='ShenLuWnd.HunZhu' revmsg='true' text='����' text_color='#CEB362'>"
		.."	<image id='showNum4' image='1804600026' x='0' y='0' w='20' h='20' enable='false' visible='false' check_point='0' revmsg='true'/>"
		.." </button>"
		
		.."	<image id='image_back' image='1803900004' x='29' y='40' w='378' h='279' check_point='0' revmsg='true'/>"
		.."	<image id='item_image' image='1803900001' x='175' y='97' w='89' h='89' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' x='192' y='115' w='55' h='55' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
		.."	<image id='gong_image1' image='1802400023' x='44' y='208' w='146' h='81' check_point='0' revmsg='true'/>"
		.."	<image id='gong_image2' image='1802400023' x='248' y='208' w='146' h='81' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_28' image='1800000366' x='198' y='217' w='43' h='58' check_point='0' revmsg='true'/>"
		.."	<edit id='sm2' x='59' y='208' w='65' h='32' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<edit id='sm1' x='59' y='233' w='65' h='32' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<edit id='sm3' x='59' y='256' w='65' h='32' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<edit id='sz2' x='117' y='212' w='80' h='26' revmsg='true' font='system'/>"
		.."	<edit id='sz1' x='117' y='237' w='80' h='26' revmsg='true' font='system'/>"
		.."	<edit id='sz3' x='117' y='260' w='80' h='26' revmsg='true' font='system'/>"
		.."	<edit id='hsm2' x='261' y='208' w='65' h='32' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<edit id='hsm1' x='261' y='233' w='65' h='32' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<edit id='hsm3' x='261' y='256' w='65' h='32' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<edit id='hsz2' x='320' y='212' w='80' h='26' revmsg='true' text_color='#00FF01' font='system'/>"
		.."	<edit id='hsz1' x='320' y='237' w='80' h='26' revmsg='true' text_color='#00FF01' font='system'/>"
		.."	<edit id='hsz3' x='320' y='260' w='80' h='26' revmsg='true' text_color='#00FF01' font='system'/>"
		.."	<image id='back1' image='1803900020' x='173' y='343' w='96' h='26' image_color='#C2B6A0' check_point='0' revmsg='true'/>"
		.."	<image id='back2' image='1803900020' x='173' y='389' w='96' h='26' image_color='#C2B6A0' check_point='0' revmsg='true'/>"
		.."	<edit id='sm4' x='91' y='345' w='72' h='25' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<edit id='sz4' x='185' y='344' w='74' h='24' align='center' revmsg='true' font='system'/>"
		.."	<edit id='sm5' x='90' y='391' w='72' h='25' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<edit id='sz5' x='185' y='389' w='74' h='24' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<button id='shengji' image='1803900005' x='156' y='424' w='132' h='57' OnLButtonUp='ShenLuWnd.get' revmsg='true' text_color='#C2B6A0'/>"
		.."	<image id='sj_back' image='1803900030' x='189' y='430' w='54' h='28' revmsg='false' enable='false' check_point='0' />"
		.."	<button id='zhulsm' image='1800000297' x='39' y='451' w='27' h='30' revmsg='true' text_color='#C2B6A0'/>"
		.."	<richedit id='sm6' x='294' y='383' w='100' h='30' OnLButtonUp='ShenLuWnd.buy' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<richedit id='sm7' x='68' y='458' w='70' h='30' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<richedit id='sm8' x='303' y='449' w='100' h='30' OnLButtonUp='ShenLuWnd.elseitem' revmsg='true' text_color='#C2B6A0' font='system'/>"
		
		
		
		
		.." </dialog>"
		.."</form>"
		GenFormByString(ui)
	end
end
hint = {
	"<font color='#D58840'>����˵����\n</font><font color='#B8A085'>1.�������Լ������ǿ��������\n2.����ӡ�ǿ���ͨ�����ϸ�������ɱBOSS������װ���ȷ�ʽ���\n3.ħ����Ƭ����ͨ��ǰ�����µ���ɱBOSS���ռ��������ƶһ��ȷ�ʽ���\n4.�������ܱ�ǿ����ע��</font>",
	"<font color='#D58840'>����˵����\n</font><font color='#B8A085'>1.���ƿ��Լ������ӷ�������\n2.���Ʋ�Ƭ����ͨ�����ϸ�������ɱBOSS������װ���ȷ�ʽ���\n3.ħ����Ƭ����ͨ��ǰ�����µ���ɱBOSS���ռ��������ƶһ��ȷ�ʽ���\n4.��������Ƶ�ǿ����ע��ȼ�����</font>",
	"<font color='#D58840'>����˵����\n</font><font color='#B8A085'>1.������Լ�������ӹ�������\n2.������Ƭ����ͨ�����ϸ�����̽�����ֶһ��ȷ�ʽ���\n3.���������ǿ����ע��ȼ�����</font>",
	"<font color='#D58840'>����˵����\n</font><font color='#B8A085'>1.������Լ�������ӱ�����\n2.��֮�����ͨ�����ϸ�������ɱBOSS���̳ǹ���ȷ�ʽ���\n3.�����������ǿ����ע��ȼ�����</font>",
}
str = {
	{"�������ޣ�","","","���Ļ���ӡ�ǣ�","ӵ�л���ӡ�ǣ�","","#SELECT#����˵��#SELECTEND#","#SELECT#����������#SELECTEND#"},
	{"���������","ħ��������","","���Ķ��Ʋ�Ƭ��","ӵ�ж��Ʋ�Ƭ��","","#SELECT#����˵��#SELECTEND#","#SELECT#�������ƣ�#SELECTEND#"},
	{"��������","ħ��������","����������","���ı�����Ƭ��","ӵ�б�����Ƭ��","#SELECT#��������Ƭ��#SELECTEND#","#SELECT#����˵��#SELECTEND#","#SELECT#�������飾#SELECTEND#"},
	{"�����˺�","�����ʣ�","","���Ŀ�֮�飺","ӵ�п�֮�飺","#SELECT#�����֮�飾#SELECTEND#","#SELECT#����˵��#SELECTEND#","#SELECT#�������飾#SELECTEND#"},
}

--���鱩���˺�
local hunzhu_burstharm = {180,360,653,947,1376,1806,2357,2909,3576,4243,5001,5760,6632,7504,8528,9552,11970,14849,18290,22408,28047,0}


ShenLuWnd.WndHandle = 0
ShenLuWnd.job = 0
ShenLuWnd._control = {}
ShenLuWnd.need = 0
ShenLuWnd.ElseItem = 0
function ShenLuWnd.UIInit(_GUIHandle)	
	ShenLuWnd.WndHandle = _GUIHandle
	
	local _handle = 0;
	for i = 1, 4 do
		_handle = GUIWndFindChildM(ShenLuWnd.WndHandle, "button"..i)
		ShenLuWnd._control["button"..i] = _handle
		GUIWndSetTextArrangeType(_handle,4,-2,4,1);
		GUIButtonSetStateTextColor(_handle,0,MakeARGB(255, 100, 96, 80))
		GUIButtonSetStateTextColor(_handle,2,MakeARGB(255, 201, 184, 116))
	end	
	
	for i = 6 , 8 do  
		_handle = GetWindow(ShenLuWnd.WndHandle,"sm"..i)
		if _handle ~= 0 then ShenLuWnd._control["sm"..i] = _handle end
	end
	_handle = GetWindow(nil,"ShenLuWnd,item")	
	if _handle ~= 0 then ShenLuWnd._control["item"] = _handle end
	ShenLuWnd.XueFu(ShenLuWnd._control["button1"])
	--UI:Lua_SubmitForm("��¯��", "xuefu", "")
	--GUIWndSetHint(ShenLuWnd._control["sm7"], hint[1])	
	--ButtonSetIsActivePageBtn(_GUIHandle,"button1",true)
	WndMoveToParentTop(ShenLuWnd.WndHandle,"button1")	
end	

function ShenLuWnd.ShowLevelupPrompt(tb)
	local handle = 0
	for i = 1, 4 do
		handle = GetWindow(nil, "ShenLuWnd,button"..i..",showNum"..i)
		if handle ~= 0 then
			if tb[i] ~= 0 then
				GUIWndSetVisible(handle, true)
				
			else
				GUIWndSetVisible(handle, false)
				
			end
		end
	end
end

function ShenLuWnd.XueFu(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(ShenLuWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(ShenLuWnd.WndHandle,"button1",true)
		WndMoveToParentTop(ShenLuWnd.WndHandle,"button1")
		for i = 1 , 4 do 
			local _handle1 = GetWindow(nil,"ShenLuWnd, ElseItem"..i)
			if _handle1 ~= 0 then
			GUIWndClose(_handle1)
			ShenLuWnd.ElseItem = 0
			end
			if i >= 3 then 
				local _handle2 = GetWindow(nil,"ShenLuWnd, ShenLu_buy"..i)
				if _handle2 ~= 0 then
				GUIWndClose(_handle2)
				end
			end
		end
		UI:Lua_SubmitForm("��¯��", "xuefu", "")
		GUIWndSetHint(ShenLuWnd._control["sm7"], hint[1])
	end	
	--GUIWndSetVisible(ShenLuWnd.WndHandle,"sm6",false)
	
end
	
function ShenLuWnd.HuDun(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(ShenLuWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(ShenLuWnd.WndHandle,"button2",true)
		WndMoveToParentTop(ShenLuWnd.WndHandle,"button2")
		for i = 1 , 4 do 
			local _handle1 = GetWindow(nil,"ShenLuWnd, ElseItem"..i)
			if _handle1 ~= 0 then
			GUIWndClose(_handle1)
			ShenLuWnd.ElseItem = 0
			end
			if i >= 3 then 
				local _handle2 = GetWindow(nil,"ShenLuWnd, ShenLu_buy"..i)
				if _handle2 ~= 0 then
				GUIWndClose(_handle2)
				end
			end
		end
		UI:Lua_SubmitForm("��¯��", "hudun", "")

		GUIWndSetHint(ShenLuWnd._control["sm7"], hint[2])
	end
	
end
function ShenLuWnd.BaoShi(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(ShenLuWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(ShenLuWnd.WndHandle,"button3",true)
		WndMoveToParentTop(ShenLuWnd.WndHandle,"button3")
		for i = 1 , 4 do 
			local _handle1 = GetWindow(nil,"ShenLuWnd, ElseItem"..i)
			if _handle1 ~= 0 then
			GUIWndClose(_handle1)
			ShenLuWnd.ElseItem = 0
			end
			if i >= 3 then 
				local _handle2 = GetWindow(nil,"ShenLuWnd, ShenLu_buy"..i)
				if _handle2 ~= 0 then
				GUIWndClose(_handle2)
				end
			end
		end
		UI:Lua_SubmitForm("��¯��", "baoshi", "")
		GUIWndSetHint(ShenLuWnd._control["sm7"], hint[3])
	end	
end
function ShenLuWnd.HunZhu(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		for i = 1 , 4 do 
			ButtonSetIsActivePageBtn(ShenLuWnd.WndHandle,"button"..i,false)
		end
		ButtonSetIsActivePageBtn(ShenLuWnd.WndHandle,"button4",true)
		WndMoveToParentTop(ShenLuWnd.WndHandle,"button4")
		for i = 1 , 4 do 
			local _handle1 = GetWindow(nil,"ShenLuWnd, ElseItem"..i)
			if _handle1 ~= 0 then
			GUIWndClose(_handle1)
			ShenLuWnd.ElseItem = 0
			end
			if i >= 3 then 
				local _handle2 = GetWindow(nil,"ShenLuWnd, ShenLu_buy"..i)
				if _handle2 ~= 0 then
				GUIWndClose(_handle2)
				end
			end
		end
		UI:Lua_SubmitForm("��¯��", "hunzhu", "")
		GUIWndSetHint(ShenLuWnd._control["sm7"], hint[4])
	end
end

function ShenLuWnd.updata(data,tb)
	local index = tonumber(data[1])
	for i = 1 , 8 do 
		if i < 4 then
			EditSetText(ShenLuWnd.WndHandle,"sm"..i,"")
			EditSetText(ShenLuWnd.WndHandle,"sz"..i,"")
			EditSetText(ShenLuWnd.WndHandle,"hsm"..i,"")
			EditSetText(ShenLuWnd.WndHandle,"hsz"..i,"")
		elseif i >= 4 and i <= 5 then 
			EditSetText(ShenLuWnd.WndHandle,"sm"..i,"")
		elseif i > 5 then
			GUIRichEditClear(ShenLuWnd._control["sm"..i])
		end
	end
	for i = 1 , 8 do 
		if i < 4 then
			EditSetText(ShenLuWnd.WndHandle,"sm"..i,str[index][i])
			EditSetText(ShenLuWnd.WndHandle,"hsm"..i,str[index][i])
		elseif i >= 4 and i <= 5 then 
			EditSetText(ShenLuWnd.WndHandle,"sm"..i,str[index][i])
		elseif i > 5 then
			GUIRichEditAppendString(ShenLuWnd._control["sm"..i],str[index][i])
		end
	end
	ShenLuWnd.need = tonumber(data[4])
	EditSetText(ShenLuWnd.WndHandle,"sz4",""..ShenLuWnd.need)
	local chip = tonumber(data[5])
	ShenLuWnd.chipupdata(chip)
	if index == 1 then
		local xuefu_lv = tonumber(data[2])
		local xuefu_tab = data[3]
		local xuefu_nextlv = xuefu_lv + 1
		if xuefu_lv >= #xuefu_tab then xuefu_nextlv = xuefu_lv end
		RDItemCtrlSetGUIDataByKeyName(ShenLuWnd._control["item"], xuefu_tab[xuefu_nextlv], 1, true)
		if xuefu_lv <= 0 then
			EditSetText(ShenLuWnd.WndHandle,"sz1","0")
		else
			local temp1 = CLGetItemTemplateHandleByKeyName(xuefu_tab[xuefu_lv]) 
			if CLGetItemTemplatePropByHandle(temp1,74) then
				local sm_now = as3.tolua(LuaRet)
				EditSetText(ShenLuWnd.WndHandle,"sz1",""..sm_now)
			end
		end
		local temp2 = CLGetItemTemplateHandleByKeyName(xuefu_tab[xuefu_nextlv])
		if CLGetItemTemplatePropByHandle(temp2,74) then
			local sm_next = as3.tolua(LuaRet)
			EditSetText(ShenLuWnd.WndHandle,"hsz1",""..sm_next)
		end
	elseif index == 2 then
		local tab1 = {{76,77},{78,79}}
		local mi = 0 
		local ma = 0
		local hudun_lv = tonumber(data[2])
		local hudun_tab = data[3]
		local hudun_nextlv = hudun_lv + 1
		if hudun_lv >= #hudun_tab then hudun_nextlv = hudun_lv end
		RDItemCtrlSetGUIDataByKeyName(ShenLuWnd._control["item"], hudun_tab[hudun_nextlv], 1, true)
		if hudun_lv <= 0 then
			EditSetText(ShenLuWnd.WndHandle,"sz1","0")
			EditSetText(ShenLuWnd.WndHandle,"sz2","0")
		else
			local temp1 = CLGetItemTemplateHandleByKeyName(hudun_tab[hudun_lv]) 
			for i = 1 , 2 do 
				if CLGetItemTemplatePropByHandle(temp1,tab1[i][1]) then
					ma = as3.tolua(LuaRet)
				end
				if CLGetItemTemplatePropByHandle(temp1,tab1[i][2]) then
					mi = as3.tolua(LuaRet)
				end
				EditSetText(ShenLuWnd.WndHandle,"sz"..i,mi.." - "..ma)
			 end	
		end
		local temp2 = CLGetItemTemplateHandleByKeyName(hudun_tab[hudun_nextlv])
		for i = 1 , 2 do 
			if CLGetItemTemplatePropByHandle(temp2,tab1[i][1]) then
				ma = as3.tolua(LuaRet)
			end
			if CLGetItemTemplatePropByHandle(temp2,tab1[i][2]) then
				mi = as3.tolua(LuaRet)
			end
			EditSetText(ShenLuWnd.WndHandle,"hsz"..i,mi.." - "..ma)
		end	
	elseif index == 3 then
		local tab1 = {{80,81},{82,83},{84,85}}
		local mi = 0 
		local ma = 0
		local baoshi_lv = tonumber(data[2])
		local baoshi_tab = data[3]
		local baoshi_nextlv = baoshi_lv + 1
		if baoshi_lv >= #baoshi_tab then baoshi_nextlv = baoshi_lv end
		RDItemCtrlSetGUIDataByKeyName(ShenLuWnd._control["item"], baoshi_tab[baoshi_nextlv], 1, true)
		if baoshi_lv <= 0 then
			EditSetText(ShenLuWnd.WndHandle,"sz1","0")
			EditSetText(ShenLuWnd.WndHandle,"sz2","0")
			EditSetText(ShenLuWnd.WndHandle,"sz3","0")
		else
			local temp1 = CLGetItemTemplateHandleByKeyName(baoshi_tab[baoshi_lv]) 
			for i = 1 , 3 do 
				if CLGetItemTemplatePropByHandle(temp1,tab1[i][1]) then
					ma = as3.tolua(LuaRet)
				end
				if CLGetItemTemplatePropByHandle(temp1,tab1[i][2]) then
					mi = as3.tolua(LuaRet)
				end
				EditSetText(ShenLuWnd.WndHandle,"sz"..i,mi.." - "..ma)
			 end	
		end
		local temp2 = CLGetItemTemplateHandleByKeyName(baoshi_tab[baoshi_nextlv])
		for i = 1 , 3 do 
			if CLGetItemTemplatePropByHandle(temp2,tab1[i][1]) then
				ma = as3.tolua(LuaRet)
			end
			if CLGetItemTemplatePropByHandle(temp2,tab1[i][2]) then
				mi = as3.tolua(LuaRet)
			end
			EditSetText(ShenLuWnd.WndHandle,"hsz"..i,mi.." - "..ma)
		end
	elseif index == 4 then
		local hunzhu_lv = tonumber(data[2])
		local hunzhu_tab = data[3]
		local hunzhu_nextlv = hunzhu_lv + 1
		if hunzhu_lv >= #hunzhu_tab then hunzhu_nextlv = hunzhu_lv end
		RDItemCtrlSetGUIDataByKeyName(ShenLuWnd._control["item"], hunzhu_tab[hunzhu_nextlv], 1, true)
		if hunzhu_lv <= 0 then
			EditSetText(ShenLuWnd.WndHandle,"sz1","0")
			EditSetText(ShenLuWnd.WndHandle,"sz2","0")
		else
			EditSetText(ShenLuWnd.WndHandle,"sz1",""..hunzhu_burstharm[hunzhu_lv])
			local temp1 = CLGetItemTemplateHandleByKeyName(hunzhu_tab[hunzhu_lv]) 
			if CLGetItemTemplatePropByHandle(temp1,102) then
				local baojilu_now = as3.tolua(LuaRet)
				baojilu_now = baojilu_now/100
				EditSetText(ShenLuWnd.WndHandle,"sz2",""..baojilu_now..'%')
			end
		end
		
		EditSetText(ShenLuWnd.WndHandle,"hsz1",""..hunzhu_burstharm[hunzhu_nextlv])
		local temp2 = CLGetItemTemplateHandleByKeyName(hunzhu_tab[hunzhu_nextlv])
		if CLGetItemTemplatePropByHandle(temp2,102) then
			local baojilu_next = as3.tolua(LuaRet)
			baojilu_next = baojilu_next/100
			EditSetText(ShenLuWnd.WndHandle,"hsz2",""..baojilu_next..'%')
		end
		
	end
	ShenLuWnd.ShowLevelupPrompt(tb)
end

function ShenLuWnd.chipupdata(chip)
	if chip < ShenLuWnd.need then
		local handle = GetWindow(ShenLuWnd.WndHandle,"sz5")
		GUIEditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
	else
		local handle = GetWindow(ShenLuWnd.WndHandle,"sz5")
		GUIEditSetTextColor(handle, MakeARGB(255,255, 255, 255))
	end	
	EditSetText(ShenLuWnd.WndHandle,"sz5","")
	EditSetText(ShenLuWnd.WndHandle,"sz5",""..chip)
end

function ShenLuWnd.buy(_handle)
	for i = 3 , 4 do 	
		local Is_true = ButtonGetIsActivePageBtn(ShenLuWnd._control["button"..i])
		if Is_true then
			local _handle2 = GetWindow(nil,"ShenLuWnd, ElseItem"..i)
			if _handle2 ~= 0 then
				GUIWndClose(_handle2)
			end
			local _handle3 = GetWindow(nil,"ShenLuWnd, ShenLu_buy"..i)
			if _handle3 == 0 then
				UI:Lua_OpenWindow(ShenLuWnd.WndHandle, "ShenLu_buy"..i..".lua")
			else
				GUIWndClose(_handle3)
			end
		end
	end
end


function ShenLuWnd.elseitem(_handle)
	for i = 1 , 4 do 	
		local Is_true = ButtonGetIsActivePageBtn(ShenLuWnd._control["button"..i])
		if Is_true then
			local _handle2 = GetWindow(nil,"ShenLuWnd, ShenLu_buy"..i)
			if _handle2 ~= 0 then
				GUIWndClose(_handle2)
			end
			local _handle3 = GetWindow(nil,"ShenLuWnd, ElseItem"..i)
			if _handle3 == 0 then
				UI:Lua_OpenWindow(ShenLuWnd.WndHandle, "ElseItem"..i..".lua")
				ShenLuWnd.ElseItem = 1
			else
				GUIWndClose(_handle3)
				ShenLuWnd.ElseItem = 0
			end
		end
	end
end

function ShenLuWnd.get(_handle)
	local get_index = 0
	for i = 1 , 4 do 	
		local Is_true = ButtonGetIsActivePageBtn(ShenLuWnd._control["button"..i])
		if Is_true then
			 get_index = i
		end
	end
	if get_index == 1 then 
		UI:Lua_SubmitForm("��¯��", "get_xuefu", ""..ShenLuWnd.ElseItem)
	elseif get_index == 2 then
		UI:Lua_SubmitForm("��¯��", "get_hudun", ""..ShenLuWnd.ElseItem)
	elseif get_index == 3 then
		UI:Lua_SubmitForm("��¯��", "get_baoshi", ""..ShenLuWnd.ElseItem)
	elseif get_index == 4 then
		UI:Lua_SubmitForm("��¯��", "get_hunzhu", ""..ShenLuWnd.ElseItem)
	end
	UI:Lua_SubmitForm("��¯��", "ShowTolNum", "")
end	

function ShenLuWnd.msg_up(str)
	local _handle = GetWindow(nil,"ShenLuWnd,shengji")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -45 , -16 , 70 , color , 3)	
end	

function ShenLuWnd.closeWnd(_handle)	
	GUIWndClose(ShenLuWnd.WndHandle)
end

ShenLuWnd.main()