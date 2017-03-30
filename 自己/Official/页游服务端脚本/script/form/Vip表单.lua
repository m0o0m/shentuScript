local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
local data = {
				[1] = 0, --vip等级
				[2] = 0, --充值元宝数
				[3] = 0, --下一等级所需元宝数
				[4] = 0, --成为vip人数
				[5] = 0, --当天是否领取过经验buff
				["item"] = {
					{{"天山雪莲大",1},{"金砖中",1},{"成就令牌",1},{"玛雅卷轴",1},{"转生神殿卷轴",1},{"副本卷轴",1}},
					{{"羽毛",30},{"天山雪莲大",1},{"天佑吊坠",1},{"成就令牌",2},{"玛雅卷轴",2},{"副本卷轴",2}},
					{{"宝石结晶中",5},{"天山雪莲大",1},{"金砖大",2},{"成就令牌",3},{"玛雅卷轴",3},{"副本卷轴",3}},
					{{"宝石结晶中",8},{"天山雪莲大",1},{"金砖大",5},{"成就令牌",4},{"玛雅卷轴",4},{"副本卷轴",4}},
					{{"宝石结晶大",1},{"天山雪莲大",1},{"金砖大",8},{"成就令牌",5},{"玛雅卷轴",4},{"副本卷轴",5}},
					{{"高级BOSS积分精魄",5},{"魂珠碎片中",5},{"金砖大",10},{"高级成就令牌",1},{"玛雅卷轴",6},{"副本卷轴",5}},
					{{"魂珠碎片大",1},{"天山雪莲大",1},{"金砖大",12},{"高级成就令牌",2},{"玛雅卷轴",7},{"副本卷轴",2}},
					{{"超级BOSS积分精魄",1},{"天山雪莲大",1},{"金砖大",14},{"高级成就令牌",3},{"玛雅卷轴",8},{"三倍经验8小时",1}},
					{{"宝石结晶大",1},{"天山雪莲大",1},{"金砖大",16},{"高级成就令牌",4},{"玛雅卷轴",9},{"三倍经验8小时",2}},
					{{"羽毛",99},{"魂珠碎片大",1},{"金砖大",18},{"高级成就令牌",5},{"玛雅卷轴",10},{"三倍经验8小时",2}},	
						
				},
				["buff_img"] = {
					{1806000090,1806000087,1806000093},
					{1806000094,1806000088,1806000098},
					{1806000091,1806000089,1806000096},
					{1806000095,1806000089,1806000097},
					{1806000092,1806000089,1806000098},
					{1806000096,1806000089,1806000094},
					{1806000098,1806000089,1806000095},
					{1806000097,1806000089,1806000096},
					{1806000096,1806000089,1806000097},
					{1806000094,1806000089,1806000098},	
						
				}

}
function main(player)
	local vip_table = {100,10000,50000,100000,200000,500000,800000,1000000,2000000,5000000}
	
	data[1] = lualib:GetVipLevel(player)
	data[2] = lualib:GetTotalBill(player)
	if data[1] ~= 0 then
		data[3] = vip_table[data[1]+1]
	else
		data[3] = vip_table[1]
	end	
	data[4] = lualib:GetDBNum("vip_person")
	data[5] = lualib:GetDayInt(player,"经验buff")
	data[6] = lualib:GetVipLevel(player)
	local table_data = serializeSc(data)
	local rewardStateTb = {}
	local str = tostring(lualib:Player_GetAccountID(player))
	for i = 1, data[1] do
		local str1 = str .. "vipReward".. i
		rewardStateTb[i] = lualib:GetDBNum(str1)
		--lualib:SysPromptMsg(player,"server："..rewardStateTb[i])
	end
	rewardStateTb["length"] = data[1]
	lualib:ShowFormWithContent(player,"脚本表单Sc","VIPWnd.Vip_updata("..table_data..","..serializeSc(rewardStateTb)..");")
	return ""
end

function getExpUP(player)
	if lualib:GetDayInt(player,"经验buff") ~= 0 then
		return ""
	end
	local buff = {"1级VIP经验","2级VIP经验","3级VIP经验","4级VIP经验","5级VIP经验","6级VIP经验","7级VIP经验","8级VIP经验","9级VIP经验","10级VIP经验"}
	local level = lualib:GetVipLevel(player)
	if level == 0 then
		local str = "\"充值任意金额即可成为VIP\""
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.CommonRechage("..str..")")
		return ""
	end
	lualib:AddBuff(player,buff[level],0)

	--lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.delEffectToVIP()")	--删除VIP图标特效
	lualib:ShowFormWithContent(player,"脚本表单Sc","VIPWnd.delEffectToGetEXPbuff();")	--删除VIP界面按钮特效
	lualib:SetDayInt(player,"经验buff",1)
	IfDelBtnEffect(player)
	--lualib:ShowFormWithContent(player,"脚本表单","Vip_updata("..table_data..")")
	main(player)
	return ""
end

function GetVipGift(player, curPage)
	local index = tonumber(curPage)
	local rewardTb = data["item"][index]
	local str = tostring(lualib:Player_GetAccountID(player)).."vipReward"..index
	local l = lualib:GetDBNum(str)
	--lualib:SysPromptMsg(player,"var number :"..l)
	if lualib:GetVipLevel(player) >= index then
		if l == 0 then
			if lualib:Player_GetBagFree(player) < 6 then
				lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要6个格子！")
				return ""
			else
				for i = 1, 6 do
					if lualib:AddItem(player, rewardTb[i][1], rewardTb[i][2], true, "vip礼包", "系统") then
						
					end
				end
				
				if lualib:SetDBNum(str,99) then
					--lualib:SysPromptMsg(player,"set var successfully")
					main(player)
				end
				SendVipGiftFlag(player)
				IfDelBtnEffect(player)
			end
		else
			lualib:SysPromptMsg(player, "您已经领取过该礼包！")
		end
	else
		lualib:SysPromptMsg(player, "您的vip等级不足！")
	end
	return ""
end
function SendVipGiftFlag(player)
	local rewardStateTb = {}
	local vipLevel = lualib:GetVipLevel(player)
	local str = tostring(lualib:Player_GetAccountID(player))
	for i = 1, vipLevel do
		local str1 = str .. "vipReward".. i
		rewardStateTb[i] = lualib:GetDBNum(str1)
	end
	rewardStateTb["length"] = vipLevel
	lualib:ShowFormWithContent(player,"脚本表单Sc","VIPWnd.getRewardFlag("..serialize(rewardStateTb)..");")
end

--是否删除VIP按钮闪烁
function IfDelBtnEffect(player)
	if 0 == lualib:GetDayInt(player,"经验buff") then
		return ""
	else
		local viplevel = lualib:GetVipLevel(player)
		for i = 1, viplevel do
			local str = tostring(lualib:Player_GetAccountID(player)).."vipReward"..i
			if 0 == lualib:GetDBNum(str) then
				return ""
			end
		end
	end
	lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.delEffectToVIP()")	--删除VIP图标特效
end



