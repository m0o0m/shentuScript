local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local shuangdan_shuaguai_table = {
        ["废弃矿洞1"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["废弃矿洞2"] = {{"圣诞小人1", 15}, {"元旦小兵1", 15}, }, 
        ["废弃矿洞3"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["废弃矿洞4"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["废弃矿洞5"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["将军冢1"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["将军冢2"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["将军冢3"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["妖山暗穴1"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["妖山暗穴2"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["妖山暗穴3"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["妖山暗穴4"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["妖山暗穴5"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["妖山暗穴6"] = {{"圣诞小人1", 5}, {"元旦小兵1", 5}, }, 
        ["妖山暗穴7"] = {{"圣诞小人1", 5}, {"元旦小兵1", 5}, }, 
        ["妖山暗穴8"] = {{"圣诞小人1", 5}, {"元旦小兵1", 5}, }, 
        ["邪庙1"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["邪庙2"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["邪庙3"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["邪庙4"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["邪庙5"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["邪庙6-1"] = {{"圣诞小人2", 1}, {"元旦小兵2", 2}, }, 
        ["邪庙6-2"] = {{"圣诞小人2", 2}, {"元旦小兵2", 1}, }, 
        ["邪庙6-3"] = {{"圣诞小人2", 1}, {"元旦小兵2", 2}, }, 
        ["邪庙6-4"] = {{"圣诞小人2", 2}, {"元旦小兵2", 1}, }, 
        ["邪庙6-5"] = {{"圣诞小人2", 1}, {"元旦小兵2", 2}, }, 
        ["邪庙6-6"] = {{"圣诞小人2", 2}, {"元旦小兵2", 1}, }, 
        ["邪庙6-7"] = {{"圣诞小人2", 1}, {"元旦小兵2", 2}, }, 
        ["邪庙6-8"] = {{"圣诞小人2", 2}, {"元旦小兵2", 1}, }, 
        ["邪庙6-9"] = {{"圣诞小人2", 1}, {"元旦小兵2", 2}, }, 
        ["邪庙6-10"] = {{"圣诞小人2", 2}, {"元旦小兵2", 1}, }, 
        ["邪庙6-11"] = {{"圣诞小人2", 1}, {"元旦小兵2", 2}, }, 
        ["邪庙6-12"] = {{"圣诞小人2", 2}, {"元旦小兵2", 1}, }, 
        ["邪庙6-13"] = {{"圣诞小人2", 1}, {"元旦小兵2", 2}, }, 
        ["邪庙6-14"] = {{"圣诞小人2", 2}, {"元旦小兵2", 1}, }, 
        ["邪庙6-15"] = {{"圣诞小人2", 1}, {"元旦小兵2", 2}, }, 
        ["邪庙6-16"] = {{"圣诞小人2", 2}, {"元旦小兵2", 1}, }, 
        ["邪庙7-1"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["邪庙7-2"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["邪庙7-3"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["天荒阵1"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["天荒阵2"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["天荒阵3"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["天荒阵4"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["天荒阵5"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["天荒阵6"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["天荒阵7-1"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["天荒阵7-2"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["天荒阵7-3"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["天荒阵7-4"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["天荒阵7-5"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["天荒阵7-6"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["天荒阵7-7"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["天荒阵7-8"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["天荒阵7-9"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["绝路城1"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["绝路城2"] = {{"圣诞小人1", 15}, {"元旦小兵1", 15}, }, 
        ["绝路城3"] = {{"圣诞小人1", 25}, {"元旦小兵1", 25}, }, 
        ["天魔石窟1"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["天魔石窟2"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["天魔石窟3"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["天魔石窟4"] = {{"圣诞小人2", 25}, {"元旦小兵2", 25}, }, 
        ["海底1"] = {{"圣诞小人2", 15}, {"元旦小兵2", 15}, }, 
        ["海底2"] = {{"圣诞小人2", 15}, {"元旦小兵2", 15}, }, 
        ["海底3"] = {{"圣诞小人2", 20}, {"元旦小兵2", 20}, }, 
        ["海底3野外"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["海底4"] = {{"圣诞小人2", 15}, {"元旦小兵2", 15}, }, 
        ["海底4野外"] = {{"圣诞小人2", 10}, {"元旦小兵2", 10}, }, 
        ["海底5"] = {{"圣诞小人2", 15}, {"元旦小兵2", 15}, }, 
        ["海底1船舱1"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底1船舱2"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底1船舱3"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底1船舱4"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底1船舱5"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底1船舱6"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底1船舱7"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底2船舱1"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底2船舱2"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底2船舱3"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底2船舱4"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底2船舱5"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底2船舱6"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底3船舱1"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底4船舱1"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
        ["海底4船舱2"] = {{"圣诞小人2", 5}, {"元旦小兵2", 5}, }, 
            }
			
function huanlesong_shijianpanduan()
	local p1 = lualib:GetAllTime() --获取当前时间秒数
	local p2 = lualib:Str2Time("2012-12-24 0:0:0") --获取活动开始时间秒数
	local p3 = lualib:Str2Time("2013-01-06 23:59:59") --获取活动结束时间秒数
	
	if p1 >= p2 and p1 <= p3 then
		return true
	else
		return false
	end
end

---------------------每分触发------------------------------
function meifenchufa()	
	if huanlesong_shijianpanduan() == true and lualib:GetInt("","huanlesong_kaiqi") == 0 then
		lualib:SetInt("","huanlesong_kaiqi",1)
		local map = lualib:Map_GetMapGuid("龙城")
		lualib:Map_GenNpc(map,"双蛋老人",245,225,0,4) --生成npc
		--刷新活动怪物
		for k,v in pairs(shuangdan_shuaguai_table) do
			local map = lualib:Map_GetMapGuid(k)
			lualib:Map_BatchGenMonster(map,v[1][1],v[1][2],true)
			lualib:Map_BatchGenMonster(map,v[2][1],v[2][2],true)
		end
	elseif huanlesong_shijianpanduan() == false and lualib:GetInt("","huanlesong_kaiqi") == 1 then
		lualib:SetInt("","huanlesong_kaiqi",0)
		local map = lualib:Map_GetMapGuid("龙城")
		lualib:Map_ClearNpc(map,245,225,0,"双蛋老人") --删除npc
		lualib:DisableTimer("",20000) --删除定时器
		--删除活动怪物
		for k,v in pairs(shuangdan_shuaguai_table) do
			local map = lualib:Map_GetMapGuid(k)
			lualib:Map_ClearMonster(map,0,0,999,v[1][1],false,true)
			lualib:Map_ClearMonster(map,0,0,999,v[2][1],false,true)
		end
		return
	end
	
	if huanlesong_shijianpanduan() == true then
		local shijian = shijianjiexi(lualib:Time2Str("%Y-%m-%d %H:%M:%S",0))
		if shijian["min"] == 0 then
			local url = "http://api.hzyotoy.com/api/getfill.do?act=fillperson&sid="..lualib:GetZoneId().."&starttime="..lualib:UrlEncode(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:GetAllTime()-3600)).."&endtime="..lualib:UrlEncode(lualib:Time2Str("%Y-%m-%d %H:%M:%S",0)).."&startmoney=100"
			lualib:GetURL(url,"chongzhirenshu","",30)
		end
		
		if math.random(10) == 1 then
			lualib:SysMsg_SendBroadcastMsg("元旦圣诞活动正在进行中，龙城(224,225)的双“蛋”老人处可领取多倍经验buff和兑换活动礼物。", "系统通知")
			lualib:SysMsg_SendBoardMsg("0", "[系统通知]", "元旦圣诞活动正在进行中，龙城(224,225)的双“蛋”老人处可领取多倍经验buff和兑换活动礼物。", 15000)
		end
	end
	
	if lualib:GetAllTime() > lualib:Str2Time("2013-01-06 23:59:59") then --判断活动是否结束
		return
	else
		lualib:AddTimer("", 20000, 60000, -1, "meifenchufa")
		return
	end
end

-----------------------图标显示-----------------------------
function huanlesong_xianshi(player)
	if huanlesong_shijianpanduan() == false then
		return
	end
	
	ShowTimeCount2(player, 0, 1903800066, "双蛋欢乐送",0,"") --显示目标图标
end

-------------------图标被点击-----------------------
function huanlesong(player)
	if huanlesong_shijianpanduan() == false then
		return "双蛋欢乐送活动已结束！\n\n<@guanbi *01*关闭>"
	end
	
	huanlesong_xianshi(player)
	local url = "http://api.hzyotoy.com/api/getfill.do?act=fillmoney&accountid="..lualib:Player_GetAccountID(player).."&sid="..lualib:GetZoneId().."&starttime="..lualib:UrlEncode("2012-12-24 00:00:00").."&endtime="..lualib:UrlEncode("2013-01-06 23:59:59") ---向网站发送玩家充值金额请求
	lualib:GetURL(url,"chongzhijine",player,30)
	lualib:AddTimer(player, 1, 1000, 1, "huanlesong1")
	lualib:NPCTalk(player,"数据正在检测……")
	return ""
end

function huanlesong1(player,id)
	if huanlesong_shijianpanduan() == false then
		return "双蛋欢乐送活动已结束！\n\n<@guanbi *01*关闭>"
	end
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#双蛋欢乐送#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_ORANGE#2012年12月24日——2013年1月6日#COLOREND#圣诞、元旦活动期间，在活动期间每充值100元，都可以获得1次抢夺5000元宝大奖的机会。系统将在每个整点放出至少1份的5000元宝大奖。\n"
	msg = msg .."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_GREENG#你在活动期间总共充值：#COLOREND#"..lualib:GetInt(player, "shuangdan_chongzhi").." 元    #COLORCOLOR_GREENG#剩余夺奖次数：#COLOREND#"..lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_kechoujiang") - lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_choujiang").."\n"
	msg = msg .. "#COLORCOLOR_GREENG#当前5000元宝大奖剩余：#COLOREND#"..lualib:IO_GetCustomVarInt("shengyudajiang") .." 份\n \n"
	msg = msg .. "#IMAGE<ID:1902700032>#<@qiangdupdajiang *01*抢夺5000元宝大奖>  #IMAGE<ID:1902700016>#<@qiangduomingdan *01*抢夺大奖成功名单>  #IMAGE<ID:1902700030>#<@huodongjieshao *01*圣诞元旦活动介绍>  #IMAGE<ID:1902700034>#<@guanbi *01*关闭>"
	lualib:NPCTalk(player, msg)
	return ""
end


function huodongjieshao(player)
	local msg = "圣诞元宝活动时间：#COLORCOLOR_ORANGE#2012年-12月24——2013年1月6号#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_GREENG#1、双蛋之星#COLOREND#\n"
	msg = msg .. "活动内容：全地图的圣诞怪物掉落各种活动道具，这些道具可用于换取各种圣诞元旦礼物。\n\n"
	msg = msg .. "#COLORCOLOR_GREENG#2、双蛋经验翻倍#COLOREND#\n"
	msg = msg .. "活动内容：玩家每天都可以上线领取1.5倍经验buff，40级以下可领取到2倍经验buff，每天最多领取的时效为24小时时间！\n\n"
	msg = msg .. "#COLORCOLOR_GREENG#3、双蛋欢乐送#COLOREND#\n"
	msg = msg .. "活动内容：每充值100元人民币，都能在整点的时候，有一次机会抽取50元元宝的大奖，每个整点系统将放出1份以上元宝大奖。\n\n"
	msg = msg .. "<@huanlesong *01*返回>"
	return msg
end

function guanbi()
	return ""
end

function shijianjiexi(s1)
	local shijian = {}
	local j1,j2,j3,j4

	j1,j2 = string.find(s1,"-",1)
	shijian["year"] = tonumber(string.sub(s1,1,j1-1))
	j3,j4 = string.find(s1,"-",j2+1)
	shijian["month"] = tonumber(string.sub(s1,j2+1,j3-1))
	j5 = string.find(s1," ",j4)
	shijian["day"] = tonumber(string.sub(s1,j4+1,j5-1))
	
	j1,j2 = string.find(s1,":",j5+1)
	shijian["hour"] = tonumber(string.sub(s1,j5+1,j1-1))
	j3,j4 = string.find(s1,":",j2+1)
	shijian["min"] = tonumber(string.sub(s1,j2+1,j3-1))
	shijian["sec"] = tonumber(string.sub(s1,j4+1,#s1))
	return shijian
end

------------------------充值金额回调----------------------------
function chongzhijine(player,_,shu)
	shu = tonumber(shu)
	local player_id = lualib:Player_GetAccountID(player)	
	local fen = math.floor(shu/100)
	lualib:SetInt(player, "shuangdan_chongzhi", shu) --活动期间的充值金额
	lualib:SetDBNumEx(player_id.."_shuangdan_kechoujiang",fen,4)
end

------------------------充值人数回调----------------------------
function chongzhirenshu(_,shu)
	shu = tonumber(shu)
	local fen = math.floor(shu/10)
	if fen < 1 then
		fen = 1
	end
	lualib:IO_SetCustomVarInt("shengyudajiang", fen) --剩余大奖增加份额
	lualib:SysMsg_SendBroadcastMsg("双蛋欢乐送活动放出了"..fen.."份5000元宝大奖，通过点击屏幕上方的图标可以进行抢夺！", "系统通知")
end

------------------------抢夺大奖----------------------------
function qiangdupdajiang(player)
	if huanlesong_shijianpanduan() == false then
		return "双蛋欢乐送活动已结束！\n\n<@guanbi *01*关闭>"
	end
	
	if lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_kechoujiang") - lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_choujiang") > 0 then
	else
		return "你没有抢夺大奖的资格！\n\n<@guanbi *01*关闭>"
	end

	if lualib:IO_GetCustomVarInt("shengyudajiang") > 0 then
	else
		return "现在没有可以领取的5000元宝大奖！\n\n<@guanbi *01*关闭>"
	end
	
	if lualib:BagSize(player,true,false,false) >= 1 then
		lualib:AddItem(player,"5000元宝",1,false,"双蛋欢乐送",player) --给元宝
		lualib:SetDBNumEx(lualib:Player_GetAccountID(player).."_shuangdan_choujiang", lualib:GetDBNum(lualib:Player_GetAccountID(player).."_shuangdan_choujiang")+1,4) --增加夺奖次数
		--记录抢夺大奖的玩家名单
		local gonggao = {}
		if lualib:IO_GetCustomVarStr("shuangdanqiangyuanbao_gonggao") ~= "" then
			gonggao = json.decode(lualib:IO_GetCustomVarStr("shuangdanqiangyuanbao_gonggao")) --取得双蛋欢乐送夺奖公告table
		end
		local player_name = lualib:KeyName(player)
		table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).." #COLORCOLOR_GREENG#"..player_name.."#COLOREND#抢夺了5000元宝大奖！")
		lualib:SysMsg_SendBroadcastMsg(player_name.."通过双蛋欢乐送活动抢夺到了5000元宝大奖！点击右上角“双蛋欢乐送”图标即可抢夺！", "系统通知")
		lualib:IO_SetCustomVarStr("shuangdanqiangyuanbao_gonggao",json.encode(gonggao))
		lualib:IO_SetCustomVarInt("shengyudajiang", lualib:IO_GetCustomVarInt("shengyudajiang")-1) --减少奖品数量
		return "恭喜你！你抢到了5000元宝大奖！\n\n<@guanbi *01*关闭>"
	else
		return "背包空位不足！请整理以后再来\n\n<@guanbi *01*关闭>"
	end
end

------------------------抢夺名单----------------------------
function qiangduomingdan(player)
	local msg = "抢夺5000元宝大奖成功的玩家名单如下：\n\n"
	local gonggao = {}
	if lualib:IO_GetCustomVarStr("shuangdanqiangyuanbao_gonggao") ~= "" then
		gonggao = json.decode(lualib:IO_GetCustomVarStr("shuangdanqiangyuanbao_gonggao")) --取得抢夺公告table
	end
	
	for i=1,50 do
		if gonggao[i] ~= nil then
			msg = msg .. gonggao[i] .."\n"
		else
			break
		end
	end
	
	msg = msg .."\n<@guanbi *01*关闭>"
	return msg
end