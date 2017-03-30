--NPC传送
--

tbl_csmdd={ 
			{"新版新手村"		, 	89 , 	146 }	,
			{"巫山城"			, 	1 , 	1 }	,
			{"土城"				, 	1 , 	1 }	,
			{"沙巴克"			, 	1 , 	1 }	,
			{"蜈蚣洞（30级）"	, 	1 , 	1 }	,
			{"猪洞（30级）"		, 	1 , 	1 }	,
			{"沃玛寺庙（40级）"	, 	1 , 	1 }	,
			{"祖玛寺庙（40级）"	, 	1 , 	1 }	,
			{"赤月神殿（50级）"	, 	1 , 	1 }	,
			{"牛魔洞（60级）"	, 	1 , 	1 }	,
			{"尸魔洞（70级）"	, 	1 , 	1 }	,
			{"骨魔洞（70级）"	, 	1 , 	1 }	,
			{"封魔洞（转1）"	, 	1 , 	1 }	,
			{"魔龙城（转1）"	, 	1 , 	1 }	,
			{"狐月神殿（转2）"	, 	1 , 	1 }	,
			{"雷炎洞穴（转2）"	, 	1 , 	1 }	,
			{"雪域试炼（转2）"	, 	1 , 	1 }	,
			{"火龙神殿（转3）"	, 	1 , 	1 }	,
			{"玄冰殿（转3）"	, 	1 , 	1 }	,
			{"天空之城（转3）"	, 	1 , 	1 }	,
			{"海底世界（转3）"	, 	1 , 	1 }	,
			{"苍月岛（转5）"	, 	1 , 	1 }	,
			{"普通挂机"			, 	1 , 	1 }	,
			{"VIP挂机"			, 	1 , 	1 }	,
			}


function main( sNpcID , sPlayerID )
	local msg = "城    市——\n"
	local msg = msg.."<@transfer#1 *01*新手村>            ".."<@transfer#2 *01*比奇城>            ".."<@transfer#3 *01*土城>            ".."<@transfer#4 *01*沙巴克>    \n"
	local msg = msg.."危险区域——\n"
	local msg = msg.."<@transfer#5 *01*蜈蚣洞（30级）>    ".."<@transfer#6 *01*猪洞（30级）>      ".."<@transfer#7 *01*沃玛寺庙（40级）>    \n"
	local msg = msg.."<@transfer#8 *01*祖玛寺庙（40级）>  ".."<@transfer#9 *01*赤月神殿（50级）>  ".."<@transfer#10 *01*牛魔洞（60级）>    \n"
	local msg = msg.."<@transfer#11 *01*尸魔洞（70级）>    ".."<@transfer#12 *01*骨魔洞（70级）>    ".."<@transfer#13 *01*封魔洞（转1）>    \n"
	local msg = msg.."<@transfer#14 *01*魔龙城（转1）>     ".."<@transfer#15 *01*狐月神殿（转2）>   ".."<@transfer#16 *01*雷炎洞穴（转2）>    \n"
	local msg = msg.."<@transfer#17 *01*雪域试炼（转2）>   ".."<@transfer#18 *01*火龙神殿（转3）>   ".."<@transfer#19 *01*玄冰殿（转3）>    \n"
	local msg = msg.."<@transfer#20 *01*天空之城（转3）>   ".."<@transfer#21 *01*海底世界（转3）>   ".."<@transfer#22 *01*苍月岛（转5）>    \n"
	local msg = msg.."特殊区域——\n"
	local msg = msg.."<@transfer#23 *01*普通挂机>          ".."<@transfer#24 *01*VIP挂机>    \n"
	return msg
end

function transfer( sNpcID , sPlayerID , param )
	lualib:Player_MapMoveXY( sPlayerID , tbl_csmdd[param][1] , tbl_csmdd[param][2] , tbl_csmdd[param][3] , 3 )
end