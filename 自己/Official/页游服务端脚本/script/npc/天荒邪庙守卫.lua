local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/����ϵͳ")
require("system/�ۺϹ���")

gQuestMap =
{
   {2020, "QuestAccept2020", "","*01*����: �����ԭ��ʿ", ""},
   {2021, "QuestAccept2021", "","*01*����: ���ҹ��ɮ", ""},
   {2022, "QuestAccept2022", "","*01*����: �����ԭ��ʿ", ""},
   {2023, "QuestAccept2023", "","*01*����: ��˹�������", ""},
   {2024, "QuestAccept2024", "","*01*����: �����ԭ��ʿ", ""}
}
gQuestNum = table.getn(gQuestMap)


function main(npc, player)

	xiemiaozhengfudian = 4/100*lualib:GetInt(player,"xiemiaozhengfu1")
				+5/100*lualib:GetInt(player,"xiemiaozhengfu2")
				+6/100*lualib:GetInt(player,"xiemiaozhengfu3")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu4")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu5")
				+7/100*lualib:GetInt(player,"xiemiaozhengfu6")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu7")
				+8/100*lualib:GetInt(player,"xiemiaozhengfu8")
				+8/12*lualib:GetInt(player,"xiemiaozhengfu9")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu10")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu11")
				--+5/8*lualib:GetInt(player,"xiemiaozhengfu12")
				+10/40*lualib:GetInt(player,"xiemiaozhengfu13")
				+10/1*lualib:GetInt(player,"xiemiaozhengfu14")
				
	if xiemiaozhengfudian >= 10 and string.len(tostring(xiemiaozhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,5)
	elseif xiemiaozhengfudian < 10 and string.len(tostring(xiemiaozhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		xiemiaozhengfudxs = string.sub(xiemiaozhengfudian,1,4)
	else
		xiemiaozhengfudxs = xiemiaozhengfudian
	end

	local msg = "���а����а��ͽ��Ű��������Ǻð���\n \n"
	msg = msg.."#COLORCOLOR_RED#�ڵ�ͼ��̽��ð��ʱ�᲻֪�������ӶԵ�ͼ�������ȣ���������ȡ���ֽ�����#COLOREND##COLORCOLOR_GREENG#���а��#COLOREND##COLORCOLOR_BLUE#�ʺ�35-45��̽��#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian3 *01*�鿴��������>   Ŀǰ����#COLORCOLOR_ORANGE#"..xiemiaozhengfudxs.."%#COLOREND#\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*[�뿪]>\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end

	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "����ͼʧ�ܣ�\n \n<@main *01*����>" end
	return ""
end


---2020��
function QuestAccept2020(npc,player)
    msg = "���а���������һȺа��ͽ������ȥ����20����ԭ��ʿ��\n \n"
	msg = msg.."<@Accept2020 *01* ��������>\n"
	return msg
end


function Accept2020(npc, player)
    if lualib:AcceptQuest(player, 2020) == true then
        return "���а������ʮ��Σ�գ������С�ģ�"
    else
        return "��35���������Ұ�"
    end
end


---2021��
function QuestAccept2021(npc,player)
    msg = "���а���������һȺа��ͽ������ȥ����20��ҹ��ɮ��\n \n"
	msg = msg.."<@Accept2021 *01* ��������>\n"
	return msg
end


function Accept2021(npc, player)
    if lualib:AcceptQuest(player, 2021) == true then
        return "���а������ʮ��Σ�գ������С�ģ�"
    else
        return "��35���������Ұ�"
    end
end



---2022��
function QuestAccept2022(npc,player)
    msg = "���а���������һȺа��ͽ������ȥ����20����ԭ��ʿ��\n \n"
	msg = msg.."<@Accept2022 *01* ��������>\n"
	return msg
end


function Accept2022(npc, player)
    if lualib:AcceptQuest(player, 2022) == true then
        return "���а������ʮ��Σ�գ������С�ģ�"
    else
        return "��35���������Ұ�"
    end
end


---2023��
function QuestAccept2023(npc,player)
    msg = "���а���������һȺа��ͽ������ȥ����20���������ߡ�\n \n"
	msg = msg.."<@Accept2023 *01* ��������>\n"
	return msg
end


function Accept2023(npc, player)
    if lualib:AcceptQuest(player, 2023) == true then
        return "���а������ʮ��Σ�գ������С�ģ�"
    else
        return "��35���������Ұ�"
    end
end


---2024��
function QuestAccept2024(npc,player)
    msg = "���а���������һȺа��ͽ������ȥ����20����ԭ��ʿ��\n \n"
	msg = msg.."<@Accept2024 *01* ��������>\n"
	return msg
end


function Accept2024(npc, player)
    if lualib:AcceptQuest(player, 2024) == true then
        return "���а������ʮ��Σ�գ������С�ģ�"
    else
        return "��35���������Ұ�"
    end
end