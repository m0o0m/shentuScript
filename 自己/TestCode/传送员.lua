--NPC传送
--

tbl_csmdd={ 
			{"新版新手村"		, 	89 , 	146 ,	1}	,	--param = 1
			{"巫山城"			,  190 , 	258 ,	1}	,	--param = 2
			{"土城"				,  237 , 	227 ,	1}	,	--param = 3
			{"神歌城"			,  348 , 	190 ,	1}	,	--param = 4
			{"蜈蚣洞一层"		, 	93 , 	149 ,	30}	,	--param = 5 , 30级
			{"猪洞一层"			, 	62 , 	50 	,	30}	,	--param = 6 , 30级
			{"沃玛寺庙一层"		,  139 , 	165 ,	40}	,	--param = 7 , 40级
			{"祖玛寺庙入口"		, 	19 , 	31 	,	40}	,	--param = 8 , 40级
			{"赤月神殿一层"		,  225 , 	225 ,	50}	,	--param = 9 , 50级
			{"牛魔洞一层"		, 	42 , 	55  ,	60}	,	--param = 10 , 60级
			{"尸魔洞一层"		, 	87 , 	117 ,	70}	,	--param = 11, 70级
			{"骨魔洞一层"		,  189 , 	93 	,	70}	,	--param = 12, 70级
			{"封魔洞一层"		, 	67 , 	123 ,	1}	,	--param = 13, 1转
			{"魔龙城一层"		, 	12 , 	142 ,	1}	,	--param = 14, 1转
			{"狐月神殿一层"		, 	20 , 	48 	,	1}	,	--param = 15, 2转
			{"雷炎洞穴一层"		, 	74 , 	231 ,	1}	,	--param = 16, 2转
			{"雪域试炼一层"		, 	8  , 	132 ,	1}	,	--param = 17, 2转
			{"火龙神殿一层"		, 	68 , 	85 	,	1}	,	--param = 18, 3转
			{"玄冰殿一层"		, 	81 , 	161 ,	1}	,	--param = 19, 3转
			{"天空之城一层"		, 	13 , 	32 	,	1}	,	--param = 20, 3转
			{"海底世界一层"		, 	30 , 	75 	,	1}	,	--param = 21, 3转
			{"苍月岛"			,  226 , 	174 ,	1}	,	--param = 22, 5转
			{"普通挂机"			, 	46 , 	59 	,	1}	,	--param = 23
			}
			
tbl_vip_map={
			
			{"VIP1挂机"			, 	46, 	59	,	1}	,	--VIP等级1级
			{"VIP2挂机"			, 	46, 	59	,	2}	,	--VIP等级2级
			{"VIP3挂机"			, 	46, 	59	,	3}	,	--VIP等级3级
			{"VIP4挂机"			, 	46, 	59	,	4}	,	--VIP等级4级
			{"VIP5挂机"			, 	46, 	59	,	5}	,	--VIP等级5级
			{"VIP6挂机"			, 	46, 	59	,	6}	,	--VIP等级6级
			{"VIP7挂机"			, 	46, 	59	,	7}	,	--VIP等级7级
			{"VIP8挂机"			, 	46, 	59	,	8}	,	--VIP等级8级
			{"VIP9挂机"			, 	46, 	59	,	9}	, 	--VIP等级9级
			{"VIP10挂机"		, 	46, 	59	,  10}	, 	--VIP等级10级
			
}
function main( sNpcID , sPlayerID )
	--local msg = "                      #COLORCOLOR_BROWN#传 送 员#COLOREND#                    \n"
	--local msg = msg.."\n"
	--local msg = msg.."    #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = "                      #COLORCOLOR_ORANGE#城    市#COLOREND#                   \n" --开头空4个字符，左右对称独自再19个空格
	--local msg = msg.."\n"
	local msg = msg.."         <@cs_#1#sItemID *01*新手村>    ".."<@cs_#2#sItemID *01*巫山城>    ".."<@cs_#3#sItemID *01*土城>    ".."<@cs_#4#sItemID *01*神歌城>    \n"
	--local msg = msg.."    #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n" --一行最多45个字符
	local msg = msg.."                      #COLORCOLOR_ORANGE#危险区域#COLOREND#                   \n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#5#sItemID *01*毒 虫 洞（30级）>".."       <@cs_#6#sItemID *01*食人洞穴（30级）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#7#sItemID *01*天荒寺庙（40级）>".."       <@cs_#8#sItemID *01*邪    庙（40级）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#9#sItemID *01*赤炎禁地（50级）>".."       <@cs_#10#sItemID *01*牛 魔 洞（60级）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#11#sItemID *01*天魔石窟（70级）>".."       <@cs_#12#sItemID *01*骨 魔 洞（70级）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#13#sItemID *01*封 魔 洞（转 1）>".."       <@cs_#14#sItemID *01*魔 龙 城（转 1）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#15#sItemID *01*狐月神殿（转 2）>".."       <@cs_#16#sItemID *01*雷炎洞穴（转 2）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#17#sItemID *01*雪域试炼（转 2）>".."       <@cs_#18#sItemID *01*火龙神殿（转 3）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#19#sItemID *01*玄 冰 殿（转 3）>".."       <@cs_#20#sItemID *01*天空之城（转 3）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#21#sItemID *01*海底世界（转 3）>".."       <@cs_#22#sItemID *01*苍 月 岛（转 5）>\n"
	--local msg = msg.."\n"
	--local msg = msg.."    #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."                      #COLORCOLOR_ORANGE#特殊区域#COLOREND#                   \n"
	--local msg = msg.."\n"
	local msg = msg.."              <@cs_#23#sItemID *01*普通挂机>        ".." <@cs_1#2#sItemID *01*VIP挂机>    \n"
	--lualib:NPCTalkDetail( sPlayerID , msg , 350 , 490 )
return msg
end


function cs_( npc ,sPlayerID , sThemapstr , sItemID )
	local param = tonumber( sThemapstr )
	local player_level = lualib:Level(sPlayerID)
	if player_level >= tbl_csmdd[param][4] then
	lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3 )
	else
	lualib:SysWarnMsg(sPlayerID, "您的等级不足，无法传送")
	end
	return ""
end

function cs_1( npc , sPlayerID , sThemapstr , sItemID)
	local param = tonumber( sThemapstr )
	local vip_lv = lualib:GetVipLevel(sPlayerID)
	if vip_lv > 0 then
		lualib:Player_MapMoveXY( sPlayerID , tbl_vip_map[vip_lv][1] , tbl_vip_map[vip_lv][2] , tbl_vip_map[vip_lv][3] , 3 )
	else
		lualib:SysWarnMsg(sPlayerID, "您的VIP等级不足，无法传送")
	end
	return ""
end
--NPC传送
--

tbl_csmdd={ 
			{"新版新手村"		, 	89 , 	146 ,	1}	,	--param = 1
			{"巫山城"			,  190 , 	258 ,	1}	,	--param = 2
			{"土城"				,  237 , 	227 ,	1}	,	--param = 3
			{"神歌城"			,  348 , 	190 ,	1}	,	--param = 4
			{"蜈蚣洞一层"		, 	93 , 	149 ,	30}	,	--param = 5 , 30级
			{"猪洞一层"			, 	62 , 	50 	,	30}	,	--param = 6 , 30级
			{"沃玛寺庙一层"		,  139 , 	165 ,	40}	,	--param = 7 , 40级
			{"祖玛寺庙入口"		, 	19 , 	31 	,	40}	,	--param = 8 , 40级
			{"赤月神殿一层"		,  225 , 	225 ,	50}	,	--param = 9 , 50级
			{"牛魔洞一层"		, 	42 , 	55  ,	60}	,	--param = 10 , 60级
			{"尸魔洞一层"		, 	87 , 	117 ,	70}	,	--param = 11, 70级
			{"骨魔洞一层"		,  189 , 	93 	,	70}	,	--param = 12, 70级
			{"封魔洞一层"		, 	67 , 	123 ,	1}	,	--param = 13, 1转
			{"魔龙城一层"		, 	12 , 	142 ,	1}	,	--param = 14, 1转
			{"狐月神殿一层"		, 	20 , 	48 	,	1}	,	--param = 15, 2转
			{"雷炎洞穴一层"		, 	74 , 	231 ,	1}	,	--param = 16, 2转
			{"雪域试炼一层"		, 	8  , 	132 ,	1}	,	--param = 17, 2转
			{"火龙神殿一层"		, 	68 , 	85 	,	1}	,	--param = 18, 3转
			{"玄冰殿一层"		, 	81 , 	161 ,	1}	,	--param = 19, 3转
			{"天空之城一层"		, 	13 , 	32 	,	1}	,	--param = 20, 3转
			{"海底世界一层"		, 	30 , 	75 	,	1}	,	--param = 21, 3转
			{"苍月岛"			,  226 , 	174 ,	1}	,	--param = 22, 5转
			{"普通挂机"			, 	46 , 	59 	,	1}	,	--param = 23
			}
			
tbl_vip_map={
			
			{"VIP1挂机"			, 	46, 	59	,	1}	,	--VIP等级1级
			{"VIP2挂机"			, 	46, 	59	,	2}	,	--VIP等级2级
			{"VIP3挂机"			, 	46, 	59	,	3}	,	--VIP等级3级
			{"VIP4挂机"			, 	46, 	59	,	4}	,	--VIP等级4级
			{"VIP5挂机"			, 	46, 	59	,	5}	,	--VIP等级5级
			{"VIP6挂机"			, 	46, 	59	,	6}	,	--VIP等级6级
			{"VIP7挂机"			, 	46, 	59	,	7}	,	--VIP等级7级
			{"VIP8挂机"			, 	46, 	59	,	8}	,	--VIP等级8级
			{"VIP9挂机"			, 	46, 	59	,	9}	, 	--VIP等级9级
			{"VIP10挂机"		, 	46, 	59	,  10}	, 	--VIP等级10级
			
}
function main( sNpcID , sPlayerID )
	--local msg = "                      #COLORCOLOR_BROWN#传 送 员#COLOREND#                    \n"
	--local msg = msg.."\n"
	--local msg = msg.."    #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = "                      #COLORCOLOR_ORANGE#城    市#COLOREND#                   \n" --开头空4个字符，左右对称独自再19个空格
	--local msg = msg.."\n"
	local msg = msg.."         <@cs_#1#sItemID *01*新手村>    ".."<@cs_#2#sItemID *01*巫山城>    ".."<@cs_#3#sItemID *01*土城>    ".."<@cs_#4#sItemID *01*神歌城>    \n"
	--local msg = msg.."    #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n" --一行最多45个字符
	local msg = msg.."                      #COLORCOLOR_ORANGE#危险区域#COLOREND#                   \n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#5#sItemID *01*毒 虫 洞（30级）>".."       <@cs_#6#sItemID *01*食人洞穴（30级）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#7#sItemID *01*天荒寺庙（40级）>".."       <@cs_#8#sItemID *01*邪    庙（40级）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#9#sItemID *01*赤炎禁地（50级）>".."       <@cs_#10#sItemID *01*牛 魔 洞（60级）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#11#sItemID *01*天魔石窟（70级）>".."       <@cs_#12#sItemID *01*骨 魔 洞（70级）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#13#sItemID *01*封 魔 洞（转 1）>".."       <@cs_#14#sItemID *01*魔 龙 城（转 1）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#15#sItemID *01*狐月神殿（转 2）>".."       <@cs_#16#sItemID *01*雷炎洞穴（转 2）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#17#sItemID *01*雪域试炼（转 2）>".."       <@cs_#18#sItemID *01*火龙神殿（转 3）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#19#sItemID *01*玄 冰 殿（转 3）>".."       <@cs_#20#sItemID *01*天空之城（转 3）>\n"
	--local msg = msg.."\n"
	local msg = msg.."       <@cs_#21#sItemID *01*海底世界（转 3）>".."       <@cs_#22#sItemID *01*苍 月 岛（转 5）>\n"
	--local msg = msg.."\n"
	--local msg = msg.."    #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."                      #COLORCOLOR_ORANGE#特殊区域#COLOREND#                   \n"
	--local msg = msg.."\n"
	local msg = msg.."              <@cs_#23#sItemID *01*普通挂机>        ".." <@cs_1#2#sItemID *01*VIP挂机>    \n"
	--lualib:NPCTalkDetail( sPlayerID , msg , 350 , 490 )
return msg
end


function cs_( npc ,sPlayerID , sThemapstr , sItemID )
	local param = tonumber( sThemapstr )
	local player_level = lualib:Level(sPlayerID)
	if player_level >= tbl_csmdd[param][4] then
	lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3 )
	else
	lualib:SysWarnMsg(sPlayerID, "您的等级不足，无法传送")
	end
	return ""
end

function cs_1( npc , sPlayerID , sThemapstr , sItemID)
	local param = tonumber( sThemapstr )
	local vip_lv = lualib:GetVipLevel(sPlayerID)
	if vip_lv > 0 then
		lualib:Player_MapMoveXY( sPlayerID , tbl_vip_map[vip_lv][1] , tbl_vip_map[vip_lv][2] , tbl_vip_map[vip_lv][3] , 3 )
	else
		lualib:SysWarnMsg(sPlayerID, "您的VIP等级不足，无法传送")
	end
	return ""
end
