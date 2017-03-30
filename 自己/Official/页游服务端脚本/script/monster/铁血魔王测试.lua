local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local bosslist =  {{"������"     ,"��40����"  ,"15����"  ,"��򼶴����","BOSS֮��һ��"},
					{"��ɫ����"   ,"��50����"  ,"15����"  ,"������","BOSS֮��һ��","�������һ��"},
					{"�������"   ,"��60����"  ,"15����","�����������","�������һ��"},
					{"�������"   ,"��70����"  ,"30����","������������","BOSS֮��һ��","�������һ��"},
					{"���¶�ħ"   ,"��80����"  ,"30����","����������","BOSS֮��һ��","�������һ��"},
					{"ţħ��"     ,"��100����" ,"60����","ţħ������","BOSS֮��һ��","�������һ��"},
					{"��Ȫ����"   ,"��120����" ,"120����","��ħ������","BOSS֮��һ��","����������"},
					{"ʬ��"       ,"��120����" ,"120����","ʬħ������","BOSS֮��һ��"},
					{"��ħ����"   ,"��120����" ,"120����","��ħ������","BOSS֮��һ��"},
					{"ħ������"   ,"��140����" ,"150����","ħ��������"},
					{"��β�ں���" ,"��140����" ,"150����","�����������","�����������"},
					{"��צ�����" ,"��140����" ,"150����","�����������","�����������"},
					{"�����غ���" ,"��140����" ,"150����","�����������","�����������"},
					{"ѩ��ħ��"   ,"��140����" ,"150����","ѩ����������","BOSS֮�Ҷ���"},
					{"��������"   ,"��160����" ,"180����","BOSS֮��һ��","���׶�Ѩ����"},
					{"����"       ,"��180����" ,"180����","�����������","BOSS֮�Ҷ���"},
					{"��������"   ,"��180����" ,"180����","���֮������","BOSS֮��һ��","��������Ĳ�"},
					{"������"     ,"��180����" ,"180����","����������","��������Ĳ�"},
					{"���ĺ���"   ,"��180����" ,"180����","������������","BOSS֮�Ҷ���","��������Ĳ�"},
					{"���ħ"   ,"��180����" ,"180����","������������","BOSS֮�Ҷ���"},
					{"������"     ,"��200����" ,"180����","������������","BOSS֮�Ҷ���"},
					{"������ħ"   ,"��200����" ,"240����","BOSS֮������"},
					{"����ħ��"   ,"��200����" ,"240����","BOSS֮������"},
					{"��Ѫħ��"   ,"��200����" ,"240����","BOSS֮������"}
}

function on_create(monster)
	local monster_keyname = lualib:KeyName(monster)  
	local item_map_guid = lualib:MapGuid(monster)
	local map_keyname  = lualib:Name(item_map_guid)  
	local str_tab ={map_keyname}
	local str =  lualib:GetStr("",  monster_keyname) 
	lualib:SysMsg_SendBroadcastColor(  "#COLORCOLOR_RED#BOSS #COLORCOLOR_RED#"..lualib:Name( monster ).."#COLORCOLOR_GOLD#������#COLORCOLOR_BLUE#"..lualib:Name( lualib:MapGuid( monster ) ), "" , 5 , 11 )
	local l=0
	if str == "" then 
		local temp = json.encode(str_tab)
		lualib:SetStr("",  monster_keyname, temp ) 
	else 
		local temp = json.decode(str)
		for i=1,#temp do
			if temp[i] == map_keyname then                      --�жϲ������Ƿ������map_keyname
				l=1
			end
		end
		if l==0 then 
			temp[#temp+1] = map_keyname
			local temp_decode = json.encode(temp)
			lualib:SetStr("",  monster_keyname, temp_decode) 
		end
	end
	if monster_keyname == "����" then
		lualib:AddTrigger(monster,  lua_trigger_attack_ex, "on_attack")
		lualib:AddTrigger(monster,  lua_trigger_monster_out_fight, "on_monster_out_fight")
	end
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end	



function on_attack(monster,attacker)
	lualib:SysRoleTalk(monster, "ƾ��Ҳ������ս�ң��һ�������֪��ʲô�е�����")
	lualib:AddTimerEx(monster,999,10000,-1,"on_skill","ȫ�������ͷ�")
	return
end

function on_skill(monster,player)
	local skiller = tostring(monster)
	lualib:Monster_SpellTarget(monster,95,skiller)
	lualib:SysRoleTalk(monster, "�������ҵ��޾�ŭ��")
	return
end

function on_monster_out_fight(monster)
    lualib:SysMsg_SendRoleTalk(monster, "���������Ķ������ߣ�")
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
	if monster_keyname == "����" then
		lualib:DisableTimer(monster,999)
		lualib:RemoveTrigger(monster, lua_trigger_attack, "on_attack")
		lualib:RemoveTrigger(monster, lua_trigger_post_die, "on_trigger_post_die")
		lualib:SysRoleTalk(monster, "�ⲻ���ܡ����������ɡ����ܡ���")
	end
	return "" 
	end
	