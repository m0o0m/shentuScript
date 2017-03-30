local campaignpos = {
	["镇魔宝塔"] = {"土城珈蓝神殿"},
	["禁魔神殿"] = {"土城魔族入侵"},
	["膜拜城主"] = {"膜拜城主金"},
	["龙魂之刃"] = {"龙魂之刃"},
	["元宝嘉年华"] = {"元宝嘉年华"},
	["寻龙夺宝"] = {"土城夺宝奇兵"},
	["群英争霸"] = {"土城夜战比奇城"},
	["谁与争锋"] = {"土城谁与争锋"},
	["无尽深渊"] = {"神威狱传送员"},
	["押镖玩法"] = {"运镖车夫"},

	
}

function playermove(player,param)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return false
	end
	if param == "元宝嘉年华" then
		lualib:Player_MapMoveXY(player, "土城", 86, 143, 6)
		return ""
	end
	if param == "攻城战" then
		lualib:Player_MapMoveXY(player, "神歌城", 160, 190, 10)
		return ""
	end
	lualib:Player_NpcMove(player, campaignpos[param][1],2)
	return ""
end
