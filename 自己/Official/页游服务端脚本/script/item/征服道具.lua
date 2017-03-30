local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/征服系统")
require("system/综合功能")

Item = {}
Item["妖山矿石"] = {"yaoshanzhengfu13",10,"chumojiemian1",20}
Item["黑暗矿石"] = {"yaoshanzhengfu14",1,"chumojiemian1",20}
Item["妖兽指环"] = {"tianhuangzhengfu14",20,"chumojiemian2",25}
Item["滴血禅珠"] = {"tianhuangzhengfu15",1,"chumojiemian2",25}
Item["邪教经书"] = {"xiemiaozhengfu13",40,"chumojiemian3",30}
Item["邪神令牌"] = {"xiemiaozhengfu14",1,"chumojiemian3",30}
Item["魔灵元气"] = {"tianmozhengfu13",40,"chumojiemian4",35}
Item["天魔密藏"] = {"tianmozhengfu14",1,"chumojiemian4",35}
Item["深海之魂"] = {"haidizhengfu13",40,"chumojiemian6",30}
Item["海洋之心"] = {"haidizhengfu14",1,"chumojiemian6",30}
Item["魔能尸脑"] = {"jindizhengfu13",40,"chumojiemian5",30}
Item["魔能之源"] = {"jindizhengfu14",1,"chumojiemian5",30}

function main(player, item_guid)

	local ItemName = lualib:Name(item_guid)
	if Item[ItemName] == nil then
		return false
	end
	
	if lualib:Player_GetIntProp(player, lua_role_level) < Item[ItemName][4] then
		lualib:NPCTalk(player,"等级需要到达"..Item[ItemName][4].."使用。\n \n<@likai *01*关闭>\n")
		return false
	end
	
	if lualib:GetInt(player,Item[ItemName][1]) < Item[ItemName][2] then
		lualib:Item_Destroy(player, item_guid, "删道具：使用征服系统道具", "征服系统道具")
		lualib:SetInt(player,Item[ItemName][1],lualib:GetInt(player,Item[ItemName][1])+1)
		lualib:NPCTalk(player,"已收集" .. ItemName .. lualib:GetInt(player,Item[ItemName][1]) .. "/" .. Item[ItemName][2] .. "。\n \n<@"..Item[ItemName][3].." *01*打开征服界面>\n<@likai *01*关闭>")
		return true
	else
		lualib:NPCTalk(player,"你已经完成了相应的征服目标，不用再使用这个道具了。\n \n<@likai *01*关闭>")
		return false
	end
end