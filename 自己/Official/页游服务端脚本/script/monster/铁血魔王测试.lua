local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local bosslist =  {{"触龙神"     ,"（40级）"  ,"15分钟"  ,"蜈蚣洞三层","BOSS之家一层"},
					{"白色恶猪"   ,"（50级）"  ,"15分钟"  ,"猪洞三层","BOSS之家一层","玛雅神殿一层"},
					{"沃玛教主"   ,"（60级）"  ,"15分钟","沃玛寺庙二层","玛雅神殿一层"},
					{"祖玛教主"   ,"（70级）"  ,"30分钟","祖玛寺庙三层","BOSS之家一层","玛雅神殿一层"},
					{"赤月恶魔"   ,"（80级）"  ,"30分钟","赤月神殿五层","BOSS之家一层","玛雅神殿一层"},
					{"牛魔王"     ,"（100级）" ,"60分钟","牛魔洞三层","BOSS之家一层","玛雅神殿一层"},
					{"黄泉教主"   ,"（120级）" ,"120分钟","骨魔洞三层","BOSS之家一层","玛雅神殿二层"},
					{"尸霸"       ,"（120级）" ,"120分钟","尸魔洞三层","BOSS之家一层"},
					{"虹魔教主"   ,"（120级）" ,"120分钟","封魔洞三层","BOSS之家一层"},
					{"魔龙教主"   ,"（140级）" ,"150分钟","魔龙城三层"},
					{"火尾黑狐王" ,"（140级）" ,"150分钟","狐月神殿三层","玛雅神殿三层"},
					{"金爪赤狐王" ,"（140级）" ,"150分钟","狐月神殿三层","玛雅神殿三层"},
					{"玉面素狐王" ,"（140级）" ,"150分钟","狐月神殿三层","玛雅神殿三层"},
					{"雪域魔王"   ,"（140级）" ,"150分钟","雪域试炼三层","BOSS之家二层"},
					{"雷炎蛛王"   ,"（160级）" ,"180分钟","BOSS之家一层","雷炎洞穴二层"},
					{"火龙"       ,"（180级）" ,"180分钟","火龙神殿三层","BOSS之家二层"},
					{"阿修罗神"   ,"（180级）" ,"180分钟","天空之城三层","BOSS之家一层","玛雅神殿四层"},
					{"蛇妖王"     ,"（180级）" ,"180分钟","玄冰殿三层","玛雅神殿四层"},
					{"寒荒海兽"   ,"（180级）" ,"180分钟","海底世界三层","BOSS之家二层","玛雅神殿四层"},
					{"深海巨魔"   ,"（180级）" ,"180分钟","海底世界三层","BOSS之家二层"},
					{"巫妖王"     ,"（200级）" ,"180分钟","海底世界三层","BOSS之家二层"},
					{"炼狱巨魔"   ,"（200级）" ,"240分钟","BOSS之家三层"},
					{"灭世魔君"   ,"（200级）" ,"240分钟","BOSS之家三层"},
					{"铁血魔王"   ,"（200级）" ,"240分钟","BOSS之家三层"}
}

function on_create(monster)
	local monster_keyname = lualib:KeyName(monster)  
	local item_map_guid = lualib:MapGuid(monster)
	local map_keyname  = lualib:Name(item_map_guid)  
	local str_tab ={map_keyname}
	local str =  lualib:GetStr("",  monster_keyname) 
	lualib:SysMsg_SendBroadcastColor(  "#COLORCOLOR_RED#BOSS #COLORCOLOR_RED#"..lualib:Name( monster ).."#COLORCOLOR_GOLD#出现在#COLORCOLOR_BLUE#"..lualib:Name( lualib:MapGuid( monster ) ), "" , 5 , 11 )
	local l=0
	if str == "" then 
		local temp = json.encode(str_tab)
		lualib:SetStr("",  monster_keyname, temp ) 
	else 
		local temp = json.decode(str)
		for i=1,#temp do
			if temp[i] == map_keyname then                      --判断参数中是否有这个map_keyname
				l=1
			end
		end
		if l==0 then 
			temp[#temp+1] = map_keyname
			local temp_decode = json.encode(temp)
			lualib:SetStr("",  monster_keyname, temp_decode) 
		end
	end
	if monster_keyname == "测试" then
		lualib:AddTrigger(monster,  lua_trigger_attack_ex, "on_attack")
		lualib:AddTrigger(monster,  lua_trigger_monster_out_fight, "on_monster_out_fight")
	end
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end	



function on_attack(monster,attacker)
	lualib:SysRoleTalk(monster, "凭你也想来挑战我？我会让你们知道什么叫地狱！")
	lualib:AddTimerEx(monster,999,10000,-1,"on_skill","全屏技能释放")
	return
end

function on_skill(monster,player)
	local skiller = tostring(monster)
	lualib:Monster_SpellTarget(monster,95,skiller)
	lualib:SysRoleTalk(monster, "来尝尝我的无尽怒火！")
	return
end

function on_monster_out_fight(monster)
    lualib:SysMsg_SendRoleTalk(monster, "不自量力的东西，哼！")
	return
end

function on_trigger_post_die(monster,killer)
	local monster_keyname = lualib:KeyName(monster) 
	local item_map_guid = lualib:MapGuid(monster)
	local map_keyname  = lualib:Name(item_map_guid)  
	local str =  lualib:GetStr("",  monster_keyname) 
	local temp_encode = json.decode(str)
	for i=#temp_encode , 1,-1 do 
		if  temp_encode[i] == map_keyname then 
			table.remove(temp_encode,i)
		end
	end
	local temp  = json.encode(temp_encode)
	lualib:SetStr("",  monster_keyname,temp) 
	local level = lualib:Level(monster)
	
	local player = ""
	if lualib:Player_IsPlayer(killer) then  
		player = killer
	elseif lualib:Player_IsPlayer(lualib:GetHeroLord(killer)) then  
		player = lualib:GetHeroLord(killer)
		
	elseif lualib:Player_IsPlayer(lualib:Name2Guid(lualib:Monster_GetMaster(killer))) then  
		player = lualib:Name2Guid(lualib:Monster_GetMaster(killer))
	end
	if player ~= "" then 
		local  boss_points = tonumber(lualib:GetInt(player,"boss_points"))
		boss_points =boss_points+level
		lualib:SetInt(player,"boss_points",boss_points)
	end
	if monster_keyname == "测试" then
		lualib:DisableTimer(monster,999)
		lualib:RemoveTrigger(monster, lua_trigger_attack, "on_attack")
		lualib:RemoveTrigger(monster, lua_trigger_post_die, "on_trigger_post_die")
		lualib:SysRoleTalk(monster, "这不可能……不……可……能……")
	end
	return "" 
	end
	