local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
--公告消息
local data_table =
{
	{
		["msg"] = "怪物攻城即将开始，勇士们，准备迎接怪物的愤怒与血的洗礼吧！",
		["delay"] = 10 --公告之间的间隔秒
	},
	{
		["msg"] = "绝道白猿：东风吹，战鼓擂，我是怪物我怕谁？！",
		["delay"] = 5
	},
	{
		["msg"] = "绝道白猿：孩儿们，现在正是攻城的好时候，去把那些可恶的人类都杀光了吧！",
		["delay"] = 10
	},
	{
		["msg"] = "妖风蔽日，黑雾漫天，兽吼阵阵，一群群的怪兽从远处渐渐逼近巫山城……",
		["delay"] = 10
	},
	{
		["msg"] = "白狼：嗷呜……可恶的GM，每次攻城都让我们狼族打前阵，我们是狼，又不是狗！",
		["delay"] = 5
	},
	{
		["msg"] = "白狼：小的们，给我冲啊！把可恶的人类全都撕碎！看我万狼奔袭！",
		["delay"] = 5
	},
	{
		["msg"] = "嗷呜——嗷呜——嗷呜…………一群狼出现在巫山城【255 286】坐标。",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {255, 286},
			["野狼"] = 20,
			["苍狼"] = 20,
			["魔狼"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {258, 297},
			["野狼"] = 20,
			["苍狼"] = 20,
			["魔狼"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {242, 281},
			["野狼"] = 20,
			["苍狼"] = 20,
			["魔狼"] = 20,
		}
	},
		{
		["delay"] = 75, 
		["monster"] =
		{
			["location"] = {250, 290},
			["白狼"] = 10,
		}
	}, --180s
	{
		["msg"] = "巨蛇：白狼兄弟，我也来相助与你了，看我的万蛇大阵！",
		["delay"] = 5
	},
	{
		["msg"] = "一大群蛇出现在巫山城【222 285】坐标。",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {222, 285},
			["黑水蛇"] = 20,
			["青蛇"] = 20,
			["红蛇"] = 20,
			["白蛇"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {227, 282},
			["黑水蛇"] = 20,
			["青蛇"] = 20,
			["红蛇"] = 20,
			["白蛇"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {215, 278},
			["黑水蛇"] = 20,
			["青蛇"] = 20,
			["红蛇"] = 20,
			["白蛇"] = 20,
		}
	},
	{
		["delay"] = 75,
		["monster"] =
		{
			["location"] = {222, 285},
			["巨蛇"] = 10,
		}
	},--140s
	{
		["msg"] = "绝道白猿：哈哈，白狼，巨蛇，把那些人类留给我一些，我要尝尝人脑的滋味儿！",
		["delay"] = 5
	},
	{
		["msg"] = "一大群猿猴出现在巫山城【253 323】坐标。",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {253, 323},
			["猿猴"] = 20,
			["凶暴猿猴"] = 20,
			["魔猿"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {258, 317},
			["猿猴"] = 20,
			["凶暴猿猴"] = 20,
			["魔猿"] = 20,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {247, 329},
			["猿猴"] = 20,
			["凶暴猿猴"] = 20,
			["魔猿"] = 20,
		}
	},
	{
		["msg"] = "绝道白猿：嘿嘿……可恶的人类！绝望吧！战栗吧！在我的利爪下颤抖吧！",
		["delay"] = 75,
		["monster"] =
		{
			["location"] = {253, 323},
			["绝道白猿"] = 10,
		}
	},--140s
	{
		["msg"] = "厮杀声渐渐平息，只留下满地尸骨，血流成河，血气弥漫整个巫山城。",
		["delay"] = 20,
	},
	{
		["msg"] = "绝道白猿：怎……怎么可能？人类如此强大，我的孩儿们不堪一击，赶快向将军冢和废弃矿洞求援！",
		["delay"] = 5,
	},
	{
		["msg"] = "骷髅王：不用了，我们已经来了，如此盛会，怎么能少得了我们呢？哈哈哈哈……",
		["delay"] = 5,
	},
	{
		["msg"] = "幽冥尸王：啊……可口的血食，鲜美的灵魂，已经有多久没有品尝到人类这种美味了？",
		["delay"] = 5,
	},
	{
		["msg"] = "骷髅王：嘿嘿，幽冥尸王大哥，不如我们合兵一处，共享盛宴如何？",
		["delay"] = 5,
	},
	{
		["msg"] = "幽冥尸王：好好好，骷髅王老弟有此雅兴，老哥我自当奉陪！",
		["delay"] = 5,
	},
	{
		["msg"] = "骷髅王：好！孩儿们，都给我出来吧！",
		["delay"] = 5,
	},
	{
		["msg"] = "一群骷髅出现在巫山城【200 244】坐标。",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {200, 244},
			["飞刀骷髅1"] = 10,
			["大斧骷髅1"] = 10,
			["单刀骷髅1"] = 10,
			["骷髅战士1"] = 10,
			["骷髅战将"] = 10,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {208, 253},
			["飞刀骷髅1"] = 10,
			["大斧骷髅1"] = 10,
			["单刀骷髅1"] = 10,
			["骷髅战士1"] = 10,
			["骷髅战将"] = 10,
		}
	},
	{
		["delay"] = 25,
		["monster"] =
		{
			["location"] = {200, 244},
			["飞刀骷髅1"] = 10,
			["大斧骷髅1"] = 10,
			["单刀骷髅1"] = 10,
			["骷髅战士1"] = 10,
			["骷髅战将"] = 10,
		}
	},--115s
	{
		["msg"] = "幽冥尸王：小的们，开始就餐了！都出来吧！",
		["delay"] = 5,
	},
	{
		["msg"] = "一群僵尸出现在巫山城【190 230】坐标。",
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {190, 230},
			["爬尸2"] = 15,
			["腐尸2"] = 15,
			["尸卫2"] = 15,
			["墓地蛆虫1"] = 15,
			["僵尸1"] = 15,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {190, 230},
			["爬尸2"] = 15,
			["腐尸2"] = 15,
			["尸卫2"] = 15,
			["墓地蛆虫1"] = 15,
			["僵尸1"] = 15,
		}
	},
	{
		["delay"] = 20,
		["monster"] =
		{
			["location"] = {190, 230},
			["爬尸2"] = 15,
			["腐尸2"] = 15,
			["尸卫2"] = 15,
			["墓地蛆虫1"] = 15,
			["僵尸1"] = 15,
		}
	},
	{
		["delay"] = 240,
		["monster"] =
		{
			["location"] = {190, 230},
			["雷暴僵尸1"] = 10,
		}
	},--305
	{
		["msg"] = "骷髅王：不好，人类太强了，孩儿们无法抵挡，看来只有我亲自出场了！",
		["delay"] = 5,
	},
	{
		["msg"] = "骷髅王出现在巫山城【190 230】坐标。",
		["delay"] = 55,
		["monster"] =
		{
			["location"] = {190, 230},
			["骷髅王"] = 5,
		}
	},
	{
		["msg"] = "骷髅王：啊——人类太强了，大哥，给我报仇啊！",
		["delay"] = 5,
	},
	{
		["msg"] = "幽冥尸王：啊？骷髅王老弟!",
		["delay"] = 5,
	},
	{
		["msg"] = "幽冥尸王：可恶啊，居然杀了骷髅王，人类，我必不与你们干休，看我的秘法！",
		["delay"] = 5,
	},
	{
		["msg"] = "幽冥尸王：以身聚魂，身化万千，变！变！变！都给我出来！",
		["delay"] = 5,
	},
	{
		["msg"] = "一群幽冥尸王出现在巫山城【190 230】坐标。",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {190, 230},
			["假尸王"] = 30,
			["幽冥尸王"] = 5,
		}
	},
	{
		["msg"] = "幽冥尸王：万千之中，谁能寻我真身！哈哈哈哈……",
		["delay"] = 215,
	},--310
	{
		["msg"] = "幽冥尸王：什么？败了！我居然败了？不要得意，莫要猖狂，我还会回来的！",
		["delay"] = 60,
	},
	{
		["msg"] = "人们千辛万苦，消灭了幽冥尸王，就在巫山城的人们举城相庆时，妖山暗穴方向升起了滚滚烟尘，似有大军向着龙城杀来……",
		["delay"] = 10,
	},
	{
		["msg"] = "千年树魔：吼——多少年了，我等待的，就是这一刻！",
		["delay"] = 5,
	},
	{
		["msg"] = "千年树魔：人类，当年你们怎样对待我的，我将十倍偿还给你们！",
		["delay"] = 5,
	},
	{
		["msg"] = "妖面监工：唧唧唧……树魔大人，妖面随时听候您的吩咐！",
		["delay"] = 5,
	},
	{
		["msg"] = "鬼面监工：树魔大人，我等驱赶尸奴大军，这就将这人类城池一举攻下，作为您重新复出的礼物。",
		["delay"] = 5,
	},
	{
		["msg"] = "铁齿战将：树魔大人，我等愿作先锋，为您征战四方！",
		["delay"] = 5,
	},
	{
		["msg"] = "千年树魔：吼——小的们，上吧，本大王随后就到！",
		["delay"] = 4,
	},
	{
		["msg"] = "龙城告急！大量的妖魔出现在了龙城，请勇士们赶快去消灭它们！",
		["delay"] = 1,
	},
	{
		["msg"] = "一群尸奴出现在龙城【190 230】坐标。",
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {190, 230},
			["飞芒"] = 20,
			["飞萤"] = 20,
			["魔萤"] = 20,
			["尸奴3"] = 20,
			["掘铲尸奴1"] = 20,
			["铁镐尸奴4"] = 20,
			["尸奴工头1"] = 20,
			["精英妖面监工1"] = 10,
			["精英鬼面监工1"] = 10,
		}
	},
	{
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {194, 238},
			["飞芒"] = 20,
			["飞萤"] = 20,
			["魔萤"] = 20,
			["尸奴3"] = 20,
			["掘铲尸奴1"] = 20,
			["铁镐尸奴4"] = 20,
			["尸奴工头1"] = 20,
			["精英妖面监工1"] = 10,
			["精英鬼面监工1"] = 10,
		}
	},
	{
		["delay"] = 215,
		["monster"] =
		{
			["location"] = {176, 216},
			["飞芒"] = 20,
			["飞萤"] = 20,
			["魔萤"] = 20,
			["尸奴3"] = 20,
			["掘铲尸奴1"] = 20,
			["铁镐尸奴4"] = 20,
			["尸奴工头1"] = 20,
			["精英妖面监工1"] = 10,
			["精英鬼面监工1"] = 10,
		}
	},--435
	{
		["msg"] = "铁齿战将：树魔大人，人类太强了，小的们损兵折将，还请大人救助！",
		["delay"] = 5,
	},
	{
		["msg"] = "千年树魔：一群废物！看来，还是需要我亲自出马才行！",
		["delay"] = 5,
	},
	{
		["msg"] = "千年树魔：分枝散叶，万化其根，以根孕枝，神念附体，给我化！给我生！给我变！",
		["delay"] = 5,
	},
	{
		["msg"] = "龙城的【228 200】处出现了千年树魔！",
		["delay"] = 1,
		["monster"] =
		{
			["location"] = {228, 200},
			["千年树魔"] = 1,
		}
	},
	{
		["msg"] = "龙城的【240 204】处出现了千年树魔！",
		["delay"] = 1,
		["monster"] =
		{
			["location"] = {240, 204},
			["千年树魔"] = 1,
		}
	},
	{
		["msg"] = "龙城的【228 200】处出现了千年树魔！",
		["delay"] = 598,
		["monster"] =
		{
			["location"] = {228, 200},
			["千年树魔"] = 1,
		}
	},--615
	{
		["msg"] = "千年树魔：啊啊啊……我居然败了，我不甘心，我不甘心啊！",
		["delay"] = 5,
	},
	{
		["msg"] = "千年树魔：你们居然敢如此对我，我要和你们同归于尽！爆……给我爆啊！",
		["delay"] = 5,
	},
	{
		["msg"] = "千年树魔自爆了，毁坏了天荒阵的封印。",
		["delay"] = 5,
	},
	{
		["msg"] = "不好了！天荒阵的封印被破坏，里面的怪物都蠢蠢欲动！",
		["delay"] = 5,
	},
	{
		["msg"] = "正在这时，城门外突然传来一阵笑声。",
		["delay"] = 5,
	},
	{
		["msg"] = "牛魔将军：哇哈哈哈……看来，我来得正是时候。",
		["delay"] = 5,
	},
	{
		["msg"] = "牛魔将军：千年树魔老儿不懂兵法，自恃道行高深，孤军深入，落得如此下场，真是可悲！",
		["delay"] = 5,
	},
	{
		["msg"] = "红面牛魔：小的们早就等着这一天了！",
		["delay"] = 5,
	},
	{
		["msg"] = "黑面牛魔：烧杀抢掠，我黑面牛魔最喜欢了，哈哈哈哈……",
		["delay"] = 5,
	},
	{
		["msg"] = "牛魔守卫：我最喜欢那肥嫩的婴儿，咬一口那个香啊，嘿嘿……",
		["delay"] = 5,
	},
	{
		["msg"] = "牛魔勇士：那些漂亮的小娘皮是我的，哞……",
		["delay"] = 5,
	},
	{
		["msg"] = "一群牛魔出现在龙城【210 170】坐标。",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {210, 170},
			["红面牛魔2"] = 20,
			["牛魔守卫3"] = 20,
			["牛魔勇士1"] = 20,
			["牛魔侍卫"] = 10,
			["黑面牛魔1"] = 20,
		}
	},
	{
		["msg"] = "牛魔将军出现在龙城【208 153】坐标。",
		["delay"] = 515,
		["monster"] =
		{
			["location"] = {208, 153},
			["牛魔将军"] = 1,
		}
	},--565
	{
		["msg"] = "正当人们英勇奋战，牛魔将军在喊杀声中缓缓倒下的时候，天荒阵中突然传来一声巨响。",
		["delay"] = 5,
	},
	{
		["msg"] = "天荒阵封印彻底破裂了！里面的怪物即将冲出！",
		["delay"] = 5,
	},
	{
		["msg"] = "血禅师：哇呀……给我开！给我开啊！可恶的封印，可恶的人类！等我出来，你们将面对我的滔天怒火！",
		["delay"] = 5,
	},
	{
		["msg"] = "血禅师：所有胆敢封印我的人，都将被我彻底毁灭！",
		["delay"] = 5,
	},
	{
		["msg"] = "血禅师：战栗吧，颤抖吧，恐惧吧！尖叫吧！你永远也无法知道我是多么的强大！",
		["delay"] = 5,
	},
	{
		["msg"] = "血禅师：喔……好浓重的血气，好熟悉，好香甜的味道，哈哈哈哈……我似乎出来得正是时候！",
		["delay"] = 5,
	},
	{
		["msg"] = "大量的血气被血禅师吸收，他被封印而损耗的力量快速地恢复。",
		["delay"] = 5,
	},
	{
		["msg"] = "血禅师：小的们，这些血气还不够，我还需要更多的血气，快快出击，尽情的杀戮吧！",
		["delay"] = 5,
	},
	{
		["msg"] = "一群天荒阵怪物出现在龙城【230 200】坐标。",
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {230, 200},
			["巨蛾"] = 10,
			["蟒蛇1"] = 10,
			["蛇蛟1"] = 10,
			["蓝兽1"] = 10,
			["沙石魔30 "] = 10,
			["散兵1"] = 10,
			["刀奴2"] = 10,
			["古怪刀客1"] = 10,
			["鬼面刀手1"] = 10,
			["双刀侩子手1 "] = 10,
			["风魔30"] = 10,
		}
	},
	{
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {230, 200},
			["巨蛾"] = 10,
			["蟒蛇1"] = 10,
			["蛇蛟1"] = 10,
			["蓝兽1"] = 10,
			["沙石魔30 "] = 10,
			["散兵1"] = 10,
			["刀奴2"] = 10,
			["古怪刀客1"] = 10,
			["鬼面刀手1"] = 10,
			["双刀侩子手1 "] = 10,
			["风魔30"] = 10,
		}
	},
	{
		["delay"] = 60,
		["monster"] =
		{
			["location"] = {230, 200},
			["巨蛾"] = 10,
			["蟒蛇1"] = 10,
			["蛇蛟1"] = 10,
			["蓝兽1"] = 10,
			["沙石魔30 "] = 10,
			["散兵1"] = 10,
			["刀奴2"] = 10,
			["古怪刀客1"] = 10,
			["鬼面刀手1"] = 10,
			["双刀侩子手1 "] = 10,
			["风魔30"] = 10,
		}
	},
	{
		["delay"] = 250,
		["monster"] =
		{
			["location"] = {230, 200},
			["巨石傀儡 "] = 10,
		}
	},--470
	{
		["msg"] = "血禅师：真是一群废物，连弱小的人类都打不过，不过，我的力量已恢复大半，那就让你们看看我的惊天秘术吧！",
		["delay"] = 5,
	},
	{
		["msg"] = "血禅师：以血化体，以身招魂，归来吧！逝去的魔魂！复生人间，尽情屠戮狂欢吧！",
		["delay"] = 5,
	},
	{
		["msg"] = "一群BOSS出现在龙城【235 200】，开始大肆杀戮！",
		["delay"] = 900,
		["monster"] =
		{
			["location"] = {235, 200},
			["白狼"] = 5,
			["绝道白猿"] = 5,
			["巨蛇"] = 5,
			["骷髅王"] = 5,
			["幽冥尸王"] = 5,
			["假尸王"] = 20,
			["千年树魔"] = 1,
			["牛魔将军"] = 1,
			["妖刀侍卫"] = 3,
			["牛魔侍卫"] = 5,
			["铁齿战将1"] = 5,
			["巨石傀儡"] = 5,
			["妖刀侍卫"] = 5,
			["天原猛士1"] = 10,
			["夜行僧1"] = 10,
			["天原勇士1"] = 10,
			["鬼面武者1"] = 10,
			["天原死士3"] = 10,
			["妖僧1"] = 10,
			["影刺2"] = 10,
			["黑暗刺客5"] = 10,
			["邪翅"] = 20,
		}	
	},--910
	{
		["msg"] = "血禅师：哈哈，力量终于尽复，我所到之处，将带来恐惧和绝望，所有的人都将在我无敌的法力下呻吟和忏悔，我来了！",
		["delay"] = 5,
	},
	{
		["msg"] = "血禅师出现在龙城【209 181】坐标。",
		["delay"] = 300,
		["monster"] =
		{
			["location"] = {209, 181},
			["血禅师"] = 1,
		}
	},
	{
		["msg"] = "血禅师：这不可能，我怎么可能被弱小的人类打败？血海苍穹，怒怨滔天，以血化体，万劫不灭，看我的身外化身！",
		["delay"] = 5,
	},
	{
		["msg"] = "血禅师出现在龙城【515 130】坐标。",
		["delay"] = 1,
		["monster"] =
		{
			["location"] = {515, 130},
			["血禅师"] = 1,
		}
	},
	{
		["msg"] = "血禅师出现在龙城【510 40】坐标。",
		["delay"] = 1,
		["monster"] =
		{
			["location"] = {510, 40},
			["血禅师"] = 1,
		}
	},
	{
		["msg"] = "血禅师出现在龙城【510 70】坐标。",
		["delay"] = 888,
		["monster"] =
		{
			["location"] = {510, 70},
			["血禅师"] = 1,
		}
	},--1195s
	{
		["msg"] = "血禅师：哈哈哈哈，我虽然被打败了，可是还有比我更强大的存在即将到来，他将毁灭你们……",
		["delay"] = 5,
	},
}

local data_FanTianSeng = 
{
	{
		["msg"] = "梵天僧出现在龙城郊外，位于天荒邪庙入口处的【500 100】坐标。",
		["delay"] = 5,
	},
	{
		["msg"] = "不好了，梵天僧正亲自从天荒邪庙往龙城而来，准备屠灭龙城！大家快去消灭他吧！",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {500, 100},
			["梵天僧"] = 1,
		}
	},
	{
		["msg"] = "梵天僧：伟大如我，居然也有如此落寞的时候，问世间，谁能与我相抗？",
		["delay"] = 5,
	},
	{
		["msg"] = "梵天僧：卑微而渺小的人类，蝼蚁一般的东西，居然也敢违拗我？",
		["delay"] = 5,
	},
	{
		["msg"] = "梵天僧：去死吧！我将用你们的血与火来洗刷我的怒气！",
		["delay"] = 5,
	},
	{
		["msg"] = "梵天僧：啊——伟大的我，是永恒不灭的，我还会回来的！",
		["delay"] = 5,
	},
	{
		["msg"] = "梵天僧终于倒下了！",
		["delay"] = 5,
	},
	{
		["msg"] = "怪物攻城结束，人类终于消灭了所有的怪物，守住了龙城，感谢各位的光临！祝各位游戏愉快！",
		["delay"] = 5,
	},
}

--local curindex = 1						--当前表格处理索引
lualib:SetInt("0", "gwgc1_curindex", 1);
--local map_name = "巫山城"				--当前地图名称
lualib:SetStr("0", "gwgc1_map_name", "巫山城");
local monsterRange = 7					--怪物刷新区范围
local time_quotiety = 1000				--时间系数
--local pause_process_table = false 		--是否暂停处理表格数据
lualib:SetInt("0", "gwgc1_pause_process_table", 0);
local kill_XueChanShiMaxTime = 10		--杀死血禅师最大时间(秒)
local kill_FanTianSengMaxTime = 10		--杀死梵天僧最大时间(秒)
--local elapse_time = 0					--过去了的时间
lualib:SetInt("0", "gwgc1_elapse_time", 0);

function siege(id, map, times)
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	lualib:SysMsg_SendTopMsg(1, data_table[curindex]["msg"])
	lualib:SysMsg_SendBroadcastColor(data_table[curindex]["msg"], "", 1, 12)
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	lualib:AddTimer(lualib:Map_GetMapGuid(map_name), 1, data_table[curindex]["delay"] * time_quotiety, 1, "on_timer")
end

function on_timer()
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	curindex = curindex + 1;
	lualib:SetInt("0", "gwgc1_curindex", curindex);
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	--检查是否有msg
	--lualib:Print(tostring(curindex));
	--回显信息并检测地图变更
	broadcast_msg_and_set_map();
	--检查是否要刷怪, 按顺序处理表格数据
	process_table();
	--数据处理完成, 定时器终止
	if(curindex >= table.getn(data_table)) then
		lualib:Print("timer函数准备返回, 不再调用timer了");
		curindex = 1;
		lualib:SetInt("0", "gwgc1_curindex", curindex);
		--pause_process_table = false;
		lualib:SetInt("0", "gwgc1_pause_process_table", 0);
		lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_FanTianSeng[curindex]["delay"] * time_quotiety, 1, "on_timer_FanTianSengProcess");
		return;
	end
	--设置定时, 调用下一个表格数据
	local pause_process_table = lualib:GetInt("0", "gwgc1_pause_process_table");
	--if(not pause_process_table) then
	if(pause_process_table == 0) then
		lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_table[curindex]["delay"] * time_quotiety, 1, "on_timer")
	end
end

function on_timer_FanTianSengProcess()
	--lualib:Print("进入梵天僧");
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	if(data_FanTianSeng[curindex]["msg"] ~= nil) then
		lualib:SysMsg_SendBroadcastColor(data_FanTianSeng[curindex]["msg"], "", 1, 12)
	end
	if(data_FanTianSeng[curindex]["monster"] ~= nil) then
		for key, value in pairs(data_FanTianSeng[curindex]["monster"]) do
			if(key ~= "location" and lualib:MonsterKey2ID(key) > 0) then
				lualib:Map_GenMonster(lualib:Map_GetMapGuid(map_name), data_FanTianSeng[curindex]["monster"]["location"][1], 
					data_FanTianSeng[curindex]["monster"]["location"][2], monsterRange, lualib:GenRandom(0, 7), key, value, false);
				--pause_process_table = true;
				lualib:SetInt("0", "gwgc1_pause_process_table", 1);
				--没完成 monster值是错的, 要调用下面Map_GetRegionMonsters
				local map_guid = lualib:Map_GetMapGuid(map_name);
				local monsters = lualib:Map_GetRegionMonsters(map_guid, "梵天僧", data_FanTianSeng[curindex]["monster"]["location"][1], 
									data_FanTianSeng[curindex]["monster"]["location"][2], monsterRange + 2, true, true);
				lualib:Print(tostring(monsters));
				lualib:Print(tostring(monsters[1]));
				if  monsters ~= nil then
					lualib:AddTrigger(monsters[1],  lua_trigger_post_die, "on_trigger_post_die");
				end
			end
		end
	end
	local pause_process_table = lualib:GetInt("0", "gwgc1_pause_process_table");
	--if(not pause_process_table) then
	if(pause_process_table == 0) then
		if(curindex <= table.getn(data_FanTianSeng)) then
			lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_FanTianSeng[curindex]["delay"] * time_quotiety, 1, "on_timer_FanTianSengProcess")
		end
	end
	curindex = curindex + 1;
	lualib:SetInt("0", "gwgc1_curindex", curindex);
end

function on_trigger_post_die(actor, killer)
	--lualib:Print("已经死了");
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_FanTianSeng[curindex]["delay"] * time_quotiety, 1, "on_timer_FanTianSengProcess");
	--pause_process_table = false;
	lualib:SetInt("0", "gwgc1_pause_process_table", 0);
end

--按顺序处理表格数据
function process_table()
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	if(data_table[curindex]["monster"] ~= nil) then
		for key, value in pairs(data_table[curindex]["monster"]) do
			if(key ~= "location" and lualib:MonsterKey2ID(key) > 0) then
				lualib:Map_GenMonster(lualib:Map_GetMapGuid(map_name), data_table[curindex]["monster"]["location"][1], 
					data_table[curindex]["monster"]["location"][2], monsterRange, lualib:GenRandom(0, 7), key, value, false);
				if(key == "血禅师") then
					check_XueChanShiHp();
				else
					lualib:Print(key);
				end
			end
		end
	end
end

--检查血禅师HP
function check_XueChanShiHp()
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	local map_name = lualib:GetStr("0", "gwgc1_map_name")
	local map_guid = lualib:Map_GetMapGuid(map_name);
	local monsters = lualib:Map_GetRegionMonsters(map_guid, "血禅师", data_table[curindex]["monster"]["location"][1], 
						data_table[curindex]["monster"]["location"][2], monsterRange + 2, true, true);
	if monsters ~= nil then
		for i = 1, table.getn(monsters) do
			if(monsters[i] ~= "") then
				--pause_process_table = true; --暂停主表格处理
				lualib:SetInt("0", "gwgc1_pause_process_table", 1);
				--elapse_time = 0; --时间清0
				lualib:SetInt("0", "gwgc1_elapse_time", 0);
				lualib:AddTimer(monsters[i], 11, 1000, -1, "on_timer_check_XueChanShihp"); --处理
			end
		end
	end
end

--定时检查HP
function on_timer_check_XueChanShihp(monster, timer_id)
	local elapse_time = lualib:GetInt("0", "gwgc1_elapse_time");
	elapse_time = elapse_time + 1;
	lualib:SetInt("0", "gwgc1_elapse_time", elapse_time);
	local rate = lualib:Hp(monster, false) / lualib:Hp(monster, true);
	--lualib:Print("Current Hp: "..lualib:Hp(monster, false));
	--超过时间了, 杀死怪物
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	if(elapse_time > kill_XueChanShiMaxTime) then
		curindex = table.getn(data_table) - 1; --直接跳到最后一个boss
		lualib:Print(tostring(curindex));
		lualib:Monster_Remove(monster);
	end
	if(lualib:Hp(monster, false) <= 0) then
		local map_name = lualib:GetStr("0", "gwgc1_map_name")
		lualib:DisableTimer(monster, timer_id);
		lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_table[curindex]["delay"] * time_quotiety, 1, "on_timer");
		--pause_process_table = false;
		lualib:SetInt("0", "gwgc1_pause_process_table", 0);
	end
end

--发送系统公告, 并检查表格数据, 是否要设置地图为龙城
function broadcast_msg_and_set_map()
	local curindex = lualib:GetInt("0", "gwgc1_curindex")
	if(data_table[curindex]["msg"] ~= nil) then
		lualib:SysMsg_SendBroadcastColor(data_table[curindex]["msg"], "", 1, 12)
		if string.find(data_table[curindex]["msg"], "龙城") ~= nil then
			map_name = "龙城"
			lualib:SetStr("0", "gwgc1_map_name", map_name)
			lualib:Print("找到龙城字符串了");
		end
	end
end
