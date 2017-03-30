local skill = {
					["�޼����1��"] = {"�޼����1��", "", 1, 45},
					["�޼����2��"] = {"�޼����2��", "�޼����1��", 1, 47},
					["�޼����3��"] = {"�޼����3��", "�޼����2��", 1, 49},
					["�޼����4��"] = {"�޼����4��", "�޼����3��", 1, 52},
                    ["�޼����5��"] = {"�޼����5��", "�޼����4��", 1, 55},
					["�������1��"] = {"�������1��", "", 2, 45},
					["�������2��"] = {"�������2��", "�������1��", 2, 47},
					["�������3��"] = {"�������3��", "�������2��", 2, 49},
					["�������4��"] = {"�������4��", "�������3��", 2, 53},
                    ["�������5��"] = {"�������5��", "�������4��", 2, 55},
					["��ħ֮ŭ1��"] = {"��ħ֮ŭ1��", "", 3, 45},
					["��ħ֮ŭ2��"] = {"��ħ֮ŭ2��", "��ħ֮ŭ1��", 3, 47},
					["��ħ֮ŭ3��"] = {"��ħ֮ŭ3��", "��ħ֮ŭ2��", 3, 49},
					["��ħ֮ŭ4��"] = {"��ħ֮ŭ4��", "��ħ֮ŭ3��", 3, 53},
                    ["��ħ֮ŭ5��"] = {"��ħ֮ŭ5��", "��ħ֮ŭ4��", 3, 55},
				}--����keyname     ����keyname   ��һ������keyname 		 ְҵ��1ս2��3��

				
function main(player, item)
	local itemName = lualib:KeyName(item)
	local job = lualib:Job(player)
	local level = lualib:Level(player)

	if level < skill[itemName][4] then
		lualib:SysMsg_SendWarnMsg(player, "��ĵȼ����㣬�޷�ѧϰ�ü��ܣ�")
		return false
	end
	
	
	if job ~= skill[itemName][3] then
		lualib:SysMsg_SendWarnMsg(player, "���ְҵ����ѧϰ�ü��ܣ�")
		return false
	end
	
	
	
	local skillName = string.sub(itemName, 1, 8)
	local skillLevel = tonumber(string.sub(itemName, 9, 9))
	
	local req = 0
	for i = 1, 5 do
		local skillLevelName = skillName.. i .."��"
		if lualib:Player_IsHasSkill(player,skillLevelName) == true then
			req = i
			break
		end
	end

	if skillLevel < req then
		lualib:SysMsg_SendWarnMsg(player, "�ü�����ѧϰ��")
        return false
	end
	
	
	if lualib:Player_IsHasSkill(player, skill[itemName][1]) == true then
		lualib:SysMsg_SendWarnMsg(player, "�ü�����ѧϰ��")
        return false
	end
	
	if skill[itemName][2] ~= "" then
		if lualib:Player_IsHasSkill(player, skill[itemName][2]) ~= true then
			lualib:SysMsg_SendWarnMsg(player, "�㻹δѧϰ"..skill[itemName][2].."�޷�ѧϰ"..skill[itemName][2])
			return false
		end
	end
	
	
	
	
	if skill[itemName][2] == "" then
		if not lualib:Item_Destroy(player, item, "", "") then
			lualib:SysMsg_SendPromptMsg(player, "�۳�����ʧ��")
			return
		end
		lualib:AddSkill(player, skill[itemName][1])
		lualib:SysMsg_SendPromptMsg(player, "����ѧϰ�ɹ���")
		return true
	else
		if not 		lualib:Item_Destroy(player, item, "", "") then
			lualib:SysMsg_SendPromptMsg(player, "�۳�����ʧ��")
			return
		end
		
		lualib:Player_RunGMCmd(player, "sd", skill[itemName][2])
		lualib:AddSkill(player, skill[itemName][1])
		lualib:SysMsg_SendPromptMsg(player, "����ѧϰ�ɹ���")
		return true
	end
end

function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
