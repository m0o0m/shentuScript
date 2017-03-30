local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
--������Ϣ
local data_table =
{
	{
		["msg"] ="��ʿ�ǣ�������Ϯ����ɽ�ǣ����Ǹ漱��������������﹥���Ķ����аɣ�",
		["delay"] = 10 --����֮��ļ����
	},
	{
		["msg"] ="�����޾壬������ɢ������Ӣ������ʾ�Լ������ʱ�̣�������һ���ڹ����ŭ�����п񻶰ɣ��𡪡��𡪡��𡪡�",
		["delay"] = 10
	},
	{
		["msg"] ="�����г�������ͽ�������Ǵ�����Ĵ�����ַ����������ɮ��һ��Сʱ�����е�BOSS��ͬʱ���͵����ǵ����Ĺ㳡�ϣ�",
		["delay"] = 10
	},
	{
		["msg"] ="Ϊ���ƻ��Է��Ĵ��ͣ�����Ӣ���ǣ�������Ҫ����������Ϯ�Ĺ��",
		["delay"] = 10
	},
	{
		["msg"] ="��������ˣ�",
		["delay"] = 10
	},
	{
		["msg"] ="��Щ����ͨ�����ҵĴ�Ԫ�ռ䴫�Ͷ��������ϲ�����ʱ���������ܹ�������ɮȷ���������꣬��������Զ�̴��ͣ���ҿ��������ǰ���",
		["delay"] = 10
	},
	{
		["msg"] ="�������������235, 201",
		["delay"] = 120,
		["monster"] =
		{
			["location"] = {255, 201},
			["�޶�"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["ɳʯħ5"] = 10,
			["ɢ��1"] = 10,
			["��ū2"] = 10,
			["�Źֵ���1"] = 10,
			["���浶��1"] = 10,
			["˫��������1"] = 10,
			["��ħ5"] = 10,
			["��ʯ����"] = 5,
			["��ԭ��ʿ1"] = 10,
			["ҹ��ɮ1"] = 10,
			["��ԭ��ʿ1"] = 10,
			["��������1"] = 10,
			["��ԭ��ʿ3"] = 10,
			["��ɮ1"] = 10,
			["Ӱ��2"] = 10,
			["�ڰ��̿�5"] = 10,
			["а��"] = 20,
		}
	},
	{
		["msg"] ="�������������176, 215",
		["delay"] = 120,
		["monster"] =
		{
			["location"] = {255, 201},
			["�޶�"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["ɳʯħ5"] = 10,
			["ɢ��1"] = 10,
			["��ū2"] = 10,
			["�Źֵ���1"] = 10,
			["���浶��1"] = 10,
			["˫��������1"] = 10,
			["��ħ5"] = 10,
			["��ʯ����"] = 5,
			["��ԭ��ʿ1"] = 10,
			["ҹ��ɮ1"] = 10,
			["��ԭ��ʿ1"] = 10,
			["��������1"] = 10,
			["��ԭ��ʿ3"] = 10,
			["��ɮ1"] = 10,
			["Ӱ��2"] = 10,
			["�ڰ��̿�5"] = 10,
			["а��"] = 20,
		}
	},
	{
		["msg"] ="�������������200, 237",
		["delay"] = 120,
		["monster"] =
		{
			["location"] = {200, 237},
			["�޶�"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["ɳʯħ5"] = 10,
			["ɢ��1"] = 10,
			["��ū2"] = 10,
			["�Źֵ���1"] = 10,
			["���浶��1"] = 10,
			["˫��������1"] = 10,
			["��ħ5"] = 10,
			["��ʯ����"] = 5,
			["��ԭ��ʿ1"] = 10,
			["ҹ��ɮ1"] = 10,
			["��ԭ��ʿ1"] = 10,
			["��������1"] = 10,
			["��ԭ��ʿ3"] = 10,
			["��ɮ1"] = 10,
			["Ӱ��2"] = 10,
			["�ڰ��̿�5"] = 10,
			["а��"] = 20,
		}
	},
	{
		["msg"] ="�������������263, 239",
		["delay"] = 120,
		["monster"] =
		{
			["location"] = {263, 239},
			["�޶�"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["ɳʯħ5"] = 10,
			["ɢ��1"] = 10,
			["��ū2"] = 10,
			["�Źֵ���1"] = 10,
			["���浶��1"] = 10,
			["˫��������1"] = 10,
			["��ħ5"] = 10,
			["��ʯ����"] = 5,
			["��ԭ��ʿ1"] = 10,
			["ҹ��ɮ1"] = 10,
			["��ԭ��ʿ1"] = 10,
			["��������1"] = 10,
			["��ԭ��ʿ3"] = 10,
			["��ɮ1"] = 10,
			["Ӱ��2"] = 10,
			["�ڰ��̿�5"] = 10,
			["а��"] = 20,
		}
	},
	{
		["msg"] ="�������������237, 203",
		["delay"] = 545,
		["monster"] =
		{
			["location"] = {237, 203},
			["�޶�"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["����1"] = 10,
			["ɳʯħ5"] = 10,
			["ɢ��1"] = 10,
			["��ū2"] = 10,
			["�Źֵ���1"] = 10,
			["���浶��1"] = 10,
			["˫��������1"] = 10,
			["��ħ5"] = 10,
			["��ʯ����"] = 5,
			["��ԭ��ʿ1"] = 10,
			["ҹ��ɮ1"] = 10,
			["��ԭ��ʿ1"] = 10,
			["��������1"] = 10,
			["��ԭ��ʿ3"] = 10,
			["��ɮ1"] = 10,
			["Ӱ��2"] = 10,
			["�ڰ��̿�5"] = 10,
			["а��"] = 20,
		}
	},
	{
		["msg"] ="�����ˣ������Ƿ�²����ħ����ˣ�����ħ���еĹ��ﶼ�ų����ˣ���ҿ��������ǰ���",
		["delay"] = 5,
	},
	{
		["msg"] ="�����ˣ������Ƿ�²�˽���ʹ�ߣ�������صĹ��ﶼ�ܳ����ˣ�",
		["delay"] = 180,
		["monster"] =
		{
			["location"] = {258, 297},
			["�׹�ħ��1"] = 5,
		}
	},
	{
		["delay"] = 180,
		["monster"] =
		{
			["location"] = {242, 281},
			["�׹�ħ��2"] = 5,
		}
	},
	{
		["delay"] = 180,
		["monster"] =
		{
			["location"] = {242, 281},
			["�׹�ħ��3"] = 5,
		}
	}, --15
	{
		["msg"] ="�����ˣ������Ƿ�²�˺�ͯ��С�����������ض���Ĺ��ﶼ�ܳ����ˣ�",
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����"] = 30,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����"] = 30,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����"] = 30,
		}
	},
	{
		["msg"] ="�����ˣ������Ƿ�²��ͨ��ʦ��Ư�����еĹ��ﶼ�ܳ����ˣ�",
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["��ħ�ػ���"] = 30,
			["��ħ����"] = 2,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["��ħ�ػ���"] = 30,
			["��ħ����"] = 2,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["��ħ�ػ���"] = 30,
			["��ħ����"] = 2,
		}
	},
	{
		["msg"] ="�����ˣ������Ƿ�²���������ߣ��������еĹ��ﶼ�ܳ����ˣ�",
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����ħ��"] = 150,
			["����ħ��"] = 2,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����ħ��"] = 150,
			["����ħ��"] = 2,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����ħ��"] = 150,
			["����ħ��"] = 2,
		}
	},
	{
		["msg"] ="�����ˣ��ƺ�GM�����ʱ�䣬���е�BOSS���ܳ����ˣ�",
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����ħ����"] = 20,
			["����ħ����"] = 20,
			["����ħ������Գ"] = 20,
			["����ħ������"] = 20,
			["����ħ��ڤʬ��"] = 20,
			["����ħţħ����"] = 10,
			["����ħѪ��ʦ"] = 9,
			["����ħ����ɮ"] = 8,
			["��ħ������"] = 1,
			["��ħ����ţ"] = 1,
			["��ħ������"] = 1,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����ħ����"] = 20,
			["����ħ����"] = 20,
			["����ħ������Գ"] = 20,
			["����ħ������"] = 20,
			["����ħ��ڤʬ��"] = 20,
			["����ħţħ����"] = 10,
			["����ħѪ��ʦ"] = 9,
			["����ħ����ɮ"] = 8,
			["��ħ������"] = 1,
			["��ħ����ţ"] = 1,
			["��ħ������"] = 1,
		}
	},
	{
		["delay"] = 180, 
		["monster"] =
		{
			["location"] = {250, 290},
			["����ħ����"] = 20,
			["����ħ����"] = 20,
			["����ħ������Գ"] = 20,
			["����ħ������"] = 20,
			["����ħ��ڤʬ��"] = 20,
			["����ħţħ����"] = 10,
			["����ħѪ��ʦ"] = 9,
			["����ħ����ɮ"] = 8,
			["��ħ������"] = 1,
			["��ħ����ţ"] = 1,
			["��ħ������"] = 1,
		}
	},
	{
		["msg"] ="�����������龪һ����ԭ���ǹ����Ƿ�²����ħ�������ˣ�����ļ�BOSS���ܳ����ˡ���",
		["delay"] = 10, 
	},
	{
		["msg"] ="�����ˣ����û����һ��Сʱ���������еĹ������һֻ���ﴫ�ͳ��������˳��⣬��ΪBOSS��ָ�������꣡",
		["delay"] = 10, 
	},
	{
		["msg"] ="BOSS�ǽ���һ���Ӻ���������ǵ����꡾235 205����",
		["delay"] = 60, 
	},
	{
		["msg"] ="���ǣ�������ڲ��õ�ǰ���ˣ����Ƕ������أ����ǲ������أ�",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["����"] = 1,
		}
	},
	{
		["msg"] ="���ߣ�������ô�������Һ;ջ���Զ����С�",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["����"] = 1,
		}
	},
	{
		["msg"] ="������Գ������ֿ��Գ������ˣ����Ǳ��ԣ�",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["������Գ"] = 1,
		}
	},
	{
		["msg"] ="���������ö��ͷ�������ͷ�����Ǹ�Ҳ�ܺã��Ҹû��ĸ���ͷ�أ�",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["������"] = 1,
		}
	},
	{
		["msg"] ="��ڤʬ������Ѫ�����㣬����ϴ�����ԡ¶�ö��ˡ�",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["��ڤʬ��"] = 1,
		}
	},
	{
		["msg"] ="ǧ����ħ���𡪡����ֳ����ˡ�����Ϊʲô˵���֡��أ�",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["ǧ����ħ"] = 1,
		}
	},
	{
		["msg"] ="ţħ������ϲɱɱϲɱɱ��ϲɱɱ�������ǲ����е�ɵ����",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["ţħ����"] = 1,
		}
	},
	{
		["msg"] ="Ѫ��ʦ�������ĸ����ǣ������ҵ�ŭ��ɣ��ס���̫�������ǲ������ױ��ϣ��ҵ���˪��˪���ײ��ˡ���",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["Ѫ��ʦ"] = 1,
		}
	},
	{
		["msg"] ="����ɮ�������������ڳɹ��ˣ��ɶ�����࣡�ҽ������Ǵ�����������ޣ���������̨���ǲ����е��ã�",
		["delay"] = 5,
		["monster"] =
		{
			["location"] = {202, 190},
			["����ɮ"] = 1,
		}
	},
}

--local curindex = 1						--��ǰ���������
lualib:SetInt("0", "gwgc2_curindex", 1);
--local map_name ="����"					--��ǰ��ͼ����
lualib:SetStr("0", "gwgc2_map_name", "����");
local monsterRange = 7					--����ˢ������Χ
local time_quotiety = 1000				--ʱ��ϵ��
--local pause_table = false 				--�Ƿ���ͣ����������
lualib:SetInt("0", "gwgc2_pause_table", 0);

function siege(id, map, times)	
	local curindex = lualib:GetInt("0", "gwgc2_curindex");
	lualib:SysMsg_SendTopMsg(1, data_table[curindex]["msg"])
	lualib:SysMsg_SendBroadcastColor(data_table[curindex]["msg"], "", 1, 12)
	local map_name = lualib:GetStr("0", "gwgc2_map_name");
	lualib:AddTimer(lualib:Map_GetMapGuid(map_name), 1, data_table[curindex]["delay"] * time_quotiety, 1,"on_timer")
end

function on_timer()
	local curindex = lualib:GetInt("0", "gwgc2_curindex");
	curindex = curindex + 1;
	lualib:SetInt("0", "gwgc2_curindex", curindex);
	local map_name = lualib:GetStr("0", "gwgc2_map_name");
	--����Ƿ���msg
	lualib:Print(tostring(curindex));
	--������Ϣ
	if(data_table[curindex]["msg"] ~= nil) then
		lualib:SysMsg_SendBroadcastColor(data_table[curindex]["msg"], "", 1, 12);
	end
	--����Ƿ�Ҫˢ��, ��˳����������
	if(data_table[curindex]["monster"] ~= nil) then
		for key, value in pairs(data_table[curindex]["monster"]) do
			if(key ~="location" and lualib:MonsterKey2ID(key) > 0) then
				lualib:Map_GenMonster(lualib:Map_GetMapGuid(map_name), data_table[curindex]["monster"]["location"][1], 
					data_table[curindex]["monster"]["location"][2], monsterRange, lualib:GenRandom(0, 7), key, value, false);
				lualib:Print(key);
				if(key =="����" or key =="����" or key =="������Գ" or key =="������" or key =="��ڤʬ��" or key =="ǧ����ħ" or key =="Ѫ��ʦ" or key =="����ɮ") then
					--boss���˲Ż�ˢ����һ��
					lualib:Print(key);
					--pause_table = true;
					lualib:SetInt("0", "gwgc2_pause_table", 1);
					local map_guid = lualib:Map_GetMapGuid(map_name);
					local monsters = lualib:Map_GetRegionMonsters(map_guid, key, data_table[curindex]["monster"]["location"][1], 
									data_table[curindex]["monster"]["location"][2], monsterRange + 2, true, true);
					if  monsters ~= nil then
						lualib:AddTrigger(monsters[1],  lua_trigger_post_die,"on_trigger_post_die");
					end
				end
			end
		end
	end
	if (curindex >= table.getn(data_table)) then
		return;
	end
	local pause_table = lualib:GetInt("0", "gwgc2_pause_table");
	if (pause_table == 0) then
		--���ö�ʱ, ������һ���������
		lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_table[curindex]["delay"] * time_quotiety, 1,"on_timer")
	end
end

function on_trigger_post_die(actor, killer)
	--pause_table = false;
	lualib:SetInt("0", "gwgc2_pause_table", 0);
	local curindex = lualib:GetInt("0", "gwgc2_curindex");
	local map_name = lualib:GetStr("0", "gwgc2_map_name");
	lualib:AddTimer(lualib:Map_GetMapGuid(map_name), curindex, data_table[curindex]["delay"] * time_quotiety, 1,"on_timer");
end
