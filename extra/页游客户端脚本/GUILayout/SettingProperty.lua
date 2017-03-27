SettingProperty = {}
function SettingProperty.main()
    local ui = "<form default_parent='GameSettingDlg'> <dialog OnInit='SettingProperty.UIInit' id='SettingProperty' image='0' x='10' y='65' w='580' h='297' revmsg='true'>"
	.."	<image id='image0' image='1801500044' x='60' y='3' w='45' h='23' revmsg='true' enable='false'/>"
	.."	<image id='image1' image='1801500045' x='170' y='3' w='38' h='21' revmsg='true' enable='false'/>"
	.."	<image id='image2' image='1801500047' x='215' y='3' w='38' h='21' revmsg='true' enable='false'/>"
	.."	<check id='percentage' image='1800000176' x='265' y='4' w='86' h='21' OnCheckChange='SettingProperty.han_use' revmsg='true' text='使用百分比'/>"
	.."	<image id='image3' image='1801500044' x='355' y='3' w='45' h='23' revmsg='true' enable='false'/>"
	.."	<image id='image4' image='1801500045' x='450' y='3' w='38' h='21' revmsg='true' enable='false'/>"
	.."	<image id='image5' image='1801500047' x='490' y='3' w='38' h='21' revmsg='true' enable='false'/>"
	.."	<image id='back_image000' image='0' x='0' y='30' w='589' h='228' check_point='0' revmsg='true' enable='false'/>"
	.."	<check id='check1' image='1800000176' x='15' y='40' w='21' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='1'/>"
	.."	<image id='image11' image='1801700005' x='40' y='35' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image12' image='1801700006' x='170' y='38' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image13' image='1801700006' x='218' y='38' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox1' image='1800000172' x='45' y='41' w='120' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true' param='1'/>"
	.."	<edit id='Edit11' x='171' y='42' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' revmsg='true' canedit='true' param='1' font='system'/>"
	.."	<edit id='Edit12' x='219' y='42' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange1' revmsg='true' canedit='true' param='1' text='0' font='system'/>"
	.."	<check id='check2' image='1800000176' x='293' y='40' w='21' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='2'/>"
	.."	<image id='image21' image='1801700005' x='318' y='35' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image22' image='1801700006' x='448' y='38' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image23' image='1801700006' x='496' y='38' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox2' image='1800000172' x='323' y='41' w='120' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true' param='2'/>"
	.."	<edit id='Edit21' x='449' y='42' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' canedit='true' revmsg='true' param='2' font='system'/>"
	.."	<edit id='Edit22' x='497' y='42' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange1' canedit='true' revmsg='true' param='2' text='0' font='system'/>"
	.."	<check id='check3' image='1800000176' x='15' y='90' w='21' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='3'/>"
	.."	<image id='image31' image='1801700005' x='40' y='85' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image32' image='1801700006' x='170' y='88' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image33' image='1801700006' x='218' y='88' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox3' image='1800000172' x='45' y='91' w='120' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true' param='3'/>"
	.."	<edit id='Edit31' x='171' y='92' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' canedit='true' revmsg='true' param='3' font='system'/>"
	.."	<edit id='Edit32' x='219' y='92' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange1' canedit='true' revmsg='true' param='3' text='0' font='system'/>"
	.."	<check id='check4' image='1800000176' x='293' y='90' w='21' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='4'/>"
	.."	<image id='image41' image='1801700005' x='318' y='85' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image42' image='1801700006' x='448' y='88' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image43' image='1801700006' x='496' y='88' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox4' image='1800000172' x='323' y='91' w='120' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true' param='4'/>"
	.."	<edit id='Edit41' x='449' y='92' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' canedit='true' revmsg='true' param='4' font='system'/>"
	.."	<edit id='Edit42' x='497' y='92' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange1' canedit='true' revmsg='true' param='4' text='0' font='system'/>"
	.."	<check id='check5' image='1800000176' x='15' y='140' w='21' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='5'/>"
	.."	<image id='image51' image='1801700005' x='40' y='135' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image52' image='1801700006' x='170' y='138' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image53' image='1801700006' x='218' y='138' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox5' image='1800000172' x='45' y='141' w='120' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true' param='5'/>"
	.."	<edit id='Edit51' x='171' y='142' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' canedit='true' revmsg='true' param='5' font='system'/>"
	.."	<edit id='Edit52' x='219' y='142' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange1' canedit='true' revmsg='true' param='5' text='0' font='system'/>"
	.."	<check id='check6' image='1800000176' x='293' y='140' w='21' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='6'/>"
	.."	<image id='image61' image='1801700005' x='318' y='135' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image62' image='1801700006' x='448' y='138' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image63' image='1801700006' x='496' y='138' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox6' image='1800000172' x='323' y='141' w='120' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true' param='6'/>"
	.."	<edit id='Edit61' x='449' y='142' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' canedit='true' revmsg='true' param='6' font='system'/>"
	.."	<edit id='Edit62' x='497' y='142' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange1' canedit='true' revmsg='true' param='6' text='0' font='system'/>"
	.."	<check id='check7' image='1800000176' x='15' y='190' w='21' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='7'/>"
	.."	<image id='image71' image='1801700005' x='40' y='185' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image72' image='1801700006' x='170' y='188' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image73' image='1801700006' x='218' y='188' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox7' image='1800000172' x='45' y='191' w='120' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true' param='7'/>"
	.."	<edit id='Edit71' x='171' y='192' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' canedit='true' revmsg='true' param='7' font='system'/>"
	.."	<edit id='Edit72' x='219' y='192' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange1' canedit='true' revmsg='true' param='7' text='0' font='system'/>"
	.."	<check id='check8' image='1800000176' x='293' y='190' w='21' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='8'/>"
	.."	<image id='image81' image='1801700005' x='318' y='185' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image82' image='1801700006' x='448' y='188' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image83' image='1801700006' x='496' y='188' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox8' image='1800000172' x='323' y='191' w='120' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true' param='8'/>"
	.."	<edit id='Edit81' x='449' y='192' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' canedit='true' revmsg='true' param='8' font='system'/>"
	.."	<edit id='Edit82' x='497' y='192' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange1' canedit='true' revmsg='true' param='8' text='0' font='system'/>"
	.."	<check id='check9' image='1800000176' x='10' y='270' w='74' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='9' text='当HP小于' text_color='#CFB360'/>"
	.."	<image id='image91' image='1801700006' x='84' y='268' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<edit id='Edit91' x='86' y='271' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' canedit='true' revmsg='true' param='9' font='system'/>"
	.."	<edit id='Edit92' x='133' y='271' w='40' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='使用' font='system'/>"
	.."	<image id='image9' image='1801700005' x='166' y='265' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox9' image='1800000172' x='169' y='270' w='123' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true'/>"
	.."	<check id='check10' image='1800000176' x='297' y='270' w='74' h='21' OnCheckChange='SettingProperty.check' revmsg='true' param='10' text='当HP小于' text_color='#CFB360'/>"
	.."	<image id='image10' image='1801700006' x='371' y='268' w='57' h='31' revmsg='true' enable='false'/>"
	.."	<edit id='Edit101' x='373' y='271' w='45' h='16' type='number' OnEditStrChange='SettingProperty.EditChange' canedit='true' revmsg='true' param='10' font='system'/>"
	.."	<edit id='Edit102' x='420' y='271' w='40' h='16' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='使用' font='system'/>"
	.."	<image id='image10' image='1801700005' x='453' y='265' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<combobox id='ComboBox10' image='1800000172' x='456' y='270' w='123' h='30' length='200' fill_image='1901500047' OnComboStrChange='SettingProperty.OnStrChange' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	
	GenFormByString(ui)
end



SettingProperty.WndHandle = 0
SettingProperty.item = {}
function SettingProperty.UIInit(_GUIHandle)
	SettingProperty.WndHandle = _GUIHandle
	
	local _percentage = GUIWndFindChildM(_GUIHandle,"percentage")
	if _percentage ~= 0 then
		GUICheckBoxSetAutoChange(_percentage,true)
	end
	
	for i = 1, 4 do
		for j = 1, 2 do
			local itemIdx = (i - 1) * 2  + j 
			local posX = (j - 1) * 278
			local posY = (i - 1) * 50
			local _check = GUIWndFindChildM(_GUIHandle,"check"..itemIdx)
			if _check ~= 0 then
				GUICheckBoxSetAutoChange(_check,true)
			end

			local _ComboBox = GUIWndFindChildM(_GUIHandle,"ComboBox"..itemIdx)
			if _ComboBox ~= 0 then
				GUIWndSetParam(_ComboBox, itemIdx)
				GUIComboBoxClear(_ComboBox)
				GUIComboBoxSetScrollBarImage(_ComboBox, 0, 0, 0, 0)
				
			end
		end
	end
	local a = 1
	for j = 9, 10 do		
		local posX = (a - 1) * 287
		local _check = GUIWndFindChildM(_GUIHandle,"check"..j)
		if _check ~= 0 then
			GUICheckBoxSetAutoChange(_check,true)
		end
		
		local _ComboBox = GUIWndFindChildM(_GUIHandle,"ComboBox"..j)
		if _ComboBox ~= 0 then
			GUIWndSetParam(_ComboBox, itemIdx)
			GUIComboBoxClear(_ComboBox)
			GUIComboBoxSetScrollBarImage(_ComboBox, 0, 0, 0, 0)
			
		end
		a = a + 1
	end	
	
	
	local _Istrue = false
	if CLGetBasicSetting(2001) then
		_Istrue = as3.tolua(LuaRet)
	end
	local _handle = GetWindow(SettingProperty.WndHandle,"percentage",nil)
	GUICheckBoxSetCheck(_handle,_Istrue)
	if _Istrue then
		if CLGetProtectArr(2005) then
			SettingProperty.hp = getTable(as3.tolua(LuaRet))	
		end
	else
		if CLGetProtectArr(2004) then
			SettingProperty.hp = getTable(as3.tolua(LuaRet))	
		end
	end	
	
	if CLGetProtectArr(2006) then
		SettingProperty.check1 = getTable(as3.tolua(LuaRet))	
	end
	
	if CLGetProtectArr(2003) then
		SettingProperty.daley = getTable(as3.tolua(LuaRet))	
	end
	
	if CLGetProtectArr(2002) then
		SettingProperty.item = getTable(as3.tolua(LuaRet))	
	end
	
	if CLGetProtectArr(2007) then
		SettingProperty.selectid = getTable(as3.tolua(LuaRet))	
	end

	for i = 1 , #SettingProperty.item do 
		local tab = getTable(as3.tolua(SettingProperty.item[i]))
		local _handle = GetWindow(SettingProperty.WndHandle,"ComboBox"..i,nil)
		local _hp = GetWindow(SettingProperty.WndHandle,"Edit"..i.."1",nil)
		local _de = GetWindow(SettingProperty.WndHandle,"Edit"..i.."2",nil)
		local _check = GetWindow(SettingProperty.WndHandle,"check"..i,nil)
		if _de ~= 0 and i < 9 then
			EditSetInt(_de,nil,SettingProperty.daley[i])
		end	
		for j = 1 , #tab do 
			
			if CLGetItemTemplatePropByID(tab[j],1) then
				local name = as3.tolua(LuaRet)								
				GUIComboBoxAddString(_handle, name, j-1, 0)				
			end
		end
		EditSetInt(_hp,nil,SettingProperty.hp[i])
	
		GUIComboBoxSetCurSelect(_handle, SettingProperty.selectid[i])

		GUICheckBoxSetCheck(_check,SettingProperty.check1[i])
	end
end
function SettingProperty.han_use(_Handle)
	local _Istrue = GUICheckBoxGetCheck(_Handle)
	CLChangeBasicSetting(2001,_Istrue)
	if _Istrue then
		if CLGetProtectArr(2005) then
			SettingProperty.hp = getTable(as3.tolua(LuaRet))	
		end
	else
		if CLGetProtectArr(2004) then
			SettingProperty.hp = getTable(as3.tolua(LuaRet))	
		end
	end	
	for i = 1 , 10 do
		local _hp = GetWindow(SettingProperty.WndHandle,"Edit"..i.."1",nil)
		EditSetInt(_hp,nil,SettingProperty.hp[i])
	end
end

function SettingProperty.check(_Handle)
	local index = GUIWndGetParam(_Handle)
	local Is_true = GUICheckBoxGetCheck(_Handle)

	if CLSetProtectIndex(2006,index,tostring(Is_true)) then
	end
end	

function SettingProperty.EditChange(_Handle)
	local index = GUIWndGetParam(_Handle)
	local str = GUIEditGetInt(_Handle)
	local _percent = GetWindow(SettingProperty.WndHandle,"percentage",nil)
	local Is_true = GUICheckBoxGetCheck(_percent)
	
	if Is_true then
		if tonumber(str) > 100 then
			EditSetInt(_Handle,nil,100)
			return 
		end	
		if CLSetProtectIndex(2005,index,tostring(str)) then
		end
	else
		if CLSetProtectIndex(2004,index,tostring(str)) then
		end
	end
	
end

function SettingProperty.EditChange1(_Handle)
	local index = GUIWndGetParam(_Handle)
	local str = GUIEditGetInt(_Handle)
	SettingProperty.daley[index] = str
	if CLSetProtectIndex(2003,index,tostring(str)) then
	end
	
	
end

function SettingProperty.OnStrChange(_Handle)
	local i = GUIWndGetParam(_Handle)
	local index = GUIComboBoxGetCurSelect(_Handle)
	if CLSetProtectIndex(2007,i,index) then
		
	end
end


SettingProperty.main()