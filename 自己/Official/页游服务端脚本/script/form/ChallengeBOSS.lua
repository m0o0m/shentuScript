local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local cs_tab ={
		{"天荒教主副本"		, 	89 , 	146 },
		{"祖玛教主副本"		,   89 , 	100 },
		{"赤月恶魔副本"		,	89 , 	146 },
		{"牛魔王副本"		,   89 , 	100 },
		{"魔龙教主副本"		, 	57 , 	89 },
		{"火龙副本"		,   89 , 	100 }
        }

local personboss = {{{"天荒教主","（60级）",62},{"邪皇","（70级）",63},{"噬月魇魔","（80级）",64},
			{"牛魔王","（100级）",80},{"蛮荒教主","（140级）","转生1级"},{"炎龙","（180级）","转生2级"}},
			
			{{0,0682700300,"战将手镯","法灵手镯","散人手镯","战将头盔","法灵头盔","散人头盔","战将戒指","法灵戒指"},   --第一个参数已经不用
			{0,0681600300,"武魂手镯","魔魂手镯","玄魂手镯","武魂戒指","魔魂戒指","玄魂戒指","武魂靴子","魔魂靴子"},
			{0,0682900300,"天武手镯","天魔手镯","天灵手镯","天武戒指","天魔戒指","天灵戒指","天武项链","天魔项链"},
			{0,0682000300,"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},
			{0,0682400300,"威武手镯","幻神手镯","无量手镯","洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子"},
			{0,0682800300,"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天头盔","天魁玄灵头盔"}}}

--[[local bosslist =  {{0682100400,"嗜血虫皇"     ,"（40级）"  ,"15分钟"  ,"毒虫洞三层","BOSS大厅一层"},
					{0681200400,"食人统领"   ,"（50级）"  ,"15分钟"  ,"食人魔洞穴三层","BOSS大厅一层","亚摩灵域第一域"},
					{0682700400,"天荒教主"   ,"（60级）"  ,"15分钟","天荒阵二层","亚摩灵域第一域"},
					{0681600400,"邪皇"   ,"（70级）"  ,"30分钟","邪庙三层","BOSS大厅一层","亚摩灵域第一域"},
					{0682200400,"噬月魇魔"   ,"（80级）"  ,"30分钟","赤炎禁地五层","BOSS大厅一层","亚摩灵域第一域"},
					{0682000400,"牛魔王"     ,"（100级）" ,"60分钟","牛魔洞三层","BOSS大厅一层","亚摩灵域第一域"},
					{0635400400,"阎罗教主"   ,"（120级）" ,"120分钟","流沙洞三层","BOSS大厅一层","亚摩灵域第二域"},
					{0682500400,"血色千人斩" ,"（120级）" ,"120分钟","天魔石窟三层","BOSS大厅一层"},
					{0682300400,"囚世天魔"   ,"（120级）" ,"120分钟","镇魔禁地三层","BOSS大厅一层"},
					{0682400400,"蛮荒教主"   ,"（140级）" ,"150分钟","蛮荒城三层"},
					{0636300400,"九尾狐·土" ,"（140级）" ,"150分钟","沙漠地宫三层","亚摩灵域第三域"},
					{0631900400,"九尾狐·火" ,"（140级）" ,"150分钟","沙漠地宫三层","亚摩灵域第三域"},
					{0631800400,"九尾狐·冰" ,"（140级）" ,"150分钟","沙漠地宫三层","亚摩灵域第三域"},
					{0636100400,"冰咒冥后"   ,"（140级）" ,"150分钟","雪域试炼三层","BOSS大厅二层"},
					{0646700400,"铁血大帝"   ,"（160级）" ,"180分钟","BOSS大厅一层","铁血魔宫二层"},
					{0632600400,"炎龙"       ,"（180级）" ,"180分钟","火龙洞三层","BOSS大厅二层"},
					{0636700400,"血刹明王"   ,"（180级）" ,"180分钟","北冥神殿三层","BOSS大厅一层","亚摩灵域第四域"},
					{0636600400,"陨天魔王"     ,"（180级）" ,"180分钟","西郊神殿三层","亚摩灵域第四域"},
					{0645200400,"凛霜幽冥"   ,"（180级）" ,"180分钟","海角秘境三层","BOSS大厅二层","亚摩灵域第四域"},
					{0645100400,"亡魂主宰"   ,"（180级）" ,"180分钟","海角秘境三层","BOSS大厅二层"},
					{0645400400,"深岩领主"     ,"（200级）" ,"180分钟","海角秘境三层","BOSS大厅二层"},
					{0645600400,"洪荒业兽"   ,"（200级）" ,"240分钟","BOSS大厅三层"},
					{0630600400,"混沌暴君"   ,"（200级）" ,"240分钟","BOSS大厅三层"},
					{0644200400,"梵昏冥帝"   ,"（200级）" ,"360分钟","BOSS大厅三层"}
} --]] 

--[[local bosslist =  {{"触龙神"     ,"（40级）"  ,"15分钟"  ,"毒虫洞三层","BOSS大厅一层"},
					{"白色恶猪"   ,"（50级）"  ,"15分钟"  ,"食人魔洞穴三层","BOSS大厅一层","亚摩灵域第一域"},
					{"沃玛教主"   ,"（60级）"  ,"15分钟","天荒阵二层","亚摩灵域第一域"},
					{"祖玛教主"   ,"（70级）"  ,"30分钟","邪庙三层","BOSS大厅一层","亚摩灵域第一域"},
					{"赤月恶魔"   ,"（80级）"  ,"30分钟","赤炎禁地五层","BOSS大厅一层","亚摩灵域第一域"},
					{"牛魔王"     ,"（100级）" ,"60分钟","牛魔洞三层","BOSS大厅一层","亚摩灵域第一域"},
					{"黄泉教主"   ,"（120级）" ,"120分钟","流沙洞三层","BOSS大厅一层","亚摩灵域第二域"},
					{"尸霸" ,"（120级）" ,"120分钟","天魔石窟三层","BOSS大厅一层"},
					{"虹魔教主"   ,"（120级）" ,"120分钟","镇魔禁地三层","BOSS大厅一层"},
					{"魔龙教主"   ,"（140级）" ,"150分钟","蛮荒城三层"},
					{"火尾黑狐王" ,"（140级）" ,"150分钟","沙漠地宫三层","亚摩灵域第三域"},
					{"金爪赤狐王" ,"（140级）" ,"150分钟","沙漠地宫三层","亚摩灵域第三域"},
					{"玉面素狐王" ,"（140级）" ,"150分钟","沙漠地宫三层","亚摩灵域第三域"},
					{"雪域魔王"   ,"（140级）" ,"150分钟","雪域试炼三层","BOSS大厅二层"},
					{"雷炎蛛王"   ,"（160级）" ,"180分钟","BOSS大厅一层","铁血魔宫二层"},
					{"火龙"       ,"（180级）" ,"180分钟","火龙洞三层","BOSS大厅二层"},
					{"阿修罗神"   ,"（180级）" ,"180分钟","北冥神殿三层","BOSS大厅一层","亚摩灵域第四域"},
					{"蛇妖王"     ,"（180级）" ,"180分钟","西郊神殿三层","亚摩灵域第四域"},
					{"寒荒海兽"   ,"（180级）" ,"180分钟","海角秘境三层","BOSS大厅二层","亚摩灵域第四域"},
					{"深海巨魔"   ,"（180级）" ,"180分钟","海角秘境三层","BOSS大厅二层"},
					{"巫妖王"     ,"（200级）" ,"180分钟","海角秘境三层","BOSS大厅二层"},
					{"炼狱巨魔"   ,"（200级）" ,"240分钟","BOSS大厅三层"},
					{"灭世魔君"   ,"（200级）" ,"240分钟","BOSS大厅三层"},
					{"铁血魔王"   ,"（200级）" ,"360分钟","BOSS大厅三层"}
}--]]


----*****      修改 bosslist 时  要同时修改 item_tab  两表长度必须一样   *****--------
local bosslist =  {{0681500300,"触龙神"      ,"（40级）"  ,"15分钟"  ,"蜈蚣洞三层","BOSS大厅"},
					{0681200300,"白色恶猪"   ,"（50级）"  ,"15分钟"  ,"猪洞三层","BOSS大厅","玛雅神殿一层"},
					{0682700300,"沃玛教主"   ,"（60级）"  ,"15分钟","沃玛寺庙二层","玛雅神殿一层"},
					{0681600300,"祖玛教主"   ,"（70级）"  ,"30分钟","祖玛寺庙二层","BOSS大厅","玛雅神殿一层"},
					{0682900300,"赤月恶魔"   ,"（80级）"  ,"30分钟","赤月神殿五层","BOSS大厅","玛雅神殿一层"},
					{0682000300,"牛魔王"     ,"（100级）" ,"60分钟","牛魔洞三层","BOSS大厅","玛雅神殿一层"},
					{0683500300,"黄泉教主"   ,"（120级）" ,"120分钟","骨魔洞三层","BOSS大厅","玛雅神殿二层"},
					{0684600300,"暗夜女巫"   ,"（120级）" ,"120分钟","玛雅神殿二层"},
					{0682500300,"尸霸"       ,"（120级）" ,"120分钟","尸魔洞三层","BOSS大厅"},
					{0682300300,"虹魔教主"   ,"（120级）" ,"120分钟","封魔洞三层","BOSS大厅"},
					{0682400300,"魔龙教主"   ,"（140级）" ,"150分钟","魔龙城三层"},
					{0683100300,"火尾黑狐王" ,"（140级）" ,"150分钟","狐月神殿三层","玛雅神殿三层"},
					{0631900300,"金爪赤狐王" ,"（140级）" ,"150分钟","狐月神殿三层","玛雅神殿三层"},
					{0685300300,"玉面素狐王" ,"（140级）" ,"150分钟","狐月神殿三层","玛雅神殿三层"},
					{0683200300,"雪域魔王"   ,"（140级）" ,"150分钟","雪域试炼三层","BOSS大厅二层", "玛雅神殿三层"},
					{0683400300,"雷炎蛛王"   ,"（160级）" ,"180分钟","BOSS大厅","雷炎洞穴三层"},
					{0682800300,"火龙"       ,"（180级）" ,"180分钟","火龙神殿三层","BOSS大厅二层"},
					{0683800300,"阿修罗神"   ,"（180级）" ,"180分钟","天空之城三层","玛雅神殿四层"},
					{0683000300,"蛇妖王"     ,"（180级）" ,"180分钟","玄冰殿三层","玛雅神殿四层"},
					{0685100300,"深渊蛟龙"   ,"（180级）" ,"180分钟","玄冰殿三层"},
					{0681700300,"寒荒海兽"   ,"（180级）" ,"180分钟","海底世界三层","BOSS大厅二层","玛雅神殿四层"},
					{0683600300,"深海巨魔"   ,"（180级）" ,"180分钟","海底世界三层","BOSS大厅二层"},
					{0683300300,"巫妖王"     ,"（200级）" ,"180分钟","海底世界三层","BOSS大厅二层"},
					{0684700300,"炼狱巨魔"   ,"（200级）" ,"240分钟","BOSS大厅三层"},
					{0683700300,"灭世魔君"   ,"（200级）" ,"240分钟","BOSS大厅三层"},
					{0684400300,"铁血魔王"   ,"（200级）" ,"360分钟","BOSS大厅三层"},
					}
	
local item_tab = {
		{"坚固手套","龙之手镯","三眼手镯","蓝翡翠项链","恶魔铃铛大","凤凰明珠","黑铁头盔","魔法头盔"},--触龙神
		{"圣战手镯","法神手镯","天尊手镯","圣战戒指","法神戒指","天尊戒指","圣战头盔","法神头盔"},--白色恶猪
		{"战将手镯","法灵手镯","散人手镯","战将头盔","法灵头盔","散人头盔","战将戒指","法灵戒指"},--沃玛教主
		{"武魂手镯","魔魂手镯","玄魂手镯","武魂戒指","魔魂戒指","玄魂戒指","武魂靴子","魔魂靴子"},--祖玛教主
		{"天武手镯","天魔手镯","天灵手镯","天武戒指","天魔戒指","天灵戒指","天武项链","天魔项链"},--赤月恶魔
		{"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},--牛魔王
		{"威武手镯","幻神手镯","无量手镯","威武戒指","幻神戒指","无量戒指","威武腰带","幻神腰带"},--黄泉教主
		{"威武手镯","幻神手镯","无量手镯","威武戒指","幻神戒指","无量戒指","威武靴子","幻神靴子"},--暗夜女巫
		{"威武手镯","幻神手镯","无量手镯","威武戒指","幻神戒指","无量戒指","威武靴子","幻神靴子"},--尸霸
		{"威武手镯","幻神手镯","无量手镯","威武腰带","幻神腰带","无量腰带","威武靴子","幻神靴子"},--虹魔教主
		{"威武手镯","幻神手镯","无量手镯","洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子"},--魔龙教主
		{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天戒指","天地玄奇戒指","玄天妙法戒指","洪武行天项链","天地玄奇项链"},--火尾黑狐王
		{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天戒指","天地玄奇戒指","玄天妙法戒指","洪武行天头盔","天地玄奇头盔"},--金爪赤狐王
		{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天戒指","天地玄奇戒指","玄天妙法戒指","洪武行天靴子","天地玄奇靴子"},--玉面素狐王
		{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子","玄天妙法靴子","洪武行天戒指","天地玄奇戒指"},--雪域魔王
		{"雄武震天手镯","天异玄奥手镯","混天广法手镯","雄武震天头盔","天异玄奥头盔","混天广法头盔","雄武震天项链","天异玄奥项链"},--雷炎蛛王
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天头盔","天魁玄灵头盔"},--火龙
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天靴子","天魁玄灵靴子"},--阿修罗神
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--蛇妖王
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--深渊蛟龙
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天靴子","天魁玄灵靴子"},--寒荒海兽
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天腰带","天魁玄灵腰带"},--深海巨魔
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--巫妖王
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天靴子","天魁玄灵靴子"},--炼狱魔王
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--灭世魔君
		{"神威亢天手镯","天暴玄宗手镯","昊天玄尊手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"}--铁血魔王
		}
		
-----------------------图标显示-----------------------------
function openChallengeBoss_show(player)
	
	
	if lualib:GetClientType(player) == 0 then
		AddSEIcon(player, 1, -1, "ChallengeBOSS", 1800200087, "倒计时", "openChallenge","","杀BOSS狂爆装备")
		return ""
	end 
	AddSEIcon(player, 1, -0.75, "ChallengeBOSS", 1800200087, "倒计时", "openChallengeBoss","","杀BOSS狂爆装备")
	
--[[	local level = lualib:Level(player)
	if numVisible(player) == 1 and level >= 80 then 
	--	DelIconMagic(player, "ChallengeBOSS")
		AddIconMagic(player, "ChallengeBOSS",3020300100,45,-16, 180)
	end--]]
	openChallengeBoss_magic(player)
	return ""
end

function openChallengeBoss_magic(player)
	
	local level = lualib:Level(player)
	if numVisible(player) == 1 and level >= 80 then 
	--	DelIconMagic(player, "ChallengeBOSS")
		AddIconMagic(player, "ChallengeBOSS",3020300100,45,-16, 180)
	end
	return ""
end
-------------------图标被点击-----------------------

function openChallenge(player)
	lualib:ShowFormWithContent(player, "form文件表单", "BossWnd")
	return ""
end

function openChallengeBoss(player,param)
	lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenBoss()")
	return ""
end

function GetInit(player) 
	local boss_tab= {}
	for i=1,#bosslist do 
		boss_tab[i] = {}
		for j=1,#bosslist[i] do 
			boss_tab[i][j] = bosslist[i][j]
			if j >= 5 then 
				boss_tab[i][j] = lualib:KeyName2Name(bosslist[i][j],5)
			end
		end
		boss_tab[i][2] = lualib:KeyName2Name(bosslist[i][2],2)
	end
	
	local timeList = {1,1,1,1,0,0,0,0,0,0,0,0}    -- 第一个为提示标志位   2,3,4,无用
	for i=5,#timeList do 
		timeList[i] =lualib:GetDayInt(player, "qianwang"..i) 
	end
	if lualib:HasQuest(player, 73) then
		timeList[1] = lualib:GetInt(player, "qianwang1")
	end
	
	lualib:ShowFormWithContent(player,"脚本表单","BossWnd.Init("..serialize(timeList)..","..serialize(boss_tab)..","..serialize(personboss)..","..serialize(item_tab)..");")
	--lualib:ShowFormWithContent(player, "form文件表单", "ChallengeBOSSUI#"..serialize(itemList).."#"..serialize(bosslist).."#"..serialize(timelist_1).."#"..serialize(imgboss).."#"..serialize(personboss).."#"..tips1)
    return ""
end


function numVisible(player)
--[[	local score_tab ={{16000,19000,27000,38000,50000,69000,88000,108000,138000,168000},
				{198000,240000,280000,330000,380000,440000,500000,560000,630000,700000},
				{780000,850000,950000,1020000,1100000,1200000,1350000,1500000,1700000,2000000},
				{2400000,2900000,3400000,4000000,4600000,5300000,6000000,6800000,7700000,9000000},
				{90000009000000}}--]]
				
	local score_tab ={  {43000 ,57000 ,100000,115000,246600,259600,381200,394200,604200,619200},
						{1000000,1050000,1570000,1680000,2350000,2450000,3250000,3400000,4320000,4560000},
						{5719800 ,5719800 ,6839800 ,6842800 ,7694800 ,7697800 ,8635800 ,8637800 ,9993800 ,9997800 },
						{11592250,11596250,14567250,14571250,17727250,17731250,19893250,20797250,22202250,28706250},
						{9000000900000000}}
				
	local boss_name = tonumber(lualib:GetInt(player,"boss_name"))
	local  boss_level =tonumber( lualib:GetInt(player,"boss_level"))
	local  boss_points = tonumber(lualib:GetInt(player,"boss_points"))
	local num = 0
	if boss_name == 0 then 
		boss_name = 1 
	end
	if boss_level == 0 then 
		boss_level = 1 
	end
	if boss_level == 10 then 
		boss_name = boss_name + 1 
		boss_level = 1 
	else
		boss_level = boss_level + 1 
	end
	if boss_points>=score_tab[boss_name][boss_level] then 
		num = 1
	end
	return num
end

function timeqianwang2(player,index)
	
	index = tonumber(index)
	local reinlevel = lualib:GetInt(player,"reinLevel")
	local num = lualib:ItemCount(player, "副本卷轴")
	local level = lualib:Level(player)
	if tonumber(index)>7 then                                           --需要消耗副本
			if tonumber(index)==9 and reinlevel>=1 then
				if num >=(index-7) then  
					if lualib:DelItem(player, "副本卷轴", 2, 2, "个人BOSS",  "个人BOSS") then
						--person_cs(player,index)
						param = index
						if param == 5 then 
							lualib:SetInt(player, "qianwang1",1)
						end
						local int = lualib:GetDayInt(player, "qianwang"..param)
						if int == 1 then return "" end
						param=param-4
						local item_map_guid = lualib:MapGuid(player)
						local z_name = lualib:KeyName(item_map_guid) 
						if z_name == "天荒教主副本" then return "" end
						local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
						lualib:Player_SetDgnTicket(player, dgn_guid)
						lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
						lualib:ShowFormWithContent(player,"脚本表单","BossWnd.Close()")
					end
				else
					lualib:ShowFormWithContent(player, "脚本表单", "BossWnd.MsgPrompt(\"您的副本卷轴不够，无法进入副本！\");")
				end
			elseif tonumber(index)==10 and reinlevel>=2 then
				if num >=(index-7) then 
					if lualib:DelItem(player, "副本卷轴", 3, 2, "个人BOSS",  "个人BOSS") then 
						param = index
						--person_cs(player,index)
						param = index
						if param == 5 then 
							lualib:SetInt(player, "qianwang1",1)
						end
						local int = lualib:GetDayInt(player, "qianwang"..param)
						if int == 1 then return "" end
						param=param-4
						local item_map_guid = lualib:MapGuid(player)
						local z_name = lualib:KeyName(item_map_guid) 
						if z_name == "天荒教主副本" then return "" end
						local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
						lualib:Player_SetDgnTicket(player, dgn_guid)
						lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
						lualib:ShowFormWithContent(player,"脚本表单","BossWnd.Close()")
					end
					
				else
					lualib:ShowFormWithContent(player, "脚本表单", "BossWnd.MsgPrompt(\"您的副本卷轴不够，无法进入副本！\");")
				end
			elseif tonumber(index)==8 and  level>=80 then 
			
				if num >=(index-7) then 
					if lualib:DelItem(player, "副本卷轴", 1, 2, "个人BOSS",  "个人BOSS") then 
						param = index
						--person_cs(player,index)
						param = index
						if param == 5 then 
							lualib:SetInt(player, "qianwang1",1)
						end
						local int = lualib:GetDayInt(player, "qianwang"..param)
						if int == 1 then return "" end
						param=param-4
						local item_map_guid = lualib:MapGuid(player)
						local z_name = lualib:KeyName(item_map_guid) 
						if z_name == "天荒教主副本" then return "" end
						local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
						lualib:Player_SetDgnTicket(player, dgn_guid)
						lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
						lualib:ShowFormWithContent(player,"脚本表单","BossWnd.Close()")
					end
				else
					lualib:ShowFormWithContent(player, "脚本表单", "BossWnd.MsgPrompt(\"您的副本卷轴不够，无法进入副本！\");")
				end
			else
				lualib:ShowFormWithContent(player, "脚本表单", "BossWnd.MsgPrompt(\"您的等级不足，无法进入副本！\");")
			end	
	else
		if level >= personboss[1][index-4][3] then 
			param = index
			--person_cs(player,index)
			param = index
			if param == 5 then 
				lualib:SetInt(player, "qianwang1",1)
			end
			local int = lualib:GetDayInt(player, "qianwang"..param)
			if int == 1 then return "" end
			param=param-4
			local item_map_guid = lualib:MapGuid(player)
			local z_name = lualib:KeyName(item_map_guid) 
			if z_name == "天荒教主副本" then return "" end
			local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
			lualib:Player_SetDgnTicket(player, dgn_guid)
			lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
			lualib:ShowFormWithContent(player,"脚本表单","BossWnd.Close()")
		else 
			--lualib:MsgBox(player, "您的等级不足，无法进入副本！")
			lualib:ShowFormWithContent(player, "脚本表单", "BossWnd.MsgPrompt(\"您的等级不足，无法进入副本！\");")
		end
	end 
	return ""
end
--[[
function person_cs(player,param)
	if param == 5 then 
		lualib:SetInt(player, "qianwang1",1)
	end
	local int = lualib:GetDayInt(player, "qianwang"..param)
	if int == 1 then return "" end
	param=param-4
	local item_map_guid = lualib:MapGuid(player)
	local z_name = lualib:KeyName(item_map_guid) 
	if z_name == "天荒教主副本" then
		return ""
	end
	
	local dgn_guid = lualib:Map_CreateDgn(cs_tab[param][1] , false,  32*60)  
	lualib:Player_SetDgnTicket(player, dgn_guid)
	lualib:Player_EnterDgn(player , cs_tab[param][1] , cs_tab[param][2] , cs_tab[param][3] , 3)
	lualib:ShowFormWithContent(player,"脚本表单","BossWnd.Close()")

	return ""
end--]]

function cs(player,str) 
	--lualib:SysPromptMsg(player, "cs")
	local cs_tab2 = {{"东部洞穴","蜈蚣洞一层",30,0,68,77},            -- name(无用) keyname   level  reinlevel x y 
					{"荒民洞窟","猪洞一层",30,0,92,84},
					{"官匪之地","沃玛寺庙一层",40,0,140,166},
					{"地下怪室","祖玛寺庙入口",40,0,19,31},
					{"梦魇峡谷","赤月神殿一层",50,0,38,103},
					{"魔牛洞窟","牛魔洞一层",60,0,42,55},
					{"沉沦之地","骨魔洞一层",70,0,145,198},
					{"万尸岗","尸魔洞一层",70,0,84,204},
					{"妖魔通道","封魔洞一层",0,1,108,141},
					{"千里戈壁","魔龙城一层",0,1,140,172},
					{"沙之幻境","狐月神殿一层",0,2,68,85},
					{"冰原雪域","雪域试炼一层",0,2,8,132},
					{"赤岩部落","雷炎洞穴一层",0,2,18,87},
					{"炎魔地域","火龙神殿一层",0,3,68,85},
					{"恶魔乐园","天空之城一层",0,3,38,171},
					{"神殿古迹","玄冰殿一层",0,3,81,161},
					{"时空秘道","海底世界一层",0,3,26,115}}

	if string.find(str,"灭神禁地" ) ~= nil then 
		lualib:Player_NpcMove(player, "巫山BOSS传送员", 2)
	elseif string.find(str,"远古神殿" ) ~= nil then 
		lualib:Player_NpcMove(player, "玛雅神殿使者", 2)
	else
		for i=1, #cs_tab2 do 
			--cs_tab2[i][2] = lualib:Name(cs_tab2[i][1])
			local nameMap = lualib:KeyName2Name( cs_tab2[i][2],5)
			--lualib:SysPromptMsg(player,nameMap..":"..string.sub(str,0,6))
			if string.find(nameMap,string.sub(str,0,4)) ~= nil then
		--	if string.find(str,cs_tab2[i][1] ) ~= nil then 
				local level = lualib:Level(player)
				local reinlevel = lualib:GetInt(player,"reinLevel")
				if level >= cs_tab2[i][3] and reinlevel >= cs_tab2[i][4] then 
					--if lualib:DelItem(player, "逍遥游", 1, 2, "个人BOSS", "个人BOSS") then 
						--lualib:SysPromptMsg(player, "cs"..cs_tab2[i][5]..";"..cs_tab2[i][6])
						lualib:Player_MapMoveXY(player,cs_tab2[i][2], cs_tab2[i][5], cs_tab2[i][6], 3)
						lualib:ShowFormWithContent(player,"脚本表单","BossWnd.Close()")
					--else
						--lualib:SysPromptMsg(player,"逍遥游不足")
					--end
				else 
					if level < cs_tab2[i][3] then 
						lualib:SysPromptMsg(player,"您的等级不足")
					else
						lualib:SysPromptMsg(player,"您的转生等级不足")
					end
					
				end
			end
		end
	end
	return ""
	
end

function minnum(player,param)
	local num = lualib:ItemCount(player, "副本卷轴")
	local reinlevel = lualib:GetInt(player,"reinLevel")
	local level = lualib:Level(player)
	lualib:ShowFormWithContent(player,"脚本表单","BossWnd.minnum("..param..","..num..","..reinlevel..","..level..")")
	return ""
end

function kill(player,str)
	local tab_can ={}
	for i=1,#bosslist do
		local tab_map_decode  = lualib:GetStr("", bosslist[i][2])    -- 触龙神 {"蜈蚣洞三层","BOSS之家一层"}
		if  tonumber(#tab_map_decode) > 0 then 
			local tab_map = json.decode(tab_map_decode)
			if #tab_map> 0 then 
				local num = string.len(tab_map[1])
				if  num > 0 then
					tab_map[#tab_map+1] = lualib:KeyName2Name(bosslist[i][2],2)
					table.insert(tab_can,tab_map)
				end
			end
		end
	end
	local numing = numVisible(player)
	lualib:ShowFormWithContent(player,"脚本表单","BossWnd.kill("..serialize(tab_can)..");BossWnd.numVisible("..numing..")")
	return ""
end

function buy(player,num)

	if lualib:SubBindIngot(player,300, "购买副本秘钥", lualib:Name(player)) then 
		if lualib:AddItem(player,"副本卷轴",1,false,"购买副本秘钥", player) then 
			lualib:SysPromptMsg(player,"购买成功")
		end
	elseif lualib:SubIngot(player, 300, "购买副本秘钥", lualib:Name(player)) then 
		if lualib:AddItem(player,"副本卷轴",1,false,"购买副本秘钥", player) then 
			lualib:SysPromptMsg(player,"购买成功")
		end
	else 
		--lualib:SysPromptMsg(player,"元宝不足")
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
	end
	minnum(player,num)
	return ""
end
