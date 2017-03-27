VIPWnd ={}
local ui = "<form> <dialog OnInit='VIPWnd.UIInit' id='VIPWndUI' image='1806000000' x='0' y='0' w='814' h='593' center='true' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='vipImage1' image='1806000003' x='70' y='134' w='69' h='32' check_point='0' revmsg='true'/>"
	.."	<image id='nowLevel1' image='1806000004' x='165' y='132' w='31' h='36' visible='false' check_point='0' revmsg='true'/>"
	.."	<image id='nowLevel' image='0' x='144' y='132' w='31' h='36' check_point='0' revmsg='true'/>"
	.."	<edit id='text1' x='306' y='109' w='200' h='30' revmsg='true' text_color='#E4C19F' text='再充值         元宝即可成为' font='system'/>"
	.."	<edit id='howMuchToNextVipEdit' x='338' y='114' w='60' h='15' align='center' revmsg='true' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vip_lv' x='489' y='118' w='42' h='14' revmsg='true' text_color='#FFCC00' font='system'/>"
	.."	<image id='barBack' image='1806000060' x='196' y='136' w='437' h='54' check_point='0' revmsg='true'/>"
	.."	<image id='progressBar' image='1806000061' x='222' y='143' w='357' h='24' visible='false' revmsg='true'/>"

	.."	<button id='rechargeBtn' image='1806000065' x='622' y='128' w='127' h='50' OnLButtonUp='VIPWnd.onRechargeBtn' revmsg='true'/>"
	.."	<edit id='vipAmountTxt' x='633' y='178' w='150' h='14' revmsg='true' text='已有      人成为VIP' text_color='#8A7761' font='system'/>"
	.."	<edit id='vipAmount' x='618' y='178' w='116' h='14' revmsg='true' text_color='#00D700' align='center' font='system'/>"
	.."	<button id='closeBtn' image='1800000068' x='755' y='70' w='24' h='24' OnLButtonUp='VIPWnd.onCloseBtn' revmsg='true'/>"
	.."	<edit id='moneyEdit' x='371' y='144' w='120' h='14' revmsg='true' enable='false'/>"
	
	--vip welfare window
	.."	<wnd id='wndbtn1Detail' image='1806000001' x='41' y='199' w='733' h='361' check_point='0' revmsg='true'>"
	.."	<image id='WndBkImg' image='1806000001' x='0' y='0' w='733' h='361' revmsg='false'/>"
	.."	<image id='vipImage2' image='1806000014' x='334' y='237' w='60' h='28' revmsg='true'/>"
	.."	<image id='displayLevel' x='394' y='236' w='25' h='30' revmsg='true'/>"
	.."	<image id='displayLevel2' image='1806000015' x='403' y='236' w='25' h='30' revmsg='true'/>"
	
	.."	<richedit id='getEXPbuff' x='576' y='254' w='153' h='32' OnLButtonUp='VIPWnd.l_getExpUP' text_color='#00FF00' revmsg='true' font='system'/>"
	.."	<image id='textImage1' image='1806000036' x='53' y='303' w='165' h='18' revmsg='true'/>"
	.."	<image id='textImage2' image='1806000025' x='92' y='305' w='12' h='15' revmsg='true'/>"
	.."	<image id='nextVipLevel' image='1806000026' x='105' y='305' w='12' h='15' revmsg='true'/>"
	.."	<image id='nextVipLevel2' image='1806000026' x='109' y='305' w='12' h='15' revmsg='true'/>"
	.."	<image id='getBuffFlag' image='1806000057' visible='false' x='583' y='222' w='85' h='61' revmsg='true'/>"
	.."	<image id='itemBkimg1' image='1806000059' visible='true' x='233' y='282' w='48' h='48' revmsg='false'/>"
	.."	<image id='itemBkimg2' image='1806000059' visible='true' x='284' y='282' w='48' h='48' revmsg='false'/>"
	.."	<image id='itemBkimg3' image='1806000059' visible='true' x='335' y='282' w='48' h='48' revmsg='false'/>"
	.."	<image id='itemBkimg4' image='1806000059' visible='true' x='386' y='282' w='48' h='48' revmsg='false'/>"
	.."	<image id='itemBkimg5' image='1806000059' visible='true' x='437' y='282' w='48' h='48' revmsg='false'/>"
	.."	<image id='itemBkimg6' image='1806000059' visible='true' x='488' y='282' w='48' h='48' revmsg='false'/>"
	.."	<itemctrl id='item1' x='237' y='286' w='44' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='288' y='286' w='44' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item3' x='339' y='286' w='44' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item4' x='390' y='286' w='44' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item5' x='441' y='286' w='44' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item6' x='492' y='286' w='44' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	
	.."	<image id='dp3' image='1806000086' x='430' y='66' w='212' h='136' param='2' OnMouseIn='VIPWnd.l_introImage_mouseIn' revmsg='true'>"
	.."	<image id='dp3Img' image='' x='11' y='11' w='191.5' h='114' revmsg='true'/>"
	.." </image>"
	
	.."	<image id='dp1' image='1806000086' x='92' y='66' w='212' h='136' param='2' OnMouseIn='VIPWnd.l_introImage_mouseIn' revmsg='true'>"
	.."	<image id='dp1Img' image='' x='11' y='11' w='191.5' h='114' revmsg='true'/>"
	.." </image>"
	
	.."	<image id='dp2' image='1806000086' x='261' y='44' w='212' h='136' param='0' OnMouseIn='VIPWnd.l_introImage_mouseIn' revmsg='true'>"
	.."	<image id='dp2Img' image='' x='11' y='11' w='191.5' h='114' revmsg='true'/>"
	.." </image>"
	.."	<button id='downPageBtn' image='1806000081' x='431' y='236' w='31' h='31' OnLButtonUp='VIPWnd.DownPage' revmsg='true'/>"
	.."	<button id='upPageBtn' image='1806000077' x='291' y='236' w='31' h='31' OnLButtonUp='VIPWnd.UpPage' revmsg='true'/>"
	.."	<button id='getRewardBtn' image='1800000150' x='574' y='300' w='84' h='32' text='领取礼包' OnLButtonUp='VIPWnd.l_getbag' revmsg='true' text_color='#C2B6A0'/>"
	.."</wnd>"
	--vip privilege window
	.."	<wnd id='wndbtn2Detail' image='1806000002' x='41' y='199' w='733' h='361' visible='false' check_point='0' revmsg='true'>"
	.."	<image id='TestWndChild_15' image='1806000063' x='10' y='73' w='713' h='31' param='1' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_17' image='1806000056' x='37' y='79' w='58' h='20' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_16' image='1806000063' x='10' y='104' w='713' h='31' param='2' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_28' image='1806000048' x='37' y='112' w='58' h='20' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_39' image='1806000063' x='10' y='135' w='713' h='31' param='3' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_40' image='1806000049' x='25' y='141' w='84' h='20' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_51' image='1806000063' x='10' y='166' w='713' h='31' param='4' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_52' image='1806000050' x='25' y='172' w='84' h='20' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_63' image='1806000063' x='10' y='197' w='713' h='31' param='5' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_64' image='1806000051' x='26' y='203' w='80' h='20' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_75' image='1806000063' x='10' y='228' w='713' h='31' param='6' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_76' image='1806000055' x='23' y='234' w='84' h='20' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_87' image='1806000063' x='10' y='259' w='713' h='31' param='7' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_88' image='1806000053' x='24' y='264' w='84' h='20' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_99' image='1806000063' x='10' y='290' w='713' h='31' param='8' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_100' image='1806000054' x='24' y='296' w='84' h='20' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_101' image='1806000063' x='10' y='321' w='713' h='31' param='9' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>"

	.."	<image id='m_in1' image='1806000064' x='10' y='73' w='713' h='31' param='1' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>"
	.."	<image id='m_in2' image='1806000064' x='10' y='104' w='713' h='31' param='2' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>"
	.."	<image id='m_in3' image='1806000064' x='10' y='135' w='713' h='31' param='3' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>"
	.."	<image id='m_in4' image='1806000064' x='10' y='166' w='713' h='31' param='4' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>"
	.."	<image id='m_in5' image='1806000064' x='10' y='197' w='713' h='31' param='5' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>"
	.."	<image id='m_in6' image='1806000064' x='10' y='228' w='713' h='31' param='6' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>"
	.."	<image id='m_in7' image='1806000064' x='10' y='259' w='713' h='31' param='7' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>"
	.."	<image id='m_in8' image='1806000064' x='10' y='290' w='713' h='31' param='8' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>"
	.."	<image id='m_in9' image='1806000064' x='10' y='321' w='713' h='31' param='9' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1806000062' x='10' y='39' w='713' h='35' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_4' image='1806000037' x='38' y='44' w='58' h='22' check_point='0' revmsg='true'/>"
	
	.."	<image id='vip1' image='1806000038' x='135' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='圣威\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP1' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='双 倍\n1小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP1' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='1次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='3' y='242' w='40' h='35' text='30次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='66' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	.."	<image id='vip2' image='1806000039' x='194' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='怒威\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP2' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='双 倍\n2小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP2' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='2次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='3' y='242' w='40' h='35' text='50次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='145' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	.."	<image id='vip3' image='1806000040' x='256' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='傲啸\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP3' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='双 倍\n3小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP3' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='3次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='3' y='242' w='40' h='35' text='70次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='237' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	.."	<image id='vip4' image='1806000041' x='316' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='傲啸\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='true'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP4' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='双 倍\n4小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP4' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='4次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='1' y='242' w='40' h='35' text='100次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='343' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	.."	<image id='vip5' image='1806000042' x='376' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='傲啸\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP5' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='三 倍\n1小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP5' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='5次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='1' y='242' w='40' h='35' text='150次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='462' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	.."	<image id='vip6' image='1806000043' x='436' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='傲啸\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='true'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP6' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='三 倍\n2小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP6' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='6次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='1' y='242' w='40' h='35' text='200次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='601' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	.."	<image id='vip7' image='1806000044' x='494' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='傲啸\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP7' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='三 倍\n3小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP7' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='7次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='1' y='242' w='40' h='35' text='300次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='760' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	.."	<image id='vip8' image='1806000045' x='555' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='傲啸\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP8' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='四 倍\n1小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP8' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='8次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='1' y='242' w='40' h='35' text='400次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='938' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	.."	<image id='vip9' image='1806000046' x='615' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='傲啸\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP9' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='四 倍\n2小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP9' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='9次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='1' y='242' w='40' h='35' text='500次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='1137' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	.."	<image id='vip10' image='1806000047' x='675' y='48' w='44' h='17' check_point='0' enable='false' revmsg='false'>"
	.."	<edit id='marsName' x='3' y='18' w='70' h='35' text='傲啸\n神将' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<image id='img2' image='1806000058' x='0' y='89' w='38' h='30' check_point='0' enable='false' revmsg='false'/>"
	.."	<edit id='mapName' x='3' y='118' w='38' h='35' text='至尊' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='expBuff' x='1' y='143' w='70' h='35' text='四 倍\n3小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP10' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes' x='3' y='212' w='40' h='35' text='10次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='goldTimes' x='1' y='242' w='40' h='35' text='600次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."	<edit id='freeTimes1' x='3' y='273' w='40' h='35' text='1361' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>"
	.."</image>"
	
	
	.."	<image id='TestWndChild_102' image='1806000052' x='24' y='327' w='80' h='20' check_point='0' revmsg='true'/>"
	.."</wnd>"
	
	
	.."	<button id='wndbtn1' image='1806000069' x='269' y='199' w='144' h='39' param='1' OnLButtonUp='VIPWnd.updataPageBtn' revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='wndbtn2' image='1806000073' x='408' y='199' w='144' h='39' param='2' OnLButtonUp='VIPWnd.updataPageBtn' revmsg='true' text_color='#C2B6A0'/>"
	.." </dialog>"
	.."</form>"

function VIPWnd.main()
	local handle = GetWindow(nil,"VIPWndUI")
	if handle ~= 0 then
		GUI:WndClose(handle)
	else
		GenFormByString(ui)
	end
end

VIPWnd.dw_introData = {
	{1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10}
}

VIPWnd.playerL = 0
VIPWnd.tab = {}
VIPWnd.vipLvl = 1
--VIPWnd.vipLvl_shi = 0
VIPWnd.getexp = 0
VIPWnd.dw_introVipLvl = VIPWnd.vipLvl
VIPWnd.l_selectHandle = 0


--UI Logic Code Start
function VIPWnd.UIInit(h)
	VIPWnd.WndH = h		
	CenterWnd(h)
	GUI:WndSetSizeM(h, 814 ,593)
--[[	for i = 1, 3 do
		local handle = GetWindow(h, "wndbtn1Detail,dp"..i)
		if handle ~=0 then
			GUI:ImageSetDrawCenter(handle, true)
		end
		handle = GetWindow(h, "wndbtn1Detail,dp"..i..",dp"..i.."Img")
		if handle ~=0 then
			GUI:ImageSetDrawCenter(handle, true)
		end
	end--]]

	UI:Lua_SubmitForm("Vip表单", "main", "")
end

function Vip_updata(data,tab)
	VIPWnd.playerL = data[1]
	VIPWnd.tab = tab
	if data[1] == 0 then
		VIPWnd.vipLvl = 1
	else
		VIPWnd.vipLvl = data[1]	
	end
	VIPWnd.dw_introVipLvl = VIPWnd.vipLvl
	--VIPWnd.vipLvl_shi = data[1]
	
	local vipLvlImage = GUI:WndFindChildM(VIPWnd.WndH, "nowLevel")
	UI:Lua_Plus("1806000004",tostring(VIPWnd.vipLvl))
	if data[1] == 0 then
		GUI:WndSetImageID(vipLvlImage, 1806000004)
	elseif data[1] == 10 then 
		GUI:WndSetImageID(vipLvlImage, 1806000005)
		local vipLvlImage1 = GUI:WndFindChildM(VIPWnd.WndH, "nowLevel1")
		if vipLvlImage1 ~= 0 then
			GUI:WndSetVisible(vipLvlImage1, true)
		end
	else
		GUI:WndSetImageID(vipLvlImage, tonumber(LuaRet))
	end
	local h1 = GUI:WndFindChildM(VIPWnd.WndH, "howMuchToNextVipEdit")
	local h2 = GUI:WndFindChildM(VIPWnd.WndH, "vip_lv")
	local h3 = GUI:WndFindChildM(VIPWnd.WndH, "text1")
	if data[1] < 10 then
		local x = data[3] - data[2]
		if h1 ~= 0 then
			GUI:EditSetTextM(h1, ""..x)
		end
		if h2 ~= 0 then
			GUI:EditSetTextM(h2, "VIP"..(data[1]+1))
		end	
		local pbh = GetWindow(VIPWnd.WndH, "progressBar")
		if pbh ~= 0 then
			GUI:ImageSetTransfrom(pbh,(tonumber(data[2])/tonumber(data[3]))*10000,10000,0)
			GUI:WndSetVisible(pbh, true)
		end
		local moneyEdit = GUI:WndFindChildM(VIPWnd.WndH, "moneyEdit")
		if moneyEdit ~= 0 then
			GUI:EditSetTextM(moneyEdit, data[2].."/"..data[3])
		end
	else	
		GUI:EditSetTextM(h3, "已到顶级")
		GUI:WndSetPosM(h3, 385, 109)
		GUI:EditSetTextColor(h3, MakeARGB(255, 255, 204, 0))
		local pbh = GetWindow(VIPWnd.WndH, "progressBar")
		if pbh ~= 0 then
			GUI:WndSetVisible(pbh, true)
		end	
	end
	local vipAmount = GUI:WndFindChildM(VIPWnd.WndH, "vipAmount")
	GUI:EditSetTextM(vipAmount, ""..data[4])
	for i = 1 , #VIPWnd.dw_introData do 
		VIPWnd.dw_introData[i][3] = data["item"][i]
		VIPWnd.dw_introData[i][2] = data["buff_img"][i]		
	end
	VIPWnd.getexp = data[5]
	local _btn = GUI:WndFindChildM(VIPWnd.WndH, "wndbtn1")
	VIPWnd.updataPageBtn(_btn)
end

function VIPWnd.updataPageBtn(h)
	local handle1 = GetWindow(VIPWnd.WndH, "wndbtn1Detail,upPageBtn")
	
	if VIPWnd.dw_introVipLvl == 1 then
		if handle1 ~=0 then
			GUI:WndSetEnableM(handle1, false)
		end
	else
		if handle1 ~= 0 then
			GUI:WndSetEnableM(handle1, true)
		end
	end
	local handle1 = GetWindow(VIPWnd.WndH, "wndbtn1Detail,downPageBtn")
	if VIPWnd.dw_introVipLvl == (VIPWnd.vipLvl + 1) then
		if handle1 ~=0 then
			GUI:WndSetEnableM(handle1, false)
		end
	else
		if handle1 ~= 0 then
			GUI:WndSetEnableM(handle1, true)
		end
	end
	if VIPWnd.dw_introVipLvl == 10 then
		if handle1 ~=0 then
			GUI:WndSetEnableM(handle1, false)
		end
	end

	local btnS = {"wndbtn1", "wndbtn2"}
	local uih,index = 0, 0
	for i = 1, 2 do
		uih = GetWindow(VIPWnd.WndH, btnS[i])
		if uih == h then
			GUI:ButtonSetIsActivePageBtn(uih, true)
			uih = GetWindow(VIPWnd.WndH, "wndbtn"..i.."Detail")
			if uih ~= 0 then
				GUI:WndSetVisible(uih, true)
			end
		else
			GUI:ButtonSetIsActivePageBtn(uih, false)
			uih = GetWindow(VIPWnd.WndH, "wndbtn"..i.."Detail")
			if uih ~= 0 then
				GUI:WndSetVisible(uih, false)
			end
		end
	end
	
	--index = GUI:WndGetParam(h)
	VIPWnd.showDetailWnd()
end

function VIPWnd.showDetailWnd()
	
	local uih = 0
	uih = GetWindow(VIPWnd.WndH, "wndbtn1Detail,getEXPbuff")
	if uih ~= 0 then
		GUI:RichEditClear(uih)
		GUI:RichEditAppendString(uih, "#SELECT#领取VIP"..VIPWnd.vipLvl.."经验BUFF#SELECTEND#")
		if  tonumber(VIPWnd.vipLvl) == tonumber(VIPWnd.dw_introVipLvl) and VIPWnd.getexp == 0 then 
			GUI:WndSetVisible(uih,true)
		else
			GUI:WndSetVisible(uih,false)
		end
	end
	uih = GetWindow(VIPWnd.WndH, "wndbtn1Detail,getBuffFlag")
	if uih ~= 0 then
		if  VIPWnd.getexp == 0 then 
			GUI:WndSetVisible(uih, false) 
		else
			if tonumber(VIPWnd.vipLvl) == tonumber(VIPWnd.dw_introVipLvl) then
				GUI:WndSetVisible(uih, true)
			else
				GUI:WndSetVisible(uih, false) 
			end
		end
	end
	uih = GetWindow(VIPWnd.WndH, "wndbtn1Detail,getRewardBtn")
	if uih ~= 0 then
		if tonumber(VIPWnd.playerL) >= tonumber(VIPWnd.dw_introVipLvl)  then 
			if VIPWnd.tab[VIPWnd.dw_introVipLvl] == 0  then 
				GUI:WndSetVisible(uih,true)  
			else 
				GUI:WndSetVisible(uih,false)  
			end
		else
			GUI:WndSetVisible(uih,false)
		end		
	end
	local _img = 0
	for i = 1, 3 do
		uih = GetWindow(VIPWnd.WndH, "wndbtn1Detail,dp"..i)
		if uih ~= 0 then
			GUI:ImageSetFitSize(uih, true)
			_img = GetWindow(uih, "dp"..i.."Img")
			if _img ~= 0 then
				GUI:WndGetSizeM(_img)
				local w, h = LuaRet[1], LuaRet[2]
				GUI:WndSetImageID(_img, VIPWnd.dw_introData[VIPWnd.dw_introVipLvl][2][i])
				GUI:WndSetSizeM(_img, w, h)
				GUI:ImageSetFitSize(_img, true)
				GUI:WndSetEnableM(_img, false)
			end
		end
	end
	uih = GetWindow(VIPWnd.WndH, "wndbtn1Detail,displayLevel")
	if uih ~= 0 then
		if VIPWnd.dw_introVipLvl < 10 then
			GUI:WndSetImageID(uih, tonumber(CL:Plus(tostring(1806000015), tostring(VIPWnd.dw_introVipLvl))))
			GUI:WndSetPosM(uih, 394, 236)
			local uih2 = GetWindow(VIPWnd.WndH, "wndbtn1Detail,displayLevel2")
			if uih2 ~= 0 then
				GUI:WndSetVisible(uih2,false)  
			end
		else
			GUI:WndSetImageID(uih, 1806000016)
			GUI:WndSetPosM(uih, 383, 236)
			local uih2 = GetWindow(VIPWnd.WndH, "wndbtn1Detail,displayLevel2")
			if uih2 ~= 0 then
				GUI:WndSetVisible(uih2,true)  
			end
			uih2 = GetWindow(VIPWnd.WndH, "wndbtn1Detail,vipImage2")
			if uih2 ~= 0 then
				GUI:WndSetPosM(uih2, 328, 237)
			end
		end
	end
	uih = GetWindow(VIPWnd.WndH, "wndbtn1Detail,nextVipLevel")
	if uih ~= 0 then
		if VIPWnd.dw_introVipLvl < 10 then
			GUI:WndSetImageID(uih, tonumber(CL:Plus(tostring(1806000026), tostring(VIPWnd.dw_introVipLvl))))
			GUI:WndSetPosM(uih, 105, 305)
			local uih2 = GetWindow(VIPWnd.WndH, "wndbtn1Detail,nextVipLevel2")
			if uih2 ~= 0 then
				GUI:WndSetVisible(uih2,false)  
			end
		else
			GUI:WndSetImageID(uih, 1806000027)
			GUI:WndSetPosM(uih, 99, 305)
			local uih2 = GetWindow(VIPWnd.WndH, "wndbtn1Detail,nextVipLevel2")
			if uih2 ~= 0 then
				GUI:WndSetVisible(uih2,true)  
			end
			uih2 = GetWindow(VIPWnd.WndH, "wndbtn1Detail,textImage2")
			if uih2 ~= 0 then
				GUI:WndSetPosM(uih2, 90, 305)
			end
		end
	end
	for i = 1, 6 do
		uih = GetWindow(VIPWnd.WndH, "wndbtn1Detail,item"..i)
		if uih ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(uih, VIPWnd.dw_introData[VIPWnd.dw_introVipLvl][3][i][1], VIPWnd.dw_introData[VIPWnd.dw_introVipLvl][3][i][2], true)
		end
	end
	local h = GetWindow(VIPWnd.WndH, "wndbtn1Detail,dp2")
	VIPWnd.l_introImage_mouseIn(h)
end

function VIPWnd.UpPage()
	if VIPWnd.dw_introVipLvl == 1 then
		return
	end
	
	VIPWnd.dw_introVipLvl = VIPWnd.dw_introVipLvl - 1
	local _btn = GUI:WndFindChildM(VIPWnd.WndH, "wndbtn1")
	VIPWnd.updataPageBtn(_btn)
end

function VIPWnd.DownPage()
	local level = VIPWnd.vipLvl + 1
	if VIPWnd.dw_introVipLvl == level then
		return
	end
	VIPWnd.dw_introVipLvl = VIPWnd.dw_introVipLvl + 1
	local _btn = GUI:WndFindChildM(VIPWnd.WndH, "wndbtn1")
	VIPWnd.updataPageBtn(_btn)
end

function VIPWnd.l_introImage_mouseIn(h)
	local uih = 0
	WndMoveToParentTop(h)
	VIPWnd.l_selectHandle = h
	  
	local parent = GUI:WndGetParentM(h)  --wnd1 handle
	for i = 1, 3 do
		local iw = GUI:WndFindWindow(parent, "dp"..i)  --show image handle 
		if iw ~= 0 then
			local param =  GUI:WndGetParam(iw) 
			if param ~= 0 and iw ~= VIPWnd.l_selectHandle then
				local sx = 92+(i-1)*169+17
				GUI:WndSetPosM(iw, sx, 66)	
				GUI:WndSetSizeM(iw, 212, 136)
				--GUI:WndTween(iw, "<Tween><Frame time='0.3' x='" .. sx .. "' y='66' scaleX='1' scaleY='1'/></Tween>", "")
				uih = GUI:WndFindChildM(iw, "dp"..i.."Img")
				if uih ~= 0 then
					GUI:WndSetPosM(uih, 12, 12)
					GUI:WndSetSizeM(uih, 192, 114)
					--GUI:WndTween(uih, "<Tween><Frame time='0.3' scaleX='1' scaleY='1'/></Tween>", "")
				end
				GUI:WndSetParam(iw, 0)
				--msg("narrow???")
			elseif param == 0 and iw == VIPWnd.l_selectHandle then
				local sx = 92+(i-1)*169-17
				GUI:WndSetPosM(iw, sx, 44)
				GUI:WndGetSizeM(iw)
				GUI:WndSetSizeM(iw, 212*1.316, 136*1.316)
				--GUI:WndTween(iw, "<Tween><Frame time='0.3' x='"..sx.."' y='44' scaleX='1.316' scaleY='1.316'/></Tween>", "")
				uih = GUI:WndFindChildM(iw, "dp"..i.."Img")
				if uih ~= 0 then
					GUI:WndSetPosM(uih, 14, 15)
					GUI:WndGetSizeM(uih)
					GUI:WndSetSizeM(uih, 192*1.316, 114*1.316)
					--GUI:WndTween(uih, "<Tween><Frame time='0.3' scaleX='1.316' scaleY='1.316'/></Tween>", "")
				end
				GUI:WndSetParam(iw, 1)
				--msg("magnify??")
			end
		end
	end
end



function VIPWnd.inWnd1(_handle)
	local index = GUI:WndGetParam(_handle)
	--msg(""..index)
	local handle = GetWindow(nil,"VIPWndUI,wndbtn2Detail,m_in"..index)
	if handle ~= 0 then
		GUI:WndSetVisible(handle,true)
		--msg("true")
	end
end	

function VIPWnd.OutWnd1(_handle)
	local index = GUI:WndGetParam(_handle)
	--msg(""..index)
	local handle = GetWindow(nil,"VIPWndUI,wndbtn2Detail,m_in"..index)
	if handle ~= 0 then
		GUI:WndSetVisible(handle,false)
		--msg("false")
	end	
end

function VIPWnd.l_getbag(h)
	UI:Lua_SubmitForm("Vip表单", "GetVipGift", tostring(VIPWnd.dw_introVipLvl))
end

function VIPWnd.onRechargeBtn(h)
	CL:OpenUrlUseIEByType(3)
end

function VIPWnd.PromptMessage(str)
	local color = MakeARGB(255,255,0,0)
	local h = GUI:WndFindWindow(VIPWnd.WndH,"wndbtn1Detail,getEXPbuff")
	if h ~= 0 then
		window_msg_up(h,str,-61,-50,30,color,2)
	end
end

function VIPWnd.l_getExpUP(uih)
	UI:Lua_SubmitForm("Vip表单", "getExpUP", "")
	--GUI:WndSetVisible(uih, false)
	--VIPWnd.getexp = 1
	
end

function VIPWnd.onCloseBtn(h)
	if VIPWnd.WndH ~= 0 then
		GUI:WndClose(VIPWnd.WndH)
	end
end

VIPWnd.main()