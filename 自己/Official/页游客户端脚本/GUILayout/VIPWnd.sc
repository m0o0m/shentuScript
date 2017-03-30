package script
{
	public class VIPWnd
	{
		var ui = "<form><dialog OnInit='VIPWnd.UIInit' id='VIPWnd' image='1806000000' x='0' y='0' w='814' h='593' center='true' esc_close='true' drag='true' revmsg='true'>
		<image id='vipImage1' image='1806000003' x='70' y='134' w='69' h='32' check_point='0' revmsg='true'/>
		<image id='nowLevel1' image='1806000004' x='165' y='132' w='31' h='36' visible='false' check_point='0' revmsg='true'/>
		<image id='nowLevel' image='0' x='144' y='132' w='31' h='36' check_point='0' revmsg='true'/>
		<edit id='text1' x='306' y='109' w='200' h='30' revmsg='true' text_color='#E4C19F' text='再充值         元宝即可成为' font='system'/>
		<edit id='howMuchToNextVipEdit' x='338' y='117' w='80' h='15' align='center' revmsg='true' text_color='#FFCC00' font='system'/>
		<edit id='vip_lv' x='489' y='118' w='42' h='14' revmsg='true' text_color='#FFCC00' font='system'/>
		<image id='barBack' image='1806000060' x='196' y='136' w='437' h='54' check_point='0' revmsg='true'/>
		<image id='progressBar' image='1806000061' x='222' y='143' w='357' h='24' visible='false' revmsg='true'/>

		<button id='rechargeBtn' image='1806000065' x='622' y='128' w='127' h='50' OnLButtonUp='VIPWnd.onRechargeBtn' revmsg='true'/>
		<edit id='vipAmountTxt' x='633' y='178' w='150' h='14' revmsg='true' text='已有      人成为VIP' text_color='#8A7761' font='system'/>
		<edit id='vipAmount' x='618' y='178' w='116' h='14' revmsg='true' text_color='#00D700' align='center' font='system'/>
		<button id='closeBtn' image='1800000068' x='755' y='70' w='24' h='24' OnLButtonUp='VIPWnd.onCloseBtn' revmsg='true'/>
		<edit id='moneyEdit' x='371' y='144' w='120' h='14' revmsg='true' enable='false'/>
		<image id='rechargeBtnEffect' image='3020300500' type='animate' x='572' y='26' w='153' h='62' revmsg='true' visible='true'/>

		<wnd id='wndbtn1Detail' image='1806000001' x='41' y='199' w='733' h='361' check_point='0' revmsg='true'>
		<image id='vipImage2' image='1806000014' x='334' y='237' w='60' h='28' revmsg='true'/>
		<image id='displayLevel' x='394' y='236' w='25' h='30' revmsg='true'/>
		<image id='displayLevel2' image='1806000015' x='403' y='236' w='25' h='30' revmsg='true'/>

		<richedit id='getEXPbuff' x='576' y='254' w='153' h='32' OnLButtonUp='VIPWnd.l_getExpUP' text_color='#00FF00' revmsg='true' font='system'/>
		<image id='magic' image='3020300200' type='animate' x='509' y='233' w='153' h='32' revmsg='true' visible='false'/>
		<image id='textImage1' image='1806000036' x='53' y='303' w='165' h='18' revmsg='true'/>
		<image id='textImage2' image='1806000025' x='92' y='305' w='12' h='15' revmsg='true'/>
		<image id='nextVipLevel' image='1806000026' x='105' y='305' w='12' h='15' revmsg='true'/>
		<image id='nextVipLevel2' image='1806000026' x='109' y='305' w='12' h='15' revmsg='true'/>
		<image id='getBuffFlag' image='1806000057' visible='false' x='583' y='222' w='85' h='61' revmsg='true'/>
		<image id='itemBack1' image='1806000059' x='233' y='281' w='44' h='42' revmsg='true'/> <image id='itemBackc1' image='1891430001' x='224' y='270' w='42' h='42' revmsg='true'/> <itemctrl id='item1' x='236' y='284' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>
		<image id='itemBack2' image='1806000059' x='284' y='281' w='44' h='42' revmsg='true'/> <image id='itemBackc2' image='1891430001' x='275' y='270' w='42' h='42' revmsg='true'/> <itemctrl id='item2' x='287' y='284' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>
		<image id='itemBack3' image='1806000059' x='335' y='281' w='44' h='42' revmsg='true'/> <image id='itemBackc3' image='1891430001' x='326' y='270' w='42' h='42' revmsg='true'/> <itemctrl id='item3' x='338' y='284' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>
		<image id='itemBack4' image='1806000059' x='386' y='281' w='44' h='42' revmsg='true'/> <image id='itemBackc4' image='1891430001' x='377' y='270' w='42' h='42' revmsg='true'/> <itemctrl id='item4' x='389' y='284' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>
		<image id='itemBack5' image='1806000059' x='437' y='281' w='44' h='42' revmsg='true'/> <image id='itemBackc5' image='1891430001' x='428' y='270' w='42' h='42' revmsg='true'/> <itemctrl id='item5' x='440' y='284' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>
		<image id='itemBack6' image='1806000059' x='488' y='281' w='44' h='42' revmsg='true'/> <image id='itemBackc6' image='1891430001' x='479' y='270' w='42' h='42' revmsg='true'/> <itemctrl id='item6' x='491' y='284' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>

		<image id='dp3' image='1806000086' x='430' y='66' w='212' h='136' param='2' OnMouseIn='VIPWnd.l_introImage_mouseIn' revmsg='true'>
		<image id='dp3Img' image='' x='11' y='11' w='191.5' h='114' revmsg='true'/>
		</image>

		<image id='dp1' image='1806000086' x='92' y='66' w='212' h='136' param='2' OnMouseIn='VIPWnd.l_introImage_mouseIn' revmsg='true'>
		<image id='dp1Img' image='' x='11' y='11' w='191.5' h='114' revmsg='true'/>
		</image>

		<image id='dp2' image='1806000086' x='261' y='44' w='212' h='136' param='0' OnMouseIn='VIPWnd.l_introImage_mouseIn' revmsg='true'>
		<image id='dp2Img' image='' x='11' y='11' w='191.5' h='114' revmsg='true'/>
		</image>
		<button id='downPageBtn' image='1806000081' x='431' y='236' w='31' h='31' OnLButtonUp='VIPWnd.DownPage' revmsg='true'/>
		<button id='upPageBtn' image='1806000077' x='291' y='236' w='31' h='31' OnLButtonUp='VIPWnd.UpPage' revmsg='true'/>
		<button id='getRewardBtn' image='1800000150' x='574' y='300' w='84' h='32' text='领取礼包' OnLButtonUp='VIPWnd.l_getbag' revmsg='true' text_color='#C2B6A0'/>
		</wnd>
		<wnd id='wndbtn2Detail' image='1806000002' x='41' y='199' w='733' h='361' visible='false' check_point='0' revmsg='true'>
		<image id='TestWndChild_15' image='1806000063' x='10' y='73' w='713' h='31' param='1' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>
		<image id='TestWndChild_17' image='1806000111' x='25' y='76' w='84' h='20' check_point='0' revmsg='true'/>
		<image id='TestWndChild_16' image='1806000063' x='10' y='104' w='713' h='31' param='2' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>
		<image id='TestWndChild_28' image='1806000048' x='37' y='112' w='58' h='20' check_point='0' revmsg='true'/>
		<image id='TestWndChild_39' image='1806000063' x='10' y='135' w='713' h='31' param='3' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>
		<image id='TestWndChild_40' image='1806000110' x='25' y='141' w='84' h='20' check_point='0' revmsg='true'/>
		<image id='TestWndChild_51' image='1806000063' x='10' y='166' w='713' h='31' param='4' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>
		<image id='TestWndChild_52' image='1806000050' x='25' y='172' w='84' h='20' check_point='0' revmsg='true'/>
		<image id='TestWndChild_63' image='1806000063' x='10' y='197' w='713' h='31' param='5' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>
		<image id='TestWndChild_64' image='1806000051' x='26' y='203' w='80' h='20' check_point='0' revmsg='true'/>
		<image id='TestWndChild_75' image='1806000063' x='10' y='228' w='713' h='31' param='6' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>
		<image id='TestWndChild_76' image='1806000055' x='23' y='234' w='84' h='20' check_point='0' revmsg='true'/>
		<image id='TestWndChild_87' image='1806000063' x='10' y='259' w='713' h='31' param='7' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>
		<image id='TestWndChild_88' image='1806000053' x='24' y='264' w='84' h='20' check_point='0' revmsg='true'/>
		<image id='TestWndChild_99' image='1806000063' x='10' y='290' w='713' h='31' param='8' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>
		<image id='TestWndChild_100' image='1806000054' x='24' y='296' w='84' h='20' check_point='0' revmsg='true'/>
		<image id='TestWndChild_101' image='1806000063' x='10' y='321' w='713' h='31' param='9' OnMouseIn='VIPWnd.inWnd1' check_point='0' revmsg='true'/>

		<image id='m_in1' image='1806000064' x='10' y='73' w='713' h='31' param='1' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>
		<image id='m_in2' image='1806000064' x='10' y='104' w='713' h='31' param='2' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>
		<image id='m_in3' image='1806000064' x='10' y='135' w='713' h='31' param='3' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>
		<image id='m_in4' image='1806000064' x='10' y='166' w='713' h='31' param='4' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>
		<image id='m_in5' image='1806000064' x='10' y='197' w='713' h='31' param='5' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>
		<image id='m_in6' image='1806000064' x='10' y='228' w='713' h='31' param='6' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>
		<image id='m_in7' image='1806000064' x='10' y='259' w='713' h='31' param='7' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>
		<image id='m_in8' image='1806000064' x='10' y='290' w='713' h='31' param='8' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>
		<image id='m_in9' image='1806000064' x='10' y='321' w='713' h='31' param='9' OnMouseOut='VIPWnd.OutWnd1' check_point='0' visible='false' revmsg='true'/>
		<image id='TestWndChild_3' image='1806000062' x='10' y='39' w='713' h='35' check_point='0' revmsg='true'/>
		<image id='TestWndChild_4' image='1806000037' x='38' y='44' w='58' h='22' check_point='0' revmsg='true'/>

		<image id='vip1' image='1806000038' x='135' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='12次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='2次' font='system'/>
		<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP1' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='双 倍\n1小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP1' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='1次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='3' y='242' w='40' h='35' text='30次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='66' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>
		<image id='vip2' image='1806000039' x='194' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='12次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='2次' font='system'/>
		<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP2' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='双 倍\n2小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP2' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='2次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='3' y='242' w='40' h='35' text='50次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='145' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>
		<image id='vip3' image='1806000040' x='256' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='14次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='2次' font='system'/>
		<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP3' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='双 倍\n3小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP3' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='3次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='3' y='242' w='40' h='35' text='70次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='237' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>
		<image id='vip4' image='1806000041' x='316' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='14次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='true'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='3次' font='system'/>
		<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP4' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='双 倍\n4小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP4' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='4次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='1' y='242' w='40' h='35' text='100次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='343' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>
		<image id='vip5' image='1806000042' x='376' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='14次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='3次' font='system'/>
		<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP5' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='三 倍\n1小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP5' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='5次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='1' y='242' w='40' h='35' text='150次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='462' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>
		<image id='vip6' image='1806000043' x='436' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='16次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='true'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='3次' font='system'/>
		<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP6' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='三 倍\n2小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP6' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='6次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='1' y='242' w='40' h='35' text='200次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='601' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>
		<image id='vip7' image='1806000044' x='494' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='16次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='3次' font='system'/>
		<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP7' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='三 倍\n3小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP7' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='7次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='1' y='242' w='40' h='35' text='300次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='760' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>
		<image id='vip8' image='1806000045' x='555' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='16次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='3次' font='system'/>
		<edit id='count' x='3' y='118' w='38' h='35' text='VIP8' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP8' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='四 倍\n1小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP8' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='8次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='1' y='242' w='40' h='35' text='400次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='938' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>
		<image id='vip9' image='1806000046' x='615' y='47' w='36' h='18' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='16次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='3次' font='system'/>
		<edit id='mapName' x='3' y='118' w='38' h='35' text='VIP9' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='四 倍\n2小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP9' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='9次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='1' y='242' w='40' h='35' text='500次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='1137' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>
		<image id='vip10' image='1806000047' x='675' y='48' w='44' h='17' check_point='0' enable='false' revmsg='false'>
		<edit id='marsName' x='3' y='24' w='38' h='35' text='16次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<image id='img1' image='1806000058' x='0' y='58' w='38' h='30' check_point='0' enable='false' revmsg='false'/>
		<edit id='count' x='4' y='89' w='38' h='35' revmsg='true' text_color='#FFCC00' text='3次' font='system'/>
		<edit id='marsName' x='3' y='118' w='38' h='35' text='至尊' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='expBuff' x='1' y='148' w='55' h='35' text='四 倍\n3小时' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='vipBag' x='3' y='181' w='40' h='35' text='VIP10' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='212' w='40' h='35' text='10次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='goldTimes' x='1' y='242' w='40' h='35' text='600次' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		<edit id='freeTimes' x='3' y='273' w='40' h='35' text='1361' revmsg='false' enable='false' text_color='#FFCC00' font='system'/>
		</image>


		<image id='TestWndChild_102' image='1806000052' x='24' y='327' w='80' h='20' check_point='0' revmsg='true'/>
		</wnd>


		<button id='wndbtn1' image='1806000069' x='269' y='199' w='144' h='39' param='1' OnLButtonUp='VIPWnd.updataPageBtn' revmsg='true' text_color='#C2B6A0'/>
		<button id='wndbtn2' image='1806000073' x='408' y='199' w='144' h='39' param='2' OnLButtonUp='VIPWnd.updataPageBtn' revmsg='true' text_color='#C2B6A0'/>
		</dialog>
		</form>";
		
		var dw_introData = [
			[1,null,null], [2,null,null], [3,null,null], [4,null,null], [5,null,null], [6,null,null], [7,null,null], [8,null,null], [9,null,null], [10,null,null]
		];

		var playerL = 0;
		var tab = {};
		var vipLvl = 1;
		var getexp = 0;
		var dw_introVipLvl = vipLvl;
		var l_selectHandle = 0;
		var BuffFlag = 0;
		var VIPlevel = 0;
		var rewardFlag = 0;
		var WndH = 0;
		
		public function VIPWnd()
		{
			main();
		}
		function main()
		{
			CL.GenFormByStringCacheSc(null,"VIPWnd",ui);
		}
		function UIInit(h)
		{
			WndH = h;
			var _t = ["text1", "howMuchToNextVipEdit", "vip_lv", "vipAmount"];
			var handle = 0;
			for(var i = 0; i<_t.length;i++)
			{
				handle = GetWindow(h, _t[i]);
				if(handle != 0)
				{
					GUI.EditSetBold(handle, true);
				}
			}
			handle = GetWindow(h, "rechargeBtnEffect");
			if(handle != 0)
			{
				GUI.ImageSetTransfrom(handle, 8800, 10000,0);
			}
			UI.Lua_SubmitForm("Vip表单", "main", "");
		}
		function Vip_updata(data,ta)
		{
			playerL = data[1];
			tab = ta;
			if(data[1] == 0)
			{
				vipLvl = 1;
			}else{
				vipLvl = data[1];
			}
			for(var i = tab.length; i>0;i--)
			{
				if(0 == tab[i])
				{
					rewardFlag = i;
					break;
				}
			}
			if(0 != rewardFlag)
			{
				dw_introVipLvl = rewardFlag;
			}else{
				dw_introVipLvl = vipLvl;
			}
			
			var vipLvlImage = GUI.WndFindChildM(WndH, "nowLevel");
			UI.Lua_Plus("1806000004",tostring(vipLvl));
			if(data[1] == 0)
			{
				GUI.WndSetImageID(vipLvlImage, 1806000004);
			}else if(data[1] == 10)
			{
				GUI.WndSetImageID(vipLvlImage, 1806000005);
				var vipLvlImage1 = GUI.WndFindChildM(WndH, "nowLevel1");
				if(vipLvlImage1 != 0)
				{
					GUI.WndSetVisible(vipLvlImage1, true);
				}
			}else{
				GUI.WndSetImageID(vipLvlImage, tonumber(LuaRet));
			}
			var h1 = GUI.WndFindChildM(WndH, "howMuchToNextVipEdit");
			var h2 = GUI.WndFindChildM(WndH, "vip_lv");
			var h3 = GUI.WndFindChildM(WndH, "text1");
			var pbh = 0;
			if(data[1] < 10)
			{
				var x = data[3] - data[2];
				if(h1 != 0)
				{
					GUI.EditSetTextM(h1, ""+x);
				}
				if(h2 != 0)
				{
					GUI.EditSetTextM(h2, "VIP"+(data[1]+1));
				}
				pbh = GetWindow(WndH, "progressBar");
				if(pbh != 0)
				{
					GUI.ImageSetTransfrom(pbh,(tonumber(data[2])/tonumber(data[3]))*10000,10000,0);
					GUI.WndSetVisible(pbh, true);
				}
				var moneyEdit = GUI.WndFindChildM(WndH, "moneyEdit");
				if(moneyEdit != 0)
				{
					GUI.EditSetTextM(moneyEdit, data[2]+"/"+data[3]);
				}
			}else{
				GUI.EditSetTextM(h3, "已到顶级");
				GUI.WndSetPosM(h3, 385, 109);
				GUI.EditSetTextColor(h3, MakeARGB(255, 255, 204, 0));
				pbh = GetWindow(WndH, "progressBar");
				if(pbh != 0)
				{
					GUI.WndSetVisible(pbh,true);
				}
			}
			BuffFlag = data[5];
			VIPlevel = data[6];
			var vipAmount = GUI.WndFindChildM(WndH, "vipAmount");
			GUI.EditSetTextM(vipAmount, ""+data[4]);
			for(var i = 0; i<dw_introData.length;i++)
			{
				dw_introData[i][2] = data["item"][i+1];
				dw_introData[i][1] = data["buff_img"][i+1]	;	
			}
			getexp = data[5];
			var _btn = GUI.WndFindChildM(WndH, "wndbtn1");
			updataPageBtn(_btn);
		}

		function updataPageBtn(h)
		{
			var handle1 = GetWindow(WndH, "wndbtn1Detail,upPageBtn");
			if(dw_introVipLvl == 1)
			{
				if(handle1 !=0)
				{
					GUI.WndSetEnableM(handle1, false);
				}
			}else{
				if(handle1 != 0)
				{
					GUI.WndSetEnableM(handle1, true);
				}
			}
			var handle1 = GetWindow(WndH, "wndbtn1Detail,downPageBtn");
			if(dw_introVipLvl == (vipLvl + 1))
			{
				if(handle1 !=0)
				{
					GUI.WndSetEnableM(handle1, false);
				}
			}else{
				if(handle1 != 0)
				{
					GUI.WndSetEnableM(handle1, true);
				}
			}
			if(dw_introVipLvl == 10)
			{
				if(handle1 !=0)
				{
					GUI.WndSetEnableM(handle1, false);
				}
			}
			var btnS = ["wndbtn1", "wndbtn2"];
			var uih = 0;
			var index = 0;
			for(var i = 0;i<btnS.length;i++)
			{
				uih = GetWindow(WndH, btnS[i]);
				if(uih == h)
				{
					GUI.ButtonSetIsActivePageBtn(uih, true);
					uih = GetWindow(WndH, "wndbtn"+(i+1)+"Detail");
					if(uih != 0)
					{
						GUI.WndSetVisible(uih, true);
					}
				}else{
					GUI.ButtonSetIsActivePageBtn(uih, false);
					uih = GetWindow(WndH, "wndbtn"+(i+1)+"Detail");
					if(uih != 0)
					{
						GUI.WndSetVisible(uih, false);
					}
				}
			}
			showDetailWnd();
		}

		function showDetailWnd()
		{
			var uih = 0;
			uih = GetWindow(WndH, "wndbtn1Detail,getEXPbuff");
			if(uih != 0)
			{
				GUI.RichEditClear(uih);
				GUI.RichEditAppendString(uih, "#SELECT#领取VIP"+vipLvl+"经验BUFF#SELECTEND#");
				if((tonumber(vipLvl) == tonumber(dw_introVipLvl)) && getexp == 0)
				{
					GUI.WndSetVisible(uih,true);
					if(VIPlevel > 0)
					{
						if(BuffFlag == 0)
						{
							addEffectToGetEXPbuff();
						}
					}
				}else{
					GUI.WndSetVisible(uih,false);
					delEffectToGetEXPbuff();
				}
			}
			uih = GetWindow(WndH, "wndbtn1Detail,getBuffFlag");
			if(uih != 0)
			{
				if(getexp == 0)
				{
					GUI.WndSetVisible(uih, false) ;
				}else{
					if(tonumber(vipLvl) == tonumber(dw_introVipLvl))
					{
						GUI.WndSetVisible(uih, true);
					}else{
						GUI.WndSetVisible(uih, false) ;
					}
				}
			}
			uih = GetWindow(WndH, "wndbtn1Detail,getRewardBtn");
			if(uih != 0)
			{
				if(tonumber(playerL) >= tonumber(dw_introVipLvl))
				{
					if(tab[dw_introVipLvl] == 0)
					{
						GUI.WndSetVisible(uih,true);
						WndAddEffect(WndH, "wndbtn1Detail, getRewardBtn", 3020100700, -13, -8, 100, 0);
					}else{
						GUI.WndSetVisible(uih,false);
					}
				}else{
					GUI.WndSetVisible(uih,false);
				}
			}
			var _img = 0;
			for(var i = 1; i < 4; i++)
			{
				uih = GetWindow(WndH, "wndbtn1Detail,dp"+i);
				if(uih != 0)
				{
					_img = GetWindow(uih, "dp"+i+"Img");
					if(_img != 0)
					{
						GUI.WndSetImageID(_img, dw_introData[dw_introVipLvl][1][i]);
					}
				}
			}
			uih = GetWindow(WndH, "wndbtn1Detail,displayLevel");
			if(uih != 0)
			{
				if(dw_introVipLvl < 10)
				{
					GUI.WndSetImageID(uih, tonumber(CL.Plus("1806000015", tostring(dw_introVipLvl))));
					GUI.WndSetPosM(uih, 394, 236);
					var uih2 = GetWindow(WndH, "wndbtn1Detail,displayLevel2");
					if(uih2 != 0)
					{
						GUI.WndSetVisible(uih2,false);
					}
				}else{
					GUI.WndSetImageID(uih, 1806000016);
					GUI.WndSetPosM(uih, 383, 236);
					var uih2 = GetWindow(WndH, "wndbtn1Detail,displayLevel2");
					if(uih2 != 0)
					{
						GUI.WndSetVisible(uih2,true);
					}
					uih2 = GetWindow(WndH, "wndbtn1Detail,vipImage2");
					if(uih2 != 0)
					{
						GUI.WndSetPosM(uih2, 328, 237);
					}
				}
			}
			uih = GetWindow(WndH, "wndbtn1Detail,nextVipLevel");
			if(uih != 0)
			{
				if(dw_introVipLvl < 10)
				{
					GUI.WndSetImageID(uih, tonumber(CL.Plus("1806000026", tostring(dw_introVipLvl))));
					GUI.WndSetPosM(uih, 105, 305);
					var uih2 = GetWindow(WndH, "wndbtn1Detail,nextVipLevel2");
					if(uih2 != 0)
					{
						GUI.WndSetVisible(uih2,false);
					}
				}else{
					GUI.WndSetImageID(uih, 1806000027);
					GUI.WndSetPosM(uih, 99, 305);
					var uih2 = GetWindow(WndH, "wndbtn1Detail,nextVipLevel2");
					if(uih2 != 0)
					{
						GUI.WndSetVisible(uih2,true);
					}
					uih2 = GetWindow(WndH, "wndbtn1Detail,textImage2");
					if(uih2 != 0)
					{
						GUI.WndSetPosM(uih2, 90, 305);
					}
				}
			}
			for(var i = 1;i<7;i++)
			{
				uih = GetWindow(WndH, "wndbtn1Detail,item"+i);
				if(uih != 0)
				{
					RDItemCtrlSetGUIDataByKeyName(uih, dw_introData[dw_introVipLvl-1][2][i][1], dw_introData[dw_introVipLvl-1][2][i][2], true);
				}
				var Temp = CL.GetItemTemplateHandleByKeyName(dw_introData[dw_introVipLvl-1][2][i][1]);
				if(CL.GetItemTemplatePropByHandle(Temp,ITEM_PROP_COLOR))
				{
					if(LuaRet != null)
					{
						var color =  LuaRet;
						if(color == "PURPLE")
						{
							ImageSetImageID(WndH,"wndbtn1Detail,itemBackc"+i,1891430004);
						}else if(color == "GOLD" || color == "YELLOW")
						{
							ImageSetImageID(WndH,"wndbtn1Detail,itemBackc"+i,1891430001);
						}else if(color == "RED")
						{
							ImageSetImageID(WndH,"wndbtn1Detail,itemBackc"+i,1891430000);
						}else if(color == "GREENG")
						{
							ImageSetImageID(WndH,"wndbtn1Detail,itemBackc"+i,1891430003);
						}else if(color == "WHITE")
						{
							ImageSetImageID(WndH,"wndbtn1Detail,itemBackc"+i,0);
						}
					}
				}
			}
			dbg("要取不到了");
			var h = GetWindow(WndH, "wndbtn1Detail,dp2");
			l_introImage_mouseIn(h);
		}

		function UpPage()
		{
			if(dw_introVipLvl == 1)
			{
				return;
			}
			
			dw_introVipLvl = dw_introVipLvl - 1;
			var _btn = GUI.WndFindChildM(WndH, "wndbtn1");
			updataPageBtn(_btn);
		}

		function DownPage()
		{
			var level = vipLvl + 1;
			if(dw_introVipLvl == level)
			{
				return;
			}
			dw_introVipLvl = dw_introVipLvl + 1;
			var _btn = GUI.WndFindChildM(WndH, "wndbtn1");
			updataPageBtn(_btn);
		}

		function l_introImage_mouseIn(h)
		{
			WndMoveToParentTop(h);
			l_selectHandle = h;
			  
			var parent = GUI.WndGetParentM(h);
			for(var i = 1;i<4;i++)
			{
				var iw = GUI.WndFindWindow(parent, "dp"+i)
				if(iw != 0)
				{
					var param =  GUI.WndGetParam(iw);
					if(param != 0 && iw != l_selectHandle)
					{
						var sx = 92+(i-1)*169+17;
						GUI.WndTween(iw, "<Tween><Frame time='0.3' x='" + sx + "' y='66' scaleX='1' scaleY='1'/></Tween>", "");
						GUI.WndSetParam(iw, 0);
					}else if(param == 0 && iw == l_selectHandle)
					{
						var sx = 92+(i-1)*169-17;
						GUI.WndTween(iw, "<Tween><Frame time='0.3' x='"+sx+"' y='44' scaleX='1.316' scaleY='1.316'/></Tween>", "");
						GUI.WndSetParam(iw, 1);
					}
				}
			}
		}


		function getRewardFlag(ta)
		{
			tab = ta;
			for(var i = tab.length;i>0;i--)
			{
				if(0 == tab[i])
				{
					rewardFlag = i;
					break;
				}
			}
			if(0 != rewardFlag)
			{
				dw_introVipLvl = rewardFlag;
			}else{
				dw_introVipLvl = vipLvl;
			}
			showDetailWnd();
		}

		function inWnd1(_handle)
		{
			var index = GUI.WndGetParam(_handle);
			var handle = GetWindow(null,"VIPWnd,wndbtn2Detail,m_in"+index);
			if(handle != 0)
			{
				GUI.WndSetVisible(handle,true);
			}
		}

		function OutWnd1(_handle)
		{
			var index = GUI.WndGetParam(_handle);
			var handle = GetWindow(null,"VIPWnd,wndbtn2Detail,m_in"+index);
			if(handle != 0)
			{
				GUI.WndSetVisible(handle,false);
			}
		}

		function l_getbag(h)
		{
			UI.Lua_SubmitForm("Vip表单", "GetVipGift", dw_introVipLvl);
		}

		function onRechargeBtn(h)
		{
			CL.OpenUrlUseIEByType(3);
		}

		function PromptMessage(str)
		{
			var color = MakeARGB(255,255,0,0);
			var h = GUI.WndFindWindow(WndH,"wndbtn1Detail,getEXPbuff");
			if(h != 0)
			{
				window_msg_up(h,str,-61,-50,30,color,2);
			}
		}

		function l_getExpUP(uih)
		{
			UI.Lua_SubmitForm("Vip表单", "getExpUP", "");
		}

		function onCloseBtn(h)
		{
			if(WndH != 0)
			{
				GUI.WndClose(WndH);
			}
		}

		function addEffectToGetEXPbuff()
		{
			var uih = 0;
			uih = GetWindow(WndH, "wndbtn1Detail,magic");
			if(uih != 0)
			{
				GUI.ImageSetTransfrom(uih, 9100, 4800,0);
				GUI.WndSetVisible(uih, true);
			}
		}

		function delEffectToGetEXPbuff()
		{
			var uih = 0;
			uih = GetWindow(WndH, "wndbtn1Detail,magic");
			if(uih != 0)
			{
				GUI.WndSetVisible(uih, false);
			}
		}
	}
}