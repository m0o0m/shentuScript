local jump_point = 
{
	��ɽ�Ǵ���ʯ= {"��ɽ��", 331, 293},
	���Ǵ���ʯ  = {"����"  , 246, 274},
	��ŭ������  = {"��ŭ֮��", 147, 128},
	���ش���ʯ  = {"����"  , 246, 274},
};
	
function main(player, item)	
	local t = jump_point[lualib:KeyName(item)];
	assert(t, "ϵͳ����:��Ʒ�Ҵ��˽ű�.");
	
	return lualib:Player_MapMoveXY(player, t[1], t[2], t[3], 3);
end
