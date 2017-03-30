local disallow_map = {}
	disallow_map["精英竞技场-16进8"] = 1
	disallow_map["精英竞技场-4进2"] = 1
	disallow_map["精英竞技场-8进4"] = 1
	disallow_map["精英竞技场-冠亚军赛"] = 1
	disallow_map["精英竞技场-季军赛"] = 1
	disallow_map["精英竞技场-群雄逐鹿"] = 1
	disallow_map["精英竞技场-休息间"] = 1
	disallow_map["精英竞技场-组队赛"] = 1
	disallow_map["赤炎禁地"] = 1
	disallow_map["神歌城皇宫"] = 1
	disallow_map["镇魔大殿"] = 1
	disallow_map["神歌城密道"] = 1
	disallow_map["挑战场1"] = 1
	disallow_map["挑战场2"] = 1
	disallow_map["挑战场3"] = 1
	disallow_map["富商的藏金屋"] = 1
	disallow_map["烈焰深渊1"] = 1
	disallow_map["烈焰深渊2"] = 1
	disallow_map["烈焰深渊3"] = 1
	disallow_map["古墓"] = 1
	disallow_map["擂台"] = 1
	disallow_map["秘海封印"] = 1
	disallow_map["休息室"] = 1
	disallow_map["修炼场"] = 1
	disallow_map["妖山暗穴boss"] = 1
	disallow_map["异兽栏"] = 1
	disallow_map["引灵寺"] = 1
	disallow_map["玉完天幻境"] = 1
	disallow_map["珍宝洞"] = 1
	disallow_map["中级试炼场"] = 1
	disallow_map["尸王大殿"] = 1
	disallow_map["克星挑战场1"] = 1
	disallow_map["克星挑战场2"] = 1
	disallow_map["克星挑战场3"] = 1
	disallow_map["漂流岛"] = 1
	disallow_map["天荒阵boss"] = 1
	disallow_map["锁魔宫"] = 1
	disallow_map["天荒古阵"] = 1
	disallow_map["天魔石窟4"] = 1
	disallow_map["天下第一战场"] = 1
	disallow_map["亡灵禁地"] = 1
	disallow_map["邪庙boss"] = 1
	disallow_map["高级试炼场"] = 1
	disallow_map["封魔阵"] = 1
	disallow_map["初级试炼场"] = 1
	disallow_map["第三重天秘洞"] = 1
	disallow_map["百草堂"] = 1
	disallow_map["藏经楼"] = 1
	disallow_map["超级试炼场"] = 1
	disallow_map["灵山"] = 1
	disallow_map["灵元秘境1"] = 1
	disallow_map["灵元秘境2"] = 1
	disallow_map["灵元秘境3"] = 1
	disallow_map["海底4"] = 1
	disallow_map["绝路城boss"] = 1
	disallow_map["海底4野外"] = 1
	disallow_map["海底5"] = 1
	disallow_map["海底3野外"] = 1
	disallow_map["海底3"] = 1
	disallow_map["赤炎部落1"] = 1
	disallow_map["赤炎部落2"] = 1
	disallow_map["赤炎部落3"] = 1
	disallow_map["赤炎部落入口"] = 1
	disallow_map["镇魔秘道1"] = 1
	disallow_map["镇魔秘道2"] = 1
	disallow_map["镇魔禁地10"] = 1
	disallow_map["镇魔禁地11"] = 1
	disallow_map["镇魔禁地12"] = 1
	disallow_map["神歌城"] = 1
	disallow_map["千幻阵"] = 1
	disallow_map["守护副本"] = 1
	disallow_map["绝路城3"] = 1
	disallow_map["天魔石窟3"] = 1
	disallow_map["天魔石窟boss"] = 1
	disallow_map["武斗场"] = 1
	disallow_map["封魔台"] = 1
	disallow_map["夺宝大厅"] = 1
	disallow_map["地下城"] = 1
	disallow_map["海底3船舱1"] = 1
	disallow_map["海底1船舱1"] = 1
	disallow_map["海底1船舱2"] = 1
	disallow_map["海底1船舱3"] = 1
	disallow_map["海底1船舱4"] = 1
	disallow_map["海底1船舱5"] = 1
	disallow_map["海底1船舱6"] = 1
	disallow_map["海底1船舱7"] = 1
	disallow_map["海底2"] = 1
	disallow_map["海底2船舱1"] = 1
	disallow_map["海底2船舱2"] = 1
	disallow_map["海底2船舱3"] = 1
	disallow_map["海底2船舱4"] = 1
	disallow_map["海底2船舱5"] = 1
	disallow_map["海底2船舱6"] = 1
	disallow_map["将军冢3"] = 1
	disallow_map["海底4船舱1"] = 1
	disallow_map["海底4船舱2"] = 1
	disallow_map["灵韵阁"] = 1
	disallow_map["镇魔殿"] = 1
	disallow_map["战斗副本"] = 1



function pre_apply(actor, skillid)
 	local mapguid = lualib:MapGuid(actor)
	local map_key = lualib:KeyName(mapguid)
	local x = lualib:X(actor)
	local y = lualib:Y(actor)
	local player_level = lualib:Level(actor)
	local skill_id = skillid
	local monster_tb1 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 5, true, true)
	
	if disallow_map[map_key] == 1 then
		lualib:MsgBox(actor, "该地图禁止使用此技能！")
		return false
	end
	
	for i = 1, #monster_tb1 do
		local mt1_keyname = lualib:KeyName(monster_tb1[i])
		local mt1_type = lualib:Monster_Type(mt1_keyname)
		
		if mt1_type == 5 then
			lualib:MsgBox(actor, "由于附近有大刀守卫，为了你的安全，不允许使用该技能，请远离大刀守卫后再使用！")
			return false
		end
		
	end
	
	return true
end





function post_apply(actor,skillid)

	local skill_name = {
							[30045] = "无间地狱(体验)",
							[30046] = "凤凰涅槃(体验)",
							[30047] = "恶魔之怒(体验)",
						}
	local skill_table = {"新手无间地狱", "新手凤凰涅槃", "新手恶魔之怒"}
	local skillInt = lualib:GetInt(actor, "skill_xinshou")
	if skillInt > 100 then
		for i = 1, #skill_table do
			if lualib:HasSkill(actor, skill_table[i], false) == true then
				lualib:Player_RunGMCmd(actor, "sd", skill_table[i])
				lualib:SysMsg_SendWarnMsg(actor, "你的实力已经大大提升，"..skill_name[skillid].."已删除！若想学到该永久的终极技能，你可到龙城的藏宝阁看看！")
			end
		end
	else
		lualib:SetInt(actor, "skill_xinshou", skillInt + 1)
		lualib:SysMsg_SendWarnMsg(actor, "你的"..skill_name[skillid].."还可以使用".. 100 - skillInt .."次！")
	end
	

	
end