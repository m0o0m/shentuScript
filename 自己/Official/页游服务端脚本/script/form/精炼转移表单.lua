local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/װ���ϳ�")
require("system/refine")


--[[
��ƿ��
1.	����ת����Ҫһ�� ת��Ŀ��������һ���Ѿ��������������ߣ�ת��ʯ
2.	����ת�Ʊ���Ϊͬ���͵�װ��֮�����ת��(�磺����ֻ�ܶ�����)
3.	������Ҫ����һ������ң�������
4.	ת�ƺ󽫾�������������ת����Ŀ�������ϣ�ԭ����������ʧ
5.	����ת�Ƹ��ݾ����ȼ���ͬ�����ò���Ҳ��ͬ
1-3�����ͼ�ת��ʯ
1-6�����м�ת��ʯ
1-9�����߼�ת��ʯ
ת�Ƹ���
1����100%
2����75%
3����50%
4����100%
5����75%
6����50%
7����100%
8����75%
9����50%

6.	����ʧ�ܺ�װ��������ֻɾ������

--]]

--����ת�Ʊ���ԭװ������ ת��ʯ���� ���
t = { 
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
}

--[[local table_zb = {"ʮɱ������",
"��Ԩ������",
"���١�����",
"�ɿա�����",
"��ա�����",
"�Ͽա�����",
"���ս��(��)������",
"���ս��(Ů)������",
"���޳���(��)������",
"���޳���(Ů)������",
"��������(��)������",
"��������(Ů)������",
"����֮��������",
"����ս��������",
"ħ�Ż�������",
"����ս�䡤����",
"����֮׹������",
"������ߡ�����",
"���׻�������",
"��ڤħ�䡤����",
"�켫����������",
"�޻�ͷ��������",
"������������",
"������ָ������",
"����ѥ������"}
]]
function update_item(player, item, refine_level, att_name, att_value)
    if not lualib:Equip_SetRefineLevel(player, item, refine_level) then
        return false
    end
    
    if not lualib:Equip_SetRefineProp(player, item, att_name, att_value) then
        return false
    end
    
    return true
end

function process_one(player, src_item, material, dst_item, refine_level)
    local is_gold_bind = false
    local gold_cost = t[refine_level][3]
    if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
        return "��Ҳ���"
    end
    
    local material_amount = lualib:Item_GetAmount(player, material)
    local ref_amount = t[refine_level][2]    
    if material_amount < ref_amount then
        return "ת��ʯ��������"
    end

    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "����ת�Ʒǰ�", "ϵͳ") then
        return "ϵͳ����"
    end

    local dst_refine_level = lualib:Equip_GetRefineLevel(player, dst_item)

    
    lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, material),
        material, material_amount, ref_amount, "����ת������ת��ʯ", "ϵͳ")
	lualib:Item_SetAmount(player, material, material_amount - ref_amount)
		
    local renfine_property = lualib:Equip_GetRefineProp(player, src_item)
    local att_name = 0
    local att_value = 0
    for k, v in pairs(renfine_property) do
        att_name = k
        att_value = v
    end
    
    local user_name = lualib:Player_GetStrProp(player, lua_role_user_name)
    local src_item_name = lualib:Item_GetName(player, src_item)
    
    if lualib:GenRandom(0, 10000) > t[refine_level][1] then
        lualib:SysMsg_SendPromptMsg(player, "����ת��ʧ�ܣ�")
        return ""
    end
	
	for i = 1, #randAtt do
		local randAtt_lv = lualib:GetInt(src_item, randAtt[i][1])
		lualib:SetInt(dst_item, randAtt[i][1], randAtt_lv)
	end
	
	
    if not lualib:Item_Destroy(player, src_item, "����ת�Ƴɹ�ɾ����Ʒ", "ϵͳ") then
        lualib:SysMsg_SendPromptMsg(player, "ϵͳ����")
        return ""
    end

    if not update_item(player, dst_item, refine_level, att_name, att_value) then
        lualib:SysMsg_SendPromptMsg(player, "ϵͳ����")
    end 

    lualib:Item_NotifyUpdate(player, dst_item)

    local dst_item_name = lualib:Item_GetName(player, dst_item)
    lualib:SysMsg_SendPromptMsg(player, "����ת�Ƴɹ���["..src_item_name.."]��ʧ��["..dst_item_name.."]ԭ�����ȼ�Ϊ"..dst_refine_level.."����ǰ�����ȼ�Ϊ"..refine_level.."��")
    
    --- ����ת�Ƴɹ�
    lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, dst_item),
        dst_item, dst_refine_level, refine_level, "����ת�Ƴɹ�", "ϵͳ")

    return ""
end

--- src_item_site: ԭ����������Ʒ���ڸ���  material_site: �����������ڸ���  dst_item_site: Ŀ�ľ���������Ʒ���ڸ���
function main(player, src_item_site, material_site, dst_item_site)
    local src_item = lualib:Item_GetBySite(player, tonumber(src_item_site))
	local src_KeyName = lualib:KeyName(src_item)
    if lualib:Item_GetType(player, src_item) ~= 1 then
        return "����װ�����ɾ���"
    end
    
    local dst_item = lualib:Item_GetBySite(player, tonumber(dst_item_site))
	local dst_KeyName = lualib:KeyName(dst_item)
    if lualib:Item_GetType(player, dst_item) ~= 1 then
        return "����װ�����ɾ���"
    end
	
	if is_in_table_zb(src_KeyName,dst_KeyName) == true then 
		return "����װ�����ɾ���"
	end
	
	
    --- refine level test
    local src_refine_level = lualib:Equip_GetRefineLevel(player, src_item)
    if src_refine_level <= 0 then
        return "ԭ��Ʒû�о�����"
    end
    
    local dst_refine_level = lualib:Equip_GetRefineLevel(player, dst_item)
    if src_refine_level <= dst_refine_level then
        return "Ŀ����Ʒ�����ȼ�������ԭ��Ʒ��"
    end
    
    if lualib:Item_GetSubType(player, src_item) ~= lualib:Item_GetSubType(player, dst_item) then
        return "ͬ���͵�װ��֮����ܽ���ת��"
    end
    
    local material = lualib:Item_GetBySite(player, tonumber(material_site))    
    local material_key_name = lualib:Item_GetKeyName(player, material)
    local b1 = material_key_name == "�ͼ�ת��ʯ"
    local b2 = material_key_name == "�м�ת��ʯ"
    local b3 = material_key_name == "�߼�ת��ʯ"
    local b4 = material_key_name == "�ؼ�ת��ʯ"
    
    if src_refine_level <= 3 then
        if not (b1 or b2 or b3 or b4) then
            return "��Ҫ��ȷ�Ĳ���"
        end
    elseif src_refine_level <= 6 then
        if not (b2 or b3 or b4) then
            return "��Ҫ��ȷ�Ĳ���"
        end
    elseif src_refine_level <= 9 then
        if not (b3 or b4) then
            return "��Ҫ��ȷ�Ĳ���"
        end
    elseif src_refine_level <= 15 then
        if not b4 then
            return "��Ҫ��ȷ�Ĳ���"
        end
    end
    
    return process_one(player, src_item, material, dst_item, src_refine_level)
end
