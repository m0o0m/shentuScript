local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/master")

function main(npc, player)
    local msg = "��һ���ˣ����κ�ѧ�����󲻶ϣ�����һ���ˣ�׻׻���գ���Ϊ��ʦ����������������һ���ʱ�򣬽����һ�����˵Ĵ�˵��Ӣ�ۨD�D������ô���ġ������ʦ������ͽ��\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:2>#  <@AddRelationa *01*����Ҫ�˽��ʦ��>   <@RemoveRelation *01*�����ʦͽ��ϵ��> \n"
     msg = msg.."#OFFSET<X:0,Y:6>#            <@duihuaa *01*��ʦͽ��ѯ��>            <@duihuab *01*�������һ���>\n"
     msg = msg.."#OFFSET<X:0,Y:2>##OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

    return msg
end


function duihuaa(npc, player)
    local msg = "��������������ѯ���ʦ������ͽ�ܵ�����\n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
     msg = msg.."          <@ShowMaster *01*��ѯ�ҵ�ʦ��>            <@ShowApprentice *01*��ѯ�ҵ�ͽ��>\n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:6>#                                        <@main *01*��������ҳ��>\n"
    return msg
end

function AddRelationa(npc, player)
    local msg = "#COLORCOLOR_ORANGE#��ʦ˵��:#COLOREND#\n"
     msg = msg.."#COLORCOLOR_RED#�ţ�#COLOREND#ͽ�ܵĵȼ�����С��35�����ܰ�ʦ����\n"
     msg = msg.."#COLORCOLOR_RED#�ƣ�#COLOREND#ʦ���ĵȼ�������ڵ���35��������ͽ�ܡ�\n"
     msg = msg.."#COLORCOLOR_RED#�ǣ�#COLOREND#�ﵽ��������ͽ�ܷ����ʦ��������Ҫ�ݵ�ʦ���ǳơ�\n"
     msg = msg.."#COLORCOLOR_RED#�ȣ�#COLOREND#ʦ�������յ�ͽ�ܵ����󲢻�Ӧ�󣬴��ʦͽ��ϵ��\n"
     msg = msg.."#COLORCOLOR_RED#�ɣ�#COLOREND#һ��ʦ�����ͬʱ������5��ͽ�ܡ�\n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:6>#            <@AddRelation *01*����Ҫ��ʦ��>            <@main *01*��������ҳ��>\n"

    return msg
end

function GainMasterRewarda(npc, player)
    local msg = "#COLORCOLOR_ORANGE#ʦͽ����˵��:#COLOREND#\n"
     msg = msg.."#COLORCOLOR_RED#�ţ�#COLOREND#���ʦͽ��ϵ��ͽ����22��֮��ÿ��1����ʦ��������\n"
     msg = msg.."������Ӧ������������ֱ����ʦΪֹ��\n"
     msg = msg.."#COLORCOLOR_RED#�ƣ�#COLOREND#ͽ��35����ʦ��ʦ����õ��������Ի�ȡѫ��\n\n"
     msg = msg.."����ͽ�ܽ�����\n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    return msg
end

-----�һ�
function duihuab(npc, player)
	local shengwang = get_shengwang(player)
    local msg = "�������������ͽ�ܣ���ô����ͽ��22��֮��ÿ��1��������Ϊʦ����������Ӧ������������ֱ����ʦΪֹ������������������������һ�����ѫ����������������\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-4>#�㵱ǰ������ֵΪ ��"..shengwang.."������һ�����ѫ�£�\n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."<@xunzhang_a *01*�һ�����ʦѫ�¡�>    �һ�#COLORCOLOR_GOLD#����ʦѫ�¡�#COLOREND#��Ҫ800������ֵ��\n"
	msg = msg.."<@xunzhang_b *01*�һ�����ʦѫ�¡�>    �һ�#COLORCOLOR_GOLD#����ʦѫ�¡�#COLOREND#��Ҫ2000������ֵ��\n"
	msg = msg.."                                              #OFFSET<X:0,Y:1>#<@main *01*��������ҳ��>\n"
	return msg
end

function xunzhang_a(npc,player)
	local msg = "�һ�����ʦѫ�¡���Ҫ800������ֵ����ȷ���һ���\n"
	msg = msg.."<@queding_a *01*ȷ��>\n"
	msg = msg.."<@main *01*����>\n"
	return msg
end

function queding_a(npc, player)
    local shengwang = get_shengwang(player)
    if shengwang <= 800 then
        return "�������ֵ����800�����ܶһ���\n \n<@duihuab *01*����>\n"
    end

    if lualib:GetBagFree(player) < 1 then
        return "�Բ�����ı����Ѿ����ˣ����������������һ���\n \n<@main *01*�����ء�>"
    end
        
    local award_item = "��ʦѫ��"
    if not lualib:AddSingleItem(player, award_item, 1, 0, "ʦͽ������"..award_item, "ʦͽ�ű�") then
        return "����ȡ��ʧ�ܣ�\n \n<@main *01*�����ء�>"
    end
    
    set_shengwang(player, shengwang - 800)
    return award_item.."���һ����ɹ���\n \n<@main *01*�����ء�>"
end

function xunzhang_b(npc,player)
	local msg = "�һ�����ʦѫ�¡���Ҫ2000������ֵ����ȷ���һ���\n"
	msg = msg.."<@queding_b *01*ȷ��>\n"
	msg = msg.."<@main *01*����>\n"
	return msg
end

function queding_b(npc, player)
    local shengwang = get_shengwang(player)
    if shengwang <= 2000 then
        return "�������ֵ����2000�����ܶһ���\n \n<@duihuab *01*����>\n"
    end

    if lualib:GetBagFree(player) < 1 then
        return "�Բ�����ı����Ѿ����ˣ����������������һ���\n \n<@main *01*�����ء�>"
    end
        
    local award_item = "��ʦѫ��"
    if not lualib:AddSingleItem(player, award_item, 1, 0, "ʦͽ������"..award_item, "ʦͽ�ű�") then
        return "����ȡ��ʧ�ܣ�\n \n<@main *01*�����ء�>"
    end
    
    set_shengwang(player, shengwang - 2000)
    return award_item.."���һ����ɹ���\n \n<@main *01*�����ء�>"
end


------------------------------------------------------------------------------
------------------------------------------------------------------------------
function AddRelation(npc, player)
    if get_master_name(player) ~= "" then
        return "���Ѿ���ʦ���ˡ�"
    end
    
    local LIMIT_LEVEL = 35    
    if lualib:Level(player) >= LIMIT_LEVEL then
        return "���Ѿ����˰�ʦ�ĵȼ���"
    end
    
    if lualib:SysMsg_SendInputDlg(player, 1, "������ʦ�����֣�", 30, 14, "InputMasterName", "") == false then
        return "æ���أ�������������"
    end
    
    return ""
end

function InputMasterName(id, apprentice, master_name)
    local apprentice_name = lualib:Name(apprentice)
    local master = lualib:Player_GetGuid(master_name)
    
    if master == "" then
        lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."�����ߡ�")
        return 
    end
    
    if lualib:Distance(apprentice, master) >= 10 then
        lualib:SysMsg_SendTriggerMsg(apprentice, "�ף���û����"..master_name.."�����ﰡ��")
        return
    end
        
    local LIMIT_LEVEL = 35    
    if lualib:Level(master) < LIMIT_LEVEL then
        lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."�ȼ�����!")
        return 
    end
    
    lualib:SysMsg_SendMsgDlg(master, 1, "��ȷ��Ҫ����"..apprentice_name.."Ϊ���ͽ�ܣ�#BUTTON0#ȷ��#BUTTONEND##BUTTON1#ȡ��#BUTTONEND#", 30, "on_master_ack", apprentice_name)
end

function on_master_ack(dlg_id, master, button_id, apprentice_name)
    local master_name = lualib:Name(master)
    local apprentice = lualib:Player_GetGuid(apprentice_name)
    
    if apprentice == "" then
        lualib:SysMsg_SendTriggerMsg(master, apprentice_name.."���ڸ���!")
    end
    
    if button_id == 0 then
        if get_master_name(apprentice) ~= "" then
            lualib:SysMsg_SendTriggerMsg(master, apprentice_name.."�Ѿ���ʦ����!")
            return
        end
    
        if get_apprentice_num(master) >= 5 then
            lualib:SysMsg_SendTriggerMsg(master, "����ͽ������!")
            lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."ͽ������!")
            return
        end
        
        add_apprentice(master, apprentice, apprentice_name)
        set_master_name(apprentice, master_name)
        
        lualib:SysMsg_SendTriggerMsg(master, apprentice_name.."�������ͽ��")
        lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."�������ʦ��")
    else
        lualib:SysMsg_SendTriggerMsg(apprentice, master_name.."�ܾ������İ�ʦ����!")
    end
end

function RemoveRelation(npc, player)
    local msg = "#COLORCOLOR_RED#�ţ�#COLOREND#������������ڵ�ͽ��Ʒ�в��ã�͵��ˣ�������Խ������\n"
    msg = msg.."����ʦ�š�\n"
    msg = msg.."#COLORCOLOR_RED#�ƣ�#COLOREND#������������ڵ�ʦ��ʦ�²��ѣ����Ͷ���ţ�������ָ�\n"
    msg = msg.."��������֮����ѡ���˳�ʦ��\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."         <@DropApprentice *01*�����ʦ�š�>                <@DropMaster *01*���˳�ʦ�š�>\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:6>#                                            <@main *01*��������ҳ��>"
    return msg
end

function DropMaster(npc, player)
    local master_name = get_master_name(player)
    
    if master_name == "" then
        return "��û��ʦ��\n".."<@main *01*����>"
    end

    local msg = "��Ҫ����5W���, ��ʦ����\n\n"
    msg = msg.."<@DropMasterConfirm#"..master_name.." *01*ȷ��>\n"
    msg = msg.."<@main *01*ȡ��>\n"

    return msg
end

--ͽ���뿪ʦ����Ҫ����5W��ҡ�
function DropMasterConfirm(npc, apprentice, master_name)
    if not lualib:SubGold(apprentice, 50000, "�۽�ң��뿪ʦ��", "ʦͽ�ű�") then 
        return "�۳����ʧ�ܣ�\n \n<@main *01*�����ء�>" 
    end

    set_master_name(apprentice, "")
	
	local apprentice_name = lualib:Name(apprentice)
    lualib:SysMsg_SendBroadcastMsg(apprentice_name.." ��ʦ����, ���� "..master_name.." �����Ż���!", "ϵͳ��Ϣ")
    lualib:ScriptFuncToPlayer(master_name, "ʦͽ", "on_apprentice_drop_master", apprentice.."#"..apprentice_name)
    
    return ""
end

function on_apprentice_drop_master(player, apprentice, apprentice_name)
    remove_apprentice(player, apprentice)
end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
function DropApprentice(npc, player)
    if get_apprentice_num(player) <= 0 then
        return "��û��ͽ��\n".."                                <@main *01*����>"
    end

    local app_t = get_apprentices(player)
    local msg = "ͽ���б�\n"
    
    for k, v in pairs(app_t) do
        msg = msg.."<@DropApprenticeOne#"..k.."#"..v.." *01*"..v..">\n"
    end

    return msg
end

--ʦ������ͽ����Ҫ����10W���
function DropApprenticeOne(npc, player, apprentice, apprentice_name)
    local msg = "����10W���, ȷ���� "..apprentice_name.." ���ʦ��?\n"
    msg = msg.."<@DropApprenticeOneConfirm#"..apprentice.."#"..apprentice_name.." *01*ȷ��>\n"
    msg = msg.."<@main *01*ȡ��>\n"

    return msg
end

function DropApprenticeOneConfirm(npc, master, apprentice, apprentice_name)
    if not lualib:SubGold(master, 100000, "�۽�ң����ʦ��", "ʦͽ�ű�") then 
        return "�۳����ʧ�ܣ�\n \n<@main *01*�����ء�>" 
    end
    
    local master_name = lualib:Name(master)

    lualib:SysMsg_SendBroadcastMsg(apprentice_name.." �� "..master_name.."���ʦ��!", "ϵͳ��Ϣ")
    remove_apprentice(master, apprentice)
    lualib:ScriptFuncToPlayer(apprentice_name, "ʦͽ", "on_master_drop_apprentice", master.."#"..master_name)

    return ""
end

function on_master_drop_apprentice(player, master, master_name)
    local cur_master_name = get_master_name(player)
    if cur_master_name == master_name then
        set_master_name(player, "")
    end
end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
function ShowMaster(npc, player)
    local master_name = get_master_name(player)
    if master_name == "" then
        return "��û��ʦ��\n".."                                <@duihuaa *01*����>"
    end
    
    return master_name
end

function ShowApprentice(npc, player)
    if get_apprentice_num(player) <= 0 then
        return "��û��ͽ��\n".."                                <@duihuaa *01*����>"
    end

    local app_t = get_apprentices(player)
    msg = "ͽ���б�\n"
    
    for k, v in pairs(app_t) do
        msg = msg.."<@ShowApprenticeOne *01*"..v..">\n"
    end

    return msg
end

function ShowApprenticeOne(npc, player)
    return ""
end

function DestroyData(npc, player)
    set_master_name(player, "")
    lualib:SetStr(player, "apprentices", "")
    set_last_master_name(player, "")
    
    set_shengwang(player, 0)
    set_chushi(player, 0)
    set_master_reward_count(player, 0)
    set_apprentice_reward(player, 0)
        
    return "ʦͽ��������ɹ�"
end

