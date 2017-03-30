local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/综合功能")

zhengfuguai = {}
zhengfuguai["尸奴"]={"yaoshanzhengfu1",30,"妖山暗穴精英"}
zhengfuguai["鬼面监工"]={"yaoshanzhengfu2",30,"妖山暗穴精英"}
zhengfuguai["妖面监工"]={"yaoshanzhengfu3",30,"妖山暗穴精英"}
zhengfuguai["飞芒"]={"yaoshanzhengfu4",30,"妖山暗穴精英"}
zhengfuguai["飞萤"]={"yaoshanzhengfu5",30,"妖山暗穴精英"}
zhengfuguai["魔萤"]={"yaoshanzhengfu6",30,"妖山暗穴精英"}
zhengfuguai["掘铲尸奴"]={"yaoshanzhengfu7",30,"妖山暗穴精英"}
zhengfuguai["铁镐尸奴"]={"yaoshanzhengfu8",30,"妖山暗穴精英"}
zhengfuguai["尸奴工头"]={"yaoshanzhengfu9",30,"妖山暗穴精英"}
zhengfuguai["妖山暗穴精英"]={"yaoshanzhengfu10",3,10}
zhengfuguai["千年树魔"]={"yaoshanzhengfu11",1,20}

zhengfuguai["沙石魔"]={"tianhuangzhengfu1",50,"天荒阵精英"}
zhengfuguai["蓝兽"]={"tianhuangzhengfu2",50,"天荒阵精英"}
zhengfuguai["巨蛾"]={"tianhuangzhengfu3",50,"天荒阵精英"}
zhengfuguai["散兵"]={"tianhuangzhengfu4",50,"天荒阵精英"}
zhengfuguai["魔兵"]={"tianhuangzhengfu5",50,"天荒阵精英"}
zhengfuguai["刀奴"]={"tianhuangzhengfu6",50,"天荒阵精英"}
zhengfuguai["风魔"]={"tianhuangzhengfu7",50,"天荒阵精英"}
zhengfuguai["古怪刀客"]={"tianhuangzhengfu8",50,"天荒阵精英"}
zhengfuguai["鬼面刀手"]={"tianhuangzhengfu9",50,"天荒阵精英"}
zhengfuguai["双刀侩子手"]={"tianhuangzhengfu10",50,"天荒阵精英"}
zhengfuguai["天荒阵精英"]={"tianhuangzhengfu11",6}
zhengfuguai["血禅师"]={"tianhuangzhengfu12",1}

zhengfuguai["夜行僧"]={"xiemiaozhengfu1",100,"天荒邪庙精英"}
zhengfuguai["邪翅"]={"xiemiaozhengfu2",100,"天荒邪庙精英"}
zhengfuguai["天原猛士"]={"xiemiaozhengfu3",100,"天荒邪庙精英"}
zhengfuguai["天原勇士"]={"xiemiaozhengfu4",100,"天荒邪庙精英"}
zhengfuguai["天原死士"]={"xiemiaozhengfu5",100,"天荒邪庙精英"}
zhengfuguai["鬼面武者"]={"xiemiaozhengfu6",100,"天荒邪庙精英"}
zhengfuguai["黑暗刺客"]={"xiemiaozhengfu7",100,"天荒邪庙精英"}
zhengfuguai["影刺"]={"xiemiaozhengfu8",100,"天荒邪庙精英"}
zhengfuguai["妖刀侍卫"]={"xiemiaozhengfu10",1,"天荒邪庙精英"}
zhengfuguai["天荒邪庙精英"]={"xiemiaozhengfu9",12}
zhengfuguai["梵天僧"]={"xiemiaozhengfu11",1}

zhengfuguai["魔化蝎子"]={"tianmozhengfu1",100,"天魔石窟精英"}
zhengfuguai["魔化蜥蜴"]={"tianmozhengfu2",100,"天魔石窟精英"}
zhengfuguai["魔化沙虫"]={"tianmozhengfu3",100,"天魔石窟精英"}
zhengfuguai["天魔奴仆"]={"tianmozhengfu4",100,"天魔石窟精英"}
zhengfuguai["天魔守卫"]={"tianmozhengfu5",100,"天魔石窟精英"}
zhengfuguai["金鳞妖蟒"]={"tianmozhengfu6",100,"天魔石窟精英"}
zhengfuguai["天魔妖道"]={"tianmozhengfu7",100,"天魔石窟精英"}
zhengfuguai["天魔先锋"]={"tianmozhengfu8",100,"天魔石窟精英"}
zhengfuguai["天魔妖蟒"]={"tianmozhengfu9",100,"天魔石窟精英"}
zhengfuguai["天魔统领"]={"tianmozhengfu11",1,"天魔石窟精英"}
zhengfuguai["天魔石窟精英"]={"tianmozhengfu10",12}
zhengfuguai["天魔神"]={"tianmozhengfu12",1}

zhengfuguai["铁棘鱼"]={"haidizhengfu1",100,"海底精英"}
zhengfuguai["铁螯怪"]={"haidizhengfu2",100,"海底精英"}
zhengfuguai["石甲鱼"]={"haidizhengfu3",100,"海底精英"}
zhengfuguai["巨钳蟹"]={"haidizhengfu4",100,"海底精英"}
zhengfuguai["秘境海妖"]={"haidizhengfu5",100,"海底精英"}
zhengfuguai["秘境歌妖"]={"haidizhengfu6",100,"海底精英"}
zhengfuguai["海魔侍从"]={"haidizhengfu7",100,"海底精英"}
zhengfuguai["海魔护卫"]={"haidizhengfu8",100,"海底精英"}
zhengfuguai["海魔触手"]={"haidizhengfu9",100,"海底精英"}
zhengfuguai["深海巨螯怪"]={"haidizhengfu11",1,"海底精英"}
zhengfuguai["海底精英"]={"haidizhengfu10",12}
zhengfuguai["海魔"]={"haidizhengfu12",1}

-------------------------------------------------怪物刷新触发函数--------------------------------------------------------
function on_create(monster) --参数1：怪物指针
    lualib:AddTrigger(monster, lua_trigger_post_die, "zhengfusiwang")
end

-------------------------------------------------怪物死亡回调函数--------------------------------------------------------
function zhengfusiwang(actor, killer) --参数1：怪物指针 参数2：杀怪人物指针
	if lualib:Monster_IsMonster(actor) == false then --判断怪物指针是否是怪物的
		return
	end

	if zhengfuguai[lualib:Name(actor)] ~= nil and string.find(lualib:KeyName(actor),"精英") ~= nil then
		local s1 = zhengfuguai[lualib:Name(actor)][3]
		if lualib:GetInt(killer,zhengfuguai[s1][1]) < zhengfuguai[s1][2] then
			lualib:SetInt(killer,zhengfuguai[s1][1],lualib:GetInt(killer,zhengfuguai[s1][1])+1) --增加精英杀怪数
		end
		
		--击杀精英怪物数量重置
		local shijian = shijianjiexi(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:GetAllTime()))
		if shijian["hour"] >= 12 then
			if lualib:GetAllTime() - lualib:GetInt(killer,"rongyujingyingguaishijian") >= 43200 then
				lualib:SetInt(killer,"rongyujingyingguaishijian",lualib:GetAllTime()) --记录开启计时的当前秒数
				lualib:SetInt(killer,"rongyujingyingguai",0) --击杀精英怪物数量重置
			end
		end
		lualib:SetInt(killer,"rongyujingyingguai",lualib:GetInt(killer,"rongyujingyingguai")+1)
	end
	
	if zhengfuguai[lualib:Name(actor)] ~= nil and lualib:GetInt(killer,zhengfuguai[lualib:Name(actor)][1]) < zhengfuguai[lualib:Name(actor)][2] then --判断是否是征服系统怪物和杀怪要求是否已满
		lualib:SetInt(killer,zhengfuguai[lualib:Name(actor)][1],lualib:GetInt(killer,zhengfuguai[lualib:Name(actor)][1])+1) --增加杀怪数
	end
end