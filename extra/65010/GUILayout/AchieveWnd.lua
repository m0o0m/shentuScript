AchieveWnd ={}
HeroAch_Wnd = {}
local ui = "<form><dialog OnClose='AchieveWnd.OnCloese' OnInit='AchieveWnd.UIInit' drag='true' esc_close='true' h='504' id='AchieveWnd' image='1806500000' revmsg='true' w='722' x='0' y='50' visible='false' magic='1'>"
	ui=ui.."	<image check_point='0' enable='false' h='504' id='WndBkImg' image='1806500000' parent='AchieveWnd' revmsg='false' w='722' x='0' y='0' />"
	ui=ui.."	<image check_point='0' enable='false' h='427' id='backGroud' image='1806500001' parent='AchieveWnd' revmsg='false' w='652' x='35' y='55' />"
	ui=ui.."	<image check_point='0' enable='false' h='28' id='image0' image='1806500004' parent='AchieveWnd' revmsg='true' w='65' x='336' y='6' />"
	ui=ui.."	<button OnLButtonUp='AchieveWnd.closeWnd' h='38' id='Close' image='1805900080' parent='AchieveWnd' revmsg='true' w='34' x='673' y='4' />"
	ui=ui.."	<button OnLButtonUp='AchieveWnd.hero' h='30' id='hero_ach' image='1806500017' parent='AchieveWnd' revmsg='true' text='英雄成就' text_color='#957463' w='77' x='39' y='61' />"
	ui=ui.."	<image check_point='0' enable='false' h='20' id='image2' image='0' parent='AchieveWnd' revmsg='true' w='20' x='97' y='50' />"
	ui=ui.."	<button OnLButtonUp='AchieveWnd.ach' h='30' id='ach_xuanz' image='1806500017' parent='AchieveWnd' revmsg='true' text='成就勋章' text_color='#957463' w='77' x='120' y='61' />"
	ui=ui.."	<edit canedit='false' enable='false' font='system' h='19' id='Achjf' parent='AchieveWnd' revmsg='true' text='当前成就积分:' text_color='#FFF500' w='80' x='412' y='67' />"
	ui=ui.."	<edit font='system' h='19' id='Achjifen' parent='AchieveWnd' revmsg='true' text='0' text_color='#FFF500' w='70' x='492' y='67' />"
	ui=ui.."		<wnd h='16' id='AchieveList' image='0' parent='AchieveWnd' revmsg='true' w='16' x='10' y='75'>"
	ui=ui.."			<button OnLButtonUp='AchieveWnd.onSelectTab' h='46' id='AchieveBtn1' image='1806500033' param='1' parent='AchieveWnd,AchieveList' revmsg='true' text_color='#E6D384' w='141' x='30' y='28' />"
	ui=ui.."			<button OnLButtonUp='AchieveWnd.onSelectTab' h='46' id='AchieveBtn2' image='1806500037' param='2' parent='AchieveWnd,AchieveList' revmsg='true' text_color='#E6D384' w='141' x='30' y='73' />"
	ui=ui.."			<button OnLButtonUp='AchieveWnd.onSelectTab' h='46' id='AchieveBtn3' image='1806500045' param='3' parent='AchieveWnd,AchieveList' revmsg='true' text_color='#E6D384' w='141' x='30' y='118' />"
	ui=ui.."			<button OnLButtonUp='AchieveWnd.onSelectTab' h='46' id='AchieveBtn4' image='1806500025' param='4' parent='AchieveWnd,AchieveList' revmsg='true' text_color='#E6D384' w='141' x='30' y='163' />"
	ui=ui.."			<button OnLButtonUp='AchieveWnd.onSelectTab' h='46' id='AchieveBtn5' image='1806500029' param='5' parent='AchieveWnd,AchieveList' revmsg='true' text_color='#E6D384' w='141' x='30' y='208' />"
	ui=ui.."			<button OnLButtonUp='AchieveWnd.onSelectTab' h='46' id='AchieveBtn6' image='1806500053' param='6' parent='AchieveWnd,AchieveList' revmsg='true' text_color='#E6D384' w='141' x='30' y='253' />"
	ui=ui.."			<button OnLButtonUp='AchieveWnd.onSelectTab' h='46' id='AchieveBtn7' image='1806500041' param='7' parent='AchieveWnd,AchieveList' revmsg='true' text_color='#E6D384' w='141' x='30' y='298' />"
	ui=ui.."			<button OnLButtonUp='AchieveWnd.onSelectTab' h='46' id='AchieveBtn8' image='1806500049' param='8' parent='AchieveWnd,AchieveList' revmsg='true' text_color='#E6D384' w='141' x='30' y='343' />"
	ui=ui.."			<image check_point='0' enable='false' h='41' id='AchieveCount1' image='0' parent='AchieveWnd,AchieveList' revmsg='true' visible='false' w='19' x='144' y='28' />"
	ui=ui.."			<image check_point='0' enable='false' h='41' id='AchieveCount2' image='0' parent='AchieveWnd,AchieveList' revmsg='true' visible='false' w='19' x='144' y='73' />"
	ui=ui.."			<image check_point='0' enable='false' h='41' id='AchieveCount3' image='0' parent='AchieveWnd,AchieveList' revmsg='true' visible='false' w='19' x='144' y='118' />"
	ui=ui.."			<image check_point='0' enable='false' h='41' id='AchieveCount4' image='0' parent='AchieveWnd,AchieveList' revmsg='true' visible='false' w='19' x='144' y='163' />"
	ui=ui.."			<image check_point='0' enable='false' h='41' id='AchieveCount5' image='0' parent='AchieveWnd,AchieveList' revmsg='true' visible='false' w='19' x='144' y='208' />"
	ui=ui.."			<image check_point='0' enable='false' h='41' id='AchieveCount6' image='0' parent='AchieveWnd,AchieveList' revmsg='true' visible='false' w='19' x='144' y='253' />"
	ui=ui.."			<image check_point='0' enable='false' h='41' id='AchieveCount7' image='0' parent='AchieveWnd,AchieveList' revmsg='true' visible='false' w='19' x='144' y='298' />"
	ui=ui.."			<image check_point='0' enable='false' h='41' id='AchieveCount8' image='0' parent='AchieveWnd,AchieveList' revmsg='true' visible='false' w='19' x='144' y='343' />	"
	ui=ui.."			<wnd h='385' id='List' image='1806500003' parent='AchieveWnd,AchieveList' scroll='1' w='500' x='170' y='18' />"
	ui=ui.."			<button OnLButtonUp='AchieveWnd.GetAll' h='31' id='GetAll' image='1806500021' parent='AchieveWnd,AchieveList' revmsg='true' w='88' x='568' y='-18' />"
	ui=ui.."		</wnd>"
	ui=ui.."		<wnd h='387' id='Xunz_Win' image='1806500002' parent='AchieveWnd' revmsg='true' w='648' x='36' y='95'>"
	ui=ui.."			<image check_point='0' enable='false' h='387' id='wndBkimg' image='1806500002' parent='AchieveWnd,Xunz_Win' revmsg='false' w='648' x='0' y='0' />"
	ui=ui.."			<image check_point='0' enable='false' h='94' id='item_image' image='1806500008' parent='AchieveWnd,Xunz_Win' revmsg='true' w='105' x='153' y='5' />"
	ui=ui.."			<itemctrl enable='true' h='60' id='item' parent='AchieveWnd,Xunz_Win' rbtn_use='true' revmsg='true' w='62' x='174' y='24' use_back='0' />"
	ui=ui.."			<image check_point='0' enable='false' h='43' id='nxun_image' image='1806500009' parent='AchieveWnd,Xunz_Win' revmsg='true' w='158' x='131' y='105' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='23' id='nxun_edit' parent='AchieveWnd,Xunz_Win' revmsg='true' w='87' x='172' y='109' />"
	ui=ui.."			<image check_point='0' enable='false' h='99' id='p_image' image='1802200017' parent='AchieveWnd,Xunz_Win' revmsg='true' w='155' x='22' y='155' />"
	ui=ui.."			<image check_point='0' enable='false' h='99' id='p_image1' image='1802200017' parent='AchieveWnd,Xunz_Win' revmsg='true' w='155' x='227' y='155' />"
	ui=ui.."			<image check_point='0' enable='false' h='58' id='p_image2' image='1800000366' parent='AchieveWnd,Xunz_Win' revmsg='true' w='43' x='182' y='179' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='editm1' parent='AchieveWnd,Xunz_Win' revmsg='true' text='物理攻击：' text_color='#E6D386' w='64' x='30' y='163' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='edit1' parent='AchieveWnd,Xunz_Win' revmsg='true' text='0 - 0' w='75' x='91' y='163' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='editm2' parent='AchieveWnd,Xunz_Win' revmsg='true' text='魔法攻击：' text_color='#E6D386' w='64' x='30' y='190' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='edit2' parent='AchieveWnd,Xunz_Win' revmsg='true' text='0 - 0' w='75' x='91' y='189' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='21' id='editm3' parent='AchieveWnd,Xunz_Win' revmsg='true' text='道术攻击：' text_color='#E6D386' w='64' x='30' y='220' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='edit3' parent='AchieveWnd,Xunz_Win' revmsg='true' text='0 - 0' w='75' x='91' y='219' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='editmm1' parent='AchieveWnd,Xunz_Win' revmsg='true' text='物理攻击：' text_color='#E6D386' w='64' x='232' y='161' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='edi1' parent='AchieveWnd,Xunz_Win' revmsg='true' text='0 - 0' text_color='#00CD30' w='75' x='294' y='161' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='editmm2' parent='AchieveWnd,Xunz_Win' revmsg='true' text='魔法攻击：' text_color='#E6D386' w='64' x='232' y='190' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='edi2' parent='AchieveWnd,Xunz_Win' revmsg='true' text='0 - 0' text_color='#00CD30' w='75' x='294' y='190' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='22' id='editmm3' parent='AchieveWnd,Xunz_Win' revmsg='true' text='道术攻击：' text_color='#E6D386' w='64' x='232' y='220' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='19' id='edi3' parent='AchieveWnd,Xunz_Win' revmsg='true' text='0 - 0' text_color='#00CD30' w='77' x='294' y='221' />"
	ui=ui.."			<image check_point='0' enable='false' h='47' id='jindut_ima' image='1800000364' parent='AchieveWnd,Xunz_Win' revmsg='true' w='321' x='52' y='298' />"
	ui=ui.."			<image check_point='0' enable='false' h='26' id='jindut_image' image='1800000365' parent='AchieveWnd,Xunz_Win' revmsg='true' visible='false' w='257' x='80' y='309' />"
	ui=ui.."			<edit canedit='false' enable='false' font='system' h='12' id='jifen_edit' parent='AchieveWnd,Xunz_Win' revmsg='true' text='0 - 0' w='161' x='172' y='315' />"
	ui=ui.."			<button OnLButtonUp='Xunz_Win.get' h='32' id='shengj_button' image='1800000150' parent='AchieveWnd,Xunz_Win' revmsg='true' text='升级勋章' text_color='#FEE4C1' w='84' x='161' y='348' />"
	ui=ui.."			<button h='30' id='shuom_button' image='1800000297' parent='AchieveWnd,Xunz_Win' revmsg='true' w='27' x='24' y='360' />"
	ui=ui.."			<image check_point='0' enable='false' h='14' id='xun_list' image='1806500011' parent='AchieveWnd,Xunz_Win' revmsg='true' w='52' x='499' y='6' />"
	ui=ui.."			"
	ui=ui.."			<wnd h='355' id='medalList' parent='AchieveWnd,Xunz_Win' revmsg='true' scroll='true' w='235' x='412' y='31'>"
	ui=ui.."				<wnd h='68' id='list1' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='0'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list1' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list1' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list1' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list1' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list1' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list2' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='68'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list2' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list2' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list2' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list2' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list2' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list3' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='136'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list3' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list3' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list3' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list3' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list3' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list4' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='204'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list4' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list4' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list4' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list4' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list4' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list5' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='272'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list5' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list5' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list5' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list5' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list5' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list6' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='340'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list6' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list6' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list6' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list6' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list6' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list7' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='408'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list7' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list7' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list7' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list7' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list7' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list8' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='472'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list8' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list8' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list8' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list8' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list8' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list9' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='540'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list9' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list9' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list9' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list9' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list9' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list10' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='608'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list10' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list10' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list10' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list10' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list10' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list11' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='676'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list11' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list11' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list11' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list11' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list11' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."				<wnd h='68' id='list12' image='1806500007' parent='AchieveWnd,Xunz_Win,medalList' revmsg='true' w='214' x='0' y='744'>"
	ui=ui.."					<image h='48' id='itemctrlBack' image='1802000010' parent='AchieveWnd,Xunz_Win,medalList,list12' revmsg='true' w='48' x='5' y='10' />"
	ui=ui.."					<image check_point='0' enable='false' h='54' id='edit_image' image='1800000301' parent='AchieveWnd,Xunz_Win,medalList,list12' revmsg='true' w='181' x='27' y='6' />"
	ui=ui.."					<image check_point='0' enable='false' h='16' id='get_yes' image='0' parent='AchieveWnd,Xunz_Win,medalList,list12' revmsg='true' w='16' x='143' y='5' />"
	ui=ui.."					<itemctrl enable='true' h='47' id='item' parent='AchieveWnd,Xunz_Win,medalList,list12' rbtn_use='true' revmsg='true' use_back='0' w='47' x='6' y='11' />"
	ui=ui.."					<edit enable='false' font='system' h='28' id='name' parent='AchieveWnd,Xunz_Win,medalList,list12' revmsg='true' text_color='#FFF700' w='66' x='65' y='20' />"
	ui=ui.."				</wnd>"
	ui=ui.."			</wnd>		"
	ui=ui.."			"
	ui=ui.."			<richedit font='system' h='19' id='shuom_edit' parent='AchieveWnd,Xunz_Win' revmsg='true' w='85' x='52' y='365' />"
	ui=ui.."			<richedit OnLButtonUp='Xunz_Win.buy_ach' font='system' h='19' id='buy_Ach' parent='AchieveWnd,Xunz_Win' revmsg='true' w='100' x='291' y='362' />"
	ui=ui.."			<image check_point='0' h='18' id='TestWndChild_3' image='1806500012' parent='AchieveWnd,Xunz_Win' revmsg='true' w='262' x='76' y='275' />"
	ui=ui.."		</wnd>"
	ui=ui.."		<image enable='false' h='20' id='image3' image='1804600026' parent='AchieveWnd' revmsg='false' visible='false' w='20' x='175' y='50' />"
	ui=ui.."</dialog>"
	ui=ui.."</form>"

function AchieveWnd.main()
	GenFormByString(ui)
end

--UI Logic Code Start

AchieveWnd.WndHandle = 0
AchieveWnd.IsInit = false
function AchieveWnd.UIInit(_Parent)
	AchieveWnd.WndHandle = _Parent
	
	GUI:WndSetSizeM(_Parent, 680 ,514)
	CenterWnd(_Parent)
	GUI:WndSetVisible(_Parent, true)
	local _handle1 = GetWindow(0,"AchieveWnd,Buy_ach")
	if _handle1 ~= 0 then
		GUI:WndClose(_handle1)
	end
	
	local hero_handle = GUI:WndFindChildM(_Parent, "hero_ach")
	local ach_handle = GUI:WndFindChildM(_Parent, "ach_xuanz")
	if not AchieveWnd.IsInit then
		if hero_handle ~= 0 then
			GUI:WndSetTextArrangeType(hero_handle,0,2,0,0);
			GUI:ButtonSetStateTextColor(hero_handle,0,MakeARGB(255, 96, 94, 73))
			GUI:ButtonSetStateTextColor(hero_handle,2,MakeARGB(255, 208, 179, 99))
		end
		
		if ach_handle ~= 0 then
			GUI:WndSetTextArrangeType(ach_handle,0,2,0,0);
			GUI:ButtonSetStateTextColor(ach_handle,0,MakeARGB(255, 96, 94, 73))
			GUI:ButtonSetStateTextColor(ach_handle,2,MakeARGB(255, 208, 179, 99))
		end
		AchieveWnd.IsInit = true
	end
	if taskAchieve ~= nil and taskAchieve == 2 then
		AchieveWnd.ach(ach_handle)
		taskAchieve = nil
	else
		AchieveWnd.hero(hero_handle)
	end
end

function AchieveWnd.hero(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then	
		--[[local get_handle = GetWindow(_Parent,"AchieveList,GetAll")
		if get_handle ~= 0 then
			GUI:RichEditClear(get_handle)
			GUI:RichEditAppendString(get_handle,"#SELECT#一键领取#SELECTEND#")
		end--]]

		ButtonSetIsActivePageBtn(_handle,nil,true)
		ButtonSetIsActivePageBtn(AchieveWnd.WndHandle,"ach_xuanz",false)
		
		local handle = GetWindow(AchieveWnd.WndHandle,"Xunz_Win")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,false)
		end	
		
	end
	local handle = GetWindow(AchieveWnd.WndHandle,"AchieveList")
	if handle ~= 0 then
		GUI:WndSetVisible(handle,true)
		HeroAch_Wnd.UIInit(handle)
	end
end

function AchieveWnd.ach(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ButtonSetIsActivePageBtn(_handle,nil,true)	
		ButtonSetIsActivePageBtn(AchieveWnd.WndHandle,"hero_ach",false)
		local handle = GetWindow(AchieveWnd.WndHandle,"AchieveList")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,false)
		end
		handle = GetWindow(AchieveWnd.WndHandle,"Xunz_Win")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,true)
			Xunz_Win.UIInit(handle)
		end				
	end
end

function AchieveWnd.closeWnd(_handle)				
	GUI:WndClose(AchieveWnd.WndHandle)
end
function AchieveWnd.OnCloese(_handle)
	WndDelEffect(nil,"AchieveWnd,Xunz_Win,jindut_image")
	ButtonSetIsActivePageBtn(AchieveWnd.WndHandle,"hero_ach",false)
	ButtonSetIsActivePageBtn(AchieveWnd.WndHandle,"ach_xuanz",false)
	for i = 1, 5 do 
		local handle = GetWindow(0,"AchieveWnd,Xunz_Win,msg"..i)
		--msg(''..handle)
		--local msgID = GUI:WndGetIDM(handle)
		--msg(msgID)
		if tonumber(handle) ~= 0 then 
			local fh = WndGetParentM(handle)
			local ID = GUI:WndGetIDM(fh)
			--msg(''..ID)
			GUI:WndClose(handle)
		end
	end
	
end
--------------------成就列表-------------------------------
HeroAch_Wnd.buttonIndex = 1
HeroAch_Wnd.WndHandle = 0
HeroAch_Wnd.Achievetab = {}
HeroAch_Wnd.str = ""
HeroAch_Wnd.selectTab = 1
HeroAch_Wnd.page = 1
HeroAch_Wnd.jifen = {}
HeroAch_Wnd.num = {0,0,0,0,0,0,0,0}
HeroAch_Wnd.image = {1804600035,1804600036,1804600037,1804600038,1804600039,1804600040,1804600041,1804600042,1804600043,1804600035}
HeroAch_Wnd.image1 = {1804600026,1804600027,1804600028,1804600029,1804600030,1804600031,1804600032,1804600033,1804600034,1804600026}

function HeroAch_Wnd.UIInit(_Parent)
	HeroAch_Wnd.WndHandle = _Parent
	
	HeroAch_Wnd.buttonIndex = 1
	HeroAch_Wnd.Achievetab = {}
	HeroAch_Wnd.Data = {}
	HeroAch_Wnd.str = ""
	HeroAch_Wnd.selectTab = 1
	HeroAch_Wnd.page = 1
	HeroAch_Wnd.jifen = {}
	HeroAch_Wnd.JifEnable = false
	UI:Lua_SubmitForm("成就积分表单", "main", "")
	
    GUI:WndRegistScript(HeroAch_Wnd.WndHandle, RDWndBaseCL_wnd_close , "HeroAch_Wnd.wndClose")
    RegisterUIEvent(LUA_EVENT_ONACHIVELIST,"获取成就列表","HeroAch_Wnd.AchieveData")
end
function HeroAch_Wnd.visible(vis,sum)
	if tonumber(vis) == 1 then 
		local handle = GetWindow(0,"AchieveWnd,image3")
		if handle ~= 0 then  
			GUI:WndSetVisible(handle,true)
			GameMainBar.MedalNum = 1
		end
	end 
	sum = tonumber(sum)
	if sum == 0 then	
		ImageSetImageID(AchieveWnd.WndHandle,"image2",0)  
	else	
		if sum < 10 then
			ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[sum])  
		else
			sum = 9
			ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[sum])  
		end	
	end	
	GameMainBar.AchNum(sum)
end

function Hero_jif(data,num,vis)
	HeroAch_Wnd.visible(vis,num)
	HeroAch_Wnd.jifen = data
	num = tonumber(num)
	if num ~= 0 then
		if num < 10  then
			ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[num])  
			--ImageSetImageID(AchieveWnd.WndHandle,"image1",0)  	
		else
			num = 9
			--ImageSetImageID(AchieveWnd.WndHandle,"image1",HeroAch_Wnd.image1[a])  
			ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[num])  
		end
	end	
	HeroAch_Wnd.JifEnable = true
	CL:GetGloryList()
end	


HeroAch_Wnd.IconList = {
	{"神翼培养",1891700000,1891700001,1891700002,1891700003,1891700004,1891700005},
	{"初出茅庐",1892100049,1892100050,1892100047,1892100048},
	{"副本次数",1892100053,1892100053,1892100053,1892100053,1892100053,1892100053,1892100053,1892100053,1892100053,1892100053,1892100053},
	{"强化次数",1892100048,1892100048,1892100048,1892100048,1892100048,1892100048,1892100048,1892100048,1892100048},
	{"BOSS击杀",1899100022,1899100011,1899100024,1899100013,1990340027,1899100020,1899100018,1899100019,1990310060,1899100023,1990340009,1899100027,1990340016,1990310030},
	{"降妖除魔",1892100051,1892100051,1892100051,1892100051,1892100051,1892100051,1892100051,1892100051,1892100051,1892100051,1892100051,1892100051,1892100051,1892100051,1892100051},
	{"等级修炼",1892100046,1892100046,1892100046,1892100046,1892100046,1892100046,1892100046,1892100046,1892100046,1892100046,1892100046,1892100046,1892100046},
	{"累计登录",1892100054,1892100054,1892100054,1892100054,1892100054,1892100054,1892100054,1892100054,1892100054,1892100054,1892100054,1892100054,1892100054,1892100054,1892100054}
}
function GetAchieveIcon(name, idx)
	for k,v in pairs(HeroAch_Wnd.IconList) do
		if v[1] == name then
			return v[idx+1]
		end
	end
end

function GetAchieveIntegral(name, idx)
	for k,v in pairs(HeroAch_Wnd.jifen) do
		if v[1] == name then
			return v[idx+1]
		end
	end
end

HeroAch_Wnd.StateImageList = {1806500016,1806500015,1806500013}
function GetAchieveStateList(state)
	local rtn = 1
	if state ~= 2 then
		if state == 3 then
			rtn = 1
		else
			rtn = 2
		end
	else
		rtn = 3
	end
	return HeroAch_Wnd.StateImageList[rtn]
end

function HeroAch_Wnd.AchieveData()
	if HeroAch_Wnd.JifEnable == false then return end
	if GetWindow(0, "AchieveWnd") == 0 then return end
	HeroAch_Wnd.Achievetab = {}
    local Achievetab = LuaParam[1]
    for i = 1 , #Achievetab do
        local tab = Achievetab[i]
        local index = tab[4]
		if index ~= nil then
			if HeroAch_Wnd.Achievetab[index] == nil then
				HeroAch_Wnd.Achievetab[index] = {}
			end	
			table.insert(HeroAch_Wnd.Achievetab[index],tab)
		end
    end
    for k,v in pairs(HeroAch_Wnd.Achievetab) do
		for i=1,#v do --自定义的图片信息,在排序之前写好
			v[i][11]=GetAchieveIcon(v[i][4], i)
			v[i][12]=GetAchieveStateList(v[i][2])
			v[i][13]=GetAchieveIntegral(v[i][4], i)
		end
		table.sort(v, HeroAch_Wnd.Sort)
	end
	HeroAch_Wnd.UpdateNum()
    local _Handle = GetWindow(AchieveWnd.WndHandle,"AchieveList,AchieveBtn1")
    AchieveWnd.onSelectTab(_Handle)
end
-----------------------勋章--------------------------------------
Xunz_Win = {}
Xunz_Win.WndHandle = 0
Xunz_Win.index = 0
Xunz_Win.jifen = 0
--Xunz_Win.page = 1
Xunz_Win.xun_tab = {}
Xunz_Win.xun_jifen = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000}
Xunz_Win._control = {}
Xunz_Win.IsInit = false
function Xunz_Win.UIInit(_Parent)
	Xunz_Win.WndHandle = _Parent
	--msg(""..Xunz_Win.WndHandle)
	Xunz_Win.index = 0
	Xunz_Win.jifen = 0
	Xunz_Win.page = 1
	Xunz_Win.xun_tab = {}
	--[[
	for i = 1, 5 do 
		local handle = GetWindow(Xunz_Win.WndHandle,"msg"..i)
		msg(''..handle)
		local msgID = GUI:WndGetIDM(handle)
		msg(msgID)
		if tonumber(handle) ~= 0 then 
			local fh = WndGetParentM(handle)
			local ID = GUI:WndGetIDM(fh)
			msg(''..ID)
			GUI:WndClose(handle)
		end
	end
	--]]
	if not Xunz_Win.IsInit  then
		local _handle = GetWindow(AchieveWnd.WndHandle,"Xunz_Win,shuom_edit")
		GUI:RichEditClear(_handle)
		GUI:RichEditAppendString(_handle,"#SELECT#积分说明#SELECTEND#")
		_handle = GetWindow(AchieveWnd.WndHandle,"Xunz_Win,shuom_button")
		if _handle ~= 0 then 
			GUI:WndSetHintWidth(_handle, 300)
			local str = "积分说明：                                        "
			str = str.."1.积分可用来兑换勋章，增强角色属性                "
			str = str.."2.积分可以通过完成成就、活动、使用成就令牌获得    "
			str = str.."3.成就令牌可以通过商城或右侧链接购买"
			GUI:WndSetHint(_handle, str)
		end
		_handle = GetWindow(_Parent,"buy_Ach")
		if _handle ~= 0 then
			GUI:RichEditClear(_handle)
			GUI:RichEditAppendString(_handle,"#SELECT#购买成就令牌＞#SELECTEND#")	
		end
		local _nxun_edit = GUI:WndFindChildM(_Parent,"nxun_edit")
		if _nxun_edit ~= 0 then	
			GUI:EditSetFontM(_nxun_edit,"SIMLI18")
			WndSetTextColorM(_nxun_edit,nil,MakeARGB(255, 255, 217, 70))
		end
		--[[local _jinduti = GUI:WndFindChildM(_Parent,"jindut_image")
		if _jinduti ~= 0 then
			GUI:WndSetSizeM(_jinduti, 257, 36)		
		end--]]
		Xunz_Win.IsInit = true
	end
	--[[
	_handel = GetWindow(_Parent,"up_page")
	if _handel ~= 0 then Xunz_Win._control["up_page"] = _handel end
	_handel = GetWindow(_Parent,"down_page")
	if _handel ~= 0 then Xunz_Win._control["down_page"] = _handel end
	if not Xunz_Win.upBtnIsSet then
		GUI:WndSetEnableM(Xunz_Win._control["up_page"],false)
		Xunz_Win.upBtnIsSet = true
	end
	--]]
	UI:Lua_SubmitForm("成就积分表单", "xunz", "")
	
end
function xunzl(data,vis)
	local handle = GetWindow(0,"AchieveWnd,image3")
	if handle ~= 0 then 
		if tonumber(vis) == 1 then 
			GUI:WndSetVisible(handle,true)
			GameMainBar.MedalNum = 1
		else 
			GUI:WndSetVisible(handle,false)
			GameMainBar.MedalNum = 0
		end
	end 
	Xunz_Win.index = tonumber(data[2])
	Xunz_Win.jifen = tonumber(data[3])
	Xunz_Win.xun_tab = data[1]
	xunz_updata(Xunz_Win.index,Xunz_Win.jifen)
end

function xunz_updata(inde,jifen)
	local index = inde + 1 
	if inde >= #Xunz_Win.xun_tab then 
		index = inde
	end
	local handel = GetWindow(Xunz_Win.WndHandle,"item",nil)		
	RDItemCtrlSetGUIDataByKeyName(handel, Xunz_Win.xun_tab[index], 1, true)
	local temp = CL:GetItemTemplateHandleByKeyName(Xunz_Win.xun_tab[index])
	local name = ""
	if CL:GetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
		name = LuaRet
	end
	local _handle =  GetWindow(Xunz_Win.WndHandle,"nxun_edit",nil)
	EditSetText(_handle,nil,name)
	local temp1 = 0 
	if index > 1 then
		temp1 = CL:GetItemTemplateHandleByKeyName(Xunz_Win.xun_tab[index - 1])
	end	
	local tab1 = {{80,81},{82,83},{84,85}}
	for i = 1 , 3 do 
		local mi = 0 
		local ma = 0
		if CL:GetItemTemplatePropByHandle(temp,tab1[i][1]) then
			ma = LuaRet
		end
		if CL:GetItemTemplatePropByHandle(temp,tab1[i][2]) then
			mi = LuaRet
		end
		local _handle =  GetWindow(Xunz_Win.WndHandle,"edi"..i,nil)
		EditSetText(_handle,nil,mi.." - "..ma)
		if temp1 ~= 0 then 
			if CL:GetItemTemplatePropByHandle(temp1,tab1[i][1]) then
				ma = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(temp1,tab1[i][2]) then
				mi = LuaRet
			end
			local _handle =  GetWindow(Xunz_Win.WndHandle,"edit"..i,nil)
			EditSetText(_handle,nil,mi.." - "..ma)
		end	
	end
	
	Xunz_Win.jifen_update(inde,jifen)
	--Xunz_Win.list_update(Xunz_Win.page)
	Xunz_Win.list_update(inde)
end

function Xunz_Win.jifen_update(inde,jifen)
	Xunz_Win.index = tonumber(inde)
	Xunz_Win.jifen = tonumber(jifen)
	local index = inde + 1
	if inde >= #Xunz_Win.xun_tab then 
		index = inde
	end
	local _handle = GetWindow(Xunz_Win.WndHandle,"jifen_edit")
	EditSetText(_handle,nil,jifen.." - "..Xunz_Win.xun_jifen[index])
	local _jindutImage = GetWindow(Xunz_Win.WndHandle,"jindut_image")
	WndDelEffect(nil,"AchieveWnd,Xunz_Win,jindut_image")
	if _jindutImage ~= 0 then
		local value = 0
		if tonumber(jifen) > 0 then
			local a = tonumber(jifen)
			local b = tonumber(Xunz_Win.xun_jifen[index])
			value = a/b
		end
		if value > 0 then
			GUI:WndSetVisible(_jindutImage,true)
			GUI:ImageSetDrawRect(_jindutImage,0,value,0,1)
		else
			GUI:WndSetVisible(_jindutImage,false)
		end
		
		if value >= 1 then 
			WndAddEffect(nil,"AchieveWnd,Xunz_Win,jindut_image",3020101700, 0, 0, 150, 0) 
		else
			WndAddEffect(nil,"AchieveWnd,Xunz_Win,jindut_image",3020200800, value*250-59, -8, 100, 0) 
		end
	end	
	if tonumber(inde) ~= #Xunz_Win.xun_tab then
		local handle = GetWindow(Xunz_Win.WndHandle, "shengj_button")
		local achScore_tab = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000,0}
		if handle ~= 0 then
			if Xunz_Win.jifen >= achScore_tab[index] then
				WndAddEffect(handle, "shengj_button", 3020100700, -13, -8, 100, 0)
			else
				WndDelEffect(handle)
			end
		end
	end
end	


function Xunz_Win.list_update(level)
	
	for i = 1, 12 do 
		local _handle = GetWindow(Xunz_Win.WndHandle,"medalList,list"..i..",item")
		if _handle ~= 0 then 
			--msg('item')
			RDItemCtrlSetGUIDataByKeyName(_handle, Xunz_Win.xun_tab[i], 0xfff, false)
			local temp = CL:GetItemTemplateHandleByKeyName(Xunz_Win.xun_tab[i])
			local name = ""
			if CL:GetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
				name = LuaRet
				--msg(name)
			end
			EditSetText(Xunz_Win.WndHandle, "medalList,list"..i..",name", name)
		end
		if i <= level then 
			ImageSetImageID(Xunz_Win.WndHandle, "medalList,list"..i..",edit_image",1800000301)	
			ImageSetImageID(Xunz_Win.WndHandle, "medalList,list"..i..",get_yes",1800000295)	
		else
			ImageSetImageID(Xunz_Win.WndHandle, "medalList,list"..i..",edit_image",1800000302)
			ImageSetImageID(Xunz_Win.WndHandle, "medalList,list"..i..",get_yes",1800000296)
		end
	end
end


function Xunz_Win.get(_handle)
	UI:Lua_SubmitForm("成就积分表单", "get_xun", "")
end	

function Xunz_Win.msg_up(str)
	local _handle = GetWindow(0,"AchieveWnd,Xunz_Win,shengj_button")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -45 , -16 , 70 , color , 3)	
end	
--[[
function Xunz_Win.clear(index)
	EditSetText(Xunz_Win.WndHandle,"msg"..index,"")
	local _handle = GetWindow(0,"AchieveWnd,Xunz_Win,msg"..index)
	GUI:WndTween(_handle, "<Tween><Frame time='1' y = '390' /></Tween>","")
end
--]]
function Xunz_Win.buy_ach(_handle)
	local _handle1 = GetWindow(0,"AchieveWnd, Buy_ach")
	if _handle1 == 0 then
		UI:Lua_OpenWindow(AchieveWnd.WndHandle, "Buy_ach.lua")
	else
		GUI:WndClose(_handle1)
	end
end

AchieveWnd.ListItemsMax = 0
--按照给定的数量生成成就列表控件
function AchieveWnd.AllocItems(num)
	if AchieveWnd.ListItemsMax < num then AchieveWnd.ListItemsMax = num end
	for i = 1, num do
		local h = GetWindow(AchieveWnd.WndHandle, "AchieveList,List,ListItem"..i)
		local parent = GetWindow(AchieveWnd.WndHandle, "AchieveList,List")
		if h == 0 then
			_Parent = GUI:WndCreateWnd(parent, "ListItem"..i, 0, 0, (i-1)*68)
			GUI:WndSetSizeM(_Parent,478, 68)
					
			_GUIHandle = GUI:ImageCreate(_Parent,"back",1806500006,0,0)
			
			_GUIHandle = GUI:ImageCreate(_Parent,"itemctrlBack",1800000080,19,14)
			if _GUIHandle ~= 0 then
				GUI:WndSetSizeM(_GUIHandle,46, 46)
			end
			
			_GUIHandle = GUI:ImageCreate(_Parent,"Icon",0,20,15)
			if _GUIHandle ~= 0 then
				GUI:WndSetSizeM(_GUIHandle,45, 45)
				GUI:ImageSetFitSize(_GUIHandle, true)
			end
			
			_GUIHandle = GUI:ImageCreate(_Parent,"State",1806500015,300,14)
			
			_GUIHandle = GUI:ButtonCreate(_Parent,"GetBtn",1806100002,380,20)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle,"领取")
				GUI:WndSetVisible(_GUIHandle, false)
				GUI:WndSetTextColorM(_GUIHandle, 4293317508)
				GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.Get")
			end
			
			
			_GUIHandle = GUI:EditCreate(_Parent,"AchieveName",80,10,200,19)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:WndSetTextColorM(_GUIHandle, 4291932770)
			end
			
			
			_GUIHandle = GUI:EditCreate(_Parent,"Ach",78,40,70,19)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:WndSetTextColorM(_GUIHandle, 4291932770)
				GUI:EditSetTextM(_GUIHandle,"成就积分:")
			end
			
			
			_GUIHandle = GUI:EditCreate(_Parent,"Integral",138,40,100,19)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
			end
			
			
			_GUIHandle = GUI:ImageCreate(_Parent,"image",1800000051,208,43)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
			end
			
			_GUIHandle = GUI:EditCreate(_Parent,"AchieveGold",228,40,100,19)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		else
			GUI:WndSetVisible(h, true)
		end
	end
	for i = num+1, AchieveWnd.ListItemsMax do
		local h = GetWindow(AchieveWnd.WndHandle, "AchieveList,List,ListItem"..i)
		GUI:WndSetVisible(h, false)
	end
end

AchieveWnd.NameList = {"BOSS击杀", "初出茅庐","副本次数","强化次数","神翼培养","等级修炼","累计登录","降妖除魔"}
AchieveWnd.LastActiveBtnHandle = 0
function AchieveWnd.onSelectTab(h)
	local idx = GUI:WndGetParam(h)
	GUI:ButtonSetIsActivePageBtn(AchieveWnd.LastActiveBtnHandle, false)
	GUI:ButtonSetIsActivePageBtn(h, true)
	AchieveWnd.selectTab(AchieveWnd.NameList[idx], idx)
	AchieveWnd.LastActiveBtnHandle = h
end

function AchieveWnd.selectTab(name, idx)
	if GetWindow(0, "AchieveWnd") == 0 then return end
	local data = HeroAch_Wnd.Achievetab[name]
	AchieveWnd.AllocItems(#data)
	for i=1,#data do
		local h = GetWindow(AchieveWnd.WndHandle, "AchieveList,List,ListItem"..i)
		GUI:WndSetParam(h, idx)	--父窗口存放idx
		local _Handle = GUI:WndFindChildM(h, "Icon")
		GUI:WndSetImageID(_Handle, data[i][11])
		_Handle = GUI:WndFindChildM(h, "State")
		GUI:WndSetImageID(_Handle, data[i][12])
		_Handle = GUI:WndFindChildM(h, "GetBtn")
		GUI:WndSetParam(_Handle, data[i][1])	--GetBtn上存放ID
		if data[i][2] == 2 then
			GUI:WndSetVisible(_Handle, true)
		else
			GUI:WndSetVisible(_Handle, false)
		end
		_Handle = GUI:WndFindChildM(h, "AchieveGold")
		GUI:EditSetTextM(_Handle, ''..data[i][7])
		_Handle = GUI:WndFindChildM(h, "AchieveName")
		GUI:EditSetTextM(_Handle, data[i][5])
		_Handle = GUI:WndFindChildM(h, "Integral")
		GUI:EditSetTextM(_Handle, ''..data[i][13])
	end
end

function HeroAch_Wnd.wndClose()
    UnRegisterUIEvent(LUA_EVENT_ONACHIVELIST,"获取成就列表")
end

function HeroAch_Wnd.Sort(l, r)
	if l[2] ~= r[2] then --先按照状态排序
		if l[2] == 2 then
			return true
		else
			return false
		end
	else
		return l[1] < r[1]	--否则按照id
	end
end

function HeroAch_Wnd.UpdateNum()	--标签上可领取的数量
	if GetWindow(0, "AchieveWnd") == 0 then return end
	HeroAch_Wnd.count = 0
	for i=1,8 do
		local _Handle = GetWindow(AchieveWnd.WndHandle,"AchieveList,AchieveBtn"..i)
		local idx = GUI:WndGetParam(_Handle)
		local name = AchieveWnd.NameList[idx]
		local tab = HeroAch_Wnd.Achievetab[name]
		local count = 0
		for k,v in pairs(tab) do
			if v[2] == 2 then
				count = count+1
			end
		end
		HeroAch_Wnd.count = HeroAch_Wnd.count + count
		if count > 9 then count = 9 end
		_Handle = GetWindow(AchieveWnd.WndHandle,"AchieveList,AchieveCount"..i)
		if count > 0 then
			GUI:WndSetVisible(_Handle, true)
			GUI:WndSetImageID(_Handle, HeroAch_Wnd.image[count])
		else
			GUI:WndSetVisible(_Handle, false)
		end
	end
end

function HeroAch_Wnd.Get( h )
	local id =GUI:WndGetParam(h)
	CL:GetGloryAward(id)
	local _Handle = GUI:WndGetParentM(h)
	local idx = GUI:WndGetParam(_Handle)
	local name = AchieveWnd.NameList[idx]
	local tab = HeroAch_Wnd.Achievetab[name]
	local Integral = 0
	for k,v in pairs(tab) do
		if v[1] == id then
			v[2] = 3
			Integral = v[13]
			break
		end
	end
	_Handle = GUI:WndFindChildM(_Handle, "State")
	GUI:WndSetImageID(_Handle, GetAchieveStateList(3))
	HeroAch_Wnd.UpdateNum()
	UI:Lua_SubmitForm("成就积分表单", "addIntegral", ""..Integral.."#"..HeroAch_Wnd.count)
	GUI:WndSetVisible(h, false)
end

function AchieveWnd.GetAll(_Handle)
	local Integral = 0
	for k,v in pairs(HeroAch_Wnd.Achievetab) do
		for k1,v1 in pairs(v) do
			if v1[2] == 2 then
				CL:GetGloryAward(v1[1])
				v1[2] = 3
				Integral = Integral + v1[13]
			end
		end
	end
	HeroAch_Wnd.UpdateNum()
	UI:Lua_SubmitForm("成就积分表单", "addIntegral", ""..Integral.."#"..HeroAch_Wnd.count)
    local _Handle = GetWindow(AchieveWnd.WndHandle,"AchieveList,AchieveBtn1")
    AchieveWnd.onSelectTab(_Handle)
end

AchieveWnd.main()