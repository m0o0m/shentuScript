--����ű��������ǣ����Ե��õ�systemĿ¼�µĽű��������ýпͻ���ȥ����formĿ¼�µĽű���
--��ҵ�½���õĽű���form���ű��϶�Ϊһ��
--��Ҫ��ҵ�½ʱֱ�ӵ���form�µĽű��������ͻ��˻�������form�½ű�����Ҳ��һ���ģ�Ҳ�Ǻ϶�Ϊһ
--��������������ҿ��Ե��õĺ�����
--����������ù��ܽű����Ƿŵ�form�º�һ�㣬��һ�ж����ťҪ����form�Ļ��ͼ����ˣ�����Ҫ�����ű���

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/online_gift")
-- require("system/�Զ����")
require("system/��ֵ���")

lualib:SetFormAllowFunc({"main",});

-- local all_timecount = 
-- {
--     ["�������"] = { 
--             complete = function(player)
--                 show_my_online_gift(player)            
--             end,
--             uncomplete = function(player)
--                 show_my_online_gift(player)            
--             end,
--     },
--     ["��ֵ���"] = { 
--             complete = function(player)
--                 show_my_first_bill_gift(player)            
--             end,
--             uncomplete = function(player)
--                 show_my_first_bill_gift(player)            
--             end,
--     },
-- 	["�Զ����"] = { 
-- 		    complete = function(player)
--                 guaji(player)            
--             end,
--             uncomplete = function(player)
--                 guaji(player)            
--             end,
--     },	
-- }

-- function main(player, notify)
--     local time = lualib:GetInt(player, notify.."����ʱ")
--     if all_timecount[notify] ~= nil then
--         if time > lualib:GetTime() then
--             lualib:Print("����ʱδ��ɣ�����ύ����ʱ"..notify);
--             all_timecount[notify].uncomplete(player)
--         else
--             lualib:Print("����ʱ��ɣ�����ύ����ʱ"..notify);
--             all_timecount[notify].complete(player)
--         end
--     end
--     return ""
-- end


local all_timecount = 
{
    ["�������"] = show_my_online_gift,  --�������Ǳ�����ֱ�Ӹ�ֵ�Ϳ���,�Ǹ�time����û������,�������ܸ����Լ�����
    ["��ֵ���"] = show_my_first_bill_gift,

}

function main(player, notify)
    all_timecount.notify(player)
    return ""
end