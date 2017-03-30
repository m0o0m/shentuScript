local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("map/��ħ��")

gQuestMap =
{
   {1023, "", "QuestAccomplish1023","", "*01*�������: ��ħ��"},
   {1024, "QuestAccept1024", "QuestAccomplish1024","*01*����: ��ѹ��ħ��", "*01*�������: ��ѹ��ħ��"},
   {1025, "QuestAccept1025", "","01*����: ��ĸ�ǿ", ""},
   {2003, "QuestAccept2003", "QuestAccomplish2003","*01*����: ����аħ��ż", "*01*�������: ����аħ��ż"},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"��ħ����Ĺ���᲻�Ϸ��ѣ�ÿ����һֻ���ͻ���ѳ���ֻ��ʮ���Ѳ���", "��ħ�������˽�������ѳ�����", "��ħ���еĹ����������Ⱥ�弼��ʹ�����к��ɡ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 290000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#��ħ��#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."������˵��ħ������һλ����а�����λ��ǿ�ߣ����ó����صĿ��ܷ�������ֻҪ��������������ܻ�ýϸߵ�#COLORCOLOR_GREENG#����#COLOREND#��#COLORCOLOR_GOLD#���#COLOREND#��������Ҫ#COLORCOLOR_GREENG#�ӻ���#COLOREND#���۵�#COLORCOLOR_GOLD#����#COLOREND#�����ڳ��뽭��������˵������ܺ��㣡\n"
         msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		 msg = msg.."#OFFSET<X:0,Y:0># #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump *01*����ս��ħ��>       #OFFSET<X:0,Y:1>##IMAGE<ID:1902700017>#<@info *01*������ܡ�>        #IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@leave *01*���뿪��>\n"
		 msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.." #OFFSET<X:0,Y:-2>##IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end

    --msg = msg.."<@jump *01*��ս��ħ��>\n"
    --msg = msg.."<@duihuan *01*���һ�����Ԫ�ᾧ>\n"

	return msg
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#��ħ��#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
         msg = msg.."#COLORCOLOR_RED#����Ҫ��#COLOREND#�ȼ����ڵ���20������Ҫ���ߣ�[����]\n"
         msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
         msg = msg.."#COLORCOLOR_RED#����ܣ�#COLOREND#ÿ����ɫÿ����Կ���3�η�ħ��\n"
         msg = msg.."#COLORCOLOR_RED#����ܣ�#COLOREND#ÿ�ο�����ħ��ĳ���ʱ��Ϊ30����\n"
         msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
         msg = msg.."#COLORCOLOR_RED#��Ҫ��ʾ��#COLOREND#����ʱ������,ǿ�ҽ��������ӽ���̽��\n"
         msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
         msg = msg.." #OFFSET<X:0,Y:-2>#                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

	return msg
end

function leave(npc, player)
    return ""
end

function jump(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#��ħ��#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:4>#  #COLORCOLOR_RED#��ʾ�ţ�#COLOREND#��ս��Ҫ���ĵȼ����ڵ���20����\n"
         msg = msg.."  #COLORCOLOR_RED#��ʾ�ƣ�#COLOREND#���������ӵĻ�����ȷ�����������Աߣ�\n"
         msg = msg.."  #COLORCOLOR_RED#��ʾ�ǣ�#COLOREND#��ս��Ҫ����1��[����]��[����]������<@tiaozhuan *01*�ϱ�>��\n          <@tiaozhuan *01*[�ϱ��̵�]>�ﹺ��\n"
         msg = msg.."#OFFSET<X:0,Y:4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    local p = CPlayer:new()
    p.guid = player
	
	local count = 0
	local map = ""
	local surplus = 0
			
	
    if CDgn:CheckDgnTime(p) == true then --�ж��Ƿ�ӵ�и�����Ʊ
		local map = lualib:Player_GetDgnByTicket(player,"��ħ��")
		count = CMap.max_monster - CMap:GetCurMonsterCount(map)
		surplus = count + CMap:GetMonsterCount(map)
	end
	
	if surplus > 0 then
	msg = msg.."������#COLORCOLOR_GRAY#�X�������������[�����������X�������������[��#COLOREND#\n"
	msg = msg.."������#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#��#COLOREND#<@enter *01*��������ս��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��������������#COLOREND#<@main *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."������#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#�^�������������a�����������^�������������a��#COLOREND#\n"
	else
	msg = msg.."������#COLORCOLOR_GRAY#�X�������������[�����������X�������������[��#COLOREND#\n"
	msg = msg.."������#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#��#COLOREND#<@jumpex *01*��������ս��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��������������#COLOREND#<@main *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."������#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#�^�������������a�����������^�������������a��#COLOREND#\n"
    end

    return msg
end

function jumpex(npc, player)
    local p = CPlayer:new()
    p.guid = player
	
    if not p:CheckLevel() then return "��ĵȼ�������\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
    if not p:CheckGold() then return "��Ľ�Ҳ��㣡\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
    if not p:CheckItem() then return "���#COLORCOLOR_YELLOW#[����]#COLOREND#������[����]������<@tiaozhuan *01*�ϱ�>��<@tiaozhuan *01*[�ϱ��̵�]>�ﹺ��\n                                  #OFFSET<X:1,Y:-9>##COLORCOLOR_YELLOW#��#OFFSET<X:-2,Y:0>#��#COLOREND# \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
    if not CDgn:CheckEnter(p) then return "ÿ��ֻ�ܽ������Σ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

    if not p:SubGold() then return "�۳����ʧ�ܣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
    if not p:DestroyItem() then return "�Ͻ�����ʧ�ܣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

	local dgn = CDgn:CreateDgn()
    if dgn == "" then return "��������ʧ�ܣ�" end
	
	--CDgn:SetEnter(p)
	if not p:SetDgnTicket(dgn) then return "�㲻�ܽ����ħ��\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
	lualib:JoinCamp(player, 1, 0)
    if not p:EnterDgn(CDgn.dgn_name, 0, 0, 0) then return "�㲻�ܽ����ħ��\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
    return ""
end

function tiaozhuan(npc, player)
	if lualib:Player_MapMoveXY(player, "����", 238, 221, 0) == true then
		lualib:OpenShop(npc, player, 24)

	end
	return ""
end


function enter(npc, player)
    local p = CPlayer:new()
    p.guid = player
    if not p:EnterDgn(CDgn.dgn_name, 0, 0, 0) then
        return "���븱��ʧ�ܣ�"
    end
	
    return ""
end

function duihuan(npc, player)
	msg = "ÿ10��а���������ԡ��һ���1����Ԫ�ᾧ����Ҫ���һ����� \n"
	msg = msg.."<@award *01*���һ���>\n"
    msg = msg.."<@main *01*�����һ���>\n"
	return msg
end

function award(npc, player)
    local require_item = "а������"
    local require_item_count = 10
    local award_item = "��Ԫ�ᾧ"
    local award_item_count = 1
    if lualib:Player_GetItemCount(player, require_item) < require_item_count then
        return "����"..require_item.."����"..require_item_count.."����"
    end

    if not lualib:Player_DestroyItem(player, require_item, require_item_count, "ɾ��Ʒ����ħ����·�ˡ��һ�����Ԫ�ᾧ", player) then
        return "ɾ����Ʒʧ�ܣ�"
    end

    if not lualib:Player_GiveItemUnbind(player, award_item, award_item_count, "����Ʒ����ħ����·�ˡ��һ�����Ԫ�ᾧ", player) then
        return "����Ʒʧ�ܣ�"
    end

    return "���һ����ɹ���"
end

CPlayer =
{
    require_level = 20,
    require_gold = 0,
    require_item = "����",
    require_item_count = 1,
    guid = ""
}

function CPlayer:CheckLevel()
    return lualib:Player_GetIntProp(self.guid,  lua_role_level) >= self.require_level
end

function CPlayer:CheckGold()
    return lualib:Player_IsGoldEnough(self.guid, self.require_gold, false)
end

function CPlayer:CheckItem()
    return lualib:Player_GetItemCount(self.guid, self.require_item) >= self.require_item_count
end

function CPlayer:SubGold()
    return lualib:Player_SubGold(self.guid, self.require_gold, false, "�۽�ң���ħ����·�˴��ͷ�", self.guid)
end

function CPlayer:DestroyItem()
    return lualib:Player_DestroyItem(self.guid, self.require_item, self.require_item_count, "ɾ��Ʒ����ħ����·�˴���", self.guid)
end

function CPlayer:GetName()
    return lualib:Player_GetStrProp(self.guid,  lua_role_user_name)
end

function CPlayer:IsInGS()
    return lualib:Player_IsInGS(self.guid)
end

function CPlayer:IsOnline()
    return lualib:Player_IsOnline(self.guid)
end

function CPlayer:SetDgnTicket(dgn)
    return lualib:Player_SetDgnTicket(self.guid, dgn)
end

function CPlayer:EnterDgn(dgn_name, x, y, range)
    return lualib:Player_EnterDgn(self.guid, dgn_name, x, y, range)
end

function CPlayer:GetDistance(x, y)
    player_x = lualib:Player_GetPosX(self.guid)
    player_y = lualib:Player_GetPosY(self.guid)
    return lualib:Map_GetDistance(x, y, player_x, player_y)
end

function CPlayer:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

CDgn =
{
    dgn_name = "��ħ��",
    dgn_times = 1800,
    dgn_days = "fwzwf_dgn_days",
    dgn_count = "fwzwf_dgn_count",
    max_count = 3
}

function CDgn:CreateDgn()
    return lualib:Map_CreateDgn(self.dgn_name, false, self.dgn_times)
end

function CDgn:CheckEnter(player)
    --[[local fwzwf_dgn_days = lualib:Player_GetCustomVarInt(player.guid, self.dgn_days)
    local cur_days = lualib:GetAllDays(0)
    if cur_days == fwzwf_dgn_days then
        if lualib:Player_GetCustomVarInt(player.guid, self.dgn_count) < self.max_count then
            return true
        else
            return false
        end
    else
        lualib:Player_SetCustomVarInt(player.guid, self.dgn_count, 0)
        return true
    end]]
	
	return lualib:VerifyCampCount(player.guid, 1)
end

function CDgn:SetEnter(player)
    local fwzwf_dgn_count = lualib:Player_GetCustomVarInt(player.guid, self.dgn_count)
    lualib:Player_SetCustomVarInt(player.guid, self.dgn_count, fwzwf_dgn_count + 1)
    lualib:Player_SetCustomVarInt(player.guid, self.dgn_days, lualib:GetAllDays(0))
end

function CDgn:CheckDgnTime(player)
    return lualib:Player_HasDgnTicket(player.guid, "��ħ��")
end


---1023��
function QuestAccomplish1023(npc, player)
    msg = "��ħ�����ħ������������ʿ�����Ƿ��ܹ���æ��ѹһ�¡�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1023 *01* �õ�>\n"
    return msg
end

function Accomplish1023(npc, player)
    if lualib:AccomplishQuest(player, 1023, 0) == true then
        msg = "����ʹ�����ȥ��ħ��\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1024 *01*û���⣬�����ȥ>\n"
		return msg
    else
        msg = "����ʧ�ܡ�\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

---1024��
function QuestAccept1024(npc,player)
    msg = "��ħ�����ħ������������ʿ�����Ƿ��ܹ���æ��ѹһ�¡�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1024 *01* �õ�>\n"
	return msg
end


function Accept1024(npc, player)
    if lualib:AcceptQuest(player, 1024) == true then
		msg = "ǰ����ħ��\n \n"
		msg = msg.."#IMAGE1902700015#<@jump *01*���ͽ����ħ��> \n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

---1024��
function QuestAccomplish1024(npc, player)
    msg = "���ط�ӡ����һʱ֮������ħ��ʱ���п��ܳ��Ʒ�ӡ�����ԣ�����ÿ�춼Ҫ����������ħ������Ȼ��һ�����Σ����ǣ�Ҳ�Ƕ�����������ʵ����;������ÿ�춼���Ե����������μ�3�Σ��ǵ�ÿ�춼Ҫ���������ˣ�������ͷҲ�������ø�ǿ�ķ�������ȥ�����ɣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1024 *01* ��Ȼ����Ҫ��ĸ�ǿ>\n"
    return msg
end

function Accomplish1024(npc, player)
    if lualib:AccomplishQuest(player, 1024, 0) == true then
        msg = "����ȥ��������ͷ�����������ģ�\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1025 *01*�����ȥ>\n"
		return msg
    else
        msg = "����ʧ�ܡ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*��֪����>\n"
		return msg
    end
end

---1025��
function QuestAccept1025(npc,player)
    msg = "����ȥ��������ͷ�����������ģ���Ҫ������׼������ǿ�ɲ���һ�����׵��£�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1025 *01* �õ�>\n"
	return msg
end


function Accept1025(npc, player)
    if lualib:AcceptQuest(player, 1025) == true then
		msg = "��#COLORCOLOR_GREENG# #NPCLINK<STR:������ͷ,NPCID:30006>##COLOREND#��̱�ǿ�ķ���\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

---2003��
function QuestAccept2003(npc,player)
    msg = "��ħ�����ħ������������ʿ�����Ƿ��ܹ���æ��ѹһ�¡�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2003 *01* �õ�>\n"
	return msg
end


function Accept2003(npc, player)
    if lualib:AcceptQuest(player, 2003) == true then
		msg = "ǰ����ħ��\n \n"
		msg = msg.."#IMAGE1902700015#<@jump *01*���ͽ����ħ��> \n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

---2003��
function QuestAccomplish2003(npc, player)
    msg = "���ط�ӡ����һʱ֮������ħ��ʱ���п��ܳ��Ʒ�ӡ�����ԣ�����ÿ�춼Ҫ����������ħ������Ȼ��һ�����Σ����ǣ�Ҳ�Ƕ�����������ʵ����;������ÿ�춼���Ե����������μ�3�Σ��ǵ�ÿ�춼Ҫ���������ˣ�������ͷҲ�������ø�ǿ�ķ�������ȥ�����ɣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2003 *01* ��Ȼ����Ҫ��ĸ�ǿ>\n"
    return msg
end

function Accomplish2003(npc, player)
    if lualib:AccomplishQuest(player, 2003, 0) == true then
        msg = "����ȥ��������ͷ�����������ģ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*��֪����>\n"
		return msg
    else
        msg = "����ʧ�ܡ�\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end
