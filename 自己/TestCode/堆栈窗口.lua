<form >
	<dialog id='NewServerGift' image='1805600001' x='146' y='32' w='846' h='569' revmsg='true'  esc_close='true' drag='true' center='true' OnInit='NewServerGift:OnInit'>
		<button id='closeBtn' image='1805900080' x='788' y='10' w='34' h='38' revmsg='true' OnLButtonUp='NewServerGift:OnClose' text_color='#C2B6A0'/>
		<button id="button1" image="1806400112" x="40" y="61" w="141" h="46" OnLButtonUp='NewServerGift:List' param='1' revmsg="true" />
		<button id="button2" image="1806400116" x="40" y="119" w="141" h="46" OnLButtonUp='NewServerGift:List' param='2' revmsg="true" />
		<button id="button3" image="1806400120" x="40" y="178" w="141" h="46" OnLButtonUp='NewServerGift:List' param='3' revmsg="true" />
		<wnd id='NewServerGift1'  x='181' y='58' w='630' h='490' revmsg='true' visible='true' OnVisible='NewServerGift1.UIInit'>
			<image id="backImage" image="1806400056" x="0" y="0" w="630" h="487" revmsg="true"/>
			<image id='TestWndChild_0' image='1806400079' x='51' y='189'  w='29' h='12' check_point='0' revmsg='true'/>
			<image id='TestWndChild_1' image='1806400080' x='112' y='155' w='31' h='12' check_point='0' revmsg='true'/>
			<image id='TestWndChild_2' image='1806400081' x='179' y='121' w='31' h='12' check_point='0' revmsg='true'/>
			<image id='TestWndChild_3' image='1806400082' x='247' y='87'  w='37' h='12' check_point='0' revmsg='true'/>
			<image id='TestWndChild_4' image='1806400083' x='329' y='53'  w='38' h='12' check_point='0' revmsg='true'/>
			<image id='TestWndChild_5' image='1806400067' x='39' y='260' w='60' h='23' check_point='0' revmsg='true'/>
			<image id='TestWndChild_6' image='1806400068' x='100' y='260' w='60' h='23' check_point='0' revmsg='true'/>
			<image id='TestWndChild_7' image='1806400069' x='169' y='260' w='60' h='23' check_point='0' revmsg='true'/>
			<image id='TestWndChild_8' image='1806400070' x='239' y='260' w='60' h='23' check_point='0' revmsg='true'/>
			<image id='TestWndChild_9' image='1806400071' x='322' y='260' w='60' h='23' check_point='0' revmsg='true'/>
			<edit id='TestWndChild_10' x='25' y='285' w='269' h='20' revmsg='true' text_color='#EECC99' text='活动期间达到目标转生等级,即可提取元宝' font='system'/>
			<edit id='TestWndChild_11' x='453' y='285' w='61' h='20' revmsg='true' text_color='#EECC99' text='剩余时间：' font='system'/>
			<edit id='TestWndChild_12' x='518' y='285' w='105' h='20' revmsg='true' text_color='#00ff00' text='1天7小时19分钟' font='system'/>
			<image id='TestWndChild_13' image='1806400075' x='42' y='334' w='282' h='36' check_point='0' revmsg='true'/>
			<image id='TestWndChild_14' image='1806400076' x='42' y='371' w='408' h='42' check_point='0' revmsg='true'/>
			<image id='TestWndChild_15' image='1806400077' x='106' y='414' w='344' h='36' check_point='0' revmsg='true'/>
			<edit id='TestWndChild_17' x='467' y='348' w='110' h='23' revmsg='true' text_color='#C2B6A0' text='完成首冲后方可购买' font='system'/>
			<edit id='TestWndChild_18' x='484' y='374' w='83' h='20' revmsg='true' text_color='#C2B6A0' text='仅剩     份' font='system'/>
			<edit id="TestWndChild_20" x="513" y="373" w="22" h="20" revmsg="true" text_color="#00ff00" text='100' font="system"/>
			<edit id="TestWndChild_19" x="370" y="230" w="56" h="20" revmsg="true" text_color="#EECC99" text="转生等级" font="system"/>
			<button id='charge' image='1806400124' x='460' y='398' w='129' h='52' OnLButtonUp='NewServerGift1.OpenRechagrePage' revmsg='true' />
			<button id='buyFund' image='1805600160' x='460' y='398' visible='false' OnLButtonUp='NewServerGift1.BuyGrowthFund' w='129' h='52' revmsg='true' />
			
		</wnd>	
		<wnd id='NewServerGift2'  x='181' y='58' w='630' h='490' revmsg='true' visible='false' OnVisible='NewServerGift2:UIInit'>
			<image id="backImage" image="1806400057" x="0" y="0" w="630" h="487" revmsg="true"/>
			<image id="editback" image="1806200004" x="430" y="17" w="200" h="22" fitsize='true' revmsg="true"/>
			<edit id='TestWndChild_11' x='453' y='15' w='61' h='20' revmsg='true' text_color='#EECC99' text='剩余时间：' font='system'/>
			<edit id='TestWndChild_12' x='518' y='15' w='105' h='20' revmsg='true' text_color='#00FF00' text='1天7小时19分钟' font='system'/>
			
			<image id="TestWndChild_16" image="1806400107" x="199" y="156" w="46" h="35" check_point="0" revmsg="true"/>
			<image id="TestWndChild_17" image="1806400107" x="253" y="207" w="46" h="35" check_point="0" revmsg="true"/>
			<image id="TestWndChild_18" image="1806400107" x="251" y="280" w="46" h="35" check_point="0" revmsg="true"/>
			<image id="TestWndChild_19" image="1806400107" x="199" y="331" w="46" h="35" check_point="0" revmsg="true"/>
			<image id="TestWndChild_20" image="1806400107" x="128" y="157" w="46" h="35" check_point="0" revmsg="true"/>
			<image id="TestWndChild_21" image="1806400107" x="68" y="207" w="46" h="35" check_point="0" revmsg="true"/>
			<image id="TestWndChild_22" image="1806400107" x="69" y="280" w="46" h="35" check_point="0" revmsg="true"/>
			<image id="TestWndChild_23" image="1806400107" x="128" y="331" w="46" h="35" check_point="0" revmsg="true"/>
			
			<edit id="TestWndChild_24" x="202" y="182" w="40" h="20" revmsg="true" text_color="#ffffff" text="1.15倍" font="system"/>
			<edit id="TestWndChild_25" x="260" y="235" w="40" h="20" revmsg="true" text_color="#ffffff" text="1.2倍" font="system"/>
			<edit id="TestWndChild_26" x="258" y="306" w="40" h="20" revmsg="true" text_color="#ffffff" text="1.25倍" font="system"/>
			<edit id="TestWndChild_27" x="205" y="356" w="40" h="20" revmsg="true" text_color="#ffffff" text="1.35倍" font="system"/>
			<edit id="TestWndChild_28" x="132" y="183" w="40" h="20" revmsg="true" text_color="#ffffff" text="10 倍" font="system"/>
			<edit id="TestWndChild_29" x="74" y="235" w="40" h="20" revmsg="true" text_color="#ffffff" text="3 倍" font="system"/>
			<edit id="TestWndChild_30" x="80" y="304" w="40" h="20" revmsg="true" text_color="#ffffff" text="2 倍" font="system"/>
			<edit id="TestWndChild_31" x="134" y="356" w="40" h="20" revmsg="true" text_color="#ffffff" text="1.5倍" font="system"/>
			
			<image id="arrow" image="1806400105" x="169" y="171" w="34" h="109" check_point="0" revmsg="true"/>
			
			<image id="TestWndChild_32" image="1806400074" x="416" y="130" w="116" h="21" check_point="0" revmsg="true"/>
			<button id="charge" image="1806000065" x="416" y="387" w="127" h="50" revmsg="true" OnLButtonUp="NewServerGift2:Charge" text_color="#C2B6A0"/>
			<edit id="TestWndChild_34" x="416" y="442" w="133" h="22" revmsg="true" text_color="#EECC99" text="充值     元宝即可参与" font="system"/>
			<edit id="TestWndChild_35" x="443" y="444" w="27" h="19" revmsg="true" text_color="#DFBB5A" text="1000" font="system"/>
			<button id='questionMark' image='1800000297' x='20' y='435' w='27' h='30' revmsg='true' text_color='#C2B6A0'/>
			<richedit id="brief" x="49" y="443" w="93" h="28" revmsg="true" text="#SELECT#规则说明#SELECTEND#" font="system"/>
			
			
			<wnd id='list'  x='315' y='160' w='300' h='210' scroll='true' revmsg='true'>
				<wnd id='win1' image='0' x='0' y='0' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="1剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>	
				<wnd id='win2' image='0' x='0' y='20' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="2剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
				<wnd id='win3' image='0' x='0' y='40' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="3剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
				<wnd id='win4' image='0' x='0' y='60' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="4剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
				<wnd id='win5' image='0' x='0' y='80' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="5剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
				<wnd id='win6' image='0' x='0' y='100' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="6剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="20000" align='center' font="system"/>
				</wnd>
				<wnd id='win7' image='0' x='0' y='120' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="7剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="200000" align='center' font="system"/>
				</wnd>
				<wnd id='win8' image='0' x='0' y='140' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="8剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="10000" align='center' font="system"/>
				</wnd>
				<wnd id='win9' image='0' x='0' y='160' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="9剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="1000" align='center' font="system"/>
				</wnd>
				<wnd id='win10' image='0' x='0' y='180' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="10剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
				<wnd id='win11' image='0' x='0' y='200' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="11剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
				<wnd id='win12' image='' x='0' y='220' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="12剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
				<wnd id='win13' image='' x='0' y='240' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="13剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
				<wnd id='win14' image='' x='0' y='260' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="14剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
				<wnd id='win15' image='' x='0' y='280' w='300' h='20' revmsg='true'>
					<edit id="nameEdit"      x="32"  y="0" w="70" h="20" revmsg="true" text_color="#EE8800"  text="15剑封神" align='center' font="system"/>
					<edit id="staticEdit"    x="100"  y="0" w="202" h="20" revmsg="true" text_color="#7C6B5B" text="获得    倍返还,共计         元宝" font="system"/>
					<edit id="multipleEdit"  x="130" y="0" w="25" h="20" revmsg="true" text_color="#FFFF00"  text="10" font="system"/>
					<edit id="ingotEdit"     x="218" y="0" w="55" h="20" revmsg="true" text_color="#FFFF00"  text="2000000" align='center' font="system"/>
				</wnd>
			</wnd>
		</wnd>	
		<wnd id='NewServerGift3'  x='181' y='58' w='630' h='490' revmsg='true' visible='false' OnVisible='NewServerGift3:UIInit'>
			<image id="backImage" image="1806400058" x="0" y="0" w="630" h="487" revmsg="true"/>
			<image id="editback" image="1806200004" x="430" y="17" w="200" h="22" fitsize='true' revmsg="true"/>
			<edit id='TestWndChild_11' x='453' y='15' w='61' h='20' revmsg='true' text_color='#EECC99' text='剩余时间：' font='system'/>
			<edit id='TestWndChild_12' x='518' y='15' w='105' h='20' revmsg='true' text_color='#00FF00' text='1天7小时19分钟' font='system'/>
			
			<image id="TestWndChild_5" image="1806400078" x="112" y="45" w="409" h="66" check_point="0" revmsg="true"/>	
			
			<wnd id="win1" x="100" y="130" w="0" h="0" revmsg="true">
				<image id="background" image="1806400063" x="0" y="0" w="207" h="133" check_point="0" revmsg="true"/>
				<image id="TestWndChild_9" image="1806400066" x="0" y="0" w="60" h="60" check_point="0" revmsg="true"/>
				<edit id="TestWndChild_8" x="39" y="5" w="136" h="22" revmsg="true" text_color="#C2B6A0" font="system"/>
				<image id="TestWndChild_10" image="1806400106" x="20" y="38" w="62" h="62" check_point="0" revmsg="true"/>
				<itemctrl id="item" x="20" y="39" w="62" h="62" use_back='0' rbtn_use="true" enable="true" revmsg="true"/>
				<edit id="originalPrice" x="120" y="34" w="84" h="20" revmsg="true" text_color="#FF8800" text="原价：9999" font="system"/>
				<image id="division" image="1806400104" x="117" y="44" w="74" h="2" revmsg="true"/>
				<edit id="nowPrice" x="120" y="54" w="84" h="20" revmsg="true" text_color="#ffffff" text="特价：9999" font="system"/>
				<button id="TestWndChild_14" image="1806400136" x="123" y="75" w="64" h="25" revmsg="true" text="购买" param="1" OnLButtonUp="NewServerGift3:Buy" text_color="#C2B6A0"/>
				<edit id="TestWndChild_15" x="66" y="102" w="65" h="22" revmsg="true" text_color="#C2B6A0" text="限购次数：" font="system"/>
				<edit id="limitCount" x="130" y="102" w="49" h="22" revmsg="true" text_color="#00ff00" text="" font="system"/>
				<image id="ingot" image="1990040423" x="88" y="45" w="30" h="30" fitsize='true' revmsg="true"/>
			</wnd>
			<wnd id="win2" x="325" y="130" w="0" h="0" revmsg="true">
				<image id="background" image="1806400063" x="0" y="0" w="207" h="133" check_point="0" revmsg="true"/>
				<image id="TestWndChild_9" image="1806400066" x="0" y="0" w="60" h="60" check_point="0" revmsg="true"/>
				<edit id="TestWndChild_8" x="39" y="5" w="136" h="22" revmsg="true" text_color="#C2B6A0" font="system"/>
				<image id="TestWndChild_10" image="1806400106" x="20" y="38" w="62" h="62" check_point="0" revmsg="true"/>
				<itemctrl id="item" x="20" y="39" w="62" h="62" use_back='0' rbtn_use="true" enable="true" revmsg="true"/>
				<edit id="originalPrice" x="120" y="34" w="84" h="20" revmsg="true" text_color="#FF8800" text="原价：9999" font="system"/>
				<image id="division" image="1806400104" x="117" y="44" w="74" h="2" revmsg="true"/>
				<edit id="nowPrice" x="120" y="54" w="84" h="20" revmsg="true" text_color="#ffffff" text="特价：9999" font="system"/>
				<button id="TestWndChild_14" image="1806400136" x="123" y="75" w="64" h="25" revmsg="true" text="购买" param="2" OnLButtonUp="NewServerGift3:Buy" text_color="#C2B6A0"/>
				<edit id="TestWndChild_15" x="66" y="102" w="65" h="22" revmsg="true" text_color="#C2B6A0" text="限购次数：" font="system"/>
				<edit id="limitCount" x="130" y="102" w="49" h="22" revmsg="true" text_color="#00ff00" text="" font="system"/>
				<image id="ingot" image="1990040423" x="88" y="45" w="30" h="30" fitsize='true' revmsg="true"/>
			</wnd>
			<wnd id="win3" x="100" y="280" w="0" h="0" revmsg="true">
				<image id="background" image="1806400063" x="0" y="0" w="207" h="133" check_point="0" revmsg="true"/>
				<image id="priceTag" image="1806400065" x="0" y="0" w="60" h="60" check_point="0" revmsg="true"/>
				<edit id="TestWndChild_8" x="39" y="5" w="136" h="22" revmsg="true" text_color="#C2B6A0" font="system"/>
				<image id="TestWndChild_10" image="1806400106" x="20" y="38" w="62" h="62" check_point="0" revmsg="true"/>
				<itemctrl id="item" x="20" y="39" w="62" h="62" use_back='0' rbtn_use="true" enable="true" revmsg="true"/>
				<edit id="originalPrice" x="120" y="34" w="84" h="20" revmsg="true" text_color="#FF8800" text="原价：9999" font="system"/>
				<image id="division" image="1806400104" x="117" y="44" w="74" h="2" revmsg="true"/>
				<edit id="nowPrice" x="120" y="54" w="84" h="20" revmsg="true" text_color="#ffffff" text="特价：9999" font="system"/>
				<button id="TestWndChild_14" image="1806400136" x="123" y="75" w="64" h="25" revmsg="true" text="购买" param="3" OnLButtonUp="NewServerGift3:Buy" text_color="#C2B6A0"/>
				<edit id="TestWndChild_15" x="66" y="102" w="65" h="22" revmsg="true" text_color="#C2B6A0" text="限购次数：" font="system"/>
				<edit id="limitCount" x="130" y="102" w="49" h="22" revmsg="true" text_color="#00ff00" text="" font="system"/>
				<image id="ingot" image="1990040423" x="88" y="45" w="30" h="30" fitsize='true' revmsg="true"/>
			</wnd>
			<wnd id="win4" x="325" y="280" w="0" h="0" revmsg="true">
				<image id="background" image="1806400063" x="0" y="0" w="207" h="133" check_point="0" revmsg="true"/>
				<image id="priceTag" image="1806400064" x="0" y="0" w="60" h="60" check_point="0" revmsg="true"/>
				<edit id="TestWndChild_8" x="39" y="5" w="136" h="22" revmsg="true" text_color="#C2B6A0" font="system"/>
				<image id="TestWndChild_10" image="1806400106" x="20" y="38" w="62" h="62" check_point="0" revmsg="true"/>
				<itemctrl id="item" x="20" y="39" w="62" h="62" use_back='0' rbtn_use="true" enable="true" revmsg="true"/>
				<edit id="originalPrice" x="120" y="34" w="84" h="20" revmsg="true" text_color="#FF8800" text="原价：9999" font="system"/>
				<image id="division" image="1806400104" x="117" y="44" w="74" h="2" revmsg="true"/>
				<edit id="nowPrice" x="120" y="54" w="84" h="20" revmsg="true" text_color="#ffffff" text="特价：9999" font="system"/>
				<button id="TestWndChild_14" image="1806400136" x="123" y="75" w="64" h="25" revmsg="true" text="购买" param="4" OnLButtonUp="NewServerGift3:Buy" text_color="#C2B6A0"/>
				<edit id="TestWndChild_15" x="66" y="102" w="65" h="22" revmsg="true" text_color="#C2B6A0" text="限购次数：" font="system"/>
				<edit id="limitCount" x="130" y="102" w="49" h="22" revmsg="true" text_color="#00ff00" text="" font="system"/>
				<image id="ingot" image="1990040423" x="88" y="45" w="30" h="30" fitsize='true' revmsg="true"/>
			</wnd>
		</wnd>			
	</dialog>
	<script><![CDATA[
		
		
		NewServerGift = {}
		
		function NewServerGift:OnInit(_parent)
			self._wnd = _parent
			local _handle = GetWindow(_parent, "button1")
			if _handle ~= 0 then 
				ButtonSetIsActivePageBtn(_handle, false)
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
					ButtonSetIsActivePageBtn(btn_handle,"",true)
					WndSetVisible(self._wnd, "NewServerGift"..i,true)
				else
					ButtonSetIsActivePageBtn(btn_handle,"",false)
					WndSetVisible(self._wnd, "NewServerGift"..i,false)
				end	
			end

			msg('setVisible')
		end
		
		function NewServerGift:OnClose()
			GUI:WndClose(self._wnd)
		end
		
		-----------------------------------------------------成长基金---------------------------------
		NewServerGift1 = {}
		NewServerGift1.level = 0
		NewServerGift1.restTime = 0
		NewServerGift1.time_id = 0

		function NewServerGift1.UIInit(_this)
			if not GUIWndGetVisible(_this) then 
				return
			end
			--msg('NewServerGift1:UIInit')
			NewServerGift1._wnd = _this
			NewServerGift1.DcWndHandle = GetWindow(_this, "TestWndChild_12")
			UI:Lua_SubmitForm("开服豪礼表单", "GrowthFundMain", "")
			
		end
		
		function NewServerGift1.updata(data)
			local handle = 0
			--data[1] = 是否充值  data[2] = 是否购买过    data[3] =  {}各个阶段是否领取过1:已领取 0：未领取   data[4] = 玩家转生等级  data[5] = 剩余时间
			
			local hasRecharged = tonumber(data[1])   --是否充值过
			local hasBought = tonumber(data[2])
			local hasGotAwardTb = data[3] --玩家转生等级
			local playerReinLevel = tonumber(data[4])     --玩家转生等级
			NewServerGift1.restTime = data[5]
			str = GetLeaveTimeString(NewServerGift1.restTime)
			if NewServerGift1.DcWndHandle ~= 0 then
				GUIEditSetTextM(NewServerGift1.DcWndHandle, str)
			end

			if NewServerGift1.time_id == 0 and NewServerGift1.restTime > 0 then	
				if GUIWndAddTimerBrief(NewServerGift1._wnd, 1000, "NewServerGift1.OnCountDown") then    --设置定时器
					NewServerGift1.time_id = as3.tolua(LuaRet)
				end
			end
			if NewServerGift1.restTime <= 0 then
				NewServerGift1.termEnd = true
				if NewServerGift1.DcWndHandle ~= 0 then
					GUIEditSetTextM(NewServerGift1.DcWndHandle, "已结束")
				end
			end
			if hasRecharged > 0 then
				handle = GetWindow(NewServerGift1._wnd, "charge")
				if handle ~= 0 then
					GUIWndSetVisible(handle, false)
				end
				handle = GetWindow(NewServerGift1._wnd, "buyFund")
				if handle ~= 0 then
					GUIWndSetVisible(handle, true)
				end
			end
		end
		
		function NewServerGift1.OnCountDown()
			--msg("dc....")
			NewServerGift1.restTime = NewServerGift1.restTime - 1
			if NewServerGift1.restTime < 0 then
				return
			end
			local str = GetLeaveTimeString(NewServerGift1.restTime)
			if NewServerGift1.DcWndHandle ~= 0 then
				GUIEditSetTextM(NewServerGift1.DcWndHandle, str)
			end
		end
		
		function NewServerGift1.OpenRechagrePage()
			CLOpenUrlUseIEByType(3)
		end
		
		function NewServerGift1.BuyGrowthFund()
			UI:Lua_SubmitForm("开服豪礼表单", "BuyGrowthFund", "")
		end
		
		function NewServerGift1.get(handle)
			local index = GUI:WndGetParam(handle)
			if index <= NewServerGift1.level then 
				UI:Lua_SubmitForm("宝珠竞技表单", "Get", ""..index)
			else
				CLOnOpenFurnace()
			end
		end
		
		-----------------------------------------------------幸运转盘---------------------------------
		NewServerGift2 = {}
		NewServerGift2.level = 0
		NewServerGift2.ctrlItemCount = 
		{
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			{{"宝石结晶中", 2, true}, {"玛雅卷轴", 2, true}, {"金砖小", 2, true}},
			
		}
		function NewServerGift2:UIInit(_this)
			if not GUIWndGetVisible(_this) then 
				return
			end
			msg('NewServerGift2:UIInit')
			self._wnd = _this
			local _handle = GetWindow(_this,"brief")
			if _handle ~= 0 then
				GUIWndSetHint(_handle, "<font color='#D58840'>规则说明：\n</font><font color='#B8A085'>1.充值元宝达到不同档次可以获得对应金额的投注机会\n2.最多获得五次的投注机会\n3.每次投注需要元宝\n4.投注后返还转出倍数的投注元宝\n5.投注的元宝不计入任何消费和排行活动</font>")
			end
			
	
			--[[
			for i = 1, 20 do 
				local handle = GetWindow(this, "buttonWin,win"..i..",gainChipCount1")
				if handle ~= 0 then
					GUI:EditSetTextM(handle, ""..NewServerGift2.count[1][i])
				end
				
				for j = 1 , 3 do 
					local handle = GetWindow(this, "buttonWin,win"..i..",item"..j)
					if handle ~= 0 then
						RDItemCtrlSetGUIDataPropByKeyName(handle, nil, NewServerGift2.ctrlItemCount[i][j][1], NewServerGift2.ctrlItemCount[i][j][2], NewServerGift2.ctrlItemCount[i][j][2])    --物品框填充
					end
					
				end					
			end
			UI:Lua_SubmitForm("灵珠竞技表单", "main", "")
			--]]
		end
		
		function NewServerGift2:updata(level, str)
			--msg(""..str) --把我串头的0给去掉了,靠
			--msg(''..level..";str="..str)
			level = tonumber(level)
			NewServerGift2.level = level
			str = tostring(str)
			
			if level > 0 then 
				local i = 1
				for d in string.gmatch(str, "%d") do 
					local handle = GetWindow(NewServerGift2.WndHandle, "buttonWin,win"..i..",btn1")
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
				
			end	
			
		end
		
		function NewServerGift2:Charge(_handle)
			local _handle1 = GetWindow(self._wnd, "arrow")
			if _handle1 ~= 0 then 
				--GUIImageRotate(_Handle:int,centerX:Number,centerY:Number,degree:int,isAnimation:Boolean,overFun:String):void
				GUIImageRotate(_handle1, 17, 95, 45, true, "NewServerGift2:End()")
			end
		end
		
		function NewServerGift2:End()
			msg("调用结束测试")
		end
		
		-----------------------------------------------------每日抢购---------------------------------
		NewServerGift3 = {}
		NewServerGift3.level = 0
		--商品的keyName, 是否绑定, 原价, 现价, 每日限购数量
		NewServerGift3.product = 
		{	
			[1] = {
				"高级BOSS积分精魄", true, 99995, 20, 10,
			},
			[2] = {
				"高级BOSS积分精魄", false, 99996, 21, 11,
			},
			[3] = {
				"高级BOSS积分精魄", false, 99997, 22, 12,
			},
			[4] = {
				"高级BOSS积分精魄", false, 99998, 23, 13,
			},
		}
		
		function NewServerGift3:UIInit(_this)
			--msg('NewServerGift3:UIInit')
			if not GUIWndGetVisible(_this) then 
				return
			end
			self._wnd = _this
			
			for i = 1, 4 do 
				local _handle = GetWindow(_this, "win"..i..",item")
				if _handle ~= 0 then
					RDItemCtrlSetGUIDataByKeyName(_handle, NewServerGift3.product[i][1], 1, NewServerGift3.product[i][2]) --物品框填充
				end			
				local _handle = GetWindow(_this, "win"..i..",originalPrice")
				if _handle ~= 0 then
					GUI:EditSetTextM(_handle,"原价：".. self.product[i][3])
				end
				_handle = GetWindow(_this, "win"..i..",nowPrice")
				if _handle ~= 0 then
					GUI:EditSetTextM(_handle,"现价：".. self.product[i][4])
				end
				
			end
			UI:Lua_SubmitForm("开服豪礼表单", "NewServerGift3_main", "")
			
		end
		
		function NewServerGift3:updata(str)
			--msg(""..str) --把我串头的0给去掉了,靠
			--msg(''..level..";str="..str)
			local i = 1
			for d in string.gmatch(str, "%d") do 
				local _handle = GetWindow(self._wnd, "win"..i..",limitCount")
				if _handle ~= 0 then
					if d == '0' then 
						GUI:EditSetTextM(_handle,"0 / 1")
					elseif d == '1' then 
						GUI:EditSetTextM(_handle,"1 / 1")
					end
				end
				i = i + 1
			end
			
		end	
		
		
		
		function NewServerGift3:Buy(_handle)
			local index = GUI:WndGetParam(handle)
			UI:Lua_SubmitForm("开服豪礼表单", "NewServerGift3_Buy", ""..index)
		end
		
		function NewServerGift3:ChargeMsgBox()
			luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
		end
		
	]]></script>

 
</form>