
AttWnd = {}

function AttWnd.main()
	
	local ui = ""
	.."<form default_parent='ForgeWnd'>" 
	.."<dialog OnInit='	ZhulWnd.UIInit' id='ZhulWnd' image='0' x='0' y='0' w='16' h='16' drag='true' revmsg='true'>"	
	.."	<image id='image_back' image='1802400001' x='15' y='74' w='375' h='269' />"
	.."	<image id='item_image' image='1802400003' x='130' y='60' w='150' h='150' />"
	.."	<itemctrl id='item' x='183' y='120' w='45' h='45' OnItemMoveIn='ZhulWnd.OnEquipIn'      auto_manage='true' enable='true' use_back='0' revmsg='true'/>"
	
	
	.."	<image id='nengliangback_image' image='1802400027' x='70' y='199' w='267' h='24' revmsg='false'/>"
	
	--属性背景
	.."	<image id='gong_image1' image='1802400023' x='31' y='245' w='146' h='81' revmsg='false'/>"
	.."	<image id='gong_image2' image='1802400023' x='233' y='245' w='146' h='81' revmsg='false'/>"	

	
	--添加【拥有灵力：】提示编辑框
	.."	<edit id='lingli_have' x='85' y='360' w='72' h='25' revmsg='true' text_color='#C2B6A0' text='拥有灵力：' />"	
	--添加【拥有灵力数目】可接收数据的编辑框的背景图
	.."	<image id='lingli_back' image='1802400006' x='155' y='357' w='137' h='26' image_color='#C2B6A0' revmsg='true'/>"
	--添加【拥有灵力数目】可接收数据的编辑框
	.."	<edit id='lingli1' x='175' y='356' w='74' h='24' revmsg='true' text_color='#C2B6A0' text='' />"
	
	--添加【消耗灵力：】提示编辑框
	.."	<edit id='lingli_need' x='85' y='392' w='72' h='25' revmsg='true' text_color='#C2B6A0' text='消耗灵力：' />"	
	--添加【消耗灵力数目】可接收数据的编辑框的背景图
	.."	<image id='lingli_back' image='1802400006' x='155' y='391' w='137' h='26' image_color='#C2B6A0' revmsg='true'/>"
	--添加【消耗灵力数目】可接收数据的编辑框
	.."	<edit id='lingli2' x='175' y='392' w='74' h='24' revmsg='true' text_color='#C2B6A0' text='' />"
	

	
	
	.." </dialog>"
	.."</form>"
	
	GenFormByString(ui)
	
end

AttWnd.WndHandle = 0


function AttWnd.UIInit(_GUIHandle)
	
	--获取注灵窗口的句柄
	AttWnd.WndHandle = _GUIHandle
	
	msg("初始化")
		
end	

AttWnd.main()