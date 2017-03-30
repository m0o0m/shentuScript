local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/����ϵͳ")
require("system/�ۺϹ���")

gQuestMap =
{
   {2010, "QuestAccept2010", "","*01*����: ���ʬū", ""},
   {2011, "QuestAccept2011", "","*01*����: ��˹���๤", ""},
   {2012, "QuestAccept2012", "","*01*����: �������๤", ""},
   {2013, "QuestAccept2013", "","*01*����: ��˾��ʬū", ""}
}
gQuestNum = table.getn(gQuestMap)


function main(npc, player)
	yaoshanzhengfudian = 4/30*lualib:GetInt(player,"yaoshanzhengfu1")
				+5/30*lualib:GetInt(player,"yaoshanzhengfu2")
				+6/30*lualib:GetInt(player,"yaoshanzhengfu3")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu4")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu5")
				+7/30*lualib:GetInt(player,"yaoshanzhengfu6")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu7")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu8")
				+8/30*lualib:GetInt(player,"yaoshanzhengfu9")
				+10/3*lualib:GetInt(player,"yaoshanzhengfu10")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu11")
				--+6/2*lualib:GetInt(player,"yaoshanzhengfu12")
				+10/10*lualib:GetInt(player,"yaoshanzhengfu13")
				+10/1*lualib:GetInt(player,"yaoshanzhengfu14")
				
	if yaoshanzhengfudian >= 10 and string.len(tostring(yaoshanzhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,5)
	elseif yaoshanzhengfudian < 10 and string.len(tostring(yaoshanzhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		yaoshanzhengfudxs = string.sub(yaoshanzhengfudian,1,4)
	else
		yaoshanzhengfudxs = yaoshanzhengfudian
	end

	local msg = "Ϊʲô�����ͻȻ������ô����ħ��\n \n"
	msg = msg.."#COLORCOLOR_RED#�ڵ�ͼ��̽��ð��ʱ�᲻֪�������ӶԵ�ͼ�������ȣ���������ȡ���ֽ�����#COLOREND##COLORCOLOR_GREENG#��ɽ��Ѩ#COLOREND##COLORCOLOR_BLUE#�ʺ�25-30��̽��#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian1 *01*�鿴��������>   Ŀǰ����#COLORCOLOR_ORANGE#"..yaoshanzhengfudxs.."%#COLOREND#\n \n \n"
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


---2010��
function QuestAccept2010(npc,player)
    msg = "��ɽ��Ѩ���ͻȻð�������������ȥ����20ֻʬū��\n \n"
	msg = msg.."<@Accept2010 *01* ��������>\n"
	return msg
end


function Accept2010(npc, player)
    if lualib:AcceptQuest(player, 2010) == true then
        return "��ɽ��Ѩ����ʮ��Σ�գ������С�ģ�"
    else
        return "��29���������Ұ�"
    end
end


---2011��
function QuestAccept2011(npc,player)
    msg = "��ɽ��Ѩ���ͻȻð�������������ȥ����20ֻ����๤��\n \n"
	msg = msg.."<@Accept2011 *01* ��������>\n"
	return msg
end


function Accept2011(npc, player)
    if lualib:AcceptQuest(player, 2011) == true then
        return "��ɽ��Ѩ����ʮ��Σ�գ������С�ģ�"
    else
        return "��29���������Ұ�"
    end
end



---2012��
function QuestAccept2012(npc,player)
    msg = "��ɽ��Ѩ���ͻȻð�������������ȥ����20ֻ����๤��\n \n"
	msg = msg.."<@Accept2012 *01* ��������>\n"
	return msg
end


function Accept2012(npc, player)
    if lualib:AcceptQuest(player, 2012) == true then
        return "��ɽ��Ѩ����ʮ��Σ�գ������С�ģ�"
    else
        return "��29���������Ұ�"
    end
end


---2013��
function QuestAccept2013(npc,player)
    msg = "��ɽ��Ѩ���ͻȻð�������������ȥ����20ֻ���ʬū��\n \n"
	msg = msg.."<@Accept2013 *01* ��������>\n"
	return msg
end


function Accept2013(npc, player)
    if lualib:AcceptQuest(player, 2013) == true then
        return "��ɽ��Ѩ����ʮ��Σ�գ������С�ģ�"
    else
        return "��29���������Ұ�"
    end
end