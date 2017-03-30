silverToTime =
	{
	{["silver"] = 100,  ["time"] = 1 },
	{["silver"] = 200,  ["time"] = 2 },
	{["silver"] = 490,  ["time"] = 5 },
	{["silver"] = 960, ["time"] = 10 },
	{["silver"] = 1900, ["time"] = 20 },
	{["silver"] = 4850, ["time"] = 50},
	{["silver"] = 9500, ["time"] = 100}
	}

	local talk_t = {"�봩Խ���봩Խ���봩Խ���ﲻ��������", "��Խ��һ����������飬���ൽ������׼Ц��", "����ر�����Ҫʱ֮ɳ�����ر������и�����������Ӵ~~"}

function on_create(npc)
	--lualib:AddTimer(npc, 1, 260000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		--[[lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])--]]

end

function main(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#   ������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ر���#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
    msg = msg.."    �ر����ڲ��и���#COLORCOLOR_YELLOW#[����]#COLOREND#��#COLORCOLOR_GREENG#[����]#COLOREND##COLORCOLOR_RED#������Ǯ���޷��򵽣�#COLOREND#\n                  #COLORCOLOR_GREENG#��������Ҫ�һ�ʱ�䡿#COLOREND#\n \n"
    msg = msg .. "#IMAGE<ID:1902700037>#<@CulStoneExchage *01*[�볡ʱ��һ�]>        #IMAGE1902700042#<@TimeInquires *01*[����ʱ���ѯ]>\n \n"
	msg = msg .. "#IMAGE<ID:1902700017>#<@DreamlandIntro *01*[�鿴������Ʒ]>        #IMAGE1902700031#<@hec *01*[�ϳ��ռ�����]>\n \n"
	msg = msg .. "#IMAGE<ID:1902700018>#<@EnterMap *01*[����ر���]>\n"
--]]	return msg
end

--#OFFSET<X:0,Y:2>##IMAGE<ID:1902700032>##OFFSET<X:0,Y:-2>#<@SilverExchage *01*��Ԫ���һ���>    

--����ر���
function EnterMap(npc, player)
--[[	local talkX, talkY = 418, 250
	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
    local msg = "#COLORCOLOR_BROWN#������#COLOREND##COLORCOLOR_SKYBLUE#�ر���#COLOREND##COLORCOLOR_BROWN#������#COLOREND##COLORCOLOR_SKYBLUE#��ʣ��̽��ʱ��:#COLOREND#" .. hour .. "Сʱ" .. minute .. "��" .. second .. "��#COLORCOLOR_BROWN#������\n"
	msg = msg.."#COLORCOLOR_RED#���벻ͬ�ĵ�ͼ�����۳���ʱ��᲻ͬ������ر����̽��ʱ�佫��ʼ�۳���ʱ�䲻����Զ��ص�����#COLOREND#����Ҫȥ�ģ�\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@huanjinggoto#ľ����#181#182#5 *01*����ľ����>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30-40������������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@huanjinggoto#ľ����2#181#182#5 *01*�м�ľ����>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�40-50������������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@huanjinggoto#ľ����3#181#182#5 *01*�߼�ľ����>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�50-60������������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@huanjinggoto#������#61#68#5 *01*����������>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30���ϣ������ĵ���#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@huanjinggoto#�䱦��#27#104#5 *01*�����䱦��>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30���ϣ������ĵ���#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@huanjinggoto#��ħ��#158#160#5 *01*������ħ��>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30���ϣ����BOSS�ۼ�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@huanjinggoto#�ٲ���#18#27#5 *01*����ٲ���>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30���ϣ����������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@huanjinggoto#������#22#39#5 *01*����������>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30���ϣ���ϡ������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@huanjinggoto#�ؾ�¥#27#74#5 *01*����ؾ�¥>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�50-65�������ռ�����#COLOREND#\n"
	lualib:NPCTalkDetailEx(npc, player, msg, talkX, talkY)--]]
	return ""
end

function huanjinggoto(npc, player,mapname,x,y,r)
--[[	if lualib:Player_GetCustomVarInt(player, "time") <= 0 then
		return "����̽��ʱ��Ϊ0���޷�����ر���\n" .. "\n \n \n \n \n \n                                            #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	else
		local gold = 2000
		if mapname ~= "ľ����" then
			if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ɽ���ϱ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
			lualib:Player_MapMoveXY(player, mapname, tonumber(x), tonumber(y), tonumber(r))
		else
			lualib:Player_MapMoveXY(player, mapname, tonumber(x), tonumber(y), tonumber(r))
		end
		return ""
	end--]]
end
--Ԫ���һ�ʱ��
function SilverExchage(npc, player)
--[[         local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ر���#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg .. "����ʾ�����ζһ���ʱ��Խ�࣬���ѵ�Ԫ������Խ�٣�\n"
	msg = msg .. "��ѡ��һ���Ԫ��������\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	for i = 1, #silverToTime do
		msg = msg .. "#IMAGE<ID:1902700032>#<@silFunc1#".. i .." *01*�һ���" .. silverToTime[i]["time"] * 60 ..  "���ӡ�(" .. silverToTime[i]["silver"] .. "Ԫ��)>\n"
	end
	msg = msg .. "\n                                              #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
--]]	return msg
end

function silFunc1(npc, player, s)
--[[	s = tonumber(s)
	local msg = ""
	msg = msg .. "��ȷ��Ҫ��" .. silverToTime[s]["silver"] .."Ԫ���һ�" .. silverToTime[s]["time"] * 60 .. "����̽��ʱ����\n \n \n \n \n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-2>#<@silFunc#" .. s .. " *01*��ȷ����>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@SilverExchage *01*�����ء�>"
--]]	return msg
end

function silFunc(npc, player, s)
--[[	s = tonumber(s)
	if lualib:Player_IsIngotEnough(player, silverToTime[s]["silver"], false) then
		if lualib:Player_SubIngot(player, silverToTime[s]["silver"], false, "��Ԫ�����þ������߶һ�ʱ��", "�þ�������") == false then
			return "�۳�Ԫ��ʧ��"
		end
		
		lualib:Player_SetCustomVarInt(player, "time", lualib:Player_GetCustomVarInt(player, "time") + silverToTime[s]["time"] * 3600)
		return "���Ѿ��ɹ�����" .. silverToTime[s]["silver"] .. "Ԫ���һ���" .. silverToTime[s]["time"] * 60 .. "����̽��ʱ��\n" .. "\n \n \n \n \n \n \n#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*[������ҳ]>"
	else
		return "�㵱ǰ��Ԫ������\n \n \n \n \n \n \n#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	end--]]
end

--ʱ֮ɳ���һ�ʱ��
function CulStoneExchage(npc, player)
--[[    local msg = ""
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ر���#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg .. "��������#COLORCOLOR_GOLD#��ʱ֮ɳ����#COLOREND#������������һ�����ر����̽��ʱ�䣬һ��ʱ֮ɳ�����Զһ�30���ӵ�̽��ʱ��\n\n"
    msg = msg .. "#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@Cul *01*��ʱ֮ɳ���һ�̽��ʱ�䡹>\n                         ����������           ��#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main    *01*�����ء�>\n\n"
--]]	return msg
end

function Cul(npc, player)
--[[	local time = lualib:Player_GetCustomVarInt(player, "time") + 1800
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)

	if lualib:Player_GetItemCount(player, "ʱ֮ɳ��") >= 1 then
		lualib:Player_DestroyItem(player, "ʱ֮ɳ��", 1, "ʱ֮ɳ���һ��þ�����ʱ��", "�ر������NPC");
		lualib:Player_SetCustomVarInt(player, "time", lualib:Player_GetCustomVarInt(player, "time") + 1800)
		return "���һ���30���ӵ�̽��ʱ��\n" .. "����ǰʣ��Ĳر���ʱ��Ϊ:#COLOREND#" .. hour .. "Сʱ" .. minute .. "��" .. second .. "��" .. "\n \n \n \n \n \n��#OFFSET<X:0,Y:2>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@Cul *01*�������һ���>\n                      ������������������#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	else
		return "��������û��ʱ֮ɳ��\n" .. "\n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	end--]]
end

-- �ر�����Ʒ����
--[[function DreamlandIntro(npc, player)
    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#������#COLOREND##COLORCOLOR_BROWN#������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND#1.5��������ᡢ˫��������ᡢ3��������ᡢ������(С)��������(��)��������(��)�����������顢���ĵ���ŭ���񵤡�ŭ���񵤡�ŭ���񵤵ȡ���(������Ǯ�򲻵��ı��)\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�䱦��#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND#�������������ǡ���ӡ�������ȡ���(������Ǯ�򲻵��ı��)\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#������#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND##COLORCOLOR_GREENG#ϡ������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�ؾ�¥#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND##COLORCOLOR_SKYBLUE#�ռ����ܲ�ҳ#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end]]



--Ŀ¼

function DreamlandIntro(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�ر���#COLOREND##COLORCOLOR_BROWN#������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@murenxiang *01*��ľ���>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@dating *01*����������>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@zhenbaoge *01*���䱦����>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@yishoulan *01*����������>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@cangjinglou *01*���ؾ�¥��>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@baicaotang *01*���ٲ��á�>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@suomogong *01*����ħ����>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�ر���#COLOREND##COLORCOLOR_BROWN#������������������#COLOREND#"
	msg = msg .. "           #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
--]]	return msg
end




--����

function dating(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#������#COLOREND##COLORCOLOR_BROWN#������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND#1.5��������ᡢ˫��������ᡢ3��������ᡢ�����顢���ĵ���ŭ���񵤡�ŭ���񵤡�ŭ���񵤡�ѭ��ħ�䡢�޸���ˮ����ʿ�߼������ȡ���(������Ǯ�򲻵��ı��)\n"
	msg = msg .."#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#������#COLOREND##COLORCOLOR_BROWN#������������������#COLOREND#\n"

	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*�����ء�>"
--]]	return msg
end


--�䱦��
function zhenbaoge(npc, player)
--[[    local msg =  "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�䱦��#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND#�������������ǡ���ӡ����������Ԫ�顢��λʯ����ң�εȡ���(������Ǯ�򲻵���ǿ��װ�����ߣ�)\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�䱦��#COLOREND##COLORCOLOR_BROWN#������������������#COLOREND#\n"

	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*�����ء�>"
--]]	return msg
end

--������
function yishoulan(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#������#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND#������#COLORCOLOR_GREENG#��ϡ�����#COLOREND#��ѩ������#COLORCOLOR_GREENG#��ϡ�����#COLOREND#��������#COLORCOLOR_GREENG#��ϡ�����#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#������#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*�����ء�>"
--]]	return msg
end

--�ؾ�¥
function cangjinglou(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�ؾ�¥#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND##COLORCOLOR_SKYBLUE#�ռ����ܲ�ҳ#COLOREND#\n���Զһ������ռ�����\n#COLORCOLOR_SKYBLUE#[��ħ֮ŭ]#COLOREND#��#COLORCOLOR_SKYBLUE#[�������]#COLOREND#��#COLORCOLOR_SKYBLUE#[�޼����]#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�ؾ�¥#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*�����ء�>"
--]]	return msg
end

--�ٲ���
function baicaotang(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�ٲ���#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND##COLORCOLOR_SKYBLUE#����ҩ���������Ρ�С��������ҩ������������ҩ������������ҩ��С����ħ��ҩ��������ħ��ҩ��������ħ��ҩ#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#�ٲ���#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*�����ء�>"
--]]	return msg
end

--ľ����
function murenxiang(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#ľ����#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND##COLORCOLOR_SKYBLUE#�������顢���鵤�����;��鵤#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#ľ����#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*�����ء�>"--]]
	return msg
end

--��ħ��
function suomogong(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#��ħ��#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#������#COLOREND##COLORCOLOR_SKYBLUE#���и������BOSS��������ָ߼�װ���������������������ţ��װ���õò����ˣ�������������Ǽۣ�#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_RED#��ħ��#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*�����ء�>"--]]
	return msg
end

function TimeInquires(npc, player)
--[[	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
	return "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ر���#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n#COLORCOLOR_RED#����ǰʣ��Ĳر���ʱ��Ϊ:#COLOREND#" .. hour .. "Сʱ" .. minute .. "��" .. second .. "��" .. "\n#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
--]]end

function Leave(npc, player)
	return ""
end

--�ռ����ܶһ�


-- �ռ�������
local zhongjishu =
{
    {"�޼����", {"�޼����1��", "�޼����2��", "�޼����3��", "�޼����4��", "�޼����5��"}}, 
	{"�������", {"�������1��", "�������2��", "�������3��", "�������4��", "�������5��"}}, 
	{"��ħ֮ŭ", {"��ħ֮ŭ1��", "��ħ֮ŭ2��", "��ħ֮ŭ3��", "��ħ֮ŭ4��", "��ħ֮ŭ5��"}}, 



}


local zhongjishuJob =
{
    ["�޼����"] = " ---- սʿְҵ",
	["�������"] = " ---- ��ʦְҵ",
	["��ħ֮ŭ"] = " ---- ��ʿְҵ",

}

-- �ϳ��ռ���������Ҫ���ռ����ܲ�ҳ����
local zhongjishu_num =
{
	["�޼����1��"]	= 5,
	["�޼����2��"] = 25,
	["�޼����3��"] = 125, 
	["�޼����4��"] = 625, 
	["�޼����5��"] = 3125, 
    ["�������1��"]	= 5,
	["�������2��"]	= 25,
	["�������3��"]	= 125, 
	["�������4��"]	= 625, 
	["�������5��"]	= 3125,
	["��ħ֮ŭ1��"] = 5,
	["��ħ֮ŭ2��"] = 25,
	["��ħ֮ŭ3��"] = 125, 
	["��ħ֮ŭ4��"] = 625, 
	["��ħ֮ŭ5��"] = 3125,


}
-- �ռ�������һ��ռ����ܲ�ҳ���Ի���ռ����ܲ�ҳ������
local zhongjishu_num_fan =
{
	["�޼����1��"]	= 2,
	["�޼����2��"] = 8,
	["�޼����3��"] = 20, 
	["�޼����4��"] = 100, 
	["�޼����5��"] = 500, 
    ["�������1��"]	= 2,
	["�������2��"]	= 8,
	["�������3��"]	= 20, 
	["�������4��"]	= 100,
	["�������5��"]	= 500,
	["��ħ֮ŭ1��"] = 2,
	["��ħ֮ŭ2��"] = 8,
	["��ħ֮ŭ3��"] = 20, 
	["��ħ֮ŭ4��"] = 100,
	["��ħ֮ŭ5��"] = 500,
}


function hec(npc, player)
--[[	local msg ="��#COLORCOLOR_SKYBLUE#�ر���#COLOREND#��#COLORCOLOR_GREENG#�ؾ���#COLOREND#�ڣ������Ѱ�ҵ�#COLORCOLOR_GREENG#�ռ����ܲ�ҳ#COLOREND#��ף�����������ռ����ܣ�\n \n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:5>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@convert_prompt *01*����ҳ�ϳ��ռ������项>\n \n#OFFSET<X:0,Y:0>##IMAGE<ID:1902700036>##OFFSET<X:0,Y:-1>#<@convert_back_prompt *01*���ռ����������ҳ��>\n \n#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
--]]	return msg
end


function convert_prompt(npc, player)
--[[		local msg = "�ռ���һ�������ռ����ܲ�ҳ�Ϳ����������ﻻȡ��˵�е��ռ�������Ŷ�������ռ��ɣ�\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."#COLORCOLOR_GREENG#Ŀǰ������������������ռ����ܲ�ҳ��ȡ�����ռ������飺#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		for i = 1,#zhongjishu do
			msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan#"..i.." *01*"..zhongjishu[i][1]..zhongjishuJob[zhongjishu[i][1]..">\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg..""                                 #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" --]]

    return msg;
end

function duihuan(npc, player, k)
--[[	local k = tonumber(k)
	local msg = "��ѡ����Ҫ�ϳɵ��ռ�������\n"
		  msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		for k1, v1 in pairs(zhongjishu[k][2]) do
				msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan1#"..v1.." *01*["..v1.."]>\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_prompt *01*�����ء�>\n"

	return msg--]]
end


function duihuan1(npc, player,  v1)
--[[	local msg = ""
	
		for k2, v2 in pairs(zhongjishu_num) do
				if v1 == k2 then
					msg = msg.."�ϳ�#COLORCOLOR_YELLOW#"..v1.."#COLOREND#��Ҫ#COLORCOLOR_RED#"..v2.."#COLOREND#���ռ����ܲ�ҳ��ȷ���ϳ���\n \n \n \n \n"
					msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-2>#<@duihuan2#"..v1.."#"..v2.." *01*ȷ���ϳ�>\n \n \n \n"
					
				end
		end
		msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n" --]]

	return msg
end

function duihuan2(npc, player,v1, v2)
--[[	local msg = ""
	local num = lualib:ItemCount(player, "�ռ����ܲ�ҳ")
	local bagfree = lualib:Player_GetBagFree(player)
	if bagfree < 1 then
		return "��İ�������1����ճ�һ����������ϳɣ�\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_prompt *01*�����ء�>"
	end
	v2 = tonumber(v2)
	if num < v2 then
		return "����ռ����ܲ�ҳ��������"..v2.."�����ܺϳɣ� \n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	else
		if lualib:DelItem(player, "�ռ����ܲ�ҳ", v2, 0, "�ϳ��ռ�������ɹ�ɾ���ռ����ܲ�ҳ", player) == true then
			lualib:AddItem(player, v1, 1, false, "�ϳ��ռ�������ɹ���", player)
			return "�ϳɳɹ���\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		else
			return "ɾ������ʧ�ܣ����������ԣ�\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
	end
	--]]
	return msg
end


function convert_back_prompt(npc, player)
--[[       local msg = "������ж�����ռ������飬Ҳ���Ե����������ҳ��\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."#COLORCOLOR_GREENG#Ŀǰ��������������������ռ���������Ϊ��ҳ#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		
		for i = 1, #zhongjishu do
			msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700036>##OFFSET<X:0,Y:-2>#<@duihuan_fan#"..i.." *01*"..zhongjishu[i][1]..">\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
--]]
    return msg;
end

function duihuan_fan(npc, player, k)
--[[	local k = tonumber(k)
	local msg = "ѡ����Ҫ���Ϊ��ҳ���ռ�������\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	
		for k1, v1 in pairs(zhongjishu[k][2]) do
				msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700036>##OFFSET<X:0,Y:-1>#<@duihuan_fan1#"..v1.." *01*["..v1.."]>\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_back_prompt *01*�����ء�>\n"

	return msg--]]
end


function duihuan_fan1(npc, player,  v1)
--[[	local msg = ""
	
		for k2, v2 in pairs(zhongjishu_num_fan) do
				if v1 == k2 then
					msg = msg..v1.."���Բ�⵽��#COLORCOLOR_RED#"..v2.."#COLOREND#���ռ����ܲ�ҳ��ȷ�������\n \n \n \n \n"
					msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-2>#<@duihuan_fan2#"..v1.."#"..v2.." *01*����⡹>\n \n \n \n"
					
				end
		end
		msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
--]]
	return msg
end

function duihuan_fan2(npc, player, v1, v2)
--[[	v2 = tonumber(v2)
	local zhongjishuang = lualib:ItemCountByKey(player, v1, true, false, false, 0)
	local msg = ""
	local bagfree = lualib:Player_GetBagFree(player)
	if bagfree < 1 then
		return "��İ�������1����ճ�һ����������ϳɣ�\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@duihuan_fan *01*�����ء�>"
	else
		if zhongjishuang < 1 then
			return "��û���ռ������飬���ܲ��\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			
		else
			if lualib:DelItem(player, v1, 1, 0, "�����ռ����ܲ�ҳɾ���ռ�������", player) == true then
				lualib:AddItem(player, "�ռ����ܲ�ҳ", v2, false, "����ռ�������ɹ���", player)
				return "���ɹ���\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "ɾ������ʧ�ܣ����������ԣ�\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end
--]]
	return msg
end