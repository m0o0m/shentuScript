SettingItem = {}

function SettingItem.main()
    local ui = "<form default_parent='GameSettingDlg'> <dialog OnInit='SettingItem.UIInit' id='SettingItem' image='1801700002' x='10' y='65' w='579' h='296' revmsg='true'>"
	.."	<image id='image0' image='1801500052' x='30' y='3' w='90' h='27' revmsg='true' enable='false'/>"
	.."	<image id='image1' image='1801500053' x='165' y='3' w='90' h='27' revmsg='true' enable='false'/>"
	.."	<image id='image2' image='1801500054' x='300' y='3' w='90' h='27' revmsg='true' enable='false'/>"
	.."	<image id='image3' image='1801500055' x='435' y='3' w='90' h='27' revmsg='true' enable='false'/>"
	.."	<image id='image4' image='1801500056' x='5' y='268' w='90' h='27' revmsg='true' enable='false'/>"
	.."	<image id='image5' image='1801700005' x='95' y='265' w='133' h='31' revmsg='true' enable='false'/>"
	.."	<image id='image6' image='1801700007' x='240' y='265' w='99' h='31' revmsg='true' enable='false'/>"
	.."	<check id='check11' image='1800000176' x='205' y='45' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='1'/>"
	.."	<check id='check12' image='1800000176' x='340' y='45' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='2'/>"
	.."	<check id='check13' image='1800000176' x='475' y='45' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='3'/>"
	.."	<edit id='Edit1' x='25' y='48' w='100' h='16' canedit='false' align='center' revmsg='true' enable='false' font='system'/>"
	.."	<check id='check21' image='1800000176' x='205' y='82' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='1'/>"
	.."	<check id='check22' image='1800000176' x='340' y='82' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='2'/>"
	.."	<check id='check23' image='1800000176' x='475' y='82' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='3'/>"
	.."	<edit id='Edit2' x='25' y='85' w='100' h='16' canedit='false' align='center' revmsg='true' enable='false' font='system'/>"
	.."	<check id='check31' image='1800000176' x='205' y='119' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='1'/>"
	.."	<check id='check32' image='1800000176' x='340' y='119' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='2'/>"
	.."	<check id='check33' image='1800000176' x='475' y='119' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='3'/>"
	.."	<edit id='Edit3' x='25' y='122' w='100' h='16' canedit='false' align='center' revmsg='true' enable='false' font='system'/>"
	.."	<check id='check41' image='1800000176' x='205' y='156' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='1'/>"
	.."	<check id='check42' image='1800000176' x='340' y='156' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='2'/>"
	.."	<check id='check43' image='1800000176' x='475' y='156' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='3'/>"
	.."	<edit id='Edit4' x='25' y='159' w='100' h='16' canedit='false' align='center' revmsg='true' enable='false' font='system'/>"
	.."	<check id='check51' image='1800000176' x='205' y='193' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='1'/>"
	.."	<check id='check52' image='1800000176' x='340' y='193' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='2'/>"
	.."	<check id='check53' image='1800000176' x='475' y='193' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='3'/>"
	.."	<edit id='Edit5' x='25' y='196' w='100' h='16' canedit='false' align='center' revmsg='true' enable='false' font='system'/>"
	.."	<check id='check61' image='1800000176' x='205' y='230' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='1'/>"
	.."	<check id='check62' image='1800000176' x='340' y='230' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='2'/>"
	.."	<check id='check63' image='1800000176' x='475' y='230' w='21' h='21' OnCheckChange='SettingItem.check' revmsg='true' param='3'/>"
	.."	<edit id='Edit6' x='25' y='233' w='100' h='16' canedit='false' align='center' revmsg='true' enable='false' font='system'/>"
	.."	<combobox id='ComboBox1' image='1800000172' x='100' y='269' w='120' h='30' length='120' fill_image='1800000038' OnComboStrChange='SettingItem.OnStrChange' revmsg='true'/>"
	.."	<edit id='Edit_find' x='243' y='270' w='100' h='16' OnEditStrChange='SettingItem.EditChange' canedit='true' limit='3' revmsg='true' font='system'/>"
	.."	<check id='AllGet' image='1800000176' x='400' y='270' w='74' h='21' OnCheckChange='SettingItem.All' revmsg='true' param='1' text='全部拾取' text_color='#CFB360'/>"
	.."	<check id='AllShow' image='1800000176' x='500' y='270' w='74' h='21' OnCheckChange='SettingItem.All' revmsg='true' param='2' text='全部显示' text_color='#CFB360'/>"
	.."	<button id='up_page' image='1800000352' x='560' y='50' w='26' h='70' OnLButtonDown='SettingItem.add_time' OnLButtonUp='SettingItem.deltime' revmsg='true'/>"
	.."	<button id='down_page' image='1800000356' x='560' y='150' w='26' h='70' OnLButtonDown='SettingItem.add_time1' OnLButtonUp='SettingItem.deltime' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	
	GenFormByString(ui)
end



SettingItem.WndHandle = 0
SettingItem.item = {}
SettingItem.index = 0
SettingItem.str = ""
SettingItem.page = 1
function SettingItem.UIInit(_GUIHandle)
	SettingItem.WndHandle = _GUIHandle	
	
	
	for i = 1, 6 do
		for j = 1, 3 do
			local posX = (j - 1) * 135
			local posY = (i - 1) * 37
			local _check = GUI:WndFindChildM(_GUIHandle,"check"..i..j)
			if _check ~= 0 then
				GUI:WndSetParam(_check, j)
				GUI:WndAddProperty(_check, "hang", ""..i)
				GUI:CheckBoxSetAutoChange(_check,true)
			end
		end	
	end
	
	local _color = { [true] = MakeARGB(255, 0, 255, 0), [false] = MakeARGB(255, 255, 255, 255)}
	local _ComboBox = GUI:WndFindChildM(_GUIHandle,"ComboBox1")
	if _ComboBox ~= 0 then
		GUI:ComboBoxClear(_ComboBox)
		GUI:ComboBoxSetScrollBarImage(_ComboBox, 1800000085, 1800000001, 1800000089, 1800000005)
		GUI:ComboBoxSetListLength(_ComboBox, 120)
		GUI:ComboBoxAddString(_ComboBox, "全部", 0, _color[false])
		GUI:ComboBoxAddString(_ComboBox, "其他", 1, _color[false])
		GUI:ComboBoxAddString(_ComboBox, "武器", 2, _color[false])
		GUI:ComboBoxAddString(_ComboBox, "衣服", 3, _color[false])
		GUI:ComboBoxAddString(_ComboBox, "头盔", 4, _color[false])
        GUI:ComboBoxAddString(_ComboBox, "项链", 5, _color[false])
        GUI:ComboBoxAddString(_ComboBox, "护腕", 6, _color[false])
		GUI:ComboBoxAddString(_ComboBox, "戒指", 7, _color[false])
		GUI:ComboBoxAddString(_ComboBox, "靴子", 8, _color[false])
		GUI:ComboBoxAddString(_ComboBox, "勋章", 9, _color[false])		  
				
	end

	
	local _Istrue = false
	if CL:GetBasicSetting(4004) then
		_Istrue = LuaRet
	end
	local _handle = GetWindow(nil,"GameSettingDlg,SettingItem,AllGet")
	GUI:CheckBoxSetCheck(_handle,_Istrue)
	_Istrue = false
	if CL:GetBasicSetting(4005) then
		_Istrue = LuaRet
	end
	local _handle = GetWindow(nil,"GameSettingDlg,SettingItem,AllShow")
	GUI:CheckBoxSetCheck(_handle,_Istrue)
	item_update(SettingItem.index)
end
function item_update(index,str)
	if str ~= "" and str ~= nil then
		if CL:GetItemListByString(str) then
			SettingItem.item = getTable(LuaRet)	
		end
		if #SettingItem.item == 0 then
			return
		end	
		local a = 1
		local x = (SettingItem.page - 1) * 6 + 1
		local y = x + 6  
		for i = x , y do 	
			if SettingItem.item[i] == nil then
				break
			end 
			for j = 1 , 3 do 
				local _handle = GetWindow(nil,"GameSettingDlg,SettingItem,check"..a..j)
				
				GUI:CheckBoxSetCheck(_handle,SettingItem.item[i][j])			
			end	
			local _handle = GetWindow(nil,"GameSettingDlg,SettingItem,Edit"..a)
			local str = SettingItem.item[i][0]
			EditSetText(_handle,nil,str)		
			a = a + 1		
		end
	else
	
		if CL:GetItemListByType(index,SettingItem.page) then
			SettingItem.item = getTable(LuaRet)	
		end
	
		for i = 1 , 6 do 	
			for j = 1 , 3 do 
				local _handle = GetWindow(nil,"GameSettingDlg,SettingItem,check"..i..j)
				GUI:CheckBoxSetCheck(_handle,SettingItem.item[i][j])			
			end	
			local _handle = GetWindow(nil,"GameSettingDlg,SettingItem,Edit"..i)
			local str = SettingItem.item[i][0]
			EditSetText(_handle,nil,str)				
		end
	end	
	
end	

function SettingItem.OnStrChange(_Handle)

	local index = GUI:ComboBoxGetCurSelect(_Handle)

	SettingItem.index = tonumber(index)
	SettingItem.page = 1
	
	item_update(SettingItem.index,SettingItem.str)
end	

function SettingItem.add_time1(_handle)
	SettingItem.down_page(_handle)
	GUI:WndAddTimerBrief(_handle, 1000, "SettingItem.down_page")	
end	

function SettingItem.add_time(_handle)
	SettingItem.up_page(_handle)
	GUI:WndAddTimerBrief(_handle, 1000, "SettingItem.up_page")	
end	

function SettingItem.up_page(_handle)
	if SettingItem.page == 1 then
		return
	end
	SettingItem.page = SettingItem.page - 1
	item_update(SettingItem.index,SettingItem.str)
end

function SettingItem.deltime(_handle)
	GUI:WndDelAllTimer(_handle)
end	

function SettingItem.down_page(_handle)
	SettingItem.page = SettingItem.page + 1
	if SettingItem.str ~= "" then
		if CL:GetItemListByString(SettingItem.str) then
			SettingItem.item = getTable(LuaRet)
			local mina = (SettingItem.page - 1) * 6 + 1
			if #SettingItem.item < mina then
				SettingItem.page = SettingItem.page - 1
				return
			end	
		end
	else
		if not CL:GetItemListByType(SettingItem.index,SettingItem.page) then
			SettingItem.page = SettingItem.page - 1
			return
		end
	end	
	item_update(SettingItem.index,SettingItem.str)

end

function SettingItem.EditChange(_handle)
	SettingItem.str = GUI:EditGetTextM(_handle)
	SettingItem.page = 1
	item_update(SettingItem.index,SettingItem.str)
end

function SettingItem.All(_Handle)
	local tab = {4004,4005}
	local index = GUI:WndGetParam(_Handle)
	local _Istrue = GUI:CheckBoxGetCheck(_Handle)
	CL:ChangeBasicSetting(tab[index],_Istrue)
	item_update(SettingItem.index)		
end
function SettingItem.check(_Handle)
	local tab = {4001,4002,4003}
	local index = GUI:WndGetParam(_Handle)
	local hang = GUI:WndGetProperty(_Handle,"hang")
	local _Istrue = GUI:CheckBoxGetCheck(_Handle)
	local _handle = GetWindow(nil,"GameSettingDlg,SettingItem,Edit"..hang)
	local str = GUI:EditGetTextM(_handle)
	if str ~= "" then 
		CL:SetItemPropByName(str,tab[index],_Istrue) 
	end	
end

SettingItem.main()