local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/新开服活动")


--神炉材料

--血符
--护盾
--魂珠
--宝石

chip_tb = 
{
	["宝石结晶小"] = 1,
	["宝石结晶中"] = 40 ,
	["宝石结晶大"] = 400,
	["护盾碎片小"] = 1,
	["护盾碎片中"] = 20,
	["护盾碎片大"] = 200,
	["魂珠碎片小"] = 1,
	["魂珠碎片中"] = 20,
	["魂珠碎片大"] = 200,
	["血符碎片小"] = 20,
	["血符碎片中"] = 40,
	["血符碎片大"] = 400,

	["宝石结晶巨"] = 4000,
	["护盾碎片巨"] = 2000,
	["魂珠碎片巨"] = 2000,
	["血符碎片巨"] = 4000,

}

name_tb = 
{ 
	["血符"] = {"xuefu_chip","护符印记",1},
	["护盾"] = {"hudun_chip","盾牌残片",2},
	["宝石"] = {"baoshi_chip","宝珠碎片",3},
	["魂珠"] = {"hunzhu_chip","狂暴之灵",4},
}

function main(player,item)
	local keyname = lualib:KeyName(item)
	local kind = ""
	if chip_tb[keyname] then
		kind = string.sub(keyname,0,4)
		if name_tb[kind] then
			local chips = lualib:GetInt(player,name_tb[kind][1])
			local amount = lualib:Item_GetAmount(player, item)
			
			local chips_next = chips + (chip_tb[keyname] * amount)
			lualib:SetInt(player, name_tb[kind][1], chips_next)
			lualib:SysCenterMsg(0,"成功获得<"..name_tb[kind][2]..">"..chip_tb[keyname] * amount.."点,当前共有"..lualib:GetInt(player, name_tb[kind][1]), player)
			lualib:Item_Destroy(player, item, "碎片", "碎片")
			if kind == "宝石" then   --开服活动添加圆点特效
				AddKaiFuMagicOnBaoShiLevelUp(player)
			elseif kind == "魂珠" then 
				AddKaiFuMagicOnHunZhuLevelUp(player)
			end	
			
			local index = name_tb[kind][3]
			local showTb = Levelup_able_Num(player)
			
			local str = [[
						local handle = GetWindow(nil,"FurnaceWnd")
						if handle ~= 0 then
							for i = 1, 4 do 
								local btnhandle = GetWindow(FurnaceWnd.WndHandle,"button"..i)
								if btnhandle ~= 0 then 
									local Is_true = ButtonGetIsActivePageBtn(btnhandle)
									if Is_true then 	
										if ]] .. index .. [[== i then
											FurnaceWnd.chipupdata(]].. chips_next ..[[)
											FurnaceWnd.ShowLevelupPrompt(]]..serialize(showTb)..[[)
										end
									end
								end
							end
						end	
						]]
			lualib:ShowFormWithContent(player,"脚本表单", str)
			--[[
			local index = lualib:GetInt(player,"isopentheslwnd")
			if index == name_tb[kind][3] then 
				lualib:ShowFormWithContent(player,"脚本表单","ShenLuWnd.chipupdata("..lualib:GetInt(player,name_tb[kind][1])..")" )
			end
			--]]
		end
	end
	local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
	local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
	local count = 0
	local varRequireTb = {
						["xuefu_chip"]= {200,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,99999999},
						["hudun_chip"]= {100,100,200,350,550,800,1100,1450,1850,2300,99999999},
						["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,99999999},
						["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,99999999},
					}
	for i = 1, 4 do
		local chipName = varTb[i]
		local Level = lualib:GetInt(player, equipLvTb[i])
		if lualib:GetInt(player, chipName ) >= varRequireTb[varTb[i]][Level+1] then
			count = count + 1
		end
	end
	--lualib:SysPromptMsg(player, ""..count)
	if count > 0 then
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.SlNum("..count..")")
	end
	
	return true
end

function Levelup_able_Num(player)  --可升级数量
	local tb = {0,0,0,0}
	local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
	local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
	local varRequireTb = {
						["xuefu_chip"]= {200,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,99999999},
						["hudun_chip"]= {100,100,200,350,550,800,1100,1450,1850,2300,99999999},
						["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,99999999},
						["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,99999999},
					}
	for i = 1, 4 do
		if lualib:GetInt(player, varTb[i]) >= varRequireTb[varTb[i]][lualib:GetInt(player, equipLvTb[i])+1] then
			tb[i] = 1
		end
	end
	return tb
end