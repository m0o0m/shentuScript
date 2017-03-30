Zhul_hs = {}

function Zhul_hs.main()
		
	local ui = ""
	.."<form default_parent='ForgeWnd'>" 
	.."<dialog OnInit='	Zhul_hs.UIInit' id='Zhul_hs' image='0' x='0' y='0' w='16' h='16' drag='true' revmsg='true'>"	
	.."	<image id='image_back' image='1802400001' x='15' y='74' w='375' h='269' />"
	.."	<image id='item_image' image='1802400003' x='130' y='100' w='150' h='150' />"
	.."	<itemctrl id='item' x='176' y='153' w='60' h='60' auto_manage='true' enable='true' revmsg='true' use_back='0'/>"
	.."	<image id='item_magic' x='176' y='153' w='60' h='60' />"
	.."	<edit id='lingli_have' x='75' y='370' w='72' h='25' revmsg='true' text_color='#C2B6A0' text='ӵ�л�����' />"	
	.."	<image id='lingli_back' image='1802400006' x='145' y='367' w='137' h='26' image_color='#C2B6A0' revmsg='true'/>"
	.."	<edit id='lingli1' x='170' y='366' w='74' h='24' revmsg='false' align='center' text_color='#C2B6A0' text='' />"
	.."	<edit id='lingli_need' x='75' y='402' w='72' h='25' revmsg='true' text_color='#C2B6A0' text='���ջ�����' />"	
	.."	<image id='lingli_back' image='1802400006' x='145' y='401' w='137' h='26' image_color='#C2B6A0' revmsg='true'/>"
	.."	<edit id='lingli2' x='170' y='402' w='74' h='24' revmsg='false' align='center' text_color='#C2B6A0' text='' />"
	.."	<button id='huis' image='1802400019' x='140' y='436' w='132' h='57' OnLButtonUp='Zhul_hs.huis' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='shuom' x='50' y='475' w='70' h='23' revmsg='true' text_color='#C2B6A0' text='' />"
	.."	<button id='huissm' image='1800000297' x='22' y='467' w='27' h='30' revmsg='true' text_color='#C2B6A0'/>"
	.." </dialog>"
	.."</form>"	
	GenFormByString(ui)
end

Zhul_hs.WndHandle = 0

function Zhul_hs.UIInit(_GUIHandle)	
	Zhul_hs.WndHandle = _GUIHandle	
	local _handle = GetWindow(_GUIHandle,"shuom")
	if _handle ~= 0 then	
		GUIRichEditAppendString(_handle,"#SELECT#����˵��#SELECTEND#")
		GUIWndSetHint(_handle, "<font color='#D58840'>����˵����\n</font><font color='#B8A085'>1.���ջ�����װ���̻�ȼ���Ϊ0��\n2.�������պ󣬻��������ص�ӵ�л�����\n3.�����̻�3������װ��������������������</font>")
	end						
end	

function Zhul_hs.updata(item,ll_have,ll_huis)	
	local _handle = GetWindow(nil,"ForgeWnd,Zhul_hs,item")
	GUIItemCtrlClearItemData(_handle)	
	RDItemCtrlSetGUIDataPropByGUID(_handle, nil, item)	
	Zhul_hs.OnEquipIn(_handle,ll_have,ll_huis)
end

function Zhul_hs.OnEquipIn(_handle,ll_have,ll_huis)
EditSetText(Zhul_hs.WndHandle,"lingli1",""..ll_have)	
EditSetText(Zhul_hs.WndHandle,"lingli2",""..ll_huis)
end

function Zhul_hs.huis(_handle)	
	local handle = GetWindow(nil,"ForgeWnd,Zhul_hs,item")	
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid) == 0 or item_guid == nil then
		msg_up("�������Ҫ���ջ�����װ��")
		return
	end
	UI:Lua_SubmitForm("ע����ձ�", "huis_item", ""..item_guid)
end




function msg_up(str)
	local _handle = GetWindow(nil,"ForgeWnd,Zhul_hs,huis")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -45 , -16 , 70 , color , 3)	
end	


Zhul_hs.main()