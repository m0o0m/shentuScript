local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/����ϵͳ")
require("system/�ۺϹ���")


function main(npc, player)

	tianmozhengfudian = 6/100*lualib:GetInt(player,"tianmozhengfu1")
				+6/100*lualib:GetInt(player,"tianmozhengfu2")
				+6/100*lualib:GetInt(player,"tianmozhengfu3")
				+6/100*lualib:GetInt(player,"tianmozhengfu4")
				+6/100*lualib:GetInt(player,"tianmozhengfu5")
				+6/100*lualib:GetInt(player,"tianmozhengfu6")
				+6/100*lualib:GetInt(player,"tianmozhengfu7")
				+6/100*lualib:GetInt(player,"tianmozhengfu8")
				+6/100*lualib:GetInt(player,"tianmozhengfu9")
				+6/12*lualib:GetInt(player,"tianmozhengfu10")
				+10/1*lualib:GetInt(player,"tianmozhengfu11")
				+10/1*lualib:GetInt(player,"tianmozhengfu12")
				+10/40*lualib:GetInt(player,"tianmozhengfu13")
				+10/1*lualib:GetInt(player,"tianmozhengfu14")
				
	if tianmozhengfudian >= 10 and string.len(tostring(tianmozhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,5)
	elseif tianmozhengfudian < 10 and string.len(tostring(tianmozhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		tianmozhengfudxs = string.sub(tianmozhengfudian,1,4)
	else
		tianmozhengfudxs = tianmozhengfudian
	end

	local msg = "��ħʯ�ߵĶ�ħ��ͼ��ռ���ǣ�������Ǻð���\n \n"
	msg = msg.."#COLORCOLOR_RED#�ڵ�ͼ��̽��ð��ʱ�᲻֪�������ӶԵ�ͼ�������ȣ���������ȡ���ֽ�����#COLOREND##COLORCOLOR_GREENG#��ħʯ��#COLOREND##COLORCOLOR_BLUE#�ʺ�40-50��̽��#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian4 *01*�鿴��������>   Ŀǰ����#COLORCOLOR_ORANGE#"..tianmozhengfudxs.."%#COLOREND#\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*[�뿪]>\n"
	return msg
end

function leave(player,npc)
	return ""
end