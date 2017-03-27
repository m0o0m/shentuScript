package script
{
	public class TreasureWnd
	{
	
		var ui = "<form>
			<dialog OnInit='TreasureWnd.UIInit' id='TreasureWnd'  magic='1'  center='true'  image='1803500007' x='0' y='0' w='904' h='508' esc_close='true' drag='true' revmsg='true'>
				<image id='img_bodyBg' image='1803500008' x='42' y='125' w='546' h='351' revmsg='true' enable='false'/>
				<image id='img_bz' image='1803500011' x='397.5' y='15' w='109' h='66' revmsg='true' enable='false'/>
				<image id='img_yb' image='1803500012' x='62' y='88' w='51' h='20' revmsg='true' enable='false'/>
				<image id='img_ybNum1' image='0' x='190' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_ybNum2' image='0' x='180' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_ybNum3' image='0' x='170' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_ybNum4' image='0' x='160' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_ybNum5' image='0' x='150' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_ybNum6' image='0' x='140' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_ybNum7' image='0' x='130' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_ybNum8' image='0' x='120' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_ybNum9' image='0' x='110' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScore' image='1803500013' x='240' y='88' w='90' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScoreNum1' image='0' x='407' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScoreNum2' image='0' x='397' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScoreNum3' image='0' x='387' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScoreNum4' image='0' x='377' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScoreNum5' image='0' x='367' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScoreNum6' image='0' x='357' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScoreNum7' image='0' x='347' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScoreNum8' image='0' x='337' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='img_bzScoreNum9' image='0' x='327' y='88' w='15' h='20' revmsg='true' enable='false'/>
				<image id='imgTitle1' image='1803500058' x='80' y='155' w='135' h='22' revmsg='true' enable='false'/>
				<image id='imgTitle2' image='1803500015' x='210' y='148' w='100' h='32' revmsg='true' enable='false'/>
				<image id='imgTitle3' image='1803500016' x='310' y='148' w='100' h='32' revmsg='true' enable='false'/>
				<image id='imgTitle4' image='1803500017' x='410' y='148' w='100' h='32' revmsg='true' enable='false'/>
				<image id='Msg_bg' image='1803500009' x='590' y='140' w='272' h='337' revmsg='true' enable='false'/>
				<image id='RED1' image='1803500032' x='607' y='146' w='249' h='38' revmsg='true' enable='false'/>
				<image id='my_reward' image='1803500033' x='670' y='150' w='128' h='27' revmsg='true' enable='false'/>
				<image id='RED2' image='1803500032' x='607' y='300' w='249' h='38' revmsg='true' enable='false'/>
				<image id='sever_reward' image='1803500034' x='670' y='304' w='128' h='27' revmsg='true' enable='false'/>
				<image id='item_bg1' x='104' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg2' x='104' y='248' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg3' x='104' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg4' x='172' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg5' x='172' y='248' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg6' x='172' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg7' x='401' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg8' x='401' y='248' w='48' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg9' x='401' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg10' x='469' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg11' x='469' y='248' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='item_bg12' x='469' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				
				<image id='magic11' x='104' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic12' x='104' y='248' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic13' x='104' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic14' x='172' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic15' x='172' y='248' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic16' x='172' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic17' x='401' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic18' x='401' y='248' w='48' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic19' x='401' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic110' x='469' y='180' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic111' x='469' y='248' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				<image id='magic112' x='469' y='316' w='68' h='68' image='1803500019' revmsg='true' enable='false'/>
				
				<itemctrl id='item_tb1' x='115' y='187' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb2' x='115' y='255' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb3' x='115' y='323' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb4' x='183' y='187' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb5' x='183' y='255' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb6' x='183' y='323' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb7' x='412' y='187' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb8' x='412' y='255' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb9' x='412' y='323' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb10' x='480' y='187' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb11' x='480' y='255' w='47' h='48' use_back='0' auto_manage='true' enable='true' revmsg='true'/>
				<itemctrl id='item_tb12' x='480' y='323' w='47' h='48' use_back='0' auto_manage='true' nable='true' revmsg='true'/>
				
				<image id='item_magic1' x='139' y='212' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>
				<image id='item_magic2' x='139' y='280' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>
				<image id='item_magic3' x='139' y='348' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>
				<image id='item_magic4' x='207' y='212' w='68' h='68' image='3020110000'  revmsg='true' enable='false'/>
				<image id='item_magic5' x='207' y='280' w='68' h='68' image='3020110000'  revmsg='true' enable='false'/>
				<image id='item_magic6' x='207' y='348' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>
				<image id='item_magic7' x='436' y='212' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>
				<image id='item_magic8' x='436' y='280' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>
				<image id='item_magic9' x='436' y='348' w='68' h='68' image='3020110000'  revmsg='true' enable='false'/>
				<image id='item_magic10' x='504' y='212' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>
				<image id='item_magic11' x='504' y='280' w='68' h='68' image='3020110000' revmsg='true' enable='false'/>
				<image id='item_magic12' x='504' y='348' w='68' h='68' image='3020110000'  revmsg='true' enable='false'/>
				
				<button id='close' image='1803400011' x='865' y='40' w='34' h='33' OnLButtonUp='TreasureWnd.closeWnd' revmsg='true'/>
				<button id='btn_itemExc' image='1803500061' x='450' y='88' w='89' h='22' OnLButtonUp='TreasureWnd.getList' revmsg='true'/>
				<button id='Btn_TreBag' image='1803500035' x='605' y='85' w='123' h='56' OnLButtonUp='TreasureWnd.ShowTreBag' revmsg='true'/>
				<button id='Btn_Recharge' image='1803500039' x='725' y='85' w='123' h='56' OnLButtonUp='TreasureWnd.ReCharge' revmsg='true'/>
				<button id='btnSeek1' image='1803500020' x='90' y='380' w='116' h='44' OnLButtonUp='TreasureWnd.Seek' revmsg='true'/>
				<button id='btnSeek2' image='1803500024' x='256' y='380' w='116' h='44' OnLButtonUp='TreasureWnd.Seek' revmsg='true'/>
				<button id='btnSeek3' image='1803500028' x='422' y='380' w='116' h='44' OnLButtonUp='TreasureWnd.Seek' revmsg='true'/>
				<edit id='seek_yb1' x='100' y='430' w='200' h='20' revmsg='true' text='200元宝(暗金钥匙)' text_color ='#DDC615' enable='false'/>
				<edit id='seek_yb2' x='293' y='430' w='80' h='20' revmsg='true' text='1000元宝' text_color ='#DDC615' enable='false'/>
				<edit id='seek_yb3' x='459' y='430' w='80' h='20' revmsg='true' text='2000元宝' text_color ='#DDC615' enable='false'/> 
				<richedit id='edit_MyTreasure1' x='620' y='180' w='220' h='20' revmsg='true' text=''/> 
				<richedit id='edit_MyTreasure2' x='620' y='205' w='220' h='20' revmsg='true' text=''/>
				<richedit id='edit_MyTreasure3' x='620' y='230' w='220' h='20' revmsg='true' text=''/>
				<richedit id='edit_MyTreasure4' x='620' y='255' w='220' h='20' revmsg='true' text=''/>
				<richedit id='edit_MyTreasure5' x='620' y='280' w='220' h='20' revmsg='true' text=''/>
				<richedit id='edit_sysTreasure1' x='620' y='335' w='220' h='20' revmsg='true' text=''/>
				<richedit id='edit_sysTreasure2' x='620' y='360' w='220' h='20' revmsg='true' text=''/>
				<richedit id='edit_sysTreasure3' x='620' y='385' w='220' h='20' revmsg='true' text=''/>
				<richedit id='edit_sysTreasure4' x='620' y='410' w='220' h='20' revmsg='true' text=''/>
				<richedit id='edit_sysTreasure5' x='620' y='435' w='220' h='20' revmsg='true' text=''/>
				<wnd id='TreasureBag_c' image='1803500010' x='904' y='40' w='444' h='469' esc_close='true' visible='false' drag='true' revmsg='true'>
					<image id='img_bag' image='1803500060' x='165' y='-15' w='138' h='45' revmsg='true' enable='false'/>
					<button id='btn_itemType1' image='1803500053' x='40' y='31' w='72' h='29' OnLButtonUp='TreasureWnd.ShowMyTreasureByType' revmsg='true' param='1' text='全 部'/>
					<button id='btn_itemType2' image='1803500053' x='115' y='31' w='72' h='29' OnLButtonUp='TreasureWnd.ShowMyTreasureByType' revmsg='true' param='2' text='道 具'/>
					<button id='btn_itemType3' image='1803500053' x='190' y='31' w='72' h='29' OnLButtonUp='TreasureWnd.ShowMyTreasureByType' revmsg='true' param='3' text='装 备'/>
					<itemctrl id='imageCtrl11' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='31' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl12' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='79' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl13' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='127' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl14' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='175' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl15' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='223' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl16' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='271' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl17' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='319' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl18' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='367' y='63' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl21' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='31' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl22' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='79' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl23' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='127' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl24' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='175' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl25' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='223' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl26' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='271' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl27' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='319' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl28' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='367' y='110' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl31' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='31' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl32' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='79' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl33' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='127' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl34' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='175' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl35' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='223' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl36' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='271' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl37' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='319' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl38' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='367' y='157' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl41' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='31' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl42' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='79' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl43' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='127' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl44' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='175' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl45' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='223' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl46' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='271' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl47' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='319' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl48' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='367' y='204' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl51' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='31' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl52' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='79' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl53' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='127' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl54' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='175' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl55' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='223' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl56' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='271' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl57' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='319' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl58' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='367' y='251' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl61' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='31' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl62' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='79' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl63' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='127' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl64' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='175' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl65' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='223' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl66' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='271' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl67' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='319' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl68' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='367' y='298' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl71' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='31' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl72' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='79' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl73' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='127' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl74' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='175' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl75' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='223' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl76' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='271' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl77' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='319' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<itemctrl id='imageCtrl78' use_back='1803500057' OnLButtonDbClick='TreasureWnd.clickItem' x='367' y='345' w='44' h='44' auto_manage='true' rbtn_use='true' enable='true' revmsg='true'/>
					<button id='btn_get' image='1803500045' x='200' y='400' w='107' h='41' OnLButtonUp='TreasureWnd.GetEquip' revmsg='true'/>
					<button id='btn_sort' image='1803500049' x='310' y='400' w='107' h='41' OnLButtonUp='TreasureWnd.SortBag' revmsg='true'/>
					<button id='btn_close' image='1803400011' x='405' y='4' w='26' h='26' OnLButtonUp='TreasureWnd.TreasureBag_c_closeWnd' revmsg='true'/>
					
					<button id='pagedown' image='1800000094' x='83' y='410' w='20' h='19' OnLButtonUp='TreasureWnd.pagedown' revmsg='true' enable='false' text_color='#C2B6A0'/>
					<button id='pageup' image='1800000098' x='171' y='410' w='20' h='19' OnLButtonUp='TreasureWnd.pageup' revmsg='true' text_color='#C2B6A0'/>
					<image id='pageimg' image='1800000279' x='109' y='402' w='58' h='34' check_point='0' revmsg='true'/>
					<richedit id='page' x='128' y='412' w='28' h='21' text='1/5' revmsg='true' font='system'/>
					<image id='TestWndChild_0' tip='双击领取物品' image='1800000297' x='36' y='405' w='27' h='30' revmsg='true'/>
				</wnd>
			</dialog>
		</form>";
		public function TreasureWnd()
		{
			main();
		}
		function main()
		{
			CL.GenFormByStringCacheSc(null,"TreasureWnd",ui);
		}
		var WndHandle = 0;
		var img_Num = [1801500161, 1801500162, 1801500163, 1801500164, 1801500165, 1801500166, 1801500167, 1801500168, 1801500169, 1801500170];
		//展示装备物品句柄
		var ITEM_TB = [0,0,0,0,0,0,0,0,0,0,0,0];
		//探宝个人所得编辑框句柄
		var EDIT_MYTREASURE = [0,0,0,0,0];
		//全服探宝记录句柄
		var EDIT_SYSTREASURE = [0,0,0,0,0];
		var IsInit = false;
		var DisplayEquip1 = {};
		var DisplayEquip2 = {};
		
		var TreasureBag_c_WndHandle = 0;
		var EquipTreasure = {}; 	//装备
		var ItemTreasure = {};	//道具
		var BTN_TabItem = {};		//上侧标签栏
		var myItemList = {};		//物品框
		var BtnTypeFlag = 0;		//分类标签（1.全部 2.道具 3.装备）
		var ClickItemHandle = 0;		//被点击的物品框位置索引（1 - 56）
		var ClickItemName = "";		//被点击的物品框KeyName
		var page = 1;
		var getitem = {};    //一键领取
		var TreasureBag_c_IsInit = false;
		var item_keyname = {};
		
		function UIInit(_GUIHandle)
		{
			WndHandle = _GUIHandle;
			for(var i = 1; i<13;i++)
			{
				ITEM_TB[i-1] = GetWindow(WndHandle, "item_tb" + i);
			}
			var handle = 0;
			if(!IsInit)
			{
				for(var i = 1; i<13;i++)
				{
					handle = GetWindow(_GUIHandle,"item_magic"+i);
					if(handle != 0)
					{
						GUI.ImageSetDrawCenter(handle,true);	
						GUI.ImageSetAnimateEnable(handle, true, 150);
						GUI.ImageSetTransfrom(handle, 7800, 8000,0);
					}
				}
			}
			for(var i = 1; i<6;i++)
			{
				EDIT_MYTREASURE[i-1] = GetWindow(WndHandle, "edit_MyTreasure" + i);
				EDIT_SYSTREASURE[i-1] = GetWindow(WndHandle, "edit_sysTreasure" + i);
			}
			var tb = [1, 5, 10];
			for(var i = 1; i<4;i++)
			{
				handle = GetWindow(_GUIHandle, "btnSeek" + i);
				if(handle != 0)
				{
					GUI.WndSetEnableM(handle, true);    //设置enable后要重新设置hint
					if(i==1)
					{
						GUI.WndSetHint(handle, "<font color='#B8A085'>消耗" + tb[i-1]*200 + "元宝(暗金钥匙)，赠送" + tb[i-1] +"点宝藏积分</font>");
					}else	{
						GUI.WndSetHint(handle, "<font color='#B8A085'>消耗" + tb[i-1]*200 + "元宝，赠送" + tb[i-1] +"点宝藏积分</font>");
					}
				}
			}
			UI.Lua_SubmitForm("TreasureHouse_s", "DataInform", "");
		}
		function ContentFill(data)
		{
			SetYB();//显示元宝数量
			DisplayEquip1 = data[1];
			DisplayEquip2 = data[2];
			if(!IsInit)
			{
				SetTreasure();//显示展示商品
				IsInit = true;
			}
			SetBzScore(data[3]);//显示宝藏积分
			MsgMyTreasureRecord(data[4]);//显示个人探宝所得
			SetTreasureMsg(data[5]);//显示全服探宝所得
			GUI.WndAddTimerBrief(WndHandle, 10000, "TreasureWnd.OnTimer");
			
			var handle_bag = GetWindow(WndHandle, "TreasureBag_c");
			var is_ture = GUI.WndGetVisible(handle_bag);
			GUI.WndSetVisible(handle_bag,false);
			if(is_ture)
			{
				//reset_two_relationWnd(_GUIHandle, handle_bag);
			}
		}
		function OnTimer(handle,timeid)
		{
			UI.Lua_SubmitForm("TreasureHouse_s","setTreasureMsg", "");
		}
		function SetYB()
		{
			for(var k = 1; k<10;k++)
			{
				ImageSetImageID(WndHandle, "img_ybNum" + k, -1);
				ImageSetImageID(WndHandle, "img_bzScoreNum" + k, -1);  //clear
			}
			if(CL.GetPlayerSelfProperty64(ROLE_PROP64_INGOT))
			{
				var yb = tonumber(LuaRet);
				if(yb == 0)
				{
					ImageSetImageID(WndHandle, "img_ybNum9", img_Num[9]);
					return;
				}
				var leftNum = 0;
				var tb_leftNum = [];
				var posFlag = 0;
				//逆向取数
				while(yb > 0)
				{
					leftNum = yb % 10;
					yb = math.floor(yb/10);
					if(leftNum == 0)
					{
						leftNum = 10;
					}
					tb_leftNum[posFlag] = leftNum;
					posFlag = posFlag + 1;
				}
				var startPoint = 9 - tb_leftNum.length + 1;
				var pointFlag = 0;
				for(var i = startPoint;i<10;i++)
				{
					ImageSetImageID(WndHandle, "img_ybNum" + i, img_Num[tb_leftNum[pointFlag]-1]);
					pointFlag = pointFlag + 1;
				}
			}
		}
		function SetBzScore(tbscore)
		{
			for(var k = 1; k<10;k++)
			{
				ImageSetImageID(WndHandle, "img_bzScoreNum" + k, -1);  //clear
			}
			var score = tonumber(tbscore);
			if(score == 0)
			{
				ImageSetImageID(WndHandle, "img_bzScoreNum9", img_Num[9]);
				return ;
			}
			var leftScore = 0;
			var tb_leftNum = [];
			var posFlag = 0;
			while(score > 0)
			{
				leftScore = score % 10;
				score = math.floor(score/10);
				if(leftScore == 0)
				{
					leftScore = 10;
				}
				tb_leftNum[posFlag] = leftScore;
				posFlag = posFlag + 1;
			}
			var startPoint = 9 - tb_leftNum.length + 1;
			var pointFlag = 0;
			for(var i = startPoint;i<10;i++)
			{
				ImageSetImageID(WndHandle, "img_bzScoreNum" + i, img_Num[tb_leftNum[pointFlag]-1]);
				pointFlag = pointFlag + 1;
			}
		}
		function SetTreasure()
		{
			var ZhiZunEquip = DisplayEquip1;       //display items 
			var BayeEquip = DisplayEquip2;
			var itemKeyname = "";
			for(var i = 1;i<ITEM_TB.length+1;i++)
			{
				if(i <= 6)
				{
					if(i < 4)
					{
						itemKeyname = ZhiZunEquip[i];
						RDItemCtrlSetGUIDataByKeyName(ITEM_TB[i-1], ZhiZunEquip[i], 1, false);
					}else if(CL.GetPlayerSelfPropBase(ROLE_PROP_SEX))
					{
						var sex = tonumber(LuaRet);
						itemKeyname = ZhiZunEquip[i][sex];
						RDItemCtrlSetGUIDataByKeyName(ITEM_TB[i-1], ZhiZunEquip[i][sex], 1, false);
					}
				}
				if(i > 6)
				{
					var j = i - 6;
					if(i != 10)
					{
						itemKeyname = BayeEquip[j];
						RDItemCtrlSetGUIDataByKeyName(ITEM_TB[i-1], BayeEquip[j], 1, false);
					}else if(CL.GetPlayerSelfPropBase(ROLE_PROP_SEX))
					{
						var sex = tonumber(LuaRet);
						itemKeyname = BayeEquip[j][sex];
						RDItemCtrlSetGUIDataByKeyName(ITEM_TB[i-1], BayeEquip[j][sex], 1, false);
					}
				}
				
				var Temp = CL.GetItemTemplateHandleByKeyName(itemKeyname);
				if(CL.GetItemTemplatePropByHandle(Temp,ITEM_PROP_COLOR))
				{
					if(LuaRet != null)
					{
						var color =  tostring(LuaRet);
						//紫   -- 黄  -- 红  -- 绿  --蓝
						if(color == "PURPLE")
						{
							ImageSetImageID(WndHandle,"magic1"+i,1891430004);
						}else if(color == "GOLD")
						{
							ImageSetImageID(WndHandle,"magic1"+i,1891430001);
						}else if(color == "RED")
						{
							ImageSetImageID(WndHandle,"magic1"+i,1891430000);
						}else if(color == "GREENG")
						{
							ImageSetImageID(WndHandle,"magic1"+i,1891430003);
						}else if(color == "BLUE")
						{
							ImageSetImageID(WndHandle,"magic1"+i,1891430002);
						}
					}
				}
			}
		}
		//探宝
		function Seek(_handle)
		{
			var yb = 0;
			for(var i = 1; i<4;i++)
			{
				var handle = GetWindow(WndHandle, "btnSeek" + i);
				if(handle == _handle)
				{
					if(i == 1)
					{
						yb = 200;
					}else if(i == 2)
					{
						yb = 1000;
					}else{
						yb = 2000;
					}
					
					if(i != 1)
					{
						if(handle != 0)
						{
							GUI.WndSetEnableM(handle, false);
						}
						CL.AddDelayTask("TreasureWnd.daojishi("+handle+");", 3000, 1);
					}
				}
			}
			if(yb != 0)
			{
				UI.Lua_SubmitForm("TreasureHouse_s", "seekTreasure", yb);
			}
		}
		function daojishi(handel)
		{
			GUI.WndSetEnableM(handel, true);
		}
		function MsgMyTreasureRecord(display)
		{
			if(display.length == 0)
			{
				return;
			}
			for(var i = 0; i<5;i++)
			{
				GUI.RichEditClear(EDIT_MYTREASURE[i]);
			}
			for(var i = 1; i<display.length+1;i++)
			{
				var modelHandle = CL.GetItemTemplateHandleByKeyName(display[i]);
				CL.GetItemTemplatePropByHandle(modelHandle, ITEM_PROP_NAME);
				var itemName = LuaRet;
				GUI.RichEditAppendString(EDIT_MYTREASURE[i-1], "获得了:#COLORCOLOR_RED#"+ itemName + "#COLOREND#");
			}
		}
		function SetTreasureMsg(str)
		{
			if(str.length == 0)
			{
				return;
			}
			for(var i = 0; i<5;i++)
			{
				GUI.RichEditClear(EDIT_SYSTREASURE[i])
			}
			var j = 0;
			for(var i = 1; i<str.length+1;i++)
			{
				var strs = str[i].split(":");
				var playerName = strs[0];
				var itemName = strs[1];
				var modelHandle = CL.GetItemTemplateHandleByKeyName(itemName);
				CL.GetItemTemplatePropByHandle(modelHandle, ITEM_PROP_NAME);
				itemName = LuaRet;
				GUI.RichEditAppendString(EDIT_SYSTREASURE[j], "#COLORCOLOR_BLUE#" + playerName + " #COLOREND#获得：#COLORCOLOR_RED#"+ itemName + "#COLOREND#");
				j = j + 1;
			}
		}
		function isTreasureBagOpen(itemList)
		{
			var handle_bag = GetWindow(WndHandle, "TreasureBag_c");
			var is_ture = GUI.WndGetVisible(handle_bag);
			if(is_ture)
			{
				var length1 = 0;
				var length2 = 0;
				for(var key in EquipTreasure)
				{
					length2 = length2+1;
				}
				var length3 = 0;
				for(var key in ItemTreasure)
				{
					length3 = length3+1;
				}
				length1 = length2 + length3;
				for(var i = 1; i<4;i++)
				{
					var _Handle =GetWindow(handle_bag,"btn_itemType"+i);
					if(_Handle!= 0)
					{
						var IsTrue = ButtonGetIsActivePageBtn(_Handle);
						if(IsTrue)
						{
							if(i == 1 && length1>(page*56-1))
							{
								page=page+1;
							}else if(i == 3 && length2>(page*56-1))
							{
								page=page+1;
							}else if(i == 2 && length3>(page*56-1))
							{
								page=page+1;
							}
						}
					}
				}
				SortTab(itemList);
			}else{
				GUI.WndSetVisible(handle_bag,true);
				TreasureBag_c_UIInit(handle_bag);
				//reset_two_relationWnd(_GUIHandle, handle_bag);
			}
		}
		//--道具兑换
		function getList(_handle)
		{
			UI.Lua_SubmitForm("Marks2Item_s","openExchangePage","");
		}
		//--宝藏仓库
		function ShowTreBag(_handle)
		{
			var handle_bag = GetWindow(WndHandle, "TreasureBag_c");
			var is_ture = GUI.WndGetVisible(handle_bag);
			if(!is_ture)
			{
				GUI.WndSetVisible(handle_bag,true);
				TreasureBag_c_UIInit(handle_bag);
			}else{
				GUI.WndSetVisible(handle_bag,false);
			}
		}
		//--立即充值
		function ReCharge(_handle)
		{
			if(CL.OpenUrlUseIEByType(3))
			{
				//-- coding there
			}
		}
		//--关闭窗口
		function closeWnd()
		{
			var handle = GetWindow(WndHandle,"TreasureBag_c");
			if(handle != 0)
			{
				GUI.WndSetVisible(handle_bag,false);
			}
			var handle = GetWindow(null,"TreasureWnd");
			if(handle != 0)
			{
				GUI.WndDelAllTimer(WndHandle);
				GUI.WndClose(handle);
			}
		}
		function Update2(tbScore, newDisplay, strDataBase)
		{
			var score = tonumber(tbScore);
			var chargeHandle = GetWindow(null, "Marks2Item_c");
			if(chargeHandle != 0)
			{
				UI.Asc_LuaDoString("Marks2Item_c.scoreUpdate",score);
			}
			SetYB();
			SetBzScore(score);
			MsgMyTreasureRecord(newDisplay);
			SetTreasureMsg(strDataBase);
			WndAddEffect(WndHandle,"TreasureWnd", 3000100400, 312, 274, 100, 1) ;
		}
		function Msg_Box()
		{
			luaMsgBox.newBox("探宝仓库", "宝藏仓库已满,请先清理仓库!", ["确定", "取消"], [0, 0], "");
		}
		function MsgAttention(tag)
		{
			//--tag 1：元宝不足 tag 2：金钱不足
			if(tonumber(tag) == 1)
			{
				luaMsgBox.newBox("元宝", "    很抱歉，您的元宝不足", ["前往充值", "取消"], ["TreasureWnd.chongz", "TreasureWnd.MsgOut"], "");
			}else{
				msg("next attention");
			}
		}
		function chongz(h)
		{
			CL.OpenUrlUseIEByType(3);
			luaWndClose(h);
		}
		function MsgOut(h)
		{
			luaWndClose(h);
		}
		function TreasureBag_c_UIInit(_GUIHandle)
		{
			GUI.WndSetPosM(_GUIHandle, 904, 40);
			TreasureBag_c_WndHandle = _GUIHandle;
			page = 1;
			for(var i = 1; i<4;i++)
			{
				BTN_TabItem[i] = GetWindow(TreasureBag_c_WndHandle, "btn_itemType" + i);
				if(!TreasureBag_c_IsInit)
				{
					GUI.ButtonSetStateTextColor(BTN_TabItem[i],0,MakeARGB(255, 107, 91, 80));
					GUI.ButtonSetStateTextColor(BTN_TabItem[i],2,MakeARGB(255, 206, 178, 98));
				}
			}
			for(var i = 1; i<8;i++)
			{
				myItemList[i] = {};
				for(var j = 1; j<9;j++)
				{
					myItemList[i][j] = GetWindow(TreasureBag_c_WndHandle, "imageCtrl" + i + j);  
					if(!TreasureBag_c_IsInit)
					{
						GUI.WndSetParam(myItemList[i][j], (i - 1) * 8 + j);
					}
				}
			}
			if(!TreasureBag_c_IsInit)
			{
				TreasureBag_c_IsInit = true;
			}
			GUI.ButtonSetIsActivePageBtn(BTN_TabItem[1], true);
			BtnTypeFlag = 1;
			//--reset_two_relationWnd(WndHandle, _GUIHandle);
			var handle = GetWindow("", "TreasureWnd,TreasureBag_c,btn_sort");
			if(handle != 0)
			{
				GUI.WndSetEnableM(handle, true);
			}
			UI.Lua_SubmitForm("TreasureBag_s", "getAllTreasure", "");
		}
		function clickItem(_handle)
		{
			var keyname = item_keyname[_handle];
			test("t1",keyname,item_keyname);
			if(keyname!=null && keyname!="")
			{
				ClickItemHandle = 0;
				ClickItemName = "";
				if(BtnTypeFlag == 1)
				{
					for(var key in EquipTreasure)
					{
						if(key == keyname)
						{
							ClickItemName = key;
							ClickItemHandle = _handle;
							UI.Lua_SubmitForm("TreasureBag_s", "getItem", key);
							break;
						}
					}
					for(var key in ItemTreasure)
					{
						if(key == keyname)
						{
							ClickItemName = key;
							ClickItemHandle = _handle;
							UI.Lua_SubmitForm("TreasureBag_s", "getItem", key);
							break;
						}
					}
				}else if(BtnTypeFlag == 2)
				{
					for(var key in ItemTreasure)
					{
						if(key == keyname)
						{
							ClickItemName = key;
							ClickItemHandle = _handle;
							UI.Lua_SubmitForm("TreasureBag_s", "getItem", key);
							break;
						}
					}
				}else if(BtnTypeFlag == 3)
				{
					for(var key in EquipTreasure)
					{
						if(key == keyname)
						{
							ClickItemName = key;
							ClickItemHandle = _handle;
							UI.Lua_SubmitForm("TreasureBag_s", "getItem", key);
							break;
						}
					}
				}
				if(ClickItemName!="")
				{
					for(var key in getitem)
					{
						if(key == ClickItemName)
						{
							//delete getitem[key];
							deleteProperty(getitem,key);
							break;
						}
					}
				}
			}
		}
		function RemoveAitem()
		{
			GUI.ItemCtrlClearItemData(ClickItemHandle);
			var model = CL.GetItemTemplateHandleByKeyName(ClickItemName);
			if(CL.GetItemTemplatePropByHandle(model, ITEM_PROP_TYPE))
			{
				var itemType = LuaRet;
				test("t2",itemType,ClickItemName);
				if(itemType == 1)
				{
					length = 0;
					for(var key in EquipTreasure)
					{
						length = length+1;
					}
					test("t3",EquipTreasure,length);
					if(length > 0)
					{
						for(var key in EquipTreasure)
						{
							if(key == ClickItemName)
							{
								//delete EquipTreasure[key];
								deleteProperty(EquipTreasure,key);
								test("t4",EquipTreasure);
								break;
							}
						}
					}
				}else{
					length = 0;
					for(var key in ItemTreasure)
					{
						length = length+1;
					}
					if(length > 0)
					{
						for(var key in ItemTreasure)
						{
							if(key == ClickItemName)
							{
								//delete ItemTreasure[key];
								deleteProperty(ItemTreasure,key);
								break;
							}
						}
					}
				}
			}
		}
		
		function SortTab(itemList)
		{
			ClearTreasureBag();
			EquipTreasure = {};
			ItemTreasure = {};
			var tb_type = 1;
			var key = "";
			var obj = {};
			for(var i in itemList)
			{
				obj = itemList[i];
				key = obj[1];
				var mouldHandle = CL.GetItemTemplateHandleByKeyName(key);
				if(CL.GetItemTemplatePropByHandle(mouldHandle, ITEM_PROP_TYPE))
				{
					tb_type = LuaRet;
					if(tb_type == 1)
					{
						EquipTreasure[key]=obj[2];
					}else{
						ItemTreasure[key]=obj[2];
					}
				}
			}
			pagefun();
		}
		function SortMyTreasure(itemList)
		{
			//--每次调用前清空
			item_keyname = {};
			EquipTreasure = {};
			ItemTreasure = {};
			getitem = {};
			var tb_handel = {};
			var tb_type = 1;
			var a = 1;
			for(var i = 1; i<8;i++)
			{
				for(var j = 1; j<9;j++)
				{
					GUI.ItemCtrlClearItemData(myItemList[i][j]);
					//GUI.WndDbClick(myItemList[i][j]);
					tb_handel[a] = myItemList[i][j];
					a = a + 1;
				}
			}
			var key = "";
			var obj = {};
			for(var i in itemList)
			{
				obj = itemList[i];
				key = obj[1];
				var mouldHandle = CL.GetItemTemplateHandleByKeyName(key);
				if(CL.GetItemTemplatePropByHandle(mouldHandle, ITEM_PROP_TYPE))
				{
					tb_type = LuaRet;
				}
				if(tb_type == 1)
				{
					EquipTreasure[key] = obj[2];
				}else{
					ItemTreasure[key] = obj[2];
				}
			}			
			var i = 1;
			var index = (page-1)*56;
			var endIndex = (page)*56;
			for(var key in EquipTreasure)
			{
				if(i>index && i<=endIndex)
				{
					getitem[key]=EquipTreasure[key];
					RDItemCtrlSetGUIDataByKeyName(tb_handel[i-index], key, EquipTreasure[key], false);
					test("t5",i-index,tb_handel[i-index],tb_handel,item_keyname,key);
					item_keyname[tb_handel[i-index]] = key;
				}				
				i = i +1;
			}
			for(var key in ItemTreasure)
			{
				if(i>index && i<=endIndex)
				{
					getitem[key]=ItemTreasure[key];
					RDItemCtrlSetGUIDataByKeyName(tb_handel[i-index], key, ItemTreasure[key], false);
					test("t6",i-index,tb_handel[i-index],tb_handel,item_keyname,key);
					item_keyname[tb_handel[i-index]] = key;
				}				
				i = i +1;
			}
			BtnTypeFlag = 1;
			for(var i = 1; i<4;i++)
			{
				if(BTN_TabItem[i] != 0)
				{
					if(i == 1)
					{
						GUI.ButtonSetIsActivePageBtn(BTN_TabItem[i], true);
					}else{
						GUI.ButtonSetIsActivePageBtn(BTN_TabItem[i], false);
					}
				}
			}
		}
		//清空宝藏仓库
		function ClearTreasureBag()
		{
			for(var i = 1; i<8;i++)
			{
				for(var j = 1; j<9;j++)
				{
					GUI.ItemCtrlClearItemData(myItemList[i][j]);
					//GUI.WndDbClick(myItemList[i][j]);
					//--GUI.WndRegistScript(myItemList[i][j], RDWndBaseCL_mouse_lbDbClick, "TreasureWnd.clickItem")
				}
			}
		}
		function ShowMyTreasureByType(_handle)
		{
			ClearTreasureBag();
			item_keyname={};
			getitem = {};
			Update(_handle);
			var btn_type = GUI.WndGetParam(_handle);
			//--收集物品框句柄
			var tbb_handel = {};
			var a = 1;
			for(var i = 1; i<8;i++)
			{
				for(var j = 1; j<9;j++)
				{
					tbb_handel[a] = myItemList[i][j];
					a = a + 1;
				}
			}
			//--1为全部，2为其他，3为装备
			var i = 1;
			var index = (page-1)*56;
			var endIndex = (page)*56;
			if(btn_type == 1)
			{
				for(var key in EquipTreasure)
				{
					if(i>index && i<=endIndex)
					{
						getitem[key]=EquipTreasure[key];
						RDItemCtrlSetGUIDataByKeyName(tbb_handel[i-(page-1)*56], key, EquipTreasure[key], false);
						test("t7",i-(page-1)*56,tbb_handel[i-(page-1)*56],tbb_handel,item_keyname,key);
						item_keyname[tbb_handel[i-(page-1)*56]] = key;
					}
					i = i + 1;
				}
				for(var key in ItemTreasure)
				{
					if(i>index && i<=endIndex)
					{
						getitem[key]=ItemTreasure[key];
						RDItemCtrlSetGUIDataByKeyName(tbb_handel[i-(page-1)*56], key, ItemTreasure[key], false);
						test("t8",i-(page-1)*56,tbb_handel[i-(page-1)*56],tbb_handel,item_keyname,key);
						item_keyname[tbb_handel[i-(page-1)*56]] = key;
					}
					i = i + 1;
				}
			}else if(btn_type == 2)
			{
				for(var key in ItemTreasure)
				{
					if(i>index && i<=endIndex)
					{
						getitem[key]=ItemTreasure[key];
						RDItemCtrlSetGUIDataByKeyName(tbb_handel[i-(page-1)*56], key, ItemTreasure[key], false);
						test("t9",i-(page-1)*56,tbb_handel[i-(page-1)*56],tbb_handel,item_keyname,key);
						item_keyname[tbb_handel[i-(page-1)*56]] = key;
					}
					i = i + 1;
				}
			}else{
				for(var key in EquipTreasure)
				{
					if(i>index && i<=endIndex)
					{
						getitem[key]=EquipTreasure[key];
						RDItemCtrlSetGUIDataByKeyName(tbb_handel[i-(page-1)*56], key, EquipTreasure[key], false);
						test("t10",i-(page-1)*56,tbb_handel[i-(page-1)*56],tbb_handel,item_keyname,key);
						item_keyname[tbb_handel[i-(page-1)*56]] = key;
					}
					i = i + 1;
				}
			}
		}
		function pagedown()
		{
			if(page >1)
			{
				page = page-1;
				pagefun();
			}
		}
		function pageup()
		{
			if(page<5)
			{
				page = page+1;
				pagefun();
			}
		}
		function pagefun()
		{
			var _Handle =GetWindow(WndHandle,"TreasureBag_c,pagedown");
			if(page == 1)
			{
				GUI.WndSetEnableM(_Handle, false);
			}else{ 
				GUI.WndSetEnableM(_Handle, true);
			}
			_Handle =GetWindow(WndHandle,"TreasureBag_c,pageup");
			if(page == 5)
			{
				GUI.WndSetEnableM(_Handle, false);
			}else{
				GUI.WndSetEnableM(_Handle, true);
			}
			
			_Handle =GetWindow(WndHandle,"TreasureBag_c,page");   
			if(_Handle != 0)
			{
				GUI.RichEditClear(_Handle);
				GUI.RichEditAppendString(_Handle,page+"/5");
			}
			for(var i = 1; i<4;i++)
			{
				_Handle =GetWindow(WndHandle,"TreasureBag_c,btn_itemType"+i);
				var Is_true = ButtonGetIsActivePageBtn(_Handle);
				if(Is_true)
				{
					ShowMyTreasureByType(_Handle);
				}
			}
		}
		function GetEquip()
		{
			UI.Lua_SubmitForm("TreasureBag_s", "getTreasure",serialize(getitem));
		}
		function SortBag(_handle)
		{
			page = 2;
			pagedown();
		}
		function Update(_handle)
		{
			for(var i in BTN_TabItem)
			{
				if(BTN_TabItem[i] == _handle)
				{
					GUI.ButtonSetIsActivePageBtn(_handle, true);
					BtnTypeFlag = i;
				}else{
					GUI.ButtonSetIsActivePageBtn(BTN_TabItem[i], false);
				}
			}
		}
		function BagMsg_Box(msg)
		{
			luaMsgBox.newBox("探宝仓库", msg, ["确定", "取消"], [0, 0], "");
		}
		//关闭窗口
		function TreasureBag_c_closeWnd()
		{		
			var handle_house = GetWindow(null, "TreasureWnd");
			//reset_two_relationWnd(handle_house, 0)
			var handle = GetWindow(handle_house,"TreasureBag_c");
			if(handle != 0)
			{
				GUI.WndSetVisible(handle,false);
			}	
		}
	}
}