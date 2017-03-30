local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1017, "", "QuestAccomplish1017","", "*01*�������: ����"},
   {1018, "QuestAccept1018", "QuestAccomplish1018","01*����: ��������", "01*�������: ��������"},
   {1019, "QuestAccept1019", "","01*����: ʦͽ", ""}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"����㲻����װ�������ԣ����Խ��о��������޸ġ�", "�����ӡ����ʹ���װ����ö��������������", "����װ���;���ת�ƿ���ʹ�������װ������������һ�㡣"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 25000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    if lualib:KeyName(npc) ~= "װ����ʦ" then 
        return main_ex(npc, player) 
    end
    local a = 0
    local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
    msg = msg.."��#COLORCOLOR_LIGHTBROWN#�X���������[���X���������[���X���������[���X���������[#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#��#COLOREND##COLORCOLOR_LIGHTBROWN#��#COLOREND#<@InfoItemRefine *01*װ������>#OFFSET<X:-2,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND##COLORCOLOR_RED#��#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND#<@FengYin *01*�����ӡ>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND##COLORCOLOR_RED#��#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND#<@jinglianzhuanyi *01*����ת��>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLOREND##COLORCOLOR_LIGHTBROWN#��#COLOREND#<@jingliangaibian *01*�����ı�>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND##COLORCOLOR_RED#��#COLOREND#\n"
    msg = msg.."��#COLORCOLOR_LIGHTBROWN#�^���������a���^���������a���^���������a���^���������a#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                a = 1
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">#IMAGE1902700017#<@jinglianjiesao *01*[����˵��]>#IMAGE1902700017#<@fengyinjiesao *01*[��ӡ˵��]>#IMAGE1902700017#<@zhuanyijiesao *01*[ת��˵��]>#IMAGE<ID:1902700017>#<@gaibianjieshao *01*[�ı�˵��]>\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                a = 1
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">#IMAGE1902700017#<@jinglianjiesao *01*[����˵��]>#IMAGE1902700017#<@fengyinjiesao *01*[��ӡ˵��]>#IMAGE1902700017#<@zhuanyijiesao *01*[ת��˵��]>#IMAGE<ID:1902700017>#<@gaibianjieshao *01*[�ı�˵��]>\n"
            end
        end
     end

    if a ~= 1 then
        msg = msg.."#OFFSET<X:0,Y:10>##IMAGE<ID:1902700017>#<@jinglianjiesao *01*[����˵��]>  #IMAGE<ID:1902700017>#<@fengyinjiesao *01*[��ӡ˵��]>  #IMAGE<ID:1902700017>#<@zhuanyijiesao *01*[ת��˵��]>  #IMAGE<ID:1902700017>#<@gaibianjieshao *01*[�ı�˵��]>\n"

	end
	return msg
end

function main_ex(npc, player)
    local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
    msg = msg.."��#COLORCOLOR_LIGHTBROWN#�X���������[���X���������[���X���������[���X���������[#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#��#COLOREND##COLORCOLOR_LIGHTBROWN#��#COLOREND#<@InfoItemRefine *01*װ������>#OFFSET<X:-2,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND##COLORCOLOR_RED#��#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND#<@FengYin *01*�����ӡ>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND##COLORCOLOR_RED#��#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND#<@jinglianzhuanyi *01*����ת��>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLOREND##COLORCOLOR_LIGHTBROWN#��#COLOREND#<@jingliangaibian *01*�����ı�>#OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��#COLOREND##COLORCOLOR_RED#��#COLOREND#\n"
    msg = msg.."��#COLORCOLOR_LIGHTBROWN#�^���������a���^���������a���^���������a���^���������a#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."��#OFFSET<X:0,Y:4>##IMAGE<ID:1902700017>#<@jinglianjiesao *01*[����˵��]>#IMAGE<ID:1902700017>#<@fengyinjiesao *01*[��ӡ˵��]>#IMAGE<ID:1902700017>#<@zhuanyijiesao *01*[ת��˵��]>#IMAGE<ID:1902700017>#<@gaibianjieshao *01*[�ı�˵��]>\n"
    return msg
end

function zhuanyijiesao(npc, player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
    msg = msg.."#COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
    msg = msg.."��ҿ�������#COLORCOLOR_GOLD#ת��ʯ#COLOREND#����������ת�Ƶ�ͬ����װ���ϣ�#COLORCOLOR_GOLD#ת��ʯ#COLOREND#ӵ�ж��ּ��𣬿��Զ�Ӧת�Ʋ�ͬ����ľ�������.\n"
    msg = msg.."�������Ϸ�п�ͨ���������ͻ�ķ�ʽ���#COLORCOLOR_GOLD#ת��ʯ#COLOREND#��\n"
    msg = msg.."#COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."����������������������������������            ����#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [����]>\n"
    return msg
end


function gaibianjieshao(npc, player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
    msg = msg.."#COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
    msg = msg.."��ҿ�������#COLORCOLOR_GOLD#��Ԫ����#COLOREND#���������Ըı�ɴ�װ���ɾ����������������ԡ�\n"
    msg = msg.."�������Ϸ�п�ͨ����ķ�ʽ���#COLORCOLOR_GOLD#��Ԫ����#COLOREND#��\n"
    msg = msg.."#COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."����������������������������������        ��    ��#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [����]>\n"
    return msg
end


--[[       local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
    msg = msg.."#COLORCOLOR_ORANGE#��#COLOREND##COLORCOLOR_GOLD#�q�Шr �q�Шr#COLOREND#                             #OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#�p�p�p�p�p�p�p#COLOREND#\n"
    msg = msg.."#COLORCOLOR_GREENG#�u����������#COLOREND##COLORCOLOR_GOLD#�q�q �Шr#COLOREND# #OFFSET<X:2,Y:0>##COLORCOLOR_BLUE#�p�p�p�p�p�p�p�p�p�p�p#COLOREND##COLORCOLOR_BLUE#�p#COLOREND##COLORCOLOR_GOLD#�X�T�T�[#COLOREND##COLORCOLOR_BLUE#�p#COLOREND#\n"
    msg = msg.."|#COLORCOLOR_ORANGE#��#COLOREND#|#COLORCOLOR_ORANGE#������#COLOREND#||#COLORCOLOR_PURPLE#�t-------------------------------#COLOREND##OFFSET<X:3,Y:0>##COLORCOLOR_BLUE#�p�p#COLOREND##COLORCOLOR_GOLD#�U#COLOREND##COLORCOLOR_RED#װ��#COLOREND##COLORCOLOR_GOLD#�U#COLOREND##COLORCOLOR_BLUE#�p#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#�p�p�p�p�p�p�p�p�p#COLOREND##COLORCOLOR_ORANGE#��ѡ������Ҫ�˽����Ŀ#COLOREND##OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#�p�p�p#COLOREND##COLORCOLOR_GOLD#�U#COLOREND##COLORCOLOR_RED#����#COLOREND##COLORCOLOR_GOLD#�U#COLOREND##COLORCOLOR_BLUE#�p#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#�p#COLOREND##COLORCOLOR_RED#�X�h�h�h�h�h�h�h�h�[���X�h�h�h�h�h�h�h�h�[#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#�p#COLOREND##COLORCOLOR_GOLD#�U#COLOREND##COLORCOLOR_RED#װ��#COLOREND##COLORCOLOR_GOLD#�U#COLOREND##COLORCOLOR_BLUE#�p#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#�p#COLOREND##COLORCOLOR_RED#�c#COLOREND#<@jinglianjiesao *01*�Iװ���������ܩI>#OFFSET<X:-2,Y:0>##COLORCOLOR_RED#�f���c#COLOREND#<@fengyinjiesao *01*�Iװ����ӡ���ܩI>#OFFSET<X:-1,Y:0>##COLORCOLOR_RED#�f#COLOREND##COLORCOLOR_BLUE#�p#COLOREND##COLORCOLOR_GOLD#�U#COLOREND##COLORCOLOR_RED#��ӡ#COLOREND##COLORCOLOR_GOLD#�U#COLOREND##COLORCOLOR_BLUE#�p#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#�p#COLOREND##COLORCOLOR_RED#�^�k�k�k�k�k�k�k�k�a���^�k�k�k�k�k�k�k�k�a#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#�p#COLOREND##COLORCOLOR_GOLD#�^�T�T�a#COLOREND##COLORCOLOR_BLUE#�p#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BLUE#�p�p�p�p�p�p�p�p�p�p�p�p�p�p�p�p�p�p�p�p�p�p#COLOREND##OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#�p�p�p�p�p�p#COLOREND#\n"
	return msg
	end
--]]

                                                                                                                                               

function jinglianjiesao(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_RED#��#COLOREND#������һ����Ϊ15���ȼ����ȼ�Խ�ߣ������ɹ�����Խ�ͣ���\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>#����Ԫ������ҲԽ��С��Ŷ������ʧ�ܿ��ǻ������Ŷ\n"
        msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@main *01*����һҳ��>��������������������������      <@jinglianjiesao1 *01*����һҳ��>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao1(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_RED#��#COLOREND#����ͬ����װ�����������������Ͳ�ͬ����ͬʱֻ�ܾ���һ\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>#����������\n"
        msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao *01*����һҳ��>��������������������������      <@jinglianjiesao2 *01*����һҳ��>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao2(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_RED#��#COLOREND#�����Я��ȫ�׾���+6��+9��+12��+15��װ�����и������ԣ���\n \n"
	msg = msg.."#OFFSET<X:0,Y:-2>#�������������Խ������ʾ�������£�\n"
        msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao1 *01*����һҳ��>��������������������������      <@jinglianjiesao3 *01*����һҳ��>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#"
	return msg
end




function zbxiayiye(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-9>##COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#========================================================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n \n"
     msg = msg.."������ #OFFSET<X:0,Y:-5>##COLORCOLOR_BLUE#�X�j�j�j�j�j�j�j�[�������X�j�j�j�j�j�j�j�[#COLOREND#\n"
     msg = msg.."������ #OFFSET<X:0,Y:-4>##COLORCOLOR_BLUE#�d#COLOREND#<@shuxingduiying *01*װ����Ӧ������>#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#�p�p�p�p�p#COLOREND#<@fujia *01*װ�����ӵ�����>#OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#�g#COLOREND#\n"
     msg = msg.."������ #OFFSET<X:0,Y:-4>##COLORCOLOR_BLUE#�^�m�m�m�m�m�m�m�a���p���^�m�m�m�m�m�m�m�a#COLOREND#\n"
     msg = msg.."���������� #OFFSET<X:0,Y:-3>##COLORCOLOR_RED#�d#COLOREND##COLORCOLOR_GOLD#�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T#COLOREND##COLORCOLOR_RED#�e#COLOREND#\n \n"

     msg = msg.."��#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>#<@jinglianjiesao *01*����һҳ��>��#OFFSET<X:1,Y:0>##COLORCOLOR_GOLD#����������������������#COLOREND#��#IMAGE<ID:1902700019>#<@main *01*��������ҳ��>\n\n"

	return msg
end


function jinglianjiesao3(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_RED#װ���ɾ���������#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_GOLD#��   ��������ָ�� #OFFSET<X:2,Y:0>#��#COLOREND##COLORCOLOR_RED#������#COLOREND##COLORCOLOR_ORANGE#�﹥���ޡ�ħ�����ޡ���������#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_GOLD#���·���ͷ����Ь�ӡ�#COLOREND##COLORCOLOR_RED#������#COLOREND##COLORCOLOR_ORANGE#������ޡ�ħ������#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_GOLD#���������������#COLOREND##COLORCOLOR_RED#������#COLOREND##COLORCOLOR_ORANGE#HP���ޡ�MP����#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_BLUE#�������Զ�Ϊ�ٷֱȣ������������������ԡ�#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	    msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao2 *01*����һҳ��>��������������������������      <@jinglianjiesao4 *01*����һҳ��>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n \n"
	return msg
end

function jinglianjiesao4(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#���ȫ��+6װ�����ԣ�\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#������ޡ��������ٷ�֮����#COLORCOLOR_RED#��#COLOREND#�﹥���ޡ��������ٷ�֮��\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#ħ�����ޡ��������ٷ�֮����#COLORCOLOR_RED#��#COLOREND#ħ�����ޡ��������ٷ�֮��\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#*HP*���ޡ�#OFFSET<X:1,Y:0>#�������ٷ�֮����#COLORCOLOR_RED#��#COLOREND#�������ޡ��������ٷ�֮��\n"
        msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_RED#��#COLOREND#*MP*���ޡ�#OFFSET<X:1,Y:0>#������#OFFSET<X:1,Y:0>#�ٷ�֮��\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao3 *01*����һҳ��>��������������������������      <@jinglianjiesao5 *01*����һҳ��>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao5(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#���ȫ��+9װ�����ԣ�\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#������ޡ��������ٷ�֮����#COLORCOLOR_RED#��#COLOREND#�﹥���ޡ��������ٷ�֮��\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#ħ�����ޡ��������ٷ�֮����#COLORCOLOR_RED#��#COLOREND#ħ�����ޡ��������ٷ�֮��\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#*HP*���ޡ�#OFFSET<X:1,Y:0>#�������ٷ�֮����#COLORCOLOR_RED#��#COLOREND#�������ޡ��������ٷ�֮��\n"
        msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_RED#��#COLOREND#*MP*���ޡ�#OFFSET<X:1,Y:0>#������#OFFSET<X:1,Y:0>#�ٷ�֮��\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao4 *01*����һҳ��>��������������������������      <@jinglianjiesao6 *01*����һҳ��>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao6(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#���ȫ��+12װ�����ԣ�\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#������ޡ������ٷ�֮ʮ��#COLORCOLOR_RED#��#COLOREND#�﹥���ޡ������ٷ�֮ʮ\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#ħ�����ޡ������ٷ�֮ʮ��#COLORCOLOR_RED#��#COLOREND#ħ�����ޡ������ٷ�֮ʮ\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#*HP*���ޡ�#OFFSET<X:1,Y:0>#�����ٷ�֮ʮ��#COLORCOLOR_RED#��#COLOREND#�������ޡ������ٷ�֮ʮ\n"
        msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_RED#��#COLOREND#*MP*���ޡ�#OFFSET<X:1,Y:0>#�����ٷ�֮ʮ\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao5 *01*����һҳ��>��������������������������      <@jinglianjiesao7 *01*����һҳ��>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>##OFFSET<X:0,Y:-2>#\n"
	return msg
end

function jinglianjiesao7(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#���ȫ��+15װ�����ԣ�\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#������ޡ������ٷ�֮ʮ�塡#COLORCOLOR_RED#��#COLOREND#�﹥���ޡ������ٷ�֮ʮ��\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#ħ�����ޡ������ٷ�֮ʮ�塡#COLORCOLOR_RED#��#COLOREND#ħ�����ޡ������ٷ�֮ʮ��\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_RED#��#COLOREND#*HP*���ޡ�#OFFSET<X:1,Y:0>#�����ٷ�֮ʮ�塡#COLORCOLOR_RED#��#COLOREND#�������ޡ������ٷ�֮ʮ��\n"
        msg = msg.."#OFFSET<X:0,Y:-1>##COLORCOLOR_RED#��#COLOREND#*MP*���ޡ�#OFFSET<X:1,Y:0>#�����ٷ�֮ʮ��\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_LIGHTBROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-2>#<@jinglianjiesao7 *01*����һҳ��>������������������������       #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*������ҳ>\n"
	return msg
end


function fengyinjiesao(npc , player)
   local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#=================#COLOREND##COLORCOLOR_RED#��ӭ����װ������ϵͳ#COLOREND##COLORCOLOR_GOLD#================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"

	msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_RED#�壺#COLOREND##COLORCOLOR_ORANGE#��ӡ���������װ���õ����벻�������ԣ�#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#�棺#COLOREND##COLORCOLOR_ORANGE#��ӡ����ʱ��߿ɻ��3�����ԣ��������һ��ʻ�ñ�������Ѫ��ϡ�����ԣ�#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#�磺#COLOREND##COLORCOLOR_ORANGE#�������÷�ӡ���ԣ������ú���ʲô���ԾͿ�����������#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."������������������������������������������������#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [����]>\n"
	return msg

end

function InfoItemRefine(npc, player)
    lualib:ShowForm(player, "������2")

    return ""
end

function FengYin(npc, player)
	local msg = ""
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	local time_cha = times - StartServerTime_int
	
	if time_cha < 86400 * 5 then 	--(5��) 
		msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#��ӡ����ϵͳ���ڿ���5���������5���������~\n"
		msg = msg.."������������������������������������������������#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [����]>\n"
		return msg
	end
	
   lualib:ShowForm(player, "������")

    return ""
end

function jinglianzhuanyi(npc, player)
   lualib:ShowForm(player, "����ת�Ʊ�")

    return ""
end

function jingliangaibian(npc, player)
   lualib:ShowForm(player, "�����ı��")

    return ""
end
--------1017��

function QuestAccomplish1017(npc, player)
    msg = "װ������ʱ�������ѡ��Ϊ���װ����������ĳ�����԰ٷֱȵ�ѡ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1017 *01* ������������װ������>\n"
    return msg
end


function Accomplish1017(npc, player)
    if lualib:AccomplishQuest(player, 1017, 0) == true then
        msg = "�����ǰ���ȫ�����Եİٷֱ�������Ŷ��\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1018 *01* ֪���ˣ���ȡ���񣺾�������>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

--------1018��

function QuestAccept1018(npc,player)
    msg = "���㾫��ǰ����Ҫ�����㣺\nװ����������Ҫ��Ԫ��ſɾ���\n�������ѣ�װ�����������Դ�����\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1018 *01* ���˽���>\n"
	return msg
end

function Accept1018(npc, player)
    if lualib:AcceptQuest(player, 1018) == true then
		msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:װ����ʦ,NPCID:1004>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccomplish1018 *01* �������>\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

--------1018��

function QuestAccomplish1018(npc, player)
    msg = "��Ԫ���ڻ������϶࣬��ȥ��עһ�»�ɡ�����ͷĿ�ֺ�BOSS��Ҳ�м��ʱ���Ԫ��\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1018 *01* ����װ����ʦ�Ի�����ȡ�µ�����>\n"
    return msg
end


function Accomplish1018(npc, player)
    if lualib:AccomplishQuest(player, 1018, 0) == true then
		lua_job = lualib:Player_GetIntProp(player, lua_role_job)
		lua_item = {"���ĳ���","ҹ��ì","����"}
		lualib:Player_GiveItemBind(player, lua_item[lua_job], 1, "����Ʒ��װ������", player)
        msg = "ȥ��ʦͽ����Ա������Ϸ���Ҹ�ʦ����������ĸ���������죡\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1019 *01* �õģ������ȥ��ʦͽ����Ա>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

---1019��
function QuestAccept1019(npc,player)
    msg = "ȥ��ʦͽ����Ա�˽�һ��ʦͽ���ܰɣ�����Ϸ���Ҹ�ʦ��������������˽�������;���磡\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1019 *01* лл>\n"
	return msg
end

function Accept1019(npc, player)
    if lualib:AcceptQuest(player, 1019) == true then
        return "��#COLORCOLOR_GREENG# #NPCLINK<STR:ʦͽ����Ա,NPCID:1005>##COLOREND#�˽�ʦͽϵͳ"
    else
        return "�����ȡʧ��"
    end
end



function Lever(npc,player)
	return ""
end
