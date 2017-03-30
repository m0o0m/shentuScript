----行会脚本----
--【初始化】
--【创建行会】
--【基础信息】
--【行会BUFF】
--【行会仓库】
--【红包】
--【日志】

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("system/ScriptPackage")
lualib:AddTrigger("0", lua_trigger_family_ntf, "on_family_ntf")
lualib:AddTrigger("0", lua_trigger_family_member_ntf, "on_family_member_ntf")
lualib:AddTrigger("0", lua_trigger_login, "on_family_login") --进入gs触发, 而不是玩家用户名登录gt
--【初始化】

function on_family_ntf(family_guid, family_name, opt_type, player)
	if opt_type == 1 then
		lualib:Debug("family init")
		lualib:SetInt(family_guid,"familylevel",1)	--init familyLvl
		lualib:SetInt(family_guid,"familywealth",0) 	--init familyWealth
	end
end

function on_family_member_ntf(family_guid, family_name, player_guid, opt_type)
	lualib:Debug("member ntf")
	if opt_type == 2 then
		local playerName = lualib:Name(player_guid)
		lualib:Debug("playerName "..playerName.."to quit")
		lualib:SetInt(player_guid,"contribution",0)	--init familyLvl
		lualib:Debug("contri value = "..tostring(lualib:GetInt(player_guid,"contribution")))
	end
end

function on_family_login(player)
	addFamilyBuff(player)	
end

--【创建行会】
function CreateFamilySelf(player)
	lualib:Debug("to create family")
	if lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "0" and lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "" then
		lualib:SysPromptMsg(player,"你已经有行会了。")
		return ""
	end

	if lualib:Player_GetIntProp(player,  lua_role_level) < 1 then
		lualib:SysPromptMsg(player,"你的等级不够。")
		return ""
	end

	lualib:ShowFormWithContent(player,"脚本表单","luaMsgBox.new(\"创建行会\", 0, 0, 0, 1000)")
	return ""
end

function GetFamilyName(player, family_name)
	lualib:Debug("family create")
	if lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "0" and lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "" then
		return ""
	end

	if lualib:Player_GetIntProp(player,  lua_role_level) < 1 then
		lualib:SysPromptMsg(player,"你的等级不够")
		return ""
	end

    if not lualib:Player_IsIngotEnough(player, 1000, false) then
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
		lualib:SysPromptMsg(player,"你的元宝不足")
        return ""
    end

	if lualib:IsBanString(family_name) then
		lualib:SysPromptMsg(player,"请不要输入敏感词")
    	return ""
	end

	if lualib:HasFamily(family_name) then
		lualib:SysPromptMsg(player,"行会名“" .. family_name .. "”已存在")
		return ""
	end
	
	if lualib:Player_SubIngot(player, 1000, false, "扣元宝：创建行会花费", "系统") then
		local create = lualib:CreateFamily(player, family_name)
		lualib:Debug("create = "..tostring(create))
		lualib:Debug("create = "..tostring(family_name))
		--********************************--
		local indexx = lualib:GetDBNum("consumeTerm")
		local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 1000
		RecordTop10ConsumeInfo(player,totalYb)
		--********************************--
		if create == 0 then
			lualib:ShowFormWithContent(player,"脚本表单","CL:OnFamilyWindow()")
			lualib:SysPromptMsg(player,"你创建了["..family_name.."]行会")
			return ""
		end
	
	else
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
		lualib:SysPromptMsg(player,"你的元宝不足")
		return ""
	end
	
	
	return ""
end

--【基础信息】
function getFamilyInfo(player,family_guid)
	lualib:Debug("get family info")
	local familywealth = lualib:GetInt(family_guid,"familywealth")
	local familylevel = lualib:GetInt(family_guid,"familylevel")
	lualib:ShowFormWithContent(player,"脚本表单","update_wealth("..lualib:GetInt(family_guid,"familywealth")..");")
	lualib:ShowFormWithContent(player,"脚本表单","update_level("..lualib:GetInt(family_guid,"familylevel")..");")
	return ""
end

function updateFamilyLvlTable(player, family_guid_, wndName)
	lualib:Debug("family level")
	local familyLvl, lvl_ =0, {}
	family_guid_ = deserialize(family_guid_)
	for i = 1, #family_guid_ do		
		familyLvl = lualib:GetInt(family_guid_[i],"familylevel")
		table.insert(lvl_, familyLvl)
	end
	
	if wndName == "FamilyWnd_FamilyList" then
		lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_FamilyList_updateFamiyLvl("..serialize(lvl_)..");")
	elseif wndName == "FamilyListWnd" then
		lualib:ShowFormWithContent(player,"脚本表单","FamilyListWnd_updateFamiyLvl("..serialize(lvl_)..");")
	end
	return ""
end

function updatePlayerContribution(player, playerGUID_)
	lualib:Debug("family player contribution value")
	local playerContribution_ = {}
	playerGUID_ = deserialize(playerGUID_)
	for i, v in pairs(playerGUID_) do
		if not lualib:Player_IsOnline(v) then
			--table.insert(playerContribution_, "玩家不在线")
			playerContribution_[i] = lualib:GetInt(v,"contribution")
		else
			--table.insert(playerContribution_, lualib:GetInt(v,"contribution"))
			playerContribution_[i] = lualib:GetInt(v,"contribution")
		end
		
	end
	lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_Member_updatePlayerContribution("..serialize(playerContribution_)..");")
	return ""
end

function upgradeFamilyLevel(player,family_guid)
	lualib:Debug("family level upgrade")
	local familylevel = lualib:GetInt(family_guid,"familylevel")
	local level_max = 6
	local cost_ingot = 100
	if familylevel >= level_max then
		local str = "\"行会等级已达到最高级！\""
		lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_Info.AlertMessage("..str..");")
		--lualib:SysPromptMsg(player,"行会等级已达到最高级")
		return ""
	end
	
	local costWealthTb = {0,500,1000,1500,2000,2500,3000}
	if lualib:GetInt(family_guid,"familywealth") < costWealthTb[familylevel+1] then
		local str = "\"行会财富不足！\""
		lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_Info.AlertMessage("..str..");")
		--lualib:SysPromptMsg(player,"行会财富不足！")
		return ""
	end
	if lualib:SetInt(family_guid,"familywealth",lualib:GetInt(family_guid,"familywealth")-costWealthTb[familylevel+1]) then
	--if lualib:Player_SubIngot(player,cost_ingot,false,"升级行会消耗元宝","行会") then
		familylevel = familylevel + 1
		lualib:SetInt(family_guid,"familylevel",familylevel)
		--------------------updata family buff level----------------------
		local memberList = lualib:GetFamilyMembers(family_guid, true)
		for l = 1, #memberList do
			addFamilyBuff(memberList[l])
		end
		------------------------------------------------------------------
		lualib:ShowFormWithContent(player,"脚本表单","update_level("..familylevel..");update_wealth("..lualib:GetInt(family_guid,"familywealth")..");")
		local str = "\"行会成功升级！\""
		lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_Info.AlertMessage("..str..");")
		--lualib:SysPromptMsg(player,"行会成功升级")
		return ""
--[[	else
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
		lualib:SysPromptMsg(player,"元宝不足行会升级失败")
		return ""--]]
	end

end

function downgradeFamilyLevel(player,family_guid)
	lualib:Debug("family level upgrade")
	local familylevel = lualib:GetInt(family_guid,"familylevel")
	local level_min = 1

	if familylevel <= level_min then
		local str = "\"行会等级已达到最低级！\""
		lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_Info.AlertMessage("..str..");")
		--lualib:SysPromptMsg(player,"行会等级已达到最低级")
		return ""
	end
	

	familylevel = familylevel - 1
	lualib:SetInt(family_guid,"familylevel",familylevel)
	--------------------updata family buff level----------------------
	local memberList = lualib:GetFamilyMembers(family_guid, true)
	for l = 1, #memberList do
		addFamilyBuff(memberList[l])
	end
	------------------------------------------------------------------
	lualib:ShowFormWithContent(player,"脚本表单","update_level("..familylevel..");")
	local str = "\"行会成功降级！\""
	lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_Info.AlertMessage("..str..");")
	--lualib:SysPromptMsg(player,"行会成功降级")

	return ""

end

--【行会BUFF】
function addFamilyBuff(player)
	lualib:Debug("family buff add")
	local familyGUID = lualib:GuildGuid(player) 
	if familyGUID == "" then
		return ""
	end
	local lvl = lualib:GetInt(familyGUID,"familylevel")
	if lvl > 0 then
		lualib:AddBuff(player, "行会lv"..lvl, 0)
	end
	
end


--【行会仓库】
	local SELF_TO_FAMILY = 1
	local FAMILY_TO_SELF = 2
	local FAMILY_DESTROY_ITEM = 3
	function getFamilyWarehouseList(player,family_guid)
		--player contribution
		local player_contri = 0;
		if lualib:GetInt(player,"contribution") then
			player_contri = lualib:GetInt(player,"contribution")
		else
			lualib:SetInt(player,"contribution",player_contri)
		end
		lualib:ShowFormWithContent(player,"玩家行会贡献值",tostring(player_contri))

		local family_warehouse = ""
		if lualib:GetStr(family_guid,"family_warehouse") ~= "" then
			family_warehouse = lualib:GetStr(family_guid,"family_warehouse")
		end
		lualib:ShowFormWithContent(player,"行会仓库",family_warehouse)
		return ""
	end
--
--[[	function selfToFamily(player,family_guid,item_guid)
		local family_warehouse = lualib:GetStr(family_guid,"family_warehouse")
		local item_json = lualib:Item2Json(item_guid)
		local family_table = {}
		if lualib:GetStr(family_guid,"family_warehouse") ~= "" and itemJson ~= {} then
			family_table = deserialize(family_warehouse)	
		end
		
		family_table[item_guid] = item_json
		
		lualib:SetStr(family_guid,"family_warehouse",serialize(family_table))

		-- add item contribution value to player
		local item_contribution_value = lualib:GetInt(item_guid,"item_contri")
		local player_contri = lualib:GetInt(player,"contribution")
		local value = player_contri + item_contribution_value

		lualib:SetInt(player,"contribution",value)
		lualib:ShowFormWithContent(player,"玩家行会贡献值",tostring(value))
		local subName = lualib:Name(item_guid)
		if lualib:Item_Destroy(player,item_guid,"item destroy", player) then
			lualib:SysCenterMsg(0,"贡献值 +"..item_contribution_value..",当前贡献值 "..value,player)
			lualib:ShowFormWithContent(player,"行会仓库",lualib:GetStr(family_guid,"family_warehouse"))
			familyLog(player,SELF_TO_FAMILY,family_guid,item_guid,subName,item_contribution_value)
			return ""
		else
			lualib:SysPromptMsg(player,"该物品无法捐献")
			return ""
		end
	end--]]
	function selfToFamily(player,family_guid,item_guid)

		--准备临时数据
		local subName = lualib:Name(item_guid)
		local family_warehouse = lualib:GetStr(family_guid,"family_warehouse")
		local item_json = lualib:Item2Json(item_guid)
		local family_table = {}
		if lualib:GetStr(family_guid,"family_warehouse") ~= "" and itemJson ~= {} then
			family_table = deserialize(family_warehouse)	
		end	
		local item_contribution_value = lualib:GetInt(item_guid,"item_contri")
		if lualib:Item_Destroy(player,item_guid,"item destroy", player) then
			-- 成功销毁玩家身上的物品则 加玩家贡献值 行会仓库加物品
			-- add item contribution value to player
			
			local player_contri = lualib:GetInt(player,"contribution")
			local value = player_contri + item_contribution_value
			lualib:SetInt(player,"contribution",value)
			lualib:ShowFormWithContent(player,"玩家行会贡献值",tostring(value))

			-- add item to family warehouse
			family_table[item_guid] = item_json
			lualib:SetStr(family_guid,"family_warehouse",serialize(family_table))

			lualib:SysCenterMsg(0,"贡献值 +"..item_contribution_value..",当前贡献值 "..value,player)
			lualib:ShowFormWithContent(player,"行会仓库",lualib:GetStr(family_guid,"family_warehouse"))
			familyLog(player,SELF_TO_FAMILY,family_guid,item_guid,subName,item_contribution_value)
			return ""
		else
			lualib:SysPromptMsg(player,"点击过快")
			return ""
		end
	end




	function familyToSelf(player,family_guid,item_guid)

		local free = lualib:GetBagFree(player)

		if lualib:GetBagFree(player) < 1 then
				lualib:ShowFormWithContent(player,"行会仓库",lualib:GetStr(family_guid,"family_warehouse"))
				lualib:SysPromptMsg(player,"背包空间不足")
				return ""
		end

		local family_warehouse = ""
		if lualib:GetStr(family_guid,"family_warehouse") ~= "" then
			family_warehouse = lualib:GetStr(family_guid,"family_warehouse")
		else
			lualib:SysPromptMsg(player,"no item in family warehouse")
			return ""
		end	

		local family_table = deserialize(family_warehouse)
		local item_json_string = family_table[item_guid]
--		lualib:Debug("item_json_string = "..item_json_string)		
		
		local item_obj = json.decode(item_json_string)
		
		local item_contri
		if item_obj ~= nil then
			item_contri = item_obj["cus"]["i"]["item_contri"]
--			lualib:Debug("item_contri = "..tostring(item_contri))
		else
--			lualib:Debug("item_contri no value")
			return
		end
		local player_contri = lualib:GetInt(player,"contribution")
--		lualib:Debug("player_contri = "..player_contri)
		local value = tonumber(player_contri) - tonumber(item_contri)
		if value < 0 then
			lualib:ShowFormWithContent(player,"行会仓库",lualib:GetStr(family_guid,"family_warehouse"))
			lualib:SysPromptMsg(player,"贡献值不足")
			return ""
		else
			lualib:SetInt(player,"contribution",value)
			lualib:ShowFormWithContent(player,"玩家行会贡献值",tostring(value))
		end

	
		lualib:Json2Item(player,family_table[item_guid]) -- add item to player

		family_table[item_guid] = nil
		
		local subName = lualib:Name(item_guid)
		local item_contribution_value = lualib:GetInt(item_guid,"item_contri")
		if lualib:SetStr(family_guid,"family_warehouse",serialize(family_table)) then
			lualib:SysCenterMsg(0,"贡献值 -"..item_contri..",当前贡献值 "..value,player)
			lualib:ShowFormWithContent(player,"行会仓库",lualib:GetStr(family_guid,"family_warehouse"))
			familyLog(player,FAMILY_TO_SELF,family_guid,item_guid,subName,item_contribution_value)
			lualib:SysPromptMsg(player,"成功获得物品")
			return ""		
		else
			lualib:SysPromptMsg(player,"换取物品失败")
			return ""		
		end
	end



function donateMoney(player,money)
	--money unit(1w)
	lualib:Debug("donate money")
	local player_contri = lualib:GetInt(player,"contribution")
	local contri_money = money
	if lualib:Player_SubGold(player,tonumber(money)*10000,false,"行会贡献","玩家自身") then
		local value = player_contri + tonumber(contri_money)
		lualib:SetInt(player,"contribution",value)		
		lualib:ShowFormWithContent(player,"玩家行会贡献值",tostring(value))

		if lualib:GuildGuid(player) == "" then
		else
			local family_guid = lualib:GuildGuid(player)
			local familywealth = 0;
			if lualib:GetInt(family_guid,"familywealth") then
				familywealth = lualib:GetInt(family_guid,"familywealth")
			else
				lualib:SetInt(family_guid,"familywealth",familywealth)
			end
			familywealth = familywealth + money;
			lualib:SetInt(family_guid,"familywealth",familywealth)
			lualib:ShowFormWithContent(player,"脚本表单","update_wealth("..lualib:GetInt(family_guid,"familywealth")..");")
		end
		if tonumber(money) ~= 0 then
			lualib:SysPromptMsg(player,"捐献金币获得"..tostring(money).."贡献值")
			return ""
		else
			return ""
		end
	else
		--local str = "\"金币不足！\""
		--lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_Info.AlertMessage("..str..");")
		lualib:SysPromptMsg(player,"金币不足")
		return ""	
	end
end

function destroyItem(player,item_guid)
	--money unit(1w)
	--lualib:Debug("destroy Item")
	if lualib:GuildGuid(player) == "" then
		return
	else
		local family_guid = lualib:GuildGuid(player)
		if lualib:GetStr(family_guid,"family_warehouse") ~= "" then
			family_warehouse = lualib:GetStr(family_guid,"family_warehouse")
		else
			lualib:SysPromptMsg(player,"no item in family warehouse")
			return ""
		end	

		
		local family_table = deserialize(family_warehouse)
		local item_json_string = family_table[item_guid]
		local item_obj = json.decode(item_json_string)
		--lualib:Debug("item json String = "..item_json_string)
		local subname = item_obj["n"]
		--lualib:Debug("item destroy guid = "..item_guid)
		--lualib:Debug("item destroy keyname = "..item_keyname)
		local item_contribution_value = lualib:GetInt(item_guid,"item_contri")
		family_table[item_guid] = nil
		if lualib:SetStr(family_guid,"family_warehouse",serialize(family_table)) then
			lualib:ShowFormWithContent(player,"行会仓库",lualib:GetStr(family_guid,"family_warehouse"))
			familyLog(player,FAMILY_DESTROY_ITEM,family_guid,item_guid,subname,item_contribution_value)
			lualib:SysPromptMsg(player,"销毁物品成功")
			return ""
		else
			lualib:SysPromptMsg(player,"销毁物品失败")
			return ""		
		end
	end
	
	
end

--【红包】
function updateRedPacket(player)
	lualib:Player_GuildRunScript(player, "redPacket_updateAsk","")
end

function redPacket_updateAsk(player)
	if not lualib:Player_IsOnline(player) then
		return
	end
	
	lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_RedPacket_updateRedPacketAsk()")
end

function redPacket_update(player)
	--lualib:SysPromptMsg(player, "脚本表单--redPacket_update")
	local guildGUID = lualib:GuildGuid(player)
	if guildGUID == "" then return "noGUILD" end
				
	local guildData_ = lualib:GetStr(guildGUID, "GuildRedPacketInfo")
	if guildData_ == "" then 
		guildData_ = {}
	else
		guildData_ = json.decode(guildData_)
	end
	guildData_ = serialize(guildData_)
	lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_RedPacket_updateRedPacketInfo("..guildData_..")")
		
	guildData_ = lualib:GetStr(guildGUID, "GuildRedPacketLog")
	if guildData_ == "" then
		guildData_ = {}
	else
		guildData_ = json.decode(guildData_)
	end
	
	guildData_ = serialize(guildData_)
	lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_RedPacket_updateRedPacketLog("..guildData_..")")
	
	return ""
end

--redpacket_ = { {count, total, {player, ..}, ownerName}, ..}
function sendRedPacket(player, clientStr)
	local guildGUID = lualib:GuildGuid(player)
	if guildGUID == "" then return "noGUILD" end
	
	local t_ = string.split(clientStr, ";") 
	t_[1] = tonumber(t_[1])
	t_[2] = tonumber(t_[2]) 
	local name = lualib:Name(player)
	if lualib:Player_SubIngot(player, t_[2], false, "发行会红包", name) then
		local guildData_ = lualib:GetStr(guildGUID, "GuildRedPacketInfo")
		if guildData_ == "" then 
			guildData_ = {}
		else
			guildData_ = json.decode(guildData_)
		end
		
		table.insert(guildData_, 1, {t_[1], t_[2], {}, player})
		
		guildData_ = json.encode(guildData_)
		lualib:SetStr(guildGUID, "GuildRedPacketInfo", guildData_)
		makeGuildRedPacketLog(player, guildGUID, 1, name, t_[2])
		updateRedPacket(player)
	end
	
	return ""
end
function grabRedPacket(player)
	local guildGUID = lualib:GuildGuid(player)
	if guildGUID == "" then return "noGUILD" end
	
	local guildData_ = lualib:GetStr(guildGUID, "GuildRedPacketInfo")
	if guildData_ == "" then
		guildData_ = {}
	else
		guildData_ = json.decode(guildData_)
	end

	for i = 1, #guildData_ do
		local countineFlag = 0
		if player == guildData_[i][4] then
			countineFlag = 1
		else
			if next(guildData_[i][3]) ~= nil then
				if guildData_[i][4] == player then	--
					countineFlag = 1
					break
				end
				for j = 1, #guildData_[i][3] do
					if guildData_[i][3][j] == player then	--
						countineFlag = 1
						break
					end
				end
			end
		end
		if countineFlag ~= 1 then
			local money, name = 0, lualib:Name(guildData_[i][4])
			if guildData_[i][1] > 1 then 
				local ran = lualib:GenRandom(1, 888)
				money = math.ceil((ran/1000)*guildData_[i][2])
				table.insert(guildData_[i][3], player)
				if guildData_[i][2] <= money then
					table.remove(guildData_, i)
				else
					guildData_[i] = {guildData_[i][1]-1, guildData_[i][2]-money, guildData_[i][3], guildData_[i][4]}
				end
			else
				money = guildData_[i][2]
				table.remove(guildData_, i)
			end
			
			if lualib:Player_AddIngot(player, money, false,"添加元宝:行会红包", name) then--
				guildData_ = json.encode(guildData_)
				lualib:SetStr(guildGUID, "GuildRedPacketInfo", guildData_)
				makeGuildRedPacketLog(player, guildGUID, 2, lualib:Name(player), money)
				--lualib:SysPromptMsg(player, name.."--"..money)
				updateRedPacket(player)
			end
			return ""
		end
	end
	
	return ""
end

--【日志】
function makeGuildRedPacketLog(player, guildGUID, logType, name, num)
	local guildData_ = lualib:GetStr(guildGUID, "GuildRedPacketLog")
	if guildData_ == "" then
		guildData_ = {}
	else
		guildData_ = json.decode(guildData_)
	end
	
	table.insert(guildData_, 1, {logType, name, num})
	if #guildData_ > 100 then
		for i = 101, #guildData_ do
			table.remove(guildData_, i)
		end
	end
	guildData_ = json.encode(guildData_)
	lualib:SetStr(guildGUID, "GuildRedPacketLog", guildData_)
	lualib:Player_GuildRunScript(player, "addGuildRedPacketLog", logType..";"..name..";"..num)
end

function addGuildRedPacketLog(player, str)
	if not lualib:Player_IsOnline(player) then
		return
	end
	
	lualib:ShowFormWithContent(player, "脚本表单", "FamilyWnd_RedPacket_addRedPacketLog("..str..")")
end

function familyLog(player,type,family_guid,item_guid,subname,item_contribution_value)
		local family_log = ""
		local log_table = {}
--		lualib:Debug("1"..family_log)
		if lualib:GetStr(family_guid,"family_log") then
			family_log = lualib:GetStr(family_guid,"family_log")
--			lualib:Debug("2"..family_log)
		else
			lualib:SetStr(family_guid,"family_log",serialize(log_table))
--			lualib:Debug("3"..family_log)
		end
		
		if family_log ~= "" then
			log_table = deserialize(family_log)
--			lualib:Debug("5"..family_log)
		end
		
		if not log_table then
--			lualib:Debug("family log deserialize error")
			return
		end

--		lualib:Debug("7"..family_log)
		local log = {}
		log.type = type
		log.player_name = lualib:KeyName(player)	
		log.item_value = item_contribution_value	
		log.equip_name = subname
		--local key = item_guid..tostring(type) 
		local key = #log_table + 1 
		log_table[tonumber(key)] = log
		family_log = serialize(log_table)
		lualib:SetStr(family_guid,"family_log",family_log)
--		lualib:Debug(""..lualib:GetStr(family_guid,"family_log"))	
	end

function getFamilyLog(player,family_guid)
	local log_table = 0
	log_table = lualib:GetStr(family_guid,"family_log")
	
	if log_table ~= "" then
		lualib:Debug(""..log_table)	
	end
	lualib:ShowFormWithContent(player,"脚本表单","FamilyWnd_Log_logdata("..log_table..")")
	return ""
end




--【贡献值】
function contribution(player)
	if lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "0" and lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "" then
		lualib:SysPromptMsg(player,"你已经有行会了。")
		return ""
	end
end

function getMemberVip(player,playerGuid,titleid,name)
	if not lualib:Player_IsOnline(playerGuid) then
		--玩家不在线
		lualib:ShowFormWithContent(player,"脚本表单","Menu.OnlineError('"..name.."')")
	else		
		local vip_lv = lualib:GetVipLevel(playerGuid)
		lualib:ShowFormWithContent(player,"脚本表单","Menu.FamilyMemberVip("..vip_lv..","..titleid..",'"..name.."')")
	end
	return ""
end



