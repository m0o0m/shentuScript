--张老板
--2015-12-28
--日常副本

tbl_YS = {
			[0] = { 
					" #COLORCOLOR_GREENG#★★★【经验】★★★    62级#COLOREND#" , 
					" #COLORCOLOR_GREENG#★★★【神羽】★★★    63级#COLOREND#" , 
					" #COLORCOLOR_GREENG#★★★【盾牌】★★★    64级#COLOREND#" , 
					" #COLORCOLOR_GREENG#★★★【经验】★★★    65级#COLOREND#" , 
					" #COLORCOLOR_GREENG#★★★【珠宝】★★★    65级#COLOREND#" , 
					" <@toJY62 *01*『天荒古阵』>" , 
					" <@toYM63 *01*『镇魔圣殿』>" , 
					" <@toHD64 *01*『黑暗祭坛』>" , 
					" <@toJY65 *01*『上古邪庙』>" ,
					" <@toBS65 *01*『赤炎禁地』>" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					},
			[1] = { 
					" #COLORCOLOR_GREENG#★★★【经验】★★★    62级#COLOREND#" , 
					" #COLORCOLOR_GREENG#★★★【神羽】★★★    63级#COLOREND#" , 
					" #COLORCOLOR_GREENG#★★★【盾牌】★★★    64级#COLOREND#" , 
					" #COLORCOLOR_GREENG#★★★【经验】★★★    65级#COLOREND#" , 
					" #COLORCOLOR_GREENG#★★★【珠宝】★★★    65级#COLOREND#" , 
					" <@toJY62 *01*『天荒古阵』>" , 
					" <@toYM63 *01*『镇魔圣殿』>" , 
					" <@toHD64 *01*『黑暗祭坛』>" , 
					" <@toJY65 *01*『上古邪庙』>" , 
					" <@toBS65 *01*『赤炎禁地』>" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					"#IMAGE1900100002#" ,
					},
			[2] = { 
					" #COLORCOLOR_GRAY#★★★【经验】★★★    62级#COLOREND#" , 
					" #COLORCOLOR_GRAY#★★★【神羽】★★★    63级#COLOREND#" , 
					" #COLORCOLOR_GRAY#★★★【盾牌】★★★    64级#COLOREND#" , 
					" #COLORCOLOR_GRAY#★★★【经验】★★★    65级#COLOREND#" , 
					" #COLORCOLOR_GRAY#★★★【珠宝】★★★    65级#COLOREND#" , 
					" #COLORCOLOR_GRAY#『天荒古阵』#COLOREND#" ,
					" #COLORCOLOR_GRAY#『镇魔圣殿』#COLOREND#" ,
					" #COLORCOLOR_GRAY#『黑暗祭坛』#COLOREND#" ,
					" #COLORCOLOR_GRAY#『玛寺寺庙』#COLOREND#" ,
					" #COLORCOLOR_GRAY#『赤炎禁地』#COLOREND#" ,
					"#IMAGE1900100000#" ,
					"#IMAGE1900100000#" ,
					"#IMAGE1900100000#" ,
					"#IMAGE1900100000#" ,
					"#IMAGE1900100000#" ,
					},
}

local sKeyName = "副本卷轴"
local sItemName = lualib:KeyName2Name( sKeyName , 4 )
local iNum = 1

function main( sNpcID , sPlayerID )
	local JY_ColorParam_62 = lualib:GetDayInt( sPlayerID , "62级经验本" )
	local YM_ColorParam_63 = lualib:GetDayInt( sPlayerID , "63级羽毛本" )
	local HD_ColorParam_64 = lualib:GetDayInt( sPlayerID , "64级护盾本" )
	local JY_ColorParam_65 = lualib:GetDayInt( sPlayerID , "65级经验本" )
	local BS_ColorParam_65 = lualib:GetDayInt( sPlayerID , "65级宝石本" )
	local msg = " #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉#COLORCOLOR_GOLD#每#COLORCOLOR_GRAY#┉#COLORCOLOR_GOLD#日#COLORCOLOR_GRAY#┉#COLORCOLOR_GOLD#副#COLORCOLOR_GRAY#┉#COLORCOLOR_GOLD#本#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[JY_ColorParam_62][1].."    "..tbl_YS[JY_ColorParam_62][11]..tbl_YS[JY_ColorParam_62][6].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[YM_ColorParam_63][2].."    "..tbl_YS[YM_ColorParam_63][12]..tbl_YS[YM_ColorParam_63][7].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[HD_ColorParam_64][3].."    "..tbl_YS[HD_ColorParam_64][13]..tbl_YS[HD_ColorParam_64][8].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[JY_ColorParam_65][4].."    "..tbl_YS[JY_ColorParam_65][14]..tbl_YS[JY_ColorParam_65][9].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[BS_ColorParam_65][5].."    "..tbl_YS[BS_ColorParam_65][15]..tbl_YS[BS_ColorParam_65][10].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	return msg
end

function toJY62( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 62 then
		return "您的等级不足"
	end
	if lualib:GetDayInt( sPlayerID , "62级经验本" ) > 1 then
		return "您的次数不足"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "62级经验本" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020166#\n\n\n" 
	local msg = msg.."           经验 1500000".."               灵珠碎片（小）*2\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."剩余进入次数:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."消耗"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."个#COLOREND#（拥有#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#）\n"
	local msg = msg.."通关时间限制:30分钟\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoHY62 *01*『进入副本』>".."                     <@relist *01*『返回列表』>\n"
	return msg
end

function toYM63( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 63 then
		return "您的等级不足"
	end
	if lualib:GetDayInt( sPlayerID , "63级羽毛本" ) > 1 then 
		return "您的次数不足"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "63级羽毛本" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020036#\n\n\n" 
	local msg = msg.."           经验 600000".."               神灵之羽*12\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."剩余进入次数:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."消耗"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."个#COLOREND#（拥有#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#）\n"
	local msg = msg.."通关时间限制:30分钟\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoYM63 *01*『进入副本』>".."                     <@relist *01*『返回列表』>\n"
	return msg
end

function toHD64( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 64 then
		return "您的等级不足"
	end
	if lualib:GetDayInt( sPlayerID , "64级护盾本" ) > 1 then
		return "您的次数不足"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "64级护盾本" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020186#\n\n\n" 
	local msg = msg.."           经验 600000".."               守护之心（小）*2\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."剩余进入次数:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."消耗"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."个#COLOREND#（拥有#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#）\n"
	local msg = msg.."通关时间限制:30分钟\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoHD64 *01*『进入副本』>".."                     <@relist *01*『返回列表』>\n"
	return msg
end

function toJY65( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 65 then
		return "您的等级不足"
	end
	if lualib:GetDayInt( sPlayerID , "65级经验本" ) > 1 then
		return "您的次数不足"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "62级经验本" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020166#\n\n\n" 
	local msg = msg.."           经验 1500000".."               灵珠碎片（小）*2\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."剩余进入次数:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."消耗"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."个#COLOREND#（拥有#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#）\n"
	local msg = msg.."通关时间限制:30分钟\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoJY65 *01*『进入副本』>".."                     <@relist *01*『返回列表』>\n"
	return msg
end

function toBS65( sNpcID , sPlayerID )
	if lualib:Level( sPlayerID ) < 65 then
		return "您的等级不足"
	end
	if lualib:GetDayInt( sPlayerID , "65级宝石本" ) > 1 then
		return "您的次数不足"
	end
	local iCounts = 2 - lualib:GetDayInt( sPlayerID , "62级经验本" )
	local iJzNum = lualib:ItemCount( sPlayerID , sKeyName )
	local msg = "#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."#IMAGE1990020318#".."                  #IMAGE1990020170#\n\n\n" 
	local msg = msg.."           经验 600000".."               玉石结晶（小）*12\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."剩余进入次数:#COLORCOLOR_GREENG#"..iCounts.."#COLOREND#\n"
	local msg = msg.."消耗"..sItemName..":#COLORCOLOR_GREENG#"..iNum.."个#COLOREND#（拥有#COLORCOLOR_GREENG#"..iJzNum.."#COLOREND#）\n"
	local msg = msg.."通关时间限制:30分钟\n"
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n\n"
	local msg = msg.."#IMAGE1900100002#<@intoBS65 *01*『进入副本』>".."                     <@relist *01*『返回列表』>\n"
	return msg
end

function intoHY62( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "副本卷轴" , "副本卷轴" ) == false then
		return "您没有"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "副本沃玛寺庙" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "62级经验本" , lualib:GetDayInt( sPlayerID , "62级经验本" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "副本沃玛寺庙" , 67 , 80 , 0 )
		return ""
	else
		return "您不被许可进入地图！\n "
	end
end

function intoYM63( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "副本卷轴" , "副本卷轴" ) == false then
		return "您没有"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "副本封魔恶谷" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "63级羽毛本" , lualib:GetDayInt( sPlayerID , "63级羽毛本" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "副本封魔恶谷" , 62 , 67 , 15 )
		return ""
	else
		return "您不被许可进入地图！\n "
	end
end

function intoHD64( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "副本卷轴" , "副本卷轴" ) == false then
		return "您没有"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "副本天空之城" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "64级护盾本" , lualib:GetDayInt( sPlayerID , "64级护盾本" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "副本天空之城" , 62 , 67 , 15 )
		return ""
	else
		return "您不被许可进入地图！\n "
	end
end

function intoJY65( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "副本卷轴" , "副本卷轴" ) == false then
		return "您没有"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "副本祖玛寺庙" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "65级经验本" , lualib:GetDayInt( sPlayerID , "65级经验本" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "副本祖玛寺庙" , 62 , 67 , 15 )
		return ""
	else
		return "您不被许可进入地图！\n "
	end
end

function intoBS65( sNpcID , sPlayerID )
	if lualib:DelItem( sPlayerID , sKeyName , 1, 2, "副本卷轴" , "副本卷轴" ) == false then
		return "您没有"..sItemName
	end
	local MapGuid = lualib:Map_CreateDgn( "副本赤月神殿" , true , 30 * 60 )
	if lualib:Player_SetDgnTicket( sPlayerID , MapGuid ) == true then
		lualib:SetDayInt( sPlayerID , "65级宝石本" , lualib:GetDayInt( sPlayerID , "65级宝石本" ) + 1 )
		lualib:Player_EnterDgn( sPlayerID , "副本赤月神殿" , 62 , 67 , 15 )
		return ""
	else
		return "您不被许可进入地图！\n "
	end
end

function relist( sNpcID , sPlayerID )
	local JY_ColorParam_62 = lualib:GetDayInt( sPlayerID , "62级经验本" )
	local YM_ColorParam_63 = lualib:GetDayInt( sPlayerID , "63级羽毛本" )
	local HD_ColorParam_64 = lualib:GetDayInt( sPlayerID , "64级护盾本" )
	local JY_ColorParam_65 = lualib:GetDayInt( sPlayerID , "65级经验本" )
	local BS_ColorParam_65 = lualib:GetDayInt( sPlayerID , "65级宝石本" )
	local msg = " #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉#COLORCOLOR_GOLD#每#COLORCOLOR_GRAY#┉#COLORCOLOR_GOLD#日#COLORCOLOR_GRAY#┉#COLORCOLOR_GOLD#副#COLORCOLOR_GRAY#┉#COLORCOLOR_GOLD#本#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[JY_ColorParam_62][1].."    "..tbl_YS[JY_ColorParam_62][11]..tbl_YS[JY_ColorParam_62][6].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[YM_ColorParam_63][2].."    "..tbl_YS[YM_ColorParam_63][12]..tbl_YS[YM_ColorParam_63][7].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[HD_ColorParam_64][3].."    "..tbl_YS[HD_ColorParam_64][13]..tbl_YS[HD_ColorParam_64][8].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[JY_ColorParam_65][4].."    "..tbl_YS[JY_ColorParam_65][14]..tbl_YS[JY_ColorParam_65][9].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg..tbl_YS[BS_ColorParam_65][5].."    "..tbl_YS[BS_ColorParam_65][15]..tbl_YS[BS_ColorParam_65][10].."\n "
	local msg = msg.."#COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	return msg
end