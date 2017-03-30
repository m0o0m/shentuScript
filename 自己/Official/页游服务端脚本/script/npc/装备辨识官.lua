local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


item_t = {
    ["����"] = {
                    {"�ŭ��(δ��ʶ)", "��ʶ����(��)", "�ŭ��"}, 
                    {"���հ���(δ��ʶ)", "��ʶ����(��)", "���հ���"}, 
                    {"��������(δ��ʶ)", "��ʶ����(��)", "��������"}, 
                }, 
    ["�·�"] = {
                    {"��өĺӰ(δ��ʶ)", "��ʶ����(��)", "��өĺӰ"}, 
                    {"��өĺ¶(δ��ʶ)", "��ʶ����(��)", "��өĺ¶"}, 
                    {"��������(δ��ʶ)", "��ʶ����(��)", "��������"}, 
                    {"������ɴ(δ��ʶ)", "��ʶ����(��)", "������ɴ"}, 
                    {"�޺�����(δ��ʶ)", "��ʶ����(��)", "�޺�����"}, 
                    {"�޺�����(δ��ʶ)", "��ʶ����(��)", "�޺�����"}, 
                }, 
    ["ñ��"] = {
                    {"���ͷ��(δ��ʶ)", "��ʶ����(ñ)", "���ͷ��"}, 
                    {"ս��ͷ��(δ��ʶ)", "��ʶ����(ñ)", "ս��ͷ��"}, 
                    {"��ң����(δ��ʶ)", "��ʶ����(ñ)", "��ң����"}, 
                }, 
    ["����"] = {
                    {"�������(δ��ʶ)", "��ʶ����(��)", "�������"}, 
                    {"ս������(δ��ʶ)", "��ʶ����(��)", "ս������"}, 
                    {"��ң����(δ��ʶ)", "��ʶ����(��)", "��ң����"}, 
                }, 
    ["����"] = {
                    {"��⻤��(δ��ʶ)", "��ʶ����(��)", "��⻤��"}, 
                    {"ս������(δ��ʶ)", "��ʶ����(��)", "ս������"}, 
                    {"��ң����(δ��ʶ)", "��ʶ����(��)", "��ң����"}, 
                }, 
    ["��ָ"] = {
                    {"����ָ(δ��ʶ)", "��ʶ����(��)", "����ָ"}, 
                    {"ս����ָ(δ��ʶ)", "��ʶ����(��)", "ս����ָ"}, 
                    {"��ң��ָ(δ��ʶ)", "��ʶ����(��)", "��ң��ָ"}, 
                }, 
    ["Ь��"] = {
                    {"���ϼ��(δ��ʶ)", "��ʶ����(Ь)", "���ϼ��"}, 
                    {"����սѥ(δ��ʶ)", "��ʶ����(Ь)", "����սѥ"}, 
                    {"��ң����(δ��ʶ)", "��ʶ����(Ь)", "��ң����"}, 
                }, 
    }
item_type_t = {"����", "�·�", "ñ��", "����", "����", "��ָ", "Ь��", }
item_type_t2 = {"��", "��", "ñ", "��", "��", "��", "Ь", }
    
function main(npc,player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#װ����ʶ#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
    for i = 1, #item_type_t do
        msg = msg.."         ��ʶ #COLORCOLOR_BROWN#"..item_type_t[i].."#COLOREND# ��Ҫ #COLORCOLOR_BROWN#��ʶ����("..item_type_t2[i]..")#COLOREND# #OFFSET<X:10,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@bianshi#"..i.."# *01*��Ҫ��ʶ"..item_type_t[i]..">\n"
    end
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*[�ر�]>\n"
	return msg
end

function bianshi(npc, player, type)
    local type = tonumber(type)
    
	local msg = "\n\n"
    for i = 1, #item_t[item_type_t[type]] do
        msg = msg.."��ʶ #COLORCOLOR_BROWN#"..item_t[item_type_t[type]][i][1].."#COLOREND# ��Ҫ #COLORCOLOR_BROWN#"..item_t[item_type_t[type]][i][2].."#COLOREND#".."#OFFSET<X:10,Y:0>##IMAGE1902700042##OFFSET<X:-5,Y:-1>#<@bianshiEx".."#"..i.."#"..type.."# *01* ��Ҫ��ʶ>\n"
    end
    msg = msg .. "\n\n#OFFSET<X:270,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function bianshiEx(npc, player, index, type)
    local index = tonumber(index)
    local type = tonumber(type)
    local name = lualib:Name(player)
    local msg = "\n\n\n"
    local del_item_table = {item_t[item_type_t[type]][index][1], item_t[item_type_t[type]][index][2]}
    for i = 1, #del_item_table do
        if lualib:ItemCountByKey(player, del_item_table[i], true, false, false, 2) < 1 then
            msg = msg.."��û��"..del_item_table[i].."���޷����д˲�����\n"
            return msg
        end
        
    end
    
    if lualib:Player_ItemRequest(player, del_item_table, {1, 1}, {2, 2}, {1, 1}, "��ʶװ��", player) == false then
        msg = "ɾ����Ʒʧ�ܣ�"
        return msg 
    end
    
    if lualib:AddItem(player, item_t[item_type_t[type]][index][3], 1, false, "��ʶװ��", player) == true then
        lualib:SysMsg_SendBroadcastMsg("["..name.."]��NPCװ����ʶ�ٴ���ʶ�����Ϲ�����:"..item_t[item_type_t[type]][index][3], "")
        lualib:SysMsg_SendCenterMsg(1, "["..name.."]��NPCװ����ʶ�ٴ���ʶ�����Ϲ�����:"..item_t[item_type_t[type]][index][3], "")
        return "װ����ʶ�ɹ��������"..item_t[item_type_t[type]][index][3].."!!!" 
    end
    
end