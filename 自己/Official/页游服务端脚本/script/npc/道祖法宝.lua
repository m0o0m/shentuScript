local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local cangku_rongliang = 12 --法宝仓库大小

--界面上显示出来的奖励
local item_xianshi = {
                    "混沌钟(神)", 
                    "太极图(神)", 
                    "盘古幡(神)", 
                    "玲珑塔(神)", 
                    "混天绫(神)", 
					
                    "混沌钟(绝)", 
                    "太极图(绝)", 
                    "盘古幡(绝)", 
                    "玲珑塔(绝)", 
                    "混天绫(绝)", 
					
                    "混沌钟(珍)", 
                    "太极图(珍)", 
                    "盘古幡(珍)", 
                    "玲珑塔(珍)", 
                    "混天绫(珍)", 
					
                    "混沌钟(极)", 
                    "太极图(极)", 
                    "盘古幡(极)", 
                    "玲珑塔(极)", 
                    "混天绫(极)", 
					
                    "混沌钟", 
                    "太极图", 
                    "盘古幡", 
                    "玲珑塔", 
                    "混天绫", 

                    "如来神丹", 
                    "法宝残渣", 
                    }

--实际能获得的奖励
local item1 = {
	 --物品索引名，给与数量，占随机比重，是否显示在法宝公告中（1为显示，0不显示），物品图标编号
        {"法宝残渣", 1, 700, 0, 1990135002}, 
        {"混沌钟", 1, 54, 0, 1990120101}, 
        {"太极图", 1, 54, 0, 1990120077}, 
        {"盘古幡", 1, 54, 0, 1990120100}, 
        {"玲珑塔", 1, 54, 0, 1990120085}, 
        {"混天绫", 1, 54, 0, 1990120098}, 

        {"混沌钟(极)", 1, 27, 0, 1990120101}, 
        {"太极图(极)", 1, 27, 0, 1990120077}, 
        {"盘古幡(极)", 1, 27, 0, 1990120100}, 
        {"玲珑塔(极)", 1, 27, 0, 1990120085}, 
        {"混天绫(极)", 1, 27, 0, 1990120098}, 

        {"混沌钟(珍)", 1, 9, 1, 1990120101}, 
        {"太极图(珍)", 1, 9, 1, 1990120077}, 
        {"盘古幡(珍)", 1, 9, 1, 1990120100}, 
        {"玲珑塔(珍)", 1, 9, 1, 1990120085}, 
        {"混天绫(珍)", 1, 9, 1, 1990120098}, 

        {"混沌钟(绝)", 1, 3, 1, 1990120101}, 
        {"太极图(绝)", 1, 3, 1, 1990120077}, 
        {"盘古幡(绝)", 1, 3, 1, 1990120100}, 
        {"玲珑塔(绝)", 1, 3, 1, 1990120085}, 
        {"混天绫(绝)", 1, 3, 1, 1990120098}, 

        {"混沌钟(神)", 1, 1, 1, 1990120101}, 
        {"太极图(神)", 1, 1, 1, 1990120077}, 
        {"盘古幡(神)", 1, 1, 1, 1990120100}, 
        {"玲珑塔(神)", 1, 1, 1, 1990120085}, 
        {"混天绫(神)", 1, 1, 1, 1990120098}, 

        {"力盾神丹", 1, 3, 1, 1990120077}, 
        {"法盾神丹", 1, 3, 1, 1990120100}, 
        {"如来神丹", 1, 1, 1, 1990120098}, 

}
local item2 = {
	 --物品索引名，给与数量，占随机比重，是否显示在法宝公告中（1为显示，0不显示），物品图标编号
        {"法宝残渣", 1, 600, 0, 1990135002}, 
        {"混沌钟", 1, 54, 0, 1990120101}, 
        {"太极图", 1, 54, 0, 1990120077}, 
        {"盘古幡", 1, 54, 0, 1990120100}, 
        {"玲珑塔", 1, 54, 0, 1990120085}, 
        {"混天绫", 1, 54, 0, 1990120098}, 

        {"混沌钟(极)", 1, 27, 0, 1990120101}, 
        {"太极图(极)", 1, 27, 0, 1990120077}, 
        {"盘古幡(极)", 1, 27, 0, 1990120100}, 
        {"玲珑塔(极)", 1, 27, 0, 1990120085}, 
        {"混天绫(极)", 1, 27, 0, 1990120098}, 

        {"混沌钟(珍)", 1, 9, 1, 1990120101}, 
        {"太极图(珍)", 1, 9, 1, 1990120077}, 
        {"盘古幡(珍)", 1, 9, 1, 1990120100}, 
        {"玲珑塔(珍)", 1, 9, 1, 1990120085}, 
        {"混天绫(珍)", 1, 9, 1, 1990120098}, 

        {"混沌钟(绝)", 1, 3, 1, 1990120101}, 
        {"太极图(绝)", 1, 3, 1, 1990120077}, 
        {"盘古幡(绝)", 1, 3, 1, 1990120100}, 
        {"玲珑塔(绝)", 1, 3, 1, 1990120085}, 
        {"混天绫(绝)", 1, 3, 1, 1990120098}, 

        {"混沌钟(神)", 1, 1, 1, 1990120101}, 
        {"太极图(神)", 1, 1, 1, 1990120077}, 
        {"盘古幡(神)", 1, 1, 1, 1990120100}, 
        {"玲珑塔(神)", 1, 1, 1, 1990120085}, 
        {"混天绫(神)", 1, 1, 1, 1990120098}, 

        {"力盾神丹", 1, 3, 1, 1990120077}, 
        {"法盾神丹", 1, 3, 1, 1990120100}, 
        {"如来神丹", 1, 1, 1, 1990120098}, 
}

local item3 = {
	 --物品索引名，给与数量，占随机比重，是否显示在法宝公告中（1为显示，0不显示），物品图标编号
        {"法宝残渣", 1, 500, 0, 1990135002}, 
        {"混沌钟", 1, 27, 0, 1990120101}, 
        {"太极图", 1, 27, 0, 1990120077}, 
        {"盘古幡", 1, 27, 0, 1990120100}, 
        {"玲珑塔", 1, 27, 0, 1990120085}, 
        {"混天绫", 1, 27, 0, 1990120098}, 

        {"混沌钟(极)", 1, 54, 0, 1990120101}, 
        {"太极图(极)", 1, 54, 0, 1990120077}, 
        {"盘古幡(极)", 1, 54, 0, 1990120100}, 
        {"玲珑塔(极)", 1, 54, 0, 1990120085}, 
        {"混天绫(极)", 1, 54, 0, 1990120098}, 

        {"混沌钟(珍)", 1, 9, 1, 1990120101}, 
        {"太极图(珍)", 1, 9, 1, 1990120077}, 
        {"盘古幡(珍)", 1, 9, 1, 1990120100}, 
        {"玲珑塔(珍)", 1, 9, 1, 1990120085}, 
        {"混天绫(珍)", 1, 9, 1, 1990120098}, 

        {"混沌钟(绝)", 1, 3, 1, 1990120101}, 
        {"太极图(绝)", 1, 3, 1, 1990120077}, 
        {"盘古幡(绝)", 1, 3, 1, 1990120100}, 
        {"玲珑塔(绝)", 1, 3, 1, 1990120085}, 
        {"混天绫(绝)", 1, 3, 1, 1990120098}, 

        {"混沌钟(神)", 1, 1, 1, 1990120101}, 
        {"太极图(神)", 1, 1, 1, 1990120077}, 
        {"盘古幡(神)", 1, 1, 1, 1990120100}, 
        {"玲珑塔(神)", 1, 1, 1, 1990120085}, 
        {"混天绫(神)", 1, 1, 1, 1990120098}, 

        {"力盾神丹", 1, 3, 1, 1990120077}, 
        {"法盾神丹", 1, 3, 1, 1990120100}, 
        {"如来神丹", 1, 1, 1, 1990120098}, 
}

local item4 = {
	 --物品索引名，给与数量，占随机比重，是否显示在法宝公告中（1为显示，0不显示），物品图标编号
        {"法宝残渣", 1, 400, 0, 1990135002}, 
        {"混沌钟", 1, 24, 1, 1990120101}, 
        {"太极图", 1, 24, 1, 1990120077}, 
        {"盘古幡", 1, 24, 1, 1990120100}, 
        {"玲珑塔", 1, 24, 1, 1990120085}, 
        {"混天绫", 1, 24, 1, 1990120098}, 

        {"混沌钟(极)", 1, 24, 1, 1990120101}, 
        {"太极图(极)", 1, 24, 1, 1990120077}, 
        {"盘古幡(极)", 1, 24, 1, 1990120100}, 
        {"玲珑塔(极)", 1, 24, 1, 1990120085}, 
        {"混天绫(极)", 1, 24, 1, 1990120098}, 

        {"混沌钟(珍)", 1, 27, 1, 1990120101}, 
        {"太极图(珍)", 1, 27, 1, 1990120077}, 
        {"盘古幡(珍)", 1, 27, 1, 1990120100}, 
        {"玲珑塔(珍)", 1, 27, 1, 1990120085}, 
        {"混天绫(珍)", 1, 27, 1, 1990120098}, 

        {"混沌钟(绝)", 1, 10, 1, 1990120101}, 
        {"太极图(绝)", 1, 10, 1, 1990120077}, 
        {"盘古幡(绝)", 1, 10, 1, 1990120100}, 
        {"玲珑塔(绝)", 1, 10, 1, 1990120085}, 
        {"混天绫(绝)", 1, 10, 1, 1990120098}, 

        {"混沌钟(神)", 1, 9, 1, 1990120101}, 
        {"太极图(神)", 1, 9, 1, 1990120077}, 
        {"盘古幡(神)", 1, 9, 1, 1990120100}, 
        {"玲珑塔(神)", 1, 9, 1, 1990120085}, 
        {"混天绫(神)", 1, 9, 1, 1990120098}, 

        {"力盾神丹", 1, 3, 1, 1990120077}, 
        {"法盾神丹", 1, 3, 1, 1990120100}, 
        {"如来神丹", 1, 1, 1, 1990120098}, 
}


local item5 = {
	 --物品索引名，给与数量，占随机比重，是否显示在法宝公告中（1为显示，0不显示），物品图标编号
        {"法宝残渣", 1, 300, 0, 1990135002}, 
        {"混沌钟", 1, 18, 1, 1990120101}, 
        {"太极图", 1, 18, 1, 1990120077}, 
        {"盘古幡", 1, 18, 1, 1990120100}, 
        {"玲珑塔", 1, 18, 1, 1990120085}, 
        {"混天绫", 1, 18, 1, 1990120098}, 

        {"混沌钟(极)", 1, 18, 1, 1990120101}, 
        {"太极图(极)", 1, 18, 1, 1990120077}, 
        {"盘古幡(极)", 1, 18, 1, 1990120100}, 
        {"玲珑塔(极)", 1, 18, 1, 1990120085}, 
        {"混天绫(极)", 1, 18, 1, 1990120098}, 

        {"混沌钟(珍)", 1, 24, 1, 1990120101}, 
        {"太极图(珍)", 1, 24, 1, 1990120077}, 
        {"盘古幡(珍)", 1, 24, 1, 1990120100}, 
        {"玲珑塔(珍)", 1, 24, 1, 1990120085}, 
        {"混天绫(珍)", 1, 24, 1, 1990120098}, 

        {"混沌钟(绝)", 1, 18, 1, 1990120101}, 
        {"太极图(绝)", 1, 18, 1, 1990120077}, 
        {"盘古幡(绝)", 1, 18, 1, 1990120100}, 
        {"玲珑塔(绝)", 1, 18, 1, 1990120085}, 
        {"混天绫(绝)", 1, 18, 1, 1990120098}, 

        {"混沌钟(神)", 1, 16, 1, 1990120101}, 
        {"太极图(神)", 1, 16, 1, 1990120077}, 
        {"盘古幡(神)", 1, 16, 1, 1990120100}, 
        {"玲珑塔(神)", 1, 16, 1, 1990120085}, 
        {"混天绫(神)", 1, 16, 1, 1990120098}, 

        {"力盾神丹", 1, 3, 1, 1990120077}, 
        {"法盾神丹", 1, 3, 1, 1990120100}, 
        {"如来神丹", 1, 1, 1, 1990120098}, 
}

function main(npc, player)

	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --取得法宝仓库table
	end
	
	local msg = "#POS<X:380>##POS<Y:50>#你的金币：#COLORCOLOR_BLUE#"..lualib:GetGold(player).."#COLOREND#  <@web *01*快速充值>\n"

	msg = msg .. "#POS<X:380>##POS<Y:80>##IMAGE<ID:1902700031>#<@fabaocangku#1 *01*查看法宝仓库> 容量:"..#cangku.."/"..cangku_rongliang
		
	msg = msg .. "#POS<X:0>##POS<Y:0>#玄之又玄，众妙之门。老道自天地之始，以万物制得万千法宝。今日我给你机会从我口袋里拿一样法宝。你不入玄门，需用金币垫手方可探囊取物。且凡人无力掌控法宝，#COLORCOLOR_RED#法宝不可修理#COLOREND#"
	msg = msg .. "#POS<X:0>##POS<Y:165>##IMAGE1902700037#<@tanqufabao1#1#1 *01*2万金币探取>/<@tanqufabao1#1#5 *01*探5次>    #IMAGE1902700037#<@tanqufabao2#1#1 *01*4万金币探取>/<@tanqufabao2#1#5 *01*探5次>    #IMAGE1902700037#<@tanqufabao3#1#1 *01*8万金币探取>/<@tanqufabao3#1#5 *01*探5次>    #IMAGE1902700037#<@tanqufabao4#1#1 *01*16万金币探取>"	

	--显示出法宝公告
--[[	msg = msg .. "#COLORCOLOR_BLUE#【法宝公告】#COLOREND#\n"
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --取得法宝公告table
	end
	for k,v in pairs(gonggao) do
		msg = msg .. v .."\n"
	end]]

	--法宝获得显示
	if huode ~= nil then
		msg = msg .. "#COLORCOLOR_ORANGE#【法宝获得】#COLOREND#  "
		for k,v in pairs(huode) do
			msg = msg .. "#COLORCOLOR_GREENG#"..v.."#COLOREND#  "
		end
		lualib:RunClientScript(player, "ItemEffect", "choujiang", 0 .."#".. 200)
	end
	
	local str = [[<form default_parent="NpcTalk,Container">]]
	local x = 0
	local y = 40
	for i=1,#item_xianshi do
		str = str .. "<itemctrl id="..i.." x="..x.." y="..y.." w=35 h=35 init_item="..item_xianshi[i].." count=1 is_bound=false use_back=true />"
		x = x + 40
		if i == 9 then
			x = 0
			y = 80
			str = str .. "\n"
		elseif i == 18 then
			x = 0
			y = 120
			str = str .. "\n"
		elseif i == 27 then
			str = str .. "\n"
		end
	end
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:NPCTalkDetail(player, msg, 600, 220)
	return ""
end

function web(player)
    local name = lualib:Player_GetStrProp(player, lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local grpid = lualib:GetGroupId()
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. grpid
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

--------------------探找法宝1----------------------------
function tanqufabao1(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 20000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"你的金币不足,无法寻宝！")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --取得法宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --取得法宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --取得法宝仓库图标table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --取得法宝公告table
	end

	local huode = {} --创建存放本次获得奖励信息的table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"法宝仓库空位不足，请取出仓库中的道具或者减少探取法宝次数再试。#BUTTON0#关闭窗口#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "寻宝图", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "寻宝图", 1, 2, "道祖法宝", player) then --删道具
				return "扣除道具失败"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"道祖法宝",player) == false then --扣金币
				lualib:SysMsg_SendWarnMsg(player,"扣除金币失败！")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --随机总值
	local suiji = 0 --随机值
	
	--首先获得随机总值
	for k,v in pairs(item1) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--根据法宝次数循环多次
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --获得随机值
		local suiji_1 = 0
		--开始遍历随机值对应哪个物品
		for k,v in pairs(item1) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --给与物品到法宝仓库
				cangku_number[#cangku_number+1] = v[2] --记录物品数量到法宝仓库
				cangku_icon[#cangku_icon+1] = v[5] --记录物品图标到法宝仓库
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#从鸿钧道祖处取得：#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --记录到法宝公告中
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --记录本次法宝显示信息
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --将法宝仓库table保存字符串变量
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --将公告table保存字符串变量
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"【"..player_name.."】探了 "..cishu.." 次鸿钧道祖的法宝，获得一件珍惜法宝。","") --屏幕中间提示
	fabao(player,huode) --返回到函数fabao显示出本次法宝获得物品信息
	return ""
end

--------------------探找法宝2----------------------------
function tanqufabao2(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 40000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"你的金币不足,无法寻宝！")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --取得法宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --取得法宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --取得法宝仓库图标table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --取得法宝公告table
	end

	local huode = {} --创建存放本次获得奖励信息的table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"法宝仓库空位不足，请取出仓库中的道具或者减少探取法宝次数再试。#BUTTON0#关闭窗口#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "寻宝图", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "寻宝图", 1, 2, "道祖法宝", player) then --删道具
				return "扣除道具失败"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"道祖法宝",player) == false then --扣金币
				lualib:SysMsg_SendWarnMsg(player,"扣除金币失败！")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --随机总值
	local suiji = 0 --随机值
	
	--首先获得随机总值
	for k,v in pairs(item2) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--根据法宝次数循环多次
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --获得随机值
		local suiji_1 = 0
		--开始遍历随机值对应哪个物品
		for k,v in pairs(item2) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --给与物品到法宝仓库
				cangku_number[#cangku_number+1] = v[2] --记录物品数量到法宝仓库
				cangku_icon[#cangku_icon+1] = v[5] --记录物品图标到法宝仓库
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#从鸿钧道祖处取得：#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --记录到法宝公告中
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --记录本次法宝显示信息
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --将法宝仓库table保存字符串变量
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --将公告table保存字符串变量
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"【"..player_name.."】探了 "..cishu.." 次鸿钧道祖的法宝，获得一件珍惜法宝。","") --屏幕中间提示
	fabao(player,huode) --返回到函数fabao显示出本次法宝获得物品信息
	return ""
end



--------------------探找法宝3----------------------------
function tanqufabao3(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 80000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"你的金币不足,无法寻宝！")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --取得法宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --取得法宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --取得法宝仓库图标table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --取得法宝公告table
	end

	local huode = {} --创建存放本次获得奖励信息的table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"法宝仓库空位不足，请取出仓库中的道具或者减少探取法宝次数再试。#BUTTON0#关闭窗口#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "寻宝图", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "寻宝图", 1, 2, "道祖法宝", player) then --删道具
				return "扣除道具失败"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"道祖法宝",player) == false then --扣金币
				lualib:SysMsg_SendWarnMsg(player,"扣除金币失败！")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --随机总值
	local suiji = 0 --随机值
	
	--首先获得随机总值
	for k,v in pairs(item3) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--根据法宝次数循环多次
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --获得随机值
		local suiji_1 = 0
		--开始遍历随机值对应哪个物品
		for k,v in pairs(item3) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --给与物品到法宝仓库
				cangku_number[#cangku_number+1] = v[2] --记录物品数量到法宝仓库
				cangku_icon[#cangku_icon+1] = v[5] --记录物品图标到法宝仓库
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#从鸿钧道祖处取得：#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --记录到法宝公告中
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --记录本次法宝显示信息
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --将法宝仓库table保存字符串变量
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --将公告table保存字符串变量
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"【"..player_name.."】探了 "..cishu.." 次鸿钧道祖的法宝，获得一件珍惜法宝。","") --屏幕中间提示
	fabao(player,huode) --返回到函数fabao显示出本次法宝获得物品信息
	return ""
end


--------------------探找法宝4----------------------------
function tanqufabao4(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 160000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"你的金币不足,无法寻宝！")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --取得法宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --取得法宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --取得法宝仓库图标table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --取得法宝公告table
	end

	local huode = {} --创建存放本次获得奖励信息的table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"法宝仓库空位不足，请取出仓库中的道具或者减少探取法宝次数再试。#BUTTON0#关闭窗口#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "寻宝图", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "寻宝图", 1, 2, "道祖法宝", player) then --删道具
				return "扣除道具失败"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"道祖法宝",player) == false then --扣金币
				lualib:SysMsg_SendWarnMsg(player,"扣除金币失败！")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --随机总值
	local suiji = 0 --随机值
	
	--首先获得随机总值
	for k,v in pairs(item4) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--根据法宝次数循环多次
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --获得随机值
		local suiji_1 = 0
		--开始遍历随机值对应哪个物品
		for k,v in pairs(item4) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --给与物品到法宝仓库
				cangku_number[#cangku_number+1] = v[2] --记录物品数量到法宝仓库
				cangku_icon[#cangku_icon+1] = v[5] --记录物品图标到法宝仓库
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#从鸿钧道祖处取得：#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --记录到法宝公告中
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --记录本次法宝显示信息
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --将法宝仓库table保存字符串变量
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --将公告table保存字符串变量
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"【"..player_name.."】探了 "..cishu.." 次鸿钧道祖的法宝，获得一件珍惜法宝。","") --屏幕中间提示
	fabao(player,huode) --返回到函数fabao显示出本次法宝获得物品信息
	return ""
end



--------------------探找法宝5----------------------------
function tanqufabao5(player,types,cishu)
	local types = tonumber(types)
	local cishu = tonumber(cishu)
	local jiage = 320000 * cishu
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"你的金币不足,无法寻宝！")
				fabao(player)
				return ""
			end


	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --取得法宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --取得法宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --取得法宝仓库图标table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","fabao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","fabao_gonggao")) --取得法宝公告table
	end

	local huode = {} --创建存放本次获得奖励信息的table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"法宝仓库空位不足，请取出仓库中的道具或者减少探取法宝次数再试。#BUTTON0#关闭窗口#BUTTONEND#", 100, "guanbi", "")
		fabao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "寻宝图", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "寻宝图", 1, 2, "道祖法宝", player) then --删道具
				return "扣除道具失败"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"道祖法宝",player) == false then --扣金币
				lualib:SysMsg_SendWarnMsg(player,"扣除金币失败！")
				return ""
			end
		end
	end
	
	local suiji_zongzhi = 0  --随机总值
	local suiji = 0 --随机值
	
	--首先获得随机总值
	for k,v in pairs(item5) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--根据法宝次数循环多次
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --获得随机值
		local suiji_1 = 0
		--开始遍历随机值对应哪个物品
		for k,v in pairs(item5) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --给与物品到法宝仓库
				cangku_number[#cangku_number+1] = v[2] --记录物品数量到法宝仓库
				cangku_icon[#cangku_icon+1] = v[5] --记录物品图标到法宝仓库
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#从鸿钧道祖处取得：#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --记录到法宝公告中
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --记录本次法宝显示信息
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --将法宝仓库table保存字符串变量
	lualib:SetStr("0","fabao_gonggao",json.encode(gonggao)) --将公告table保存字符串变量
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"【"..player_name.."】探了 "..cishu.." 次鸿钧道祖的法宝，获得一件珍惜法宝。","") --屏幕中间提示
	fabao(player,huode) --返回到函数fabao显示出本次法宝获得物品信息
	return ""
end



function chongzhiqueren(id,player,xuanzhe)
	if xuanzhe == 0 then
		web(player)
	end
end

function guanbi()
	return ""
end

--------------------------法宝仓库-------------------------------
function fabaocangku(player,qizhiweizhi)
	qizhiweizhi = tonumber(qizhiweizhi)
	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --取得法宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --取得法宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --取得法宝仓库图标table
	end

	if qizhiweizhi < 1 then
		qizhiweizhi = 1
	elseif qizhiweizhi > cangku_rongliang then
		qizhiweizhi = qizhiweizhi - 12
	end
	
	local yeshu = math.modf(qizhiweizhi/12) + 1 --当前页数
	
	--根据仓库容量算出总共页数
	local p1,p2 = math.modf(cangku_rongliang/12)
	if p2 > 0 then
		p1 = p1 + 1
	end
	
	local msg = "#COLORCOLOR_ORANGE#【法宝仓库】#COLOREND# 容量:"..#cangku.."/"..cangku_rongliang.."  #COLORCOLOR_BLUE#<@fabaocangku#"..qizhiweizhi-12 .." *01*【上一页】> "..yeshu.."/"..p1.." <@fabaocangku#"..qizhiweizhi+12 .." *01*【下一页】>#COLOREND#  <@fabaocangku_quanbuquchu#"..qizhiweizhi.." *01*【全部取出】>  <@fabaocangku#"..qizhiweizhi .." *01*【刷新查看仓库】>\n\n"

	if cangku[qizhiweizhi] == nil then
		return msg
	end
	
	--显示仓库物品信息
	local jieshuweizhi = qizhiweizhi+11
	
	if jieshuweizhi > #cangku then
		jieshuweizhi = #cangku
	end

	local p = 0 --记录物品出现为第几个
	local str = [[<form default_parent="NpcTalk,Container">]]
	
	for i=qizhiweizhi,jieshuweizhi do
		p = p + 1
		--显示物品图标
		local yushu = p%4
		local x = 139 --长度间隔
		local y = 50 --高度间隔
		
		if yushu == 0 then
			yushu = 4
		end
		
		y = math.modf((p-1)/4) * y + 30
		if yushu == 1 then
			x = 0
		else
			x = (yushu-1) * x
		end
		msg = msg .. "#POS<X:".. x .. ">##POS<Y:"..y..">#"
		
		str = str .. "<itemctrl id="..i.." x="..x.." y="..y.." w=35 h=35 init_item="..cangku[i].." count="..cangku_number[i].." is_bound=false use_back=true />"
		
		msg = msg .. "#POS<X:".. x+40 .. ">##POS<Y:"..y+20 ..">#<@fabaocangku_quwu#"..i.." *01*取出物品>\n"
		
		--显示名字
		local yushu = p%4
		local x = 139 --长度间隔
		local y = 50 --高度间隔
		if yushu == 0 then
			yushu = 4
		end
		
		y = math.modf((p-1)/4) * y + 30
		
		if yushu == 1 then
			x = 34
		else
			x = (yushu-1) * x + 34
		end
		
		msg = msg .. "#POS<X:".. x .. ">##POS<Y:"..y..">##COLORCOLOR_GREENG#"..cangku[i].."*"..cangku_number[i].."#COLOREND#\n"
	end
	msg = msg .. "\n"
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:SetPanelSize(player, 600, 210)
	return msg
end

-----------------法宝仓库物品全部取出----------------------
function fabaocangku_quanbuquchu(player,weizhi)
	local msg = ""
	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --取得法宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --取得法宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --取得法宝仓库数量table
	end
	
	if #cangku > 0 then
	else
		lualib:SysMsg_SendMsgDlg(player,1,"没有物品可以取出，是否进行法宝获得？#BUTTON0#进行法宝#BUTTONEND##BUTTON0#关闭窗口#BUTTONEND#", 100, "fabaocangku_quanbuquchu1", "")
		return ""
	end

	local qizhiweizhi =math.modf((weizhi-1)/12) * 12 + 1
	if qizhiweizhi < 1 or qizhiweizhi > cangku_rongliang then
		qizhiweizhi = 1
	end
	
	local shuliang = 0
	for k,v in pairs(cangku_number) do
		shuliang = shuliang + v
	end
	
	if lualib:Player_GetBagFree(player) < shuliang then
		return "包裹空位不足"..shuliang.."格！请整理以后再来！\n\n<@fabaocangku#"..qizhiweizhi.." *01*返回>\n"
	end
	
	for k,v in pairs(cangku) do
		lualib:AddItem(player,v,cangku_number[k],false,"法宝取物品", player) --给物品
		lualib:SysMsg_SendWarnMsg(player,"从法宝仓库取出："..v.."*"..cangku_number[k])
		cangku[k] = nil
		cangku_number[k] = nil
		cangku_icon[k] = nil
	end
	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --将法宝仓库table保存字符串变量
	fabaocangku(player,1)
	lualib:SetPanelSize(player, 600, 210)
	return msg
end

-----------------提示是否进行法宝----------------------
function fabaocangku_quanbuquchu1(id,player,xuanzhe)

	if xuanzhe == 0 then
		fabao(player)
	end
	return ""
end

-----------------法宝仓库取物----------------------
function fabaocangku_quwu(player,weizhi)
	local msg = ""
	weizhi = tonumber(weizhi)
	local cangku = {}
	if lualib:GetStr(player,"fabao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"fabao_cangku")) --取得法宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"fabao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"fabao_cangku_number")) --取得法宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"fabao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"fabao_cangku_icon")) --取得法宝仓库图标table
	end
	
	local qizhiweizhi =math.modf((weizhi-1)/12) * 12 + 1
	
	if qizhiweizhi < 1 or qizhiweizhi > cangku_rongliang then
		qizhiweizhi = 1
	end

	if lualib:Player_GetBagFree(player) < cangku_number[weizhi] then
		return "包裹空位不足"..cangku_number[weizhi].."格！请整理以后再来！\n\n<@fabaocangku#"..qizhiweizhi.." *01*返回>\n"
	end
	
	lualib:AddItem(player,cangku[weizhi],cangku_number[weizhi],false,"法宝取物品", player) --给物品
	lualib:SysMsg_SendWarnMsg(player,"从法宝仓库取出："..cangku[weizhi].."*"..cangku_number[weizhi])
	table.remove(cangku,weizhi)
	table.remove(cangku_number,weizhi)
	table.remove(cangku_icon,weizhi)
	lualib:SetStr(player,"fabao_cangku",json.encode(cangku)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_number",json.encode(cangku_number)) --将法宝仓库table保存字符串变量
	lualib:SetStr(player,"fabao_cangku_icon",json.encode(cangku_icon)) --将法宝仓库table保存字符串变量
	lualib:SetPanelSize(player, 600, 210)
	return 	fabaocangku(player,qizhiweizhi)
end