local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
--公告消息
local data_table =
{
	{
		["msg"] ="勇士们，怪物来袭，巫山城！龙城告急！快快加入抵御怪物攻击的队伍中吧！",
		["delay"] = 10 --公告之间的间隔秒
	},
	{
		["msg"] ="勇者无惧，弱者退散，这是英雄们显示自己威风的时刻，让我们一起在怪物的怒吼声中狂欢吧！吼——吼——吼——",
		["delay"] = 10
	},
	{
		["msg"] ="人类中出现了叛徒，将龙城传送阵的传送秘址交给了梵天僧，一个小时后，所有的BOSS将同时传送到龙城的中心广场上！",
		["delay"] = 10
	},
	{
		["msg"] ="为了破坏对方的传送，人类英雄们，你们需要消灭所有来袭的怪物！",
		["delay"] = 10
	},
	{
		["msg"] ="怪物出现了！",
		["delay"] = 10
	},
	{
		["msg"] ="这些怪物通过混乱的次元空间传送而来，身上残留有时空能量，能够给梵天僧确定具体坐标，引导他们远程传送，大家快消灭他们啊！",
		["delay"] = 10
	},
	{
		["msg"] ="怪物出现在龙城235, 201",
		["delay"] = 120,
		["monster"] =
		{
			["location"] = {255, 201},
			["巨蛾"] = 10,
			["蟒蛇1"] = 10,
			["蛇蛟1"] = 10,
			["蓝兽1"] = 10,
			["沙石魔5"] = 10,
			["散兵1"] = 10,
			["刀奴2"] = 10,
			["古怪刀客1"] = 10,
			["鬼面刀手1"] = 10,
			["双刀侩子手1"] = 10,
			["风魔5"] = 10,
			["巨石傀儡"] = 5,
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
	},
	{
		["msg"] ="怪物出现在龙城176, 215",
		["delay"] = 120,
		["monster"] =
		{
			["location"] = {255, 201},
			["巨蛾"] = 10,
			["蟒蛇1"] = 10,
			["蛇蛟1"] = 10,
			["蓝兽1"] = 10,
			["沙石魔5"] = 10,
			["散兵1"] = 10,
			["刀奴2"] = 10,
			["古怪刀客1"] = 10,
			["鬼面刀手1"] = 10,
			["双刀侩子手1"] = 10,
			["风魔5"] = 10,
			["巨石傀儡"] = 5,
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
	},
	{
		["msg"] ="怪物出现在龙城200, 237",
		["delay"] = 120,
		["monster"] =
		{
			["location"] = {200, 237},
			["巨蛾"] = 10,
			["蟒蛇1"] = 10,
			["蛇蛟1"] = 10,
			["蓝兽1"] = 10,
			["沙石魔5"] = 10,
			["散兵1"] = 10,
			["刀奴2"] = 10,
			["古怪刀客1"] = 10,
			["鬼面刀手1"] = 10,
			["双刀侩子手1"] = 10,
			["风魔5"] = 10,
			["巨石傀儡"] = 5,
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
	},
	{
		["msg"] ="怪物出现在龙城263, 239",
		["delay"] = 120,
		["monster"] =
		{
			["location"] = {263, 239},
			["巨蛾"] = 10,
			["蟒蛇1"] = 10,
			["蛇蛟1"] = 10,
			["蓝兽1"] = 10,
			["沙石魔5"] = 10,
			["散兵1"] = 10,
			["刀奴2"] = 10,
			["古怪刀客1"] = 10,
			["鬼面刀手1"] = 10,
			["双刀侩子手1"] = 10,
			["风魔5"] = 10,
			["巨石傀儡"] = 5,
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
	},
	{
		["msg"] ="怪物出现在龙城237, 203",
		["delay"] = 545,
		["monster"] =
		{
			["location"] = {237, 203},
			["巨蛾"] = 10,
			["蟒蛇1"] = 10,
			["蛇蛟1"] = 10,
			["蓝兽1"] = 10,
			["沙石魔5"] = 10,
			["散兵1"] = 10,
			["刀奴2"] = 10,
			["古怪刀客1"] = 10,
			["鬼面刀手1"] = 10,
			["双刀侩子手1"] = 10,
			["风魔5"] = 10,
			["巨石傀儡"] = 5,
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
	},
	{
		["msg"] ="不好了！怪物们俘虏了镇魔殿传送人，把镇魔殿中的怪物都放出来了，大家快消灭它们啊！",
		["delay"] = 5,
	},
	{
		["msg"] ="不好了！怪物们俘虏了禁地使者，亡灵禁地的怪物都跑出来了！",
		["delay"] = 180,
		["monster"] =
		{
			["location"] = {258, 297},
			["白骨魔将1"] = 5,
		}
	},
	{
		["delay"] = 180,
		["monster"] =
		{
			["location"] = {242, 281},
			["白骨魔将2"] = 5,
		}
	},
	{
		["delay"] = 180,
		["monster"] =
		{
			["location"] = {242, 281},
			["白骨魔将3"] = 5,
		}
	}, --15
	{
		["msg"] ="不好了！怪物们俘虏了何童天小妖，三重天秘洞里的怪物都跑出来了！",
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["妖盗"] = 30,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["妖盗"] = 30,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["妖盗"] = 30,
		}
	},
	{
		["msg"] ="不好了！怪物们俘虏了通灵师，漂流岛中的怪物都跑出来了！",
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["恶魔守护者"] = 30,
			["恶魔督军"] = 2,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["恶魔守护者"] = 30,
			["恶魔督军"] = 2,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["恶魔守护者"] = 30,
			["恶魔督军"] = 2,
		}
	},
	{
		["msg"] ="不好了！怪物们俘虏了引灵尊者，引灵寺中的怪物都跑出来了！",
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["噬灵魔花"] = 150,
			["噬灵魔神"] = 2,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["噬灵魔花"] = 150,
			["噬灵魔神"] = 2,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["噬灵魔花"] = 150,
			["噬灵魔神"] = 2,
		}
	},
	{
		["msg"] ="不好了！似乎GM算错了时间，所有的BOSS都跑出来了！",
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["假锁魔白狼"] = 20,
			["假锁魔巨蛇"] = 20,
			["假锁魔绝道白猿"] = 20,
			["假锁魔骷髅王"] = 20,
			["假锁魔幽冥尸王"] = 20,
			["假锁魔牛魔将军"] = 10,
			["假锁魔血禅师"] = 9,
			["假锁魔梵天僧"] = 8,
			["锁魔超级猪"] = 1,
			["锁魔超级牛"] = 1,
			["锁魔超级羊"] = 1,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["假锁魔白狼"] = 20,
			["假锁魔巨蛇"] = 20,
			["假锁魔绝道白猿"] = 20,
			["假锁魔骷髅王"] = 20,
			["假锁魔幽冥尸王"] = 20,
			["假锁魔牛魔将军"] = 10,
			["假锁魔血禅师"] = 9,
			["假锁魔梵天僧"] = 8,
			["锁魔超级猪"] = 1,
			["锁魔超级牛"] = 1,
			["锁魔超级羊"] = 1,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["假锁魔白狼"] = 20,
			["假锁魔巨蛇"] = 20,
			["假锁魔绝道白猿"] = 20,
			["假锁魔骷髅王"] = 20,
			["假锁魔幽冥尸王"] = 20,
			["假锁魔牛魔将军"] = 10,
			["假锁魔血禅师"] = 9,
			["假锁魔梵天僧"] = 8,
			["锁魔超级猪"] = 1,
			["锁魔超级牛"] = 1,
			["锁魔超级羊"] = 1,
		}
	},
	{
		["msg"] ="唉，看来是虚惊一场，原来是怪物们俘虏了锁魔宫传送人，里面的假BOSS都跑出来了……",
		["delay"] = 10, 
	},
	{
		["msg"] ="不好了！大家没有在一个小时内消灭所有的怪物，还有一只怪物传送出错，落在了城外，它为BOSS们指引了坐标！",
		["delay"] = 10, 
	},
	{
		["msg"] ="BOSS们将在一分钟后出现在龙城的坐标【235 205】！",
		["delay"] = 60, 
	},
	{
		["msg"] ="白狼：这次终于不用当前锋了，我是躲起来呢？还是藏起来呢？",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["白狼"] = 1,
		}
	},
	{
		["msg"] ="巨蛇：不管怎么样，把我和菊花离远点就行。",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["巨蛇"] = 1,
		}
	},
	{
		["msg"] ="绝道白猿：这次又可以吃人肉了，还是被吃？",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["绝道白猿"] = 1,
		}
	},
	{
		["msg"] ="骷髅王：好多骨头，这根骨头不错，那根也很好，我该换哪根骨头呢？",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["骷髅王"] = 1,
		}
	},
	{
		["msg"] ="幽冥尸王：这血肉真香，用来洗澡比沐浴露好多了。",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["幽冥尸王"] = 1,
		}
	},
	{
		["msg"] ="千年树魔：吼——我又出来了……我为什么说“又”呢？",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["千年树魔"] = 1,
		}
	},
	{
		["msg"] ="牛魔将军：喜杀杀喜杀杀，喜杀杀……我是不是有点傻……",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["牛魔将军"] = 1,
		}
	},
	{
		["msg"] ="血禅师：可怜的羔羊们，承受我的怒火吧！咦……太会生气是不是容易变老？我的早霜晚霜都白擦了……",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["血禅师"] = 1,
		}
	},
	{
		["msg"] ="梵天僧：哈哈哈，终于成功了！可恶的人类！我将给你们带来毁灭和虚无！呃……这台词是不是有点烂？",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["梵天僧"] = 1,
		}
	},
}

--local curindex = 1						--当前表格处理索引
lualib:SetInt("0", "gwgc2_curindex", 1);
--local map_name ="龙城"					--当前地图名称
lualib:SetStr("0", "gwgc2_map_name", "龙城");
local monsterRange = 7					--怪物刷新区范围
local time_quotiety = 1000				--时间系数
--local pause_table = false 				--是否暂停处理表格数据
lualib:SetInt("0", "gwgc2_pause_table", 0);

function siege(id, map, times)	
	local curindex = lualib:GetInt("0", "gwgc2_curindex");
	lualib:SysMsg_SendTopMsg(1, data_table[curindex]["msg"])
	lualib:SysMsg_SendBroadcastColor(data_table[curindex]["msg"], "", 1, 12)
	local map_name = lualib:GetStr("0", "gwgc2_map_name");
	lualib:AddTimer(lualib:Map_GetMapGuid(map_name), 1, data_table[curindex]["delay"] * time_quotiety, 1,"on_timer")
end

function on_timer()
	local curindex = lualib:GetInt("0", "gwgc2_curindex");
	curindex = curindex + 1;
	lualib:SetInt("0", "gwgc2_curindex", curindex);
	local map_name = lualib:GetStr("0", "gwgc2_map_name");
	--检查是否有msg
	lualib:Print(tostring(curindex));
	--回显信息
	if(data_table[curindex]["msg"] ~= nil) then
		lualib:SysMsg_SendBroadcastColor(data_table[curindex]["msg"], "", 1, 12);
	end
	--检查是否要刷怪, 按顺序处理表格数据
	if(data_table[curindex]["monster"] ~= nil) then
		for key, value in pairs(data_table[curindex]["monster"]) do
			if(key ~="location" and lualib:MonsterKey2ID(key) > 0) then
				lualib:Map_GenMonster(lualib:Map_GetMapGuid(map_name), data_table[curindex]["monster"]["location"][1], 
					data_table[curindex]["monster"]["location"][2], monsterRange, lualib:GenRandom(0, 7), key, value, false);
				lualib:Print(key);
				if(key =="白狼" or key =="巨蛇" or key =="绝道白猿" or key =="骷髅王" or key =="幽冥尸王" or key =="千年树魔" or key =="血禅师" or key =="梵天僧") then
					--boss死了才会刷新下一个
					lualib:Print(key);
					--pause_table = true;
					lualib:SetInt("0", "gwgc2_pause_table", 1);
					local map_guid = lualib:Map_GetMapGuid(map_name);
					local monsters = lualib:Map_GetRegionMonsters(map_guid, key, data_table[curindex]["monster"]["location"][1], 
									data_table[curindex]["monster"]["location"][2], monsterRange + 2, true, true);
					if  monsters ~= nil then
						lualib:AddTrigger(monsters[1],  lua_trigger_post_die,"on_trigger_post_die");
					end
				end
			end
		end
	end
	if (curindex >= table.getn(data_table)) then
		return;
	end
	local pause_table = lualib:GetInt("0", "gwgc2_pause_table");
	if (pause_table == 0) then
		--设置定时, 调用下一个表格数据
		lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_table[curindex]["delay"] * time_quotiety, 1,"on_timer")
	end
end

function on_trigger_post_die(actor, killer)
	--pause_table = false;
	lualib:SetInt("0", "gwgc2_pause_table", 0);
	local curindex = lualib:GetInt("0", "gwgc2_curindex");
	local map_name = lualib:GetStr("0", "gwgc2_map_name");
	lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_table[curindex]["delay"] * time_quotiety, 1,"on_timer");
end
