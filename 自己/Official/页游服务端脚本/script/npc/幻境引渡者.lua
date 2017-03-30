silverToTime =
	{
	{["silver"] = 200,  ["time"] = 1 },
	{["silver"] = 400,  ["time"] = 2 },
	{["silver"] = 600,  ["time"] = 3 },
	{["silver"] = 1000, ["time"] = 5 },
	{["silver"] = 1600, ["time"] = 8 },
	{["silver"] = 2400, ["time"] = 12},
	{["silver"] = 4800, ["time"] = 24}
	}

function main(npc, player)
    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#���ػþ�#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
    msg = msg.."�����ˣ�׼�����˽���þ�̽��ô��\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:0>#<@DreamlandIntro *01*���þ����ܡ�      >#OFFSET<X:0,Y:0>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-1>#<@TimeInquires *01*��ʱ���ѯ��    > #OFFSET<X:0,Y:1>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@CulStoneExchage *01*������ʯ�һ���>\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#"
	msg = msg .. "        #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@EnterMap              *01*����þ�>                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@Leave                 *01*���뿪��>"
    return msg
end

--<@SilverExchage         *01*��Ԫ���һ���>

--����þ�
function EnterMap(npc, player)
	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#���ػþ�#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg .. "����þ�������ʱ�佫��ʼ�۳����Ƿ�ȷ�Ͻ��룿\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_RED#����ǰʣ��Ļþ�����ʱ��Ϊ:#COLOREND#" .. hour .. "Сʱ" .. minute .. "��" .. second .. "��\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg .. "          #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@ToMap *01*ȷ�Ͻ���þ�>               #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg
end

function ToMap(npc, player)
	local msg = "<@huanjinggoto#�þ�1#190#75#10 *01*����þ�һ��>\n"
	msg = msg .. "<@huanjinggoto#�þ�2#7#107#10 *01*����þ�����>\n"
	msg = msg .. "<@huanjinggoto#�þ�3#15#126#10 *01*����þ�����>\n"
	msg = msg .. "<@huanjinggoto#�þ�4#293#231#10 *01*����þ��Ĳ�>\n"
	msg = msg .. "<@huanjinggoto#�þ�5#18#222#10 *01*����þ����>\n"
	msg = msg .. "<@huanjinggoto#�þ�6#18#168#10 *01*����þ�����>\n"
	msg = msg .. "<@huanjinggoto#�þ�7#244#165#10 *01*����þ��߲�>\n"
	msg = msg .. "<@huanjinggoto#�þ�8#117#161#10 *01*����þ��˲�>\n"
	return msg
end

function huanjinggoto(npc, player,mapname,x,y,r)
	if lualib:Player_GetCustomVarInt(player, "time") <= 0 then
		return "���Ļþ�����ʱ��Ϊ0���޷�����þ�\n" .. "\n \n \n \n \n \n                                            #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	else
		lualib:Player_MapMoveXY(player, mapname, tonumber(x), tonumber(y), tonumber(r))
		return ""
	end
end

--Ԫ���һ�ʱ��
function SilverExchage(npc, player)
         local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#���ػþ�#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg .. "��ѡ��һ���Ԫ��������\n"
	msg = msg .. "����ʾ�����ζһ���ʱ��Խ�࣬���ѵ�Ԫ������Խ�٣�\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#"
	for i = 1, #silverToTime do
		msg = msg .. "<@silFunc1#".. i .." *01*�һ�" .. silverToTime[i]["time"] .. "Сʱ(" .. silverToTime[i]["silver"] .. "Ԫ��)>\n"
	end
	msg = msg .. "\n��������������������������������������������#OFFSET<X:0,Y:-8>##IMAGE<ID:1902700019>#<@main *01*�����ء�>"
	return msg
end

function silFunc1(npc, player, s)
	s = tonumber(s)
	local msg = ""
	msg = msg .. "��ȷ��Ҫ��" .. silverToTime[s]["silver"] .."Ԫ���һ�" .. silverToTime[s]["time"] .. "Сʱ����ʱ����\n \n \n \n \n"
	msg = msg .. "<@silFunc#" .. s .. " *01*ȷ��>"
	msg = msg .. "#IMAGE<ID:1902700019>#<@main *01*�����ء�>"
	return msg
end

function silFunc(npc, player, s)
	s = tonumber(s)
	if lualib:Player_IsIngotEnough(player, silverToTime[s]["silver"], false) then
		if lualib:Player_SubIngot(player, silverToTime[s]["silver"], false, "��Ԫ�����þ������߶һ�ʱ��", "�þ�������") == false then
			return "�۳�Ԫ��ʧ��"
		end
		
		lualib:Player_SetCustomVarInt(player, "time", lualib:Player_GetCustomVarInt(player, "time") + silverToTime[s]["time"] * 3600)
		return "���Ѿ��ɹ�����" .. silverToTime[s]["silver"] .. "Ԫ���һ���" .. silverToTime[s]["time"] .. "Сʱ����ʱ��\n" .. "\n \n \n \n \n \n \n#IMAGE<ID:1902700019>#<@main *01*����>"
	else
		return "�㵱ǰ��Ԫ������\n \n \n \n \n \n \n#IMAGE<ID:1902700019>#<@main *01*�����ء�>"
	end
end

--����ʯ�һ�ʱ��
function CulStoneExchage(npc, player)
    local msg = ""
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#���ػþ�#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg .. "��������#COLORCOLOR_GOLD#������ʯ��#COLOREND#������������һ�����þ�������ʱ�䣬һ������ʯ���Զһ�30���ӵĻþ�����ʱ��\n\n"
    msg = msg .. "#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#"
	msg = msg .. "������#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@Cul *01*������ʯ�һ���>����������           ��#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main    *01*�����ء�>\n\n"
	return msg
end

function Cul(npc, player)
	if lualib:Player_GetItemCount(player, "����ʯ") >= 1 then
		lualib:Player_DestroyItem(player, "����ʯ", 1, "����ʯ�һ��þ�����ʱ��", "�þ�������");
		lualib:Player_SetCustomVarInt(player, "time", lualib:Player_GetCustomVarInt(player, "time") + 1800)
		return "���һ���30���ӵĻþ�����ʱ��\n" .. "\n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	else
		return "��������û������ʯ\n" .. "\n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end
end

function DreamlandIntro(npc, player)
    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#���ػþ�#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "��أ���أ����������ֻأ�ʱ���������أ����Ǿ�����ϣ��ͬ�ڣ������������սʱ�����������˺������أ�Ҳͬʱ�����������������ڣ���Ƭ�þ���������֮һ�������棬�㽫��ʶ�����ֵߵ���Խ�Ĺ��������㹻�������������Եõ��߼�����ϡװ����������ǧ��Ҫ��ס���治���棬�ٲ��Ǽ٣�\n"
	msg = msg .. "#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#"
	msg = msg .. "                                                 #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function TimeInquires(npc, player)
	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
	return "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#���ػþ�#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n#COLORCOLOR_RED#����ǰʣ��Ļþ�����ʱ��Ϊ:#COLOREND#" .. hour .. "Сʱ" .. minute .. "��" .. second .. "��" .. "\n#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function Leave(npc, player)
	return ""
end
