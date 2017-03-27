NewServerGift = {}
local ui = "<form>"
ui=ui.."<dialog OnInit='NewServerGift:OnInit' center='true' drag='true' esc_close='true' h='569' id='NewServerGift' image='1805600001' revmsg='true' w='846' x='146' y='32'>"
ui=ui.."	<image enable='false' h='0' id='title' image='1806400072' parent='NewServerGift' revmsg='true' w='0' x='380' y='7' />"
ui=ui.."	<button OnLButtonUp='NewServerGift:OnClose' h='38' id='closeBtn' image='1805900080' parent='NewServerGift' revmsg='true' text_color='#C2B6A0' w='34' x='788' y='10' />"
ui=ui.."	<button OnLButtonUp='NewServerGift:List' h='46' id='button1' image='1806400120' parent='NewServerGift' revmsg='true' w='141' x='40' y='61' />"
ui=ui.."	<button id='button2' image='1806400112' x='40' y='119' w='141' h='46' OnLButtonUp='NewServerGift:List' parent='NewServerGift' revmsg='true' />"
ui=ui.."	<button OnLButtonUp='NewServerGift:List' h='46' id='button3' image='1806400116' parent='NewServerGift' revmsg='true' w='141' x='40' y='117' />"
ui=ui.."	"
ui=ui.."	<wnd OnVisible='NewServerGift1:UIInit' h='490' id='NewServerGift1' parent='NewServerGift' revmsg='true' visible='false' w='630' x='181' y='58'>"
ui=ui.."		<image h='487' id='backImage' image='1806400058' parent='NewServerGift,NewServerGift1' revmsg='true' w='630' x='0' y='0' />"
ui=ui.."		<image fitsize='true' h='22' id='editback' image='1806200004' parent='NewServerGift,NewServerGift1' revmsg='true' w='200' x='430' y='17' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_11' parent='NewServerGift,NewServerGift1' revmsg='true' text='剩余时间：' text_color='#EECC99' w='61' x='453' y='15' />"
ui=ui.."		<edit font='system' h='20' id='remainTime' parent='NewServerGift,NewServerGift1' revmsg='true' text='' text_color='#00FF00' w='105' x='518' y='15' />"
ui=ui.."		"
ui=ui.."		<image check_point='0' h='66' id='TestWndChild_5' image='1806400078' parent='NewServerGift,NewServerGift1' revmsg='true' w='409' x='112' y='45' />	"
ui=ui.."		<edit font='system' h='20' id='attention' parent='NewServerGift,NewServerGift1' revmsg='true' text='温馨提示：每日凌晨零点刷新特价珍稀道具,英雄请不要错过喔～' text_color='#EECC99' w='500' x='150' y='440' />"
ui=ui.."		"
ui=ui.."		<wnd h='0' id='win1' parent='NewServerGift,NewServerGift1' revmsg='true' w='0' x='100' y='130'>"
ui=ui.."			<image check_point='0' h='133' id='background' image='1806400063' parent='NewServerGift,NewServerGift1,win1' revmsg='true' w='207' x='0' y='0' />"
ui=ui.."			<image check_point='0' h='60' id='TestWndChild_9' image='1806400066' parent='NewServerGift,NewServerGift1,win1' revmsg='true' w='80' x='0' y='0' />"
ui=ui.."			<edit font='system' h='22' id='ItemName' parent='NewServerGift,NewServerGift1,win1' revmsg='true' text_color='#EAE563' w='136' x='80' y='5' />"
ui=ui.."			<image check_point='0' h='62' id='TestWndChild_10' image='1806400106' parent='NewServerGift,NewServerGift1,win1' revmsg='true' w='62' x='20' y='38' />"
ui=ui.."			<itemctrl enable='true' h='62' id='item' parent='NewServerGift,NewServerGift1,win1' rbtn_use='true' revmsg='true' use_back='0' w='62' x='20' y='39' />"
ui=ui.."			<edit font='system' h='20' id='originalPrice' parent='NewServerGift,NewServerGift1,win1' revmsg='true' text='原价：9999' text_color='#FF8800' w='84' x='120' y='34' />"
ui=ui.."			<image h='2' id='division' image='1806400104' parent='NewServerGift,NewServerGift1,win1' revmsg='true' w='74' x='117' y='44' />"
ui=ui.."			<edit font='system' h='20' id='nowPrice' parent='NewServerGift,NewServerGift1,win1' revmsg='true' text='特价：9999' text_color='#ffffff' w='84' x='120' y='54' />"
ui=ui.."			<button OnLButtonUp='NewServerGift1:Buy' h='25' id='Get' image='1806400136' param='1' parent='NewServerGift,NewServerGift1,win1' revmsg='true' text='购 买' text_color='#C2B6A0' w='64' x='123' y='75' />"
ui=ui.."			<edit font='system' h='22' id='TestWndChild_15' parent='NewServerGift,NewServerGift1,win1' revmsg='true' text='限购次数：' text_color='#C2B6A0' w='65' x='66' y='102' />"
ui=ui.."			<edit font='system' h='22' id='limitCount' parent='NewServerGift,NewServerGift1,win1' revmsg='true' text='' text_color='#00ff00' w='49' x='130' y='102' />"
ui=ui.."			<image fitsize='true' h='30' id='ingot' image='1990040423' parent='NewServerGift,NewServerGift1,win1' revmsg='true' w='30' x='88' y='45' />"
ui=ui.."		</wnd>"
ui=ui.."		<wnd h='0' id='win2' parent='NewServerGift,NewServerGift1' revmsg='true' w='0' x='325' y='130'>"
ui=ui.."			<image check_point='0' h='133' id='background' image='1806400063' parent='NewServerGift,NewServerGift1,win2' revmsg='true' w='207' x='0' y='0' />"
ui=ui.."			<image check_point='0' h='60' id='TestWndChild_9' image='1806400065' parent='NewServerGift,NewServerGift1,win2' revmsg='true' w='60' x='0' y='0' />"
ui=ui.."			<edit font='system' h='22' id='ItemName' parent='NewServerGift,NewServerGift1,win2' revmsg='true' text_color='#EAE563' w='136' x='80' y='5' />"
ui=ui.."			<image check_point='0' h='62' id='TestWndChild_10' image='1806400106' parent='NewServerGift,NewServerGift1,win2' revmsg='true' w='62' x='20' y='38' />"
ui=ui.."			<itemctrl enable='true' h='62' id='item' parent='NewServerGift,NewServerGift1,win2' rbtn_use='true' revmsg='true' use_back='0' w='62' x='20' y='39' />"
ui=ui.."			<edit font='system' h='20' id='originalPrice' parent='NewServerGift,NewServerGift1,win2' revmsg='true' text='原价：9999' text_color='#FF8800' w='84' x='120' y='34' />"
ui=ui.."			<image h='2' id='division' image='1806400104' parent='NewServerGift,NewServerGift1,win2' revmsg='true' w='74' x='117' y='44' />"
ui=ui.."			<edit font='system' h='20' id='nowPrice' parent='NewServerGift,NewServerGift1,win2' revmsg='true' text='特价：9999' text_color='#ffffff' w='84' x='120' y='54' />"
ui=ui.."			<button OnLButtonUp='NewServerGift1:Buy' h='25' id='Get' image='1806400136' param='2' parent='NewServerGift,NewServerGift1,win2' revmsg='true' text='购 买' text_color='#C2B6A0' w='64' x='123' y='75' />"
ui=ui.."			<edit font='system' h='22' id='TestWndChild_15' parent='NewServerGift,NewServerGift1,win2' revmsg='true' text='限购次数：' text_color='#C2B6A0' w='65' x='66' y='102' />"
ui=ui.."			<edit font='system' h='22' id='limitCount' parent='NewServerGift,NewServerGift1,win2' revmsg='true' text='' text_color='#00ff00' w='49' x='130' y='102' />"
ui=ui.."			<image fitsize='true' h='30' id='ingot' image='1990040423' parent='NewServerGift,NewServerGift1,win2' revmsg='true' w='30' x='88' y='45' />"
ui=ui.."		</wnd>"
ui=ui.."		<wnd h='0' id='win3' parent='NewServerGift,NewServerGift1' revmsg='true' w='0' x='100' y='280'>"
ui=ui.."			<image check_point='0' h='133' id='background' image='1806400063' parent='NewServerGift,NewServerGift1,win3' revmsg='true' w='207' x='0' y='0' />"
ui=ui.."			<image check_point='0' h='60' id='priceTag' image='1806400064' parent='NewServerGift,NewServerGift1,win3' revmsg='true' w='60' x='0' y='0' />"
ui=ui.."			<edit font='system' h='22' id='ItemName' parent='NewServerGift,NewServerGift1,win3' revmsg='true' text_color='#EAE563' w='136' x='80' y='5' />"
ui=ui.."			<image check_point='0' h='62' id='TestWndChild_10' image='1806400106' parent='NewServerGift,NewServerGift1,win3' revmsg='true' w='62' x='20' y='38' />"
ui=ui.."			<itemctrl enable='true' h='62' id='item' parent='NewServerGift,NewServerGift1,win3' rbtn_use='true' revmsg='true' use_back='0' w='62' x='20' y='39' />"
ui=ui.."			<edit font='system' h='20' id='originalPrice' parent='NewServerGift,NewServerGift1,win3' revmsg='true' text='原价：9999' text_color='#FF8800' w='84' x='120' y='34' />"
ui=ui.."			<image h='2' id='division' image='1806400104' parent='NewServerGift,NewServerGift1,win3' revmsg='true' w='74' x='117' y='44' />"
ui=ui.."			<edit font='system' h='20' id='nowPrice' parent='NewServerGift,NewServerGift1,win3' revmsg='true' text='特价：9999' text_color='#ffffff' w='84' x='120' y='54' />"
ui=ui.."			<button OnLButtonUp='NewServerGift1:Buy' h='25' id='Get' image='1806400136' param='3' parent='NewServerGift,NewServerGift1,win3' revmsg='true' text='购 买' text_color='#C2B6A0' w='64' x='123' y='75' />"
ui=ui.."			<edit font='system' h='22' id='TestWndChild_15' parent='NewServerGift,NewServerGift1,win3' revmsg='true' text='限购次数：' text_color='#C2B6A0' w='65' x='66' y='102' />"
ui=ui.."			<edit font='system' h='22' id='limitCount' parent='NewServerGift,NewServerGift1,win3' revmsg='true' text='' text_color='#00ff00' w='49' x='130' y='102' />"
ui=ui.."			<image fitsize='true' h='30' id='ingot' image='1990040423' parent='NewServerGift,NewServerGift1,win3' revmsg='true' w='30' x='88' y='45' />"
ui=ui.."		</wnd>"
ui=ui.."		<wnd h='0' id='win4' parent='NewServerGift,NewServerGift1' revmsg='true' w='0' x='325' y='280'>"
ui=ui.."			<image check_point='0' h='133' id='background' image='1806400063' parent='NewServerGift,NewServerGift1,win4' revmsg='true' w='207' x='0' y='0' />"
ui=ui.."			<image check_point='0' h='60' id='priceTag' image='1806400064' parent='NewServerGift,NewServerGift1,win4' revmsg='true' w='60' x='0' y='0' />"
ui=ui.."			<edit font='system' h='22' id='ItemName' parent='NewServerGift,NewServerGift1,win4' revmsg='true' text_color='#EAE563' w='136' x='80' y='5' />"
ui=ui.."			<image check_point='0' h='62' id='TestWndChild_10' image='1806400106' parent='NewServerGift,NewServerGift1,win4' revmsg='true' w='62' x='20' y='38' />"
ui=ui.."			<itemctrl enable='true' h='62' id='item' parent='NewServerGift,NewServerGift1,win4' rbtn_use='true' revmsg='true' use_back='0' w='62' x='20' y='39' />"
ui=ui.."			<edit font='system' h='20' id='originalPrice' parent='NewServerGift,NewServerGift1,win4' revmsg='true' text='原价：9999' text_color='#FF8800' w='84' x='120' y='34' />"
ui=ui.."			<image h='2' id='division' image='1806400104' parent='NewServerGift,NewServerGift1,win4' revmsg='true' w='74' x='117' y='44' />"
ui=ui.."			<edit font='system' h='20' id='nowPrice' parent='NewServerGift,NewServerGift1,win4' revmsg='true' text='特价：9999' text_color='#ffffff' w='84' x='120' y='54' />"
ui=ui.."			<button OnLButtonUp='NewServerGift1:Buy' h='25' id='Get' image='1806400136' param='4' parent='NewServerGift,NewServerGift1,win4' revmsg='true' text='购 买' text_color='#C2B6A0' w='64' x='123' y='75' />"
ui=ui.."			<edit font='system' h='22' id='TestWndChild_15' parent='NewServerGift,NewServerGift1,win4' revmsg='true' text='限购次数：' text_color='#C2B6A0' w='65' x='66' y='102' />"
ui=ui.."			<edit font='system' h='22' id='limitCount' parent='NewServerGift,NewServerGift1,win4' revmsg='true' text='' text_color='#00ff00' w='49' x='130' y='102' />"
ui=ui.."			<image fitsize='true' h='30' id='ingot' image='1990040423' parent='NewServerGift,NewServerGift1,win4' revmsg='true' w='30' x='88' y='45' />"
ui=ui.."		</wnd>"
ui=ui.."	</wnd>			"
ui=ui.."	<wnd OnVisible='NewServerGift2.UIInit' h='490' id='NewServerGift2' parent='NewServerGift' revmsg='true' visible='true' w='630' x='181' y='58'>"
ui=ui.."		<image enable='false' h='487' id='backImage' image='1806400056' parent='NewServerGift,NewServerGift2' revmsg='true' w='630' x='0' y='0' />"
ui=ui.."		<image check_point='0' h='12' id='TestWndChild_0' image='1806400079' parent='NewServerGift,NewServerGift2' revmsg='true' w='29' x='51' y='189' />"
ui=ui.."		<image check_point='0' h='12' id='TestWndChild_1' image='1806400080' parent='NewServerGift,NewServerGift2' revmsg='true' w='31' x='112' y='155' />"
ui=ui.."		<image check_point='0' h='12' id='TestWndChild_2' image='1806400081' parent='NewServerGift,NewServerGift2' revmsg='true' w='31' x='179' y='121' />"
ui=ui.."		<image check_point='0' h='12' id='TestWndChild_3' image='1806400082' parent='NewServerGift,NewServerGift2' revmsg='true' w='37' x='247' y='87' />"
ui=ui.."		<image check_point='0' h='12' id='TestWndChild_4' image='1806400083' parent='NewServerGift,NewServerGift2' revmsg='true' w='38' x='329' y='53' />"
ui=ui.."		"
ui=ui.."		<image check_point='0' h='23' id='z1' image='1806400067' parent='NewServerGift,NewServerGift2' revmsg='true' w='60' x='45' y='162' />"
ui=ui.."		<image check_point='0' h='23' id='z2' image='1806400068' parent='NewServerGift,NewServerGift2' revmsg='true' w='60' x='106' y='126' />"
ui=ui.."		<image check_point='0' h='23' id='z3' image='1806400069' parent='NewServerGift,NewServerGift2' revmsg='true' w='60' x='175' y='93' />"
ui=ui.."		<image check_point='0' h='23' id='z4' image='1806400070' parent='NewServerGift,NewServerGift2' revmsg='true' w='60' x='246' y='61' />"
ui=ui.."		<image check_point='0' h='23' id='z5' image='1806400071' parent='NewServerGift,NewServerGift2' revmsg='true' w='60' x='328' y='28' />"
ui=ui.."		"
ui=ui.."		"
ui=ui.."		<button enable='false' h='31' id='Get1' image='1800000129' parent='NewServerGift,NewServerGift2' revmsg='true' text='转 3' text_color='#00FF00' w='80' x='16' y='256' param="1" OnLButtonUp='NewServerGift2.GetAward' />"
ui=ui.."		<button enable='false' h='31' id='Get2' image='1800000129' parent='NewServerGift,NewServerGift2' revmsg='true' text='转 4' text_color='#00FF00' w='80' x='89' y='256' param="2" OnLButtonUp='NewServerGift2.GetAward' />"
ui=ui.."		<button enable='false' h='31' id='Get3' image='1800000129' parent='NewServerGift,NewServerGift2' revmsg='true' text='转 5' text_color='#00FF00' w='80' x='162' y='256' param="3" OnLButtonUp='NewServerGift2.GetAward' />"
ui=ui.."		<button enable='false' h='31' id='Get4' image='1800000129' parent='NewServerGift,NewServerGift2' revmsg='true' text='转 6' text_color='#00FF00' w='80' x='234' y='256' param="4" OnLButtonUp='NewServerGift2.GetAward' />"
ui=ui.."		<button enable='false' h='31' id='Get5' image='1800000129' parent='NewServerGift,NewServerGift2' revmsg='true' text='转 8' text_color='#00FF00' w='80' x='311' y='256' param="5" OnLButtonUp='NewServerGift2.GetAward' />"
ui=ui.."		"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_10' parent='NewServerGift,NewServerGift2' revmsg='true' text='活动期间达到目标转生等级,即可提取元宝' text_color='#EECC99' w='269' x='25' y='285' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_11' parent='NewServerGift,NewServerGift2' revmsg='true' text='剩余时间：' text_color='#EECC99' w='61' x='453' y='285' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_12' parent='NewServerGift,NewServerGift2' revmsg='true' text='' text_color='#00ff00' w='105' x='518' y='285' />"
ui=ui.."		<image check_point='0' h='36' id='TestWndChild_13' image='1806400075' parent='NewServerGift,NewServerGift2' revmsg='true' w='282' x='42' y='334' />"
ui=ui.."		<image check_point='0' h='42' id='TestWndChild_14' image='1806400076' parent='NewServerGift,NewServerGift2' revmsg='true' w='408' x='42' y='371' />"
ui=ui.."		<image check_point='0' h='36' id='TestWndChild_15' image='1806400077' parent='NewServerGift,NewServerGift2' revmsg='true' w='344' x='106' y='414' />"
ui=ui.."		<edit font='system' h='23' id='TestWndChild_17' parent='NewServerGift,NewServerGift2' revmsg='true' text='完成首冲后方可购买' text_color='#C2B6A0' w='110' x='477' y='329' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_18' parent='NewServerGift,NewServerGift2' revmsg='true' text='仅剩    份' text_color='#C2B6A0' w='83' x='491' y='354' />"
ui=ui.."		<edit font='system' h='20' id='RestNum' parent='NewServerGift,NewServerGift2' revmsg='true' text='100' text_color='#00FF00' w='22' x='520' y='353' />"
ui=ui.."		<edit font='system' h='23' id='PriceTip1' parent='NewServerGift,NewServerGift2' revmsg='true' text='单价     元宝' text_color='#C2B6A0' w='110' x='486' y='374' />"
ui=ui.."		<edit font='system' h='20' id='PriceTip2' parent='NewServerGift,NewServerGift2' revmsg='true' text='1000' text_color='#00FF00' w='83' x='514' y='374' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_19' parent='NewServerGift,NewServerGift2' revmsg='true' text='转生等级' text_color='#EECC99' w='56' x='370' y='230' />"
ui=ui.."		<button OnLButtonUp='NewServerGift2.OpenRechagrePage' h='52' id='charge' image='1806400124' parent='NewServerGift,NewServerGift2' revmsg='true' w='129' x='460' y='398' />"
ui=ui.."		<button OnLButtonUp='NewServerGift2.BuyGrowthFund' h='41' id='buyFund' image='1807900003' parent='NewServerGift,NewServerGift2' revmsg='true' visible='false' w='136' x='460' y='398' text='立 即 购 买'' text_color='#E4B750' font='SIMLI18' />"
ui=ui.."		"
ui=ui.."	</wnd>	"
ui=ui.."	<wnd OnVisible='NewServerGift3:UIInit' h='490' id='NewServerGift3' parent='NewServerGift' revmsg='true' visible='false' w='630' x='181' y='58'>"
ui=ui.."		<image h='487' id='backImage' image='1806400057' parent='NewServerGift,NewServerGift3' revmsg='true' w='630' x='0' y='0' />"
ui=ui.."		<image fitsize='true' h='22' id='editback' image='1806200004' parent='NewServerGift,NewServerGift3' revmsg='true' w='200' x='430' y='17' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_11' parent='NewServerGift,NewServerGift3' revmsg='true' text='剩余时间：' text_color='#EECC99' w='61' x='453' y='15' />"
ui=ui.."		<edit font='system' h='20' id='remainTime' parent='NewServerGift,NewServerGift3' revmsg='true' text='' text_color='#00FF00' w='105' x='518' y='15' />"
ui=ui.."		"
ui=ui.."		<image check_point='0' h='35' id='TestWndChild_16' image='1806400107' parent='NewServerGift,NewServerGift3' revmsg='true' w='46' x='199' y='156' />"
ui=ui.."		<image check_point='0' h='35' id='TestWndChild_17' image='1806400107' parent='NewServerGift,NewServerGift3' revmsg='true' w='46' x='253' y='207' />"
ui=ui.."		<image check_point='0' h='35' id='TestWndChild_18' image='1806400107' parent='NewServerGift,NewServerGift3' revmsg='true' w='46' x='251' y='280' />"
ui=ui.."		<image check_point='0' h='35' id='TestWndChild_19' image='1806400107' parent='NewServerGift,NewServerGift3' revmsg='true' w='46' x='199' y='331' />"
ui=ui.."		<image check_point='0' h='35' id='TestWndChild_20' image='1806400107' parent='NewServerGift,NewServerGift3' revmsg='true' w='46' x='128' y='157' />"
ui=ui.."		<image check_point='0' h='35' id='TestWndChild_21' image='1806400107' parent='NewServerGift,NewServerGift3' revmsg='true' w='46' x='68' y='207' />"
ui=ui.."		<image check_point='0' h='35' id='TestWndChild_22' image='1806400107' parent='NewServerGift,NewServerGift3' revmsg='true' w='46' x='69' y='280' />"
ui=ui.."		<image check_point='0' h='35' id='TestWndChild_23' image='1806400107' parent='NewServerGift,NewServerGift3' revmsg='true' w='46' x='128' y='331' />"
ui=ui.."		"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_24' parent='NewServerGift,NewServerGift3' revmsg='true' text='1.15倍' text_color='#fff441' w='40' x='202' y='182' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_25' parent='NewServerGift,NewServerGift3' revmsg='true' text='1.2倍' text_color='#fff441' w='40' x='260' y='235' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_26' parent='NewServerGift,NewServerGift3' revmsg='true' text='1.25倍' text_color='#fff441' w='40' x='258' y='306' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_27' parent='NewServerGift,NewServerGift3' revmsg='true' text='1.35倍' text_color='#fff441' w='40' x='205' y='356' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_28' parent='NewServerGift,NewServerGift3' revmsg='true' text='10 倍' text_color='#fff441' w='40' x='132' y='183' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_29' parent='NewServerGift,NewServerGift3' revmsg='true' text='3 倍' text_color='#fff441' w='40' x='74' y='235' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_30' parent='NewServerGift,NewServerGift3' revmsg='true' text='2 倍' text_color='#fff441' w='40' x='80' y='304' />"
ui=ui.."		<edit font='system' h='20' id='TestWndChild_31' parent='NewServerGift,NewServerGift3' revmsg='true' text='1.5倍' text_color='#fff441' w='40' x='134' y='356' />"
ui=ui.."		"
ui=ui.."		<image check_point='0' h='109' id='arrow' image='1806400105' parent='NewServerGift,NewServerGift3' revmsg='true' w='34' x='169' y='171' />"
ui=ui.."		"
ui=ui.."		<image check_point='0' h='21' id='TestWndChild_32' image='1806400074' parent='NewServerGift,NewServerGift3' revmsg='true' w='116' x='416' y='130' />"
ui=ui.."		--1104"
ui=ui.."		<button OnLButtonUp='NewServerGift3:Charge' h='50' id='charge' image='1806000065' parent='NewServerGift,NewServerGift3' revmsg='true' text_color='#C2B6A0' visible='true' w='127' x='416' y='387' />"
ui=ui.."		--1104"
ui=ui.."		<richedit align='center' font='system' h='28' id='promptText' parent='NewServerGift,NewServerGift3' revmsg='true' text='' w='300' x='350' y='444' />"
ui=ui.."		<button h='30' id='questionMark' image='1800000297' parent='NewServerGift,NewServerGift3' revmsg='true' text_color='#C2B6A0' w='27' x='20' y='435' />"
ui=ui.."		<richedit font='system' h='28' id='brief' parent='NewServerGift,NewServerGift3' revmsg='true' text='#SELECT#规则说明#SELECTEND#' w='93' x='49' y='443' />"
ui=ui.."		"
ui=ui.."		<wnd h='210' id='list' parent='NewServerGift,NewServerGift3' revmsg='true' scroll='true' w='315' x='315' y='160'>"
ui=ui.."			<wnd h='20' id='win1' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='0'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win1' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win1' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win1' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win1' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>	"
ui=ui.."			<wnd h='20' id='win2' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='20'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win2' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win2' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win2' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win2' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win3' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='40'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win3' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win3' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win3' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win3' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win4' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='60'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win4' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win4' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win4' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win4' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win5' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='80'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win5' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win5' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win5' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win5' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win6' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='100'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win6' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win6' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win6' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win6' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win7' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='120'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win7' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win7' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win7' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win7' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win8' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='140'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win8' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win8' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win8' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win8' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win9' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='160'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win9' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win9' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win9' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win9' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win10' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='180'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win10' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win10' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win10' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win10' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win11' image='0' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='200'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win11' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win11' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win11' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win11' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win12' image='' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='220'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win12' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win12' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win12' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win12' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win13' image='' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='240'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win13' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win13' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win13' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win13' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win14' image='' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='260'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win14' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win14' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win14' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win14' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win15' image='' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='280'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win15' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win15' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win15' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win15' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win16' image='' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='300'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win16' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win16' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win16' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win16' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win17' image='' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='320'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win17' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win17' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win17' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win17' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win18' image='' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='340'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win18' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win18' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win18' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win18' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win19' image='' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='360'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win19' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win19' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win19' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win19' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."			<wnd h='20' id='win20' image='' parent='NewServerGift,NewServerGift3,list' revmsg='true' w='300' x='0' y='380'>"
ui=ui.."				<edit align='center' font='system' h='20' id='nameEdit' parent='NewServerGift,NewServerGift3,list,win20' revmsg='true' text='' text_color='#EE8800' w='70' x='32' y='0' />"
ui=ui.."				<edit font='system' h='20' id='staticEdit' parent='NewServerGift,NewServerGift3,list,win20' revmsg='true' text='' text_color='#7C6B5B' w='202' x='100' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='multipleEdit' parent='NewServerGift,NewServerGift3,list,win20' revmsg='true' text='' text_color='#FFFF00' w='30' x='125' y='0' />"
ui=ui.."				<edit align='center' font='system' h='20' id='ingotEdit' parent='NewServerGift,NewServerGift3,list,win20' revmsg='true' text='' text_color='#FFFF00' w='55' x='213' y='0' />"
ui=ui.."			</wnd>"
ui=ui.."		</wnd>"
ui=ui.."		<wnd h='16' id='Congratulate' image='0' parent='NewServerGift,NewServerGift3' revmsg='true' visible='false' w='16' x='150' y='200'>"
ui=ui.."			<image check_point='0' h='108' id='Background' image='1806400061' parent='NewServerGift,NewServerGift3,Congratulate' revmsg='true' w='373' x='0' y='0' />"
ui=ui.."			<image check_point='0' h='35' id='TestWndChild_2' image='1806400107' parent='NewServerGift,NewServerGift3,Congratulate' revmsg='true' w='46' x='251' y='56' />"
ui=ui.."			<image check_point='0' h='47' id='num1' image='0' parent='NewServerGift,NewServerGift3,Congratulate' revmsg='true' w='40' x='45' y='46' />"
ui=ui.."			<image check_point='0' h='47' id='num2' image='0' parent='NewServerGift,NewServerGift3,Congratulate' revmsg='true' w='40' x='86' y='46' />"
ui=ui.."			<image check_point='0' h='47' id='num3' image='0' parent='NewServerGift,NewServerGift3,Congratulate' revmsg='true' w='40' x='127' y='46' />"
ui=ui.."			<image check_point='0' h='47' id='num4' image='0' parent='NewServerGift,NewServerGift3,Congratulate' revmsg='true' w='40' x='168' y='46' />"
ui=ui.."			<image check_point='0' h='47' id='num5' image='0' parent='NewServerGift,NewServerGift3,Congratulate' revmsg='true' w='40' x='209' y='46' />"
ui=ui.."		</wnd>"
ui=ui.."	</wnd>	"
ui=ui..""
ui=ui.."</dialog>"
ui=ui.."</form>"

function NewServerGift.main()
	GenFormByString(ui)
end

local _handle = GetWindow(0,"NewServerGift")
if _handle ~= 0 then 
	GUI:WndClose(_handle)
end

function NewServerGift:OnInit(_parent)
	--msg("_parent".._parent)
	self._wnd = _parent
	local index = tonumber(deserialize(FormParam[1]))
	if index == 1 then 
		WndSetVisible(self._wnd, "button3", false)
	elseif index == 2 then 
		WndSetVisible(self._wnd, "button3", false)
		WndSetVisible(self._wnd, "button2", false)
	end 
	local _handle = GetWindow(_parent, "button1")
	if _handle ~= 0 then 
		ButtonSetIsActivePageBtn(_handle, "button1", false)
		self:List(_handle)
	end
end	


function NewServerGift:List(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if Is_true then
		return 
	end
	
	for i = 1 , 3 do 
		local btn_handle = GetWindow(self._wnd, "button"..i)
		if btn_handle == _handle then
			ButtonSetIsActivePageBtn(self._wnd, "button"..i,true)
			WndSetVisible(self._wnd, "NewServerGift"..i,true)
		else
			ButtonSetIsActivePageBtn(self._wnd, "button"..i,false)
			WndSetVisible(self._wnd, "NewServerGift"..i,false)
		end	
	end
	
end

function NewServerGift:ChargeMsgBox()
	luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end

function NewServerGift:OnClose()
	GUI:WndClose(self._wnd)
end


-----------------------------------------------------每日抢购---------------------------------
NewServerGift1 = {}
NewServerGift1.level = 0


function NewServerGift1:UIInit(_this)
	--msg('NewServerGift1:UIInit')
	if not GUI:WndGetVisible(_this) then 
		return
	end
	self._wnd = _this
	
	
	UI:Lua_SubmitForm("开服豪礼表单", "NewServerGift1_main", "")
	
end

function NewServerGift1:updata(DATA)
	--msg("3updata")
	remainTime = tonumber(DATA[1])
	if remainTime <= 0 then
		local _handle = GetWindow(self._wnd, "remainTime")
		if _handle ~= 0 then 
			GUI:EditSetTextM(_handle, "已结束")
		end
	else
		self.remainTime = remainTime
		local remainTime_str = GetLeaveTimeString(self.remainTime)
		local _handle = GetWindow(self._wnd, "remainTime")
		if _handle ~= 0 then 
			GUI:EditSetTextM(_handle, remainTime_str)
		end
		
		if not self.timerID then
			self.timerID = GUI:WndAddTimerBrief(self._wnd, 1000, "NewServerGift1:RemainTimeUpdata")   --设置定时器
			--msg(''..self.timerID)
		end
	end
	
	
	self.TABLE = DATA[2]
	local BUYCOUNT = DATA[3]
	for i = 1, 4 do 
		local temp = CL:GetItemTemplateHandleByKeyName(self.TABLE[i][1])
		local name = ""
		if CL:GetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
			name = LuaRet
		end
		local _handle = GetWindow(self._wnd, "win"..i..",ItemName")
		if _handle ~= 0 then
			GUI:EditSetTextM(_handle, ''..name)
		end	
		
		local _handle = GetWindow(self._wnd, "win"..i..",item")
		if _handle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(_handle, self.TABLE[i][1], self.TABLE[i][2], true) --物品框填充
		end			
		local _handle = GetWindow(self._wnd, "win"..i..",originalPrice")
		if _handle ~= 0 then
			GUI:EditSetTextM(_handle,"原价：".. self.TABLE[i][3])
		end
		_handle = GetWindow(self._wnd, "win"..i..",nowPrice")
		if _handle ~= 0 then
			GUI:EditSetTextM(_handle,"现价：".. self.TABLE[i][4])
		end
		_handle = GetWindow(self._wnd, "win"..i..",limitCount")
		if _handle ~= 0 then
			GUI:EditSetTextM(_handle, BUYCOUNT[i].." / ".. self.TABLE[i][5])
			local _handle = GetWindow(self._wnd, "win"..i..",Get")
			if BUYCOUNT[i] > 0 and _handle ~= 0 then
				--GUI:WndSetVisible(_handle, true)
				GUI:WndSetEnableM(_handle, true)
			else
				GUI:WndSetEnableM(_handle, false)
			end
		end
		
	end
end	



function NewServerGift1:RemainTimeUpdata()
	if self.remainTime <= 0 then 
		
	else
		self.remainTime = self.remainTime - 1
		local remainTime_str = GetLeaveTimeString(self.remainTime)
		--msg(remainTime_str)
		local _handle = GetWindow(self._wnd, "remainTime")
		if _handle ~= 0 then 
			GUI:EditSetTextM(_handle, remainTime_str)
		end
	end
end




function NewServerGift1:Buy(_handle)
	local index = 0
	index = GUI:WndGetParam(_handle)
	if index ~= 0 then 
		UI:Lua_SubmitForm("开服豪礼表单", "NewServerGift1_Buy", ""..index)
	end
end

function NewServerGift1:UpdataLimitCount(index, count)
	index = tonumber(index)
	count = tonumber(count)
	local _handle = GetWindow(self._wnd, "win"..index..",limitCount")
	if _handle ~= 0 then 
		GUI:EditSetTextM(_handle, count.." / ".. self.TABLE[index][5])
		if count <= 0 then
			local _handle = GetWindow(self._wnd, "win"..index..",Get")
			if _handle ~= 0 then 
				--GUI:WndSetVisible(_handle, false)
				GUI:WndSetEnableM(_handle, false)
			end
		end
	end
end

function NewServerGift1:msg_up(str,index)
	index = tonumber(index)
	local _handle = GetWindow(self._wnd,"win"..index..",Get")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -100 , -16 , 70 , color , 3)	
end	


-----------------------------------------------------成长基金---------------------------------
NewServerGift2 = {}
NewServerGift2.level = 0
NewServerGift2.restTime = 0
NewServerGift2.time_id = 0

function NewServerGift2.UIInit(_this)
	if not GUI:WndGetVisible(_this) then 
		return
	end
	--msg('NewServerGift2:UIInit')
	NewServerGift2._wnd = _this
	NewServerGift2.DcWndHandle = GetWindow(_this, "TestWndChild_12")
	UI:Lua_SubmitForm("开服豪礼表单", "GrowthFundMain", "")
	
end

function NewServerGift2:updata(data)
	local handle = 0
	--data[1] = 是否充值  data[2] = 是否购买过    data[3] =  {}各个阶段是否领取过1:已领取 0：未领取   data[4] = 玩家转生等级  data[5] = 剩余时间
	
	local hasRecharged = tonumber(data[1])   --是否充值过
	local hasBought = tonumber(data[2])
	local hasGotAwardTb = data[3] --玩家转生等级
	local playerReinLevel = tonumber(data[4])     --玩家转生等级
	NewServerGift2.restTime = data[5]
	str = GetLeaveTimeString(NewServerGift2.restTime)
	if NewServerGift2.DcWndHandle ~= 0 then
		GUI:EditSetTextM(NewServerGift2.DcWndHandle, str)
	end

	if NewServerGift2.time_id == 0 and NewServerGift2.restTime > 0 then	
		if GUI:WndAddTimerBrief(NewServerGift2._wnd, 1000, "NewServerGift2.OnCountDown") then    --设置定时器
			NewServerGift2.time_id = LuaRet
		end
	end
	if NewServerGift2.restTime <= 0 then
		NewServerGift2.termEnd = true
		if NewServerGift2.DcWndHandle ~= 0 then
			GUI:EditSetTextM(NewServerGift2.DcWndHandle, "已结束")
		end
	end
	if hasRecharged > 0 then
		handle = GetWindow(NewServerGift2._wnd, "charge")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end
		handle = GetWindow(NewServerGift2._wnd, "buyFund")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
			if hasBought == 1 then
				GUI:WndSetTextM(handle, "已 购 买")
				GUI:WndSetEnableM(handle, false)
			end
		end
	end
	
	local LEVEL = {3,4,5,6,8}
	local k = 0 
	for i = 1, #LEVEL do 
		if playerReinLevel >= LEVEL[i] then  --满足第几等级条件
			k = i
		end
	end
	for i = 1, k do 
		local _handle = GetWindow(self._wnd, "Get"..i)
		if _handle ~= 0 then 
			if hasGotAwardTb[i] == 1 then 
				GUI:WndSetEnableM(_handle, false)
				GUI:WndSetTextM(_handle, "已 领 取")
			elseif hasGotAwardTb[i] == 0 then 
				GUI:WndSetEnableM(_handle, true)
			end
		end
	end
	
	local restNum = data[6]
	local _handle = GetWindow(NewServerGift2._wnd, "RestNum")
	if _handle ~= 0 then 
		GUI:EditSetTextM(_handle, ""..restNum)
	end
end

function NewServerGift2.OnCountDown()
	--msg("dc....")
	NewServerGift2.restTime = NewServerGift2.restTime - 1
	if NewServerGift2.restTime < 0 then
		return
	end
	local str = GetLeaveTimeString(NewServerGift2.restTime)
	if NewServerGift2.DcWndHandle ~= 0 then
		GUI:EditSetTextM(NewServerGift2.DcWndHandle, str)
	end
end

function NewServerGift2.OpenRechagrePage()
	CL:OpenUrlUseIEByType(3)
end

function NewServerGift2.BuyGrowthFund()
	UI:Lua_SubmitForm("开服豪礼表单", "BuyGrowthFund", "")
end

function NewServerGift2.GetAward(_handle)
	local index = 0
	index = GUI:WndGetParam(_handle)
	if index ~= 0 then 
		UI:Lua_SubmitForm("开服豪礼表单", "GetGrowthFundAward", ""..index)
	end
end

-----------------------------------------------------幸运转盘---------------------------------
NewServerGift3 = {}
NewServerGift3.GAME_ROLE = 
{ --转盘次数, 累计充值, 转盘消费
	[1] = {1000, 1000};
	[2] = {2000, 2000};
	[3] = {5000, 5000};
	[4] = {10000, 10000};
	[5] = {15000, 15000};
}
function NewServerGift3:UIInit(_this)
	if not GUI:WndGetVisible(_this) then 
		return
	end
	--msg('NewServerGift3:UIInit')
	self._wnd = _this
	local _handle = GetWindow(_this,"questionMark")
	if _handle ~= 0 then
		GUI:WndSetHintWidth(_handle, 300)
		local tips = "规则说明：                                        "
		tips = tips.."1.充值元宝达到不同档次可以获得对应金额的投注机会  "
		tips = tips.."2.最多获得五次的投注机会                          "
		tips = tips.."3.每次投注需要元宝                                "
		tips = tips.."4.投注后返还转出倍数的投注元宝                    "
		tips = tips.."5.投注的元宝不计入任何消费和排行活动"
		GUI:WndSetHint(_handle, tips)
	end
	local _handle = GetWindow(self._wnd, "Congratulate")
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, false)
	end
	local _handle = GetWindow(_this, "list")
	if _handle ~= 0 then 
		GUI:WndSetScrollBarImage(_handle, 1803800026,1803800030, 1803800044, 1803800035)
	end
	UI:Lua_SubmitForm("开服豪礼表单", "NewServerGift3_main", "")
end

function NewServerGift3:UpData(DATA)
	
	
	remainTime = tonumber(DATA[1])
	if remainTime <= 0 then
		local _handle = GetWindow(self._wnd, "remainTime")
		if _handle ~= 0 then 
			GUI:EditSetTextM(_handle, "已结束")
		end
	else
		self.remainTime = remainTime
		local remainTime_str = GetLeaveTimeString(self.remainTime)
		local _handle = GetWindow(self._wnd, "remainTime")
		if _handle ~= 0 then 
			GUI:EditSetTextM(_handle, remainTime_str)
		end
		if not self.timerID then
			if GUI:WndAddTimerBrief(self._wnd, 1000, "NewServerGift3:RemainTimeUpdata") then    --设置定时器
				self.timerID = LuaRet
			end
		end
	end
	self.TABLE = DATA[2]
	local gambleCounts = DATA[3]
	local _handle = GetWindow(self._wnd, "promptText")
	if _handle ~= 0 then
		GUI:RichEditClear(_handle)
	end
	
	if gambleCounts >= 5 then 
		ButtonSetImageID(self._wnd, "charge", 1806400128)
		local _handle = GetWindow(self._wnd, "charge")
		if _handle ~= 0 then 
			GUI:WndSetEnableM(_handle, false)
		end
		
		local _handle = GetWindow(self._wnd, "promptText")
		if _handle ~= 0 then
			GUI:RichEditAppendString(_handle, "              #COLORCOLOR_BROWN#剩余次数：#COLOREND##COLORCOLOR_DGREENG#0 次#COLOREND#") 
		end
		
	else
		local accumulateCharge = DATA[4]
		local index = gambleCounts + 1
		if accumulateCharge >= self.TABLE[index][1] then      --试手气
			ButtonSetImageID(self._wnd, "charge", 1806400128)
			local _handle = GetWindow(self._wnd, "promptText")
			if _handle ~= 0 then
				--GUI:EditSetTextM(_handle, "扣除      元宝,返还相应倍数元宝")
				local remainTimes = 5 - gambleCounts
				GUI:RichEditAppendString(_handle, "#COLORCOLOR_BROWN#累计充值并投注 #COLOREND##COLORCOLOR_GREENG#"..self.TABLE[index][1].." 元宝#COLOREND##COLORCOLOR_BROWN#  剩余次数：#COLOREND##COLORCOLOR_GREENG#"..remainTimes.."次#COLOREND#") 
			end
			
		else													--立即充值
			ButtonSetImageID(self._wnd, "charge", 1806000065)
			lackIngot = self.TABLE[index][1] - accumulateCharge
			local _handle = GetWindow(self._wnd, "promptText")
			if _handle ~= 0 then
				GUI:RichEditAppendString(_handle, "           #COLORCOLOR_BROWN#充值#COLOREND##COLORCOLOR_GREENG#"..lackIngot.."元宝#COLOREND##COLORCOLOR_BROWN#即可参与#COLOREND#") 
			end
		end
	end	
	local GAMBLE_RECORD = DATA[5]
	if GAMBLE_RECORD ~= nil and #GAMBLE_RECORD ~= 0 then
		for i, v in ipairs(GAMBLE_RECORD) do 
			local recordNum = #GAMBLE_RECORD
			local handle = GetWindow(self._wnd, "list,win"..recordNum..",nameEdit")
			if handle ~= 0 then
				GUI:EditSetTextM(handle, ""..GAMBLE_RECORD[i]["name"])
			end
			local handle = GetWindow(self._wnd, "list,win"..recordNum..",staticEdit")
			if handle ~= 0 then
				GUI:EditSetTextM(handle, "获得     倍返还,共计        元宝")
			end
			local handle = GetWindow(self._wnd, "list,win"..recordNum..",multipleEdit")
			if handle ~= 0 then
				GUI:EditSetTextM(handle, ""..GAMBLE_RECORD[i]["award"])
			end
			local handle = GetWindow(self._wnd, "list,win"..recordNum..",ingotEdit")
			if handle ~= 0 then
				GUI:EditSetTextM(handle, ""..GAMBLE_RECORD[i]["totleIngot"])
			end
			recordNum = recordNum - 1 
		end
	end
	
	
end

function NewServerGift3:RemainTimeUpdata()
	if self.remainTime <= 0 then 
		
	else
		self.remainTime = self.remainTime - 1
		local remainTime_str = GetLeaveTimeString(self.remainTime)
		local _handle = GetWindow(self._wnd, "remainTime")
		if _handle ~= 0 then 
			GUI:EditSetTextM(_handle, remainTime_str)
		end
	end
end

function NewServerGift3:Charge(_handle)
	local imageID = GUI:WndGetImageID(_handle)
	--msg(''..imageID)
	if imageID == 1806400128 then 
		UI:Lua_SubmitForm("开服豪礼表单", "NewServerGift3_Gamble", "")
		GUI:WndSetEnableM(_handle, false)
	else
		CL:OpenUrlUseIEByType(3)
	end
	
end

NewServerGift3.EndFunc = nil
NewServerGift3.CurAngle = 0
function NewServerGift3:Timer()
	local _Handle = GetWindow(self._wnd, "arrow")
	if NewServerGift3.CurAngle > NewServerGift3.angle then
		loadstring(NewServerGift3.EndFunc)()
		NewServerGift3.EndFunc = nil
		NewServerGift3.CurAngle = 0
		GUI:WndDelTimer(_Handle, NewServerGift3.TimeId)
		return
	end
	local cos = math.cos(math.rad(NewServerGift3.CurAngle))
	local sin = math.sin(math.rad(NewServerGift3.CurAngle))
	GUI:WndSetSizeM(_Handle, 33 + (38 * sin)*2, 185 - (37 * cos)*2)
	GUI:ImageSetDrawCenter(_Handle, true)
	GUI:ImageSetTransfrom(_Handle, 10000, 10000, NewServerGift3.CurAngle)
	NewServerGift3.CurAngle = NewServerGift3.CurAngle + 7
end

function NewServerGift3:ImageRotate( _Handle,degree,overFun)
	NewServerGift3.EndFunc = overFun
	NewServerGift3.angle = degree + 3600
	NewServerGift3.TimeId = GUI:WndAddTimerBrief(_Handle, 15, "NewServerGift3:Timer")
end

function NewServerGift3:StartGamble(angle, awardIngot)
	angle = tonumber(angle)
	local _Handle = GetWindow(self._wnd, "arrow")
	if _Handle ~= 0 then 
		NewServerGift3:ImageRotate(_Handle, angle, "NewServerGift3:End("..awardIngot..")")
	end
end


local IMAGE_ID = 
{
	[0] =1806400084,
	1806400085,
	1806400086,
	1806400087,
	1806400088,
	1806400089,
	1806400090,
	1806400091,
	1806400092,
	1806400093,
}
function NewServerGift3:End(awardIngot)
	awardIngot = tostring(awardIngot)
	--msg(''..awardIngot)
	local _handle = GetWindow(self._wnd, "charge")
	if _handle ~= 0 then 
		GUI:WndSetEnableM(_handle, true)
	end
	local _handle = GetWindow(self._wnd, "Congratulate")
	if _handle ~= 0 then 
		if awardIngot ~= "nil" then 
			local k = 5
			for i = #awardIngot, 1, -1  do 
				local d = awardIngot:sub(i,i)
				--msg(''..d)
				ImageSetImageID(_handle, "num"..k, IMAGE_ID[tonumber(d)])  
				k = k - 1
			end
		end
		GUI:WndSetVisible(_handle, true)
		CL:AddDelayTask('NewServerGift3:SetCongratulateVisible()', 2000, 1)
	end
end

function NewServerGift3:SetCongratulateVisible()
	local _handle = GetWindow(self._wnd, "Congratulate")
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, false)
	end
end

NewServerGift.main()