ServiceActivities ={}
local ui = "<form> <dialog id='ServiceActivities' image='1805600001' x='146' y='32' w='846' h='569' revmsg='true'  esc_close='true' drag='true' center='true' OnInit='ServiceActivities.UIInit' magic='1' >"
	ui=ui.."	<image h='349' id='titleImage' image='1806400008' parent='ServiceActivities' revmsg='false' w='636' x='400' y='7' />"
	ui=ui.."	<button OnLButtonUp='ServiceActivities.List' h='46' id='button0' image='1804900044' param='0' parent='ServiceActivities' revmsg='true' w='141' x='40' y='60' />"
	ui=ui.."	<button OnLButtonUp='ServiceActivities.List' h='46' id='button1' image='1806400108' param='1' parent='ServiceActivities' revmsg='true' w='141' x='40' y='115' />"
	ui=ui.."	<button OnLButtonUp='ServiceActivities.List' h='46' id='button2' image='1806400031' param='2' parent='ServiceActivities' revmsg='true' w='141' x='40' y='170' />"
	ui=ui.."	<button OnLButtonUp='ServiceActivities.List' h='46' id='button3' image='1806400035' param='3' parent='ServiceActivities' revmsg='true' w='141' x='40' y='225' />"
	ui=ui.."	<button OnLButtonUp='ServiceActivities.List' h='46' id='button4' image='1806400039' param='4' parent='ServiceActivities' revmsg='true' w='141' x='40' y='280' />"
	ui=ui.."	<button OnLButtonUp='ServiceActivities.List' h='46' id='button5' image='1806400043' param='5' parent='ServiceActivities' revmsg='true' w='141' x='40' y='335' />"
	ui=ui.."	<button OnLButtonUp='ServiceActivities.List' h='46' id='button6' image='1806400047' param='6' parent='ServiceActivities' revmsg='true' w='141' x='40' y='390' />"
	ui=ui.."	<button OnLButtonUp='ServiceActivities.List' h='46' id='button7' image='1806400051' param='7' parent='ServiceActivities' visible='false' revmsg='true' w='141' x='40' y='445' />	"
	ui=ui..""
	ui=ui.."	<image id='image1' image='1805600048' x='151' y='114' w='28' h='42' check_point='0' revmsg='true' enable='false' parent='ServiceActivities' visible='false'/>"
	ui=ui.."	<image id='image2' image='1805600048' x='151' y='169' w='28' h='42' check_point='0' revmsg='true' enable='false' parent='ServiceActivities' visible='false'/>"
	ui=ui.."	<image id='image3' image='1805600048' x='151' y='224' w='28' h='42' check_point='0' revmsg='true' enable='false' parent='ServiceActivities' visible='false'/>"
	ui=ui.."	<image id='image4' image='1805600048' x='151' y='279' w='28' h='42' check_point='0' revmsg='true' enable='false' parent='ServiceActivities' visible='false'/>"
	ui=ui.."	<image id='image5' image='1805600048' x='151' y='334' w='28' h='42' check_point='0' revmsg='true' enable='false' parent='ServiceActivities' visible='false'/>"
	ui=ui.."	<image id='image6' image='1805600048' x='151' y='389' w='28' h='42' check_point='0' revmsg='true' enable='false' parent='ServiceActivities' visible='false'/>"
	ui=ui.."	"
	ui=ui.."	<button OnLButtonUp='ServiceActivities.closed' h='38' id='closeBtn' image='1805900080' parent='ServiceActivities' revmsg='true' text_color='#C2B6A0' w='34' x='788' y='10' />	"
	ui=ui.."	<wnd h='490' id='buttonWin0' parent='ServiceActivities' revmsg='true' visible='true' w='630' x='181' y='60'>"
	ui=ui.."		<image h='349' id='BackImage' image='1803000001' parent='ServiceActivities,buttonWin0' revmsg='true' w='636' x='0' y='137' />"
	ui=ui.."		<image enable='false' h='267' id='GiftBoxImg' image='1803000031' parent='ServiceActivities,buttonWin0' w='278' x='0' y='185' />"
	ui=ui.."		<button OnLButtonClick='SpecialGift.selectGift' h='144' id='GiftBtn1' image='1804900007' param='1' parent='ServiceActivities,buttonWin0' revmsg='true' w='157' x='0' y='0' />"
	ui=ui.."		<button OnLButtonClick='SpecialGift.selectGift' h='144' id='GiftBtn2' image='1804900011' param='2' parent='ServiceActivities,buttonWin0' revmsg='true' w='157' x='159' y='0' />"
	ui=ui.."		<button OnLButtonClick='SpecialGift.selectGift' h='144' id='GiftBtn3' image='1804900015' param='3' parent='ServiceActivities,buttonWin0' revmsg='true' w='157' x='318' y='0' />"
	ui=ui.."		<button OnLButtonClick='SpecialGift.selectGift' h='144' id='GiftBtn4' image='1804900019' param='4' parent='ServiceActivities,buttonWin0' revmsg='true' w='157' x='477' y='0' />"
	ui=ui.."		<image enable='false' h='33' id='GiftEditBackImg1' image='1804900032' parent='ServiceActivities,buttonWin0' w='148' x='0' y='105' />"
	ui=ui.."		<image enable='false' h='33' id='GiftEditBackImg2' image='1804900032' parent='ServiceActivities,buttonWin0' w='148' x='159' y='105' />"
	ui=ui.."		<image enable='false' h='33' id='GiftEditBackImg3' image='1804900032' parent='ServiceActivities,buttonWin0' w='148' x='318' y='105' />"
	ui=ui.."		<image enable='false' h='33' id='GiftEditBackImg4' image='1804900032' parent='ServiceActivities,buttonWin0' w='148' x='477' y='105' />"
	ui=ui.."		<image enable='false' h='27' id='GiftEditImg1' image='1804900027' parent='ServiceActivities,buttonWin0' w='115' x='50' y='111' />"
	ui=ui.."		<image enable='false' h='27' id='GiftEditImg2' image='1804900028' parent='ServiceActivities,buttonWin0' w='115' x='211' y='111' />"
	ui=ui.."		<image enable='false' h='27' id='GiftEditImg3' image='1804900029' parent='ServiceActivities,buttonWin0' w='115' x='370' y='111' />"
	ui=ui.."		<image enable='false' h='27' id='GiftEditImg4' image='1804900030' parent='ServiceActivities,buttonWin0' w='115' x='525' y='111' />"
	ui=ui.."		<image h='60' id='GiftImage' image='1803000002' parent='ServiceActivities,buttonWin0' revmsg='true' w='361' x='240' y='185' />"
	ui=ui.."		<edit h='16' id='InfoEdit' parent='ServiceActivities,buttonWin0' revmsg='true' text='花费          即可获得' text_color='#CBC190' w='230' x='277' y='199' />"
	ui=ui.."		<edit align='center' h='16' id='costEdit' parent='ServiceActivities,buttonWin0' revmsg='true' text='88888元宝' text_color='#FFFF00' w='70' x='302' y='199' />"
	ui=ui.."		<edit h='16' id='GiftNameEdit' parent='ServiceActivities,buttonWin0' revmsg='true' text='无敌礼包' text_color='#FFFF00' w='72' x='420' y='199' />"
	ui=ui.."		<button OnLButtonClick='SpecialGift.award' enable='false' h='59' id='GetRewardsBtn' image='1803000003' parent='ServiceActivities,buttonWin0' revmsg='true' w='134' x='366' y='406' />"
	ui=ui.."		<image enable='false' h='56' id='item_back11' image='1800000384' parent='ServiceActivities,buttonWin0' w='56' x='332' y='259' />"
	ui=ui.."		<image enable='false' h='56' id='item_back21' image='1800000384' parent='ServiceActivities,buttonWin0' w='56' x='402' y='259' />"
	ui=ui.."		<image enable='false' h='56' id='item_back31' image='1800000384' parent='ServiceActivities,buttonWin0' w='56' x='472' y='259' />"
	ui=ui.."		<image enable='false' h='56' id='item_back41' image='1800000384' parent='ServiceActivities,buttonWin0' w='56' x='295' y='330' />"
	ui=ui.."		<image enable='false' h='56' id='item_back51' image='1800000384' parent='ServiceActivities,buttonWin0' w='56' x='365' y='330' />"
	ui=ui.."		<image enable='false' h='56' id='item_back61' image='1800000384' parent='ServiceActivities,buttonWin0' w='56' x='435' y='330' />"
	ui=ui.."		<image enable='false' h='56' id='item_back71' image='1800000384' parent='ServiceActivities,buttonWin0' w='56' x='505' y='330' />"
	ui=ui.."		<image enable='false' h='56' id='item_back12' image='0' parent='ServiceActivities,buttonWin0' w='56' x='332' y='259' />"
	ui=ui.."		<image enable='false' h='56' id='item_back22' image='0' parent='ServiceActivities,buttonWin0' w='56' x='402' y='259' />"
	ui=ui.."		<image enable='false' h='56' id='item_back32' image='0' parent='ServiceActivities,buttonWin0' w='56' x='472' y='259' />"
	ui=ui.."		<image enable='false' h='56' id='item_back42' image='0' parent='ServiceActivities,buttonWin0' w='56' x='295' y='330' />"
	ui=ui.."		<image enable='false' h='56' id='item_back52' image='0' parent='ServiceActivities,buttonWin0' w='56' x='365' y='330' />"
	ui=ui.."		<image enable='false' h='56' id='item_back62' image='0' parent='ServiceActivities,buttonWin0' w='56' x='435' y='330' />"
	ui=ui.."		<image enable='false' h='56' id='item_back72' image='0' parent='ServiceActivities,buttonWin0' w='56' x='505' y='330' />"
	ui=ui.."		<itemctrl enable='true' h='56' id='ItemCell1' parent='ServiceActivities,buttonWin0' revmsg='true' use_back='0' w='56' x='336' y='263' />"
	ui=ui.."		<itemctrl enable='true' h='56' id='ItemCell2' parent='ServiceActivities,buttonWin0' revmsg='true' use_back='0' w='56' x='406' y='263' />"
	ui=ui.."		<itemctrl enable='true' h='56' id='ItemCell3' parent='ServiceActivities,buttonWin0' revmsg='true' use_back='0' w='56' x='476' y='263' />"
	ui=ui.."		<itemctrl enable='true' h='56' id='ItemCell4' parent='ServiceActivities,buttonWin0' revmsg='true' use_back='0' w='56' x='301' y='334' />"
	ui=ui.."		<itemctrl enable='true' h='56' id='ItemCell5' parent='ServiceActivities,buttonWin0' revmsg='true' use_back='0' w='56' x='371' y='334' />"
	ui=ui.."		<itemctrl enable='true' h='56' id='ItemCell6' parent='ServiceActivities,buttonWin0' revmsg='true' use_back='0' w='56' x='441' y='334' />"
	ui=ui.."		<itemctrl enable='true' h='56' id='ItemCell7' parent='ServiceActivities,buttonWin0' revmsg='true' use_back='0' w='56' x='511' y='334' />"
	ui=ui.."		"
	ui=ui.."		<image enable='true' h='56' id='item_magic1' image='3020110000' parent='ServiceActivities,buttonWin0' revmsg='false' w='56' x='306' y='233' />"
	ui=ui.."		<image enable='true' h='56' id='item_magic2' image='3020110000' parent='ServiceActivities,buttonWin0' revmsg='false' w='56' x='376' y='233' />"
	ui=ui.."		<image enable='true' h='56' id='item_magic3' image='3020110000' parent='ServiceActivities,buttonWin0' revmsg='false' w='56' x='446' y='233' />"
	ui=ui.."		<image enable='true' h='56' id='item_magic4' image='3020110000' parent='ServiceActivities,buttonWin0' revmsg='false' w='56' x='268' y='303' />"
	ui=ui.."		<image enable='true' h='56' id='item_magic5' image='3020110000' parent='ServiceActivities,buttonWin0' revmsg='false' w='56' x='338' y='303' />"
	ui=ui.."		<image enable='true' h='56' id='item_magic6' image='3020110000' parent='ServiceActivities,buttonWin0' revmsg='false' w='56' x='409' y='303' />"
	ui=ui.."		<image enable='true' h='56' id='item_magic7' image='3020110000' parent='ServiceActivities,buttonWin0' revmsg='false' w='56' x='478' y='303' />"
	ui=ui.."	"
	ui=ui.."	</wnd>"
	ui=ui.."	"
	ui=ui.."	<wnd h='490' id='buttonWin1' parent='ServiceActivities' revmsg='true' visible='false' w='630' x='181' y='58'>"
	ui=ui.."		<image h='200' id='imageTop' image='1806400055' parent='ServiceActivities,buttonWin1' revmsg='true' w='630' x='0' y='0' />"
	ui=ui.."		"
	ui=ui.."		<edit font='system' h='23' id='TestWndChild_0' parent='ServiceActivities,buttonWin1' revmsg='true' text='活动时间：' text_color='#b89e85' w='80' x='52' y='73' />"
	ui=ui.."		<edit font='system' h='23' id='duration' parent='ServiceActivities,buttonWin1' revmsg='true' text='' text_color='#00FF00' w='221' x='110' y='73' />"
	ui=ui.."		<edit font='system' h='23' id='TestWndChild_2' parent='ServiceActivities,buttonWin1' revmsg='true' text='活动说明：' text_color='#b89e85' w='80' x='52' y='96' />"
	ui=ui.."		<edit font='system' h='23' id='TestWndChild_3' parent='ServiceActivities,buttonWin1' revmsg='true' text='活动期间人物满足相应条件即可领取相应奖励' text_color='#Dfd6c7' w='411' x='110' y='96' />"
	ui=ui.."		<edit font='system' h='20' id='edit1' parent='ServiceActivities,buttonWin1' revmsg='true' text='目标等级' text_color='#f0b772' w='76' x='60' y='172' />"
	ui=ui.."		<edit font='system' h='20' id='edit2' parent='ServiceActivities,buttonWin1' revmsg='true' text='剩余奖励' text_color='#f0b772' w='76' x='200' y='172' />"
	ui=ui.."		<edit font='system' h='20' id='edit3' parent='ServiceActivities,buttonWin1' revmsg='true' text='奖励展示' text_color='#f0b772' w='76' x='347' y='172' />"
	ui=ui.."		<edit font='system' h='20' id='edit4' parent='ServiceActivities,buttonWin1' revmsg='true' text='操作' text_color='#f0b772' w='76' x='537' y='172' />"
	ui=ui.."		"
	ui=ui.."		<wnd h='285' id='buttonWin' parent='ServiceActivities,buttonWin1' revmsg='true' scroll='true' w='616' x='7' y='198'>"
	ui=ui.."			<image h='72' id='image1' image='1806400006' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."			"
	ui=ui.."			<wnd h='285' id='wnd1' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='625' x='0' y='0'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1892100046' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' revmsg='true' text='70级' text_color='#C5A400' w='36' x='97' y='26' />"
	ui=ui.."				<edit font='system' h='24' id='last' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' revmsg='true' text='341' text_color='#C5A400' w='66' x='210' y='28' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' w='48' x='279' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' w='48' x='339' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' w='48' x='399' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' rbtn_use='true' revmsg='true' use_back='0' w='48' x='280' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' rbtn_use='true' revmsg='true' use_back='0' w='48' x='340' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' rbtn_use='true' revmsg='true' use_back='0' w='48' x='400' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getReward' h='36' id='status2' image='1805600146' param='1' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' revmsg='true' visible='false' w='83' x='488' y='15' />   --已领取"
	ui=ui.."				<image h='65' id='status1' image='1800000294' parent='ServiceActivities,buttonWin1,buttonWin,wnd1' revmsg='true' visible='false' w='94' x='487' y='3' />   --未达成"
	ui=ui.."			</wnd>	"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image2' image='1806400006' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='599' x='0' y='72' />"
	ui=ui.."			<wnd h='285' id='wnd2' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='625' x='0' y='72'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1892100046' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' revmsg='true' text='80级' text_color='#C5A400' w='36' x='97' y='26' />"
	ui=ui.."				<edit font='system' h='24' id='last' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' revmsg='true' text='341' text_color='#C5A400' w='66' x='210' y='28' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' w='48' x='279' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' w='48' x='339' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' w='48' x='399' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' rbtn_use='true' revmsg='true' use_back='0' w='48' x='280' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' rbtn_use='true' revmsg='true' use_back='0' w='48' x='340' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' rbtn_use='true' revmsg='true' use_back='0' w='48' x='400' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getReward' h='36' id='status2' image='1805600146' param='2' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' revmsg='true' visible='false' w='83' x='488' y='15' />   --已领取"
	ui=ui.."				<image h='65' id='status1' image='1800000294' parent='ServiceActivities,buttonWin1,buttonWin,wnd2' revmsg='true' visible='false' w='94' x='487' y='3' />   --未达成"
	ui=ui.."			</wnd>"
	ui=ui.."			<image h='72' id='image3' image='1806400006' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='599' x='0' y='144' />"
	ui=ui.."			<wnd h='285' id='wnd3' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='625' x='0' y='144'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1892100046' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' revmsg='true' text='85级' text_color='#C5A400' w='36' x='97' y='26' />"
	ui=ui.."				<edit font='system' h='24' id='last' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' revmsg='true' text='341' text_color='#C5A400' w='66' x='210' y='28' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' w='48' x='279' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' w='48' x='339' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' w='48' x='399' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' rbtn_use='true' revmsg='true' use_back='0' w='48' x='280' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' rbtn_use='true' revmsg='true' use_back='0' w='48' x='340' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' rbtn_use='true' revmsg='true' use_back='0' w='48' x='400' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getReward' h='36' id='status2' image='1805600146' param='3' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' revmsg='true' visible='false' w='83' x='488' y='15' />   --已领取"
	ui=ui.."				<image h='65' id='status1' image='1800000294' parent='ServiceActivities,buttonWin1,buttonWin,wnd3' revmsg='true' visible='false' w='94' x='487' y='3' />   --未达成"
	ui=ui.."			</wnd>"
	ui=ui.."			<image h='72' id='image4' image='1806400006' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='599' x='0' y='216' />"
	ui=ui.."			<wnd h='285' id='wnd4' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='625' x='0' y='216'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1892100046' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' revmsg='true' text='90级' text_color='#C5A400' w='36' x='97' y='26' />"
	ui=ui.."				<edit font='system' h='24' id='last' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' revmsg='true' text='341' text_color='#C5A400' w='66' x='210' y='28' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' w='48' x='279' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' w='48' x='339' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' w='48' x='399' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' rbtn_use='true' revmsg='true' use_back='0' w='48' x='280' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' rbtn_use='true' revmsg='true' use_back='0' w='48' x='340' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' rbtn_use='true' revmsg='true' use_back='0' w='48' x='400' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getReward' h='36' id='status2' image='1805600146' param='4' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' revmsg='true' visible='false' w='83' x='488' y='15' />   --已领取"
	ui=ui.."				<image h='65' id='status1' image='1800000294' parent='ServiceActivities,buttonWin1,buttonWin,wnd4' revmsg='true' visible='false' w='94' x='487' y='3' />   --未达成"
	ui=ui.."			</wnd>"
	ui=ui.."			<image h='72' id='image5' image='1806400006' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='599' x='0' y='288' />"
	ui=ui.."			<wnd h='285' id='wnd5' parent='ServiceActivities,buttonWin1,buttonWin' revmsg='true' w='625' x='0' y='288'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1892100046' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' revmsg='true' text='95级' text_color='#C5A400' w='36' x='97' y='26' />"
	ui=ui.."				<edit font='system' h='24' id='last' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' revmsg='true' text='341' text_color='#C5A400' w='66' x='210' y='28' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' w='48' x='279' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' w='48' x='339' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' w='48' x='399' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' rbtn_use='true' revmsg='true' use_back='0' w='48' x='280' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' rbtn_use='true' revmsg='true' use_back='0' w='48' x='340' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' rbtn_use='true' revmsg='true' use_back='0' w='48' x='400' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getReward' h='36' id='status2' image='1805600146' param='5' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' revmsg='true' visible='false' w='83' x='488' y='15' />   --已领取"
	ui=ui.."				<image h='65' id='status1' image='1800000294' parent='ServiceActivities,buttonWin1,buttonWin,wnd5' revmsg='true' visible='false' w='94' x='487' y='3' />   --未达成"
	ui=ui.."			</wnd>"
	ui=ui.."		</wnd>		"
	ui=ui.."	</wnd>	"
	ui=ui.."	"
	ui=ui.."	"
	ui=ui.."	<wnd h='490' id='buttonWin2' parent='ServiceActivities' revmsg='true' visible='false' w='630' x='181' y='58'>"
	ui=ui.."		<image h='200' id='imageTop' image='1806400000' parent='ServiceActivities,buttonWin2' revmsg='true' w='630' x='0' y='0' />"
	ui=ui.."		"
	ui=ui.."		<edit font='system' h='23' id='TestWndChild_0' parent='ServiceActivities,buttonWin2' revmsg='true' text='活动时间：' text_color='#b89e85' w='80' x='52' y='73' />"
	ui=ui.."		<edit font='system' h='23' id='duration' parent='ServiceActivities,buttonWin2' revmsg='true' text='' text_color='#00FF00' w='221' x='110' y='73' />"
	ui=ui.."		<edit font='system' h='23' id='TestWndChild_2' parent='ServiceActivities,buttonWin2' revmsg='true' text='活动说明：' text_color='#b89e85' w='80' x='52' y='96' />"
	ui=ui.."		<edit font='system' h='23' id='TestWndChild_3' parent='ServiceActivities,buttonWin2' revmsg='true' text='活动期间人物满足相应条件即可领取相应奖励' text_color='#Dfd6c7' w='411' x='110' y='96' />"
	ui=ui.."		<edit font='system' h='20' id='edit1' parent='ServiceActivities,buttonWin2' revmsg='true' text='目标等级' text_color='#f0b772' w='76' x='70' y='172' />"
	ui=ui.."		<edit font='system' h='20' id='edit2' parent='ServiceActivities,buttonWin2' revmsg='true' text='奖励展示' text_color='#f0b772' w='76' x='297' y='172' />"
	ui=ui.."		<edit font='system' h='20' id='edit3' parent='ServiceActivities,buttonWin2' revmsg='true' text='操作' text_color='#f0b772' w='76' x='520' y='172' />"
	ui=ui.."		"
	ui=ui.."		<wnd h='285' id='buttonWin' parent='ServiceActivities,buttonWin2' revmsg='true' scroll='true' w='616' x='7' y='198'>"
	ui=ui.."			<image h='72' id='image1' image='1806400006' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."			"
	ui=ui.."			<wnd h='285' id='wnd1' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='625' x='0' y='0'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1891700002' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' revmsg='true' text='2阶' text_color='#C5A400' w='36' x='97' y='26' /> "
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' w='48' x='229' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' w='48' x='289' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' w='48' x='349' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' rbtn_use='true' revmsg='true' use_back='0' w='48' x='230' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' rbtn_use='true' revmsg='true' use_back='0' w='48' x='290' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' rbtn_use='true' revmsg='true' use_back='0' w='48' x='350' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.boost' h='36' id='status1' image='1805600146' param='1' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getWing' h='36' id='status2' image='1805600146' param='1' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin2,buttonWin,wnd1' revmsg='true' visible='false' w='83' x='488' y='15' />"
	ui=ui.."			</wnd> "
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image2' image='1806400006' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='599' x='0' y='72' />"
	ui=ui.."			<wnd h='285' id='wnd2' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='625' x='0' y='72'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1891700003' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' revmsg='true' text='3阶' text_color='#C5A400' w='36' x='97' y='26' /> "
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' w='48' x='229' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' w='48' x='289' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' w='48' x='349' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' rbtn_use='true' revmsg='true' use_back='0' w='48' x='230' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' rbtn_use='true' revmsg='true' use_back='0' w='48' x='290' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' rbtn_use='true' revmsg='true' use_back='0' w='48' x='350' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.boost' h='36' id='status1' image='1805600146' param='2' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getWing' h='36' id='status2' image='1805600146' param='2' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin2,buttonWin,wnd2' revmsg='true' visible='false' w='83' x='488' y='15' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<image h='72' id='image3' image='1806400006' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='599' x='0' y='144' />"
	ui=ui.."			<wnd h='285' id='wnd3' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='625' x='0' y='144'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1891700005' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' revmsg='true' text='5阶' text_color='#C5A400' w='36' x='97' y='26' /> "
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' w='48' x='229' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' w='48' x='289' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' w='48' x='349' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' rbtn_use='true' revmsg='true' use_back='0' w='48' x='230' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' rbtn_use='true' revmsg='true' use_back='0' w='48' x='290' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' rbtn_use='true' revmsg='true' use_back='0' w='48' x='350' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.boost' h='36' id='status1' image='1805600146' param='3' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getWing' h='36' id='status2' image='1805600146' param='3' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin2,buttonWin,wnd3' revmsg='true' visible='false' w='83' x='488' y='15' />"
	ui=ui.."			</wnd>"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image4' image='1806400006' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='599' x='0' y='216' />"
	ui=ui.."			<wnd h='285' id='wnd4' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='625' x='0' y='216'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1891700007' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' revmsg='true' text='7阶' text_color='#C5A400' w='36' x='97' y='26' /> "
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' w='48' x='229' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' w='48' x='289' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' w='48' x='349' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' rbtn_use='true' revmsg='true' use_back='0' w='48' x='230' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' rbtn_use='true' revmsg='true' use_back='0' w='48' x='290' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' rbtn_use='true' revmsg='true' use_back='0' w='48' x='350' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.boost' h='36' id='status1' image='1805600146' param='4' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getWing' h='36' id='status2' image='1805600146' param='4' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin2,buttonWin,wnd4' revmsg='true' visible='false' w='83' x='488' y='15' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<image h='72' id='image5' image='1806400006' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='599' x='0' y='288' />"
	ui=ui.."			<wnd h='285' id='wnd5' parent='ServiceActivities,buttonWin2,buttonWin' revmsg='true' w='625' x='0' y='288'>"
	ui=ui.."				<image h='57' id='image11' image='1806400007' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' revmsg='true' w='167' x='25' y='10' />"
	ui=ui.."				<image fitsize='true' h='50' id='image12' image='1891700010' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' revmsg='true' w='50' x='30' y='12' />"
	ui=ui.."				<edit font='system' h='24' id='image13' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' revmsg='true' text='9阶' text_color='#C5A400' w='36' x='97' y='26' /> "
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg1' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' w='48' x='229' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg2' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' w='48' x='289' y='10' />"
	ui=ui.."				<image enable='false' h='48' id='ItemBkImg3' image='1800000147' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' w='48' x='349' y='10' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl1' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' rbtn_use='true' revmsg='true' use_back='0' w='48' x='230' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl2' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' rbtn_use='true' revmsg='true' use_back='0' w='48' x='290' y='12' />"
	ui=ui.."				<itemctrl enable='true' h='48' id='itemctrl3' init_item='100绑定元宝' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' rbtn_use='true' revmsg='true' use_back='0' w='48' x='350' y='12' /> "
	ui=ui.."				<button OnLButtonUp='ServiceActivities.boost' h='36' id='status1' image='1805600146' param='5' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<button OnLButtonUp='ServiceActivities.getWing' h='36' id='status2' image='1805600146' param='5' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' revmsg='true' text='立刻领取' text_color='#f5dcbd' visible='false' w='108' x='477' y='18' />"
	ui=ui.."				<image h='46' id='status3' image='1805600121' parent='ServiceActivities,buttonWin2,buttonWin,wnd5' revmsg='true' visible='false' w='83' x='488' y='15' />"
	ui=ui.."			</wnd>"
	ui=ui.."		</wnd>		"
	ui=ui.."	</wnd>	"
	ui=ui.."	"
	ui=ui.."	<wnd OnVisible='buttonWin3.UIInit' h='490' id='buttonWin3' parent='ServiceActivities' revmsg='true' visible='false' w='630' x='181' y='58'>"
	ui=ui.."		<image h='200' id='imageTop' image='1806400001' parent='ServiceActivities,buttonWin3' revmsg='true' w='630' x='0' y='0' />"
	ui=ui.."		<image h='22' id='gainChips' image='1806400009' parent='ServiceActivities,buttonWin3' revmsg='true' w='80' x='38' y='60' />"
	ui=ui.."		<edit font='SIMLI18' h='30' id='chipCount' parent='ServiceActivities,buttonWin3' revmsg='true' text='0' text_color='#ffffff' w='100' x='130' y='55' />"
	ui=ui.."		<edit font='system' h='22' id='TestWndChild_3' parent='ServiceActivities,buttonWin3' revmsg='true' text='活动时间：' text_color='#F8B551' w='67' x='40' y='90' />"
	ui=ui.."		<edit font='system' h='22' id='duration' parent='ServiceActivities,buttonWin3' revmsg='true' text='' text_color='#00CC33' w='227' x='110' y='90' />"
	ui=ui.."		<edit font='system' h='22' id='TestWndChild_5' parent='ServiceActivities,buttonWin3' revmsg='true' text='活动说明：' text_color='#F8B551' w='67' x='40' y='120' />"
	ui=ui.."		<edit font='system' h='22' id='TestWndChild_6' parent='ServiceActivities,buttonWin3' revmsg='true' text='活动期间人物满足相应条件即可领取相应的奖励' text_color='#C2B6A0' w='300' x='110' y='120' />"
	ui=ui.."		<edit font='system' h='22' id='edit1' parent='ServiceActivities,buttonWin3' revmsg='true' text='获得宝石碎片数量' text_color='#f0b772' w='130' x='43' y='173' />"
	ui=ui.."		<edit font='system' h='22' id='edit2' parent='ServiceActivities,buttonWin3' revmsg='true' text='奖励展示' text_color='#f0b772' w='67' x='290' y='173' />"
	ui=ui.."		<edit font='system' h='22' id='edit3' parent='ServiceActivities,buttonWin3' revmsg='true' text='操作' text_color='#f0b772' w='67' x='520' y='173' />"
	ui=ui.."		<wnd h='285' id='buttonWin' parent='ServiceActivities,buttonWin3' revmsg='true' scroll='true' w='616' x='7' y='198'>"
	ui=ui.."			<wnd h='72' id='win1' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin' revmsg='true' w='599' x='0' y='0'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin,win1' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin3,buttonWin,win1' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410054' parent='ServiceActivities,buttonWin3,buttonWin,win1' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin3,buttonWin,win1' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win1' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win1' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win1' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin3,buttonWin,win1' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin3,buttonWin,win1' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin3,buttonWin,win1' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin3.get' h='36' id='btn' image='1805600146' param='1' parent='ServiceActivities,buttonWin3,buttonWin,win1' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win2' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin' revmsg='true' w='599' x='0' y='72'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin,win2' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin3,buttonWin,win2' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410054' parent='ServiceActivities,buttonWin3,buttonWin,win2' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin3,buttonWin,win2' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win2' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win2' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win2' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin3,buttonWin,win2' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin3,buttonWin,win2' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin3,buttonWin,win2' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin3.get' h='36' id='btn' image='1805600146' param='2' parent='ServiceActivities,buttonWin3,buttonWin,win2' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win3' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin' revmsg='true' w='599' x='0' y='144'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin,win3' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin3,buttonWin,win3' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410054' parent='ServiceActivities,buttonWin3,buttonWin,win3' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin3,buttonWin,win3' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win3' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win3' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win3' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin3,buttonWin,win3' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin3,buttonWin,win3' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin3,buttonWin,win3' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin3.get' h='36' id='btn' image='1805600146' param='3' parent='ServiceActivities,buttonWin3,buttonWin,win3' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win4' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin' revmsg='true' w='599' x='0' y='216'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin,win4' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin3,buttonWin,win4' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410054' parent='ServiceActivities,buttonWin3,buttonWin,win4' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin3,buttonWin,win4' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win4' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win4' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win4' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin3,buttonWin,win4' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin3,buttonWin,win4' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin3,buttonWin,win4' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin3.get' h='36' id='btn' image='1805600146' param='4' parent='ServiceActivities,buttonWin3,buttonWin,win4' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win5' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin' revmsg='true' w='599' x='0' y='288'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin,win5' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin3,buttonWin,win5' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410054' parent='ServiceActivities,buttonWin3,buttonWin,win5' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin3,buttonWin,win5' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win5' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win5' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win5' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin3,buttonWin,win5' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin3,buttonWin,win5' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin3,buttonWin,win5' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin3.get' h='36' id='btn' image='1805600146' param='5' parent='ServiceActivities,buttonWin3,buttonWin,win5' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win6' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin' revmsg='true' w='599' x='0' y='360'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin,win6' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin3,buttonWin,win6' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410054' parent='ServiceActivities,buttonWin3,buttonWin,win6' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin3,buttonWin,win6' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win6' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win6' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win6' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin3,buttonWin,win6' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin3,buttonWin,win6' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin3,buttonWin,win6' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin3.get' h='36' id='btn' image='1805600146' param='6' parent='ServiceActivities,buttonWin3,buttonWin,win6' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win7' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin' revmsg='true' w='599' x='0' y='432'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin3,buttonWin,win7' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin3,buttonWin,win7' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410054' parent='ServiceActivities,buttonWin3,buttonWin,win7' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin3,buttonWin,win7' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win7' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win7' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin3,buttonWin,win7' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin3,buttonWin,win7' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin3,buttonWin,win7' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin3,buttonWin,win7' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin3.get' h='31' id='btn' image='1805600146' param='7' parent='ServiceActivities,buttonWin3,buttonWin,win7' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='88' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."		</wnd>			"
	ui=ui.."	</wnd>			"
	ui=ui.."	<wnd OnVisible='buttonWin4.UIInit' h='490' id='buttonWin4' parent='ServiceActivities' revmsg='true' visible='false' w='630' x='181' y='58'>"
	ui=ui.."		<image h='200' id='imageTop' image='1806400002' parent='ServiceActivities,buttonWin4' revmsg='true' w='630' x='0' y='0' />"
	ui=ui.."		<image h='22' id='gainChips' image='1806400009' parent='ServiceActivities,buttonWin4' revmsg='true' w='80' x='38' y='60' />"
	ui=ui.."		<edit font='SIMLI18' h='30' id='chipCount' parent='ServiceActivities,buttonWin4' revmsg='true' text='0' text_color='#ffffff' w='100' x='130' y='55' />"
	ui=ui.."		<edit font='system' h='22' id='TestWndChild_3' parent='ServiceActivities,buttonWin4' revmsg='true' text='活动时间：' text_color='#F8B551' w='67' x='40' y='90' />"
	ui=ui.."		<edit font='system' h='22' id='duration' parent='ServiceActivities,buttonWin4' revmsg='true' text='' text_color='#00CC33' w='227' x='110' y='90' />"
	ui=ui.."		<edit font='system' h='22' id='TestWndChild_5' parent='ServiceActivities,buttonWin4' revmsg='true' text='活动说明：' text_color='#F8B551' w='67' x='40' y='120' />"
	ui=ui.."		<edit font='system' h='22' id='TestWndChild_6' parent='ServiceActivities,buttonWin4' revmsg='true' text='活动期间人物满足相应条件即可领取相应的奖励' text_color='#C2B6A0' w='300' x='110' y='120' />"
	ui=ui.."		<edit font='system' h='22' id='edit1' parent='ServiceActivities,buttonWin4' revmsg='true' text='获得狂暴之灵数量' text_color='#f0b772' w='130' x='43' y='173' />"
	ui=ui.."		<edit font='system' h='22' id='edit2' parent='ServiceActivities,buttonWin4' revmsg='true' text='奖励展示' text_color='#f0b772' w='90' x='290' y='173' />"
	ui=ui.."		<edit font='system' h='22' id='edit3' parent='ServiceActivities,buttonWin4' revmsg='true' text='操作' text_color='#f0b772' w='90' x='520' y='173' />"
	ui=ui.."		<wnd h='285' id='buttonWin' parent='ServiceActivities,buttonWin4' revmsg='true' scroll='true' w='616' x='7' y='198'>"
	ui=ui.."			<wnd h='72' id='win1' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin' revmsg='true' w='599' x='0' y='0'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin,win1' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin4,buttonWin,win1' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410049' parent='ServiceActivities,buttonWin4,buttonWin,win1' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin4,buttonWin,win1' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win1' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win1' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win1' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin4,buttonWin,win1' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin4,buttonWin,win1' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin4,buttonWin,win1' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin4.get' h='36' id='btn' image='1805600146' param='1' parent='ServiceActivities,buttonWin4,buttonWin,win1' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win2' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin' revmsg='true' w='599' x='0' y='72'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin,win2' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin4,buttonWin,win2' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410049' parent='ServiceActivities,buttonWin4,buttonWin,win2' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin4,buttonWin,win2' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win2' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win2' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win2' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin4,buttonWin,win2' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin4,buttonWin,win2' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin4,buttonWin,win2' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin4.get' h='36' id='btn' image='1805600146' param='2' parent='ServiceActivities,buttonWin4,buttonWin,win2' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win3' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin' revmsg='true' w='599' x='0' y='144'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin,win3' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin4,buttonWin,win3' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410049' parent='ServiceActivities,buttonWin4,buttonWin,win3' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin4,buttonWin,win3' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win3' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win3' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win3' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin4,buttonWin,win3' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin4,buttonWin,win3' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin4,buttonWin,win3' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin4.get' h='36' id='btn' image='1805600146' param='3' parent='ServiceActivities,buttonWin4,buttonWin,win3' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win4' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin' revmsg='true' w='599' x='0' y='216'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin,win4' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin4,buttonWin,win4' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410049' parent='ServiceActivities,buttonWin4,buttonWin,win4' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin4,buttonWin,win4' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win4' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win4' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win4' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin4,buttonWin,win4' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin4,buttonWin,win4' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin4,buttonWin,win4' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin4.get' h='36' id='btn' image='1805600146' param='4' parent='ServiceActivities,buttonWin4,buttonWin,win4' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win5' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin' revmsg='true' w='599' x='0' y='288'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin,win5' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin4,buttonWin,win5' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410049' parent='ServiceActivities,buttonWin4,buttonWin,win5' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin4,buttonWin,win5' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win5' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win5' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win5' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin4,buttonWin,win5' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin4,buttonWin,win5' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin4,buttonWin,win5' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin4.get' h='36' id='btn' image='1805600146' param='5' parent='ServiceActivities,buttonWin4,buttonWin,win5' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win6' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin' revmsg='true' w='599' x='0' y='360'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin,win6' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin4,buttonWin,win6' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410049' parent='ServiceActivities,buttonWin4,buttonWin,win6' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin4,buttonWin,win6' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win6' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win6' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win6' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin4,buttonWin,win6' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin4,buttonWin,win6' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin4,buttonWin,win6' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin4.get' h='36' id='btn' image='1805600146' param='6' parent='ServiceActivities,buttonWin4,buttonWin,win6' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='108' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."			<wnd h='72' id='win7' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin' revmsg='true' w='599' x='0' y='432'>"
	ui=ui.."				<image h='72' id='winBackImage' image='1806400006' parent='ServiceActivities,buttonWin4,buttonWin,win7' revmsg='true' w='599' x='0' y='0' />"
	ui=ui.."				<image check_point='0' h='57' id='itemBackImage' image='1806400007' parent='ServiceActivities,buttonWin4,buttonWin,win7' revmsg='true' w='167' x='26' y='7' />"
	ui=ui.."				<image check_point='0' h='51' id='itemImage' image='1891410049' parent='ServiceActivities,buttonWin4,buttonWin,win7' revmsg='true' w='51' x='28' y='0' />"
	ui=ui.."				<edit font='system' h='24' id='chipCountLevel' parent='ServiceActivities,buttonWin4,buttonWin,win7' revmsg='true' text_color='#F8B551' w='64' x='90' y='23' />"
	ui=ui.."				<image enable='true' h='51' id='itemback1' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win7' revmsg='true' w='51' x='245' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback2' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win7' revmsg='true' w='51' x='305' y='13' />"
	ui=ui.."				<image enable='true' h='51' id='itemback3' image='1803900036' parent='ServiceActivities,buttonWin4,buttonWin,win7' revmsg='true' w='51' x='365' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item1' parent='ServiceActivities,buttonWin4,buttonWin,win7' rbtn_use='true' revmsg='true' use_back='0' w='51' x='245' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item2' parent='ServiceActivities,buttonWin4,buttonWin,win7' rbtn_use='true' revmsg='true' use_back='0' w='51' x='305' y='13' />"
	ui=ui.."				<itemctrl enable='true' h='51' id='item3' parent='ServiceActivities,buttonWin4,buttonWin,win7' rbtn_use='true' revmsg='true' use_back='0' w='51' x='365' y='13' />"
	ui=ui.."				<button OnLButtonUp='buttonWin4.get' h='31' id='btn' image='1805600146' param='7' parent='ServiceActivities,buttonWin4,buttonWin,win7' revmsg='true' text='立即提升' text_color='#f5dcbd' visible='false' w='88' x='485' y='22' />"
	ui=ui.."			</wnd>"
	ui=ui.."		</wnd>		"
	ui=ui.."	</wnd>	"
	ui=ui.."	<wnd h='490' id='buttonWin5' parent='ServiceActivities' revmsg='true' visible='false' w='630' x='181' y='58'>"
	ui=ui.."		<image h='485' id='imageTop' image='1806400003' parent='ServiceActivities,buttonWin5' revmsg='true' w='630' x='0' y='0' />"
	ui=ui.."		<edit font='system' h='23' id='TestWndChild_0' parent='ServiceActivities,buttonWin5' revmsg='true' text='活动时间：' text_color='#b89e85' w='80' x='52' y='73' />"
	ui=ui.."		<edit font='system' h='23' id='duration' parent='ServiceActivities,buttonWin5' revmsg='true' text='' text_color='#00FF00' w='221' x='110' y='73' />"
	ui=ui.."		<edit font='system' h='23' id='TestWndChild_2' parent='ServiceActivities,buttonWin5' revmsg='true' text='活动说明：' text_color='#b89e85' w='80' x='52' y='96' />"
	ui=ui.."		<edit font='system' h='23' id='TestWndChild_3' parent='ServiceActivities,buttonWin5' revmsg='true' text='活动期间人物满足相应条件即可领取相应奖励' text_color='#Dfd6c7' w='411' x='110' y='96' />"
	ui=ui.."		<image enable='true' h='72' id='itemback1' image='1805600155' parent='ServiceActivities,buttonWin5' revmsg='true' w='72' x='65' y='324' />"
	ui=ui.."		<image enable='true' h='72' id='itemback2' image='1805600155' parent='ServiceActivities,buttonWin5' revmsg='true' w='72' x='145' y='324' />"
	ui=ui.."		<image enable='true' h='72' id='itemback3' image='1805600155' parent='ServiceActivities,buttonWin5' revmsg='true' w='72' x='225' y='324' />"
	ui=ui.."		<image enable='true' h='72' id='itemback4' image='1805600155' parent='ServiceActivities,buttonWin5' revmsg='true' w='72' x='305' y='324' />"
	ui=ui.."		<image enable='true' h='72' id='itemback5' image='1805600155' parent='ServiceActivities,buttonWin5' revmsg='true' w='72' x='385' y='324' />"
	ui=ui.."		<itemctrl enable='true' h='72' id='TestWndChild_4' init_item='2000元宝' parent='ServiceActivities,buttonWin5' revmsg='true' use_back='0' w='72' x='68' y='327' />"
	ui=ui.."		<itemctrl enable='true' h='72' id='TestWndsChild_5' init_item='2000元宝' parent='ServiceActivities,buttonWin5' revmsg='true' use_back='0' w='72' x='148' y='327' />"
	ui=ui.."		<itemctrl enable='true' h='72' id='TestWndChild_6' init_item='2000元宝' parent='ServiceActivities,buttonWin5' revmsg='true' use_back='0' w='72' x='228' y='327' />"
	ui=ui.."		<itemctrl enable='true' h='72' id='TestWndChild_7' init_item='2000元宝' parent='ServiceActivities,buttonWin5' revmsg='true' use_back='0' w='72' x='308' y='327' />"
	ui=ui.."		<itemctrl enable='true' h='72' id='TestWndChild_8' init_item='2000元宝' parent='ServiceActivities,buttonWin5' revmsg='true' use_back='0' w='72' x='388' y='327' />"
	ui=ui.."		<button id='btn' image='1805600146' x='500' y='350' w='88' h='31' parent='ServiceActivities,buttonWin5' revmsg='true' OnLButtonUp='ServiceActivities.getYB' text_color='#f5dcbd' text='立即领取' visible='false'/>"
	ui=ui.."	</wnd>	"
	ui=ui.."	<wnd h='490' id='buttonWin6' parent='ServiceActivities' revmsg='true' visible='false' w='630' x='181' y='58'>"
	ui=ui.."		<image h='200' id='imageTop' image='1806400004' parent='ServiceActivities,buttonWin6' revmsg='true' w='630' x='0' y='0' />"
	ui=ui.."		<button OnLButtonUp='ServiceActivities.SetBtn6State' h='46' id='phasebtn1' image='1805600150' param='1' parent='ServiceActivities,buttonWin6' revmsg='true' text='第一期' text_color='#C2B6A0' w='141' x='15' y='170' />"
	ui=ui.."		<button OnLButtonUp='ServiceActivities.SetBtn6State' h='46' id='phasebtn2' image='1805600150' param='2' parent='ServiceActivities,buttonWin6' revmsg='true' text='第二期' text_color='#C2B6A0' w='141' x='77' y='170' />"
	ui=ui.."		<button OnLButtonUp='ServiceActivities.SetBtn6State' h='46' id='phasebtn3' image='1805600150' param='3' parent='ServiceActivities,buttonWin6' revmsg='true' text='第三期' text_color='#C2B6A0' w='141' x='139' y='170' />"
	ui=ui.."		<image h='200' id='textImg1' image='1806400010' parent='ServiceActivities,buttonWin6' revmsg='true' w='630' x='15' y='84' />	"
	ui=ui.."		<edit align='center' font='system' h='25' id='myRank' parent='ServiceActivities,buttonWin6' revmsg='true' text='未上榜' text_color='#C2B6A0' w='120' x='60' y='75' />	"
	ui=ui.."		<edit align='center' font='system' h='25' id='promptEdit1' parent='ServiceActivities,buttonWin6' revmsg='true' text='本日活动剩余时间:' text_color='#C2B6A0' w='120' x='8' y='106' />	"
	ui=ui.."		<edit font='system' h='25' id='prompt1Content' parent='ServiceActivities,buttonWin6' revmsg='true' text_color='#00FF00' w='560' x='123' y='113' />	"
	ui=ui.."		<edit align='center' font='system' h='25' id='promptEdit2' parent='ServiceActivities,buttonWin6' revmsg='true' text='本期已消费元宝:' text_color='#C2B6A0' w='100' x='14' y='128' />	"
	ui=ui.."		<edit font='system' h='25' id='myConsume' parent='ServiceActivities,buttonWin6' revmsg='true' text='0' text_color='#00FF00' w='560' x='110' y='135' />	"
	ui=ui.."			"
	ui=ui.."		<wnd h='285' id='buttonWin' parent='ServiceActivities,buttonWin6' revmsg='true' scroll='true' w='616' x='7' y='198'>"
	ui=ui.."			<image h='72' id='image1' image='1806400006' parent='ServiceActivities,buttonWin6,buttonWin' revmsg='true' w='599' x='0' y='0'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400011' parent='ServiceActivities,buttonWin6,buttonWin,image1' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400013' parent='ServiceActivities,buttonWin6,buttonWin,image1' revmsg='false' w='599' x='151' y='13' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='playerName' parent='ServiceActivities,buttonWin6,buttonWin,image1' revmsg='true' text_color='RED' w='100' x='25' y='34' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin6,buttonWin,image1' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<image enable='true' h='48' id='itemback2' image='1806000059' parent='ServiceActivities,buttonWin6,buttonWin,image1' revmsg='true' w='48' x='345' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem1' parent='ServiceActivities,buttonWin6,buttonWin,image1' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem2' parent='ServiceActivities,buttonWin6,buttonWin,image1' rbtn_use='true' revmsg='true' use_back='0' w='48' x='347' y='14' />"
	ui=ui.."			<button OnLButtonUp='ServiceActivities.GetResumeAward' enable='false' h='46' id='getAward' image='1805600146' param='3' parent='ServiceActivities,buttonWin6,buttonWin,image1' revmsg='true' text='立即领取' text_color='#f5dcbd' w='141' x='450' y='19' />"
	ui=ui.."			</image>"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image2' image='1806400006' parent='ServiceActivities,buttonWin6,buttonWin' revmsg='true' w='599' x='0' y='72'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400011' parent='ServiceActivities,buttonWin6,buttonWin,image2' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400014' parent='ServiceActivities,buttonWin6,buttonWin,image2' revmsg='false' w='599' x='148' y='13' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='playerName' parent='ServiceActivities,buttonWin6,buttonWin,image2' revmsg='true' text_color='RED' w='100' x='25' y='34' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin6,buttonWin,image2' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<image enable='true' h='48' id='itemback2' image='1806000059' parent='ServiceActivities,buttonWin6,buttonWin,image2' revmsg='true' w='48' x='345' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem1' parent='ServiceActivities,buttonWin6,buttonWin,image2' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem2' parent='ServiceActivities,buttonWin6,buttonWin,image2' rbtn_use='true' revmsg='true' use_back='0' w='48' x='347' y='14' />"
	ui=ui.."			<button OnLButtonUp='ServiceActivities.GetResumeAward' enable='false' h='46' id='getAward' image='1805600146' param='3' parent='ServiceActivities,buttonWin6,buttonWin,image2' revmsg='true' text='立即领取' text_color='#f5dcbd' w='141' x='450' y='19' />"
	ui=ui.."			</image>"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image3' image='1806400006' parent='ServiceActivities,buttonWin6,buttonWin' revmsg='true' w='599' x='0' y='144'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400011' parent='ServiceActivities,buttonWin6,buttonWin,image3' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400015' parent='ServiceActivities,buttonWin6,buttonWin,image3' revmsg='false' w='599' x='148' y='13' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='playerName' parent='ServiceActivities,buttonWin6,buttonWin,image3' revmsg='true' text_color='RED' w='100' x='25' y='34' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin6,buttonWin,image3' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<image enable='true' h='48' id='itemback2' image='1806000059' parent='ServiceActivities,buttonWin6,buttonWin,image3' revmsg='true' w='48' x='345' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem1' parent='ServiceActivities,buttonWin6,buttonWin,image3' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem2' parent='ServiceActivities,buttonWin6,buttonWin,image3' rbtn_use='true' revmsg='true' use_back='0' w='48' x='347' y='14' />"
	ui=ui.."			<button OnLButtonUp='ServiceActivities.GetResumeAward' enable='false' h='46' id='getAward' image='1805600146' param='3' parent='ServiceActivities,buttonWin6,buttonWin,image3' revmsg='true' text='立即领取' text_color='#f5dcbd' w='141' x='450' y='19' />"
	ui=ui.."			</image>"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image4' image='1806400006' parent='ServiceActivities,buttonWin6,buttonWin' revmsg='true' w='599' x='0' y='216'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400011' parent='ServiceActivities,buttonWin6,buttonWin,image4' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400018' parent='ServiceActivities,buttonWin6,buttonWin,image4' revmsg='false' w='599' x='136' y='16' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin6,buttonWin,image4' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem' parent='ServiceActivities,buttonWin6,buttonWin,image4' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			<button OnLButtonUp='ServiceActivities.GetResumeAward' enable='false' h='46' id='getAward' image='1805600146' param='3' parent='ServiceActivities,buttonWin6,buttonWin,image4' revmsg='true' text='立即领取' text_color='#f5dcbd' w='141' x='450' y='19' />"
	ui=ui.."			</image>"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image5' image='1806400006' parent='ServiceActivities,buttonWin6,buttonWin' revmsg='true' w='599' x='0' y='288'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400011' parent='ServiceActivities,buttonWin6,buttonWin,image5' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400019' parent='ServiceActivities,buttonWin6,buttonWin,image5' revmsg='false' w='599' x='131' y='16' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin6,buttonWin,image5' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem' parent='ServiceActivities,buttonWin6,buttonWin,image5' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			<button OnLButtonUp='ServiceActivities.GetResumeAward' enable='false' h='46' id='getAward' image='1805600146' param='3' parent='ServiceActivities,buttonWin6,buttonWin,image5' revmsg='true' text='立即领取' text_color='#f5dcbd' w='141' x='450' y='19' />"
	ui=ui.."			</image>"
	ui=ui.."		</wnd>		"
	ui=ui.."	</wnd>	"
	ui=ui.."	<wnd h='490' id='buttonWin7' parent='ServiceActivities' revmsg='true' visible='false' w='630' x='181' y='58'>"
	ui=ui.."		<image h='200' id='imageTop' image='1806400005' parent='ServiceActivities,buttonWin7' revmsg='true' w='630' x='0' y='0' />"
	ui=ui.."		<image h='200' id='textImg1' image='1806400010' parent='ServiceActivities,buttonWin7' revmsg='true' w='630' x='15' y='56' />	"
	ui=ui.."		<edit align='center' font='system' h='25' id='myRank' parent='ServiceActivities,buttonWin7' revmsg='true' text_color='#C2B6A0' w='120' x='60' y='47' />	"
	ui=ui.."		<edit align='center' font='system' h='25' id='promptEdit1' parent='ServiceActivities,buttonWin7' revmsg='true' text='本日活动剩余时间:' text_color='#C2B6A0' w='120' x='8' y='80' />	"
	ui=ui.."		<edit font='system' h='25' id='prompt1Content' parent='ServiceActivities,buttonWin7' revmsg='true' text_color='#00FF00' w='560' x='123' y='87' />	"
	ui=ui.."		<edit align='center' font='system' h='25' id='promptEdit2' parent='ServiceActivities,buttonWin7' revmsg='true' text='活动时间:' text_color='#C2B6A0' w='60' x='14' y='105' />	"
	ui=ui.."		<edit font='system' h='25' id='prompt2Content' parent='ServiceActivities,buttonWin7' revmsg='true' text='2016年10月10日-2016年10月17日' text_color='#00FF00' w='560' x='74' y='113' />	"
	ui=ui.."		<edit align='center' font='system' h='25' id='promptEdit3' parent='ServiceActivities,buttonWin7' revmsg='true' text='温馨提示:' text_color='#C2B6A0' w='60' x='14' y='130' />	"
	ui=ui.."		<edit font='system' h='25' id='prompt3Content' parent='ServiceActivities,buttonWin7' revmsg='true' text='充值满30000元宝即可参加排行，活动结束后，奖励通过邮件发送' text_color='#FFFFFF' w='560' x='74' y='137' />	"
	ui=ui.."		<edit font='system' h='25' id='daylyRecharge' parent='ServiceActivities,buttonWin7' revmsg='true' text='今日已累计充值       元宝' text_color='#C2B6A0' w='600' x='450' y='80' />	"
	ui=ui.."		<edit align='center' font='system' h='25' id='daylyRechargeNum' parent='ServiceActivities,buttonWin7' revmsg='true' text_color='#F0FF00' w='60' x='524' y='72' />	"
	ui=ui.."		<button OnLButtonUp='ServiceActivities.OpenRechargePage' h='46' id='rechargeBtn' image='1806000065' parent='ServiceActivities,buttonWin7' revmsg='true' w='141' x='464' y='105' />"
	ui=ui.."		"
	ui=ui.."		<edit align='center' font='system' h='25' id='edit1' parent='ServiceActivities,buttonWin7' revmsg='true' text='奖励条件' text_color='#f0b772' w='158' x='15' y='170' />"
	ui=ui.."		<edit align='center' font='system' h='25' id='edit2' parent='ServiceActivities,buttonWin7' revmsg='true' text='奖励' text_color='#f0b772' w='158' x='236' y='170' />"
	ui=ui.."		<edit align='center' font='system' h='25' id='edit3' parent='ServiceActivities,buttonWin7' revmsg='true' text='已充元宝' text_color='#f0b772' w='158' x='456' y='170' />"
	ui=ui.."		<wnd h='285' id='buttonWin' parent='ServiceActivities,buttonWin7' revmsg='true' scroll='true' w='616' x='7' y='198'>"
	ui=ui.."			<image h='72' id='image1' image='1806400006' parent='ServiceActivities,buttonWin7,buttonWin' revmsg='true' w='599' x='0' y='0'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400012' parent='ServiceActivities,buttonWin7,buttonWin,image1' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400013' parent='ServiceActivities,buttonWin7,buttonWin,image1' revmsg='false' w='599' x='121' y='13' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='playerName' parent='ServiceActivities,buttonWin7,buttonWin,image1' revmsg='true' text_color='RED' w='100' x='19' y='34' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='topupNum' parent='ServiceActivities,buttonWin7,buttonWin,image1' revmsg='true' text_color='RED' w='100' x='475' y='22' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin7,buttonWin,image1' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem' parent='ServiceActivities,buttonWin7,buttonWin,image1' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			</image>	"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image2' image='1806400006' parent='ServiceActivities,buttonWin7,buttonWin' revmsg='true' w='599' x='0' y='72'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400012' parent='ServiceActivities,buttonWin7,buttonWin,image2' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400014' parent='ServiceActivities,buttonWin7,buttonWin,image2' revmsg='false' w='599' x='118' y='13' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='playerName' parent='ServiceActivities,buttonWin7,buttonWin,image2' revmsg='true' text_color='RED' w='100' x='19' y='34' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='topupNum' parent='ServiceActivities,buttonWin7,buttonWin,image2' revmsg='true' text_color='RED' w='100' x='475' y='22' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin7,buttonWin,image2' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem' parent='ServiceActivities,buttonWin7,buttonWin,image2' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			</image>"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image3' image='1806400006' parent='ServiceActivities,buttonWin7,buttonWin' revmsg='true' w='599' x='0' y='144'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400012' parent='ServiceActivities,buttonWin7,buttonWin,image3' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400015' parent='ServiceActivities,buttonWin7,buttonWin,image3' revmsg='false' w='599' x='118' y='13' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='playerName' parent='ServiceActivities,buttonWin7,buttonWin,image3' revmsg='true' text_color='RED' w='100' x='19' y='34' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='topupNum' parent='ServiceActivities,buttonWin7,buttonWin,image3' revmsg='true' text_color='RED' w='100' x='475' y='22' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin7,buttonWin,image3' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem' parent='ServiceActivities,buttonWin7,buttonWin,image3' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			</image>"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image4' image='1806400006' parent='ServiceActivities,buttonWin7,buttonWin' revmsg='true' w='599' x='0' y='216'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400012' parent='ServiceActivities,buttonWin7,buttonWin,image4' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400016' parent='ServiceActivities,buttonWin7,buttonWin,image4' revmsg='false' w='599' x='118' y='16' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='playerName' parent='ServiceActivities,buttonWin7,buttonWin,image4' revmsg='true' text_color='RED' w='100' x='19' y='34' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='topupNum' parent='ServiceActivities,buttonWin7,buttonWin,image4' revmsg='true' text_color='RED' w='100' x='475' y='22' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin7,buttonWin,image4' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem' parent='ServiceActivities,buttonWin7,buttonWin,image4' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			</image>"
	ui=ui.."			"
	ui=ui.."			<image h='72' id='image5' image='1806400006' parent='ServiceActivities,buttonWin7,buttonWin' revmsg='true' w='599' x='0' y='288'>"
	ui=ui.."			<image h='72' id='textImg' image='1806400012' parent='ServiceActivities,buttonWin7,buttonWin,image5' revmsg='false' w='599' x='15' y='10' />"
	ui=ui.."			<image h='72' id='ranking' image='1806400017' parent='ServiceActivities,buttonWin7,buttonWin,image5' revmsg='false' w='599' x='118' y='16' />"
	ui=ui.."			<edit align='center' font='system' h='25' id='playerName' parent='ServiceActivities,buttonWin7,buttonWin,image5' revmsg='true' text_color='RED' w='100' x='19' y='34' />				"
	ui=ui.."			<edit align='center' font='system' h='25' id='topupNum' parent='ServiceActivities,buttonWin7,buttonWin,image5' revmsg='true' text_color='RED' w='100' x='475' y='22' />"
	ui=ui.."			<image enable='true' h='48' id='itemback1' image='1806000059' parent='ServiceActivities,buttonWin7,buttonWin,image5' revmsg='true' w='48' x='285' y='13' />"
	ui=ui.."			<itemctrl enable='true' h='48' id='awardItem' parent='ServiceActivities,buttonWin7,buttonWin,image5' rbtn_use='true' revmsg='true' use_back='0' w='48' x='287' y='14' />"
	ui=ui.."			</image>"
	ui=ui.."		</wnd>		"
	ui=ui.."	</wnd>	"
	ui=ui.." </dialog>"
	ui=ui.."</form>"

function ServiceActivities.main()
	GenFormByString(ui)
end

--UI Logic Code Start
wings = 0
ServiceActivities.WndHandle = 0
ServiceActivities.restTime = 0
ServiceActivities.DcWnd = 0
ServiceActivities.wingVisible = true
ServiceActivities.getLevelVisible = true
ServiceActivities.InitializeFlag = false
ServiceActivities.end_tab = {} 
function ServiceActivities.UIInit(_Parent)
	
	wings = 1
	ServiceActivities.WndHandle = _Parent
	ServiceActivities.time_id = 0
	ServiceActivities.DcWndHandle = 0     --倒计时句柄
	ServiceActivities.myRank = 0          --自己的消费排名
	ServiceActivities.termEnd = false     --本期是否结束
	ServiceActivities.requireTerm = 1     --想要领奖的期数
	ServiceActivities.clickedBtn = 0      --被点击的按钮句柄
	ButtonSetIsActivePageBtn(nil,"ServiceActivities,button0",true)
	for i = 1, 5 do 
		local handle = GetWindow(0,"ServiceActivities,buttonWin6,msg"..i)
		if handle ~= 0 then 
			GUI:WndClose(handle)
		end
	end
	
	if not ServiceActivities.InitializeFlag then
		for i = 1, 3 do
			local handle = GetWindow(_Parent,"buttonWin6,phasebtn"..i)
			if handle ~= 0 then
				GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 107, 91, 80))
				GUI:ButtonSetStateTextColor(handle,1,MakeARGB(255, 107, 91, 80))
				GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
				GUI:WndSetTextOffset(handle, 0, 3)
			end
		end
		ServiceActivities.InitializeFlag = true
	end
	
	for i = 0 , 7 do 
		if i == 0 then
			ButtonSetIsActivePageBtn(nil,"ServiceActivities,button"..i,true)
			WndSetVisible(0,"ServiceActivities,buttonWin"..i,true)
		else
			ButtonSetIsActivePageBtn(nil,"ServiceActivities,button"..i,false)
			WndSetVisible(0,"ServiceActivities,buttonWin"..i,false)
		end	
	end
	local handle = GetWindow(0,"ServiceActivities,buttonWin0")
	SpecialGift.UIInit(handle)
	UI:Lua_SubmitForm("新开服活动","get_image_list", "")
end	
function ServiceActivities:ImageUpdata(TABLE,end_tab)
	ServiceActivities.end_tab = end_tab
	for i = 1 , #TABLE do 
		local handle = GetWindow(ServiceActivities.WndHandle,"image"..i)
		if handle ~= 0 then
			if TABLE[i] == 1 then
				GUI:WndSetVisible(handle, true)
			elseif TABLE[i] == 0 then
				GUI:WndSetVisible(handle, false)
			end
		end
	end
end

function ServiceActivities.OnCloese()
	for i = 1, 5 do 
		local handle = GetWindow(0,"ServiceActivities,buttonWin6,msg"..i)
		if tonumber(handle) ~= 0 then 
			GUI:WndClose(handle)
		end
	end
end

-----------------------------------------------------     特惠礼包
SpecialGift = {}
SpecialGift.WndHandle = 0
SpecialGift.SelectIndex = 0
SpecialGift.imagehanle = true
--SpecialGift.isQuest = 0
function SpecialGift.UIInit(_Handle)
	SpecialGift.WndHandle=_Handle
	if SpecialGift.imagehanle  then 
		for i=1,7 do 
			local handle = GetWindow(_Handle,"item_magic"..i)
			if handle ~= 0 then
				--GUI:ImageSetDrawCenter(handle,true)		
				GUI:ImageSetAnimateEnable(handle, true, 150)
			--	GUI:ImageSetTransfrom(handle, 6500, 6500,0)	
			end	
		end
		SpecialGift.imagehanle=false
	end
	--[[if FormParam[1] ~= nil then
		SpecialGift.isQuest = tonumber(FormParam[1])
	end	--]]
	UI:Lua_SubmitForm("开服活动","get_gift_info", "1")
end

function ServiceActivities.List(_handle)
	local index = GUI:WndGetParam(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if Is_true then
		return 
	end
	if index < 6 and index > 0 then 
		if ServiceActivities.end_tab[index] == 1 then 
			local handle = GetWindow(0,"ServiceActivities,button"..index)
			if handle ~= 0 then
				window_msg_update(handle,"活动已结束",60,MakeARGB(255, 255, 0, 0),1.5) 
			end
			return
		end
	end
			
	for i = 0 , 7 do 
		if index == i then
			ButtonSetIsActivePageBtn(nil,"ServiceActivities,button"..i,true)
			WndSetVisible(0,"ServiceActivities,buttonWin"..i,true)
		else
			ButtonSetIsActivePageBtn(nil,"ServiceActivities,button"..i,false)
			WndSetVisible(0,"ServiceActivities,buttonWin"..i,false)
		end	
	end

	if index == 0 then 
		local handle = GetWindow(0,"ServiceActivities,buttonWin0")
		SpecialGift.UIInit(handle)
	elseif index == 1 then 
		UI:Lua_SubmitForm("新开服活动", "fun_level", "")
	elseif index ==2 then  	
		UI:Lua_SubmitForm("新开服活动", "fun_wing", "")
	elseif index == 5 then
		UI:Lua_SubmitForm("新开服活动", "getCastle", "")
	elseif index == 6 then
		UI:Lua_SubmitForm("新开服活动", "ConsumeRankMain", "")
	elseif index == 7 then
		UI:Lua_SubmitForm("新开服活动", "RechargeRankMain", "")
	end
end

SpecialGift.info = {}

function SpecialGift.showInfo(_Ret)
	SpecialGift.info=_Ret
	local _GUIHandle = 0
	if taskOpenActivities ~= nil then
		_GUIHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "GiftBtn".. taskOpenActivities)
		taskOpenActivities = 0
	else
		_GUIHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "GiftBtn1")
	end	
	if _GUIHandle ~= 0 then
		SpecialGift.selectGift(_GUIHandle)
	end

	if _Ret[5] >= 3 then
		local handle = GetWindow(0, "ServiceActivities,button7")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,true)
		end
	end
end

function SpecialGift.selectGift(_Handle)
	local param = GUI:WndGetParam(_Handle)
	SpecialGift.SelectIndex = param
	local _GUIHandle = 0
	for i = 1, 4 do
		_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GiftBtn"..i)
		if i == param then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
		else
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
	end
	_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "costEdit")
	GUI:EditSetTextM(_GUIHandle, ''..SpecialGift.info[2][param].."元宝")
	_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GiftNameEdit")
	GUI:EditSetTextM(_GUIHandle, ''..SpecialGift.info[1][param])
	_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
	if SpecialGift.info[3][param] ~= 1 then
		GUI:WndSetEnableM(_GUIHandle, true)
	else
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	local award={}
	for i = 1, #SpecialGift.info[4][param] do
		award=SpecialGift.info[4][param][i]
		_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "ItemCell"..i)
		RDItemCtrlSetGUIDataByKeyName(_GUIHandle, award[1], award[2], award[3])
		local Temp = CL:GetItemTemplateHandleByKeyName(award[1])
		if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_COLOR) then
			if LuaRet ~= nil then
				local color =  LuaRet
				--local Handle = GUIWndFindWindow(SpecialGift.WndHandle,"item_back"..i)
				local Handle = GUI:WndFindWindow(SpecialGift.WndHandle,"item_back"..i.."2")
				--msg(color)
				if color == "PURPLE" then
					GUI:WndSetVisible(Handle, true)
					ImageSetImageID(Handle,"",1891430004)
				elseif color == "GOLD" then
					GUI:WndSetVisible(Handle, true)
					ImageSetImageID(Handle,"",1891430001)
				elseif color == "RED" then
					GUI:WndSetVisible(Handle, true)
					ImageSetImageID(Handle,"",1891430000)
				elseif color == "GREENG" then
					GUI:WndSetVisible(Handle, true)
					ImageSetImageID(Handle,"",1891430003)
				elseif color == "BLUE" then
					GUI:WndSetVisible(Handle, true)
					ImageSetImageID(Handle,"",1891430002)
				elseif color == "WHITE" then
					GUI:WndSetVisible(Handle, false)
				end
			end
		end
	end
end

function SpecialGift.award(_Handle)
	local _GUIHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
	GUI:WndSetEnableM(_GUIHandle, false)
	UI:Lua_SubmitForm("开服活动","get_gift_award", ""..SpecialGift.SelectIndex)
end

function SpecialGift.awardBack(_State,_Index)
	local _GUIHandle = 0
	if _State == 1 then
		SpecialGift.info[3][_Index] = 1
		if _Index == SpecialGift.SelectIndex then
			_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
	else
		if _Index == SpecialGift.SelectIndex then
			_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
			GUI:WndSetEnableM(_GUIHandle, true)
		end
	end
end
------------------------------------------------------
function ServiceActivities.SetBtn6State(this)
	local Is_true = ButtonGetIsActivePageBtn(this)
	if Is_true then
		return 
	end
	local index = GUI:WndGetParam(this)
	ServiceActivities.requireTerm = index
	local str = ""
	--msg("currentIndex="..index)
	--msg("currentTerm="..ServiceActivities.term)
	if index > ServiceActivities.term then
		local var = index - ServiceActivities.term
		str = GetLeaveTimeString(ServiceActivities.restTime+(var-1)*8*60*60)
		ServiceActivities.MsgPrompt(this, "离活动开启还有"..str)
	else
		for i = 1, 3 do			
			if index == i then
				ButtonSetIsActivePageBtn(nil,"ServiceActivities,buttonWin6,phasebtn"..i,true)
				if ServiceActivities.term == index then
					if ServiceActivities.restTime > 0 then
						ServiceActivities.termEnd = false
						str = GetLeaveTimeString(ServiceActivities.restTime)
						if ServiceActivities.DcWndHandle ~= 0 then
							GUI:EditSetTextM(ServiceActivities.DcWndHandle, ''..str)
						end
					end
				else
					ServiceActivities.termEnd = true
				end
			else
				ButtonSetIsActivePageBtn(nil,"ServiceActivities,buttonWin6,phasebtn"..i,false)
			end	
		end
		UI:Lua_SubmitForm("新开服活动", "ShowCheckedDetails", tostring(index))
	end
end

function ServiceActivities.ShowConsumeChartDetails(individual, data)
	ServiceActivities.myRank = 0
	local btnSN = 0
	handle = GetWindow(0, "ServiceActivities,buttonWin6,myConsume")
	if handle ~= 0 then
		GUI:EditSetTextM(handle,""..individual)
	end	
	if ServiceActivities.DcWndHandle ~= 0 and ServiceActivities.termEnd then
		GUI:EditSetTextM(ServiceActivities.DcWndHandle, "已结束")
	end
	handle = GetWindow(0, "ServiceActivities,buttonWin6,myRank")
	if handle ~= 0 then
		GUI:EditSetTextM(handle,"未上榜")
	end
	for i = 1, 5 do
		handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",getAward")
		if handle ~= 0 then
			GUI:WndSetTextColorM(handle, MakeARGB(255, 245, 220, 189))
			GUI:WndSetEnableM(handle, false)
			GUI:WndSetTextM(handle, "立即领取")
		end
	end
	if data == nil then       --全区没人花过钱
		for i = 1, 3 do 
			local handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,"虚位以待")
				GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
			end
		end
		return
	end
	
	if #data >= 3 then
		for i = 1, 3 do
			handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,tostring(data[i][1]))
				GUI:EditSetTextColor(handle, MakeARGB(255, 180, 122, 34))
			end
		end
	else
		for i = 1, #data do
			handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,tostring(data[i][1]))
				GUI:EditSetTextColor(handle, MakeARGB(255, 180, 122, 34))
			end
		end
		for i = #data + 1,3 do
			handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,"虚位以待")
				GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
			end
		end
	end
	for i = 1, #data do
		if data[i][1] ~= nil then
			if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME) then
				if data[i][1] == LuaRet then
					ServiceActivities.myRank = i
					btnSN = i
				end
			end
		end
	end
	if btnSN == 4 or btnSN == 5 then
		btnSN = 4
	elseif btnSN >= 6 and  btnSN <= 10 then
		btnSN = 5
	end
	handle = GetWindow(0, "ServiceActivities,buttonWin6,myRank")
	if handle ~= 0 then
		if ServiceActivities.myRank ~= 0 then
			GUI:EditSetTextM(handle,"第"..ServiceActivities.myRank.."名")
		else
			GUI:EditSetTextM(handle,"未上榜")
		end
	end
	if ServiceActivities.termEnd and ServiceActivities.myRank ~= 0 then
		handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..btnSN..",getAward")
		if handle ~= 0 then
			GUI:WndSetTextColorM(handle, MakeARGB(255, 245, 220, 189))
			if data[ServiceActivities.myRank][3] == 0 or data[ServiceActivities.myRank][3] == nil then
				GUI:WndSetEnableM(handle, true)
			else
				GUI:WndSetEnableM(handle, false)
				GUI:WndSetTextM(handle, "已领取")
			end
		end
	end
end

function ServiceActivities.MsgPrompt(handle, str)
	if handle ~= 0 then
		local color = MakeARGB(255, 255, 0, 0)
		window_msg_up(handle , str, -78, -16, 70, color, 3)
	end
end



function ServiceActivities.ConsumeTop10Data(individal, itemArr, term, restTime, data)   --消费排名   buttonWin6
	ServiceActivities.myRank = 0
	for i = 1, 3 do
		if i == tonumber(term) then
			ButtonSetIsActivePageBtn(nil,"ServiceActivities,buttonWin6,phasebtn"..tonumber(term),true)
		else
			ButtonSetIsActivePageBtn(nil,"ServiceActivities,buttonWin6,phasebtn"..i,false)
		end
	end
	for i = 1, 5 do
		local btnH = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",getAward")
		if btnH ~= 0 then
			GUI:WndSetTextM(btnH, "立即领取")
			GUI:WndSetEnableM(btnH, false)
			GUI:WndSetTextColorM(btnH, MakeARGB(255, 245, 220, 189))
		end
	end
	ServiceActivities.term = tonumber(term)
	ServiceActivities.requireTerm = tonumber(term)
	ServiceActivities.DcWndHandle = GetWindow(ServiceActivities.WndHandle, "buttonWin6,prompt1Content")
	ServiceActivities.restTime = tonumber(restTime)
	local str = GetLeaveTimeString(ServiceActivities.restTime)
	if ServiceActivities.DcWndHandle ~= 0 then
		GUI:EditSetTextM(ServiceActivities.DcWndHandle, ''..str)
	end
	local consumeChartHandle = GetWindow(ServiceActivities.WndHandle, "buttonWin6")
	if ServiceActivities.time_id == 0 and ServiceActivities.restTime > 0 then	
		ServiceActivities.time_id = tonumber(GUI:WndAddTimerBrief(ServiceActivities.WndHandle,1000,"ServiceActivities.OnCountDown"))
		GUI:WndRegistScript(ServiceActivities.WndHandle, RDWndBaseCL_wnd_close, "ServiceActivities.cleartime")
	end
	if ServiceActivities.restTime <= 0 then
		ServiceActivities.termEnd = true
		if ServiceActivities.DcWndHandle ~= 0 then
			GUI:EditSetTextM(ServiceActivities.DcWndHandle, "已结束")
		end
	end
	local handle = 0
	local btnSN = 0          --
	for i = 1 , 3 do 
		local handle = GetWindow(ServiceActivities.WndHandle, "buttonWin6,buttonWin,image"..i..",awardItem1")
		if handle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(handle, itemArr[i][1][1], itemArr[i][1][2], false)    --物品框填充
		end
		local handle = GetWindow(ServiceActivities.WndHandle, "buttonWin6,buttonWin,image"..i..",awardItem2")
		if handle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(handle, itemArr[i][2][1], itemArr[i][2][2], false)    --物品框填充
		end
	end
	for i = 4 , 5 do 
		local handle = GetWindow(ServiceActivities.WndHandle, "buttonWin6,buttonWin,image"..i..",awardItem")
		if handle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(handle, itemArr[i][1], itemArr[i][2], false)    --物品框填充
		end
	end
	handle = GetWindow(0, "ServiceActivities,buttonWin6,myConsume")
	if handle ~= 0 then
		GUI:EditSetTextM(handle,""..individal)
	end	
	if data == nil then       --全区没人花过钱
		for i = 1, 3 do 
			local handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,"虚位以待")
			end
		end
		return
	end
	if #data >= 3 then
		for i = 1, 3 do
			handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,tostring(data[i][1]))
				GUI:EditSetTextColor(handle, MakeARGB(255, 180, 122, 34))
			end
		end
	else
		for i = 1, #data do
			handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,tostring(data[i][1]))
				GUI:EditSetTextColor(handle, MakeARGB(255, 180, 122, 34))
			end
		end
		for i = #data + 1,3 do
			handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,"虚位以待")
				GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
			end
		end
	end
	
	for i = 1, #data do
		if data[i][1] ~= nil then
			if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME) then
				if data[i][1] == LuaRet then
					ServiceActivities.myRank = i
					btnSN = i
				end
			end
		end
	end
	if btnSN == 4 or btnSN == 5 then
		btnSN = 4
	elseif btnSN >= 6 and  btnSN <= 10 then
		btnSN = 5
	end
	handle = GetWindow(0, "ServiceActivities,buttonWin6,myRank")
	if handle ~= 0 then
		if ServiceActivities.myRank ~= 0 then
			GUI:EditSetTextM(handle,"第"..ServiceActivities.myRank.."名")
		else
			GUI:EditSetTextM(handle,"未上榜")
		end
	end
	if ServiceActivities.termEnd and ServiceActivities.myRank ~= 0 then
		handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..btnSN..",getAward")
		if handle ~= 0 then
			if data[ServiceActivities.myRank][3] == 0 or data[ServiceActivities.myRank][3] == nil then
				GUI:WndSetEnableM(handle, true)
			else
				GUI:WndSetEnableM(handle, false)
				GUI:WndSetTextM(handle, "已领取")
				GUI:WndSetTextColorM(handle, MakeARGB(255, 245, 220, 189))
			end
		end
	end
end

function ServiceActivities.RechargeTop5Data(individal, itemArr, restTime, durationTime, data)     --充值排行
	ServiceActivities.termEnd = false
	local _handle = GetWindow(ServiceActivities.WndHandle, "buttonWin7,prompt2Content")
	if _handle ~= 0 then 
		GUI:EditSetTextM(_handle, ''..durationTime)
	end
	ServiceActivities.DcWndHandle = GetWindow(ServiceActivities.WndHandle, "buttonWin7,prompt1Content")
	ServiceActivities.restTime = tonumber(restTime)
	local str = GetLeaveTimeString(ServiceActivities.restTime)
	if ServiceActivities.DcWndHandle ~= 0 then
		GUI:EditSetTextM(ServiceActivities.DcWndHandle, ''..str)
	end
	--local rechargeChartHandle = GetWindow(ServiceActivities.WndHandle, "buttonWin7")
	if ServiceActivities.time_id == 0 and ServiceActivities.restTime > 0 then
		ServiceActivities.time_id = tonumber(GUI:WndAddTimerBrief(ServiceActivities.WndHandle,1000,"ServiceActivities.OnCountDown"))
		GUI:WndRegistScript(ServiceActivities.WndHandle, RDWndBaseCL_wnd_close, "ServiceActivities.cleartime")
	end
	if ServiceActivities.restTime == 0 then
		if ServiceActivities.DcWndHandle ~= 0 then
			GUI:EditSetTextM(ServiceActivities.DcWndHandle, "已结束")
		end
	end
	---------------------
	local handle = 0
	local myRank = 0          --自己的排名
	for i = 1 , 5 do 
		local handle = GetWindow(ServiceActivities.WndHandle, "buttonWin7,buttonWin,image"..i..",awardItem")
		if handle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(handle, itemArr[i][1], itemArr[i][2], false)    --物品框填充
		end
	end
	handle = GetWindow(0, "ServiceActivities,buttonWin7,daylyRechargeNum")
	if handle ~= 0 then
		GUI:EditSetTextM(handle,""..individal)
	end
	if data == nil then       --全区没人充过钱
		for i = 1, 5 do 
			local handle = GetWindow(0, "ServiceActivities,buttonWin7,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,"虚位以待")
			end
			handle = GetWindow(0, "ServiceActivities,buttonWin7,buttonWin,image"..i..",topupNum")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,"")
			end
		end
		handle = GetWindow(0, "ServiceActivities,buttonWin7,myRank")
		if handle ~= 0 then
			GUI:EditSetTextM(handle,"未上榜")
		end
		return
	end
	
	for i = 1, #data do
		if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME) then
			if data[i][1] == LuaRet then
			--if data[i][1] == tostring(LuaRet) then
				myRank = i
			end
		end
		handle = GetWindow(0, "ServiceActivities,buttonWin7,buttonWin,image"..i..",playerName")
		if handle ~= 0 then
			GUI:EditSetTextM(handle,tostring(data[i][1]))
			GUI:EditSetTextColor(handle, MakeARGB(255, 180, 122, 34))
		end
		handle = GetWindow(0, "ServiceActivities,buttonWin7,buttonWin,image"..i..",topupNum")
		if handle ~= 0 then
			GUI:EditSetTextM(handle,tostring(data[i][2]))
			GUI:EditSetTextColor(handle, MakeARGB(255, 184, 122, 37))
		end
	end
	if #data < 5 then
		for i = #data+1, 5 do
			handle = GetWindow(0, "ServiceActivities,buttonWin7,buttonWin,image"..i..",playerName")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,"虚位以待")
				GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
			end
			handle = GetWindow(0, "ServiceActivities,buttonWin7,buttonWin,image"..i..",topupNum")
			if handle ~= 0 then
				GUI:EditSetTextM(handle,"")
				GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
			end
		end
	end
	handle = GetWindow(0, "ServiceActivities,buttonWin7,myRank")
	if handle ~= 0 then
		if myRank ~= 0 then
			GUI:EditSetTextM(handle,"第"..myRank.."名")
		else
			GUI:EditSetTextM(handle,"未上榜")
		end
	end	
end

function ServiceActivities.OnCountDown()

	ServiceActivities.restTime = ServiceActivities.restTime - 1
	if ServiceActivities.restTime < 0 then
		return
	end
	if ServiceActivities.restTime == 0 then
		local handle = GetWindow(0, "ServiceActivities,buttonWin6,buttonWin,image"..ServiceActivities.myRank..",getAward")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, true)
		end
	end
	if ServiceActivities.termEnd then
		return
	end
	local str = GetLeaveTimeString(ServiceActivities.restTime)
	if ServiceActivities.DcWndHandle ~= 0 then
		GUI:EditSetTextM(ServiceActivities.DcWndHandle, ''..str)
	end
end

function ServiceActivities.cleartime()
	--GUIWndDelTimer(ServiceActivities.WndHandle, tonumber(ServiceActivities.time_id))
	if tonumber(ServiceActivities.time_id) ~= 0 then
		GUI:WndDelTimer(ServiceActivities.WndHandle, tonumber(ServiceActivities.time_id))
		ServiceActivities.time_id = 0
	end	
end

function ServiceActivities.GetResumeAward(handle)
	UI:Lua_SubmitForm("新开服活动", "GetTop10ConsumeReward", tostring(ServiceActivities.requireTerm))
	ServiceActivities.clickedBtn = handle
end

function ServiceActivities.SetButtonState()
	if ServiceActivities.clickedBtn ~= 0 then
		GUI:WndSetTextM(ServiceActivities.clickedBtn, "已领取")
		GUI:WndSetTextColorM(ServiceActivities.clickedBtn, MakeARGB(255, 245, 220, 189))
		GUI:WndSetEnableM(ServiceActivities.clickedBtn, false)
	end
end

function ServiceActivities.OpenRechargePage()
	CL:OpenUrlUseIEByType(3)
end

function ServiceActivities.closed()
	local handle = GetWindow(0,"ServiceActivities") 
	if handle ~= 0 then   
		GUI:WndClose(handle)
	end
end

function ServiceActivities.wing(tab_wing,wing_level)
	local handle = GetWindow(0,"ServiceActivities,buttonWin2,duration")
	if handle~= 0 then 
		GUI:EditSetTextM(handle,''..tab_wing[7][6])
	end
	for i=1,5 do
		if wing_level >= tab_wing[6][i] then
			if tab_wing[7][i] == 0 then
				WndSetVisible(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status2",true)
				WndAddEffect(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status2", 3020300200, -74, -45, 100, 0)
				WndSetVisible(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status1",false)
				WndSetVisible(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status3",false)
			else
				WndSetVisible(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status3",true)
				WndSetVisible(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status1",false)
				WndSetVisible(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status2",false)
			end
		else
			WndSetVisible(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status1",true)
			WndSetVisible(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status2",false)
			WndSetVisible(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",status3",false)
		end
	end
	if ServiceActivities.wingVisible then 
		for i=1,5 do 
			for j=1,3 do 
				handle = GetWindow(0,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",itemctrl"..j) 
				if handle ~= 0 then 
					if tonumber(tab_wing[i][j+3]) ~= 0 then  
						GUI:WndSetVisible(handle,true)
						RDItemCtrlSetGUIDataPropByKeyName(nil,"ServiceActivities,buttonWin2,buttonWin,wnd"..i..",itemctrl"..j, tab_wing[i][j], tab_wing[i][j+3], true)
					else
						GUI:WndSetVisible(handle,false)
					end
				end
			end
		end
		ServiceActivities.wingVisible = false
	end
end

function ServiceActivities.boost()
	UI:Lua_SubmitForm("等级判断表单", "OnOpenWing", "")
end

function ServiceActivities.getWing(handle)
	local index = tonumber(WndGetParam(handle))
	UI:Lua_SubmitForm("新开服活动", "getWing", ''..index)
end

function ServiceActivities.getCastle()
	local handle = GetWindow(0,"ServiceActivities,buttonWin5,btn")
	if handle~= 0 then 
		GUI:WndSetVisible(handle,true)
	end
end

function ServiceActivities.Timestr(str)
	local handle = GetWindow(0,"ServiceActivities,buttonWin5,duration")
	if handle~= 0 then 
		GUI:EditSetTextM("","ServiceActivities,buttonWin5,duration",str)
	end
end

function ServiceActivities.getYB()
	UI:Lua_SubmitForm("新开服活动", "getYB", "")
end

function ServiceActivities.getLevel(tab_level)
	local rein = tonumber(tab_level[3])
	local level = tonumber(tab_level[4]) 
	local handle = GetWindow(0,"ServiceActivities,buttonWin1,duration")
	if handle~= 0 then 
		GUI:EditSetTextM(handle,''..tab_level[6])
	end
	if rein >= 1 or level >= 70 then
		if tab_level[2][1] == 0 then
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status2",true)
			WndAddEffect(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status2", 3020300200, -74, -45, 100, 0)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status3",false)
		else
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status3",true)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status2",false)
		end
	else
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status1",true)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status2",false)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd1,status3",false)
	end
	
	if rein >= 1 or level >= 80 then 
		if tab_level[2][2] == 0 then 
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status2",true)
			WndAddEffect(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status2", 3020300200, -74, -45, 100, 0)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status3",false)
		else
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status3",true)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status2",false)
		end
	else
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status1",true)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status2",false)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd2,status3",false)
	end
	
	if rein >= 2 then 
		if tab_level[2][3] == 0 then 
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status2",true)
			WndAddEffect(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status2", 3020300200, -74, -45, 100, 0)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status3",false)
		else
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status3",true)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status2",false)
		end
	else
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status1",true)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status2",false)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd3,status3",false)
	end
	
	if rein >= 4 then 
		if tab_level[2][4] == 0 then 
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status2",true)
			WndAddEffect(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status2", 3020300200, -74, -45, 100, 0)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status3",false)
		else
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status3",true)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status2",false)
		end
	else
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status1",true)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status2",false)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd4,status3",false)
	end
	
	if rein >= 6 then 
		if tab_level[2][5] == 0 then 
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status2",true)
			WndAddEffect(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status2", 3020300200, -74, -45, 100, 0)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status3",false)
		else
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status3",true)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status1",false)
			WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status2",false)
		end
	else
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status1",true)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status2",false)
		WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd5,status3",false)
	end
	
	for i=1,5 do 
		handle =GetWindow(0,"ServiceActivities,buttonWin1,buttonWin,wnd"..i..",last")
		if handle ~= 0 then
			if tonumber(tab_level[1][i]) == 0 then
				GUI:EditSetTextM(handle, "已领完")
				WndSetVisible(0,"ServiceActivities,buttonWin1,buttonWin,wnd".. i ..",status2",false)
			else 
				GUI:EditSetTextM(handle, ''..tab_level[1][i])
			end
		end
		if ServiceActivities.getLevelVisible then 
			for j=1,3 do 
				handle =GetWindow(0,"ServiceActivities,buttonWin1,buttonWin,wnd"..i..",itemctrl"..j)
				if handle ~= 0 then
					if tonumber(tab_level[5][i][j+3]) ~= 0 then 
						GUI:WndSetVisible(handle,true)
						RDItemCtrlSetGUIDataPropByKeyName(0,"ServiceActivities,buttonWin1,buttonWin,wnd"..i..",itemctrl"..j, tab_level[5][i][j], tab_level[5][i][j+3], true)
					else
						GUI:WndSetVisible(handle,false)
					end
				end
			end
		end
	end
	ServiceActivities.getLevelVisible = false
end 

function ServiceActivities.getReward(handle)
	local index = tonumber(WndGetParam(handle))
	UI:Lua_SubmitForm("新开服活动", "getReward", ''..index)
end

-------------------------------------------------------------------------------------------------------------
-----------------------------------------------------宝珠竞技------------------------------------------------
buttonWin3 = {}
--msg('buttonWin3')
function buttonWin3.UIInit(this)
	if not GUI:WndGetVisible(this) then 
		return
	end
	buttonWin3.WndHandle = this
	
	UI:Lua_SubmitForm("新开服活动", "buttonWin3_main", "")
end

function buttonWin3.updata(award_tb, count, level, str, durationTime)
	--msg('updata')
	local _handle = GetWindow(buttonWin3.WndHandle, "duration")
	if _handle ~= 0 then 
		GUI:EditSetTextM(_handle, durationTime)
	end
	buttonWin3.awardTable = award_tb
	count = tonumber(count)
	
	--msg(''..count)
	local handle = GetWindow(buttonWin3.WndHandle, "chipCount")
	if handle ~= 0 then
		GUI:EditSetTextM(handle, ""..count)
	end	
	
	if not buttonWin3.init then
		for i = 1, 7 do 
			WndSetVisible(buttonWin3.WndHandle, "buttonWin,win"..i..",btn", true)
			local handle = GetWindow(buttonWin3.WndHandle, "buttonWin,win"..i..",chipCountLevel")
			if handle ~= 0 then
				GUI:EditSetTextM(handle, ""..buttonWin3.awardTable[0][i])
			end				
			for j = 1 , 3 do 
				local handle = GetWindow(buttonWin3.WndHandle, "buttonWin,win"..i..",item"..j)
				if handle ~= 0 then
					RDItemCtrlSetGUIDataByKeyName(handle, buttonWin3.awardTable[i][j][1], buttonWin3.awardTable[i][j][2], buttonWin3.awardTable[i][j][3])    --物品框填充
				end						
			end
		end
		buttonWin3.init = 1
	end
	level = tonumber(level)
	buttonWin3.level = level
	str = tostring(str)
	for i = 1, 7 do 
		if i <= level then 
			local char = str:sub(i, i)
			local handle = GetWindow(buttonWin3.WndHandle, "buttonWin,win"..i..",btn")
			if handle ~= 0 then 
				if char == '0' then 
					GUI:WndSetTextM(handle, "领 取 奖 励")
					GUI:WndSetEnableM(handle, true)
					WndAddEffect(buttonWin3.WndHandle, "buttonWin,win"..i..",btn", 3020300200, -74, -45, 100, 0)
				elseif char == '1' then 
					GUI:WndSetTextM(handle, "已 领 取")
					GUI:WndSetEnableM(handle, false)
					WndDelEffect(buttonWin3.WndHandle, "buttonWin,win"..i..",btn")
				end
			end
		end
	end
	--[[	
		for d in string.gmatch(str, "%d") do 
			--msg(''..d)
			local handle = GetWindow(buttonWin3.WndHandle, "buttonWin,btn"..i)
			if handle ~= 0 then 
				if d == '0' then 
					GUI:WndSetTextM(handle, "领 取 奖 励")
					GUI:WndSetEnableM(handle, true)
				elseif d == '1' then 
					GUI:WndSetTextM(handle, "已 领 取")
					GUI:WndSetEnableM(handle, false)
				end
			end
			i = i + 1
		end	
	--]]	
	
	
end

function buttonWin3.get(handle)
	local index = GUI:WndGetParam(handle)
	if index <= buttonWin3.level then 
		UI:Lua_SubmitForm("新开服活动", "buttonWin3_Get", ""..index)
	else
		UI:Lua_SubmitForm("等级判断表单", "OnOpenFurnace", "3")
		--CLOnOpenFurnace()
		--FurnaceWnd.tabs = 3
	end
end

-------------------------------------------------------------------------------------------------------------
-----------------------------------------------------魂珠竞技----------------------------------------------
buttonWin4 = {}
buttonWin4.level = 0

function buttonWin4.UIInit(this)
	if not GUI:WndGetVisible(this) then 
		return
	end
	buttonWin4.WndHandle = this
	
	
	UI:Lua_SubmitForm("新开服活动", "buttonWin4_main", "")
end

function buttonWin4.updata(award_tb, count, level, str, durationTime)
	--msg('updata')
	local _handle = GetWindow(buttonWin4.WndHandle, "duration")
	if _handle ~= 0 then 
		GUI:EditSetTextM(_handle, ''..durationTime)
	end
	
	buttonWin4.awardTable = award_tb
	count = tonumber(count)
	level = tonumber(level)
	buttonWin4.level = level
	str = tostring(str)
	local handle = GetWindow(buttonWin4.WndHandle, "chipCount")
	if handle ~= 0 then
		GUI:EditSetTextM(handle, ""..count)
	end	
	
	if not buttonWin4.init then
		for i = 1, 7 do 
			WndSetVisible(buttonWin4.WndHandle, "buttonWin,win"..i..",btn", true)
			local handle = GetWindow(buttonWin4.WndHandle, "buttonWin,win"..i..",chipCountLevel")
			if handle ~= 0 then
				GUI:EditSetTextM(handle, ""..buttonWin4.awardTable[0][i])
			end				
			for j = 1 , 3 do 
				local handle = GetWindow(buttonWin4.WndHandle, "buttonWin,win"..i..",item"..j)
				if handle ~= 0 then
					RDItemCtrlSetGUIDataByKeyName(handle, buttonWin4.awardTable[i][j][1], buttonWin4.awardTable[i][j][2], buttonWin4.awardTable[i][j][3])    --物品框填充
				end						
			end
		end
		buttonWin4.init = 1
	end
	
	for i = 1, 7 do 
		if i <= level then 
			local char = str:sub(i, i)
			local handle = GetWindow(buttonWin4.WndHandle, "buttonWin,win"..i..",btn")
			if handle ~= 0 then 
				if char == '0' then 
					GUI:WndSetTextM(handle, "领 取 奖 励")
					GUI:WndSetEnableM(handle, true)
					WndAddEffect(buttonWin4.WndHandle, "buttonWin,win"..i..",btn", 3020300200, -74, -45, 100, 0)
				elseif char == '1' then 
					GUI:WndSetTextM(handle, "已 领 取")
					GUI:WndSetEnableM(handle, false)
					WndDelEffect(buttonWin4.WndHandle, "buttonWin,win"..i..",btn", 3020300200)
				end
			end
		end
	end
end

function buttonWin4.get(_handle)
	local index = GUI:WndGetParam(_handle)
	if index <= buttonWin4.level then 
		UI:Lua_SubmitForm("新开服活动", "buttonWin4_Get", ""..index)
	else
		UI:Lua_SubmitForm("等级判断表单", "OnOpenFurnace", "4")
		--CLOnOpenFurnace()
		--FurnaceWnd.tabs = 4
	end
end


ServiceActivities.main()