local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/��ҫװ���һ�")

function zhuangbei_huishou(player,item)
    zhuangbei_huishou_1(player,item)
    return ""
end

function zhuangbei_xianshi(player,item)
	local KeyName = lualib:KeyName(item)
    
    if lualib:Item_GetType(player,item) == 1 then
	else
		lualib:MsgBox(player,"ֻ��װ���ſɻ��գ�")
		local str = "RichEditClear(nil,\"װ������,����2\");RDItemCtrlClearGUIData(nil,\"װ������,��Ʒ\")"
		lualib:ShowFormWithContent(player, "�ű���", str)
		return ""
    end
    
    if zhuangb_table[KeyName] == nil then
		lualib:MsgBox(player,"��װ�����ܽ��л��գ�")
		local str = " RichEditClear(nil,\"װ������,����2\");RDItemCtrlClearGUIData(nil,\"װ������,��Ʒ\")"
		lualib:ShowFormWithContent(player, "�ű���", str)
		return ""
    end
    
    
	local lv = lualib:Equip_GetRefineLevel(player,item)
    local item_keyname = lualib:KeyName(item)
    local item_rongyao = 0
    local item_rongyao_paizi_count = 0
    if zhuangb_table[item_keyname] > 1000 then
        item_rongyao = math.floor(zhuangb_table[item_keyname] * huishou_table[lv][1] / 1000) + zhuangb_table[item_keyname] - 1000
    else
        item_rongyao = math.floor(zhuangb_table[item_keyname] * huishou_table[lv][1] / 1000)
    end
    if item_rongyao >= 500 then
        item_rongyao_paizi_count = math.floor(item_rongyao / 500)
        item_rongyao = item_rongyao % 500
    end
    
    local t = lualib:Item_DataRow(item_keyname)
    local sellprice = t["SellPrice"]
    local max_naijiu = t["Durability"]
    local cur_naijiu = lualib:Item_GetDurability(player, item)
    local item_price = math.floor(sellprice * cur_naijiu / max_naijiu)
    
    local s = ""
    if item_rongyao > 0 then
        s = "�ɻ�ã���ҫ*"..item_rongyao
    else
        if lualib:Item_IsBind(player, item) == true then
            s = "�ɻ�ã��󶨽��"..item_price
        else
            s = "�ɻ�ã����"..item_price
        end
    end
	if huishou_table[lv][2] ~= nil then
		for k,v in pairs(huishou_table[lv][2]) do
            if item_rongyao_paizi_count > 0 then
                s = s .. "��"..v[1].."*"..item_rongyao_paizi_count
            else
                s = s .. ""
            end
		end
	end

    local str = "RichEditClear(nil,\"װ������,����2\"); RichEditAppendString(nil,\"װ������,����2\",\""..s.."\")"
	lualib:ShowFormWithContent(player, "�ű���", str)
	return ""
end
    