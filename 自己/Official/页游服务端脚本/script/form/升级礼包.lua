local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local award_tb = {
					[20] = {
									[1] = {
											[1] = {"��˪������","����ս������","����������","������������","��ͭͷ��ս����","���ָ����"},
											[2] = {"��˪������","����ս������","����������","������������","��ͭͷ��ս����","���ָ����"}
											},
									[2] = {
											[1] = {"��������","ħ������������","��̴��������","������������","��ͭͷ��������","���ǽ�ָ����"},
											[2]	= {"��������","ħ������Ů����","��̴��������","������������","��ͭͷ��������","���ǽ�ָ����"}
											},
									[3] = {
											[1] = {"��������","���͵�������","��ʿ��������","�׽���������","��ͭͷ��������","�����ָ����"},
											[2] = {"��������","���͵�������","��ʿ��������","�׽���������","��ͭͷ��������","�����ָ����"}
											}
									},
					[35] = {
									[1] = {
											[1] = {"����������","��������������","������������","ħ����������","����ͷ��ս����","������ħ��ָ����"},
											[2] = {"����������","��������Ů����","������������","ħ����������","����ͷ��ս����","������ħ��ָ����"}
											},
									[2] = {
											[1] = {"ħ������","ħ������������","˼������������","��ħ����С����","����ͷ��������","���۽�ָ����"},
											[2]	= {"ħ������","ħ������Ů����","˼������������","��ħ����С����","����ͷ��������","���۽�ָ����"}
											},
									[3] = {
											[1] = {"��������","�����������","������������","��ɫˮ����������","��ʿͷ������","���½�ָ����"},
											[2] = {"��������","�����������","������������","��ɫˮ����������","��ʿͷ������","���½�ָ����"}
											}
									},
					[45] = {
									[1] = {
											[1] = {"�þ�����","ս������������","�����������","�������������","����ͷ������","������ָ����"},
											[2] = {"�þ�����","ս������Ů����","�����������","�������������","����ͷ������","������ָ����"}
											},
									[2] = {
											[1] = {"Ѫ������","��ħ����������","��֮��������","��ħ����������","ħ��ͷ������","�ϱ�������"},
											[2]	= {"Ѫ������","��ħ����Ů����","��֮��������","��ħ����������","ħ��ͷ������","�ϱ�������"}
											},
									[3] = {
											[1] = {"��������","���ɵ�������","������������","�����������","����ͷ��������","̩̹��ָ����"},
											[2] = {"��������","���ɵ�������","������������","�����������","����ͷ��������","̩̹��ָ����"}
											}
									},
					[60] = {"��ʹ֮��"},
					}
					
function level_up_award(player, level)
	
				
	local player_name = lualib:Name(player)  --��ȡ��ҵ�����
	local job = lualib:Job(player) 			 --��ȡ��ҵ�ְҵ
	local gender = lualib:Gender(player)	 --��ȡ��ҵ��Ա�
	local lv = tonumber(level)
	local lv_award = award_tb[lv]

	if lv_award then
		local item_tb = {}
		if lv == 60 then
			if lualib:GetBagFree(player) < 1 then
				lualib:MailToPlayer("ϵͳ", player, "��ϲ������"..lv.."�����������ı����ռ䲻�㣬�������ݷ�������", 0, 0, 
							{
								award_tb[lv][1],1,1,
							})
				lualib:SysPromptMsg(player, "�����ռ䲻�㣬������ͨ���ʼ����͸�������ע�����")
			else
				lualib:AddItem(player, award_tb[lv][1], 1, true, "��������", "ϵͳ")
				lualib:ApplyEquipEx(player, award_tb[lv][1])
			end
		else
			item_tb = award_tb[lv][job][gender]
			if item_tb then
				--lualib:SysPromptMsg(player, "�����lv="..lv.."job="..job.."gender="..gender)
				lualib:ShowFormWithContent(player, "form�ļ���","�������_c".."#" .. serialize(item_tb).."#"..lv.."#"..job.."#"..gender)
			end
		end
	else 
		return
	end
	return ""
	
end

function lingqu(player,level,job,gender)
	local lv = tonumber(level)
	local job = tonumber(job)
	local gender = tonumber(gender)
	if lualib:GetBagFree(player) < 6 then
		lualib:MailToPlayer("ϵͳ", player, "��ϲ������"..lv.."�����������ı����ռ䲻�㣬�������ݷ�������", 0, 0, 
						{
							award_tb[lv][job][gender][1],1,1,
							award_tb[lv][job][gender][2],1,1,
							award_tb[lv][job][gender][3],1,1,
							award_tb[lv][job][gender][4],1,1,
							award_tb[lv][job][gender][5],1,1,
						})
		lualib:MailToPlayer("ϵͳ", player, "��ϲ������"..lv.."�����������ı����ռ䲻�㣬�������ݷ�������", 0, 0, 
						{
							award_tb[lv][job][gender][6],1,1,
						})
		lualib:SysPromptMsg(player, "�����ռ䲻�㣬������ͨ���ʼ����͸�������ע�����")
	else
		
		for i = 1 , 6 do
			if i == 3 then 
				--[[
				local prop_table = lualib:Item_DataRow(award_tb[lv][job][gender][i]) 
				local quality = prop_table["Quality"]
				lualib:SysPromptMsg(player, ''..quality)
				local Guid0 = lualib:Player_GetItemGuid(player,  lua_site_wrist_0) --��ȡװ��λ����ƷGUID
				if Guid0 ~= "" then
					local keyName0 = lualib:KeyName(Guid0)
					local prop_table0 = lualib:Item_DataRow(keyName0)
					local quality0 = prop_table0["Quality"]
					if quality >= quality0 then 
						lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_wrist_0)
					else
						local Guid1 = lualib:Player_GetItemGuid(player,  lua_site_wrist_1) --��ȡװ��λ����ƷGUID
						if Guid1 ~= "" then
							local keyName1 = lualib:KeyName(Guid1)
							local prop_table1 = lualib:Item_DataRow(keyName1)
							local quality1 = prop_table1["Quality"]
							if quality >= quality1 then 
								
							else
								
							end	
							
						end
					local Level = lualib:Item_GetLevel(Guid)
					
					if Level > 70 then 
						counts = counts + 1
						if counts > 0 then 
							break
						end
					end
				end
				--]]
				local Guid0 = lualib:Player_GetItemGuid(player,  lua_site_wrist_0) --��ȡװ��λ����ƷGUID
				if Guid0 == "" then 
					lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "��������", "ϵͳ")
					lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_wrist_0)
				else
					local Guid1 = lualib:Player_GetItemGuid(player,  lua_site_wrist_1) --��ȡװ��λ����ƷGUID
					if Guid1 == "" then 
						lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "��������", "ϵͳ")
						lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_wrist_1)
					else
						lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "��������", "ϵͳ")
						lualib:ApplyEquipEx(player, award_tb[lv][job][gender][i])
					end
				end
				
			elseif i == 6 then 
				local Guid0 = lualib:Player_GetItemGuid(player,  lua_site_ring_0) --��ȡװ��λ����ƷGUID
				if Guid0 == "" then 
					lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "��������", "ϵͳ")
					lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_ring_0)
				else
					local Guid1 = lualib:Player_GetItemGuid(player,  lua_site_ring_1) --��ȡװ��λ����ƷGUID
					if Guid1 == "" then 
						lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "��������", "ϵͳ")
						lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_ring_1)
					else
						lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "��������", "ϵͳ")
						lualib:ApplyEquipEx(player, award_tb[lv][job][gender][i])
					end
				end
			else
				lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "��������", "ϵͳ")
				--lualib:SysPromptMsg(player, award_tb[lv][job][gender][i])
				lualib:ApplyEquipEx(player, award_tb[lv][job][gender][i])
			end
		end
		
		local tab = {
			["a1"]={0,0},
			["a2"]={0,0},
			["a3"]={0,0},
			["a4"]={0,0},
			["a5"]={0,0},
			["a6"]={0,0},	}
		local pass = 0
		if lv == 20 then
			pass=1
			tab["a"..job]={14,437}
			tab["a4"]={0,115}
			tab["a5"]={0,85}
		elseif lv == 35 then
			pass=1
			tab["a"..job]={111,18}
			tab["a4"]={67,19}
			tab["a5"]={60,35}
			pass=1
		elseif lv == 45 then
			pass=1
			tab["a"..job]={87,40}
			tab["a4"]={25,15}
			tab["a5"]={15,30}
		end
		if pass == 1 then 
			local str = ""
			for i=1,6 do
				str = str .. i .. ","
				str = str .. tab["a"..i][1] .. ","
				if i == 6 then
					str = str .. tab["a"..i][2]
				else
					str = str .. tab["a"..i][2] .. "#"
				end
			end	
			lualib:ShowFormWithContent(player, "���Ըı��", str)
		end
	end
	lualib:SysCenterMsg( 0 , "��ϲ���"..lv.."�����" , player )
	--lualib:SysPromptMsg(player, "��ϲ���"..lv.."�����")
	return ""
end