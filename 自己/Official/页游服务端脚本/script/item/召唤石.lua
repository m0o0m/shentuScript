local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


local shouhushi_shengji =
{
		--["����"]	=	{{"Ⱥ������ػ���", 5, "Ⱥ�����"}, {"���嶨���ػ���", 5, "���嶨��"}},
		--["Ⱥ��"]	=	{{"1��Ⱥ���ػ���",  2, "1��Ⱥ�� "},  {"2��Ⱥ���ػ���",  3, "2��Ⱥ�� "}, {"3��Ⱥ���ػ���", 5, "3��Ⱥ�� "}, {"4��Ⱥ���ػ���", 8, "4��Ⱥ�� "}},
		["����"]	=	{{"1�������ػ���",  1, "1������ "},  {"2�������ػ���",  2, "2������ "}, {"3�������ػ���", 4, "3������ "}, {"4�������ػ���", 7, "4������ "}},
		
		
	
}


local cailiao = "�ٻ�ʯ"




function main(player, item)
	local msg = ""
	local map = lualib:MapGuid(player)
	local mapkeyname = lualib:KeyName(map)
	local x = lualib:X(player)
	local y = lualib:Y(player)

	if mapkeyname == "�غ���ӡ" then


	msg = msg .."#IMAGE<ID:1990340034>##COLORCOLOR_BROWN#��ѡ��Ҫ�ٻ���������#COLOREND#\n"
		for k, v in pairs(shouhushi_shengji) do
			msg = msg .."#IMAGE<ID:1902700042>##COLORCOLOR_RED#"..k.."#COLORCOLOR_END#\n"
			for k1, v1 in pairs(v) do
				msg = msg .."#OFFSET<X:15,Y:0>##COLORCOLOR_GREENG#"..v1[3].."#COLORCOLOR_END##COLORCOLOR_WHITE#("..v1[2].."���ٻ�ʯ)#COLORCOLOR_END#"
				msg = msg .."#OFFSET<X:15,Y:0>##IMAGE<ID:1902700018>#".."<@shouhu_sj".."#"..map.."#"..x.."#"..y.."#"..mapkeyname.."#"..v1[1].."#"..v1[2].. " *01*[�ٻ�]>\n"
			end
		end
	lualib:NPCTalkDetail(player, msg, 265, 310)
	
	else
		lualib:SysMsg_SendPromptMsg(player, "�ٻ�ʯֻ����[�غ���ӡ]��ʹ�ã�")
		return false
	end
	

	return true
end


function shouhu_sj(player, map, x, y, mapkeyname, monsterkeyname, num)
	local playername = lualib:Name(player)
	local mapname = lualib:Name(map)
    local bangding_count = lualib:ItemCountByKey(player, cailiao, true, false, false, 1)
    local bubang_count = lualib:ItemCountByKey(player, cailiao, true, false, false, 0)
    local itemnum = bangding_count + bubang_count
	r = lualib:GenRandom(-3, 3)
	local num = tonumber(num)
	local x = tonumber(x)
	local y = tonumber(y) + 1

	local have_m = lualib:Map_GetRegionMonsters(map, "", tonumber(x), tonumber(y), 1, true, false) 
	

	for i = 1, #have_m do
		if have_m[i] ~= nil then
			lualib:SysMsg_SendPromptMsg(player, "������Ҫ�ٻ���λ��1��Χ����������ڣ������ٻ�ʧ�ܣ�")
			return ""
		end
	end

	if itemnum < num then
		lualib:SysMsg_SendPromptMsg(player, "��Ĳ��ϲ��㣬�޷��ٻ���")
		return ""
	else
		
        if bangding_count >= num then
            if lualib:DelItem(player, cailiao, num, 1, "�ٻ�����ɾ��", player) == false then
				lualib:SysMsg_SendPromptMsg(player, "�۳�����ʧ��")
				return ""
			else
				lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 0, 4, monsterkeyname, 1, true)
				--��Ϊ��Ӫ1���ͽ����ͼ�����һ��
				local sw_guid = lualib:Map_GetRegionMonsters(map, monsterkeyname, tonumber(x), tonumber(y), 0, false, false) 
				for i = 1, #sw_guid do
					lualib:SetCamp(sw_guid[i], 1)
					local zheny = lualib:Camp(sw_guid[1])
					lualib:SysMsg_SendPromptMsg(player, "�ٻ������ɹ�")
				end
			end
        else

				if lualib:DelItem(player, cailiao, num - bangding_count, 0, "�ٻ�����ɾ��", player) == false then
					lualib:SysMsg_SendPromptMsg(player, "�۳�����ʧ��")
					return ""
				else
					lualib:Map_GenMonster(map, tonumber(x), tonumber(y), 0, 4, monsterkeyname, 1, true)
					--��Ϊ��Ӫ1���ͽ����ͼ�����һ��
					local sw_guid = lualib:Map_GetRegionMonsters(map, monsterkeyname, tonumber(x), tonumber(y), 0, false, false) 
					for i = 1, #sw_guid do
						lualib:SetCamp(sw_guid[i], 1)
						local zheny = lualib:Camp(sw_guid[1])
						lualib:SysMsg_SendPromptMsg(player, "�ٻ������ɹ�")
					end
				end


		end

	end

	
	return ""
end
