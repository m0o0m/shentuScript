MarsWnd ={}
local ui = "<form> <dialog OnInit='MarsWnd.UIInit' id='MarsWnd' image='1803200000' x='232' y='47' w='847' h='570' center = 'true' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='title' image='1803200063' x='468' y='10' w='90' h='55' enable = 'false' revmsg='true'/>"
	.."	<button id='marsBtn1' image='1803200069' x='117' y='105' w='158' h='45' OnLButtonUp='MarsWnd.Mars_btn' param = 1 revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='marsBtn2' image='1803200104' x='117' y='177' w='158' h='45' OnLButtonUp='MarsWnd.Mars_btn' param = 2 revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='marsBtn3' image='1803200108' x='117' y='250' w='158' h='45' OnLButtonUp='MarsWnd.Mars_btn' param = 3 revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='marsBtn4' image='1803200112' x='117' y='327' w='167' h='48' OnLButtonUp='MarsWnd.Mars_btn' param = 4 revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='marsBtn5' image='1803200085' x='117' y='408' w='186' h='53' OnLButtonUp='MarsWnd.Mars_btn' param = 5 revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='NudeModel' image='1990401001' x='380' y='180' w='420' h='480' revmsg='true'/>"
	.."	<image id='NudeModel1' image='0' x='530' y='330' w='400' h='400'  enable='false' revmsg='true'/>"

	.."	<image id='marsName' image='1803200028' x='751' y='94' w='197' h='70' revmsg='true'/>"
	.."	<image id='ATKpic' image='1803200027' x='728' y='154' w='99' h='43' revmsg='true'/>"
	.."	<image id='ATKnum1' image='0' x='830' y='163' w='25' h='29' revmsg='true'/>"
	.."	<image id='ATKnum2' image='0' x='855' y='163' w='25' h='29' revmsg='true'/>"
	.."	<image id='ATKnum3' image='0' x='880' y='163' w='25' h='29' revmsg='true'/>"
	.."	<image id='ATKnum4' image='0' x='905' y='163' w='25' h='29' revmsg='true'/>"
	.."	<image id='ATKnum5' image='0' x='930' y='163' w='29' h='29' revmsg='true'/>"
	.."	<image id='marsProp' image='1803200102' x='780' y='203' w='82' h='21' revmsg='true'/>"
	.."	<image id='marsIntroduce' image='1803200101' x='783' y='299' w='82' h='21' revmsg='true'/>"
	.."	<image id='marsItem' image='1803200103' x='786' y='425' w='82' h='21' revmsg='true'/>"
	.."	<edit id='marsHP' x='742' y='231' w='42' h='18' revmsg='true' text_color='#D4893F' text='������' font='system'/>"
	.."	<edit id='marsHPnum' x='781' y='232' w='58' h='16' revmsg='true' text_color='#FFFFFF' text='100860000' font='system'/>"
	.."	<edit id='marsHPrecover' x='859' y='230' w='77' h='20' revmsg='true' text_color='#D4893F' text='�����ָ���' font='system'/>"
	.."	<edit id='marsHPrecoverNum' x='918' y='232' w='45' h='16' revmsg='true' text_color='#FFFFFF' text='99999' font='system'/>"
	.."	<edit id='marsATK' x='742' y='261' w='44' h='19' revmsg='true' text_color='#D4893F' text='������' font='system'/>"
	.."	<edit id='marsATKnum' x='781' y='261' w='58' h='19' revmsg='true' text_color='#FFFFFF' text='10086' font='system'/>"
	.."	<edit id='marsDef' x='859' y='261' w='56' h='20' revmsg='true' text_color='#D4893F' text='������' font='system'/>"
	.."	<edit id='marsDefNum' x='894' y='261' w='54' h='20' revmsg='true' text_color='#FFFFFF' text='10086' font='system'/>"
	.."	<richedit id='IntroText' x='743' y='331' w='212' h='89' revmsg='true'  text_color='#E3C09B' font='system'/>"
	
	.." <image id='itemBack1' image='1800000133' x='708' y='457' w='42' h='42' revmsg='true'/> <image id='itemBackc1' image='1891430001' x='713' y='462' w='35' h='35' fitsize='true' revmsg='true'/> <itemctrl id='item1' x='711' y='460' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.." <image id='itemBack2' image='1800000133' x='758' y='457' w='42' h='42' revmsg='true'/> <image id='itemBackc2' image='1891430001' x='763' y='462' w='35' h='35' fitsize='true' revmsg='true'/> <itemctrl id='item2' x='761' y='460' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.." <image id='itemBack3' image='1800000133' x='808' y='457' w='42' h='42' revmsg='true'/> <image id='itemBackc3' image='1891430001' x='813' y='462' w='35' h='35' fitsize='true' revmsg='true'/> <itemctrl id='item3' x='811' y='460' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.." <image id='itemBack4' image='1800000133' x='858' y='457' w='42' h='42' revmsg='true'/> <image id='itemBackc4' image='1891430001' x='863' y='462' w='35' h='35' fitsize='true' revmsg='true'/> <itemctrl id='item4' x='861' y='460' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.." <image id='itemBack5' image='1800000133' x='908' y='457' w='42' h='42' revmsg='true'/> <image id='itemBackc5' image='1891430001' x='913' y='462' w='35' h='35' fitsize='true' revmsg='true'/> <itemctrl id='item5' x='911' y='460' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	
	--.."	<itemctrl id='item1' x='711' y='460' w='41' h='41' rbtn_use='true' use_back='1800000133' enable='true' revmsg='true'/>"
	
	--.."	<itemctrl id='item2' x='761' y='460' w='41' h='41' rbtn_use='true' use_back='1800000133' enable='true' revmsg='true'/>"
	
	--.."	<itemctrl id='item3' x='811' y='460' w='41' h='41' rbtn_use='true' use_back='1800000133' enable='true' revmsg='true'/>"
	
	--.."	<itemctrl id='item4' x='861' y='460' w='41' h='41' rbtn_use='true' use_back='1800000133' enable='true' revmsg='true'/>"
	
	--.."	<itemctrl id='item5' x='911' y='460' w='41' h='41' rbtn_use='true' use_back='1800000133' enable='true' revmsg='true'/>"
	
	
	--.."	<richedit id='actText' x='135' y='465' w='104' h='24' revmsg='true' text_color='#00FF00' text='#SELECT#ʹ��8888Ԫ������#SELECTEND#' font='system'/>"
	.."	<richedit id='actText' x='135' y='465' w='104' h='24' revmsg='true' text_color='#00FF00' text='ʹ��8888Ԫ������' font='system'/>"
	.."	<image id='helpImg' image='1800000297' x='113' y='505' w='27' h='30' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='marsFuncIntro' x='144' y='511' w='103' h='19' revmsg='true' text_color='#C2B6A0' text='���ٻ�˵��' font='system'/>"
	.."	<button id='callBtn' image='1803200089' x='439' y='505' w='166' h='45' OnLButtonUp='MarsWnd.CallbtnClicked' revmsg='true' param = 0 text_color='#C2B6A0'/>"
	.."	<button id='activateBtn' image='1803200093' x='439' y='505' w='166' h='45' OnLButtonUp='MarsWnd.ActivateMars' visible = 'false' revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='closeBtn' image='1800000068' x='943' y='31' w='24' h='24' OnLButtonUp='MarsWnd.CloseWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='usingPic1' image='1803200036' x='235' y='88' w='78' h='55' visible = 'false' revmsg='true'/>"
	.."	<image id='usingPic2' image='1803200036' x='235' y='158' w='78' h='55' visible = 'false' revmsg='true'/>"
	.."	<image id='usingPic3' image='1803200036' x='235' y='233' w='78' h='55' visible = 'false' revmsg='true'/>"
	.."	<image id='usingPic4' image='1803200036' x='235' y='310' w='78' h='55' visible = 'false' revmsg='true'/>"
	.."	<image id='usingPic5' image='1803200036' x='235' y='390' w='78' h='55' visible = 'false' revmsg='true'/>"
	.."	<edit id='text1' x='767' y='519' w='90' h='20' revmsg='true' text_color='#C2B6A0' text='����ٻ�������' font='system'/>"
	.."	<richedit id='callNum' x='849' y='522' w='30' h='19' text='5' revmsg='true' font='system' text_color='#00D200'/>"
	.."	<edit id='restTime' x='769' y='519' w='200' h='20' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='text2' x='130' y='217' w='147' h='22' revmsg='true' text='��¼2���VIP1�����ȡ' text_color='#FFC000' font='system'/>"
	.."	<edit id='text3' x='130' y='292' w='147' h='22' revmsg='true' text='��¼3���VIP2�����ȡ' text_color='#FFC000' font='system'/>"
	.."	<edit id='text4' x='130' y='370' w='147' h='22' revmsg='true' text='��¼5���VIP3�����ȡ' text_color='#FFC000' font='system'/>"
	
	.." </dialog>"
	.."</form>"

function MarsWnd.main()
	local handle = GetWindow(nil,"MarsWnd")
	if handle ~= 0 then
		GUIWndClose(handle)
	else
		GenFormByString(ui)
	end
end

MarsWnd.index = 1
--UI Logic Code Start
function MarsWnd.UIInit(_Handle)
	local GUIHandle = 0
	MarsWnd.cur_index = 0
	MarsWnd.WndHandle = _Handle
	CenterWnd(MarsWnd.WndHandle)
	GUIWndSetSizeM(MarsWnd.WndHandle,847,570)
	MarsWnd.item = deserialize(as3.tolua(FormParam[1]))
	MarsWnd.Info = deserialize(as3.tolua(FormParam[2]))
	MarsWnd.loginDayNum = deserialize(as3.tolua(FormParam[4]))
	MarsWnd.Is_activate = deserialize(as3.tolua(FormParam[6]))
	MarsWnd.vipLv = deserialize(as3.tolua(FormParam[5]))
	MarsWnd.callnum = deserialize(as3.tolua(FormParam[7]))
	
	
	
	MarsWnd.ShowCallNum(MarsWnd.callnum)
	
	local handle = GetWindow(nil,"GuideDlg_mars")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	
	if MarsWnd.loginDayNum >= 2 or MarsWnd.vipLv >= 1 then
		ButtonSetImageID(MarsWnd.WndHandle, "marsBtn2", 1803200073 )
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"text2")
		if GUIHandle ~= 0 then
			GUIWndSetVisible(GUIHandle, false)	
		end
	end
	
	if MarsWnd.loginDayNum >= 3 or MarsWnd.vipLv >= 2 then
		ButtonSetImageID(MarsWnd.WndHandle, "marsBtn3", 1803200077 )
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"text3")
		if GUIHandle ~= 0 then
			GUIWndSetVisible(GUIHandle, false)
		end
	end
	
	if MarsWnd.loginDayNum >= 5 or MarsWnd.vipLv >= 3 then
		ButtonSetImageID(MarsWnd.WndHandle, "marsBtn4", 1803200081 )
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"text4")
		if GUIHandle ~= 0 then
			GUIWndSetVisible(GUIHandle, false)
		end
	end
	
	
	
	
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"helpImg")
	if GUIHandle ~= 0 then
		GUIWndSetHint(GUIHandle, "<font color='#D58840'>���ٻ�˵����\n</font><font color='#B8A085'>1.ÿ�����߿�����ٻ�һ����\n2.����30���ӿɻ��һ���ٻ�������ÿ�����ɻ��4��\n3.���߻�������PVP��������������⣩�񽫻���ʧ</font>")
	end
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"marsFuncIntro")
	if GUIHandle ~= 0 then
		GUIWndSetHint(GUIHandle, "<font color='#D58840'>���ٻ�˵����\n</font><font color='#B8A085'>1.ÿ�����߿�����ٻ�һ����\n2.����30���ӿɻ��һ���ٻ�������ÿ�����ɻ��4��\n3.���߻�������PVP��������������⣩�񽫻���ʧ</font>")
	end
	local marsBtnHint = deserialize(as3.tolua(FormParam[3]))
	for i = 1 , 5 do
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"marsBtn"..i)
		if GUIHandle ~= 0 then
			GUIWndSetHint(GUIHandle, "<font color='#B8A085'>"..marsBtnHint[i].."</font>")
		end
	end
	
--[[	local _handle = GUIWndFindWindow(MarsWnd.WndHandle,"NudeModel")    ---���ö���
	if _handle ~= 0 then 
		GUIImageSetDrawCenter(_handle,true)
		GUIImageSetAnimateEnable(_handle, true, 150)
	end --]]
	
--[[	local resrTime_min = deserialize(as3.tolua(FormParam[4]))
	local resrTime_sec = deserialize(as3.tolua(FormParam[5]))
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"restTime")
	GUIEditSetTextM(GUIHandle,"��"..resrTime_min.."��"..resrTime_sec.."������һ�Σ�")
	
	local callnumber = deserialize(as3.tolua(FormParam[6]))
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"callNum")
	GUIRichEditClear(GUIHandle)
	GUIRichEditAppendString(GUIHandle,callnumber)--]]
	if deserialize(as3.tolua(FormParam[9])) == "is_Exist" then
		local heroName = ""
		local i = 1
		local heroTB = {["�ȷ���"] = 5 , ["��Х��"] = 4 , ["ŭ����"] = 3 , ["ʥ����"] = 2 , ["������"] = 1}
		heroName = deserialize(as3.tolua(FormParam[8]))
		local i = heroTB[heroName]
		MarsWnd.index = i
		MarsWnd.cur_index = i
		MarsWnd.ShowUsingPic()
		ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn"..i,true)          ---��ʼ��������ʹ���е�ս��
	end
	
	if deserialize(as3.tolua(FormParam[9])) == "is_not_Exist" and as3.tolua(FormParam[8]) ~=0 then    --������ս����ʾ�ϴ��ٻ��ɹ���ս��
		local index = as3.tolua(FormParam[8])
		MarsWnd.index = index
		ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn"..index,true)
	elseif as3.tolua(FormParam[8]) == 0 then
		ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn1",true)           --û�ٻ���ս������ʾ��һ��
	end

	MarsWnd.UpdateUI()
end

function MarsWnd.UpdateUI()
	local GUIHandle = 0
	for i = 1 , 5 do
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"item"..i)
		if GUIHandle ~= 0 then 
			RDItemCtrlSetGUIDataByKeyName(GUIHandle,MarsWnd.item[MarsWnd.index][i], 1, false)    --��Ʒ�����
			GUIItemCtrlSetHighlightImageID(GUIHandle, 0)
		end
		local Temp = CLGetItemTemplateHandleByKeyName(MarsWnd.item[MarsWnd.index][i])
		if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_COLOR) then
			if as3.tolua(LuaRet) ~= nil then
				local color =  as3.tolua(LuaRet)
				--msg("i = "..color)
				if color == "PURPLE" then  --��   -- ��  -- ��  -- ��
					ImageSetImageID(MarsWnd.WndHandle,"itemBackc"..i,1891430004)
				elseif color == "GOLD" or color == "YELLOW" then
					ImageSetImageID(MarsWnd.WndHandle,"itemBackc"..i,1891430001)
				elseif color == "RED" then
					ImageSetImageID(MarsWnd.WndHandle,"itemBackc"..i,1891430000)
				elseif color == "GREENG" then
					ImageSetImageID(MarsWnd.WndHandle,"itemBackc"..i,1891430003)
				elseif color == "WHITE" then
					ImageSetImageID(MarsWnd.WndHandle,"itemBackc"..i,0)
				end
			end
		end
		ImageSetImageID(MarsWnd.WndHandle, "ATKnum" .. i, 0 )
	end
	
	local marsNametab = {1803200064,1803200065,1803200066,1803200067,1803200068}
	ImageSetImageID(MarsWnd.WndHandle, "marsName", marsNametab[MarsWnd.index] )  --ս��ģ�͡�����
	local handle = GetWindow(MarsWnd.WndHandle, "NudeModel1")

	--ImageSetImageID(MarsWnd.WndHandle, "NudeModel1", marsModelIcon)
	--local a = {1893120000,1893100000, 1893140000, 1893110000,  1893130000}
	local a = {1893120000,1893100000, 1893110000, 1893130000,  1893140000}
	if handle ~= 0 then
		GUIWndSetVisible(handle, true) 
		GUIImageSetDrawCenter(handle,true)
		ImageSetImageID(handle, nil, a[MarsWnd.index])
		GUIImageSetAnimateEnable(handle, true, 200)
	end	
	local handle = GetWindow(MarsWnd.WndHandle, "marsHair")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false) 
	end	
	ImageSetImageID(MarsWnd.WndHandle, "NudeModel", 0)
	ImageSetImageID(MarsWnd.WndHandle, "marsWeapon", 0)
	
	------------------------------------------------------------------
	local fightNum = MarsWnd.item[MarsWnd.index][6]
	local showNum = 0
	local lenth = 0
	while ( fightNum/10 ~= 0 ) do
		showNum = fightNum % 10
		showNum = tonumber(CLPlus(tostring(1801500107), showNum))   
		ImageSetImageID(MarsWnd.WndHandle, "ATKnum" .. (5-lenth), showNum )  --ս�񹥻�����ͼƴ�գ�
		lenth = lenth + 1
		fightNum = math.floor(fightNum/10)
	end  
	
	local marsInfo = MarsWnd.Info[MarsWnd.index]
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"marsHPnum")  --ս������ֵ
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,marsInfo[1])
	end
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"marsHPrecoverNum")  --�����ظ�
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,marsInfo[2])
	end
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"marsATKnum")     --����
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,marsInfo[3])
	end
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"marsDefNum")   --������
	if GUIHandle ~= 0 then
		GUIEditSetTextM(GUIHandle,marsInfo[4])	
	end
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"IntroText")  --����
	if GUIHandle ~= 0 then
		GUIRichEditClear(GUIHandle)
		GUIRichEditAppendString(GUIHandle,marsInfo[5])	
	end
	
	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"callBtn")  
	if GUIHandle ~= 0 then
		GUIWndSetHint(GUIHandle, "<font color='#B8A085'>ÿ���ٻ�����1��������88Ԫ��</font>")
	end
	
	local callBtnParam = WndGetParam(GUIHandle) --��ǰҳǩ����½�������㲢��vip�ȼ����㲢�Ҳ��ǵ���ҳ
	if callBtnParam == MarsWnd.index or ((MarsWnd.loginDayNum < MarsWnd.index and MarsWnd.vipLv < (MarsWnd.index-1)) and MarsWnd.index ~= 5) then
		GUIWndSetEnableM(GUIHandle, false)
	else 
		GUIWndSetEnableM(GUIHandle, true)
	end
	if MarsWnd.loginDayNum == 4 and MarsWnd.index == 4 and MarsWnd.vipLv < 3 then  --��5��ſ���ս��4
		GUIWndSetEnableM(GUIHandle, false)
	end
	if MarsWnd.index == 5 and MarsWnd.Is_activate == 0 then   --���ť<-->�ٻ���ť
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"callBtn")
		if GUIHandle ~= 0 then
			GUIWndSetVisible(GUIHandle, false)
		end
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"activateBtn")
		if GUIHandle ~= 0 then 
			GUIWndSetVisible(GUIHandle, true)
		end
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"activateBtn")
		if GUIHandle ~= 0 then
			GUIWndSetHint(GUIHandle, "<font color='#B8A085'>����8888Ԫ�������ȷ�սʥ</font>")
		end
	else
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"callBtn")
		if GUIHandle ~= 0 then
			GUIWndSetVisible(GUIHandle, true)
		end
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"activateBtn")
		if GUIHandle ~= 0 then
			GUIWndSetVisible(GUIHandle, false)
		end
	end
	if MarsWnd.Is_activate == 1 then
		GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"actText")
		if GUIHandle ~= 0 then
			GUIWndSetVisible(GUIHandle, false)
		end
	end
	
--[[	GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"usingPic"..MarsWnd.index)
	if GUIHandle ~= 0 then
		GUIWndSetVisible(Handle, true)
	end--]]
	
end	

function MarsWnd.SetParam(param)
	MarsWnd.Is_activate = param
	MarsWnd.UpdateUI()
end


function MarsWnd.Update(_Handle)    
	for i = 1 , 5 do 
		
		local handle = GUIWndFindWindow(MarsWnd.WndHandle,"marsBtn"..i)	
		if handle == _Handle then
			if handle ~= 0 then
				ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn"..i,true)
			end
		else 
			if handle ~= 0 then
				ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn"..i,false)
			end
		end
	end
end


function MarsWnd.Mars_btn(_Handle)
	MarsWnd.index = GUIWndGetParam(_Handle)
	local Is_true = ButtonGetIsActivePageBtn(_Handle)
	if not Is_true then
		MarsWnd.Update(_Handle)
	end	
	MarsWnd.UpdateUI()
end

function MarsWnd.CallbtnClicked()
	if MarsWnd.callnum <= 0 then
		luaMsgBox.new("ս���ٻ�","#COLORCOLOR_RED#\n             �Ƿ�����#COLOREND#".."#COLORCOLOR_BLUE#88#COLOREND#".."#COLORCOLOR_RED#Ԫ���ٻ���#COLOREND#", {"��", "��"}, {"MarsWnd.CompareIndex", "MarsWnd.out"}, h)
	else
		MarsWnd.CompareIndex(0)
	end
end



function MarsWnd.CompareIndex(h)
	local handle = 0
	if MarsWnd.index < MarsWnd.cur_index then
		MarsWnd.WarnMsgBox()
	else
		MarsWnd.CallMars()
	end
	if h ~= 0 then
		handle = GUIWndGetParentM(h)
		if handle ~= 0 then
			GUIWndClose(handle)
		end 
	end
end

function MarsWnd.WarnMsgBox(h)
	luaMsgBox.new("ս���ٻ�", "#COLORCOLOR_RED#��ǰ�ٻ��񽫹���������ʹ���е��񽫣��Ƿ�ȷ���ٻ���#COLOREND#", {"��", "��"}, {"MarsWnd.CallAnotherMars", "MarsWnd.out"}, _handle)
end

function MarsWnd.CallMars()
	UI:Lua_SubmitForm("MarsWnd_s","CallMars",MarsWnd.index)
	
	--MarsWnd.UpdateUI()
end

function MarsWnd.CallAnotherMars(_handle)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end 
	MarsWnd.CallMars()
end

function MarsWnd.ShowUsingPic() --��ʹ���С�ͼƬ��ʾ
	
	for i = 1 , 5 do
		local Handle = GUIWndFindWindow(MarsWnd.WndHandle,"usingPic"..i)

		if i == MarsWnd.index then
			if Handle ~= 0 then
				GUIWndSetVisible(Handle, true)
			end
		else
			if Handle ~= 0 then
				GUIWndSetVisible(Handle, false)
			end
		end
	end
	local GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"callBtn")
	GUIWndSetParam(GUIHandle,MarsWnd.index)
	local callBtnparam = WndGetParam(GUIHandle)
	if callBtnparam == MarsWnd.index then
		GUIWndSetEnableM(GUIHandle, false)
	else 
		GUIWndSetEnableM(GUIHandle, true)
	end
	
end

function MarsWnd.ActivateMars()
	UI:Lua_SubmitForm("MarsWnd_s","ActivateMars","")
end

function MarsWnd.ShowCallNum(callnum)
	local GUIHandle = GUIWndFindWindow(MarsWnd.WndHandle,"callNum")
	if GUIHandle ~= 0 then
		GUIRichEditClear(GUIHandle)
		GUIRichEditAppendString(GUIHandle,callnum)	
	end
end

function MarsWnd.MsgBox()
	luaMsgBox.new("Ԫ��", "     �ܱ�Ǹ������Ԫ������", {"ǰ����ֵ", "ȡ��"}, {"MarsWnd.chongz", "MarsWnd.out"}, "")
end

function MarsWnd.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function MarsWnd.out(h)
	luaWndClose(h)
end

function MarsWnd.WndMsg_up()
	local handle = GUIWndFindWindow(MarsWnd.WndHandle,"callBtn")
	local color = MakeARGB(255,255,0,0)
	if handle ~= 0 then
		window_msg_up(handle,"ʣ���ٻ���������",-25,-30,30,color,2)
	end
end

function MarsWnd.CloseWnd()
	if MarsWnd.WndHandle ~= 0 then
		GUIWndClose(MarsWnd.WndHandle)
	end
end



MarsWnd.main()