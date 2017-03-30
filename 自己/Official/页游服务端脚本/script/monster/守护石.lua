local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/�غ���ӡ����")
require("map/�غ���ӡ")
require("system/logic_def_lua")


local shouhushi_shengji =
{
		--["����"]	=	{{"Ⱥ������ػ���", 5, "Ⱥ�����"}, {"���嶨���ػ���", 5, "���嶨��"}},
		--["Ⱥ��"]	=	{{"1��Ⱥ���ػ���",  2, "1��Ⱥ�� "},  {"2��Ⱥ���ػ���",  3, "2��Ⱥ�� "}, {"3��Ⱥ���ػ���", 5, "3��Ⱥ�� "}, {"4��Ⱥ���ػ���", 8, "4��Ⱥ�� "}},
		["����"]	=	{{"1�������ػ���",  1, "1������ "},  {"2�������ػ���",  2, "2������ "}, {"3�������ػ���", 4, "3������ "}, {"4�������ػ���", 7, "4������ "}},
		
		
	
}


local cailiao = "�ٻ�ʯ"




function main(monster, player)
	local msg = ""
	local map = lualib:MapGuid(monster)
	local x = lualib:X(monster)
	local y = lualib:Y(monster)
	local keyname = lualib:KeyName(monster)


	msg = msg .."#IMAGE<ID:1990340034>##COLORCOLOR_BROWN#��ѡ��Ҫ�ٻ���������#COLOREND#\n"
		for k, v in pairs(shouhushi_shengji) do
			msg = msg .."#IMAGE<ID:1902700042>##COLORCOLOR_RED#"..k.."#COLORCOLOR_END#\n"
			for k1, v1 in pairs(v) do
				msg = msg .."#OFFSET<X:15,Y:0>##COLORCOLOR_GREENG#"..v1[3].."#COLORCOLOR_END##COLORCOLOR_WHITE#("..v1[2].."���ٻ�ʯ)#COLORCOLOR_END#"
				msg = msg .."#OFFSET<X:15,Y:0>##IMAGE<ID:1902700018>#".."<@shouhu_sj".."#"..map.."#"..x.."#"..y.."#"..monster.."#"..keyname.."#"..v1[1].."#"..v1[2].. " *01*[�ٻ�]>\n"
			end
		end
	lualib:NPCTalkDetail(player, msg, 265, 310)
	

	

	return ""
end

function on_create(monster)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_born")
end

function on_born(monster)
	lualib:AddBuff(monster, "�޵�", 0)
end

function shouhu_sj(player, map, x, y, monster, keyname, xuanze, num)
	local playername = lualib:Name(player)
	local mapname = lualib:Name(map)
    local bangding_count = lualib:ItemCountByKey(player, cailiao, true, false, false, 1)
    local bubang_count = lualib:ItemCountByKey(player, cailiao, true, false, false, 0)
    local itemnum = bangding_count + bubang_count
	num = tonumber(num)
		if keyname == xuanze then
			lualib:SysMsg_SendPromptMsg(player, "�������Ѿ���"..xuanze.."�ˣ�")
		else
			if itemnum < num then
				lualib:SysMsg_SendPromptMsg(player, "��Ĳ��ϲ��㣬�޷��ٻ���")
				return ""
			else
				if	lualib:Monster_Remove(monster) == true then
                    if bangding_count >= num then
                        lualib:DelItem(player, cailiao, num, 1, "�ٻ�����ɾ��", player)
                    else					
                        if not lualib:DelItem(player, cailiao, num - bangding_count, 0, "�ٻ�����ɾ��", player) then
							lualib:SysMsg_SendPromptMsg(player, "�۳�����ʧ��")
							return
						end
                    end
					lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 0, 4, xuanze, 1, true)
					--��Ϊ��Ӫ1���ͽ����ͼ�����һ��
					local sw_guid = lualib:Map_GetRegionMonsters(map, xuanze, tonumber(x), tonumber(y), 0, false, false) 
					if  sw_guid[1] == nil then
						lualib:SysMsg_SendPromptMsg(player, "������վ��λ������������������λ�ã������ٻ�ʧ�ܣ�")
						lualib:AddItem(player, cailiao, num, true, "����û�г����㣬�����ٻ�ʯ�����", player)
						return ""
					else
						lualib:SetCamp(sw_guid[1], 1)
						local zheny = lualib:Camp(sw_guid[1])
						lualib:SysMsg_SendPromptMsg(player, "�ٻ������ɹ�")
					end
				end
			end
		end
	
	return ""
end
