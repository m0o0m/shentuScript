NewbeeGuide={}
local ui="<form><dialog OnInit='NewbeeGuide.UIInit' center='true' drag='true' esc_close='true' h='504' id='NewbeeGuideWnd' image='1806500000' revmsg='true' w='722' x='206' y='14'>"
	ui=ui.."	<image check_point='0' enable='fasle' h='27' id='title' image='1806800027' parent='NewbeeGuideWnd' revmsg='true' w='95' x='309' y='7' />"
	ui=ui.."	<button OnLButtonUp='NewbeeGuide.closeWnd' h='35' id='btnClose' image='1803700030' parent='NewbeeGuideWnd' revmsg='true' w='30' x='668' y='8' />"
	ui=ui.."	<image check_point='0' h='427' id='backImg' image='1806800000' parent='NewbeeGuideWnd' revmsg='true' w='652' x='35' y='57' />"
	ui=ui.."	<image check_point='0' h='161' id='intro1' image='1806800001' parent='NewbeeGuideWnd' revmsg='true' w='658' x='32' y='56' />"
	ui=ui.."	<image check_point='0' h='161' id='intro2' image='1806800002' parent='NewbeeGuideWnd' revmsg='true' visible='false' w='658' x='32' y='56' />	"
	ui=ui.."	<image check_point='0' h='161' id='intro3' image='1806800003' parent='NewbeeGuideWnd' revmsg='true' visible='false' w='658' x='32' y='56' />"
	ui=ui.."	<image check_point='0' h='161' id='intro4' image='1806800004' parent='NewbeeGuideWnd' revmsg='true' visible='false' w='658' x='32' y='56' />"
	ui=ui.."	<image check_point='0' h='161' id='intro5' image='1806800005' parent='NewbeeGuideWnd' revmsg='true' visible='false' w='658' x='32' y='56' />"
	ui=ui.."	<button OnLButtonUp='NewbeeGuide.showInfo' h='46' id='wants1' image='1806800006' param='1' parent='NewbeeGuideWnd' revmsg='true' text_color='#C2B6A0' w='141' x='42' y='224' />"
	ui=ui.."	<button OnLButtonUp='NewbeeGuide.showInfo' h='46' id='wants2' image='1806800010' param='2' parent='NewbeeGuideWnd' revmsg='true' text_color='#C2B6A0' w='141' x='42' y='276' />"
	ui=ui.."	<button OnLButtonUp='NewbeeGuide.showInfo' h='46' id='wants3' image='1806800014' param='3' parent='NewbeeGuideWnd' revmsg='true' text_color='#C2B6A0' w='141' x='42' y='328' />"
	ui=ui.."	<button OnLButtonUp='NewbeeGuide.showInfo' h='46' id='wants4' image='1806800018' param='4' parent='NewbeeGuideWnd' revmsg='true' text_color='#C2B6A0' w='141' x='42' y='380' />"
	ui=ui.."	<button OnLButtonUp='NewbeeGuide.showInfo' h='46' id='wants5' image='1806800022' param='5' parent='NewbeeGuideWnd' revmsg='true' text_color='#C2B6A0' w='141' x='42' y='432' />"
	ui=ui.."	<edit font='system' h='15' id='text1' parent='NewbeeGuideWnd' revmsg='true' text='途径' text_color='#F1B875' w='28' x='246' y='227' />"
	ui=ui.."	<edit font='system' h='15' id='text2' parent='NewbeeGuideWnd' revmsg='true' text='推荐星级' text_color='#F1B875' w='52' x='416' y='227' />"
	ui=ui.."	<edit font='system' h='15' id='text3' parent='NewbeeGuideWnd' revmsg='true' text='操作' text_color='#F1B875' w='28' x='604' y='227' />"
	ui=ui.."	"
	ui=ui.."	"
	ui=ui.."	<wnd h='227' id='listView1' parent='NewbeeGuideWnd' revmsg='true' scroll='true' w='500' x='187' y='251'>"
	ui=ui.."		<wnd h='38' id='content1' image='1806800026' parent='NewbeeGuideWnd,listView1' revmsg='true' w='478' x='0' y='0'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView1,content1' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName1' parent='NewbeeGuideWnd,listView1,content1' revmsg='true' text='【探宝系统】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star11' image='1806700026' parent='NewbeeGuideWnd,listView1,content1' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star12' image='1806700026' parent='NewbeeGuideWnd,listView1,content1' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star13' image='1806700026' parent='NewbeeGuideWnd,listView1,content1' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star14' image='1806700026' parent='NewbeeGuideWnd,listView1,content1' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star15' image='1806700026' parent='NewbeeGuideWnd,listView1,content1' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='1' parent='NewbeeGuideWnd,listView1,content1' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content2' image='1806800026' parent='NewbeeGuideWnd,listView1' revmsg='true' w='478' x='0' y='39'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView1,content2' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName2' parent='NewbeeGuideWnd,listView1,content2' revmsg='true' text='【功勋除魔】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star21' image='1806700026' parent='NewbeeGuideWnd,listView1,content2' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star22' image='1806700026' parent='NewbeeGuideWnd,listView1,content2' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star23' image='1806700026' parent='NewbeeGuideWnd,listView1,content2' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star24' image='1806700026' parent='NewbeeGuideWnd,listView1,content2' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star25' image='1806700025' parent='NewbeeGuideWnd,listView1,content2' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='2' parent='NewbeeGuideWnd,listView1,content2' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content3' image='1806800026' parent='NewbeeGuideWnd,listView1' revmsg='true' w='478' x='0' y='78'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView1,content3' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName3' parent='NewbeeGuideWnd,listView1,content3' revmsg='true' text='【装备回收】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star31' image='1806700026' parent='NewbeeGuideWnd,listView1,content3' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star32' image='1806700026' parent='NewbeeGuideWnd,listView1,content3' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star33' image='1806700026' parent='NewbeeGuideWnd,listView1,content3' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star34' image='1806700026' parent='NewbeeGuideWnd,listView1,content3' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star35' image='1806700025' parent='NewbeeGuideWnd,listView1,content3' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='3' parent='NewbeeGuideWnd,listView1,content3' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content4' image='1806800026' parent='NewbeeGuideWnd,listView1' revmsg='true' w='478' x='0' y='117'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView1,content4' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName4' parent='NewbeeGuideWnd,listView1,content4' revmsg='true' text='【打怪挂机】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star41' image='1806700026' parent='NewbeeGuideWnd,listView1,content4' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star42' image='1806700026' parent='NewbeeGuideWnd,listView1,content4' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star43' image='1806700026' parent='NewbeeGuideWnd,listView1,content4' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star44' image='1806700025' parent='NewbeeGuideWnd,listView1,content4' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star45' image='1806700025' parent='NewbeeGuideWnd,listView1,content4' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='4' parent='NewbeeGuideWnd,listView1,content4' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."	</wnd>"
	ui=ui.."	"
	ui=ui.."	"
	ui=ui.."	<wnd h='227' id='listView2' parent='NewbeeGuideWnd' revmsg='true' scroll='true' visible='false' w='500' x='187' y='251'>"
	ui=ui.."		<wnd h='38' id='content1' image='1806800026' parent='NewbeeGuideWnd,listView2' revmsg='true' w='478' x='0' y='0'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView2,content1' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName1' parent='NewbeeGuideWnd,listView2,content1' revmsg='true' text='【探宝系统】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star11' image='1806700026' parent='NewbeeGuideWnd,listView2,content1' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star12' image='1806700026' parent='NewbeeGuideWnd,listView2,content1' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star13' image='1806700026' parent='NewbeeGuideWnd,listView2,content1' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star14' image='1806700026' parent='NewbeeGuideWnd,listView2,content1' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star15' image='1806700026' parent='NewbeeGuideWnd,listView2,content1' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='1' parent='NewbeeGuideWnd,listView2,content1' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content2' image='1806800026' parent='NewbeeGuideWnd,listView2' revmsg='true' w='478' x='0' y='39'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView2,content2' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName2' parent='NewbeeGuideWnd,listView2,content2' revmsg='true' text='【挑战BOSS】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star21' image='1806700026' parent='NewbeeGuideWnd,listView2,content2' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star22' image='1806700026' parent='NewbeeGuideWnd,listView2,content2' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star23' image='1806700026' parent='NewbeeGuideWnd,listView2,content2' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star24' image='1806700026' parent='NewbeeGuideWnd,listView2,content2' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star25' image='1806700026' parent='NewbeeGuideWnd,listView2,content2' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='2' parent='NewbeeGuideWnd,listView2,content2' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content3' image='1806800026' parent='NewbeeGuideWnd,listView2' revmsg='true' w='478' x='0' y='78'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView2,content3' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName3' parent='NewbeeGuideWnd,listView2,content3' revmsg='true' text='【熔炉系统】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star31' image='1806700026' parent='NewbeeGuideWnd,listView2,content3' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star32' image='1806700026' parent='NewbeeGuideWnd,listView2,content3' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star33' image='1806700026' parent='NewbeeGuideWnd,listView2,content3' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star34' image='1806700026' parent='NewbeeGuideWnd,listView2,content3' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star35' image='1806700026' parent='NewbeeGuideWnd,listView2,content3' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='3' parent='NewbeeGuideWnd,listView2,content3' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content4' image='1806800026' parent='NewbeeGuideWnd,listView2' revmsg='true' w='478' x='0' y='117'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView2,content4' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName4' parent='NewbeeGuideWnd,listView2,content4' revmsg='true' text='【成就勋章】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star41' image='1806700026' parent='NewbeeGuideWnd,listView2,content4' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star42' image='1806700026' parent='NewbeeGuideWnd,listView2,content4' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star43' image='1806700026' parent='NewbeeGuideWnd,listView2,content4' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star44' image='1806700026' parent='NewbeeGuideWnd,listView2,content4' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star45' image='1806700026' parent='NewbeeGuideWnd,listView2,content4' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='4' parent='NewbeeGuideWnd,listView2,content4' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."	</wnd>"
	ui=ui.."	"
	ui=ui.."	"
	ui=ui.."	<wnd h='227' id='listView3' parent='NewbeeGuideWnd' revmsg='true' scroll='true' visible='false' w='500' x='187' y='251'>"
	ui=ui.."		<wnd h='38' id='content1' image='1806800026' parent='NewbeeGuideWnd,listView3' revmsg='true' w='478' x='0' y='0'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView3,content1' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName1' parent='NewbeeGuideWnd,listView3,content1' revmsg='true' text='【精炼系统】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star11' image='1806700026' parent='NewbeeGuideWnd,listView3,content1' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star12' image='1806700026' parent='NewbeeGuideWnd,listView3,content1' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star13' image='1806700026' parent='NewbeeGuideWnd,listView3,content1' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star14' image='1806700026' parent='NewbeeGuideWnd,listView3,content1' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star15' image='1806700026' parent='NewbeeGuideWnd,listView3,content1' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='1' parent='NewbeeGuideWnd,listView3,content1' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content2' image='1806800026' parent='NewbeeGuideWnd,listView3' revmsg='true' w='478' x='0' y='39'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView3,content2' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName2' parent='NewbeeGuideWnd,listView3,content2' revmsg='true' text='【熔炉系统】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star21' image='1806700026' parent='NewbeeGuideWnd,listView3,content2' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star22' image='1806700026' parent='NewbeeGuideWnd,listView3,content2' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star23' image='1806700026' parent='NewbeeGuideWnd,listView3,content2' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star24' image='1806700026' parent='NewbeeGuideWnd,listView3,content2' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star25' image='1806700026' parent='NewbeeGuideWnd,listView3,content2' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='2' parent='NewbeeGuideWnd,listView3,content2' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content3' image='1806800026' parent='NewbeeGuideWnd,listView3' revmsg='true' w='478' x='0' y='78'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView3,content3' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName3' parent='NewbeeGuideWnd,listView3,content3' revmsg='true' text='【成就勋章】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star31' image='1806700026' parent='NewbeeGuideWnd,listView3,content3' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star32' image='1806700026' parent='NewbeeGuideWnd,listView3,content3' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star33' image='1806700026' parent='NewbeeGuideWnd,listView3,content3' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star34' image='1806700026' parent='NewbeeGuideWnd,listView3,content3' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star35' image='1806700026' parent='NewbeeGuideWnd,listView3,content3' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='3' parent='NewbeeGuideWnd,listView3,content3' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content4' image='1806800026' parent='NewbeeGuideWnd,listView3' revmsg='true' w='478' x='0' y='117'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView3,content4' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName4' parent='NewbeeGuideWnd,listView3,content4' revmsg='true' text='【BOSS积分】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star41' image='1806700026' parent='NewbeeGuideWnd,listView3,content4' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star42' image='1806700026' parent='NewbeeGuideWnd,listView3,content4' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star43' image='1806700026' parent='NewbeeGuideWnd,listView3,content4' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star44' image='1806700026' parent='NewbeeGuideWnd,listView3,content4' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star45' image='1806700026' parent='NewbeeGuideWnd,listView3,content4' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='4' parent='NewbeeGuideWnd,listView3,content4' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content5' image='1806800026' parent='NewbeeGuideWnd,listView3' revmsg='true' w='478' x='0' y='156'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView3,content5' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName5' parent='NewbeeGuideWnd,listView3,content5' revmsg='true' text='【神翼培养】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star51' image='1806700026' parent='NewbeeGuideWnd,listView3,content5' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star52' image='1806700026' parent='NewbeeGuideWnd,listView3,content5' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star53' image='1806700026' parent='NewbeeGuideWnd,listView3,content5' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star54' image='1806700026' parent='NewbeeGuideWnd,listView3,content5' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star55' image='1806700025' parent='NewbeeGuideWnd,listView3,content5' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='5' parent='NewbeeGuideWnd,listView3,content5' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd id='content8' image='1806800026' parent='NewbeeGuideWnd,listView3' x='0' y='195' w='478' h='38' revmsg='true' >"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView3,content8' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit id='wayName6' x='37' y='11' w='100' h='15' revmsg='true' text_color='#B8A085' text='【宝石镶嵌】' font='system'/>"
	ui=ui.."			<image id='star61' image='1806700026' parent='NewbeeGuideWnd,listView3,content8' x='198' y='7' w='22' h='21' check_point='0' revmsg='true'/>"
	ui=ui.."			<image id='star62' image='1806700026' parent='NewbeeGuideWnd,listView3,content8' x='221' y='7' w='22' h='21' check_point='0' revmsg='true'/>"
	ui=ui.."			<image id='star63' image='1806700026' parent='NewbeeGuideWnd,listView3,content8' x='244' y='7' w='22' h='21' check_point='0' revmsg='true'/>"
	ui=ui.."			<image id='star64' image='1806700026' parent='NewbeeGuideWnd,listView3,content8' x='267' y='7' w='22' h='21' check_point='0' revmsg='true'/>"
	ui=ui.."			<image id='star65' image='1806700025' parent='NewbeeGuideWnd,listView3,content8' x='290' y='7' w='22' h='21' check_point='0' revmsg='true'/>"
	ui=ui.."			<richedit id='moveTo' x='418' y='10' w='40' h='20' revmsg='true' text ='#SELECT#打开#SELECTEND#' OnLButtonUp='NewbeeGuide.moveTo' enable='true' param='8' text_color='#00FF00' font='system'/>"
	ui=ui.."		</wnd>"
	ui=ui.."		<wnd h='38' id='content6' image='1806800026' parent='NewbeeGuideWnd,listView3' revmsg='true' w='478' x='0' y='234'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView3,content6' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName6' parent='NewbeeGuideWnd,listView3,content6' revmsg='true' text='【角色转生】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star61' image='1806700026' parent='NewbeeGuideWnd,listView3,content6' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star62' image='1806700026' parent='NewbeeGuideWnd,listView3,content6' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star63' image='1806700026' parent='NewbeeGuideWnd,listView3,content6' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star64' image='1806700026' parent='NewbeeGuideWnd,listView3,content6' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star65' image='1806700025' parent='NewbeeGuideWnd,listView3,content6' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='6' parent='NewbeeGuideWnd,listView3,content6' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content7' image='1806800026' parent='NewbeeGuideWnd,listView3' revmsg='true' w='478' x='0' y='273'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView3,content7' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName7' parent='NewbeeGuideWnd,listView3,content7' revmsg='true' text='【功勋称号】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star71' image='1806700026' parent='NewbeeGuideWnd,listView3,content7' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star72' image='1806700026' parent='NewbeeGuideWnd,listView3,content7' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star73' image='1806700026' parent='NewbeeGuideWnd,listView3,content7' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star74' image='1806700026' parent='NewbeeGuideWnd,listView3,content7' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star75' image='1806700025' parent='NewbeeGuideWnd,listView3,content7' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='7' parent='NewbeeGuideWnd,listView3,content7' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>"
	ui=ui.."	</wnd>"
	ui=ui.."	"
	ui=ui.."	"
	ui=ui.."	<wnd h='227' id='listView4' parent='NewbeeGuideWnd' revmsg='true' scroll='true' visible='false' w='500' x='187' y='251'>"
	ui=ui.."		<wnd h='38' id='content1' image='1806800026' parent='NewbeeGuideWnd,listView4' revmsg='true' w='478' x='0' y='0'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView4,content1' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName1' parent='NewbeeGuideWnd,listView4,content1' revmsg='true' text='【装备回收】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star11' image='1806700026' parent='NewbeeGuideWnd,listView4,content1' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star12' image='1806700026' parent='NewbeeGuideWnd,listView4,content1' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star13' image='1806700026' parent='NewbeeGuideWnd,listView4,content1' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star14' image='1806700026' parent='NewbeeGuideWnd,listView4,content1' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star15' image='1806700026' parent='NewbeeGuideWnd,listView4,content1' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='1' parent='NewbeeGuideWnd,listView4,content1' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content2' image='1806800026' parent='NewbeeGuideWnd,listView4' revmsg='true' w='478' x='0' y='39'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView4,content2' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName2' parent='NewbeeGuideWnd,listView4,content2' revmsg='true' text='【无尽深渊】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star21' image='1806700026' parent='NewbeeGuideWnd,listView4,content2' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star22' image='1806700026' parent='NewbeeGuideWnd,listView4,content2' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star23' image='1806700026' parent='NewbeeGuideWnd,listView4,content2' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star24' image='1806700026' parent='NewbeeGuideWnd,listView4,content2' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star25' image='1806700026' parent='NewbeeGuideWnd,listView4,content2' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='2' parent='NewbeeGuideWnd,listView4,content2' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content3' image='1806800026' parent='NewbeeGuideWnd,listView4' revmsg='true' w='478' x='0' y='78'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView4,content3' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName3' parent='NewbeeGuideWnd,listView4,content3' revmsg='true' text='【野外刷怪】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star31' image='1806700026' parent='NewbeeGuideWnd,listView4,content3' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star32' image='1806700026' parent='NewbeeGuideWnd,listView4,content3' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star33' image='1806700026' parent='NewbeeGuideWnd,listView4,content3' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star34' image='1806700025' parent='NewbeeGuideWnd,listView4,content3' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star35' image='1806700025' parent='NewbeeGuideWnd,listView4,content3' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='3' parent='NewbeeGuideWnd,listView4,content3' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>"
	ui=ui.."	</wnd>"
	ui=ui.."	"
	ui=ui.."	"
	ui=ui.."	<wnd h='227' id='listView5' parent='NewbeeGuideWnd' revmsg='true' scroll='true' visible='false' w='500' x='187' y='251'>"
	ui=ui.."		<wnd h='38' id='content1' image='1806800026' parent='NewbeeGuideWnd,listView5' revmsg='true' w='478' x='0' y='0'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView5,content1' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName1' parent='NewbeeGuideWnd,listView5,content1' revmsg='true' text='【材料副本】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star11' image='1806700026' parent='NewbeeGuideWnd,listView5,content1' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star12' image='1806700026' parent='NewbeeGuideWnd,listView5,content1' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star13' image='1806700026' parent='NewbeeGuideWnd,listView5,content1' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star14' image='1806700026' parent='NewbeeGuideWnd,listView5,content1' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star15' image='1806700026' parent='NewbeeGuideWnd,listView5,content1' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='1' parent='NewbeeGuideWnd,listView5,content1' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content2' image='1806800026' parent='NewbeeGuideWnd,listView5' revmsg='true' w='478' x='0' y='39'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView5,content2' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName2' parent='NewbeeGuideWnd,listView5,content2' revmsg='true' text='【挑战BOSS】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star21' image='1806700026' parent='NewbeeGuideWnd,listView5,content2' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star22' image='1806700026' parent='NewbeeGuideWnd,listView5,content2' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star23' image='1806700026' parent='NewbeeGuideWnd,listView5,content2' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star24' image='1806700026' parent='NewbeeGuideWnd,listView5,content2' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star25' image='1806700026' parent='NewbeeGuideWnd,listView5,content2' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='2' parent='NewbeeGuideWnd,listView5,content2' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content3' image='1806800026' parent='NewbeeGuideWnd,listView5' revmsg='true' w='478' x='0' y='78'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView5,content3' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName3' parent='NewbeeGuideWnd,listView5,content3' revmsg='true' text='【无尽深渊】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star31' image='1806700026' parent='NewbeeGuideWnd,listView5,content3' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star32' image='1806700026' parent='NewbeeGuideWnd,listView5,content3' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star33' image='1806700026' parent='NewbeeGuideWnd,listView5,content3' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star34' image='1806700026' parent='NewbeeGuideWnd,listView5,content3' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star35' image='1806700025' parent='NewbeeGuideWnd,listView5,content3' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='3' parent='NewbeeGuideWnd,listView5,content3' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>		"
	ui=ui.."		<wnd h='38' id='content4' image='1806800026' parent='NewbeeGuideWnd,listView5' revmsg='true' w='478' x='0' y='117'>"
	ui=ui.."			<image check_point='0' h='38' id='elemBkImg' image='1806800026' parent='NewbeeGuideWnd,listView5,content4' revmsg='true' w='478' x='0' y='0' />"
	ui=ui.."			<edit font='system' h='15' id='wayName4' parent='NewbeeGuideWnd,listView5,content4' revmsg='true' text='【夜袭巫山城】' text_color='#B8A085' w='100' x='37' y='11' />"
	ui=ui.."			<image check_point='0' h='21' id='star41' image='1806700026' parent='NewbeeGuideWnd,listView5,content4' revmsg='true' w='22' x='198' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star42' image='1806700026' parent='NewbeeGuideWnd,listView5,content4' revmsg='true' w='22' x='221' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star43' image='1806700026' parent='NewbeeGuideWnd,listView5,content4' revmsg='true' w='22' x='244' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star44' image='1806700026' parent='NewbeeGuideWnd,listView5,content4' revmsg='true' w='22' x='267' y='7' />"
	ui=ui.."			<image check_point='0' h='21' id='star45' image='1806700025' parent='NewbeeGuideWnd,listView5,content4' revmsg='true' w='22' x='290' y='7' />"
	ui=ui.."			<richedit OnLButtonUp='NewbeeGuide.moveTo' enable='true' font='system' h='20' id='moveTo' param='4' parent='NewbeeGuideWnd,listView5,content4' revmsg='true' text='#SELECT#打开#SELECTEND#' text_color='#00FF00' w='40' x='418' y='10' />"
	ui=ui.."		</wnd>"
	ui=ui.."	</wnd>"
	ui=ui.."	</dialog>"
	ui=ui.."</form>"


function NewbeeGuide.main()
	local _Handle = GetWindow(0, "NewbeeGuideWnd")
	if _Handle ~= 0 then
		GUI:WndClose(_Handle)
	else
		GenFormByString(ui)
	end
end

--UI Logic Code Start
NewbeeGuide.WndHandle = 0
NewbeeGuide.index = 1
NewbeeGuide.hBtn = {}
NewbeeGuide.hIntro = {}
NewbeeGuide.hListView = {}
local handle_current_widget = 0
function NewbeeGuide.UIInit(_Parent)
	NewbeeGuide.WndHandle = _Parent
	for i = 1, 5 do
		NewbeeGuide.hBtn[i] = GUI:WndFindChildM(NewbeeGuide.WndHandle, "wants"..i)
		NewbeeGuide.hListView[i] = GUI:WndFindChildM(NewbeeGuide.WndHandle, "listView"..i)
		NewbeeGuide.hIntro[i] = GUI:WndFindChildM(NewbeeGuide.WndHandle, "intro"..i)
	end
	GUI:WndSetVisible(NewbeeGuide.hListView[1], true)
	GUI:WndSetVisible(NewbeeGuide.hIntro[1], true)
	GUI:ButtonSetIsActivePageBtn(NewbeeGuide.hBtn[1], true)
	for i = 2, 5 do
		GUI:WndSetVisible(NewbeeGuide.hListView[i], false)
		GUI:WndSetVisible(NewbeeGuide.hIntro[i], false)
		GUI:ButtonSetIsActivePageBtn(NewbeeGuide.hBtn[i], false)
	end
	local Handle = GetWindow(0, "RoleGUI")
	if Handle ~= 0 then
		reset_two_relationWnd(Handle, _Parent)
	end
end

function NewbeeGuide.showInfo(_handle)
	local param = GUI:WndGetParam(_handle)
	for i = 1, 5 do
		GUI:WndSetVisible(NewbeeGuide.hListView[i], false)
		GUI:WndSetVisible(NewbeeGuide.hIntro[i], false)
		GUI:ButtonSetIsActivePageBtn(NewbeeGuide.hBtn[i], false)
	end
	NewbeeGuide.index = param
	GUI:WndSetVisible(NewbeeGuide.hListView[NewbeeGuide.index], true)
	GUI:WndSetVisible(NewbeeGuide.hIntro[NewbeeGuide.index], true)
	GUI:ButtonSetIsActivePageBtn(NewbeeGuide.hBtn[NewbeeGuide.index], true)
end

function NewbeeGuide.closeWnd()
	if 0 ~= NewbeeGuide.WndHandle then
		GUI:WndClose(NewbeeGuide.WndHandle)
	end
	local Handle = GetWindow(0, "RoleGUI")
	if Handle ~= 0 then
		reset_two_relationWnd(Handle, 0)
	end
end

function NewbeeGuide.moveTo(_handle)
	local whichWay = GUI:WndGetParam(_handle)
	if 1 == NewbeeGuide.index then
		
		if 1 == whichWay then							UI:Lua_SubmitForm("TreasureHouse_s","openTreasureHouse", "")
		elseif 2 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "1")
		elseif 3 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "5") 
		elseif 4 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "6")
		end
	elseif 2 == NewbeeGuide.index then
		if 1 == whichWay then							UI:Lua_SubmitForm("TreasureHouse_s","openTreasureHouse", "")
		elseif 2 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "2")
		elseif 3 == whichWay then					UI:Lua_SubmitForm("等级判断表单","OnOpenFurnace","")
		elseif 4 == whichWay then					taskAchieve = 2 UI:Lua_SubmitForm("等级判断表单","OnAchieveWindow","") 
		end
	elseif 3 == NewbeeGuide.index then
		if 1 == whichWay then							UI:Lua_SubmitForm("等级判断表单","OnOpenForge","")
		elseif 2 == whichWay then					UI:Lua_SubmitForm("等级判断表单","OnOpenFurnace","")
		elseif 3 == whichWay then					taskAchieve = 2 UI:Lua_SubmitForm("等级判断表单","OnAchieveWindow","") 
		elseif 4 == whichWay then					taskBoss = 4 UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "2")
		elseif 5 == whichWay then					UI:Lua_SubmitForm("等级判断表单","OnOpenWing", "")
		elseif 6 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "4")
		elseif 7 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "16")
		elseif 8 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "15")
		end
	elseif 4 == NewbeeGuide.index then
		if 1 == whichWay then							UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "5")
		elseif 2 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "7")
		elseif 3 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "6")
		end
	elseif 5 == NewbeeGuide.index then
		if 1 == whichWay then							UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "8")
		elseif 2 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "2")
		elseif 3 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "7")	
		elseif 4 == whichWay then					UI:Lua_SubmitForm("NewbeeGuide_s", "NewbeeGuide_LevelJudge", "3")
		end
	end
	--NewbeeGuide.closeWnd()
end

NewbeeGuide.main()