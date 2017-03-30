local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/����ϵͳ")
require("system/�ۺϹ���")

Item = {}
Item["��ɽ��ʯ"] = {"yaoshanzhengfu13",10,"chumojiemian1",20}
Item["�ڰ���ʯ"] = {"yaoshanzhengfu14",1,"chumojiemian1",20}
Item["����ָ��"] = {"tianhuangzhengfu14",20,"chumojiemian2",25}
Item["��Ѫ����"] = {"tianhuangzhengfu15",1,"chumojiemian2",25}
Item["а�̾���"] = {"xiemiaozhengfu13",40,"chumojiemian3",30}
Item["а������"] = {"xiemiaozhengfu14",1,"chumojiemian3",30}
Item["ħ��Ԫ��"] = {"tianmozhengfu13",40,"chumojiemian4",35}
Item["��ħ�ܲ�"] = {"tianmozhengfu14",1,"chumojiemian4",35}
Item["�֮��"] = {"haidizhengfu13",40,"chumojiemian6",30}
Item["����֮��"] = {"haidizhengfu14",1,"chumojiemian6",30}
Item["ħ��ʬ��"] = {"jindizhengfu13",40,"chumojiemian5",30}
Item["ħ��֮Դ"] = {"jindizhengfu14",1,"chumojiemian5",30}

function main(player, item_guid)

	local ItemName = lualib:Name(item_guid)
	if Item[ItemName] == nil then
		return false
	end
	
	if lualib:Player_GetIntProp(player, lua_role_level) < Item[ItemName][4] then
		lualib:NPCTalk(player,"�ȼ���Ҫ����"..Item[ItemName][4].."ʹ�á�\n \n<@likai *01*�ر�>\n")
		return false
	end
	
	if lualib:GetInt(player,Item[ItemName][1]) < Item[ItemName][2] then
		lualib:Item_Destroy(player, item_guid, "ɾ���ߣ�ʹ������ϵͳ����", "����ϵͳ����")
		lualib:SetInt(player,Item[ItemName][1],lualib:GetInt(player,Item[ItemName][1])+1)
		lualib:NPCTalk(player,"���ռ�" .. ItemName .. lualib:GetInt(player,Item[ItemName][1]) .. "/" .. Item[ItemName][2] .. "��\n \n<@"..Item[ItemName][3].." *01*����������>\n<@likai *01*�ر�>")
		return true
	else
		lualib:NPCTalk(player,"���Ѿ��������Ӧ������Ŀ�꣬������ʹ����������ˡ�\n \n<@likai *01*�ر�>")
		return false
	end
end