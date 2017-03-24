local jump_point = 
{
	巫山城传送石= {"巫山城", 331, 293},
	龙城传送石  = {"龙城"  , 246, 274},
	天怒传送令  = {"天怒之城", 147, 128},
	盟重传送石  = {"龙城"  , 246, 274},
};
	
function main(player, item)	
	local t = jump_point[lualib:KeyName(item)];
	assert(t, "系统错误:物品挂错了脚本.");
	
	return lualib:Player_MapMoveXY(player, t[1], t[2], t[3], 3);
end
