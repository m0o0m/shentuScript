HandBook={} 
local ui = "<form> <dialog OnInit='HandBook.UIInit' id='HandBook' image='1804000006' x='360' y='130' w='738' h='526' esc_close='true' drag='true' >"
	.."	<image id='TestWndChild_1' image='1804000008' x='334' y='466' w='51' h='26' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1804000009' x='337' y='6' w='71' h='24' enable='false' revmsg='true'/>"
	.."	<check id='check' image='1804000010' x='593' y='471' w='25' h='20' checked='true' text='��ʾȫ��' OnCheckChange='HandBook.CheckChange' revmsg='true' text_color='#C2B6A0'/>"
	
	.."	<button id='button1' image='1803900026' x='-10' y='66' w='38' h='50' OnLButtonUp='HandBook.KindClick' revmsg='true'  param='1'/>"
	.."	<button id='button2' image='1803900026' x='-10' y='129' w='16' h='55' OnLButtonUp='HandBook.KindClick' revmsg='true'  param='2'/>"
	
	.."	<button id='left' image='1800000094' x='306' y='470' w='20' h='19' OnLButtonUp='HandBook.TurnPage' param='1' revmsg='true'/>"
	.."	<button id='right' image='1800000098' x='393' y='470' w='20' h='19' OnLButtonUp='HandBook.TurnPage' param='2' revmsg='true'/>"
	.."	<edit id='text1' x='1' y='73' w='16' h='50' canedit='false' revmsg='false' text='��\n��\n־' font='system'/>"
	.."	<edit id='text2' x='1' y='131' w='16' h='50' canedit='false' revmsg='false' text='��\n��\n־' font='system'/>"
	.."	<edit id='page' x='345' y='471' w='34' h='16' algin='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<button id='close' OnLButtonUp='HandBook.closed' image='1803700030' x='674' y='7' w='24' h='24' revmsg='true' text_color='#C2B6A0'/>"
	
	.."	<image id='TestWndChild_15' image='1804000005' x='28' y='39' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_22' image='1804000005' x='163' y='39' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_26' image='1804000005' x='298' y='39' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_29' image='1804000005' x='433' y='39' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_32' image='1804000005' x='568' y='39' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_59' image='1804000005' x='28' y='173' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_60' image='1804000005' x='163' y='173' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_61' image='1804000005' x='298' y='173' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_62' image='1804000005' x='433' y='173' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_63' image='1804000005' x='568' y='173' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_79' image='1804000005' x='28' y='304' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_80' image='1804000005' x='163' y='304' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_81' image='1804000005' x='298' y='304' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_82' image='1804000005' x='433' y='304' w='145' h='140' enable='false'/>"
	.."	<image id='TestWndChild_83' image='1804000005' x='568' y='304' w='145' h='140' enable='false'/>"
	
	.."	<itemctrl id='itemctrl1' x='65' y='61' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl2' x='202' y='61' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl3' x='339' y='61' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl4' x='473' y='61' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl5' x='608' y='61' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl6' x='65' y='195' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl7' x='202' y='195' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl8' x='339' y='195' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl9' x='473' y='195' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl10' x='608' y='195' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl11' x='65' y='326' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl12' x='202' y='326' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl13' x='339' y='326' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl14' x='473' y='326' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemctrl15' x='608' y='326' w='59' h='60' use_back='1804000007' enable='true' revmsg='true'/>"

	.."	<edit id='level1' x='28' y='138' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level2' x='163' y='138' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level3' x='298' y='138' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level4' x='433' y='138' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level5' x='568' y='138' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level6' x='28' y='272' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level7' x='163' y='272' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level8' x='298' y='272' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level9' x='433' y='272' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level10' x='568' y='272' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level11' x='28' y='403' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level12' x='163' y='403' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level13' x='298' y='403' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level14' x='433' y='403' w='145' h='14' align='center' revmsg='true' font='system'/>"
	.."	<edit id='level15' x='568' y='403' w='145' h='14' align='center' revmsg='true' font='system'/>"
	
	.."	<edit id='name1' x='28' y='150' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name2' x='163' y='150' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name3' x='298' y='150' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name4' x='433' y='150' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name5' x='568' y='150' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name6' x='28' y='284' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name7' x='163' y='284' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name8' x='298' y='284' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name9' x='433' y='284' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name10' x='568' y='284' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name11' x='28' y='415' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name12' x='163' y='415' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name13' x='298' y='415' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name14' x='433' y='415' w='145' h='18' align='center' revmsg='true' font='system'/>"
	.."	<edit id='name15' x='568' y='415' w='145' h='18' align='center' revmsg='true' font='system'/>"
	
	.."	<image id='image1' x='98' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='image2' x='236' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='image3' x='373' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='image4' x='505' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='image5' x='641' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='image6' x='98' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='image7' x='236' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='image8' x='373' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='image9' x='505' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='image10' x='641' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='image11' x='98' y='356' w='77' h='84' revmsg='true'/>"
	.."	<image id='image12' x='236' y='356' w='77' h='84' revmsg='true'/>"
	.."	<image id='image13' x='373' y='356' w='77' h='84' revmsg='true'/>"
	.."	<image id='image14' x='505' y='356' w='77' h='84' revmsg='true'/>"
	.."	<image id='image15' x='641' y='356' w='77' h='84' revmsg='true'/>"
	
	.."	<image id='head1' x='98' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='head2' x='236' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='head3' x='373' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='head4' x='505' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='head5' x='641' y='91' w='77' h='84' revmsg='true'/>"
	.."	<image id='head6' x='98' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='head7' x='236' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='head8' x='373' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='head9' x='505' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='head10' x='641' y='225' w='77' h='84' revmsg='true'/>"
	.."	<image id='head11' x='98' y='356' w='77' h='84' revmsg='true'/>"
	.."	<image id='head12' x='236' y='356' w='77' h='84' revmsg='true'/>"
	.."	<image id='head13' x='373' y='356' w='77' h='84' revmsg='true'/>"
	.."	<image id='head14' x='505' y='356' w='77' h='84' revmsg='true'/>"
	.."	<image id='head15' x='641' y='356' w='77' h='84' revmsg='true'/>"
	
	.." </dialog>"
	.."</form>"

function HandBook.main()
	local handle = GetWindow(nil,"HandBook")
	if handle ~= 0 then
		GUIWndClose(handle)
	else
		GenFormByString(ui)
	end
end

local Sboss_tab = {
	{"���ִ�","��","��","С��","��Щ�������������ֿɵõ�ʳ�ı鲼������������䡣"},
	{"���ִ�","¹","¹","С��","�����Ϻõ�Ƥë���׽ǵ�¹�����۴��������˼��˶��ᶯ�ġ�"},
	{"���ִ�","��é��","������","С��","�ڿ󶴷����ڰ�����Ŀ���֮��һЩ������������ĵ������ܵ���ħ������ɵķ���Ȼ���"},
	{"���ִ�","��Ƥ��","�๳è","С��","��Щ�ɰ���Ƥ�ĺ��Ӿ�����Ⱥ��͵ʳ���������ʳ��"},
	{"��","ʬ��","ʬ��","С��","���ڰ�������а������������������ʬ����Ĺ�ͷ�������Ⱦ�̶������ӵ�зǳ��ֲ���������"},
	{"��","������ʬ","ĹѨ��ʬ","С��","���ڰ�������а������������������ʬ����Ŀ󹤣���Щ�����ʬ����������Ϊ�Լ���������"},
	{"��","���ؽ�ʬ","��֫��ʬ","С��","���ڰ�������а������������������ʬ����Ŀ󹤣������ж����ض���������Ϣ��ʱ��׼��������һλ�ܺ��ߡ�"},
	{"��","��ʬ","��ʬ","С��","���ڰ�������а������������������ʬ����Ŀ󹤣���Ⱥ���Ե���ʬ����ǿ�ҵļ����У����еؿ������ʵ����⡣"},
	{"��","������","���þ���","С��","���ڰ�������а���������������ȥ���ľ���ħ�����ã�ͳ�����������ô����"},
	{"��","�󶴷ɶ�","ɽ������","С��","���ڰ�������а���������������þ޴󻯵�а��ɶ꣬�ܹ����׽�һ���������˵���"},
	{"��","������ʿ","����ս��","С��","���ڰ�������а���������������ȥ����ħ�����ã���ǰ����С��������ϰ��֮�ˡ�"},
	{"��","����սʿ","����սʿ","С��","���ڰ�������а���������������ȥ����ħ�����ã���ǰ������ʳ���׵�׳����"},
	{"��","������","����","С��","��ʳ�˿��ڱ�������������������棬ֻ������һҧ���Ϳ��Խ����˵�С����ȫ��ҧ����"},
	{"��","Ы��","Ы��","С��","��ʳ�˿��ڱ����������������Ы�ӣ�֫��ʬ�������ǵĳ��"},
	{"��","����","����","С��","���ڰ�������а���������������ȥ����ħ�����ã���Щ���������Ѿ����õ���ȫ�����������԰׹ǵ���̬�����ǻ��ڿ��ڡ�"},
	
	{"��ɽ��","���","���","С��","��Ƥ����������ӣ�����͵��ʳ���Լ���Ϸ·������Ů��"},
	{"��ɽ��","��éħ��","��é��","С��","���ڰ�����Ӱ�����İ�é�ˣ�ħ�������Ƕ������ŷǱ�Ѱ������������"},
	{"��ɽ��","��é����","��é����","С��","������������������Ǻ��Ե������������Ȼ�ӵ������𣬶Բ�����������������һ����"},
	{"��ɽ��","ľ����","ľ����","С��","�ڿ󶴷����ڰ�����Ŀ���֮��һЩԭ��������ʦ����֮�õ�ľ�߻�������Щ����ħ�Եķ���Ȼ���"},
	
	{"���涴","�ڰ�����","ǯ��","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ������ľ޴����棬ӵ��һ�������޴��ǯ�ӡ�"},
	{"���涴","ɱ�˷�","������","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ������Ķ��䣬���Ǳ����β������ڴ����ܺ�������֮���ٴΰγ�����"},
	{"���涴","���","���","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ������ľ޴���򼣬ֻ������һ�ڣ��Ϳ��Խ�һֻˮţ˲�������"},
	{"���涴","�ڰ�������","а��ǯ��","С��","�ڰ�������������ͬ��Ͷ�����������Ⱦ��������������α���Ĺ��ǯ�ӵ�����֮�󣬿��Խ���ʯҧ�顣"},
	{"���涴","��ɫ����","��ɫ����","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ����������棬����˶�������֮�⣬����ͻ��������Ĵ̿������׵ش̴����ɡ�"},
	{"���涴","�ڰ����","�������","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ���������棬����һ��ԭ�ȵ���ʳϰ��ת��ϲ����ʳ���ʵ�Ѫ�⡣"},
	
	{"ʳ�˶�Ѩ","ʳ������","ʳ������","С��","��Щϲ����������Ĺ��ﾭ�����������������֮�����˷�ָ��"},
	{"ʳ�˶�Ѩ","ʳ�˶�ħ","ʳ�˶�ħ","С��","���ڶ�����������Ⱥã����಻�ò���������һ֧�������ר�ŶԸ���Щ���˵Ĺ��"},
	{"ʳ�˶�Ѩ","ʳ��Ы��","ʳ��Ы��","С��","��Щ���Ե�����Ы��״�Ķ�ħӵ�м�̹⻬������������к�ħ�����޷���͸��"},
	{"ʳ�˶�Ѩ","����","ʳ�˶���","С��","����ԭ�������ڶ��ڵĶ����ܵ���ħ�����ĸ�Ⱦ�������Ѿ��ɳ�Ϊ�����ž޳�ɢ���Ŷ��۵Ĺ��"},
	
	{"�����","�����ʿ","�����ʿ","С��","��Щ���ڰ�ɱ�͹�ƵĴ̿��ܵ���Ľ����Ĺƻ�һ���ػ��������"},
	{"�����","��Ļ���","��Ļ���","С��","�������ʿ��ѡ��������һ����Ӣ������ӵ����һ��ʮ��ʵ����"},
	{"�����","���ս��","���ս��","С��","ս���պյĴ̿�ͷĿ��Ϊ���µ�������Ľ��"},
	{"�����","��Ķ�ͳ","��Ķ�ͳ","С��","�����Ľ��������ͳ�켶�̿ͣ��������飬���������¶�����������һ����һ�ε���Ϯ��"},
	{"�����","�����ʿ","�����ʿ","С��","ӵ�����ϵ������ػ��Ŵ���Լ���Ľ�������ʵ��ʿ��"},
	
	{"а��","а������","���깭����","С��","�ٲ������а�����ֶ��Բ�����ʲôֵ�ÿ�ҫ���£����Ǿ�տ�ļ����ܹ�׼ȷ�����������˵���­��"},
	{"а��","а�����","�������","С��","��а�ʹ�ע��ǿ������֮�»��������������һ������������ʯ����˲���ɱ�����ߡ�"},
	{"а��","а����ʿ","������ʿ","С��","�ڽ����˺ڰ���а��֮��ڤ�����ʿ��������������ؽ��ÿһ�������ĵ��ˡ�"},
	{"а��","������","�������Ӭ","С��","��Щԭ��������а���ڵ�ԭס�����ܵ�ħ�������ĸ�ʴ������˼��˾�ҧ�Ĺ��"},
	
	{"ħ��Ͽ��","����֩��","����֩��","С��","����֩���ܵ���������ħ�Ĺƻ��÷���ұ��꣬��Ҫɱ��һ�������ߡ�"},
	{"ħ��Ͽ��","����֩��","����֩��","С��","����֩��ͨ���������Ǽ����ޱȵ�����˺����ǰ�������ߡ�"},
	{"ħ��Ͽ��","��Ӱ֩��","��Ӱ֩��","С��","���ֺ�������ʹ���޷����������֩�������ڲ�����֮��ʹ̴����ܺ��ߵĺ�����"},
	{"ħ��Ͽ��","����֩��","����֩��","С��","���������������С֩��ۼ�������Χ��ʱ�򣬾ͻᷢ�����ǻ����͵�������С������ɱʽ�ı�ըϮ���ݻ�һ������֮�С�"},
	{"ħ��Ͽ��","��ħ֩��","��ħ֩��","С��","�����ܹ������¹⻯Ϊ������֩��ԭ����һ�ַǳ���ϡ��֩�룬���Ǳ�������ħ��Ⱦ֮�����ͳ����������ȷ档"},
	{"ħ��Ͽ��","����֩��","����֩��","С��","����֩���ܹ������Լ����������Ѹ�ٵ�˺����һͷ����"},
	{"ħ��Ͽ��","Ѫ����","Ѫ����","С��","�ܵ�������ħ��Ӱ�죬��Щԭ��������˳��Գ������ŭĿԲ�������鱩��Ĺ��"},
	{"ħ��Ͽ��","Ѫ���","˫ͷ���","С��","һЩǿ׳��Ѫ�����ٶȱ�������ħħ�����޴�������������˲���������"},
	{"ħ��Ͽ��","Ѫħ","˫ͷѪħ","С��","Ѫħ��������ħ��Ϊ���ص�צ�������ǲ������飬�޼᲻�ݣ�������ħ�������Ժ����Ĵ��ڡ�"},
		

	{"ţħ��","ţ��ʿ","ţħսʿ","С��","ţ��ʿ��׼�����ս��������ʸ񣬼�ʹ������������Ҳӵ�в��׵�ʵ����"},
	{"ţħ��","ţսʿ","ţħ����","С��","��Щ��������һ����ս�ֿ�ħ�����ֵ�ţ��ʿӵ��ǿ�������ǣ����ڳ������е���ǰ�ߡ�"},
	{"ţħ��","ţ����","ţħ����","С��","ţ���������˽�ս��������·����Ϊ����Զ������������Ч�������������Ч����Ⱥ��"},
	{"ţħ��","ţ��ʦ","ţħ��ʦ","С��","��Щ������������ţͷ��ʦͬ���Ȱ���ƽ��ֻ�����ܵ���ħ�����������һֱ�����෨ʦ�Է����໥���⡣"},
	{"ţħ��","ţ����","ţͷħ","С��","ţ������������ǧ������۳��ݺ����֮�䣬Ϊ���˵����ɺ�����ɨƽ�ϰ������Ĳ�����ά����ţħ����"},
	{"ţħ��","ţ��ʦ","ţħ��˾","С��","��Щ��ʦ�Ǽ�˾�Ǿ���ħ���Ľ�������ǲ�����ͨռ�������ģ�Ҳѧ���������ޱȵķ�����"},
	
	{"��ҹ֮��","��Ѫ��ʬ","���齩ʬ","С��","��Щ������ս�����������ʬ�屻ħ��ע����Թ�������˽�ʬ��������Ҫ�����������ߡ�"},
	{"��ҹ֮��","����ʬ��","����ʬ��","С��","��Щ��ǰ����ǿ��սʿ��ʬ�壬��ħ������󲻶ϵ�Ѱ�����ʵĹ��⣬���������������ھ׽���ͷʱ����������Ц�⡣"},
	
	{"���Ƕ�","ħ���б�","���ô���","С��","��ǰ����ǿ׳�����Ŀ󹤣�����ɳ����֮���ֱ����޽�������������"},
	{"���Ƕ�","ħʬū��","���ó�ǹ��","С��","ɳ����������Щ���ǿ󹤵����ǣ�����ɳ����һֻֻ�����������ִӵص����˳�����"},
	{"���Ƕ�","ħ�ǿ���","���ù�����","С��","��������û��Թ��þò�ɢ���ڱ����޽���ע����ǰ��ʬ�����Щ�������ߵĿ�������վ��������"},
	{"���Ƕ�","ħ����ʿ","���õ�����","С��","ħ����ʿ�����޽�����Ϊ��������£����ǲб��Ҳ����赲�����ڽ��������������ƴӡ�"},
	
	{"��ħ����","Ұ����ʿ","��ħЫ��","С��","׷��������ħ���������ߣ�����ӵ�й����������ֻ������һȭ���ܹ����ұڴ��һ��������"},
	{"��ħ����","��ħ����","ǧ������","С��","����������ħ������ħ����һֱ�Ǳز����ٵ�ս����ʦ��������Ϊ���ǵĴ��ڣ�����ħ���ӵ���˿ֲ���������"},
	{"��ħ����","��ħ����","��ħ����","С��","һЩ��Զ��ԱȽϾ��ݵĶ�ʿ����ѡ����ʹ��Զ��������ħ��Ҳ��ϲ�ط�����Ч���ˡ�"},
	{"��ħ����","��ħ��ʿ","��ħ����","С��","��ս���µ���ħ��ʿһֱ����ħ������������������νý��������������������ս���и����������ǳ�����׼���"},
	
	{"���ĳ�","���Ķ���","ħ������","С��","���ּ��˾�ҧ�Ķ���һ���˼��˶����˱����֣���Ϊ�����������Ŀ��������д��̵Ĺ�צ��"},
	{"���ĳ�","��������","ħ��Ѫ��","С��","������֮������ʳ���ѷ��ĵط�����������������˵û��ʲô�����ǲ����ԳԵģ����ǻ�һ���Զ���ӵ�������ʳ����Ѫ�⡣"},
	{"���ĳ�","���ĵ���","ħ������","С��","ӵ����쵶���ĵ��������Ƿ�ɱ����ǰ�ߣ��������ǿ����õ����Ľ�������κ͹ػ���"},
	{"���ĳ�","��������","ħ������","С��","������֮��������ˣ��������Ѿ�������һ����ŷ�ɳҲ����׼���˵ı��졣"},
	{"���ĳ�","����ս��","ħ��ս��","С��","��Щ��ǿ��׳��ӵ�ж���ָ�Ӳ��ܵ�ս�������Ľ�����Ϊ��������¡�"},
	{"���ĳ�","������ʿ","ħ����ʿ","С��","�ܿ�����ҵ�������ʿ��Ƣ���ǳ����꣬���ǻ�˺���κ���֮���Ƶ���������������ǵ�ͬ�ࡣ"},
	{"���ĳ�","���ľ޶�","ħ���޶�","С��","���Ľ�����һЩ���ӹ�����ħ���Ժ���Щ���Ӿͱ�þ޴��ҷǳ����й����ԣ����ǵ���ʶҲ�����Ľ��������ơ�"},
	{"���ĳ�","���Ļ���","ħ��а��","С��","ͬ���Ǳ����Ľ���ע��ħ�ܵĲ�����Ļ�������ǿ���ͻ�������������"},
	{"���ĳ�","�����Ƽױ�","ħ���Ƽױ�","С��","�������������Ĺ����ܹ����׵ز�������˵����㣬ת�����ٰ��ڿ��ٴ��������Ĳ�λ����ͬɱ¾������Ч�ʡ�"},
	
	{"ɳĮ�ع�","ɳ��","���»���","С��","����β������ͨ��֮���ٻ�����ɳĮ�����ɱ���κο���ɳĮ�ع����������"},
	{"ɳĮ�ع�","ɳ��","���½ǳ�","С��","���ֱ���β����ͨ��֮���ٻ�����ɳĮ�����ڹ���������ʱ������������ʱʧ����"},
	{"ɳĮ�ع�","ɳĮ��ʿ","�ں�","С��","��ɳĮ���Ӷ����������ֵ̼Ĳ���Ϊ����ǿ���Ż���²������鲻����ڡ�"},
	{"ɳĮ�ع�","ɳ����","���","С��","���ڽӴ���β������������þ޴󻯵�ɳĮ�ߣ�һ�ھ�������һͷ��"},
	{"ɳĮ�ع�","ɳ��������","�غ�","С��","������׼�ޱȵļ�������ǿ���Ż�����������࣬�ڷ�ɳ��Ҳ�ܹ������ȶ���׼ȷ�ʡ�"},
	
	{"��Ѫħ��","��ѪͻϮ��","���Ȼ�����","С��","����Ѹ�ݶ������͵���������Ѫ��۵Ĵ���г������Ĳ�����ѡ��"},
	{"��Ѫħ��","��Ѫ��ʦ","����֩��","С��","��Щ���صļ�˾����Ѫ�����޾��Ŀ��ȣ�����Ѫ��ħ�������ǿ�������Ѫ��۵�����ͳ������ǹ���δ����"},
	{"��Ѫħ��","��ѪѲ��","����֩��","С��","��Щ����Ͱ����ƶ���������Ѫħ�����ҳϵ��ػ�����Ѫ��ۣ��κ���Ҫ��������ʿ�������г���Ƭ��"},
	{"��Ѫħ��","��Ѫ��ͽ","ʥ����ʿ","С��","��Ѫ��ͽ����Ѫ�����Ϊ���ε����£����Ƿ���ɱ¾�����ܹ���������ս�����������ҡ�"},
	
	{"������","��ԭ��ʦ","ѩ����ʿ","С��","��Щ��ͨ��ϵħ���������ܹ����κλ��ﶳס�����ñ�׶�������ǡ�"},
	{"������","��ԭ����","ѩ��ս��","С��","���͵����˽���ס�˷�˪����Ϯ�������Խ��������ٶȳ����˺��ص�Ƥë��"},
	{"������","ѩ�����","ѩ����ʿ","С��","�ⲿ����ս�ҷ׷�����Щ����Ϊ�˵ñӻ��׷�������������Ч���˱���"},
	{"������","ѩ��ʳ����","ѩ������","С��","�ɱ����������ʳ����Ѹ���׺ݣ��ܹ�����˺�������ߵ����塣"},
	{"������","��ԭǯ����","ѩ���콫","С��","һЩ����֮�ص����˱���������׷ɱ����Ч�ұ���֮�����ǻ���˼�����ǵĻ��ף����ǵ��ֱ�Ҳ��Ϊ�����þ޴��ܹ�����ǯ�Ͼ�����"},
	
	{"������","��ѪҰ��","�����ػ���","С��","��Щϲ�������������������ҽ��п��������ӵ�м򵥵�������ȴӵ��ǿ׳�����ǹ��Ӷ���ɱ֮�á�"},
	{"������","ʳʬ����","��ħ����","С��","����̰���������̳��˱������ս���ʬ����������죬����������£����������ʳ��ǰ���κ����"},
	{"������","ʳʬ��","�������","С��","��ѪҰ����ʳ����ʮ��ʬ��������˾��ҵı��죬���ǵ��°ͳ��ž޴����״����Ӳ�̶ȿ��Եֿ����ֵ����Ļӿ���"},
	
	{"�������","ţħ����","������","С��","��ħ��ս��һ���ֱ���ɢ��ţͷ�˵õ�������ħ���ıӻ��Ӷ���ת����ţħ����Щ�����ҳ������͵��ػ���������"},
	{"�������","����ţħ","������","С��","������ħ��ת����ţħ��ţͷ��սʿ�������ǿ�������������ħ����ţħ�����ܱ������ǡ�"},
	{"�������","����ţħ","������","С��","��Ȼ��˵ţħ�������Ųв�����ţħ�����������߻����𣬵�����Щţħ�������Ѿ������ǻز�ȥ��ԭ�硣"},
	{"�������","ţħ��ʿ","��ͷ����","С��","ţħ��ʿ��л����ħ�����������ǵ�����������������Ч��������"},
	
	{"��ڤ���","�������","��������","С��","������ħ֮սħ�������ö���ڤ���ͷ����ݳ����ļ���ǳ��ó��ڰ���ħ��������ϲ����Ц�Ŵ�ɢ���˵���ꡣ"},
	{"��ڤ���","Ѫɫ����","ħ������","С��","�����ž������������ڤ�����ܹ����׵ؽ�����Ĵ�����һ��ͻ�ƿڡ�"},
	{"��ڤ���","�ɻ�����","��Ӱ����","С��","��������ڤ��Ĺ���ϲ���������ߵ���꣬��ڤ�类˺��ͨ�򷲼�����ʱ�����Ǵ���ӿ�˳�����"},
	
	{"��������","�ǯ��","�з","С��","�ܵ�ڤԨ֮��Ӱ��ĺ��з����þ޴��Ҽ��߹����ԡ�"},
	{"��������","��Ԩ֮��","��Ϻ����","С��","�����˺���һ����й¶��ħ��֮���������˶��̵����࣬���������쳣��"},
	{"��������","ʯ������","����","С��","��Ϊ��ʳ�˱�ڤԨ������ܵ���ʿ�ǵ�ʬ�壬��Щ������˳����������������"},
	{"��������","������","��ͷ����1","С��","ԭ���Ǻ�Ԩ����ͨ����Ϻ��ֻ���������ٲ��ֵ�ڤԨ֮���ͱ�����м��ǻ��������쳣�����"},
	
	{"���µ���","������ʿ","ħ��������ʿ","С��","���µ���ԭ�������ж����죬�������أ��ܹ��мƻ��ذ�ɱ�κ������ߡ�"},
	{"���µ���","���»���","ħ�����껤��","С��","���µ���ԭ�������̷���һ�����ܽ��ɵĵ������ƺ��ػ���һ���������ܡ�"},
	{"���µ���","������ʿ","ħ��������ʿ","С��","���µ���ԭ����������ֻ�ܴ�һЩ���ߵ��˺��Ͽ������ǵĵ������֮�죬�ƺ�û����֪��������һ�γ��ֻ���ʲô��ʽ��"}
}

local Mboss_tab = {
	{"��ɽ��","��é����","��Ӣ��é����","�ӳ�","��é��������һЩ�����������γɵ���һ�ָ�����в�Եķ���Ȼ���ڣ������ε��ڶ��ڻ��߽��⣬�Ժ���֪���·����������һ����"},
	{"��ɽ��","�Ӻ�","��Ӣ���","�ӳ�","���Ӳ��������������·�������ʳ��ĺ��ӣ���˵����Ƥ���ͷ�졣"},
	{"��ɽ��","��é����","��Ӣ��é��","�ӳ�","��é��������һ�������߾�������һ�ַ���Ȼ���ڡ�"},
	{"��ɽ��","ľ������","��Ӣľ����","�ӳ�","ľ�������յ����������γɵ���һ�ַ���Ȼ��̬�����Ǻ���ʹ�У�ֱ�����Ҳ����ֹͣ�����ߵ�׷����"}
}

local Lboss_tab = {
	{"���涴","߱Ѫ���","������","BOSS","�������������ڱ���Ⱦ�Ķ���֮���γɵĹƳ�֮��������Ѫ���ŷ��Ŀ�����ӵ���޿ɱ�����ƻ�����"},
	{"ʳ�˶�Ѩ","ʳ��ͳ��","��ɫ����","BOSS","��ħ��ս����ħ����˺��ڤ�����˼�Ľ���֮����Щ�����ޱȵĹ����������ʳ�˴�����������ǵ�������"},
	{"�����","��Ľ���","�������","BOSS","���ͽ���������Լ������ħѪ�Ա㹮���Լ�ͳ�ε�ħ����ӵ�й����ħ������׾ٵ�˺�����塣"},
	{"а��","а��","�������","BOSS","а�����Թ������ʹ�����а���ڵ�а�������˵��������ͨħ����Ҳ�����˲��������������ܹ����Լ��Լ�צ�����������ࡣ"},
	{"ħ��Ͽ��","������ħ","���¶�ħ","BOSS","��ס��Ͽ�������������ħ�ǳ��ó�������ƣ����������¹�ȴ�����Բ����������һ�ν��������������"},
	{"ţħ��","ţħ��","ţħ��","BOSS","ţħ����Ϊ����ħ�����������������жԣ���ӵ�з�����������Ĳ��ɺ���֮����������ĵ����ܹ����κε�������ǰ�����������롣"},
	{"��ҹ֮��","Ѫɫǧ��ն","ʬ��","BOSS","��ħ֮ս��һλսʿ����ǰ��������Χ����ԩ���Թ���������ʬ��ƴ�������Լ���ȱ��ȫ��ʬ�壬�������������˶���ޱȵĵ���֫��ʬ�塣"},
	{"���Ƕ�","���޽���","��Ȫ����","BOSS","������ȥ��Թ��������һλ���Եص����ħ���ע�⣬����������Щ���ã����Գ����޽�����"},
	{"��ħ����","������ħ","��ħ����","BOSS","������ħ�Թžͱ�ʥ�˷�ӡ���ˣ�ֱ�������ӡ�������ӵ��ͨ��������������Ҫ��Щʥ�˺���ӱ����"},
	{"���ĳ�","���Ľ���","ħ������","BOSS","���Ľ���ӵ������������ע������֮������������ǿ�������֮����ǰ���κμ�̵ĳǳض������ݻ١�"},
	{"ɳĮ�ع�","��β������","�����غ���","BOSS","��ɳĮ�е�ǿ���Ż��Ϊ�����ľ�β������������ֻ��������ϵ������ɫ�Ͽ����ƺ�ӵ�в�ͬ��������"},
	{"ɳĮ�ع�","��β������","��צ�����","BOSS","��ɳĮ�е�ǿ���Ż��Ϊ�����ľ�β������������ֻ��������ϵ������ɫ�Ͽ����ƺ�ӵ�в�ͬ��������"},
	{"ɳĮ�ع�","��β������","��β�ں���","BOSS","��ɳĮ�е�ǿ���Ż��Ϊ�����ľ�β������������ֻ��������ϵ������ɫ�Ͽ����ƺ�ӵ�в�ͬ��������"},
	{"��Ѫħ��","��Ѫ���","��������","BOSS","��Ѫ���һ��������ͳ�����ƣ���Ǳ���о�����Ѫ��������Ҫ�����෢��һ�������Ե�ս�ۡ�"},
	{"������","����ڤ��","ѩ��ħ��","BOSS","ָ�ⴥ��֮��Ϳ��԰��˶�������ı���ڤ������������ֲ��Ĵ��ڣ�������������������Ҫ���ϣ�û��֪������������"},
	{"������","����","����","BOSS","���»������һ�еĻ������������ߵ����ʣ�����һЩ�˰���������������ݡ�"},
	{"�������","����ħ��","������","BOSS","�����������Ǵ֮�汻�����ǳ�������ħ������������������ڰ��л���������˭Ҳ��֪������һ����ù��Ŀ�����˭��"},
	{"��ڤ���","Ѫɲ����","��������","BOSS","���㿴�������ٻ��轣�е�ʱ���������ʲô���������ڵ�����Ԩ�Ŀֲ���"},
	{"��������","��˪����","���ĺ���","BOSS","ԭ����һ��½���ϵľ����� ��Ϊ�ܵ���ڤԨ�����Ĺƻ����÷������ͨ�����ڻ��ͨڤ��ʹ��ڤԨ�������ڸ����ı�ϵħ������������ĺ�˪�ܹ�����һ�С�"},
	{"��������","��Ԩħ��","���ħ","BOSS","����Ӵ�ĺ�������������ڤԨ֮����ǰ�ͷǳ��޴󣬶����ڣ�������ڤԨ�����ܸ���ԶԶ���������������Ա����ĵ��ػ�������֮�ء�"},
	{"��������","ڤԨ����","������","BOSS","ڤԨ����������ħ����֪�Ͱ��˵�ħ�������̾��ڿ־���Ԩ�����������֮�����Ѿ��޷�������������������������֮�䣬��ͨ�����Ϲźڰ��޷���״��ħ�����ܹ���ɱ�κι���"}
}

local Z_Weapon = {
	"��ľ��",
	"�̽�",
	"ն��",
	"��˪��",
	"������",
	"�þ�",
	"ŭն",
	"������",
	"ս��ս��",
	"���ս��",
	"����ս��",
	"����ս��",
	"ʥ��ս��",
	"����ս��",
	"��������ս��",
	"��������ս��",
	"��������ս��",
	"��������ս��",
	"�������ս��",
	"��ҵ��"
}

local F_Weapon = {
	"��ľ��",
	"����",
	"ħ��",
	"Ѫ��",
	"����",
	"����",
	"���鷨��",
	"ħ�귨��",
	"��ħ����",
	"��ħ����",
	"ʥħ����",
	"������",
	"������淨��",
	"�������·���",
	"������鷨��",
	"�챩���ڷ���",
	"�����������",
	"��ҵ��"
}

local D_Weapon = {
	"��ľ��",
	"����",
	"����",
	"����",
	"��ң��",
	"����",
	"ɢ�˵���",
	"�������",
	"�������",
	"�������",
	"ʥ�����",
	"��������",
	"���������",
	"����㷨����",
	"������������",
	"����������",
	"����Ԫ������",
	"��ҵ��"
}

local A_Weapon = {
	"��ľ��",
	"�̽�",
	"ն��",
	"��˪��",
	"������",
	"�þ�",
	"ŭն",
	"������",
	"ս��ս��",
	"���ս��",
	"����ս��",
	"����ս��",
	"ʥ��ս��",
	"����ս��",
	"��������ս��",
	"��������ս��",
	"��������ս��",
	"��������ս��",
	"�������ս��",
	"����",
	"ħ��",
	"Ѫ��",
	"����",
	"����",
	"���鷨��",
	"ħ�귨��",
	"��ħ����",
	"��ħ����",
	"ʥħ����",
	"������",
	"������淨��",
	"�������·���",
	"������鷨��",
	"�챩���ڷ���",
	"�����������",
	"����",
	"����",
	"����",
	"��ң��",
	"����",
	"ɢ�˵���",
	"�������",
	"�������",
	"�������",
	"ʥ�����",
	"��������",
	"���������",
	"����㷨����",
	"������������",
	"����������",
	"����Ԫ������",
	"��ҵ��"
}

HandBook.Handle = 0
HandBook.MonsterTb = {}				--������ʾ���ѻ�ɱ�����
HandBook.Weapons = {}				--������ʾ����ӵ��������
HandBook.IsNormal = true			--Ĭ����ʾ״̬Ϊȫ����ʾ
HandBook.AllMonster = {}			--���й����ܱ�
HandBook.Index = 1					--��ǰҳ����	
HandBook.ShowTable = {}				--����չʾ��UI����ı�
HandBook.NowPage = 1				--��ǰ��ʾҳ				
HandBook.NowTypeTable = {}			--�ӷ���˻�ȡ�ĵ�ǰ����ı������л���ʾ״̬ʱ�����ٴӷ���˻�ȡ��

--UI Logic Code Start
function HandBook.UIInit(_Handle)
	HandBook.Handle = _Handle
	HandBook.NowPage = 1
	GUIWndSetSizeM(_Handle,738,526)
	CenterWnd(_Handle)
	
	--ͷ��ͼƬ���Ļ���
	local hand =0
	for i=1,15 do 
		hand = GUIWndFindWindow(_Handle,"image"..i)
		if hand ~= 0 then 
			GUIImageSetDrawCenter(hand,true)
		end   
	end
	
	--��ʼ����ఴť״̬
	ButtonSetIsActivePageBtn(HandBook.Handle, "button1", true)
	WndMoveToParentTop(HandBook.Handle,"button1")
	WndMoveToParentTop(HandBook.Handle,"text1")
	UI:Lua_SubmitForm("ͼ����", "getHandBookTb", "")
	
	--��ʼ����ఴť�༭����������ɫ
	local handle = GetWindow(HandBook.Handle, "text"..1)
	if handle ~= 0 then
		GUIEditSetTextColor(handle, MakeARGB(255,206,179,98))
	end
	local handle = GetWindow(HandBook.Handle, "text"..2)
	if handle ~= 0 then
		GUIEditSetTextColor(handle, MakeARGB(255,107,91,80))
	end
	
	--��ϱ�
	for i = 1, #Sboss_tab do
		table.insert(HandBook.AllMonster, Sboss_tab[i])
	end
	for i = 1, #Mboss_tab do
		table.insert(HandBook.AllMonster, Mboss_tab[i])
	end
	for i = 1, #Lboss_tab do
		table.insert(HandBook.AllMonster, Lboss_tab[i])
	end
	
end

--����˳�ʼ���ص�����ȡ����������ʾ�Ĺ�����װ����
function HandBook.SetTable(monsterBook, equipTb)
	HandBook.MonsterTb = monsterBook
	HandBook.NowTypeTable = monsterBook
	local itemTb = equipTb
	local j = 1
	for i = 1, #itemTb do
		if CLGetItemEntityPropByGUID(itemTb[i], ITEM_PROP_TYPE) then
			local mType = as3.tolua(LuaRet)
			if mType == 1 then
				if CLGetItemEntityPropByGUID(itemTb[i], ITEM_PROP_SUBTYPE) then
					local sType = as3.tolua(LuaRet)
					if sType == 1 then
						if CLGetItemEntityPropByGUID(itemTb[i], ITEM_PROP_KEYNAME) then
							local kName = as3.tolua(LuaRet)
								HandBook.Weapons[j] = kName
								j = j + 1
						end
					end
				end
			end
		end
	end
	HandBook.SortTb(1, HandBook.IsNormal, HandBook.MonsterTb)
end

--��๦��ҳǩ��ѡ��
function HandBook.KindClick(_Handle)
	HandBook.Index = 1
	local param = WndGetParam(_Handle)
	HandBook.NowPage = param
	WndMoveToParentTop(HandBook.Handle,"button"..param)
	local handle = GetWindow(HandBook.Handle, "check")
	if handle ~= 0 then
		GUICheckBoxSetCheck(handle, true)
	end
	HandBook.IsNormal = true
	for i = 1, 2 do 
		if i == param then 
			ButtonSetIsActivePageBtn(HandBook.Handle,"button"..i,true)
			local handle = GetWindow(HandBook.Handle, "text"..i)
			if handle ~= 0 then
				GUIEditSetTextColor(handle, MakeARGB(255,206,179,98))
			end
		else	
			ButtonSetIsActivePageBtn(HandBook.Handle,"button"..i,false)
			local handle = GetWindow(HandBook.Handle, "text"..i)
			if handle ~= 0 then
				GUIEditSetTextColor(handle, MakeARGB(255,107,91,80))
			end
		end
		WndMoveToParentTop(HandBook.Handle,"text"..i)
	end
	local showTb = {}
	local handle = GetWindow(HandBook.Handle, "check")
	if param == 1 then
		showTb = HandBook.MonsterTb
		if handle ~= 0 then
			CheckSetText(nil,"HandBook,check","��ʾȫ��") 
		end
	else
		showTb = HandBook.Weapons
		if handle ~= 0 then
			CheckSetText(handle,nil,"��ʾ��ְҵ")
		end
	end
	HandBook.NowTypeTable = showTb
	HandBook.SortTb(param, HandBook.IsNormal, showTb)
end

--�������ť��������ʾ״̬����ʾ�ı�
function HandBook.SortTb(param, isNormal, showTb)
	local tb = {}
	if param == 1 then											--1���֣�2ͼƬ��3�ȼ�, 4������5ӵ��, 6���ͣ�������У�,7�������ƣ�������У�
		local temp = {}
		for i = 1, #HandBook.AllMonster do 						
			temp[i] = HandBook.AllMonster[i]
			temp[i][6] = 0								
		end
		for i = 1, #temp do						
			for j = 1, #showTb do
				if showTb[j] == temp[i][3] then
					temp[i][6] = 1
				end
			end
		end
		local newTb = {}
		for i = 1, #temp do									
			newTb[i] = {}
			if CLGetMonsterTemplateProperty(temp[i][3], MONSTER_PROP_NAME) then
				newTb[i][1] = as3.tolua(LuaRet)
			end 
			if CLGetMonsterTemplateProperty(temp[i][3], MONSTER_PROP_HEAD) then
				newTb[i][2] = as3.tolua(LuaRet)
			end
			if CLGetMonsterTemplateProperty(temp[i][3], MONSTER_PROP_LEVEL) then
				newTb[i][3] = as3.tolua(LuaRet)
			end
			newTb[i][4] = temp[i][5]
			newTb[i][5] = temp[i][6]
			if CLGetMonsterTemplateProperty(temp[i][3], MONSTER_PROP_TYPE) then
				newTb[i][6] = as3.tolua(LuaRet)
			end
			if newTb[i][6] == 1 then
				newTb[i][7] = "С��"
			elseif newTb[i][6] == 2 then
				newTb[i][7] = "�ӳ�"
			elseif newTb[i][6] == 4 then
				newTb[i][7] = "BOSS"
			end
		end
		if isNormal then
			tb = newTb
		else
			local j = 1
			for i = 1, #newTb do
				if newTb[i][5] == 1 then
					tb[j] = newTb[i]
					j = j + 1
				end
			end
		end
	elseif param == 2 then										--1���֣�2ͼƬ��3�ȼ�, 4KeyName��5ӵ��
		local temp = {} 
		if not isNormal then
			temp = A_Weapon
		else
			if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then
				local job = as3.tolua(LuaRet)
				if job == 1 then
					temp = Z_Weapon
				elseif job == 2 then
					temp = F_Weapon
				elseif job == 3 then
					temp = D_Weapon
				end
			end
		end
		local newTb = {}
		for i = 1, #temp do
			newTb[i] = {}
			local modelHandle = CLGetItemTemplateHandleByKeyName(temp[i])
			if CLGetItemTemplatePropByHandle(modelHandle, ITEM_PROP_NAME) then
				newTb[i][1] = as3.tolua(LuaRet)
			end
			if CLGetItemTemplatePropByHandle(modelHandle, ITEM_PROP_BIGICON) then
				newTb[i][2] = as3.tolua(LuaRet)
			end
			if CLGetItemTemplatePropByHandle(modelHandle, ITEM_PROP_LEVEL) then
				newTb[i][3] = as3.tolua(LuaRet)
			end
			newTb[i][4] = temp[i]
			newTb[i][5] = 0
		end
		for i = 1, #newTb do
			for j = 1, #showTb do
				if showTb[j] == newTb[i][4] then
					newTb[i][5] = 1
				end
			end
		end
		tb = newTb
	end
	if #tb ~= 0 then
		HandBook.ShowTable = tb
		HandBook.UpDateUI(param, tb)
	end
end

--��ʾ״̬�ı�
function HandBook.CheckChange(_handle)
	HandBook.Index = 1
	HandBook.IsNormal = not HandBook.IsNormal
	HandBook.SortTb(HandBook.NowPage, HandBook.IsNormal, HandBook.NowTypeTable)
end

--��ҳ
function HandBook.TurnPage(_handle)
	local param = WndGetParam(_handle)
	if param == 1 then
		HandBook.Index = HandBook.Index - 1
	elseif param == 2 then
		HandBook.Index = HandBook.Index + 1
	end
	HandBook.UpDateUI(HandBook.NowPage, HandBook.ShowTable)
end

--����UI����ʾ�����������ʾ�ı�
function HandBook.UpDateUI(param, tb)
	local eTb = tb
	local length = #eTb
	local tPage = math.ceil(length/15)
	if length < tPage*15 then
		local s = length + 1
		for i = s, tPage*15 do
			eTb[i] = "void"
		end
	end
	local handle = GetWindow(HandBook.Handle, "left")
	if handle ~= 0 then
		GUIWndSetEnableM(handle, true)
		if HandBook.Index == 1 then
			GUIButtonSetShowDisable(handle, true)
			GUIWndSetEnableM(handle, false)
		else
			GUIButtonSetShowDisable(handle, false)
			GUIWndSetEnableM(handle, true)
		end
	end
			
	local handle = GetWindow(HandBook.Handle, "right")
	if handle ~= 0 then
		GUIWndSetEnableM(handle, true)
		if HandBook.Index == tPage then
			GUIButtonSetShowDisable(handle, true)
			GUIWndSetEnableM(handle, false)
		else
			GUIButtonSetShowDisable(handle, false)
			GUIWndSetEnableM(handle, true)
		end
	end
	
	local handle = GetWindow(HandBook.Handle, "page")
	if handle ~= 0 then
		GUIEditSetTextM(handle, "" .. HandBook.Index .. "/" .. tPage)
	end
	
	local handle = 0
	local tStart = (HandBook.Index - 1) * 15 + 1
	local tEnd = tStart + 15

	local color = 0
	for i = tStart, tEnd do
		local num = i - 15 * (HandBook.Index - 1)
		local handle = GetWindow(HandBook.Handle, "name" .. num)
		if handle ~= 0 then
			if eTb[i] == "void" then
				GUIWndSetVisible(handle, false)
			else
				GUIWndSetVisible(handle, true)
				if param == 1 then
					if eTb[i][5] == 1 then
						if eTb[i][6] == 1 then
							color = MakeARGB(255,255,255,255)
						elseif eTb[i][6] == 2 then
							color = MakeARGB(255,0,255,0)
						elseif eTb[i][6] == 4 then
							color = MakeARGB(255,255,0,0)
						end
					else
						color = MakeARGB(255,107,102,95)
					end
				elseif param == 2 then
					if eTb[i][5] == 1 then
						local level = tonumber(eTb[i][3])
						if level < 40 then
							color = MakeARGB(255,255,255,255)
						elseif level < 60 then
							color = MakeARGB(255,0,255,0)
						elseif level < 70 then
							color = MakeARGB(255,125,27,183)
						else
							color = MakeARGB(255,255,0,0)
						end
					else
						color = MakeARGB(255,107,102,95)
					end
				end
				GUIEditSetTextColor(handle, color)
				GUIEditSetTextM(handle, eTb[i][1])
			end
		end
		local handle = GetWindow(HandBook.Handle, "level" .. num)
		if handle ~= 0 then
			if eTb[i] == "void" then
				GUIWndSetVisible(handle, false)
			else
				GUIWndSetVisible(handle, true)
				GUIEditSetTextColor(handle, color)	
				GUIEditSetTextM(handle, "Lv:" .. eTb[i][3])
			end
		end
		if param == 1 then
			local handle = GetWindow(HandBook.Handle, "image" .. num)
			if handle ~= 0 then
				if eTb[i] == "void" then
					GUIWndSetVisible(handle, false)
				else
					GUIWndSetVisible(handle, true)
					if eTb[i][6] == 1 then
						ImageSetImageID(handle, nil, 1804000002)
					elseif eTb[i][6] == 2 then
						ImageSetImageID(handle, nil, 1804000003)
					elseif eTb[i][6] == 4 then
						ImageSetImageID(handle, nil, 1804000004)
					end
				end
			end
			local handle = GetWindow(HandBook.Handle, "head" .. num)
			if handle ~= 0 then
				if eTb[i] == "void" then
					GUIWndSetVisible(handle, false)
				else
					GUIWndSetVisible(handle, true)
					ImageSetImageID(handle, nil, eTb[i][2])
					if eTb[i][5] == 1 then
						GUIImageSetGray(handle, false)
					else
						GUIImageSetGray(handle, true)
					end
					GUIImageSetTransfrom(handle, 15000, 15000,0)
					GUIImageSetDrawCenter(handle, true)
					local str = GetTipBegin() .. tipAll(200,200) .. tipText("\n             " .. eTb[i][1] .. "\n", color, "system") .. tipText("Lv:" .. eTb[i][3] .. "\n", color, "system") .. tipText("����:" .. eTb[i][7] .. "\n\n", color, "system") .. tipText("    " .. eTb[i][4] .. "\n\n", color, "system") .. GetTipEnd()
					GUIWndSetTipInfo(handle, str)
				end
			end
			local handle = GetWindow(HandBook.Handle, "itemctrl" .. num)
			if handle ~= 0 then
				GUIWndSetVisible(handle, false)
			end
		elseif param == 2 then
			local handle = GetWindow(HandBook.Handle, "image" .. num)
			if handle ~= 0 then
				GUIWndSetVisible(handle, false)
			end
			local handle = GetWindow(HandBook.Handle, "head" .. num)
			if handle ~= 0 then
				GUIWndSetVisible(handle, false)
			end
			local handle = GetWindow(HandBook.Handle, "itemctrl" .. num)
			if handle ~= 0 then
				if eTb[i] == "void" then
					GUIWndSetVisible(handle, false)
				else
					GUIWndSetVisible(handle, true)
					RDItemCtrlSetGUIDataByKeyName(handle, eTb[i][4], 1, false)
				end
			end
		end
	end
end 

function HandBook.closed(_Handle)
	if HandBook.Handle~= 0 then 
		GUIWndClose(HandBook.Handle)
	end
end

HandBook.main()