OtaCrystal ={}
local ui = "<form default_parent = 'CrystalSystem'> <dialog OnInit='OtaCrystal.UIInit' id='OtaCrystal' image='1803700017' x='34' y='81' w='564' h='342' revmsg='true'>"
	.."	<image id='backimg1' image='1803700013' x='121' y='115' w='72' h='72' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='entity_item' x='126' y='120' w='62' h='62' use_back='-1' rbtn_use='true' enable='true' OnItemMoveIn = 'OtaCrystal.OnMoveIn' OnLButtonDown='OtaCrystal.itemClick' revmsg='true' count='0'/>"
	.."	<image id='backimg2' image='1803700013' x='383' y='115' w='72' h='72' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='template_item' x='388' y='120' w='62' use_back='-1' h='62' rbtn_use='true' enable='true' revmsg='true'/>"
	
	.."	<image id='img1' image='1803700002' x='391' y='83' w='60' h='36' check_point='0' revmsg='true'/>"
	.."	<edit id='entity_item_num' x='148' y='183' w='27' h='22' revmsg='true' text_color='#C2B6A0' font='system'/>"
	
	.."	<button id='ota_btn1' image='1803700007' x='240' y='250' w='88' h='31' OnLButtonUp='OtaCrystal.otaStone' revmsg='true' text='�� ��' enable='false' text_color='#C2B6A0'/>"
	--.."	<button id='ota_btn2' image='1803700007' x='376' y='235' w='88' h='31' OnLButtonUp='OtaCrystal.btn2Clicked' revmsg='true' text='��������' text_color='#C2B6A0'/>"
	.."	<image id='TestWndChild_13' image='1800800003' x='290' y='213' w='103' h='21' revmsg='true'/>"
	.."	<image id='bind_gold_img' image='1806600014' x='291' y='215' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='gold_num' x='312' y='215' w='59' h='17' revmsg='true' text_color='#C2B6A0' text='0' font='system'/>"
	.."	<edit id='tt' x='218' y='216' w='59' h='17' revmsg='true' text_color='#C2B6A0' text='���Ľ�ң�' font='system'/>"
	.."	<image id='img2' image='1800000366' x='270' y='125' w='43' h='58' check_point='0' revmsg='true'/>"
	.."	<image id='arrowMagic' image='3020200700' type='animate' x='262' y='125' w='43' h='58' check_point='0'/>"

	.."	<edit id='itemName' x='383' y='190' w='100' h='15' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<image id='aMagic' image='3020300900' type='animate' x='163' y='-19' w='193' h='313'/>"
	
	.."	<richedit id='buy' x='472' y='280' w='68' h='20' text='#SELECT#��ݹ���#SELECTEND#' OnLButtonUp='OtaCrystal.buy' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"
	
function OtaCrystal.main()
	GenFormByString(ui)
end

OtaCrystal.itemlist = {"���﹥��ʯ","��ħ����ʯ","��������ʯ","�������ʯ","��ħ����ʯ","��������ʯ"}


--UI Logic Code Start
function OtaCrystal.UIInit(_Handle)
	OtaCrystal.handle = _Handle
	OtaCrystal.num = 0                         --��������ʯ����
	OtaCrystal.Maxnum = 0
	OtaCrystal.flag = 0                        --��־λ
	OtaCrystal.Crystal_nowlevel = 2            --��ʯ��ǰ�ȼ�
	OtaCrystal.otaIndex = 2                    --������������������
	OtaCrystal.keyname2 = ""                   --������ʯ
	OtaCrystal.costGold = 0                    --����������
	OtaCrystal.ReqNum = 0                      --�����������豦ʯ����
	--OtaCrystal.updateBtn()
	OtaCrystal.firstClicked = 0
	

	local handle = GUIWndFindChildM(_Handle,"ota_btn1")   
	if handle ~= 0 then 
		GUIButtonSetStateTextColor(handle,0,MakeARGB(255, 192, 182, 160))
		GUIButtonSetStateTextColor(handle,2,MakeARGB(255, 237, 192, 161))
	end
	
	--UI:Lua_SubmitForm("��ʯ������","InitialItemList","")
end

function OtaCrystal.down_btn()
	--msg("��һҳ"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	OtaCrystal.flag = 1
	OtaCrystal.num = 0
	OtaCrystal.Maxnum = 0
	local _GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"nowlevel")            --��һҳ
	if _GUIHandle ~= 0 then
		OtaCrystal.Crystal_nowlevel = GUIEditGetInt(_GUIHandle)
		if OtaCrystal.Crystal_nowlevel < 10 then
			OtaCrystal.Crystal_nowlevel = OtaCrystal.Crystal_nowlevel + 1
		end
	end
	--OtaCrystal.showItemlist(OtaCrystal.Crystal_nowlevel)
	UI:Lua_SubmitForm("��ʯ������","InitialItemList","")
	--OtaCrystal.cleanUI()
end

function OtaCrystal.up_btn()
	--msg("��һҳ"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	OtaCrystal.flag = 1
	OtaCrystal.num = 0
	OtaCrystal.Maxnum = 0
	local _GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"nowlevel")            --��һҳ
	if _GUIHandle ~= 0 then
		OtaCrystal.Crystal_nowlevel = GUIEditGetInt(_GUIHandle)
		if OtaCrystal.Crystal_nowlevel > 2 and OtaCrystal.Crystal_nowlevel <= 10 then
			OtaCrystal.Crystal_nowlevel = OtaCrystal.Crystal_nowlevel - 1
		end
	end
	--OtaCrystal.showItemlist(OtaCrystal.Crystal_nowlevel)
	UI:Lua_SubmitForm("��ʯ������","InitialItemList","")
	--OtaCrystal.cleanUI()
end

function OtaCrystal.showItemlist(Crystal_level)
	--msg("��ʾ�б�"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked= OtaCrystal.firstClicked + 1
	local _GUIHandle = 0
	local itemHandle = 0
	for i = 1 , #OtaCrystal.itemlist do
		_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",item_text")              --��ʯ�б���ʾ
		if _GUIHandle ~=0 then 
			GUIRichEditClear(_GUIHandle)
			GUIRichEditAppendString(_GUIHandle,Crystal_level..OtaCrystal.itemlist[i])
			
		end
		itemHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",itemShow")              --��ʯ��Ʒ��ʾ
		if itemHandle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(itemHandle,Crystal_level..OtaCrystal.itemlist[i], 0, false)    --Ԥ�������
		end
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"nowlevel")
	GUIEditSetInt(_GUIHandle,Crystal_level)
	
	--if OtaCrystal.flag == 0 then
		OtaCrystal.num = 0
		local itmename = Crystal_level.."���﹥��ʯ"
		local GUIHandle = 0
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
			if GUIHandle ~= 0 then 
				RDItemCtrlSetGUIDataByKeyName(GUIHandle,itmename, 0, false)    --Ԥ����Ʒ�����
			end
		local strs = strsplit(itmename, "��")
		local str1 = strs[1]
		local str2 = strs[2]
		local str = "" .. (tonumber(str1)-1).."��"..str2
		OtaCrystal.otaIndex = (tonumber(str1)-1)
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
		if GUIHandle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(GUIHandle,str, 0, false)    --���Ŀ����
		end
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")    --��ʾ Ԥ�� ��Ʒ ��keyname
		if GUIHandle ~= 0 then
			GUIEditSetTextM(GUIHandle,itmename)
			OtaCrystal.keyname2 = itmename
		end
		if OtaCrystal.flag == 0 then OtaCrystal.flag = 1 return end
		UI:Lua_SubmitForm("��ʯ������","getItemNum",str .."#".. str1)
		--OtaCrystal.flag = 1
	--	return
	--end
	
	--OtaCrystal.updateBtn()
end

function OtaCrystal.updateBtn() 
	--msg("���°�ť"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked= OtaCrystal.firstClicked + 1
	local GUIHandle = 0       
	local _GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"nowlevel")        --��ť״̬����
	OtaCrystal.Crystal_nowlevel = GUIEditGetInt(_GUIHandle)
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"up_page")
	if OtaCrystal.Crystal_nowlevel == 2 then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"down_page") 
	if OtaCrystal.Crystal_nowlevel == 10 then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"up_btn")
	
	if OtaCrystal.num == 1 or OtaCrystal.num == 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"down_btn")
	if OtaCrystal.num == OtaCrystal.Maxnum or OtaCrystal.num == 0 then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")
	local Itemname = EditGetText(GUIHandle)
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn2")
	if OtaCrystal.num >= 1 or Itemname == "" then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
	_GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn1")
	if Itemname == "" or OtaCrystal.num == 0  then
		GUIWndSetEnableM(_GUIHandle, false)
	else
		GUIWndSetEnableM(_GUIHandle, true)
	end
end

function OtaCrystal.inputNum(h)
	--msg("ҳ��ı�")
	GUIEditSetMaxCharNum(h, 2)
	OtaCrystal.flag = 1
	local a = 2
	if GUIEditGetInt(h) >=2 and GUIEditGetInt(h) <= 10 then
		a = GUIEditGetInt(h)
	else
		if GUIEditGetInt(h) < 2 then
			a = 2
		end
		if GUIEditGetInt(h) > 10 then
			a = 10
		end
	end
	--a = GUIEditGetInt(h)
	--OtaCrystal.showItemlist(a)
	UI:Lua_SubmitForm("��ʯ������","InitialItemList","")
	--OtaCrystal.cleanUI()

end

function OtaCrystal.OnMoveIn(this, GUIData, DragIn, _GUID, ItemId, _KeyName, ItemPos, IsBound, Count)
	
	OtaCrystal.num = 0		
	local mainType = 0 
	local subType = 0
	if _GUID ~= "" then
		if CLGetItemEntityPropByGUID(_GUID, ITEM_PROP_TYPE) then				--����guid��ȡ������
			mainType = as3.tolua(LuaRet)									--1Ϊװ����4Ϊ����	
		end
		if CLGetItemEntityPropByGUID(_GUID, ITEM_PROP_SUBTYPE) then	
			subType = as3.tolua(LuaRet)
		end
	end
	
	if mainType == 5 and subType == 6 then
		local strs = strsplit(_KeyName, "��")
		local str1 = strs[1]
		local str2 = strs[2]
		OtaCrystal.otaIndex = tonumber(str1)
		if tonumber(str1) < 10 then
			local a = tonumber(str1)                 --������ʯ�ȼ�
			
			local str = "" .. a .."��"..str2
			local GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
			if GUIHandle ~= 0 then
				RDItemCtrlSetGUIDataByKeyName(GUIHandle,str, 0, false)    --��౦ʯ�����
			end
			a = a+1
			local str = "" .. a .."��"..str2
			local GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
			if GUIHandle ~= 0 then
				RDItemCtrlSetGUIDataByKeyName(GUIHandle,str, 0, false)    --Ԥ�������
			end
			GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")    --��ʾ Ԥ�� ��Ʒ ��keyname
			if GUIHandle ~= 0 then
				GUIEditSetTextM(GUIHandle,str)
				OtaCrystal.keyname2 = str
			end
			UI:Lua_SubmitForm("��ʯ������","getItemNum",_KeyName .."#"..a)
			return false
		else
			OtaCrystal.msg(3)
		end
	else
		OtaCrystal.msg(8)
	end											
end

function OtaCrystal.putTemplateCrystal(this)
	OtaCrystal.num = 0
	local h = GetWindow(this, "item_text")
	local itmename = GUIRichEditGetAllString(h)
	local GUIHandle = 0
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
		if GUIHandle ~= 0 then 
			RDItemCtrlSetGUIDataByKeyName(GUIHandle,itmename, 0, false)    --Ԥ����Ʒ�����
		end
	local strs = strsplit(itmename, "��")
	local str1 = strs[1]
	local str2 = strs[2]
	local str = "" .. (tonumber(str1)-1).."��"..str2
	OtaCrystal.otaIndex = (tonumber(str1)-1)
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
	if GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataByKeyName(GUIHandle,str, 0, false)    --���Ŀ����
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")    --��ʾ Ԥ�� ��Ʒ ��keyname
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,itmename)
		OtaCrystal.keyname2 = itmename
	end
	UI:Lua_SubmitForm("��ʯ������","getItemNum",str .."#".. str1)
end

function OtaCrystal.setparam()
	--msg("�ص���һҳ"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	OtaCrystal.Crystal_nowlevel = 2
	OtaCrystal.num = 0
	UI:Lua_SubmitForm("��ʯ������","InitialItemList","")
end

function OtaCrystal.showNextLevelEnableList(tab)
	--msg("��ʾ��һ��"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	if #tab ~= 0 then
		local minLevel = 10                                --���������ı�ʯ�ܼ�����������ʾ�б�
		for k =1 , #tab do
			local t = strsplit(tab[k], ":")
			local _t = strsplit(t[1], "��")
			local number =tonumber(_t[1]) + 1
			if number < minLevel then
				minLevel = number
			end
		end
	OtaCrystal.showItemlist(minLevel)
	end
	OtaCrystal.showCrystalNum(tab)
end


function OtaCrystal.showCrystalNum(tab)
	--msg("�������ʾ��ҳ"..OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	local GUIHandle = 0
	local CrystalName = ""
	local minLevel = 10
	if OtaCrystal.flag == 0 then             --��ʼ����ʾ��ʯ�б�
		if #tab ~= 0 then
			for k =1 , #tab do
				local t = strsplit(tab[k], ":")
				local _t = strsplit(t[1], "��")
				local number =tonumber(_t[1]) + 1
				if number < minLevel then
					minLevel = number
				end
			end
		--msg("minlevel="..minLevel)
		--msg("nowlevel="..OtaCrystal.Crystal_nowlevel)
		OtaCrystal.Crystal_nowlevel = minLevel
		OtaCrystal.showItemlist(minLevel)
		--return
		end
	end

	for i = 1 ,6 do
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,itemWin,"itemWin,itemButton"..i..",itemnum")
		if GUIHandle ~= 0 then
			GUIEditSetTextM(GUIHandle,"")                                        --��ʼ����������ʯ����
		end
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",item_text")
		if GUIHandle ~= 0 then
			GUIRichEditSetDefaultTextColor(GUIHandle,MakeARGB(255,172,168,0))         --��ʼ����ɫ
		end
	end
	for i = 1 , 6 do
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",item_text")
		if GUIHandle ~= 0 then
			CrystalName = GUIRichEditGetAllString(GUIHandle)
		end
		for j = 1 , #tab do
			local a = strsplit(tab[j], ":")
			local itemName = a[1]
			local itemNum = a[2]
			local strs = strsplit(itemName, "��")
			local str1 = strs[1]
			local str2 = strs[2]
			itemName = "" .. (tonumber(str1)+1).."��"..str2
			if CrystalName == itemName then
				GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",itemnum")
				if GUIHandle ~= 0 then
					GUIEditSetTextM(GUIHandle,"��".. itemNum .."��")
					GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemWin,itemButton"..i..",item_text")
					if GUIHandle ~= 0 then
						--msg("set color???")
						GUIRichEditSetDefaultTextColor(GUIHandle,MakeARGB(255,112,184,80))     
					end
				end
			end
		end
	end
	OtaCrystal.showItemlist(OtaCrystal.Crystal_nowlevel)
	--********************************************************--
--[[	local str = ""..OtaCrystal.Crystal_nowlevel.."���﹥��ʯ"
	local uih = GUIWndFindWindow(OtaCrystal.handle,"template_item")
	if uih ~= 0 then
		RDItemCtrlSetGUIDataByKeyName(uih,str, 0, false)    --Ԥ�������
	end
	uih = GUIWndFindWindow(OtaCrystal.handle,"itemName")    --��ʾ Ԥ�� ��Ʒ ��keyname
	if uih ~= 0 then
		GUIEditSetTextM(uih,str)
		OtaCrystal.keyname2 = str
	end
	uih = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
	if uih ~= 0 then
		str = ""..(OtaCrystal.Crystal_nowlevel-1).."���﹥��ʯ"
		RDItemCtrlSetGUIDataByKeyName(uih,str, 0, false)    
	end
	UI:Lua_SubmitForm("��ʯ������","getItemNum",str .."#"..(OtaCrystal.Crystal_nowlevel-1))--]]
	
	--*********************************************************--
end

function OtaCrystal.selectNum(h) 
	local index = GUIWndGetParam(h)       --ѡ��Ҫ�����ı�ʯ����
	local GUIHandle = 0
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
	OtaCrystal.num = GUIEditGetInt(GUIHandle)
	if index == 1 then
		OtaCrystal.num = OtaCrystal.num - 1
		GUIEditSetInt(GUIHandle,OtaCrystal.num)
	elseif index == 2 then
		OtaCrystal.num = OtaCrystal.num + 1
		GUIEditSetInt(GUIHandle,OtaCrystal.num)
	end 
	if OtaCrystal.costGold ~= 0 and OtaCrystal.num ~= 0 then
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"gold_num")           --��ʾ���Ľ��
		local totalGold = OtaCrystal.costGold * OtaCrystal.num
		GUIEditSetInt(GUIHandle,totalGold)
	end
	
	OtaCrystal.updateBtn()
end



function OtaCrystal.OwnNum(num,gold)                       --�Լ����õı�ʯ������������������Ľ�Ǯ
	--msg("�Լ�ӵ�к������Ǯ".. OtaCrystal.firstClicked)
	--OtaCrystal.firstClicked = OtaCrystal.firstClicked + 1
	local GUIHandle = 0
	local reqNum = 0
	if gold ~= nil then
		if gold >= 10000 and gold <= 60000 then
			reqNum = 4
		elseif gold >= 70000 and gold <= 90000 then
			reqNum = 3
		else
			reqNum = 2 
		end
	end
	OtaCrystal.ReqNum = reqNum - num
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item_num")
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,num.."/".. reqNum)
	end
	OtaCrystal.Maxnum = math.floor(num/reqNum)
	if OtaCrystal.Maxnum > 0 then
		--GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
		OtaCrystal.num = 1 
		--GUIEditSetInt(GUIHandle,OtaCrystal.num)
		--msg("set option number")
	else
		--GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
		OtaCrystal.num = 0
		--GUIEditSetInt(GUIHandle,0)
	end
	if gold ~= nil then
		OtaCrystal.costGold = tonumber(gold)
		GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"gold_num")           --��ʾ���Ľ��
		local totalGold = 0
		if OtaCrystal.num ~= 0 then
			totalGold = OtaCrystal.costGold * OtaCrystal.num
		else
			totalGold = OtaCrystal.costGold
		end
		GUIEditSetInt(GUIHandle,totalGold)
	end
	handle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn2")
	if handle ~= 0 then
		GUIWndSetEnableM(handle,true)
	end
	OtaCrystal.updateBtn()
end

function OtaCrystal.otaStone()
	local GUIHandle = 0
	local a = 1
	--GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
	--if GUIHandle ~= 0 then
		--a = GUIEditGetInt(GUIHandle)                             --���Ҫ�����ı�ʯ����
		--if a > 0 then	
			local totalgold = OtaCrystal.costGold * OtaCrystal.num
			UI:Lua_SubmitForm("��ʯ������","offerItem",a .."#".. OtaCrystal.keyname2)
		--end
	--end
end


function OtaCrystal.btn2Clicked(_handle)
	local ReqYbList = {20,80,320,1280,5120,20480,81920,245760,737280,2211840,4423680}   --������������Ԫ����
	local totalYb = OtaCrystal.ReqNum * ReqYbList[OtaCrystal.otaIndex]
	luaMsgBox.new("��ʯ����", "�Ƿ񻨷�" .. totalYb .. "Ԫ����" .. OtaCrystal.costGold .. "��ң����ֱ������", {"��", "��"}, {"OtaCrystal.getCrystalViaYb", 0}, _handle)
end

function OtaCrystal.getCrystalViaYb(_handle)
	UI:Lua_SubmitForm("��ʯ������","getStoneViaYB",OtaCrystal.keyname2)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function OtaCrystal.msg(param)
	local GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn1")
	local handle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn2")
	if GUIHandle ~= 0 then
		if param == 1 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(GUIHandle,"����ʧ�ܣ���Ҳ���",-65,-50,30,color,2)
		elseif param == 2 then 
			local color = MakeARGB(255,255,217,102)
			window_msg_up(GUIHandle,"�����ɹ���",-66,-50,30,color,2)
			WndAddEffect(OtaCrystal.handle, "ota_btn2", 3006600000, -163, -285, 200, 1) 
			--OtaCrystal.cleanUI()
		elseif param ==3 then
			local color = MakeARGB(255,255,217,102)
			window_msg_up(GUIHandle,"��ʯ�ѵ���ߵȼ���",-60,-50,30,color,2)
		elseif param ==4 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(handle,"Ԫ�����㣬��򿪳�ֵҳ���ֵ",-68,-50,30,color,2)
		elseif param ==5 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(handle,"��Ҳ���",-65,-50,30,color,2)
		elseif param ==6 then
			local color = MakeARGB(255,255,217,102)
			window_msg_up(handle,"�����ɹ���",-66,-50,30,color,2)
			WndAddEffect(OtaCrystal.handle, "ota_btn2", 3006600000, -163, -285, 200, 1) 
			GUIWndSetEnableM(handle,false)
			--OtaCrystal.cleanUI()
		elseif param ==7 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(GUIHandle,"�������㣡",20,-50,30,color,2)
			--OtaCrystal.cleanUI()
		elseif param ==8 then
			local color = MakeARGB(255,255,0,0)
			window_msg_up(GUIHandle,"����뱦ʯ",-70,-50,30,color,2)
		end
	end
end

function OtaCrystal.itemClick()
	local _handle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
	if _handle ~= 0 then
		GUIItemCtrlClearItemData(_handle)
		local handle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
		if handle ~= 0 then
			GUIItemCtrlClearItemData(handle)
		end
		handle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn2")
		if handle ~= 0 then
			GUIWndSetEnableM(handle,false)
		end
		handle = GUIWndFindWindow(OtaCrystal.handle,"ota_btn1")
		if handle ~= 0 then
			GUIWndSetEnableM(handle,false)
		end
		OtaCrystal.cleanUI()
	end
end


function OtaCrystal.cleanUI()
	local GUIHandle = 0 
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item_num")
	if GUIHandle ~= 0 then											
		GUIEditSetTextM(GUIHandle,"")								--��� 0/4		
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"entity_item")
	if GUIHandle ~= 0 then
		GUIItemCtrlClearItemData(GUIHandle)                        --���Ŀ����
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"template_item")
	if GUIHandle ~= 0 then
		GUIItemCtrlClearItemData(GUIHandle)                        --Ԥ�������
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"gold_num")
	if GUIHandle ~= 0 then
		GUIEditSetInt(GUIHandle,0)                                --���Ľ�����
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"itemName")
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,"")                        --keyname���
	end
	GUIHandle = GUIWndFindWindow(OtaCrystal.handle,"optNum")
	if GUIHandle ~= 0 then
		GUIEditSetInt(GUIHandle,0)                     --�ϳ��������
	end
end

function OtaCrystal.putCry()
	
end

function OtaCrystal.buy()
	--UI:Lua_OpenWindow("", "GoldBuy.lua")
	UI:Lua_OpenWindow(CrystalSystem.WndHandle, "CrystalBuy.lua")
end

OtaCrystal.main()