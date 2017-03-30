--NPC传送
--

tbl_csmdd={ 
			{"新版新手村"		, 	94 , 	261 ,	1}	,	--param = 1
			{"巫山城"		, 	161 , 	200 ,	1}	,	--param = 2
			{"土城"			, 	103 , 	128 ,	1}	,	--param = 3
			{"神歌城"		, 	160 , 	190 ,	1}	,	--param = 4
			{"蜈蚣洞一层"		, 	66 , 	75 ,	30}	,	--param = 5 , 30级
			{"猪洞一层"		, 	88 , 	85 ,	30}	,	--param = 6 , 30级
			{"沃玛寺庙一层"		, 	145 , 	176 ,	40}	,	--param = 7 , 40级
			{"祖玛寺庙入口"		, 	10 , 	30 ,	40}	,	--param = 8 , 40级
			{"赤月神殿一层"		, 	39 , 	107 ,	50}	,	--param = 9 , 50级
			{"牛魔洞一层"		, 	42 , 	55  ,	60}	,	--param = 10 , 60级
			{"尸魔洞一层"		, 	87 , 	202 ,	70}	,	--param = 11, 70级
			{"骨魔洞一层"		, 	146 , 	195 ,	70}	,	--param = 12, 70级
			{"封魔洞一层"		, 	100 , 	128 ,	1}	,	--param = 13, 1转
			{"魔龙城一层"		, 	141 , 	170 ,	1}	,	--param = 14, 1转
			{"狐月神殿一层"		, 	69, 	88,	2}	,	--param = 15, 2转
			{"雷炎洞穴一层"		, 	26 , 	92 ,	2}	,	--param = 16, 2转
			{"雪域试炼一层"		, 	12  , 	129 ,	2}	,	--param = 17, 2转
			{"火龙神殿一层"		, 	68 , 	85 ,	3}	,	--param = 18, 3转
			{"玄冰殿一层"		, 	61 , 	86 ,	3}	,	--param = 19, 3转
			{"天空之城一层"		, 	38 , 	171 ,	3}	,	--param = 20, 3转
			{"海底世界一层"		, 	48 , 	136 ,	3}	,	--param = 21, 3转
			{"苍月岛"		,	226 , 	174 ,	5}	,	--param = 22, 5转
			{"普通挂机"		, 	46 , 	59 ,	50}	,	--param = 23, 50级
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
			{"VIP10挂机"			, 	46, 	59	,	10}	, 	--VIP等级10级
			
}
function main(player,param)
	local state = tonumber(param)
	if state == 0 then
		lualib:ShowFormWithContent(player,"form文件表单","传送员UI")
	end
	return ""
end


function cs_(sPlayerID , sThemapstr)
	local param = tonumber(sThemapstr)
	local reinLevel = lualib:GetInt(sPlayerID,"reinLevel")
	local player_level = lualib:Level(sPlayerID)
	if  param < 13 then
		if player_level >= tbl_csmdd[param][4] then
			lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3)
			lualib:ShowFormWithContent(sPlayerID,"脚本表单","Transmit.Close()")
		else
			lualib:SysPromptMsg(sPlayerID, "您的等级不足，无法进入")
		end
	elseif param >= 13  and param < 23 then
		if  reinLevel >= tbl_csmdd[param][4] then
			lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3)
			lualib:ShowFormWithContent(sPlayerID,"脚本表单","Transmit.Close()")
		else
			lualib:SysPromptMsg(sPlayerID, "您的转生等级不足，无法进入")
		end
	elseif param >= 23 then
		if player_level >= tbl_csmdd[param][4] then
			lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3)
			lualib:ShowFormWithContent(sPlayerID,"脚本表单","Transmit.Close()")
		else
			lualib:SysPromptMsg(sPlayerID, "您的等级不足50级，无法进入")
		end
	end	
	return ""
end

function cs_1(sPlayerID,sThemapstr)
	local vip_lv = lualib:GetVipLevel(sPlayerID)
	if vip_lv > 0 then
		lualib:Player_MapMoveXY( sPlayerID , tbl_vip_map[vip_lv][1] , tbl_vip_map[vip_lv][2] , tbl_vip_map[vip_lv][3] , 3 )
		lualib:ShowFormWithContent(sPlayerID,"脚本表单","Transmit.Close()")
	else
		local str = "\"您的VIP等级不足，无法进入，充值任意金额即可成为VIP!\""
		lualib:ShowFormWithContent(sPlayerID,"脚本表单","Transmit.MessagePrompt("..str..")")
		--lualib:SysPromptMsg(sPlayerID, "您的VIP等级不足，无法进入，充值任意金额即可成为VIP")
	end
	return ""
end
