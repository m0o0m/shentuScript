HandBook={} 
local ui = "<form> <dialog OnInit='HandBook.UIInit' id='HandBook' image='1804000006' x='360' y='130' w='738' h='526' esc_close='true' drag='true' >"
	.."	<image id='TestWndChild_1' image='1804000008' x='334' y='466' w='51' h='26' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1804000009' x='337' y='6' w='71' h='24' enable='false' revmsg='true'/>"
	.."	<check id='check' image='1804000010' x='593' y='471' w='25' h='20' checked='true' text='显示全部' OnCheckChange='HandBook.CheckChange' revmsg='true' text_color='#C2B6A0'/>"
	
	.."	<button id='button1' image='1803900026' x='-10' y='66' w='38' h='50' OnLButtonUp='HandBook.KindClick' revmsg='true'  param='1'/>"
	.."	<button id='button2' image='1803900026' x='-10' y='129' w='16' h='55' OnLButtonUp='HandBook.KindClick' revmsg='true'  param='2'/>"
	
	.."	<button id='left' image='1800000094' x='306' y='470' w='20' h='19' OnLButtonUp='HandBook.TurnPage' param='1' revmsg='true'/>"
	.."	<button id='right' image='1800000098' x='393' y='470' w='20' h='19' OnLButtonUp='HandBook.TurnPage' param='2' revmsg='true'/>"
	.."	<edit id='text1' x='1' y='73' w='16' h='50' canedit='false' revmsg='false' text='万\n灵\n志' font='system'/>"
	.."	<edit id='text2' x='1' y='131' w='16' h='50' canedit='false' revmsg='false' text='神\n兵\n志' font='system'/>"
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
	{"新手村","鸡","鸡","小怪","这些被人们视作唾手可得的食材遍布在世界各个角落。"},
	{"新手村","鹿","鹿","小怪","有着上好的皮毛和茸角的鹿，无论村民还是商人见了都会动心。"},
	{"新手村","白茅人","稻草人","小怪","在矿洞发生黑暗卷轴的矿难之后，一些用作驱赶鸟类的稻草人受到了魔化而变成的非自然生物。"},
	{"新手村","顽皮猴","多钩猫","小怪","这些可爱顽皮的猴子经常成群地偷食村落里的粮食。"},
	{"矿洞","尸皇","尸王","小怪","被黑暗卷轴中邪恶的力量腐化而变成行尸走肉的工头，因其感染程度最深，故拥有非常恐怖的力量。"},
	{"矿洞","锁链僵尸","墓穴僵尸","小怪","被黑暗卷轴中邪恶的力量腐化而变成行尸走肉的矿工，这些腐朽的尸体用铁链作为自己的武器。"},
	{"矿洞","爬地僵尸","残肢僵尸","小怪","被黑暗卷轴中邪恶的力量腐化而变成行尸走肉的矿工，它们行动隐秘而又悄无声息，时刻准备吞噬下一位受害者。"},
	{"矿洞","僵尸","僵尸","小怪","被黑暗卷轴中邪恶的力量腐化而变成行尸走肉的矿工，这群无脑的行尸有着强烈的饥饿感，迫切地渴求新鲜的人肉。"},
	{"矿洞","骷髅王","骷髅精灵","小怪","被黑暗卷轴中邪恶的力量腐化而褪去肉块的巨型魔化骷髅，统领着其它骷髅大军。"},
	{"矿洞","矿洞飞蛾","山洞蝙蝠","小怪","被黑暗卷轴中邪恶的力量腐化而变得巨大化的邪恶飞蛾，能够轻易将一名成年人扑倒。"},
	{"矿洞","骷髅卫士","骷髅战将","小怪","被黑暗卷轴中邪恶的力量腐化而褪去肉块的魔化骷髅，生前曾是小有名气的习武之人。"},
	{"矿洞","骷髅战士","骷髅战士","小怪","被黑暗卷轴中邪恶的力量腐化而褪去肉块的魔化骷髅，生前曾是日食斗米的壮汉。"},
	{"矿洞","矿洞蛆虫","洞蛆","小怪","吞食了矿洞内被腐化的肉块而变异的蛆虫，只需轻轻一咬，就可以将成人的小腿肉全部咬掉。"},
	{"矿洞","蝎子","蝎子","小怪","蚕食了矿洞内被腐化的肉块而变异的蝎子，肢解尸体是它们的长项。"},
	{"矿洞","骷髅","骷髅","小怪","被黑暗卷轴中邪恶的力量腐化而褪去肉块的魔化骷髅，这些可怜的人已经腐烂到完全脱离了肉身，以白骨的形态终日徘徊在矿洞内。"},
	
	{"巫山城","顽猴","顽猴","小怪","顽皮猴成年后的样子，经常偷窃食物以及调戏路过的少女。"},
	{"巫山城","白茅魔人","白茅人","小怪","被黑暗卷轴影响较深的白茅人，魔法对它们而言有着非比寻常的吸引力。"},
	{"巫山城","白茅狂人","白茅怪人","小怪","这种往往被大多数人们忽略的无情的生物会忽然从地上爬起，对踩中它的人以致命的一击。"},
	{"巫山城","木器人","木器人","小怪","在矿洞发生黑暗卷轴的矿难之后，一些原本用作武师修炼之用的木具化作了这些具有魔性的非自然生物。"},
	
	{"毒虫洞","黑暗爬虫","钳虫","小怪","因感染了商贾掉落在洞内的蛊毒后变异的巨大化爬虫，拥有一对力量巨大的钳子。"},
	{"毒虫洞","杀人蜂","跳跳蜂","小怪","因感染了商贾掉落在洞内的蛊毒后变异的毒蜂，它们变异的尾针可以在刺入受害者体内之后再次拔出来。"},
	{"毒虫洞","蜈蚣","蜈蚣","小怪","因感染了商贾掉落在洞内的蛊毒后变异的巨大化蜈蚣，只需轻轻一口，就可以将一只水牛瞬间毙命。"},
	{"毒虫洞","黑暗爬虫王","邪恶钳虫","小怪","黑暗爬虫中因吞噬同类和洞中其它被感染的生物而产生二次变异的怪物，钳子的威力之大，可以将巨石咬碎。"},
	{"毒虫洞","黑色恶蛆","黑色恶蛆","小怪","因感染了商贾掉落在洞内的蛊毒后变异的驱虫，除了硕大的体型之外，它们突变而产生的刺可以轻易地刺穿树干。"},
	{"毒虫洞","黑暗蠕虫","巨型蠕虫","小怪","因感染了商贾掉落在洞内的蛊毒后变异的蠕虫，它们一改原先的素食习惯转而喜欢啃食新鲜的血肉。"},
	
	{"食人洞穴","食人妖精","食人妖精","小怪","这些喜欢生啃人肉的怪物经常侵扰人类村镇，数量之多令人发指。"},
	{"食人洞穴","食人恶魔","食人恶魔","小怪","由于对人肉的特殊嗜好，人类不得不建立起了一支民兵队伍专门对付这些吃人的怪物。"},
	{"食人洞穴","食人蝎蛇","食人蝎蛇","小怪","这些来自地狱的蝎蛇状的恶魔拥有坚固光滑的外表，让许多兵刃和魔法都无法穿透。"},
	{"食人洞穴","毒蛾","食人毒蛾","小怪","由于原本生活在洞内的蛾子受到恶魔力量的感染，现在已经成长为挥舞着巨翅散播着毒粉的怪物。"},
	
	{"天荒阵","天荒卫士","天荒卫士","小怪","这些精于暗杀和诡计的刺客受到天荒教主的蛊惑，一心守护者天荒阵。"},
	{"天荒阵","天荒护卫","天荒护卫","小怪","从天荒卫士中选拨出来的一批精英力量，拥有以一敌十的实力。"},
	{"天荒阵","天荒战将","天荒战将","小怪","战功赫赫的刺客头目，为手下的人所仰慕。"},
	{"天荒阵","天荒都统","天荒都统","小怪","深得天荒教主赞扬的统领级刺客，残忍无情，率领众手下对人类城镇进行一次又一次的侵袭。"},
	{"天荒阵","天荒勇士","天荒勇士","小怪","拥有无上的勇气守护着大殿以及天荒教主的忠实卫士。"},
	
	{"邪庙","邪庙弓箭手","祖玛弓箭手","小怪","百步穿杨对邪庙弓箭手而言并不是什么值得夸耀的事，它们精湛的箭术能够准确无误地射入敌人的脑颅。"},
	{"邪庙","邪庙雕像","祖玛雕像","小怪","在邪皇灌注的强大力量之下化作雕像的守卫，一有外敌侵入就破石而出瞬间击杀入侵者。"},
	{"邪庙","邪庙卫士","祖玛卫士","小怪","在浸润了黑暗的邪庙之中冥想的卫士，利索而又无情地解决每一个来犯的敌人。"},
	{"邪庙","变异蝠","蝙蝠与角蝇","小怪","这些原本生活在邪庙内的原住居民受到魔化力量的腐蚀，变成了见人就咬的怪物。"},
	
	{"魔月峡谷","天狼蜘蛛","天狼蜘蛛","小怪","天狼蜘蛛受到了噬月魇魔的蛊惑变得疯狂且暴躁，想要杀死一切外来者。"},
	{"魔月峡谷","钢牙蜘蛛","钢牙蜘蛛","小怪","钢牙蜘蛛通常会用它那尖锐无比的牙齿撕裂眼前所有生者。"},
	{"魔月峡谷","幻影蜘蛛","幻影蜘蛛","小怪","这种忽隐忽现使人无法看清躯体的蜘蛛往往在不经意之间就刺穿了受害者的喉咙。"},
	{"魔月峡谷","爆裂蜘蛛","爆裂蜘蛛","小怪","当这种密密麻麻的小蜘蛛聚集在你周围的时候，就会发现它们会膨胀到数倍大小并以自杀式的爆炸袭击摧毁一切来犯之敌。"},
	{"魔月峡谷","月魔蜘蛛","月魔蜘蛛","小怪","这种能够吸收月光化为能量的蜘蛛原本是一种非常珍稀的蜘蛛，但是被噬月魇魔感染之后，它就成了死亡的先锋。"},
	{"魔月峡谷","黑锷蜘蛛","黑锷蜘蛛","小怪","黑锷蜘蛛能够利用自己锋利的下颚迅速地撕扯掉一头大象。"},
	{"魔月峡谷","血巨人","血巨人","小怪","受到噬月魇魔的影响，这些原本性情温顺的猿猴变成了怒目圆睁、性情暴躁的怪物。"},
	{"魔月峡谷","血金刚","双头金刚","小怪","一些强壮的血巨人再度被噬月魇魔魔化，巨大的身躯往往让人不寒而栗。"},
	{"魔月峡谷","血魔","双头血魔","小怪","血魔是噬月魇魔最为器重的爪牙，它们残忍无情，无坚不摧，是守卫魔王的难以撼动的存在。"},
		

	{"牛魔洞","牛斗士","牛魔战士","小怪","牛斗士是准许进入战场的最低资格，即使是这样，他们也拥有不俗的实力。"},
	{"牛魔洞","牛战士","牛魔将军","小怪","这些曾和人类一起作战抵抗魔族入侵的牛斗士拥有强健的体魄，敢于冲在阵列的最前线。"},
	{"牛魔洞","牛斧手","牛魔侍卫","小怪","牛斧手抛弃了近战攻击的套路，改为利用远程武器进行有效打击，而这往往效果拔群。"},
	{"牛魔洞","牛法师","牛魔法师","小怪","这些钻研于巫术的牛头法师同样热爱和平，只是在受到了魔族的挑拨离间后，一直与人类法师以法术相互抗衡。"},
	{"牛魔洞","牛将军","牛头魔","小怪","牛将军经常率领千军万马驰骋纵横天地之间，为族人的自由和生存扫平障碍，忠心不二地维护着牛魔王。"},
	{"牛魔洞","牛巫师","牛魔祭司","小怪","这些巫师是祭司们精研魔法的结果，他们不仅精通占卜和天文，也学会了凌厉无比的法术。"},
	
	{"永夜之地","泣血僵尸","恶灵僵尸","小怪","这些牺牲在战场无人认领的尸体被魔王注入了怨念而变成了僵尸，疯狂地想要报复所有生者。"},
	{"永夜之地","嚼骨尸王","恶灵尸王","小怪","这些生前曾是强大战士的尸体，被魔王复活后不断地寻求新鲜的骨肉，你甚至能听到它在咀嚼骨头时发出的满足笑意。"},
	
	{"骸骨洞","魔骨刃兵","骷髅锤兵","小怪","生前曾是强壮有力的矿工，被风沙活埋之后又被阎罗教主死而复生。"},
	{"骸骨洞","魔尸奴隶","骷髅长枪兵","小怪","沙土掩埋了这些曾是矿工的人们，当风沙过后，一只只毫无生气的手从地底伸了出来。"},
	{"骸骨洞","魔骨傀儡","骷髅弓箭手","小怪","被尘土湮没的怨念久久不散，在被阎罗教主注入生前的尸体后，这些憎恶生者的傀儡们又站了起来。"},
	{"骸骨洞","魔骨卫士","骷髅刀斧手","小怪","魔骨卫士是阎罗教主最为得意的手下，它们残暴且不可阻挡，对于教主的命令言听计从。"},
	
	{"镇魔禁地","野蛮斗士","虹魔蝎卫","小怪","追随囚世天魔的死亡侍者，它们拥有怪异的力量，只是轻轻一拳就能够把岩壁打出一个窟窿。"},
	{"镇魔禁地","妖魔祭祀","千年树妖","小怪","深谙巫术和魔法的妖魔祭祀一直是必不可少的战争军师，正是因为它们的存在，让天魔大军拥有了恐怖的力量。"},
	{"镇魔禁地","妖魔斧兵","恶魔弓箭","小怪","一些相对而言比较精瘦的斗士被迫选择了使用远程武器，魔王也惊喜地发现收效惊人。"},
	{"镇魔禁地","妖魔斗士","虹魔猪卫","小怪","愈战愈勇的妖魔斗士一直是天魔大军的中流砥柱，身形矫健的它们曾经在与人类的战争中割下了数量非常多的首级。"},
	
	{"蛮荒城","蛮荒毒虫","魔龙刺蛙","小怪","这种见人就咬的毒虫一般人见了都会退避三分，因为除了它带毒的口器，还有带刺的钩爪。"},
	{"蛮荒城","蛮荒爬虫","魔龙血蛙","小怪","在蛮荒之地这样食物匮乏的地方，对于蛮荒爬虫来说没有什么东西是不可以吃的，它们会一股脑儿地拥向猎物啃食它的血肉。"},
	{"蛮荒城","蛮荒刀兵","魔龙刀兵","小怪","拥有娴熟刀法的刀兵们总是奋杀在最前线，它们总是渴望得到蛮荒教主的提拔和关怀。"},
	{"蛮荒城","蛮荒射手","魔龙射手","小怪","在蛮荒之地生活久了，射手们已经练就了一身隔着风沙也能瞄准敌人的本领。"},
	{"蛮荒城","蛮荒战将","魔龙战将","小怪","这些身强体壮且拥有独特指挥才能的战将是蛮荒教主最为得意的手下。"},
	{"蛮荒城","蛮荒力士","魔龙力士","小怪","能扛起巨岩的蛮荒力士的脾气非常暴躁，它们会撕碎任何与之挑衅的生物——哪怕是他们的同类。"},
	{"蛮荒城","蛮荒巨蛾","魔龙巨蛾","小怪","蛮荒教主向一些蛾子灌输了魔能以后，这些蛾子就变得巨大化且非常具有攻击性，它们的意识也被蛮荒教主所控制。"},
	{"蛮荒城","蛮荒畸兽","魔龙邪眼","小怪","同样是被蛮荒教主注入魔能的产物，蛮荒畸兽有着强于猛虎数倍的力量。"},
	{"蛮荒城","蛮荒破甲兵","魔龙破甲兵","小怪","这种眼神锐利的怪物能够轻易地察觉出敌人的弱点，转而号召帮众快速打击其最薄弱的部位，如同杀戮机器般效率。"},
	
	{"沙漠地宫","沙人","弧月虎虫","小怪","被九尾狐运用通灵之力召唤出的沙漠怪物，会杀死任何靠近沙漠地宫的外来生物。"},
	{"沙漠地宫","沙魂","弧月角虫","小怪","这种被九尾狐用通灵之力召唤出的沙漠怪物在攻击外来者时往往会让其暂时失明。"},
	{"沙漠地宫","沙漠骑士","黑狐","小怪","在沙漠中掠夺抢劫旅人商贾的财物为生的强盗团伙，处事残忍无情不留活口。"},
	{"沙漠地宫","沙镰蛇","赤狐","小怪","长期接触九尾狐的灵力而变得巨大化的沙漠蛇，一口就能吞下一头羊。"},
	{"沙漠地宫","沙盗弓箭手","素狐","小怪","以自身精准无比的箭术而在强盗团伙中立足的人类，在风沙中也能够保持稳定的准确率。"},
	
	{"铁血魔宫","铁血突袭者","狂热火蜥蜴","小怪","这种迅捷而又凶猛的生物是铁血大帝的大军中冲锋陷阵的不二人选。"},
	{"铁血魔宫","铁血祭师","巨镰蜘蛛","小怪","这些神秘的祭司对鲜血有着无尽的狂热，在鲜血的魔法中他们看到了铁血大帝的铁蹄统治人类城郭的未来。"},
	{"铁血魔宫","铁血巡守","金杖蜘蛛","小怪","这些如铁桶般的移动堡垒在铁血魔宫中忠诚地守护着铁血大帝，任何想要靠近的勇士都将被切成碎片。"},
	{"铁血魔宫","铁血狂徒","圣殿卫士","小怪","铁血狂徒是铁血大帝最为信任的手下，他们疯狂的杀戮欲望能够让他们在战场上所向披靡。"},
	
	{"玄冰洞","冰原法师","雪域卫士","小怪","这些精通冰系魔法的生物能够让任何活物冻住，并用冰锥击碎它们。"},
	{"玄冰洞","冰原狼人","雪域战将","小怪","凶猛的狼人禁受住了风霜的侵袭，并且以近乎疯狂的速度长出了厚重的皮毛。"},
	{"玄冰洞","雪域巨熊","雪域力士","小怪","外部世界战乱纷繁，这些巨熊为了得庇护纷纷来到了玄冰洞效忠了冰后。"},
	{"玄冰洞","雪域食人兽","雪域侍卫","小怪","由冰后创造出来的食人兽迅捷凶狠，能够轻易撕碎入侵者的躯体。"},
	{"玄冰洞","冰原钳兽人","雪域天将","小怪","一些蛮荒之地的兽人被人类驱赶追杀，在效忠冰后之后他们获得了坚冰覆盖的护甲，他们的手臂也因为变异变得巨大，能够轻易钳断巨树。"},
	
	{"火龙洞","嗜血野猪","火龙守护兽","小怪","这些喜欢拿着猎物的肉浸泡在岩浆中烤熟的生物拥有简单的智力，却拥有强壮的体魄供掠夺厮杀之用。"},
	{"火龙洞","食尸蝙蝠","恶魔蝙蝠","小怪","洞内贪婪的蝙蝠吞吃了被炎龙烧焦的尸体而产生变异，在特殊情况下，它甚至会啃食眼前的任何生物。"},
	{"火龙洞","食尸兽","披甲神龟","小怪","嗜血野猪吞食了数十种尸体而产生了剧烈的变异，它们的下巴长着巨大的瘤状物，其坚硬程度可以抵抗各种刀剑的挥砍。"},
	
	{"西郊神殿","牛魔侍卫","黑蛇妖","小怪","人魔大战后一部分被驱散的牛头人得到了陨天魔王的庇护从而被转化成牛魔，这些侍卫忠诚且勇猛地守护着西郊神殿。"},
	{"西郊神殿","红面牛魔","红蛇妖","小怪","被陨天魔王转化成牛魔的牛头人战士，在他们看来，或许陨天魔王比牛魔王更能保护他们。"},
	{"西郊神殿","黑面牛魔","白蛇妖","小怪","虽然听说牛魔王率领着残部正在牛魔洞积蓄力量策划复仇，但是这些牛魔觉得那已经是他们回不去的原乡。"},
	{"西郊神殿","牛魔勇士","三头蛇王","小怪","牛魔勇士感谢陨天魔王所带给他们的力量，并发誓至死效忠于它。"},
	
	{"北冥神殿","恶灵祭祀","黑袍修罗","小怪","由于人魔之战魔法的滥用而从冥界释放逃逸出来的祭祀非常擅长黑暗的魔法，它们喜欢咧笑着打散凡人的灵魂。"},
	{"北冥神殿","血色屠夫","魔神修罗","小怪","挥舞着巨刃削铁如泥的冥界怪物，能够轻易地将人类的大军打出一个突破口。"},
	{"北冥神殿","噬魂戾兽","暗影修罗","小怪","这种来自冥界的怪兽喜欢吞噬生者的灵魂，在冥界被撕裂通向凡间的入口时，它们大量涌了出来。"},
	
	{"海底世界","深海钳兽","螃蟹","小怪","受到冥渊之力影响的海螃蟹，变得巨大且极具攻击性。"},
	{"海底世界","深渊之棘","龙虾守卫","小怪","吸收了海底一部分泄露的魔法之力而长出了毒刺的鱼类，性情凶猛异常。"},
	{"海底世界","石甲鱼妖","海龟","小怪","因为啃食了被冥渊领主打败的勇士们的尸体，这些海鱼因此长出了锐利的獠牙。"},
	{"海底世界","铁螯怪","三头蛇王1","小怪","原本是海渊里普通的龙虾，只是吸收了少部分的冥渊之力就变成了有简单智慧且凶猛异常的生物。"},
	
	{"弥月岛城","弥月勇士","魔化沃玛勇士","小怪","弥月岛的原著居民，行动诡异，做事隐秘，能够有计划地暗杀任何入侵者。"},
	{"弥月岛城","弥月护卫","魔化沃玛护卫","小怪","弥月岛的原著居民，侍奉于一个秘密教派的的他们似乎守护着一个天大的秘密。"},
	{"弥月岛城","弥月卫士","魔化沃玛卫士","小怪","弥月岛的原著居民，人们只能从一些死者的伤痕上看到他们的刀法如何之快，似乎没有人知道他们下一次出手会是什么招式。"}
}

local Mboss_tab = {
	{"巫山城","白茅怪人","精英白茅怪人","队长","白茅人吸收了一些道法灵气后形成的另一种更具威胁性的非自然存在，它们游荡在洞内或者郊外，对毫不知情的路人以致命的一击。"},
	{"巫山城","劣猴","精英顽猴","队长","顽劣不堪、经常抢夺过路人行李和食物的猴子，据说是顽皮猴的头领。"},
	{"巫山城","白茅旅人","精英白茅人","队长","白茅人吸收了一部分生者精华的另一种非自然存在。"},
	{"巫山城","木器行者","精英木器人","队长","木器人吸收道法灵气后形成的另一种非自然形态，它们毫无痛感，直到损毁也不会停止对生者的追击。"}
}

local Lboss_tab = {
	{"毒虫洞","弑血虫皇","触龙神","BOSS","吞噬了无数洞内被感染的毒虫之后形成的蛊虫之王，对鲜血有着疯狂的渴望，拥有无可比拟的破坏力。"},
	{"食人洞穴","食人统领","白色恶猪","BOSS","人魔大战滥用魔法而撕裂冥界与人间的界限之后，这些凶蛮无比的怪物就率领着食人大军闯入了人们的眼帘。"},
	{"天荒阵","天荒教主","沃玛教主","BOSS","向教徒们撒播着自己教义和魔血以便巩固自己统治的魔王，拥有诡异的魔法轻而易举地撕裂肉体。"},
	{"邪庙","邪皇","祖玛教主","BOSS","邪皇是自古以来就存在于邪庙内的邪恶生物，据说它不仅精通魔法，也掌握了不死法术，所以能够让自己以及爪牙们永世不朽。"},
	{"魔月峡谷","噬月魇魔","赤月恶魔","BOSS","居住在峡谷最深处的噬月魇魔非常擅长心灵控制，它吸收着月光等待着月圆，积蓄着下一次进攻人类的力量。"},
	{"牛魔洞","牛魔王","牛魔王","BOSS","牛魔王因为受了魔族的挑拨而与人类相敌对，它拥有凡人梦寐以求的不可撼动之力，他挥舞的刀刃能够将任何挡在他面前的人劈成两半。"},
	{"永夜之地","血色千人斩","尸霸","BOSS","人魔之战中一位战士临死前吸纳了周围所有冤魂的怨念，复生后用尸块拼合起了自己残缺不全的尸体，肆意挥舞着它那硕大无比的刀刃肢解尸体。"},
	{"骸骨洞","阎罗教主","黄泉教主","BOSS","矿洞内死去的怨灵吸引了一位来自地底深处的魔鬼的注意，它复活了这些骷髅，并自称阎罗教主。"},
	{"镇魔禁地","囚世天魔","虹魔教主","BOSS","囚世天魔自古就被圣人封印至此，直到最近封印被解除，拥有通天神力的它发誓要那些圣人后裔加倍奉还。"},
	{"蛮荒城","蛮荒教主","魔龙教主","BOSS","蛮荒教主拥有向其它生物注入蛮荒之力的秘术，在强大的蛮荒之力面前，任何坚固的城池都将被摧毁。"},
	{"沙漠地宫","九尾狐·冰","玉面素狐王","BOSS","被沙漠中的强盗团伙奉为神明的九尾狐，与另外两只是孪生关系，从颜色上看，似乎拥有不同的能力。"},
	{"沙漠地宫","九尾狐·火","金爪赤狐王","BOSS","被沙漠中的强盗团伙奉为神明的九尾狐，与另外两只是孪生关系，从颜色上看，似乎拥有不同的能力。"},
	{"沙漠地宫","九尾狐·土","火尾黑狐王","BOSS","被沙漠中的强盗团伙奉为神明的九尾狐，与另外两只是孪生关系，从颜色上看，似乎拥有不同的能力。"},
	{"铁血魔宫","铁血大帝","雷炎蛛王","BOSS","铁血大帝一向以铁腕统治著称，他潜心研究着鲜血禁术，想要对人类发动一场毁灭性的战役。"},
	{"玄冰洞","冰咒冥后","雪域魔王","BOSS","指尖触碰之间就可以把人冻成碎冰的冰咒冥后是玄冰洞最恐怖的存在，她甚至比玄冰洞本身还要古老，没人知道她的由来。"},
	{"火龙洞","炎龙","火龙","BOSS","口吐火焰焚烧一切的火龙是所有生者的梦魇，亦有一些人把它当做神明来崇拜。"},
	{"西郊神殿","陨天魔王","蛇妖王","BOSS","这个挥舞着天谴之焰被教众们称作陨天魔王的神秘首领在神殿内暗中积蓄力量，谁也不知道它下一个倒霉的目标会是谁。"},
	{"北冥神殿","血刹明王","阿修罗神","BOSS","当你看着它疾速挥舞剑刃的时候，你会明白什么才是来自于地狱深渊的恐怖，"},
	{"海底世界","凛霜幽龙","寒荒海兽","BOSS","原本是一条陆地上的巨龙， 因为受到了冥渊领主的蛊惑而变得疯狂，它精通并且融会贯通冥地使用冥渊领主传授给它的冰系魔法，口中喷出的寒霜能够冻结一切。"},
	{"海底世界","深渊魔棘","深海巨魔","BOSS","这个庞大的海底生物在吸收冥渊之力以前就非常巨大，而现在，它发现冥渊领主能给的远远超出它的想象，所以便忠心地守护着领主之地。"},
	{"海底世界","冥渊领主","巫妖王","BOSS","冥渊领主是所有魔族认知和拜谒的魔王，它盘踞在恐惧深渊的最深处，寿命之长，已经无法用世纪来衡量，它交汇生死之间，精通来自上古黑暗无法名状的魔法，能够扼杀任何鬼神。"}
}

local Z_Weapon = {
	"乌木剑",
	"短剑",
	"斩马刀",
	"凌霜剑",
	"井中月",
	"裁决",
	"怒斩",
	"屠龙刀",
	"战将战刃",
	"武魂战刃",
	"天武战刃",
	"神武战刃",
	"圣武战刃",
	"威武战刃",
	"洪武行天战刃",
	"雄武震天战刃",
	"尊武凌天战刃",
	"神威亢天战刃",
	"至尊傲天战刃",
	"霸业神剑"
}

local F_Weapon = {
	"乌木剑",
	"海魂",
	"魔杖",
	"血饮",
	"骨玉",
	"龙牙",
	"法灵法杖",
	"魔魂法杖",
	"天魔法杖",
	"神魔法杖",
	"圣魔法杖",
	"幻神法杖",
	"天地玄奇法杖",
	"天异玄奥法杖",
	"天魁玄灵法杖",
	"天暴玄宗法杖",
	"天狂玄傲法杖",
	"霸业神剑"
}

local D_Weapon = {
	"乌木剑",
	"半月",
	"银蛇",
	"龙纹",
	"逍遥扇",
	"玄天",
	"散人道扇",
	"玄魂道剑",
	"天灵道剑",
	"神灵道扇",
	"圣灵道剑",
	"无量道剑",
	"玄天妙法道扇",
	"混天广法道剑",
	"鸿天明法道剑",
	"昊天玄尊道剑",
	"傲天元法道剑",
	"霸业神剑"
}

local A_Weapon = {
	"乌木剑",
	"短剑",
	"斩马刀",
	"凌霜剑",
	"井中月",
	"裁决",
	"怒斩",
	"屠龙刀",
	"战将战刃",
	"武魂战刃",
	"天武战刃",
	"神武战刃",
	"圣武战刃",
	"威武战刃",
	"洪武行天战刃",
	"雄武震天战刃",
	"尊武凌天战刃",
	"神威亢天战刃",
	"至尊傲天战刃",
	"海魂",
	"魔杖",
	"血饮",
	"骨玉",
	"龙牙",
	"法灵法杖",
	"魔魂法杖",
	"天魔法杖",
	"神魔法杖",
	"圣魔法杖",
	"幻神法杖",
	"天地玄奇法杖",
	"天异玄奥法杖",
	"天魁玄灵法杖",
	"天暴玄宗法杖",
	"天狂玄傲法杖",
	"半月",
	"银蛇",
	"龙纹",
	"逍遥扇",
	"玄天",
	"散人道扇",
	"玄魂道剑",
	"天灵道剑",
	"神灵道扇",
	"圣灵道剑",
	"无量道剑",
	"玄天妙法道扇",
	"混天广法道剑",
	"鸿天明法道剑",
	"昊天玄尊道剑",
	"傲天元法道剑",
	"霸业神剑"
}

HandBook.Handle = 0
HandBook.MonsterTb = {}				--用于显示的已击杀怪物表
HandBook.Weapons = {}				--用于显示的已拥有武器表
HandBook.IsNormal = true			--默认显示状态为全部显示
HandBook.AllMonster = {}			--所有怪物总表
HandBook.Index = 1					--当前页索引	
HandBook.ShowTable = {}				--用于展示在UI上面的表
HandBook.NowPage = 1				--当前显示页				
HandBook.NowTypeTable = {}			--从服务端获取的当前缓存的表（用于切换显示状态时不必再从服务端获取）

--UI Logic Code Start
function HandBook.UIInit(_Handle)
	HandBook.Handle = _Handle
	HandBook.NowPage = 1
	GUIWndSetSizeM(_Handle,738,526)
	CenterWnd(_Handle)
	
	--头像图片中心绘制
	local hand =0
	for i=1,15 do 
		hand = GUIWndFindWindow(_Handle,"image"..i)
		if hand ~= 0 then 
			GUIImageSetDrawCenter(hand,true)
		end   
	end
	
	--初始化左侧按钮状态
	ButtonSetIsActivePageBtn(HandBook.Handle, "button1", true)
	WndMoveToParentTop(HandBook.Handle,"button1")
	WndMoveToParentTop(HandBook.Handle,"text1")
	UI:Lua_SubmitForm("图鉴表单", "getHandBookTb", "")
	
	--初始化左侧按钮编辑框上文字颜色
	local handle = GetWindow(HandBook.Handle, "text"..1)
	if handle ~= 0 then
		GUIEditSetTextColor(handle, MakeARGB(255,206,179,98))
	end
	local handle = GetWindow(HandBook.Handle, "text"..2)
	if handle ~= 0 then
		GUIEditSetTextColor(handle, MakeARGB(255,107,91,80))
	end
	
	--组合表
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

--服务端初始化回调，获取设置用于显示的怪物表和装备表
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

--左侧功能页签的选择
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
			CheckSetText(nil,"HandBook,check","显示全部") 
		end
	else
		showTb = HandBook.Weapons
		if handle ~= 0 then
			CheckSetText(handle,nil,"显示本职业")
		end
	end
	HandBook.NowTypeTable = showTb
	HandBook.SortTb(param, HandBook.IsNormal, showTb)
end

--整理表（按钮参数，显示状态，显示的表）
function HandBook.SortTb(param, isNormal, showTb)
	local tb = {}
	if param == 1 then											--1名字，2图片，3等级, 4描述，5拥有, 6类型（怪物才有）,7类型名称（怪物才有）
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
				newTb[i][7] = "小怪"
			elseif newTb[i][6] == 2 then
				newTb[i][7] = "队长"
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
	elseif param == 2 then										--1名字，2图片，3等级, 4KeyName，5拥有
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

--显示状态改变
function HandBook.CheckChange(_handle)
	HandBook.Index = 1
	HandBook.IsNormal = not HandBook.IsNormal
	HandBook.SortTb(HandBook.NowPage, HandBook.IsNormal, HandBook.NowTypeTable)
end

--翻页
function HandBook.TurnPage(_handle)
	local param = WndGetParam(_handle)
	if param == 1 then
		HandBook.Index = HandBook.Index - 1
	elseif param == 2 then
		HandBook.Index = HandBook.Index + 1
	end
	HandBook.UpDateUI(HandBook.NowPage, HandBook.ShowTable)
end

--更新UI（显示种类参数，显示的表）
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
					local str = GetTipBegin() .. tipAll(200,200) .. tipText("\n             " .. eTb[i][1] .. "\n", color, "system") .. tipText("Lv:" .. eTb[i][3] .. "\n", color, "system") .. tipText("类型:" .. eTb[i][7] .. "\n\n", color, "system") .. tipText("    " .. eTb[i][4] .. "\n\n", color, "system") .. GetTipEnd()
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