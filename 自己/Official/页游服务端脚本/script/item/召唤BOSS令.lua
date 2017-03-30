local Gu_Boss = {
				"触龙神副本" 		,
				"白色恶猪" 		,
				"祖玛教主" 		,
				"白色恶猪" 		,
				"赤月恶魔" 		,
				"牛魔王" 		,
				}

local Ag_Boss = {
				"触龙神副本" 		,
				"白色恶猪" 		,
				"祖玛教主" 		,
				"白色恶猪" 		,
				"赤月恶魔" 		,
				"牛魔王" 		,			
				"黄泉教主" ,
				"尸霸" ,
				"虹魔教主" ,
				"魔龙教主" ,
				"雷炎蛛王" ,
				"雪域魔王" ,
				"火尾黑狐王" ,
				"金爪赤狐王" ,
				"玉面素狐王" ,
				}

local Au_Boss = {
				"赤月恶魔" ,
				"牛魔王" ,
				"黄泉教主" ,
				"尸霸" ,
				"虹魔教主" ,
				"魔龙教主" ,
				"雷炎蛛王" ,
				"雪域魔王" ,
				"火尾黑狐王" ,
				"金爪赤狐王" ,
				"玉面素狐王" ,
				"蛇妖王" ,
				"阿修罗神" ,
				"巫妖王" ,
				"深渊海魔" ,
				"寒荒海兽" ,
				"火龙" ,
				}

local itemkey = {
				{ "高级BOSS召唤令" , Gu_Boss } ,
				{ "超级BOSS召唤令" , Ag_Boss } ,
				{ "顶尖BOSS召唤令" , Au_Boss } ,
				}

function AddMonster( sPlayerID , sItemID , sItemKeyName , i )
	local sMapID = lualib:MapGuid( sPlayerID )
	local sMapKey = lualib:KeyName( sMapID )
	if sMapKey ~= "土城" then
		lualib:SysMsg_SendPromptMsg( sPlayerID , "请在龙城使用")
		return true
	else
		lualib:DelItem( sPlayerID , lualib:KeyName( sItemID ) , 1 , 2 , "召唤BOSS" , "召唤BOSS"..i )
		local sMonsterKey = itemkey[i][2][math.random( 1 , #itemkey[i][2] )]
		lualib:SysMsg_SendBroadcastColor( "#COLORCOLOR_BLUE#"..lualib:Name( sPlayerID ).."#COLORCOLOR_GOLD#在#COLORCOLOR_BLUE#龙城#COLORCOLOR_GOLD#成功召唤出BOSS#COLORCOLOR_RED#"..lualib:Name( lualib:Map_GenSingleMonster( sMapID , lualib:X( sPlayerID ) , lualib:Y( sPlayerID ) , 2 , 5 , sMonsterKey , false) ).."#COLORCOLOR_GOLD#！！" , "" , 1, 0)
	end
	return true
end

function main( sPlayerID , sItemID )
	local x, y, sum, div = 0, 0, 0, 0
	x = lualib:X(sPlayerID)
	y = lualib:Y(sPlayerID)
	sum = x + y
	div = y - x
	if (sum >= 218 and sum <= 242 and div <= 36 and div >= 12) then
		lualib:SysPromptMsg(sPlayerID, "该物品不能在安全区使用")
		return false
	end
	local sItemKeyName = lualib:KeyName( sItemID )
	for i=1,#itemkey do
		if itemkey[i][1] == sItemKeyName then
			AddMonster( sPlayerID , sItemID , sItemKeyName , i )
		end
	end
	return true
end