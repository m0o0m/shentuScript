local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local cailiao = "����"

gQuestMap =
{
	{1025, "", "QuestAccomplish1025","", "*01*�������: ��ĸ�ǿ"},
	{1026, "QuestAccept1026", "QuestAccomplish1026","*01*����: ����������", "*01*�������: ����������"},
	{1027, "QuestAccept1027", "","*01*����: ��������˸��", ""},
        {2004, "QuestAccept2004", "QuestAccomplish2004","*01*����: ��������", "*01*�������: ��������"},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"������������������ѵ�����˵ģ��ߵȼ����Ҳ���Լ��ѵ����", "�������еĹ�����Ȼ�������ߣ���������Χס��Ҳͦ�鷳�ġ�", "������һ������ܵõ����ٸ�����ƾ֤��Σ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 210000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
       local a = 0
       local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#������ͷ#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."�����������ߵ�����֮�أ��ռ��������������ϵ����#COLORCOLOR_GREENG#����ƾ֤#COLOREND#���Դ�������һ��������飡ÿ��ÿ��ɽ�������������(ÿ�γ���5����)����1����ѣ���2����Ҫ#COLORCOLOR_RED#1������#COLOREND#����3����Ҫ#COLORCOLOR_RED#3������#COLOREND#��\n     #COLORCOLOR_BROWN#�����������ڹ��ﻹ���лسǾ���ĵ��䣡#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#\n"
	msg = msg.."������#COLORCOLOR_GRAY#�X���������������[�������X�����������������[#COLOREND#\n"
	msg = msg.."������#COLORCOLOR_GRAY#��#COLOREND#<@jump *01*��������������>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#����������#COLOREND#<@award *01*��ƾ֤���һ�����>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."������#COLORCOLOR_GRAY#�^���������������a�������^�����������������a#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#����������������������������������������������������������#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#OFFSET<X:0,Y:-4>##IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
                a = 1
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#OFFSET<X:0,Y:-8>##IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
                a = 1
            end
        end
    end
        if a ~= 1 then
        msg = msg.."��������������������������������������������#IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@leave *01*���뿪��>\n"
end
    return msg
end





function jump(npc, player)

	local level_t = {16, 26, 36, 46, 200}
	local dgn_t = {"������������", "�м���������", "�߼���������", "������������"}
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	local cur_type = 0

	for k, v in pairs(level_t) do
		if level < v then
			cur_type = k - 1
			break
		end
	end

	if dgn_t[cur_type] == nil then return "��ĵȼ�����������������\n \n<@main *01*�����ء�>" end
       local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#������ͷ#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:1>#�����ҿ������������������̽�գ�����ÿ��ֻ�ܽ�������Ŷ����1�ν��벻��Ҫ�κ����ģ���2����Ҫ#COLORCOLOR_RED#1������#COLOREND#����3����Ҫ#COLORCOLOR_RED#3��#COLOREND#���ѣ�[����]������<@tiaozhuan *01*�ϱ�>��<@tiaozhuan *01*[�ϱ��̵�]>�ﹺ��\n"
        msg = msg.."#OFFSET<X:0,Y:1>##OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#�ص���ʾ��#COLOREND#��������#COLORCOLOR_GOLD#������ƾ֤��#COLOREND#�ɻ�ȡ�����ľ���!\n"
        msg = msg.."#OFFSET<X:0,Y:1>##OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."��������#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@enter#"..cur_type.." *01*������������>����������#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

    return msg
end

function tiaozhuan(npc, player)
	if lualib:Player_MapMoveXY(player, "����", 238, 221, 0) == true then
		lualib:OpenShop(npc, player, 24)

	end
	return ""
end

function award(npc, player)
       local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#������ͷ#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."�����п��Ի��#COLORCOLOR_GOLD#������ƾ֤��#COLOREND#����������ƾ֤������������һ��߶�飬ÿ�������������#COLORCOLOR_RED#���һ���150��#COLOREND#��\n"
        msg = msg.."#OFFSET<X:0,Y:1>##OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n \n"
        msg = msg.."       #OFFSET<X:0,Y:-6>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@exp *01*ƾ֤���һ�������>               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

    return msg
end

function enter(npc, player, index)
    local msg = check_enter(player)
    if msg ~= "" then return msg end

    msg = enter_dgn(player, tonumber(index))
    if msg ~= "" then return msg end
    return msg
end

function leave(npc, player)
    return ""
	end

function check_enter(player)
	local max_count = 3
	--[[local var_ = "��������_days"
	local count_ = "��������_count"

    local days = lualib:Player_GetCustomVarInt(player, var_)
    local all_days = lualib:GetAllDays(0)
    if days == all_days then
        local cur_count = lualib:Player_GetCustomVarInt(player, count_)
        if cur_count >= max_count then
            return "���������������������"..max_count.."�Σ�\n \n<@main *01*�����ء�>"
        end

		local item = {0, 30000, 100000}
		if not lualib:Player_IsGoldEnough(player, item[cur_count + 1], false) then
			return "��Ҳ��㣬�޷�����" .. item[cur_count + 1] .. "��\n \n<@main *01*�����ء�>"
		else
			if not lualib:Player_SubGold(player, item[cur_count + 1], false, "�۽�ң���������δ��ʹ��ͷ�", "������ͷ") then
				return "�۳����ʧ��"
			end
		end
    elseif days > all_days then
        return "ϵͳ����\n \n<@main *01*�����ء�>"
    else
        lualib:Player_SetCustomVarInt(player, count_, 0)
    end]]
    
    local count = lualib:CampCount(player, 3)
    --if count >= max_count then return "���������������������"..max_count.."�Σ�\n \n<@main *01*�����ء�>" end
    
    if not lualib:VerifyCampCount(player, 3) then
        return "���������������������"..max_count.."�Σ�\n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end
    
	local itemnum = lualib:ItemCount(player, cailiao)
	
    local item = {0, 1, 3}
	
	if itemnum < item[count + 1] then 
		return "���"..cailiao.."����" .. item[count + 1] .. "�޷����룡[����]������<@tiaozhuan *01*�ϱ�>��<@tiaozhuan *01*[�ϱ��̵�]>\n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	else
        if itemnum ~= 0 then
            if not lualib:DelItem(player, cailiao, item[count + 1], 2, "����������ɾ����Ʒ", player) then
                return "�۳�����ʧ��"
            end
        end
	end
	
--[[	
	
    if not lualib:Player_IsGoldEnough(player, item[count + 1], false) then
        return "��Ҳ��㣬�޷�������Ҫ" .. item[count + 1] .. "��\n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    else
        if not lualib:Player_SubGold(player, item[count + 1], false, "�۽�ң���������δ��ʹ��ͷ�", "������ͷ") then
			return "�۳����ʧ��"
		end
		
    end]]
        
    return ""
end

function enter_dgn(player, index)
	local var_ = "��������_days"
	local count_ = "��������_count"
    local dgn_table = {"����������", "�м�������", "�߼�������", "����������"}

    local dgn = lualib:Map_CreateDgn(dgn_table[index], false, 5 * 60)
    if dgn == "" then
        return "������"..dgn_table[index].."����ʧ�ܣ�"
    end

    if not lualib:Player_SetDgnTicket(player, dgn) then
        return "��������ɽ����ͼ��"
    end

    lualib:JoinCamp(player, 3, 0)
    if not lualib:Player_EnterDgn(player, dgn_table[index], 24, 33, 3) then
        return "�����ͼʧ�ܣ�"
    end
    return ""
end

function exp(npc, player)
    local limit_count = 150
	local var_ = "����ƾ֤_count"
	local item_ = "����ƾ֤"
	local days_ = "����ƾ֤_days"

	local level_t  = {16, 26, 36, 46, 200}
	local exp_t    = {50, 100, 200, 350}
	local level    = lualib:Player_GetIntProp(player,  lua_role_level)
	local cur_type = 0

	for k, v in pairs(level_t) do
		if level < v then
			cur_type = k - 1
			break
		end
	end

	if exp_t[cur_type] == nil then return "��ĵȼ����������ܶһ���\n \n \n \n \n \n                                             #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

    local days = lualib:Player_GetCustomVarInt(player, days_)
    local all_days = lualib:GetAllDays(0)

    local count = lualib:Player_GetItemCount(player, item_)
    if count < 1 then return "��û��"..item_.."��\n \n \n \n \n \n                                             #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

    local max_count = 0
    if days == all_days then
        max_count = lualib:Player_GetCustomVarInt(player, var_)
        if max_count >= limit_count then return "ÿ��ֻ���Ͻ�"..limit_count.."��ƾ֤��\n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
    elseif days > all_days then
        return "ϵͳ����"
    else
        max_count = 0
    end

    if count + max_count > limit_count then count = limit_count - max_count end

    if not lualib:Player_DestroyItem(player, item_, count, "ɾ��Ʒ��������ͷ�Ͻ�����ƾ֤", "������ͷ") then
        return "�Ͻ�"..item_.."ʧ�ܣ�"
    end


    local exps = level * exp_t[cur_type] * count
    if not lualib:Player_AddExp(player, exps, "�Ӿ��飺�Ͻ�"..item_.."��ȡ����", player) then
        return "��������ʧ�ܣ�"
    end

    lualib:Player_SetCustomVarInt(player, var_, max_count + count)
    lualib:Player_SetCustomVarInt(player, days_, all_days)
	msg = "���Ͻ�"..count.."��ƾ֤, ��þ���"..exps.."���������ܹ��Ͻ�ƾ֤"..max_count + count.."/"..limit_count.."��\n \n \n \n \n \n "
	msg = msg.."                                             #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    return msg
end

function info(player, npc)
    return "��������    16 - 25\n�м�����    26 - 35\n�߼�����    36 - 45\n��������    46 - 55 \n \n<@main *01*�����ء�>"
end


----1025��
function QuestAccomplish1025(npc, player)
    msg = "�����ˣ�������������ʲô������\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1025a *01* ��Ҫ��ǿ�����������>\n"
    return msg
end

function Accomplish1025a(npc, player)
    msg = "ԭ����ˣ����Ҿ͸���ָһ����·�������ҵ�����������һ�������ĵ�·��������þ�����У�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1025b *01* ֻҪ�ܹ�������ǿ����ʵ����ʲô���Ҷ��ܵ���>\n"
    return msg
end

function Accomplish1025b(npc, player)
    if lualib:AccomplishQuest(player, 1025, 0) == true then
        msg = "���ھͿ�ʼ��\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1026 *01* ��ʼ����>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---1026��
function QuestAccept1026(npc,player)
    msg = "��׼�������������������������Ǻܼ����ģ����ҹ���Ҳ��ǿ����Ҫ��һ����ʵ��������������!\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1026 *01* ������>\n"
	return msg
end


function Accept1026(npc, player)
    if lualib:AcceptQuest(player, 1026) == true then
		msg = "����ʹ��������������\n \n"
		msg = msg.."#IMAGE1902700015#<@jump *01* ����������>\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end


----1026��
function QuestAccomplish1026(npc, player)
    msg = "û�뵽����ĳɹ��ˣ����Ǻ�����η�����Ժ���ÿ�������������μ�3��������\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1026a *01* �õģ���֪����>\n"
    return msg
end

function Accomplish1026a(npc, player)
    msg = "���ǲ��Ǵӹ������ϼ�ȡ�˺ܶ������ƾ֤����������������һ��������ľ��飡\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1026b *01* �ǵģ����кܶ�ƾ֤>\n"
    return msg
end

function Accomplish1026b(npc, player)
    if lualib:AccomplishQuest(player, 1026, 0) == true then
        msg = "���Ѿ���Ϊһ���˲����սʿ����ȥ�����ǵ�������ˣ��������л�����˵��\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1027 *01* �õ�>\n"
		return msg
    else
        msg = "��������ˣ�\n \n"
		msg = msg.."<@leave *01*����Ŭ��>\n"
		return msg
    end
end


---1027��
function QuestAccept1027(npc,player)
    msg = "���Ѿ���Ϊһ���˲����սʿ����ȥ�����ǵ�������ˣ��������л�����˵��\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1027 *01* �õ�>\n"
	return msg
end


function Accept1027(npc, player)
    if lualib:AcceptQuest(player, 1027) == true then
		msg = "��#COLORCOLOR_GREENG# #NPCLINK<STR:�������,NPCID:25002>##COLOREND#�Ի��������\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

---2004��
function QuestAccept2004(npc,player)
    msg = "��׼�������������������������Ǻܼ����ģ����ҹ���Ҳ��ǿ����Ҫ��һ����ʵ��������������!\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2004 *01* ������>\n"
	return msg
end


function Accept2004(npc, player)
    if lualib:AcceptQuest(player, 2004) == true then
		msg = "����ʹ��������������\n \n"
		msg = msg.."#IMAGE1902700015#<@jump *01* ����������>\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end


----2004��
function QuestAccomplish2004(npc, player)
    msg = "û�뵽����ĳɹ��ˣ����Ǻ�����η�����Ժ���ÿ�������������μ�3��������\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2004 *01* �õģ���֪����>\n"
    return msg
end

function Accomplish2004(npc, player)
    if lualib:AccomplishQuest(player, 2004, 0) == true then
        msg = "���Ѿ���Ϊһ���˲����սʿ����ȥ�����ǵ�������ˣ��������л�����˵��\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*����Ŭ��>\n"
		return msg
    else
        msg = "��������ˣ�\n \n"
		msg = msg.."<@leave *01*����Ŭ��>\n"
		return msg
    end
end
