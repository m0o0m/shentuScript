local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/�¿����")


--��¯����

--Ѫ��
--����
--����
--��ʯ

chip_tb = 
{
	["��ʯ�ᾧС"] = 1,
	["��ʯ�ᾧ��"] = 40 ,
	["��ʯ�ᾧ��"] = 400,
	["������ƬС"] = 1,
	["������Ƭ��"] = 20,
	["������Ƭ��"] = 200,
	["������ƬС"] = 1,
	["������Ƭ��"] = 20,
	["������Ƭ��"] = 200,
	["Ѫ����ƬС"] = 20,
	["Ѫ����Ƭ��"] = 40,
	["Ѫ����Ƭ��"] = 400,

	["��ʯ�ᾧ��"] = 4000,
	["������Ƭ��"] = 2000,
	["������Ƭ��"] = 2000,
	["Ѫ����Ƭ��"] = 4000,

}

name_tb = 
{ 
	["Ѫ��"] = {"xuefu_chip","����ӡ��",1},
	["����"] = {"hudun_chip","���Ʋ�Ƭ",2},
	["��ʯ"] = {"baoshi_chip","������Ƭ",3},
	["����"] = {"hunzhu_chip","��֮��",4},
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
			lualib:SysCenterMsg(0,"�ɹ����<"..name_tb[kind][2]..">"..chip_tb[keyname] * amount.."��,��ǰ����"..lualib:GetInt(player, name_tb[kind][1]), player)
			lualib:Item_Destroy(player, item, "��Ƭ", "��Ƭ")
			if kind == "��ʯ" then   --��������Բ����Ч
				AddKaiFuMagicOnBaoShiLevelUp(player)
			elseif kind == "����" then 
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
			lualib:ShowFormWithContent(player,"�ű���", str)
			--[[
			local index = lualib:GetInt(player,"isopentheslwnd")
			if index == name_tb[kind][3] then 
				lualib:ShowFormWithContent(player,"�ű���","ShenLuWnd.chipupdata("..lualib:GetInt(player,name_tb[kind][1])..")" )
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
		lualib:ShowFormWithContent(player,"�ű���","GameMainBar.SlNum("..count..")")
	end
	
	return true
end

function Levelup_able_Num(player)  --����������
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