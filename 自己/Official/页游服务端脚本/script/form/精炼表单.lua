local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[
    1.	ֻ���趨Ϊ�ɾ�����װ������ͨ������ϵͳ���о���
2.	����ʱ��Ҫѡ����Ӧ�����Խ��о���
3.	����һ����Ϊ12����ÿ����һ���ȼ�����������Ӧ�����Լӳ�
4.	������Ҫ������Ԫ�飬����ʧ�ܺ����ȼ�-1�� �������X������ʧ���Ƿ�ʧ��
5.	������Ҫ���Ľ�ң���ͬ�ȼ����Ĳ�ͬ����
6.	���ݾ����ĵȼ���Ϊװ���������������͵����԰ٷֱȣ���ԭ��װ�������뱾��װ�����Բ���ͬ����ֱ�ӽ�ԭ�������滻Ϊ�µľ�����������
7.	������6�����ϣ���ȫ�����棬��[playerName]�ھ�����ʦ��[��ɽ��199:319]��[itemName]������X����������
8.	װ���������Զ�����������װ�����Ϻ�ѡ�����ȼ�������Զ�����������������趨�ȼ�ֹͣ�����ھ���ѭ�������в��ϲ��㣬Ҳֹͣ��
9.	��ͬװ�������ܾ��������Բ�ͬ
����*1�D�﹥��ħ��������
��ָ*2�D�﹥��ħ��������
����*1�DѪ���ޡ�������
����*2�DѪ���ޡ�������
ͷ��*1�D�����ħ��
�·�*1�D�����ħ��
ѥ��*1�D�����ħ��
10.	Я��ȫ��7��8��9������װ���и�������(��Ҫ�İ�ȡһ��������������)
--]]

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/refine")

--�������� ��Ԫ������ ���
t = {
{10000, 1, 5000},
{7000, 2, 5000},
{6000, 4, 5000},
{5000, 6, 5000},
{4000, 8, 5000},
{3300, 10, 5000},
{2500, 12, 5000},
{1000, 14, 5000},
{500, 16, 5000}
}

function process_one(player, item, material, refine_level, att_name)
	local src_refine_level = refine_level
    local is_gold_bind = false
    local gold_cost = t[refine_level + 1][3]

    if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
        return "��Ҳ���"
    end

    local material_amount = lualib:Item_GetAmount(player, material)
    if material_amount < t[refine_level + 1][2] then
        return "��Ԫ����������"
    end

    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "����", "�ǰ�") then
        return "ϵͳ����"
    end

    lualib:Item_SetAmount(player, material, material_amount - t[refine_level + 1][2])

    local user_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local item_name = lualib:Item_GetName(player, item)

    if lualib:GenRandom(0, 10000) > t[refine_level + 1][1] then

		if refine_level >= 2 then
            refine_level = refine_level - 1
        end
		--"�˴�����Ϊ����ʼ�ȼ�Ϊx������ʱʧ�ܺ󽵵�1��"

        if not update_item(player, item, refine_level - 0, att_name) then
            lualib:SysMsg_SendPromptMsg(player, "ϵͳ����")
        end

        lualib:Item_NotifyUpdate(player, item)

        local new_refine_level = lualib:Equip_GetRefineLevel(player, item)
        lualib:SysMsg_SendPromptMsg(player, "����ʧ�ܣ�["..item_name.."]��ǰ�����ȼ�Ϊ"..new_refine_level.."����")

        lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, item),
            item, src_refine_level, new_refine_level, "����ʧ��", "ϵͳ")

        return ""
    end

    if not update_item(player, item, refine_level + 1, att_name) then
        lualib:SysMsg_SendPromptMsg(player, "ϵͳ����")
    end

    lualib:Item_NotifyUpdate(player, item)

    local new_refine_level = lualib:Equip_GetRefineLevel(player, item)

	local play_m = lualib:MapGuid(player)
	local map_Name = lualib:Name(play_m)
	local play_x = lualib:X(player)
	local play_y = lualib:Y(player)
    local s = "["..user_name.."]".."��["..map_Name..play_x..":"..play_y.."]��["..item_name.."]������"..new_refine_level.."��������"
    if new_refine_level >= 3 then
        lualib:SysMsg_SendCenterMsg(1, s, "")
    else
        lualib:SysMsg_SendPromptMsg(player, s)
    end

    --[[
        void LogFull(const std::string &role_name,      /// ��ɫ������
        int action,                                 /// ����                                 /// y
        const std::string &item_key_name,           /// ��Ʒ����
        const std::string &s_item_guid,             /// ��Ʒguid
        INT32 src_value,                            /// ԭ����
        INT32 ref_value,                            /// �ı���
        const std::string &descript,                /// ����
        const std::string &target_name              /// Ŀ������
    --]]
    lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, item),
        item, src_refine_level, new_refine_level, "�����ɹ�", "ϵͳ")

	lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item, 0, "" ,"")
	mubiao_jinglianpanduan(player,new_refine_level)
    return ""
end

--enhance_item_site: ������Ʒ���ڸ���  material_site: �����������ڸ���  att_name: ��������
function main(player, enhance_item_site, material_site, att_name)
    local item = lualib:Item_GetBySite(player, tonumber(enhance_item_site))
    if lualib:Item_GetType(player, item) ~= 1 then
        return "����װ�����ɾ���"
    end

    local material = lualib:Item_GetBySite(player, tonumber(material_site))
    if lualib:Item_GetKeyName(player, material) ~= "��Ԫ��" then
        return "��Ҫ��ȷ�Ĳ���"
    end

    local refine_level = lualib:Equip_GetRefineLevel(player, item)
    if refine_level >= 9 then
        return "�Ѿ�ǿ������ߵȼ�"
    end

    --refine_valid_item_att
    local sub_type = lualib:Item_GetSubType(player, item)
    local find = false
    for _, v in pairs(refine_valid_item_att[sub_type]) do
        if v == tonumber(att_name) then
            find = true
        end
    end

    if not find then
        return "װ������ǿ��������"
    end

    return process_one(player, item, material, refine_level, tonumber(att_name))
end


function mubiao_jinglianpanduan(player,new_refine_level)
	new_refine_level = tonumber(new_refine_level)
	
	--Ŀ��ϵͳ��������װ��������12
	if new_refine_level >= 12 and lualib:GetInt(player,"mubiao_zhuangbei_3") == 0 then
		lualib:SetInt(player,"mubiao_zhuangbei_3",1)
		lualib:SetInt(player,"mubiao_zhuangbei",lualib:GetInt(player,"mubiao_zhuangbei")+1)
		lualib:SysMsg_SendBoardMsg(player, "Ŀ��׷��", "��������װ��������12���Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
		lualib:SysMsg_SendWarnMsg(player,"��������װ��������12���Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
	end
	
	--Ŀ��ϵͳ��������װ��������9
	if new_refine_level >= 9 and lualib:GetInt(player,"mubiao_zhuangbei_2") == 0 then
		lualib:SetInt(player,"mubiao_zhuangbei_2",1)
		lualib:SetInt(player,"mubiao_zhuangbei",lualib:GetInt(player,"mubiao_zhuangbei")+1)
		lualib:SysMsg_SendBoardMsg(player, "Ŀ��׷��", "��������װ��������9���Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
		lualib:SysMsg_SendWarnMsg(player,"��������װ��������9���Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
	end
	
	--Ŀ��ϵͳ��������װ��������6
	if new_refine_level >= 6 and lualib:GetInt(player,"mubiao_zhuangbei_1") == 0 then
		lualib:SetInt(player,"mubiao_zhuangbei_1",1)
		lualib:SetInt(player,"mubiao_zhuangbei",lualib:GetInt(player,"mubiao_zhuangbei")+1)
		lualib:SysMsg_SendBoardMsg(player, "Ŀ��׷��", "��������װ��������6���Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�", 15000)
		lualib:SysMsg_SendWarnMsg(player,"��������װ��������6���Ѵ�ɣ����#COLORCOLOR_GREENG#Ŀ�����#COLOREND#��ȡ�����ɣ�")
	end
end