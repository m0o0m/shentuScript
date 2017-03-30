local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/ScriptPackage")
require("form/新开服活动")
function buy(player,index)
	local index_num = tonumber(index)
	local chip = lualib:GetInt(player,"hunzhu_chip")
	if index_num == 1 then 
		local str = "魂珠碎片小"
		if not lualib:Player_IsIngotEnough(player, 200, false) then
			--lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
			lualib:ShowFormWithContent(player,"脚本表单","ShenLu_buy4.msgbox()")
			return ""
		else
			if not lualib:Player_SubIngot(player, 200, false, "快捷购买成就", player) then
				return "扣除元宝失败"
			else
				chip = chip + 1
				if lualib:SetInt(player,"hunzhu_chip",chip) == false  then
				   return "灵珠碎片(小)使用失败"
				else
					lualib:SysTipsMsg(player,"狂暴之灵增加1")
				end
				--********************************--
				local indexx = lualib:GetDBNum("consumeTerm")
				local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 200
				RecordTop10ConsumeInfo(player,totalYb)
				--********************************--
			end
		end
	elseif index_num == 2 then 
		local str = "魂珠碎片中"
		if not lualib:Player_IsIngotEnough(player, 1000, false) then
			lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
			lualib:ShowFormWithContent(player,"脚本表单","ShenLu_buy4.msgbox()")
			return ""
		else
			if not lualib:Player_SubIngot(player, 1000, false, "快捷购买成就", player) then
				return "扣除元宝失败！" 
			else
				chip = chip + 20
				if not lualib:SetInt(player,"hunzhu_chip",chip) then
					  return "灵珠碎片（中）使用失败"
				else
					lualib:SysTipsMsg(player,"狂暴之灵增加20")
				end
				--********************************--
				local indexx = lualib:GetDBNum("consumeTerm")
				local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 1000
				RecordTop10ConsumeInfo(player,totalYb)
				--********************************--
			end
		end
	elseif index_num == 3 then 
		lualib:SysPromptMsg(player, "RecordTop10ConsumeInfo-----------57")
		local str = "魂珠碎片大"
		if not lualib:Player_IsIngotEnough(player, 9888, false) then
			lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
			lualib:ShowFormWithContent(player,"脚本表单","ShenLu_buy4.msgbox()")
			return ""
		else
			if not lualib:Player_SubIngot(player, 9888, false, "快捷购买成就", player) then
				return "扣除元宝失败！" 
			else
				chip = chip + 200
				if not lualib:SetInt(player,"hunzhu_chip",chip) then
					  return "灵珠碎片（大）使用失败"
				else
					lualib:SysTipsMsg(player,"狂暴之灵增加200")
				end
				lualib:SysPromptMsg(player, "RecordTop10ConsumeInfo-----------73")
				--********************************--
				local indexx = lualib:GetDBNum("consumeTerm")
				local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 9888
				RecordTop10ConsumeInfo(player,totalYb)
				--********************************--
			end
		end
	end
	AddKaiFuMagicOnHunZhuLevelUp(player)
	lualib:ShowFormWithContent(player,"脚本表单","ShenLu_buy4.updata();FurnaceWnd.chipupdata("..chip..")")
	lualib:SysPromptMsg(player, "购买并使用成功！！ ")
	
	--新手引导部分
	local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
	local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
	local count = 0
	local varRequireTb = {
						["xuefu_chip"]= {999999999,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,999999999},
						["hudun_chip"]= {999999999,100,200,350,550,800,1100,1450,1850,2300,999999999},
						["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,999999999},
						["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,999999999},
					}
	for i = 1, 4 do
		if lualib:GetInt(player, varTb[i]) >= varRequireTb[varTb[i]][lualib:GetInt(player, equipLvTb[i])+1] then
			count = count + 1
		end
		if i == 4 and count > 0 then 
			lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.SlNum("..count..")")
		end
	end
	
	
	local showTb,flag = Levelup_able_Num(player)
	if flag > 0 then
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.ShowLevelupPrompt("..serialize(showTb)..")")
	end
	return ""
end

function Levelup_able_Num(player)  --可升级数量
	local tb = {0,0,0,0}
	local count = 0
	local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
	local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
	local varRequireTb = {
						["xuefu_chip"]= {999999999,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,99999999},
						["hudun_chip"]= {999999999,100,200,350,550,800,1100,1450,1850,2300,99999999},
						["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,99999999},
						["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,99999999},
					}
	for i = 1, 4 do
		if lualib:GetInt(player, varTb[i]) >= varRequireTb[varTb[i]][lualib:GetInt(player, equipLvTb[i])+1] then
			tb[i] = 1
			count = count + 1
		end
	end
	return tb, count
end