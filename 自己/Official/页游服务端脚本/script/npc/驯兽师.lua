local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/horse")
require("system/logic_def_lua")

local huishou_pinji = {"汗血宝马", "绝影", "疾风"}
local name_table = {"套索", "坐骑经验丹", "坐骑口粮"}
local count_table = {}
local bind_table = {}
local opr_table = {}

local talk_t = {"野马可以多抓些，如果开光后不满意，还可以回收。", "如果你抓到野马，可以到我这儿来，使用开光印开光。", "马是人类最好的战友，拥有一匹神级好坐骑是我们一生的追求。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 260000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

local castle_table = {"神歌城",}

function main(npc, player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local msg = ""
	msg = msg.."    #COLORCOLOR_RED#只有开光后的坐骑，才能骑乘！#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@kaiguangyd *01*「坐骑开光」>       #OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@recover_zong#1 *01*「坐骑回收」>       #OFFSET<X:0,Y:0>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-1>#<@jieshao *01*「坐骑介绍」> \n \n \n"
    if own_family == "" or own_family ~= my_family then
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@OpenShop#25 *01*「驯兽商店」> #COLORCOLOR_GREENG#您没有加入占领神歌城的行会，购物原价！#COLOREND#\n"
    else
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@OpenShop#34 *01*「驯兽商店」> #COLORCOLOR_RED#因您所在的行会是占领神歌城的强大行会，购物八折优惠！#COLOREND#\n"
    end
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#[普通坐骑]#COLOREND##COLORCOLOR_WHITE#可在巫山城马场捕捉，#COLOREND##COLORCOLOR_YELLOW#[稀有坐骑]#COLOREND##COLORCOLOR_WHITE#每一定时间会随机出现在某张地图，别忘记带套索喔~#COLOREND#\n"
	return msg
end


function recover_zong(npc, player)
	local msg = ""
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@recover#1 *01*「普通回收」>       #OFFSET<X:0,Y:0>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-1>#<@recover#2 *01*「稀有回收」>       #IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@recover#3 *01*「珍贵回收」>\n \n"
    msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_GOLD#普通回收：#COLOREND##COLORCOLOR_SKYBLUE#『汗血』 『疾风』 『绝影』#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GOLD#稀有回收：#COLOREND##COLORCOLOR_SKYBLUE#『独角』 『梦魇』 『吼天』 『天狼』 『玄龟』#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GOLD#珍贵回收：#COLOREND##COLORCOLOR_SKYBLUE#『魔狮』 『神兽』 『龙鹰』 『不死鸟』#COLOREND#\n\n"
    msg = msg.."                                                   #OFFSET<X:0,Y:-10>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n "
	
	return msg
end

	
function recover(npc, player, e)	
	local zuoqi_keyname_tb = {}
	local e = tonumber(e)
	if e == 1 then
		zuoqi_keyname_tb = {"汗血宝马", "疾风", "绝影"}
	elseif e == 2 then
		zuoqi_keyname_tb = {"独角兽", "梦魇兽", "吼天兽", "雪域天狼", "霸下玄龟"}
	elseif e == 3 then
		zuoqi_keyname_tb = {"裂天魔狮", "神兽", "不死鸟", "龙鹰"}
	end

  	local tb = {}
	local item_guid_tb = {}
	local msg = ""
	msg = msg.."#COLORCOLOR_RED#提示：如果提交的是绑定的马，将获得绑定金币，如果提交的是非绑定的马，将获得非绑定金币！\n \n#COLOREND#"
	local pinzhi_tb = {
						[1] = "普通",
						[2] = "极品",
						[3] = "珍品",
						[4] = "绝品",
						[5] = "神品"
					   }
	
	for i = 1, #zuoqi_keyname_tb do
		local name_guid_tb = lualib:GetItemsByKeys(player, zuoqi_keyname_tb[i], false, true, false, false)
		if name_guid_tb ~= "" then
			for i = 1, #name_guid_tb do
				table.insert(item_guid_tb, name_guid_tb[i])
			end	
		end	
	end
	
	local u = table.getn(item_guid_tb)
	if u == 0 then
		msg = msg.."你没有可回收的坐骑！\n \n#OFFSET<X:0,Y:-10>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
		return msg
	else
		for i = 1, u do
			local pinji = lualib:Item_GetCustomVarInt(player, item_guid_tb[i], "h_type")
			if pinji > 0 then
				local pinji = pinzhi_tb[pinji]
				table.insert(tb, {pinji, lualib:KeyName(item_guid_tb[i]), item_guid_tb[i]})
			end
		end	
	end	
		
	table.sort(tb, function(a,b) return a[1] < b[1] end)

	for i = 1, #tb do
		if lualib:Item_IsBind(player, tb[i][3]) == true then
			msg = msg.."坐骑名字：【#COLORCOLOR_BROWN#"..tb[i][2].."#COLOREND#】   坐骑品质【#COLORCOLOR_BROWN#"..tb[i][1].." #COLOREND#】  坐骑属性【绑定】  <@tijiao_ma#"..tb[i][3].."#"..e.." *01*[上缴]>\n"
		else
			msg = msg.."坐骑名字：【#COLORCOLOR_BROWN#"..tb[i][2].."#COLOREND#】   坐骑品质【#COLORCOLOR_BROWN#"..tb[i][1].." #COLOREND#】  坐骑属性【非绑定】  <@tijiao_ma#"..tb[i][3].."#"..e.." *01*[上缴]>\n"
		end
	end	

	lualib:NPCTalk(player, msg)
	return ""
end

function tijiao_ma(player, item_guid, e)
	local itemname	= lualib:Name(item_guid)
	local itemkeyname = lualib:KeyName(item_guid)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)
	local item_player_guid = lualib:Item_GetRole(item_guid)
	if item_player_guid == "" then
		lualib:SysTriggerMsg(player, "你是不是把["..itemname.."]给放别处了？")
		return "你是不是把["..itemname.."]给放别处了？"
	end
	
	if player ~= item_player_guid then
		lualib:SysTriggerMsg(player, "你是不是把["..itemname.."]给放别处了？")
		return "你是不是把["..itemname.."]给放别处了？"
	end
	
	local e = tonumber(e)
	if e == 1 then
		gold_number = 200000
	elseif e == 2 then
		gold_number = 400000
	elseif e == 3 then
		gold_number = 800000
	end
	
	if lualib:Item_IsBind(player, item_guid) == true then	
		if lualib:Item_Destroy(player, item_guid, "提交物品", player) == true then
			lualib:Player_AddGold(player, gold_number, true, "完成任务奖励金币", player)
			lualib:SysWarnMsg(player, "你获得了"..gold_number.."绑定金币！")
			gold_number = nil
			e = nil
		else
			return "回收物品失败！！！"
		end
	
	else
		if lualib:Item_Destroy(player, item_guid, "提交物品", player) == true then
			lualib:Player_AddGold(player, gold_number, false, "完成任务奖励金币", player)
			lualib:SysWarnMsg(player, "你获得了"..gold_number.."金币！")
			gold_number = nil
			e = nil
		else

			return "回收物品失败！！！"
		end	
	end	

	return ""
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function kaiguangyd(npc, player)
	local msg = "#COLORCOLOR_RED#坐骑开光后，在坐骑升级时，有概率领悟如下特殊属性：#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_GREENG#移动速度 攻击速度 伤害反弹 伤害减免 吸血 吸魔 暴击 幸运#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:5>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@kaiguang *01*「坐骑开光」>\n \n"
	msg = msg.."                                              #OFFSET<X:0,Y:-10>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	
	return msg
end


function kaiguang(npc, player)
    lualib:ShowForm(player, "开光表单")

    return ""
end


function jieshao(npc, player)
	local msg = "#COLORCOLOR_RED#坐骑的品质分为普、极、珍、绝、神\n品质越高，移动速度就越快，领悟的属性条数也越高！#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-8>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#1.属性条数：普-1条、极-2条、珍-3条、绝-4条、神-5条#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_YELLOW#2.属性成长：除普通坐骑，其它品质的坐骑只要领悟到了属性，该属性都会随着坐骑的等级成长而成长！#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-8>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#小提示：[普通坐骑]你可在巫山城的马场捕捉到，#COLORCOLOR_YELLOW#[稀有坐骑]#COLOREND##COLORCOLOR_GREENG#每一定时间会随机出现在一张地图，别忘记带套索喔~#COLOREND#\n"
	msg = msg.."                                              #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"

	return msg
end

function leave(npc, player)
	return ""
end

function huishou(npc, player)
	local msg ="你若有不如意的坐骑，都可以交给我，我会给你一些实用的坐骑道具，帮助你寻觅和培养更好的坐骑！\n"
	msg = msg.."#COLORCOLOR_RED#注意：请在包裹第一位放入你要回收的并且已经开光的坐骑，并确保要回收的坐骑不是死亡状态！#COLOREND# \n"
	msg = msg.."#COLORCOLOR_RED#小技巧：品级越高的坐骑，回收获得的奖励越高！#COLOREND# \n"
	msg = msg.."#OFFSET<X:0,Y:-8>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	--for k, v in pairs(huishou_pinji) do
	--msg = msg .."<@queren#"..k.. "#"..v.."*01* "..huishou_pinji[tonumber(k)].."\n>"
	--end
	msg = msg .."#OFFSET<X:0,Y:5>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@queren *01*[确定回收]>\n"
	msg = msg.."                                              #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"

    
	return msg
end



function queren(npc, player, kwei)


	print(kwei)
	kwei = tonumber(kwei)
	local msg =""
	local keyname = lualib:KeyName(npc)
	local item_site = lualib:Player_GetItemGuid(player,lua_site_bag_0)  --获取第一个包裹格子的物品
	print(item_site)
	local item_type = lualib:Item_GetType(player,item_site)	            --获取第一个格子物品的类型
	print(item_type)
	local item_subtype = lualib:Item_GetSubType(player,item_site)	            --获取第一个格子物品的类型
	print(item_subtype)
	--local mountguid = lualib:Player_GetItemGuid(player,  lua_site_mount) --获取坐骑位的物品GUID
	local h_type = get_horse_type(player, item_site)
	print(h_type)
	local request_slots = 3
	--	if lualib:Player_GetItemCount(player, huishou_pinji[kwei]) < 1 then
	--		return "你身上没有坐骑"
	--	end
        
 
        
		if	item_site == "" then
			return "请在包裹第一格放入你要回收的已开光的坐骑！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*「返回」>"
			
		end
		
		if item_subtype ~=14 then
			return "你的包裹第一格不是坐骑!或者坐骑还未开光！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*「返回」>"
		end
		
		if	item_type ~=1 and item_subtype ~= 14 then
			return "你的包裹第一格不是坐骑！或者坐骑还未开光！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*「返回」>"
		end
		
		if lualib:Player_GetBagFree(player) < request_slots then
			return "你的包裹至少要有3格空位喔！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*「返回」>"
		end
        
        if lualib:Item_GetDurability(player, item_site) == 0 then
            return "你的坐骑已死亡，请复活后再进行回收操作！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@huishou *01*「返回」>"
        end
        
		
		if h_type == 1 then          -- 普
			count_table = {1, 1, 1}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0} 
			if not lualib:Item_Destroy(player, item_site, "回收坐骑", keyname) then
				return "扣除道具失败"
			end
			
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if h_type == 2 then           --极
			count_table = {2, 2, 2}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			if not lualib:Item_Destroy(player, item_site, "回收坐骑", keyname) then
				return "扣除道具失败"
			end
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if h_type == 3 then           --珍
			count_table = {3, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			if not lualib:Item_Destroy(player, item_site, "回收坐骑", keyname) then
				return "扣除道具失败"
			end
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		
		if h_type == 4 then           --绝
			count_table = {4, 7, 7}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			if not lualib:Item_Destroy(player, item_site, "回收坐骑", keyname) then
				return "扣除道具失败"
			end
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		
		if h_type == 5 then           --神
			count_table = {5, 10, 10}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			if not lualib:Item_Destroy(player, item_site, "回收坐骑", keyname) then
				return "扣除道具失败"
			end
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		
		--[[if	kwei == 1 and h_type == 1 then     --汗血普
			count_table = {1, 1, 1}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 1 and h_type == 2 then    --汗血极
			count_table = {1, 2, 2}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 1 and h_type == 3 then	  --汗血珍
			count_table = {2, 3, 3}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 1 and h_type == 4 then    --汗血绝
			count_table = {3, 3, 3}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 1 and h_type == 5 then    --汗血神
			count_table = {3, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 2 and h_type == 1 then     --绝影普
			count_table = {3, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 2 and h_type == 2 then    --绝影极
			count_table = {4, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 2 and h_type == 3 then	  --绝影珍
			count_table = {4, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 2 and h_type == 4 then    --绝影绝
			count_table = {5, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 2 and h_type == 5 then    --绝影神
			count_table = {5, 6, 6}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 3 and h_type == 1 then     --疾风普
			count_table = {3, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 3 and h_type == 2 then    --疾风极
			count_table = {4, 4, 4}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 3 and h_type == 3 then	  --疾风珍
			count_table = {4, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 3 and h_type == 4 then    --疾风绝
			count_table = {5, 5, 5}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end
		
		if	kwei == 3 and h_type == 5 then    --疾风神
			count_table = {5, 6, 6}
			bind_table = {0, 1 , 1}
			opr_table = {0, 0 , 0}
			lualib:Item_Destroy(player, item_site, "回收坐骑", keyname)
			lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "回收坐骑给物品", keyname)	
		end]]
		
		
	return msg

end

function give(npc, player, wupin)
	print(wupin)
	local msg ="给奖励！"

	return ""
	
end