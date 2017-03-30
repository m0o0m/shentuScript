local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

function main(player,item)
	local tab_wing = 
	{
		{"��ʹ֮��","ʥ��֮��","����֮��","����֮��","����������","����֮��","����������","����֮��","���֮��","����֮��","˫����"},
		{5,5,10,10,20,20,30,30,40,40},--��Ӧ���ȼ�ÿ�ε��������������	
		{10000,10000,20000,20000,60000,60000,120000,120000,240000,240000},----������
		{12,48,132,352,500,900,828,1136,1400,2000},--��Ӧ���ȼ�ÿ��������������
		0,  --���׵ȼ�
		0,  --��������
		0,  --�������������
	}
	
	local wing = 
	{
		{"��ʹ֮��","ʥ��֮��","����֮��","����֮��","����������","����֮��","����������","����֮��","���֮��","����֮��","˫����"},
		{12,48,132,352,500,900,828,1136,1400,2000},--��Ӧ���ȼ�ÿ��������������
	}
	local item_guid = lualib:Player_GetItemGuid(player,14)
	if item_guid == "" then
		lualib:SysPromptMsg(player, "û��װ�����,���������ó�����ʹ�ô˵���")
		return false
	else
		if lualib:GetBagFree(player) < 1 then
			lualib:SysPromptMsg(player,"���ı������ˣ������������ڽ�������")
			return false
		end
		local wing_l = lualib:GetInt(player,"wing_level")
		if wing_l < 2 then 
			if not lualib:AddItem(player,wing[1][3],1,true,"ֱ������������", player) then --����Ʒ
				return false
			end
			lualib:SetInt(player,"wing_level",2)
			lualib:SetDayInt(player,"wing_peiy",0)
			lualib:DelItemEx(player, wing[1][wing_l + 1], 1, 2, true, true, false, false, "ֱ������������", "ֱ������������")
			
			local wing_l = lualib:GetInt(player,"wing_level")
			local wing_p = lualib:GetDayInt(player,"wing_peiy")
			local num = lualib:ItemCount(player, "��ë")
			tab_wing[5] = wing_l
			tab_wing[6] = wing_p
			tab_wing[7] = num
			local table_data = serialize(tab_wing)
			local str = [[
			local _handle = GetWindow(nil,"WingWnd")
			if _handle ~= 0 then 
			]]
			.."wing_data("..table_data..")"
			.."end"
			lualib:ShowFormWithContent(player,"�ű���",str)
		else
			local wing_p = lualib:GetDayInt(player,"wing_peiy")
			wing_p = wing_p + 50
			if wing_p < wing[2][wing_l + 1] then
				lualib:SetDayInt(player,"wing_peiy",wing_p)
				wing_l = lualib:GetInt(player,"wing_level")
				local index = wing_l + 1
				local num = lualib:ItemCount(player, "��ë")
				local str = [[
				local _handle = GetWindow(nil,"WingWnd")
				if _handle ~= 0 then 
				]]
				.."peiy_update("..index..","..wing_p..","..num..")"
				.."end"
				lualib:ShowFormWithContent(player,"�ű���",str)
				lualib:SysCenterMsg(0,"�ɹ����<���ף��ֵ>50��",player)
			else
				if not lualib:AddItem(player,wing[1][wing_l+2],1,true,"ֱ������������", player) then --����Ʒ
					return false
				end
				lualib:DelItemEx(player, wing[1][wing_l + 1], 1, 2, true, true, false, false, "ֱ������������", "ֱ������������")
				lualib:SetDayInt(player,"wing_peiy",0)
				lualib:SetInt(player,"wing_level",wing_l + 1)	
				
				local wing_l = lualib:GetInt(player,"wing_level")
				local wing_p = lualib:GetDayInt(player,"wing_peiy")
				local num = lualib:ItemCount(player, "��ë")
				tab_wing[5] = wing_l
				tab_wing[6] = wing_p
				tab_wing[7] = num
				local table_data = serialize(tab_wing)
				local str = [[
				local _handle = GetWindow(nil,"WingWnd")
				if _handle ~= 0 then 
				]]
				.."wing_data("..table_data..")"
				.."end"
				lualib:ShowFormWithContent(player,"�ű���",str)
			end
		end
	end
	return true 
end