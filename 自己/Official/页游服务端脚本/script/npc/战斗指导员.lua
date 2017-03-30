local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc,player)
	local msg = ""
	msg = msg .."     ս����һ��սʿǿ��ĸ�Դ�����ǣ�ֻ�о��������μ��͵�Ѫս�����ܽ�ս�����������������\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@func_2 *01*�ͷ���һ����Ӣ�֣�>\n\n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*�뿪������>\n\n"
	msg = msg.."#COLORCOLOR_SKYBLUE#���ѣ��뿪�������ٸ�����������δ��ɣ��ʹ�ָ��Ա���ٴν��롣#COLOREND#\n"
	return msg
end


function func_2(npc,player)
	
	local mon_1 = {"��Ӣʬū11", "��Ӣ����๤11", "��Ӣ����๤11", "��Ӣ���ʬū11", "��Ӣ����ʬū11", "��Ӣʬū��ͷ11"}
	local X = lualib:X(npc)
    local Y = lualib:Y(npc)
	local map = lualib:MapGuid(npc)
	local b = lualib:GenRandom(1, 8)	
	local z = lualib:GetInt(map, "�ͷŹ���")
	
	if z == 1 then   --��1�ε���ͷŹ�����ǵ�2��ˢ�֣�����Ϊ3ֻ
		for i=1,3 do
		lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
		end
		
		lualib:SysMsg_SendTriggerMsg(player, "ע�⣺�������#COLORCOLOR_GOLD#ս��ָ��Ա#COLOREND#�ͷ���һ����Ӣ�������Ϊ��һ��������+1.")
		lualib:SetInt(map, "�ͷŹ���", 2)
	return ""
	
	
	elseif z == 2 then  --��2�ε���ͷŹ�����ǵ�3��ˢ�֣�����Ϊ4ֻ
		for i=1,4 do
		lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
		end
		
		lualib:SysMsg_SendTriggerMsg(player, "ע�⣺�������#COLORCOLOR_GOLD#ս��ָ��Ա#COLOREND#�ͷ���һ����Ӣ�������Ϊ��һ��������+1.")
		lualib:SetInt(map, "�ͷŹ���", 3)
	return ""
	
	
	elseif z == 3 then   --��3�ε���ͷŹ�����ǵ�4��ˢ�֣�����Ϊ5ֻ
		for i=1,5 do
		lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
		end
		
		lualib:SysMsg_SendTriggerMsg(player, "ע�⣺�������#COLORCOLOR_GOLD#ս��ָ��Ա#COLOREND#�ͷ���һ����Ӣ�������Ϊ��һ��������+1.")
		lualib:SetInt(map, "�ͷŹ���", 4)
	return ""
	
		
	elseif z == 4 then   --��4�ε���ͷŹ�����ǵ�5��ˢ�֣�����Ϊ6ֻ.����˲����������
		for i=1,6 do
			local monster = lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
			lualib:AddTimerEx(map, 2, 8000, -1, "on_die", "map")
			--lualib:AddTrigger(monster, lua_trigger_post_die, "on_die")
		end
		
		lualib:SysMsg_SendTriggerMsg(player, "ע�⣺�����ͷ���ϣ��������й�����������ս��")
		lualib:SetInt(map, "�ͷŹ���", 5)		
	return ""	
	
	else return "�����ͷ���ϣ�\n \n \n"	
	end	
	
end

function on_die(map)  

	local live_monster = lualib:Map_GetRegionMonsters(map, "", 0, 0, 100, true, true)  --�������б�
	if live_monster[1] == nil then
		lualib:AddTimerEx(map, 3, 1000, 1, "destroy", "map")
	
	end

end

function likai(npc,player)
	lualib:Player_MapMoveXY(player, "���ִ�", 245, 209, 5)
	local map = lualib:MapGuid(npc)
	lualib:Map_DestroyDgn(map)	
	
	return ""
end

function destroy(map)
	lualib:Map_DestroyDgn(map)
	return ""
end




