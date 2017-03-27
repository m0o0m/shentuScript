local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")

local glory_callback =
{

	
	[5] = --�ۼƵ�¼2��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 2 then
				return true
			end
				return false
        end,
    },
	
	[6] = --�ۼƵ�¼3��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 3 then
				return true
			end
				return false
        end,
    },
	
	[7] = --�ۼƵ�¼5��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 5 then
				return true
			end
				return false
        end,
    },
	
	[8] = --�ۼƵ�¼8��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 8 then
				return true
			end
				return false
        end,
    },
	
	[9] = --�ۼƵ�¼12��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 12 then
				return true
			end
				return false
        end,
    },  
	
	[10] = --�ۼƵ�¼16��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 16 then
				return true
			end
				return false
        end,
    },
	
	[11] = --�ۼƵ�¼22��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 22 then
				return true
			end
				return false
        end,
    },
	 
	[12] = --�ۼƵ�¼28��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 28 then
				return true
			end
				return false
        end,
    },
	
	[13] = --�ۼƵ�¼36��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 36 then
				return true
			end
				return false
        end,
    },
	
	[14] = --�ۼƵ�¼46��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 46 then
				return true
			end
				return false
        end,
    },
	
	[15] = --�ۼƵ�¼68��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 68 then
				return true
			end
				return false
        end,
    },
	
	[16] = --�ۼƵ�¼80��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 80 then
				return true
			end
				return false
        end,
    },
	
	[17] = --�ۼƵ�¼92��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 92 then
				return true
			end
				return false
        end,
    },
	
	[18] = --�ۼƵ�¼110��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local cur_login = lualib:Player_GetCustomVarInt(player, "login_days");
			if cur_login >= 110 then
				return true
			end
				return false
        end,
    },
	
	[19] = --�ﵽ40��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 40 then
				return true
			end
				return false
        end,
    },
	 
	[20] = --�ﵽ45��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 45 then
				return true
			end
				return false
        end,
    }, 
	
	[21] = --�ﵽ50��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 50 then
				return true
			end
				return false
        end,
    }, 
	
	[22] = --�ﵽ55��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 55 then
				return true
			end
				return false
        end,
    },
	
	[23] = --�ﵽ60��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 60 then
				return true
			end
				return false
        end,
    },
	
	[24] = --�ﵽ65��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 65 then
				return true
			end
				return false
        end,
    },
	
	[25] = --�ﵽ70��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 70 then
				return true
			end
				return false
        end,
    },
	
	[26] = --�ﵽ75��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 75 then
				return true
			end
				return false
        end,
    },
	
	[27] = --�ﵽ80��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 80 then
				return true
			end
				return false
        end,
    },
	
	[28] = --�ﵽ85��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 85 then
				return true
			end
				return false
        end,
    },
	
	[29] = --�ﵽ90��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 90 then
				return true
			end
				return false
        end,
    },
	
	[30] = --�ﵽ95��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 95 then
				return true
			end
				return false
        end,
    },
	
	[31] = --�ﵽ100��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			if lualib:Level(player) >= 100 then
				return true
			end
				return false
        end,
    },
	
	[32] = --ɱ��100ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 100 then
				return true
			end
				return false
        end,
	},	
	
	[33] = --ɱ��600ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 600 then
				return true
			end
				return false
        end,
	},
	
	[34] = --ɱ��3000ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 3000 then
				return true
			end
				return false
        end,
	},	
	
	[35] = --ɱ��12000ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 12000 then
				return true
			end
				return false
        end,
	},
	
	[36] = --ɱ��48000ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 48000 then
				return true
			end
				return false
        end,
	},	
	
	[37] = --ɱ��14��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 140000 then
				return true
			end
				return false
        end,
	},
	
	[38] = --ɱ��28��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 280000 then
				return true
			end
				return false
        end,
	},	
	
	[39] = --ɱ��56��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 560000 then
				return true
			end
				return false
        end,
	},
	
	[40] = --ɱ��110��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 1100000 then
				return true
			end
				return false
        end,
	},
	
	[41] = --ɱ��220��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
	
        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 2200000 then
				return true
			end
				return false
        end,
	},	
	
	[42] = --ɱ��460��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 4600000 then
				return true
			end
				return false
        end,
	},
	
	[43] = --ɱ��1000��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 10000000 then
				return true
			end
				return false
        end,
	},
	
	[44] = --ɱ��2200��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 22000000 then
				return true
			end
				return false
        end,
	},	
	
	[45] = --ɱ��4000��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 40000000 then
				return true
			end
				return false
        end,
	},
	
	[46] = --ɱ��7000��ֻ����
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)

        end,

        check_complete = function(player)
			local cur_kills = lualib:GetInt(player, "kill_monster");
			if cur_kills >= 70000000 then
				return true
			end
				return false
        end,
	},
		
	[47] = --��ɱ��Ľ���
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "��Ľ���" or target_name == "��Ľ�������" or target_name == "��֮�������") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_tianhuangjiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_tianhuangjiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_tianhuangjiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[48] = --��ɱ�������
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "�������" or target_name == "�����������" or target_name == "��֮�������") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_zumajiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_zumajiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_zumajiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[49] = --��ɱ���¶�ħ
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and target_name == "���¶�ħ"  then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_chiyueemo", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_chiyueemo");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_chiyueemo", 0);
				return true
			end
				return false
        end,
    },
	
	[50] = --��ɱţħ��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "ţħ��" or target_name == "��֮ţħ��") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_niumowang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_niumowang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_niumowang", 0);
				return true
			end
				return false
        end,
    },
	
	[51] = --��ɱ��Ȫ����
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "��Ȫ����" or target_name == "��֮��Ȫ����") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_huangquanjiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_huangquanjiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_huangquanjiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[52] = --��ɱʬ��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and (target_name == "ʬ��" or target_name == "��֮ʬ��") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_shiba", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_shiba");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_shiba", 0);
				return true
			end
				return false
        end,
    },
	
	[53] = --��ɱ��Ĥ����
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name) 
			if action == 2 and (target_name == "��Ĥ����" or target_name == "��֮��ħ����") then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_hongmojiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_hongmojiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_hongmojiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[54] = --��ɱħ������
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and target_name == "ħ������" then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_molongjiaozhu", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_molongjiaozhu");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_molongjiaozhu", 0);
				return true
			end
				return false
        end,
    },
	
	[55] = --��ɱѩ��ħ��
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and target_name == "ѩ��ħ��" then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_xueyumowang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_xueyumowang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_xueyumowang", 0);
				return true
			end
				return false
        end,
    },
	
	[56] = --��ɱ��������
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and target_name == "��������" then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_leiyanzhuwang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_leiyanzhuwang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_leiyanzhuwang", 0);
				return true
			end
				return false
        end,
    },
	
	[57] = --��ɱ����
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and target_name == "����" then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_huolong", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_huolong");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_huolong", 0);
				return true
			end
				return false
        end,
    },
	
	[58] = --��ɱ��������
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and target_name == "��������" then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_axiuluoshen", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_axiuluoshen");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_axiuluoshen", 0);
				return true
			end
				return false
        end,
    },
	
	[59] = --��ɱ������
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and target_name == "������" then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_sheyaowang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_sheyaowang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_sheyaowang", 0);
				return true
			end
				return false
        end,
    },
	
	[60] = --��ɱ������
    {
        on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 2 and target_name == "������" then
				local cur_kills = lualib:Player_SetCustomVarInt(player, "kill_wuyaowang", 1);
			end
        end,

        check_complete = function(player)
			local cur_kills = lualib:Player_GetCustomVarInt(player, "kill_wuyaowang");
			if cur_kills == 1 then
				lualib:Player_SetCustomVarInt(player, "kill_wuyaowang", 0);
				return true
			end
				return false
        end,
    },
	
	[61] = --ǿ��1��+2��װ��
	{
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 2 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[62] = --ǿ��1��+3��װ��
	{
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 3 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[63] = --ǿ��1��+4��װ��
	{
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 4 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[64] = --ǿ��1��+5��װ��
	{
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 5 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[65] = --ǿ��1��+6��װ��
	{
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 6 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[66] = --ǿ��1��+7��װ��
	{
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 7 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[67] = --ǿ��1��+8��װ��
	{
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 8 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[68] = --ǿ��2��+8��װ��
	{
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 8 then
				local cur_refine = lualib:SetInt(player, "refine_item", lualib:GetInt(player,"refine_item1") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:GetInt(player, "refine_item1");
			if cur_refine == 2 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[69] = --ǿ��1��+9��װ��
	{
		 on_trigger = function(player, action, target, ref_value, target_name, map_name)
			local level = lualib:Equip_GetRefineLevel(player, target)
			if action == 1003 and level >= 9 then
				local cur_refine = lualib:Player_SetCustomVarInt(player, "refine_item", 1);
			end
        end,

        check_complete = function(player)
			local cur_refine = lualib:Player_GetCustomVarInt(player, "refine_item");
			if cur_refine == 1 then
				lualib:Player_SetCustomVarInt(player, "refine_item", 0);
				return true
			end
				return false
        end,
	},
	
	[70] = --���롾��ħ��ȡ�1��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "������ħ���" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	
	
	[71] = --���롾��������1��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "������������" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	[72] = --���롾���֮�ǡ�1��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "�������֮��" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	[73] = --���롾��������1��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "������������" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	[74] = --���롾���¶�ħ��1��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "�������¶�ħ" then
				local cur_enters = lualib:Player_SetCustomVarInt(player, "map_enter", 1);
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:Player_GetCustomVarInt(player, "map_enter");
			if cur_enters == 1 then
				lualib:Player_SetCustomVarInt(player, "map_enter", 0);
				return true
			end
				return false
        end,
	},
	
	[75] = --���롾��ħ��ȡ�3��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "������ħ���" then
				local cur_enters = lualib:SetInt(player, "map_enter_fm", lualib:GetInt(player,"map_enter_fm") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_fm");
			if cur_enters == 3 then
				lualib:SetInt(player, "map_enter_fm", 0);
				return true
			end
				return false
        end,
	},
	
	[76] = --���롾���֮�ǡ�3��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "�������֮��" then
				local cur_enters = lualib:SetInt(player, "map_enter_tk", lualib:GetInt(player,"map_enter_tk") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_tk");
			if cur_enters == 3 then
				lualib:SetInt(player, "map_enter_tk", 0);
				return true
			end
				return false
        end,
	},
	
	[77] = --���롾������3��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "�����������" then
				local cur_enters = lualib:SetInt(player, "map_enter_cy", lualib:GetInt(player,"map_enter_cy") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_cy");
			if cur_enters == 3 then
				lualib:SetInt(player, "map_enter_cy", 0);
				return true
			end
				return false
        end,
	},
	
	[78] = --���롾��ħ��ȡ�9��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "������ħ���" then
				local cur_enters = lualib:SetInt(player, "map_enter_fm1", lualib:GetInt(player,"map_enter_fm1") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_fm1");
			if cur_enters == 9 then
				lualib:SetInt(player, "map_enter_fm1", 0);
				return true
			end
				return false
        end,
	},
	
	[79] = --���롾���֮�ǡ�9��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "�������֮��" then
				local cur_enters = lualib:SetInt(player, "map_enter_tk1", lualib:GetInt(player,"map_enter_tk1") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_tk1");
			if cur_enters == 9 then
				lualib:SetInt(player, "map_enter_tk1", 0);
				return true
			end
				return false
        end,
	},
	
	[80] = --���롾���¶�ħ��9��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
			if action == 10 and map_name == "�������¶�ħ" then
				local cur_enters = lualib:SetInt(player, "map_enter_cyem", lualib:GetInt(player,"map_enter_cyem") + 1 );
			end
        end,

        check_complete = function(player)
			local cur_enters = lualib:GetInt(player, "map_enter_cyem");
			if cur_enters == 9 then
				lualib:SetInt(player, "map_enter_cyem", 0);
				return true
			end
				return false
        end,
	},
	
	[81] = --������׵�1��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 1 then
				return true
			end
				return false
        end,
	},
	
	[82] = --������׵�2��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 2 then
				return true
			end
				return false
        end,
	},
	
	[83] = --������׵�3��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 3 then
				return true
			end
				return false
        end,
	},
	
	[84] = --������׵�4��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 4 then
				return true
			end
				return false
        end,
	},
	
	[85] = --������׵�5��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 5 then
				return true
			end
				return false
        end,
	},
	
	[86] = --������׵�6��
	{
		on_trigger = function(player, action, target, ref_value, target_name, map_name)
        end,

        check_complete = function(player)
			local wing_shengjie = lualib:GetInt(player, "wing_level");
			if wing_shengjie == 6 then
				return true
			end
				return false
        end,
	},
	
	
	}
	
function OnTrigger(glory_id, player, action, target, ref_value, target_name, map_name)
    if glory_callback[glory_id] ~= nil and glory_callback[glory_id].on_trigger ~= nil then
        glory_callback[glory_id].on_trigger(player, action, target, ref_value, target_name, map_name)
    end
end

function CheckComplete(glory_id, player)
    if glory_callback[glory_id] == nil or glory_callback[glory_id].check_complete
	== nil then
        return true
    end

    return glory_callback[glory_id].check_complete(player)
end
