package script
{
	public class ServiceActivities
	{
		var ui = "<form ><dialog id='ServiceActivities' image='1805600001' x='146' y='32' w='846' h='569' revmsg='true'  esc_close='true' drag='true' center='true' OnInit='ServiceActivities.UIInit' OnClose='ServiceActivities.OnCloese'>
				<image id='titleImage' x='400' y='7' w='636' h='349' image='1806400008' revmsg='true'/>
				<button id='button0' image='1804900044' x='40' y='60' w='141' h='46' OnLButtonUp='ServiceActivities.List' param='0' revmsg='true'/>
				<button id='button1' image='1806400108' x='40' y='115' w='141' h='46' OnLButtonUp='ServiceActivities.List' param='1' revmsg='true' visible='false'/>
				<button id='button2' image='1806400031' x='40' y='170' w='141' h='46' OnLButtonUp='ServiceActivities.List' param='2' revmsg='true' visible='false'/>
				<button id='button3' image='1806400035' x='40' y='225' w='141' h='46' OnLButtonUp='ServiceActivities.List' param='3' revmsg='true' visible='false'/>
				<button id='button4' image='1806400039' x='40' y='280' w='141' h='46' OnLButtonUp='ServiceActivities.List' param='4' revmsg='true' visible='false'/>
				<button id='button5' image='1806400043' x='40' y='335' w='141' h='46' OnLButtonUp='ServiceActivities.List' param='5' revmsg='true' visible='false'/>
				<button id='button6' image='1806400047' x='40' y='390' w='141' h='46' OnLButtonUp='ServiceActivities.List' param='6' revmsg='true' visible='false'/>
				<button id='button7' image='1806400051' x='40' y='445' w='141' h='46' OnLButtonUp='ServiceActivities.List' param='7' revmsg='true' visible='false'/>
				
				<image id='image1' image='1805600048' x='151' y='114' w='28' h='42' check_point='0' revmsg='true' enable='false' visible='false'/>
				<image id='image2' image='1805600048' x='151' y='169' w='28' h='42' check_point='0' revmsg='true' enable='false' visible='false'/>
				<image id='image3' image='1805600048' x='151' y='224' w='28' h='42' check_point='0' revmsg='true' enable='false' visible='false'/>
				<image id='image4' image='1805600048' x='151' y='279' w='28' h='42' check_point='0' revmsg='true' enable='false' visible='false'/>
				<image id='image5' image='1805600048' x='151' y='334' w='28' h='42' check_point='0' revmsg='true' enable='false' visible='false'/>
				<image id='image6' image='1805600048' x='151' y='389' w='28' h='42' check_point='0' revmsg='true' enable='false' visible='false'/>
				
				<button id='closeBtn' image='1805900080' x='788' y='10' w='34' h='38' revmsg='true' OnLButtonUp='ServiceActivities.closed' text_color='#C2B6A0'/>	
				<wnd id='buttonWin0'  x='181' y='60' w='630' h='490' revmsg='true' visible='true'>
					<image id='BackImage' x='0' y='137' w='636' h='349' image='1803000001' revmsg='true'/>
					<image id='GiftBoxImg' x='0' y='185' w='278' h='267' image='1803000031' enable='false'/>
					<button id='GiftBtn1' x='0' y='0' w='157' h='144' param='1' image='1804900007' revmsg='true' OnLButtonClick='ServiceActivities.selectGift'/>
					<button id='GiftBtn2' x='159' y='0' w='157' h='144' param='2' image='1804900011' revmsg='true' OnLButtonClick='ServiceActivities.selectGift'/>
					<button id='GiftBtn3' x='318' y='0' w='157' h='144' param='3' image='1804900015' revmsg='true' OnLButtonClick='ServiceActivities.selectGift'/>
					<button id='GiftBtn4' x='477' y='0' w='157' h='144' param='4' image='1804900019' revmsg='true' OnLButtonClick='ServiceActivities.selectGift'/>
					<image id='GiftEditBackImg1' x='0' y='105' w='148' h='33' image='1804900032' enable='false'/>
					<image id='GiftEditBackImg2' x='159' y='105' w='148' h='33' image='1804900032' enable='false'/>
					<image id='GiftEditBackImg3' x='318' y='105' w='148' h='33' image='1804900032' enable='false'/>
					<image id='GiftEditBackImg4' x='477' y='105' w='148' h='33' image='1804900032' enable='false'/>
					<image id='GiftEditImg1' x='50' y='111' w='115' h='27' image='1804900027' enable='false'/>
					<image id='GiftEditImg2' x='211' y='111' w='115' h='27' image='1804900028' enable='false'/>
					<image id='GiftEditImg3' x='370' y='111' w='115' h='27' image='1804900029' enable='false'/>
					<image id='GiftEditImg4' x='525' y='111' w='115' h='27' image='1804900030' enable='false'/>
					<image id='GiftImage' x='240' y='185' w='361' h='60' image='1803000002' revmsg='true'/>
					<edit id='InfoEdit' x='277' y='199' w='230' h='16' revmsg='true' text_color='#CBC190' text='花费          即可获得'/>
					<edit id='costEdit' x='302' y='199' w='70' h='16' revmsg='true' align='center' text_color='#FFFF00' text='88888元宝'/>
					<edit id='GiftNameEdit' x='420' y='199' w='72' h='16' revmsg='true' text_color='#FFFF00' text='无敌礼包'/>
					<button id='GetRewardsBtn' enable='false' x='366' y='406' w='134' h='59' image='1803000003' revmsg='true' OnLButtonClick='ServiceActivities.award'/>
					
					<image id='item_back11' x='334' y='260' w='53' h='53' image='1800000384' revmsg='false' enable='false'/>
					<image id='item_back12' x='335' y='261' image='1891430002' w='53' h='53' enable='true' revmsg='true'/>
					<itemctrl id='ItemCell1' x='338' y='264' use_back='-1' w='56' h='56' enable='true' revmsg='true'/>
					
					<image id='item_back21' x='404' y='260' image='1800000384' w='53' h='53' enable='true' revmsg='true'/>
					<image id='item_back22' x='405' y='261' image='1891430002' w='53' h='53' enable='true' revmsg='true'/>
					<itemctrl id='ItemCell2' x='408' y='264' use_back='-1' w='56' h='56' enable='true' revmsg='true'/>
				
					<image id='item_back31' x='474' y='260' image='1800000384' w='53' h='53' enable='true' revmsg='true'/>
					<image id='item_back32' x='475' y='261' image='1891430002' w='53' h='53' enable='true' revmsg='true'/>
					<itemctrl id='ItemCell3' x='478' y='264' use_back='-1' w='56' h='56' enable='true' revmsg='true'/>
					
					<image id='item_back41' x='298' y='331' image='1800000384' w='53' h='53' enable='true' revmsg='true'/>
					<image id='item_back42' x='299' y='332' image='1891430002' w='53' h='53' enable='true' revmsg='true'/>
					<itemctrl id='ItemCell4' x='302' y='335' use_back='-1' w='56' h='56' enable='true' revmsg='true'/>
					
					<image id='item_back51' x='368' y='331' image='1800000384' w='53' h='53' enable='true' revmsg='true'/>
					<image id='item_back52' x='369' y='332' image='1891430002' w='53' h='53' enable='true' revmsg='true'/>
					<itemctrl id='ItemCell5' x='372' y='335' use_back='-1' w='56' h='56' enable='true' revmsg='true'/>
					
					<image id='item_back61' x='438' y='331' image='1800000384' w='53' h='53' enable='true' revmsg='true'/>
					<image id='item_back62' x='439' y='332' image='1891430002' w='53' h='53' enable='true' revmsg='true'/>
					<itemctrl id='ItemCell6' x='442' y='335' use_back='-1' w='56' h='56' enable='true' revmsg='true'/>
					
					<image id='item_back71' x='508' y='331' image='1800000384' w='53' h='53' enable='true' revmsg='true'/>
					<image id='item_back72' x='509' y='332' image='1891430002' w='53' h='53' enable='true' revmsg='true'/>
					<itemctrl id='ItemCell7' x='512' y='335' use_back='-1' w='56' h='56' enable='true' revmsg='true'/>

					<image id='item_magic1' x='365' y='292' image='3020110000' w='56' h='56' enable='true' revmsg='true'/>
					<image id='item_magic2' x='435' y='292' image='3020110000' w='56' h='56' enable='true' revmsg='true'/>
					<image id='item_magic3' x='505' y='292' image='3020110000' w='56' h='56' enable='true' revmsg='true'/>
					<image id='item_magic4' x='329' y='363' image='3020110000' w='56' h='56' enable='true' revmsg='true'/>
					<image id='item_magic5' x='399' y='363' image='3020110000' w='56' h='56' enable='true' revmsg='true'/>
					<image id='item_magic6' x='469' y='363' image='3020110000' w='56' h='56' enable='true' revmsg='true'/>
					<image id='item_magic7' x='539' y='363' image='3020110000' w='56' h='56' enable='true' revmsg='true'/>
				
				</wnd>
				
				<wnd id='buttonWin1'  x='181' y='58' w='630' h='490' revmsg='true' visible='false'>
					<image id='imageTop' image='1806400055' x='0' y='0' w='630' h='200' revmsg='true'/>
					
					<edit id='TestWndChild_0' x='52' y='73' w='80' h='23' revmsg='true' text_color='#b89e85' text='活动时间：' font='system'/>
					<edit id='duration' x='110' y='73' w='221' h='23' revmsg='true' text_color='#00FF00' text='' font='system'/>
					<edit id='TestWndChild_2' x='52' y='96' w='80' h='23' revmsg='true' text_color='#b89e85' text='活动说明：' font='system'/>
					<edit id='TestWndChild_3' x='110' y='96' w='411' h='23' revmsg='true' text_color='#Dfd6c7' text='活动期间人物满足相应条件即可领取相应奖励' font='system'/>
					<edit id='edit1' x='60' y='172' w='76' h='20' revmsg='true' text_color='#f0b772' text='目标等级' font='system'/>
					<edit id='edit2' x='200' y='172' w='76' h='20' revmsg='true' text_color='#f0b772' text='剩余奖励' font='system'/>
					<edit id='edit3' x='347' y='172' w='76' h='20' revmsg='true' text_color='#f0b772' text='奖励展示' font='system'/>
					<edit id='edit4' x='537' y='172' w='76' h='20' revmsg='true' text_color='#f0b772' text='操作' font='system'/>
					
					<wnd id='buttonWin'  x='7' y='198' w='600' h='285' scroll='true' revmsg='true'>
						<image id='image1' image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
						
						<wnd id='wnd1'  x='0' y='0' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1892100046' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='70级' font='system'/>
							<edit id='last' x='210' y='28' w='66' h='24' revmsg='true' text_color='#C5A400' text='341' font='system'/>
							<image id='image117' x='280' y='12' w='48' h='48' image='1800000147' revmsg='false'/>
							<itemctrl id='itemctrl1' x='280' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='340' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='400' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getReward' param='1' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>   --已领取
							<image id='status1' visible='false' image='1800000294' x='487' y='3' w='94' h='65' revmsg='true'/>   --未达成
						</wnd>	
						
						<image id='image2' image='1806400006' x='0' y='72' w='599' h='72' revmsg='true'/>
						<wnd id='wnd2'  x='0' y='72' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1892100046' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='80级' font='system'/>
							<edit id='last' x='210' y='28' w='66' h='24' revmsg='true' text_color='#C5A400' text='341' font='system'/>
							<itemctrl id='itemctrl1' x='280' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='340' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='400' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getReward' param='2' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>   --已领取
							<image id='status1' visible='false' image='1800000294' x='487' y='3' w='94' h='65' revmsg='true'/>   --未达成
						</wnd>
						<image id='image3' image='1806400006' x='0' y='144' w='599' h='72' revmsg='true'/>
						<wnd id='wnd3'  x='0' y='144' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1892100046' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='转2' font='system'/>
							<edit id='last' x='210' y='28' w='66' h='24' revmsg='true' text_color='#C5A400' text='341' font='system'/>
							<itemctrl id='itemctrl1' x='280' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='340' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='400' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getReward' param='3' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>   --已领取
							<image id='status1' visible='false' image='1800000294' x='487' y='3' w='94' h='65' revmsg='true'/>   --未达成
						</wnd>
						<image id='image4' image='1806400006' x='0' y='216' w='599' h='72' revmsg='true'/>
						<wnd id='wnd4'  x='0' y='216' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1892100046' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='转4' font='system'/>
							<edit id='last' x='210' y='28' w='66' h='24' revmsg='true' text_color='#C5A400' text='341' font='system'/>
							<itemctrl id='itemctrl1' x='280' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='340' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='400' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getReward' param='4' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>   --已领取
							<image id='status1' visible='false' image='1800000294' x='487' y='3' w='94' h='65' revmsg='true'/>   --未达成
						</wnd>
						<image id='image5' image='1806400006' x='0' y='288' w='599' h='72' revmsg='true'/>
						<wnd id='wnd5'  x='0' y='288' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1892100046' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='转6' font='system'/>
							<edit id='last' x='210' y='28' w='66' h='24' revmsg='true' text_color='#C5A400' text='341' font='system'/>
							<itemctrl id='itemctrl1' x='280' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='340' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='400' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getReward' param='5' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>   --已领取
							<image id='status1' visible='false' image='1800000294' x='487' y='3' w='94' h='65' revmsg='true'/>   --未达成
						</wnd>
					</wnd>		
				</wnd>	
				
				
				<wnd id='buttonWin2'  x='181' y='58' w='630' h='490' revmsg='true' visible='false'>
					<image id='imageTop' image='1806400000' x='0' y='0' w='630' h='200' revmsg='true'/>
					
					<edit id='TestWndChild_0' x='52' y='73' w='80' h='23' revmsg='true' text_color='#b89e85' text='活动时间：' font='system'/>
					<edit id='duration' x='110' y='73' w='221' h='23' revmsg='true' text_color='#00FF00' text='' font='system'/>
					<edit id='TestWndChild_2' x='52' y='96' w='80' h='23' revmsg='true' text_color='#b89e85' text='活动说明：' font='system'/>
					<edit id='TestWndChild_3' x='110' y='96' w='411' h='23' revmsg='true' text_color='#Dfd6c7' text='活动期间人物满足相应条件即可领取相应奖励' font='system'/>
					<edit id='edit1' x='70' y='172' w='76' h='20' revmsg='true' text_color='#f0b772' text='目标等级' font='system'/>
					<edit id='edit2' x='297' y='172' w='76' h='20' revmsg='true' text_color='#f0b772' text='奖励展示' font='system'/>
					<edit id='edit3' x='520' y='172' w='76' h='20' revmsg='true' text_color='#f0b772' text='操作' font='system'/>
					
					<wnd id='buttonWin'  x='7' y='198' w='600' h='285' scroll='true' revmsg='true'>
						<image id='image1' image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
						
						<wnd id='wnd1'  x='0' y='0' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1891700002' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='2阶' font='system'/> 
							<itemctrl id='itemctrl1' x='230' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='290' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='350' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status1' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立即提升' OnLButtonUp='ServiceActivities.boost' param='1' text_color='#f5dcbd'/>
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getWing' param='1' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd> 
						
						<image id='image2' image='1806400006' x='0' y='72' w='599' h='72' revmsg='true'/>
						<wnd id='wnd2'  x='0' y='72' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1891700003' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='3阶' font='system'/> 
							<itemctrl id='itemctrl1' x='230' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='290' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='350' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status1' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立即提升' OnLButtonUp='ServiceActivities.boost' param='2' text_color='#f5dcbd'/>
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getWing' param='2' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<image id='image3' image='1806400006' x='0' y='144' w='599' h='72' revmsg='true'/>
						<wnd id='wnd3'  x='0' y='144' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1891700005' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='5阶' font='system'/> 
							<itemctrl id='itemctrl1' x='230' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='290' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='350' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status1' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立即提升' OnLButtonUp='ServiceActivities.boost' param='3' text_color='#f5dcbd'/>
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getWing' param='3' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						
						<image id='image4' image='1806400006' x='0' y='216' w='599' h='72' revmsg='true'/>
						<wnd id='wnd4'  x='0' y='216' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1891700007' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='7阶' font='system'/> 
							<itemctrl id='itemctrl1' x='230' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='290' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='350' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status1' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立即提升' OnLButtonUp='ServiceActivities.boost' param='4' text_color='#f5dcbd'/>
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getWing' param='4' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<image id='image5' image='1806400006' x='0' y='288' w='599' h='72' revmsg='true'/>
						<wnd id='wnd5'  x='0' y='288' w='625' h='285' revmsg='true'>
							<image id='image11' image='1806400007' x='25' y='10' w='167' h='57' revmsg='true'/>
							<image id='image12' image='1891700010' x='30' y='12' w='50' h='50' fitsize='true' revmsg='true'/>
							<edit id='image13' x='97' y='26' w='36' h='24' revmsg='true' text_color='#C5A400' text='9阶' font='system'/> 
							<itemctrl id='itemctrl1' x='230' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl2' x='290' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/>
							<itemctrl id='itemctrl3' x='350' y='12' w='48' h='48' rbtn_use='true' use_back='1800000147' init_item='100绑定元宝' enable='true' revmsg='true'/> 
							<button id='status1' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立即提升' OnLButtonUp='ServiceActivities.boost' param='5' text_color='#f5dcbd'/>
							<button id='status2' visible='false' image='1805600146' x='477' y='18' w='108' h='36' revmsg='true' text='立刻领取' OnLButtonUp='ServiceActivities.getWing' param='5' text_color='#f5dcbd'/>
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
					</wnd>		
				</wnd>	
				
				<wnd id='buttonWin3'  x='181' y='58' w='630' h='490' revmsg='true' visible='false'>
					<image id='imageTop' image='1806400001' x='0' y='0' w='630' h='200' revmsg='true'/>
					<image id='gainChips' image='1806400009' x='38' y='60' w='80' h='22' revmsg='true'/>
					<edit id='chipCount' x='130' y='55' w='100' h='30' revmsg='true' text_color='#ffffff' text='0' font='SIMLI18'/>
					<edit id='TestWndChild_3' x='40' y='90' w='67' h='22' revmsg='true' text_color='#F8B551' text='活动时间：' font='system'/>
					<edit id='duration' x='110' y='90' w='227' h='22' revmsg='true' text_color='#00CC33' text='' font='system'/>
					<edit id='TestWndChild_5' x='40' y='120' w='67' h='22' revmsg='true' text_color='#F8B551' text='活动说明：' font='system'/>
					<edit id='TestWndChild_6' x='110' y='120' w='300' h='22' revmsg='true' text_color='#C2B6A0' text='活动期间人物满足相应条件即可领取相应的奖励' font='system'/>
					<edit id='edit1' x='43' y='173' w='130' h='22' revmsg='true' text_color='#f0b772' text='获得宝石碎片数量' font='system'/>
					<edit id='edit2' x='290' y='173' w='67' h='22' revmsg='true' text_color='#f0b772' text='奖励展示' font='system'/>
					<edit id='edit3' x='520' y='173' w='67' h='22' revmsg='true' text_color='#f0b772' text='操作' font='system'/>
					<wnd id='buttonWin'  x='7' y='198' w='600' h='285' scroll='true' revmsg='true'>
						<wnd id='win1' image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410054' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='1' OnLButtonUp='ServiceActivities.buttonWin3_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win2' image='1806400006' x='0' y='72' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410054' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='2' OnLButtonUp='ServiceActivities.buttonWin3_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win3' image='1806400006' x='0' y='144' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410054' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='3' OnLButtonUp='ServiceActivities.buttonWin3_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win4' image='1806400006' x='0' y='216' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410054' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='4' OnLButtonUp='ServiceActivities.buttonWin3_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win5' image='1806400006' x='0' y='288' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410054' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='5' OnLButtonUp='ServiceActivities.buttonWin3_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win6' image='1806400006' x='0' y='360' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410054' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='6' OnLButtonUp='ServiceActivities.buttonWin3_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win7' image='1806400006' x='0' y='432' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410054' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='88' h='31' revmsg='true' param='7' OnLButtonUp='ServiceActivities.buttonWin3_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
					</wnd>			
				</wnd>			
				<wnd id='buttonWin4'  x='181' y='58' w='630' h='490' revmsg='true' visible='false'>
					<image id='imageTop' image='1806400002' x='0' y='0' w='630' h='200' revmsg='true'/>
					<image id='gainChips' image='1806400009' x='38' y='60' w='80' h='22' revmsg='true'/>
					<edit id='chipCount' x='130' y='55' w='100' h='30' revmsg='true' text_color='#ffffff' text='0' font='SIMLI18'/>
					<edit id='TestWndChild_3' x='40' y='90' w='67' h='22' revmsg='true' text_color='#F8B551' text='活动时间：' font='system'/>
					<edit id='duration' x='110' y='90' w='227' h='22' revmsg='true' text_color='#00CC33' text='' font='system'/>
					<edit id='TestWndChild_5' x='40' y='120' w='67' h='22' revmsg='true' text_color='#F8B551' text='活动说明：' font='system'/>
					<edit id='TestWndChild_6' x='110' y='120' w='300' h='22' revmsg='true' text_color='#C2B6A0' text='活动期间人物满足相应条件即可领取相应的奖励' font='system'/>
					<edit id='edit1' x='43' y='173' w='130' h='22' revmsg='true' text_color='#f0b772' text='获得狂暴之灵数量' font='system'/>
					<edit id='edit2' x='290' y='173' w='90' h='22' revmsg='true' text_color='#f0b772' text='奖励展示' font='system'/>
					<edit id='edit3' x='520' y='173' w='90' h='22' revmsg='true' text_color='#f0b772' text='操作' font='system'/>
					<wnd id='buttonWin'  x='7' y='198' w='600' h='285' scroll='true' revmsg='true'>
						<wnd id='win1' image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410049' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='1' OnLButtonUp='ServiceActivities.buttonWin4_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win2' image='1806400006' x='0' y='72' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410049' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='2' OnLButtonUp='ServiceActivities.buttonWin4_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win3' image='1806400006' x='0' y='144' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410049' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='3' OnLButtonUp='ServiceActivities.buttonWin4_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win4' image='1806400006' x='0' y='216' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410049' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='4' OnLButtonUp='ServiceActivities.buttonWin4_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win5' image='1806400006' x='0' y='288' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410049' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='5' OnLButtonUp='ServiceActivities.buttonWin4_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win6' image='1806400006' x='0' y='360' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410049' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='108' h='36' revmsg='true' param='6' OnLButtonUp='ServiceActivities.buttonWin4_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
						<wnd id='win7' image='1806400006' x='0' y='432' w='599' h='72' revmsg='true'>
							<image id='winBackImage'  image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'/>
							<image id='itemBackImage' image='1806400007' x='26' y='7' w='167' h='57' check_point='0' revmsg='true'/>
							<image id='itemImage'     image='1891410049' x='28' y='0' w='51' h='51' check_point='0' revmsg='true'/>
							<edit  id='chipCountLevel' x='90' y='23' w='64' h='24' revmsg='true' text_color='#F8B551' font='system'/>
							<image id='itemback1'     image='1803900036' x='245' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback2'     image='1803900036' x='305' y='13' w='51' h='51' enable='true' revmsg='true' />
							<image id='itemback3'     image='1803900036' x='365' y='13' w='51' h='51' enable='true' revmsg='true' />
							<itemctrl id='item1' x='245' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item2' x='305' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<itemctrl id='item3' x='365' y='13' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='0'/>
							<button   id='btn' visible='false' image='1805600146' x='485' y='22' w='88' h='31' revmsg='true' param='7' OnLButtonUp='ServiceActivities.buttonWin4_get' text_color='#f5dcbd' text='立即提升' />
							<image id='status3' visible='false' image='1805600121' x='488' y='15' w='83' h='46' revmsg='true'/>
						</wnd>
					</wnd>		
				</wnd>	
				<wnd id='buttonWin5'  x='181' y='58' w='630' h='490' revmsg='true' visible='false'>
					<image id='imageTop' image='1806400003' x='0' y='0' w='630' h='485' revmsg='true'/>
					<edit id='TestWndChild_0' x='52' y='73' w='80' h='23' revmsg='true' text_color='#b89e85' text='活动时间：' font='system'/>
					<edit id='duration' x='110' y='73' w='221' h='23' revmsg='true' text_color='#00FF00' text='' font='system'/>
					<edit id='TestWndChild_2' x='52' y='96' w='80' h='23' revmsg='true' text_color='#b89e85' text='活动说明：' font='system'/>
					<edit id='TestWndChild_3' x='110' y='96' w='411' h='23' revmsg='true' text_color='#Dfd6c7' text='活动期间人物满足相应条件即可领取相应奖励' font='system'/>
					<itemctrl id='TestWndChild_4' x='68' y='327' w='72' h='72' use_back='1805600155' enable='true' revmsg='true' init_item='2000元宝'/>
					<itemctrl id='TestWndsChild_5' x='148' y='327' w='72' h='72' use_back='1805600155' enable='true' revmsg='true' init_item='2000元宝'/>
					<itemctrl id='TestWndChild_6' x='228' y='327' w='72' h='72' use_back='1805600155' enable='true' revmsg='true' init_item='2000元宝'/>
					<itemctrl id='TestWndChild_7' x='308' y='327' w='72' h='72' use_back='1805600155' enable='true' revmsg='true' init_item='2000元宝'/>
					<itemctrl id='TestWndChild_8' x='388' y='327' w='72' h='72' use_back='1805600155' enable='true' revmsg='true' init_item='2000元宝'/>
					<button id='btn' image='1805600146' x='500' y='350' w='88' h='31' revmsg='true' OnLButtonUp='ServiceActivities.getYB' text_color='#f5dcbd' text='立即领取' visible='false'/>
				</wnd>	
				<wnd id='buttonWin6'  x='181' y='58' w='630' h='490' revmsg='true' visible='false'>
					<image id='imageTop' image='1806400004' x='0' y='0' w='630' h='200' revmsg='true'/>
					<button id='phasebtn1' image='1805600150' x='15' y='170' w='141' h='46' text='第一期' param='1' text_color='#C2B6A0' OnLButtonUp='ServiceActivities.SetBtn6State' revmsg='true' />
					<button id='phasebtn2' image='1805600150' x='77' y='170' w='141' h='46' text='第二期' param='2' text_color='#C2B6A0' OnLButtonUp='ServiceActivities.SetBtn6State' revmsg='true' />
					<button id='phasebtn3' image='1805600150' x='139' y='170' w='141' h='46' text='第三期' param='3' text_color='#C2B6A0' OnLButtonUp='ServiceActivities.SetBtn6State' revmsg='true' />
					<image id='textImg1' image='1806400010' x='15' y='84' w='630' h='200' revmsg='true'/>	
					<edit id='myRank' x='60' y='83' w='120' h='25' text='未上榜' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>	
					<edit id='promptEdit1' x='8' y='106' w='120' h='25' text='本日活动剩余时间:' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>	
					<edit id='prompt1Content' x='123' y='106' w='560' h='25' revmsg='true' text_color='#00FF00' font='system'/>	
					<edit id='promptEdit2' x='14' y='128' w='100' h='25' text='本期已消费元宝:' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>	
					<edit id='myConsume' x='110' y='129' w='560' h='25' text='0' revmsg='true' text_color='#00FF00' font='system'/>	
						
					<wnd id='buttonWin'  x='7' y='198' w='600' h='285' scroll='true' revmsg='true'>
						<image id='image1' image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400011' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400013' x='151' y='13' w='599' h='72' revmsg='false'/>
						<edit id='playerName' x='25' y='34' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem1' x='287' y='14' w='48' h='48' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						<image id='awardItemBack2' image='1806000059' x='347' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC2' image='1891430001' x='345' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem2' x='347' y='14' w='48' h='48'  use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						<button id='getAward' image='1805600146' x='450' y='19' w='141' h='46' text='立即领取' param='3' OnLButtonUp='ServiceActivities.GetResumeAward' text_color='#f5dcbd' enable='false' revmsg='true' />
						</image>
						
						<image id='image2' image='1806400006' x='0' y='72' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400011' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400014' x='148' y='13' w='599' h='72' revmsg='false'/>
						<edit id='playerName' x='25' y='34' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem1' x='287' y='14' w='48' h='48' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						<image id='awardItemBack2' image='1806000059' x='347' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC2' image='1891430001' x='345' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem2' x='347' y='14' w='48' h='48'  use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						<button id='getAward' image='1805600146' x='450' y='19' w='141' h='46' text='立即领取' param='3' OnLButtonUp='ServiceActivities.GetResumeAward' text_color='#f5dcbd' enable='false' revmsg='true' />
						</image>
						
						<image id='image3' image='1806400006' x='0' y='144' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400011' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400015' x='148' y='13' w='599' h='72' revmsg='false'/>
						<edit id='playerName' x='25' y='34' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem1' x='287' y='14' w='48' h='48' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						<image id='awardItemBack2' image='1806000059' x='347' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC2' image='1891430001' x='345' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem2' x='347' y='14' w='48' h='48'  use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						<button id='getAward' image='1805600146' x='450' y='19' w='141' h='46' text='立即领取' param='3' OnLButtonUp='ServiceActivities.GetResumeAward' text_color='#f5dcbd' enable='false' revmsg='true' />
						</image>
						
						<image id='image4' image='1806400006' x='0' y='216' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400011' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400018' x='136' y='16' w='599' h='72' revmsg='false'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem' x='287' y='14' w='48' h='48'  use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						<button id='getAward' image='1805600146' x='450' y='19' w='141' h='46' text='立即领取' param='3' OnLButtonUp='ServiceActivities.GetResumeAward' text_color='#f5dcbd' enable='false' revmsg='true' />
						</image>
						
						<image id='image5' image='1806400006' x='0' y='288' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400011' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400019' x='131' y='16' w='599' h='72' revmsg='false'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem' x='287' y='14' w='48' h='48'  use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						<button id='getAward' image='1805600146' x='450' y='19' w='141' h='46' text='立即领取' param='3' OnLButtonUp='ServiceActivities.GetResumeAward' text_color='#f5dcbd' enable='false' revmsg='true' />
						</image>
					</wnd>		
				</wnd>	
				<wnd id='buttonWin7'  x='181' y='58' w='630' h='490' revmsg='true' visible='false'>
					<image id='imageTop' image='1806400005' x='0' y='0' w='630' h='200' revmsg='true'/>
					<image id='textImg1' image='1806400010' x='15' y='56' w='630' h='200' revmsg='true'/>	
					<edit id='myRank' x='60' y='55' w='120' h='25' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>	
					<edit id='promptEdit1' x='8' y='80' w='120' h='25' text='本日活动剩余时间:' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>	
					<edit id='prompt1Content' x='123' y='80' w='560' h='25' revmsg='true' text_color='#00FF00' font='system'/>	
					<edit id='promptEdit2' x='14' y='105' w='60' h='25' text='活动时间:' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>	
					<edit id='prompt2Content' x='74' y='106' w='560' h='25' text='2016年10月10日-2016年10月17日' revmsg='true' text_color='#00FF00' font='system'/>	
					<edit id='promptEdit3' x='14' y='130' w='60' h='25' text='温馨提示:' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>	
					<edit id='prompt3Content' x='74' y='130' w='560' h='25' text='充值满30000元宝即可参加排行，活动结束后，奖励通过邮件发送' revmsg='true' text_color='#FFFFFF' font='system'/>	
					<edit id='daylyRecharge' x='450' y='80' w='600' h='25' text='今日已累计充值       元宝' revmsg='true' text_color='#C2B6A0' font='system'/>	
					<edit id='daylyRechargeNum' x='524' y='80' w='60' h='25' align='center' revmsg='true' text_color='#F0FF00' font='system'/>	
					<button id='rechargeBtn' image='1806000065' x='464' y='105' w='141' h='46' OnLButtonUp='ServiceActivities.OpenRechargePage' revmsg='true' />
					
					<edit id='edit1' x='15' y='170' w='158' h='25' text='奖励条件' align='center' revmsg='true' text_color='#f0b772' font='system'/>
					<edit id='edit2' x='236' y='170' w='158' h='25' text='奖励' align='center' revmsg='true' text_color='#f0b772' font='system'/>
					<edit id='edit3' x='456' y='170' w='158' h='25' text='已充元宝' align='center' revmsg='true' text_color='#f0b772' font='system'/>
					<wnd id='buttonWin'  x='4' y='198' w='600' h='285' scroll='true' revmsg='true'>
						<image id='image1' image='1806400006' x='0' y='0' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400012' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400013' x='121' y='13' w='599' h='72' revmsg='false'/>
						<edit id='playerName' x='19' y='34' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<edit id='topupNum' x='475' y='22' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem' x='287' y='14' w='48' h='48'  use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						</image>	
						
						<image id='image2' image='1806400006' x='0' y='72' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400012' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400014' x='118' y='13' w='599' h='72' revmsg='false'/>
						<edit id='playerName' x='19' y='34' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<edit id='topupNum' x='475' y='22' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem' x='287' y='14' w='48' h='48'  use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						</image>
						
						<image id='image3' image='1806400006' x='0' y='144' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400012' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400015' x='118' y='13' w='599' h='72' revmsg='false'/>
						<edit id='playerName' x='19' y='34' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<edit id='topupNum' x='475' y='22' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem' x='287' y='14' w='48' h='48'  use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						</image>
						
						<image id='image4' image='1806400006' x='0' y='216' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400012' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400016' x='118' y='16' w='599' h='72' revmsg='false'/>
						<edit id='playerName' x='19' y='34' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<edit id='topupNum' x='475' y='22' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem' x='287' y='14' w='48' h='48' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						</image>
						
						<image id='image5' image='1806400006' x='0' y='288' w='599' h='72' revmsg='true'>
						<image id='textImg' image='1806400012' x='15' y='10' w='599' h='72' revmsg='false'/>
						<image id='ranking' image='1806400017' x='118' y='16' w='599' h='72' revmsg='false'/>
						<edit id='playerName' x='19' y='34' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>				
						<edit id='topupNum' x='475' y='22' w='100' h='25' align='center' revmsg='true' text_color='RED' font='system'/>
						<image id='awardItemBack1' image='1806000059' x='287' y='14' w='48' h='48' revmsg='false'/>
						<image id='awardItemBackC1' image='1891430001' x='285' y='12' w='52' h='52' fitsize='true' revmsg='false'/>
						<itemctrl id='awardItem' x='287' y='14' w='48' h='48' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>
						</image>
					</wnd>		
				</wnd>	
			</dialog>
		</form>";
		
		var wings = 0;
		var WndHandle = 0;
		var time_id = 0;
		var restTime = 0;
		var DcWndHandle = 0;
		var myRank = 0;
		var termEnd = false;
		var ServiceActivities_term = 0;
		var requireTerm = 1;
		var clickedBtn = 0;
		var wingVisible = true;
		var getLevelVisible = true;
		var end_tab = {};
		
		public function ServiceActivities()
		{
			main();
		}
		
		function main()
		{
			CL.GenFormByStringCacheSc(null,"ServiceActivities",ui);
		}
		
		function UIInit(_Parent)
		{
			wings = 1;
			WndHandle = _Parent;
			time_id = 0;
			DcWndHandle = 0;     //倒计时句柄
			myRank = 0;          //自己的消费排名
			termEnd = false;     //本期是否结束
			requireTerm = 1;     //想要领奖的期数
			clickedBtn = 0;      //被点击的按钮句柄
			ButtonSetIsActivePageBtn(null,"ServiceActivities,button0",true);
			var handle = 0;
			for(var i = 1; i<6;i++)
			{
				handle = GetWindow(0,"ServiceActivities,buttonWin6,msg"+i);
				if(handle != 0)
				{
					GUI.WndClose(handle);
				}
			}
			
			for(var j = 1; j<6;j++)
			{
				if(j == 5)
				{
					j =7;
				}
				for(var i = 1; i<4;i++)
				{
					handle = GetWindow(_Parent, "buttonWin"+j+",edit"+i);
					if(handle != 0)
					{
						GUI.EditSetBold(handle, true);
					}
				}
			}
			
			handle = GetWindow(_Parent, "buttonWin1,edit4");
			if(handle != 0)
			{
				GUI.EditSetBold(handle, true);
			}
			for(var i = 1; i<8;i++)
			{
				handle = GetWindow(_Parent,"buttonWin6,phasebtn"+i);
				if(handle != 0)
				{
					GUI.ButtonSetStateTextColor(handle,0,MakeARGB(255, 107, 91, 80));
					GUI.ButtonSetStateTextColor(handle,1,MakeARGB(255, 107, 91, 80));
					GUI.ButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98));
					GUI.WndSetTextOffset(handle, 0, 3);
				}
			}
			
			for(var i = 1; i<8;i++)
			{
				handle = GetWindow(_Parent,"buttonWin"+i+", buttonWin");
				if(handle != 0)
				{
					GUI.WndSetScrollBarImage(handle, 1803800026,1803800030, 1803800044, 1803800035);
				}
			}
			
			for(var i = 0; i<8;i++)
			{
				if(i == 0)
				{
					ButtonSetIsActivePageBtn(null,"ServiceActivities,button"+i,true);
					WndSetVisible(null,"ServiceActivities,buttonWin"+i,true);
				}else{
					ButtonSetIsActivePageBtn(null,"ServiceActivities,button"+i,false);
					WndSetVisible(null,"ServiceActivities,buttonWin"+i,false);
				}
			}
			handle = GetWindow(null,"ServiceActivities,buttonWin0");
			SpecialGift_UIInit(handle);
			UI.Lua_SubmitForm("新开服活动","get_image_list", "");
		}
		
		//显示 未结束的 活动入口
		function ImageUpdata(available,data)
		{
			end_tab = data;
			var count = 0;
			var handle = 0;
			var handle_ = 0;
			for(var i in data)
			{
				if(data[i] == 0)
				{
					count = count + 1;
					handle = GetWindow(WndHandle,"button"+i);
					if(handle != 0)
					{
						GUI.WndSetVisible(handle, true);
						GUI.WndSetPosM(handle, 40, 60+55*count);
					}
					var handle_ = GetWindow(WndHandle,"image"+i);
					if(available[i] == 1)
					{
						if(handle_ != 0)
						{
							GUI.WndSetVisible(handle_, true);
							GUI.WndSetPosM(handle_, 151, 59+55*count);
						}
					}else{
						if(handle_ != 0)
						{
							GUI.WndSetVisible(handle_, false);
						}
					}
				}
			}
		}
		
		function OnCloese()
		{
			var handle = 0;
			for(var i = 1; i<6;i++)
			{
				handle = GetWindow(0,"ServiceActivities,buttonWin6,msg"+i);
				if(handle != 0)
				{
					GUI.WndClose(handle);
				}
			}
		}
		//-----------------------------------------------------     特惠礼包
		var SpecialGift_WndHandle = 0;
		var SelectIndex = 0;
		var imagehanle = true;
		function SpecialGift_UIInit(_Handle)
		{
			SpecialGift_WndHandle=_Handle;
			if(imagehanle)
			{
				var handle = 0;
				for(var i = 1; i<8;i++)
				{
					handle = GetWindow(_Handle,"item_magic"+i);
					if(handle != 0)
					{
						GUI.ImageSetDrawCenter(handle,true)	;	
						GUI.ImageSetAnimateEnable(handle, true, 150);
					}
				}
				imagehanle=false;
			}
			UI.Lua_SubmitForm("开服活动","get_gift_info", "1");
		}
		
		function List(_handle)
		{
			var index = GUI.WndGetParam(_handle);
			var Is_true = ButtonGetIsActivePageBtn(_handle);
			if(Is_true)
			{
				return;
			}
			var handle = 0;
			if(index < 6 && index > 0)
			{
				if(end_tab[index] == 1)
				{
					handle = GetWindow(null,"ServiceActivities,button"+index);
					window_msg_update(handle,"活动已结束",60,MakeARGB(255, 255, 0, 0),1.5);
					return;
				}
			}
			
			for(var i = 0; i<8;i++)
			{
				if(index == i)
				{
					WndSetVisible(null,"ServiceActivities,buttonWin"+i,true);
					ButtonSetIsActivePageBtn(null,"ServiceActivities,button"+i,true);
				}else{
					ButtonSetIsActivePageBtn(null,"ServiceActivities,button"+i,false);
					WndSetVisible(null,"ServiceActivities,buttonWin"+i,false);
				}	
			}
			if(index == 0)
			{
				local handle = GetWindow("","ServiceActivities,buttonWin0");
				SpecialGift_UIInit(handle);
			}else if(index == 1)
			{
				UI.Lua_SubmitForm("新开服活动", "fun_level", "");
			}else if(index == 2)
			{
				UI.Lua_SubmitForm("新开服活动", "fun_wing", "");
			}else if(index == 3)
			{
				var handle = GetWindow("","ServiceActivities,buttonWin3");
				buttonWin3_UIInit(handle);
			}else if(index == 4)
			{
				var handle = GetWindow("","ServiceActivities,buttonWin4");
				buttonWin4_UIInit(handle);
			}else if(index == 5)
			{
				UI.Lua_SubmitForm("新开服活动", "getCastle", "");
			}else if(index == 6)
			{
				UI.Lua_SubmitForm("新开服活动", "ConsumeRankMain", "");
			}else if(index == 7)
			{
				UI.Lua_SubmitForm("新开服活动", "RechargeRankMain", "");
			}
		}

		var info = {};

		function showInfo(_Ret)
		{
			info=_Ret;
			var _GUIHandle = 0;
			if(CommonScriptFun.taskOpenActivities != 0)
			{
				_GUIHandle = GUI.WndFindChildM(SpecialGift_WndHandle, "GiftBtn"+ CommonScriptFun.taskOpenActivities);
				CommonScriptFun.taskOpenActivities = 0;
			}else{
				_GUIHandle = GUI.WndFindChildM(SpecialGift_WndHandle, "GiftBtn1");
			}
			if(_GUIHandle != 0)
			{
				selectGift(_GUIHandle);
			}
			if(_Ret[5] >= 3 && _Ret[5] <= 7)
			{
				var handle = GetWindow(0, "ServiceActivities, button7");
				if(handle != 0)
				{
					GUI.WndSetVisible(handle,true);
				}
			}
		}

		function selectGift(_Handle)
		{
			var param = GUI.WndGetParam(_Handle);
			SelectIndex = param;
			var _GUIHandle = 0;
			for(var i = 1; i<5;i++)
			{
				_GUIHandle=GUI.WndFindChildM(SpecialGift_WndHandle, "GiftBtn"+i);
				if(i == param)
				{
					GUI.ButtonSetIsActivePageBtn(_GUIHandle, false);
				}else{
					GUI.ButtonSetIsActivePageBtn(_GUIHandle, true);
				}
			}
			_GUIHandle=GUI.WndFindChildM(SpecialGift_WndHandle, "costEdit");
			GUI.EditSetTextM(_GUIHandle, info[2][param]+"元宝");
			_GUIHandle=GUI.WndFindChildM(SpecialGift_WndHandle, "GiftNameEdit");
			GUI.EditSetTextM(_GUIHandle, info[1][param]);
			_GUIHandle=GUI.WndFindChildM(SpecialGift_WndHandle, "GetRewardsBtn");
			if(info[3][param] != 1)
			{
				GUI.WndSetEnableM(_GUIHandle, true);
			}else{
				GUI.WndSetEnableM(_GUIHandle, false);
			}
			var award={};
			for(var i in info[4][param])
			{
				award = info[4][param][i];
				_GUIHandle = GUI.WndFindChildM(SpecialGift_WndHandle, "ItemCell"+i);
				RDItemCtrlSetGUIDataByKeyName(_GUIHandle, award[1], award[2], award[3]);
				
				var Temp = CL.GetItemTemplateHandleByKeyName(award[1]);
				if(CL.GetItemTemplatePropByHandle(Temp,ITEM_PROP_COLOR))
				{
					if(LuaRet != null)
					{
						var color =  LuaRet;
						var Handle = GUI.WndFindWindow(SpecialGift_WndHandle,"item_back"+i+"2");
						if(color == "PURPLE")
						{
							GUI.WndSetVisible(Handle, true);
							ImageSetImageID(Handle,"item_back"+i+"2",1891430004);
						}else if(color == "GOLD")
						{
							GUI.WndSetVisible(Handle, true);
							ImageSetImageID(Handle,"item_back"+i+"2",1891430001);
						}else if(color == "RED")
						{
							GUI.WndSetVisible(Handle, true);
							ImageSetImageID(Handle,"item_back"+i+"2",1891430000);
						}else if(color == "GREENG")
						{
							GUI.WndSetVisible(Handle, true);
							ImageSetImageID(Handle,"item_back"+i+"2",1891430003);
						}else if(color == "BLUE")
						{
							GUI.WndSetVisible(Handle, true);
							ImageSetImageID(Handle,"item_back"+i+"2",1891430002);
						}else if(color == "WHITE")
						{
							GUI.WndSetVisible(Handle, false);
						}
					}
				}
			}
		}

		function award(_Handle)
		{
			var _GUIHandle = GUI.WndFindChildM(SpecialGift_WndHandle, "GetRewardsBtn");
			GUI.WndSetEnableM(_GUIHandle, false);
			UI.Lua_SubmitForm("开服活动","get_gift_award", ""+SelectIndex);
		}

		function awardBack(_State,_Index)
		{
			var _GUIHandle = 0;
			if(_State == 1)
			{
				info[3][_Index] = 1;
				if(_Index == SelectIndex)
				{
					_GUIHandle=GUI.WndFindChildM(SpecialGift_WndHandle, "GetRewardsBtn");
					GUI.WndSetEnableM(_GUIHandle, false);
				}
			}else{
				if(_Index == SelectIndex)
				{
					_GUIHandle=GUI.WndFindChildM(SpecialGift_WndHandle, "GetRewardsBtn");
					GUI.WndSetEnableM(_GUIHandle, true);
				}
			}
		}
		//------------------------------------------------------
		function SetBtn6State(handle)
		{
			var Is_true = ButtonGetIsActivePageBtn(handle);
			if(Is_true)
			{
				return;
			}
			var index = GUI.WndGetParam(handle);
			requireTerm = index;
			var str = "";
			if(index > ServiceActivities_term)
			{
				var value = index - ServiceActivities_term;
				str = GetLeaveTimeString(restTime+(value-1)*8*60*60);
				MsgPrompt(handle, "离活动开启还有"+str);
			}else{
				for(var i = 1; i<4;i++)
				{	
					if(index == i)
					{
						ButtonSetIsActivePageBtn(null,"ServiceActivities,buttonWin6,phasebtn"+i,true);
						if(ServiceActivities_term == index)
						{
							if(restTime > 0)
							{
								termEnd = false;
								str = GetLeaveTimeString(restTime);
								if(DcWndHandle != 0)
								{
									GUI.EditSetTextM(DcWndHandle, str);
								}
							}
						}else{
							termEnd = true;
						}
					}else{
						ButtonSetIsActivePageBtn(null,"ServiceActivities,buttonWin6,phasebtn"+i,false);
					}
				}
				UI.Lua_SubmitForm("新开服活动", "ShowCheckedDetails", tostring(index));
			}
		}
		
		function ShowConsumeChartDetails(individual, data)
		{
			myRank = 0;
			var btnSN = 0;
			var handle = GetWindow(null, "ServiceActivities,buttonWin6,myConsume");
			if(handle != 0)
			{
				GUI.EditSetTextM(handle,""+individual);
			}	
			if(DcWndHandle != 0 && termEnd)
			{
				GUI.EditSetTextM(DcWndHandle, "已结束");
			}
			handle = GetWindow(null, "ServiceActivities,buttonWin6,myRank");
			if(handle != 0)
			{
				GUI.EditSetTextM(handle,"未上榜");
			}
			for(var i = 1; i<6;i++)
			{
				handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",getAward");
				if(handle != 0)
				{
					GUI.WndSetTextColorM(handle, MakeARGB(255, 245, 220, 189));
					GUI.WndSetEnableM(handle, false);
					GUI.WndSetTextM(handle, "立即领取");
				}
			}
			//全区没人花过钱
			if(data == null || data.length == 0)
			{
				for(var i = 1; i<4;i++)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,"虚位以待");
						GUI.EditSetTextColor(handle, MakeARGB(255, 255, 0, 0));
					}
				}
				return;
			}
			
			if(data.length >= 3)
			{
				for(var i = 1; i<4;i++)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,tostring(data[i][1]));
						GUI.EditSetTextColor(handle, MakeARGB(255, 180, 122, 34));
					}
				}
			}else{
				for(var i in data)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,tostring(data[i][1]));
						GUI.EditSetTextColor(handle, MakeARGB(255, 180, 122, 34));
					}
				}
				for(var i = data.length+1; i<4;i++)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,"虚位以待");
						GUI.EditSetTextColor(handle, MakeARGB(255, 255, 0, 0));
					}
				}
			}
			for(var i in data)
			{
				if(data[i][1] != null)
				{
					if(CL.GetPlayerSelfPropBase(ROLE_PROP_ROLENAME))
					{
						if(data[i][1] == LuaRet)
						{
							myRank = i;
							btnSN = i;
						}
					}
				}
			}
			if(btnSN == 4 || btnSN == 5)
			{
				btnSN = 4;
			}else if(btnSN >= 6 &&  btnSN <= 10)
			{
				btnSN = 5;
			}
			handle = GetWindow(null, "ServiceActivities,buttonWin6,myRank");
			if(handle != 0)
			{
				if(myRank != 0)
				{
					GUI.EditSetTextM(handle,"第"+myRank+"名");
				}else{
					GUI.EditSetTextM(handle,"未上榜");
				}
			}
			if(termEnd && myRank != 0)
			{
				handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+btnSN+",getAward");
				if(handle != 0)
				{
					GUI.WndSetTextColorM(handle, MakeARGB(255, 245, 220, 189));
					if(data[myRank][3] == 0 || data[myRank][3] == null)
					{
						GUI.WndSetEnableM(handle, true);
					}else{
						GUI.WndSetEnableM(handle, false);
						GUI.WndSetTextM(handle, "已领取");
					}
				}
			}
		}
		
		function MsgPrompt(handle, str)
		{
			if(handle != 0)
			{
				var color = MakeARGB(255, 255, 0, 0);
				window_msg_up(handle , str, -78, -16, 70, color, 1.5);
			}
		}
		
		function SetItemCtrlBackColor(keyname,handle)
		{
			var Temp = CL.GetItemTemplateHandleByKeyName(keyname);
			if(CL.GetItemTemplatePropByHandle(Temp,ITEM_PROP_COLOR))
			{
				if(LuaRet != null)
				{
					var color =  LuaRet;
					if(color == "PURPLE")
					{
						ImageSetImageID(handle,null,1891430004);
					}else if(color == "GOLD" || color == "YELLOW")
					{
						ImageSetImageID(handle,null,1891430001);
					}else if(color == "RED")
					{
						ImageSetImageID(handle,null,1891430000);
					}else if(color == "GREENG")
					{
						ImageSetImageID(handle,null,1891430003);
					}else if(color == "BLUE")
					{
						ImageSetImageID(handle,null,1891430002);
					}else if(color == "WHITE")
					{
						GUI.WndSetVisible(handle, false);
					}
				}
			}
		}
		//消费排名   buttonWin6
		function ConsumeTop10Data(individal, itemArr, term, rTime, data)
		{
			myRank = 0;
			for(var i = 1; i<4;i++)
			{
				if(i == tonumber(term))
				{
					ButtonSetIsActivePageBtn(null,"ServiceActivities,buttonWin6,phasebtn"+tonumber(term),true);
				}else{
					ButtonSetIsActivePageBtn(null,"ServiceActivities,buttonWin6,phasebtn"+i,false);
				}
			}
			for(var i = 1; i<6;i++)
			{
				var btnH = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",getAward");
				if(btnH != 0)
				{
					GUI.WndSetTextM(btnH, "立即领取");
					GUI.WndSetEnableM(btnH, false);
					GUI.WndSetTextColorM(btnH, MakeARGB(255, 245, 220, 189));
				}
			}
			ServiceActivities_term = tonumber(term);
			requireTerm = tonumber(term);
			DcWndHandle = GetWindow(WndHandle, "buttonWin6,prompt1Content");
			restTime = tonumber(rTime);
			var str = GetLeaveTimeString(restTime);
			if(DcWndHandle != 0)
			{
				GUI.EditSetTextM(DcWndHandle, str);
			}
			if(time_id == 0 && restTime > 0)
			{
				time_id = tonumber(GUI.WndAddTimerBrief(WndHandle,1000,"ServiceActivities.OnCountDown"));
				GUI.WndRegistScript(WndHandle, RDWndBaseCL_wnd_close, "ServiceActivities.cleartime");
			}
			if(restTime <= 0)
			{
				termEnd = true;
				if(DcWndHandle != 0)
				{
					GUI.EditSetTextM(DcWndHandle, "已结束");
				}
			}
			var handle = 0;
			var h = 0;
			var btnSN = 0;
			for(var i = 1; i<4;i++)
			{
				handle = GetWindow(WndHandle, "buttonWin6,buttonWin,image"+i+",awardItem1");
				if(handle != 0)
				{
				    //物品框填充
					RDItemCtrlSetGUIDataByKeyName(handle, itemArr[i][1][1], itemArr[i][1][2], false);
				}
				h = GetWindow(WndHandle, "buttonWin6,buttonWin,image"+i+",awardItemBackC1");
				if(h != 0)
				{
					SetItemCtrlBackColor(itemArr[i][1][1],h);
				}
				handle = GetWindow(WndHandle, "buttonWin6,buttonWin,image"+i+",awardItem2");
				if(handle != 0)
				{
					//物品框填充
					RDItemCtrlSetGUIDataByKeyName(handle, itemArr[i][2][1], itemArr[i][2][2], false);
				}
				h = GetWindow(WndHandle, "buttonWin6,buttonWin,image"+i+",awardItemBackC2");
				if(h != 0)
				{
					SetItemCtrlBackColor(itemArr[i][2][1],h);
				}
			}
			for(var i = 4; i<6;i++)
			{
				handle = GetWindow(WndHandle, "buttonWin6,buttonWin,image"+i+",awardItem");
				if(handle != 0)
				{
					RDItemCtrlSetGUIDataByKeyName(handle, itemArr[i][1], itemArr[i][2], false);
				}
				h = GetWindow(WndHandle, "buttonWin6,buttonWin,image"+i+",awardItemBackC1");
				if(h != 0)
				{
					SetItemCtrlBackColor(itemArr[i][1],h);
				}
			}
			handle = GetWindow(null, "ServiceActivities,buttonWin6,myConsume");
			if(handle != 0)
			{
				GUI.EditSetTextM(handle,""+individal);
			}
			//全区没人花过钱
			if(data == null)
			{
				for(var i = 1; i<4;i++)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,"虚位以待");
					}
				}
				return;
			}
			if(data.length >= 3)
			{
				for(var i = 1; i<4;i++)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,tostring(data[i][1]));
						GUI.EditSetTextColor(handle, MakeARGB(255, 180, 122, 34));
					}
				}
			}else{
				for(var i in data)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,tostring(data[i][1]));
						GUI.EditSetTextColor(handle, MakeARGB(255, 180, 122, 34));
					}
				}
				for(var i = data.length+1; i<4;i++)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,"虚位以待");
						GUI.EditSetTextColor(handle, MakeARGB(255, 255, 0, 0));
					}
				}
			}
			for(var i in data)
			{
				if(data[i][1] != null)
				{
					if(CL.GetPlayerSelfPropBase(ROLE_PROP_ROLENAME))
					{
						if(data[i][1] == LuaRet)
						{
							myRank = i;
							btnSN = i;
						}
					}
				}
			}
			if(btnSN == 4 || btnSN == 5)
			{
				btnSN = 4;
			}else if(btnSN >= 6 &&  btnSN <= 10)
			{
				btnSN = 5;
			}
			handle = GetWindow(null, "ServiceActivities,buttonWin6,myRank");
			if(handle != 0)
			{
				if(myRank != 0)
				{
					GUIEditSetTextM(handle,"第"+myRank+"名");
				}else{
					GUIEditSetTextM(handle,"未上榜");
				}
			}
			if(termEnd && myRank != 0)
			{
				handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+btnSN+",getAward");
				if(handle != 0)
				{				
					if(data[myRank][3] == 0 || data[myRank][3] == null)
					{
						GUI.WndSetEnableM(handle, true);
					}else{
						GUI.WndSetEnableM(handle, false);
						GUI.WndSetTextM(handle, "已领取");
						GUI.WndSetTextColorM(handle, MakeARGB(255, 245, 220, 189));
					}
				}
			}
		}
		//充值排行
		function RechargeTop5Data(individal, itemArr, rTime, durationTime, data)
		{
			termEnd = false;
			var _handle = GetWindow(WndHandle, "buttonWin7,prompt2Content");
			if(_handle != 0)
			{
				GUI.EditSetTextM(_handle, durationTime);
			}
			DcWndHandle = GetWindow(WndHandle, "buttonWin7,prompt1Content");
			restTime = tonumber(rTime);
			var str = GetLeaveTimeString(restTime);
			if(DcWndHandle != 0)
			{
				GUI.EditSetTextM(DcWndHandle, str);
			}	
			
			if(time_id == 0 && restTime > 0)
			{
				time_id = tonumber(GUI.WndAddTimerBrief(WndHandle,1000,"ServiceActivities.OnCountDown"));
				GUI.WndRegistScript(WndHandle, RDWndBaseCL_wnd_close, "ServiceActivities.cleartime");
			}
			if(restTime == 0)
			{
				if(DcWndHandle != 0)
				{
					GUI.EditSetTextM(DcWndHandle, "已结束");
				}
			}
			//---------------------
			var handle = 0;
			//自己的排名
			var mRank = 0;   
			for(var i = 1; i<6;i++)
			{
				handle = GetWindow(WndHandle, "buttonWin7,buttonWin,image"+i+",awardItem");
				if(handle != 0)
				{
					RDItemCtrlSetGUIDataByKeyName(handle, itemArr[i][1], itemArr[i][2], false);
				}
				var h = GetWindow(WndHandle, "buttonWin7,buttonWin,image"+i+",awardItemBackC1");
				if(h != 0)
				{
					SetItemCtrlBackColor(itemArr[i][1],h);
				}
			}
			handle = GetWindow(null, "ServiceActivities,buttonWin7,daylyRechargeNum");
			if(handle != 0)
			{
				GUI.EditSetTextM(handle,""+individal);
			}
			//全区没人充过钱
			if(data == null)
			{
				for(var i = 1; i<6;i++)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin7,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,"虚位以待");
					}
					handle = GetWindow(null, "ServiceActivities,buttonWin7,buttonWin,image"+i+",topupNum");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,"");
					}
				}
				handle = GetWindow(null, "ServiceActivities,buttonWin7,myRank");
				if(handle != 0)
				{
					GUI.EditSetTextM(handle,"未上榜");
				}
				return;
			}
			for(var i in data)
			{
				if(CL.GetPlayerSelfPropBase(ROLE_PROP_ROLENAME))
				{
					if(data[i][1] == LuaRet)
					{
						mRank = i;
					}
				}
				handle = GetWindow(null, "ServiceActivities,buttonWin7,buttonWin,image"+i+",playerName");
				if(handle != 0)
				{
					GUI.EditSetTextM(handle,tostring(data[i][1]));
					GUI.EditSetTextColor(handle, MakeARGB(255, 180, 122, 34));
				}
				handle = GetWindow(null, "ServiceActivities,buttonWin7,buttonWin,image"+i+",topupNum");
				if(handle != 0)
				{
					GUI.EditSetTextM(handle,tostring(data[i][2]));
					GUI.EditSetTextColor(handle, MakeARGB(255, 184, 122, 37));
				}
			}
			if(data.length < 5)
			{
				for(var i = data.length+1; i<6;i++)
				{
					handle = GetWindow(null, "ServiceActivities,buttonWin7,buttonWin,image"+i+",playerName");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,"虚位以待");
						GUI.EditSetTextColor(handle, MakeARGB(255, 255, 0, 0));
					}
					handle = GetWindow(null, "ServiceActivities,buttonWin7,buttonWin,image"+i+",topupNum");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle,"");
						GUI.EditSetTextColor(handle, MakeARGB(255, 255, 0, 0));
					}
				}
			}
			
			handle = GetWindow(null, "ServiceActivities,buttonWin7,myRank");
			if(handle != 0)
			{
				if(mRank != 0)
				{
					GUI.EditSetTextM(handle,"第"+mRank+"名");
				}else{
					GUI.EditSetTextM(handle,"未上榜");
				}
			}	
		}
		
		function OnCountDown(handle,timeid)
		{
			restTime = restTime - 1;
			if(restTime < 0)
			{
				return;
			}
			if(restTime == 0)
			{
				var handle = GetWindow(null, "ServiceActivities,buttonWin6,buttonWin,image"+myRank+",getAward");
				if(handle != 0)
				{
					GUI.WndSetEnableM(handle, true);
				}
			}
			if(termEnd)
			{
				return;
			}
			var str = GetLeaveTimeString(restTime);
			if(DcWndHandle != 0)
			{
				GUI.EditSetTextM(DcWndHandle, str);
			}
		}
		
		function cleartime()
		{
			if(tonumber(time_id) != 0)
			{
				GUI.WndDelTimer(WndHandle, tonumber(time_id));
				time_id = 0;
			}
		}
		
		function GetResumeAward(handle)
		{
			UI.Lua_SubmitForm("新开服活动", "GetTop10ConsumeReward", tostring(requireTerm));
			clickedBtn = handle;
		}
		
		function SetButtonState()
		{
			if(clickedBtn != 0)
			{
				GUI.WndSetTextM(clickedBtn, "已领取");
				GUI.WndSetTextColorM(clickedBtn, MakeARGB(255, 245, 220, 189));
				GUI.WndSetEnableM(clickedBtn, false);
			}
		}
		
		function OpenRechargePage()
		{
			CL.OpenUrlUseIEByType(3);
		}
		
		function closed()
		{
			var handle = GetWindow(null,"ServiceActivities");
			if(handle != 0)
			{
				GUI.WndClose(handle);
			}
		}
		
		function wing(tab_wing,wing_level)
		{
			var handle = GetWindow(null,"ServiceActivities,buttonWin2,duration");
			if(handle!= 0)
			{
				GUI.EditSetTextM(handle,tab_wing[7][6]);
			}
			for(var i = 1; i<6;i++)
			{
				if(wing_level >= tab_wing[6][i])
				{
					if(tab_wing[7][i] == 0)
					{
						WndSetVisible("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status2",true);
						WndAddEffect("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status2", 3020300200, -74, -45, 100, 0);
						WndSetVisible("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status1",false);
						WndSetVisible("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status3",false);
					}else{
						WndSetVisible("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status3",true);
						WndSetVisible("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status1",false);
						WndSetVisible("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status2",false);
					}
				}else{
					WndSetVisible("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status1",true);
					WndSetVisible("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status2",false);
					WndSetVisible("","ServiceActivities,buttonWin2,buttonWin,wnd"+i+",status3",false);
				}
			}
			if(wingVisible)
			{
				for(var i = 1; i<6;i++)
				{
					for(var j = 1; j<4;j++)
					{
						handle = GetWindow(null,"ServiceActivities,buttonWin2,buttonWin,wnd"+i+",itemctrl"+j);
						if(handle != 0)
						{
							if(tonumber(tab_wing[i][j+3]) != 0)
							{
								GUI.WndSetVisible(handle,true);
								RDItemCtrlSetGUIDataPropByKeyName(null,"ServiceActivities,buttonWin2,buttonWin,wnd"+i+",itemctrl"+j, tab_wing[i][j], tab_wing[i][j+3], true);
							}else{
								GUI.WndSetVisible(handle,false);
							}
						}
					}
				}
				wingVisible = false;
			}
		}
		
		function boost()
		{
			UI.Lua_SubmitForm("等级判断表单", "OnOpenWing", "");
		}
		
		function getWing(handle)
		{
			var index = tonumber(WndGetParam(handle));
			UI.Lua_SubmitForm("新开服活动", "getWing", index);
		}
		
		
		function getCastle()
		{
			var handle = GetWindow("","ServiceActivities,buttonWin5,btn");
			if(handle!= 0)
			{
				GUI.WndSetVisible(handle,true);
			}
		}
		
		function Timestr(str)
		{
			var handle = GetWindow("","ServiceActivities,buttonWin5,duration");
			if(handle!= 0)
			{
				GUI.EditSetTextM("","ServiceActivities,buttonWin5,duration",str);
			}
		}
		
		function getYB()
		{
			UI.Lua_SubmitForm("新开服活动", "getYB", "");
		}
		
		function getLevel(tab_level)
		{
			var rein = tonumber(tab_level[3]);
			var level = tonumber(tab_level[4]);
			var handle = GetWindow(null,"ServiceActivities,buttonWin1,duration");
			if(handle!= 0)
			{
				GUI.EditSetTextM(handle,tab_level[6]);
			}
			
			if(rein >= 1 || level >= 70)
			{
				if(tab_level[2][1] == 0)
				{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status2",true);
					WndAddEffect(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status2", 3020300200, -74, -45, 100, 0);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status3",false);
				}else{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status3",true);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status2",false);
				}				
			}else{
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status1",true);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status2",false);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd1,status3",false);
			}
			
			if(rein >= 1 || level >= 80)
			{
				if(tab_level[2][2] == 0)
				{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status2",true);
					WndAddEffect(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status2", 3020300200, -74, -45, 100, 0);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status3",false);
				}else{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status3",true);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status2",false);
				}
			}else{
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status1",true);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status2",false);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd2,status3",false);
			}
			
			if(rein >= 2)
			{
				if(tab_level[2][3] == 0)
				{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status2",true);
					WndAddEffect(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status2", 3020300200, -74, -45, 100, 0);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status3",false);
				}else{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status3",true);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status2",false);
				}
			}else{
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status1",true);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status2",false);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd3,status3",false);
			}
			
			if(rein >= 4)
			{
				if(tab_level[2][4] == 0)
				{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status2",true);
					WndAddEffect(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status2", 3020300200, -74, -45, 100, 0);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status3",false);
				}else{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status3",true);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status2",false);
				}
			}else{
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status1",true);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status2",false);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd4,status3",false);
			}
			
			if(rein >= 6)
			{
				if(tab_level[2][5] == 0)
				{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status2",true);
					WndAddEffect(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status2", 3020300200, -74, -45, 100, 0);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status3",false);
				}else{
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status3",true);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status1",false);
					WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status2",false);
				}
			}else{
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status1",true);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status2",false);
				WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd5,status3",false);
			}
			for(var i = 1; i<6;i++)
			{
				handle =GetWindow(null,"ServiceActivities,buttonWin1,buttonWin,wnd"+i+",last");
				if(handle != 0)
				{
					if(tonumber(tab_level[1][i]) == 0)
					{
						GUI.EditSetTextM(handle, "已领完");
						WndSetVisible(null,"ServiceActivities,buttonWin1,buttonWin,wnd"+ i +",status2",false);
					}else{
						GUI.EditSetTextM(handle, tab_level[1][i]);
					}
				}
				if(getLevelVisible)
				{
					for(var j = 1; j<4;j++)
					{
						handle =GetWindow(null,"ServiceActivities,buttonWin1,buttonWin,wnd"+i+",itemctrl"+j);
						if(handle != 0)
						{
							if(tonumber(tab_level[5][i][j+3]) != 0)
							{
								GUI.WndSetVisible(handle,true);
								RDItemCtrlSetGUIDataPropByKeyName("","ServiceActivities,buttonWin1,buttonWin,wnd"+i+",itemctrl"+j, tab_level[5][i][j], tab_level[5][i][j+3], true);
							}else{
								GUI.WndSetVisible(handle,false);
							}
						}
					}
				}
			}
			getLevelVisible = false;
		}
		
		function getReward(handle)
		{
			var index = tonumber(WndGetParam(handle));
			UI.Lua_SubmitForm("新开服活动", "getReward", index);
		}
		
		//-------------------------------------------------------------------------------------------------------------
		//-----------------------------------------------------宝珠竞技------------------------------------------------
		
		var buttonWin3_WndHandle = 0;
		var buttonWin3_init = false;
		var buttonWin3_level = 0;
		function buttonWin3_UIInit(h)
		{
			if(!GUI.WndGetVisible(h))
			{
				return;
			}
			buttonWin3_WndHandle = h;
			
			UI.Lua_SubmitForm("新开服活动", "buttonWin3_main", "");
		}
		function buttonWin3_updata(award_tb, count, level, str, durationTime)
		{
			var handle = GetWindow(buttonWin3_WndHandle, "duration");
			if(handle != 0)
			{
				GUI.EditSetTextM(handle, durationTime);
			}
			
			buttonWin3_awardTable = award_tb;
			count = tonumber(count);
			
			handle = GetWindow(buttonWin3_WndHandle, "chipCount");
			if(handle != 0)
			{
				GUI.EditSetTextM(handle, ""+count);
			}
			
			if(!buttonWin3_init)
			{
				for(var i = 1; i<8;i++)
				{
					WndSetVisible(buttonWin3_WndHandle, "buttonWin,win"+i+",btn", true);
					handle = GetWindow(buttonWin3_WndHandle, "buttonWin,win"+i+",chipCountLevel");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle, ""+buttonWin3_awardTable[0][i]);
					}
					for(var j = 1; j<4;j++)
					{
						handle = GetWindow(buttonWin3_WndHandle, "buttonWin,win"+i+",item"+j);
						if(handle != 0)
						{
							RDItemCtrlSetGUIDataByKeyName(handle, buttonWin3_awardTable[i][j][1], buttonWin3_awardTable[i][j][2], buttonWin3_awardTable[i][j][3]);
						}	
					}
				}
				buttonWin3_init = true;
			}
			level = tonumber(level);
			buttonWin3_level = level;
			str = tostring(str);
			for(var i = 1; i<8;i++)
			{
				if(i <= level)
				{
					var char = str.substr(i-1, 1);
					handle = GetWindow(buttonWin3_WndHandle, "buttonWin,win"+i+",btn");
					if(handle != 0)
					{
						if(char == '0')
						{
							GUI.WndSetTextM(handle, "领 取 奖 励");
							GUI.WndSetVisible(handle,true);
							handle = GetWindow(buttonWin3_WndHandle, "buttonWin,win"+i+",status3");
							if(handle != 0)
							{
								GUI.WndSetVisible(handle,false);
							}
							WndAddEffect(buttonWin3_WndHandle, "buttonWin,win"+i+",btn", 3020300200, -74, -45, 100, 0);
						}else if(char == '1')
						{
							GUI.WndSetTextM(handle, "已 领 取");
							GUI.WndSetVisible(handle,false);
							handle = GetWindow(buttonWin3_WndHandle, "buttonWin,win"+i+",status3");
							if(handle != 0)
							{
								GUI.WndSetVisible(handle,true);
							}
							WndDelEffect(buttonWin3_WndHandle, "buttonWin,win"+i+",btn");
						}
					}
				}
			}
		}
		
		function buttonWin3_get(handle)
		{
			var index = GUIWndGetParam(handle);
			if(index <= buttonWin3_level)
			{
				UI.Lua_SubmitForm("新开服活动", "buttonWin3_Get", ""+index);
			}else{
				UI.Lua_SubmitForm("等级判断表单", "OnOpenFurnace", "3");
			}
		}
		
		//-------------------------------------------------------------------------------------------------------------
		//-----------------------------------------------------魂珠竞技----------------------------------------------
		var buttonWin4_level = 0;
		var buttonWin4_WndHandle = 0;
		var buttonWin4_init = false;
		
		function buttonWin4_UIInit(h)
		{
			if(!GUI.WndGetVisible(h))
			{
				return;
			}
			buttonWin4_WndHandle = h;
			
			
			UI.Lua_SubmitForm("新开服活动", "buttonWin4_main", "");
		}
	
		function buttonWin4_updata(award_tb, count, level, str, durationTime)
		{
			var handle = GetWindow(buttonWin4_WndHandle, "duration");
			if(handle != 0)
			{
				GUI.EditSetTextM(handle, durationTime);
			}
			
			buttonWin4_awardTable = award_tb;
			count = tonumber(count);
			level = tonumber(level);
			buttonWin4_level = level;
			str = tostring(str);
			handle = GetWindow(buttonWin4_WndHandle, "chipCount");
			if(handle != 0)
			{
				GUI.EditSetTextM(handle, ""+count);
			}
			
			if(!buttonWin4_init)
			{
				for(var i = 1; i<8;i++)
				{
					WndSetVisible(buttonWin4_WndHandle, "buttonWin,win"+i+",btn", true);
					handle = GetWindow(buttonWin4_WndHandle, "buttonWin,win"+i+",chipCountLevel");
					if(handle != 0)
					{
						GUI.EditSetTextM(handle, ""+buttonWin4_awardTable[0][i]);
					}
					for(var j= 1; j<4;j++)					
					{
						handle = GetWindow(buttonWin4_WndHandle, "buttonWin,win"+i+",item"+j);
						if(handle != 0)
						{
							RDItemCtrlSetGUIDataByKeyName(handle, buttonWin4_awardTable[i][j][1], buttonWin4_awardTable[i][j][2], buttonWin4_awardTable[i][j][3]);
						}				
					}
				}
				buttonWin4_init = true;
			}
			for(var i = 1; i<8;i++)
			{
				if(i <= level)
				{
					var char = str.substr(i-1, 1);
					handle = GetWindow(buttonWin4_WndHandle, "buttonWin,win"+i+",btn");
					if(handle != 0)
					{
						if(char == '0')
						{
							GUI.WndSetTextM(handle, "领 取 奖 励");
							GUI.WndSetVisible(handle,true);
							handle = GetWindow(buttonWin4_WndHandle, "buttonWin,win"+i+",status3");
							if(handle != 0)
							{
								GUI.WndSetVisible(handle,false);
							}
							WndAddEffect(buttonWin4_WndHandle, "buttonWin,win"+i+",btn", 3020300200, -74, -45, 100, 0);
						}else if(char == '1')
						{
							GUI.WndSetTextM(handle, "已 领 取");
							GUI.WndSetVisible(handle,false);
							handle = GetWindow(buttonWin4_WndHandle, "buttonWin,win"+i+",status3");
							if(handle != 0)
							{
								GUI.WndSetVisible(handle,true);
							}
							WndDelEffect(buttonWin4_WndHandle, "buttonWin,win"+i+",btn", 3020300200);
						}
					}
				}
			}
		}
		
		function buttonWin4_get(_handle)
		{
			var index = GUI.WndGetParam(_handle);
			if(index <= buttonWin4_level)
			{
				UI.Lua_SubmitForm("新开服活动", "buttonWin4_Get", ""+index);
			}else{
				UI.Lua_SubmitForm("等级判断表单", "OnOpenFurnace", "4");
			}
		}
	}
}