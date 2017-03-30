local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/ǧ��������")
require("system/logic_def_lua")

local time_talbe = 
	{	
		{1, 3000, 1, "maptalk"},
		{2, 4000, 1, "gen_monster"},
		{3, 3500000, 1, "maptalk"},  --10���Ӿ���
		{4, 3590000, 1, "maptalk"},  --1���Ӿ���
		{5, 3600000, 1, "destroy"},
		{11, 3590000, 1, "maptalk"},
		{12, 3591000, 1, "maptalk"},
		{13, 3592000, 1, "maptalk"},
		{14, 3593000, 1, "maptalk"},
		{15, 3594000, 1, "maptalk"},
		{16, 3595000, 1, "maptalk"},
		{17, 3596000, 1, "maptalk"},
		{18, 3597000, 1, "maptalk"},
		{19, 3598000, 1, "maptalk"},
		{20, 3599000, 1, "maptalk"},
		{21, 30000, -1, "kou_item"}
	}
	--����˵��
local jz_maptalk_talbe =
{
	"��ǧ���󡪡�[������]���������������ʿ�ǣ��뾡���ҵ����ۣ�ͨ����һ��",
	"ǧ������ʮ���Ӻ����������λ������ʿץ��ʱ������",
	"ǧ������һ���Ӻ����������λ������ʿ�����뿪�������������⣡",
	"ǧ������10������������λ������ʿ�����뿪�������������⣡",
	"ǧ������9������������λ������ʿ�����뿪�������������⣡",
	"ǧ������8������������λ������ʿ�����뿪�������������⣡",
	"ǧ������7������������λ������ʿ�����뿪�������������⣡",
	"ǧ������6������������λ������ʿ�����뿪�������������⣡",
	"ǧ������5������������λ������ʿ�����뿪�������������⣡",
	"ǧ������4������������λ������ʿ�����뿪�������������⣡",
	"ǧ������3������������λ������ʿ�����뿪�������������⣡",
	"ǧ������2������������λ������ʿ�����뿪�������������⣡",
	"ǧ������1������������λ������ʿ�����뿪�������������⣡"
}



function on_map_create(map)
    lualib:Debug("ǧ�����ͼ�����ص���")
	for i = 1 ,#time_talbe do
		if not lualib:AddTimerEx(map, time_talbe[i][1], time_talbe[i][2], time_talbe[i][3], time_talbe[i][4], "") then
			lualib:Error("��ʱ�����ʧ�ܣ�")
		end 
	end
	
	lualib:AddTrigger(map,  lua_trigger_leave_map, "on_trigger_leave_map")
end

--����뿪��ͼ�Ĵ���������ʱ����ɾ����ǧ����
function on_trigger_leave_map(player)
	local map = lualib:MapGuid(player)
    local count = lualib:ItemCountByKey(player, "�غ���Ԫ", true, true, true, 1)
    if not lualib:DelItem(player, "�غ���Ԫ", count, 1, "�뿪����ǧ����", "ǧ����") then
		lualib:SysMsg_SendTriggerMsg(player,"�۳���Ʒʧ��")
		return
	end
	lualib:Map_DestroyDgn(map)
end

function on_map_destroy(map)

end


function destroy(map, tierid)
	lualib:Map_DestroyDgn(map)
end

-- ��ͼ˵��
function maptalk(map, tierid)
		if tierid == 1	then		
			for i = 1, 5 do
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[1])
			end
		elseif  tierid == 3 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[2])
		elseif  tierid == 4 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[3])
		elseif  tierid == 11 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[4])
		elseif  tierid == 12 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[5])
		elseif  tierid == 13 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[6])
		elseif  tierid == 14 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[7])
		elseif  tierid == 15 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[8])
		elseif  tierid == 16 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[9])
		elseif  tierid == 17 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[10])
		elseif  tierid == 18 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[11])
		elseif  tierid == 19 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[12])
		elseif  tierid == 20 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[13])
		end
end

--������ˢ��
function gen_monster(map, timerid)
		

		lualib:Debug("map:" .. map);

		-- ����������
		for i = 1, #ys_zhenx do
			lualib:Map_GenMonster(map, ys_zhenx[i][1], ys_zhenx[i][2], ys_zhenx[i][3], 4, ys_zjmonster[lualib:GenRandom(1, 2)], ys_zhenx[i][4], false)
		end  
		
		ys_zzy_num = lualib:Map_GetMonsterCount(map, ys_zjmonster[1], true, true)--��ȡ������ͼ���������۵�����
		if not lualib:SetInt(map, "ys_zzy", ys_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "����û�����ȥ������ϵ�ͷ���")
		end
		
		local ys_zzy = lualib:GetInt(map, "ys_zzy")    --����������������
		
		
		
				
end

function kou_item(map, timerid)
	local player_table = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
	local jy_num = lualib:ItemCount(player_table[1], "�غ���Ԫ")
	if jy_num >= 1 then
		if not lualib:DelItem(player_table[1], "�غ���Ԫ", 1, 2, "��ʱ���Զ�ɾ��", map) then
			lualib:SysMsg_SendTriggerMsg(player,"�۳���Ʒʧ��")
			return
		end
		--lualib:SysMsg_SendMapMsg(map, "�Զ��۳��غ���Ԫ")
	else
		lualib:SysMsg_SendMapMsg(map, "����غ���Ԫ�����ˣ�������֧��ǧ����Ĵ��ڣ�3���ǧ���󽫱������㽫���Զ�����ǧ����")
		lualib:AddTimerEx(map, 100, 3000, 1, "destroy", "")
	end
	
	
	
end
