local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/����ϵͳ")
require("system/�ۺϹ���")

function main(npc,player)

	haidizhengfudian = 6/100*lualib:GetInt(player,"haidizhengfu1")
				+6/100*lualib:GetInt(player,"haidizhengfu2")
				+6/100*lualib:GetInt(player,"haidizhengfu3")
				+6/100*lualib:GetInt(player,"haidizhengfu4")
				+6/100*lualib:GetInt(player,"haidizhengfu5")
				+6/100*lualib:GetInt(player,"haidizhengfu6")
				+6/100*lualib:GetInt(player,"haidizhengfu7")
				+6/100*lualib:GetInt(player,"haidizhengfu8")
				+6/100*lualib:GetInt(player,"haidizhengfu9")
				+6/12*lualib:GetInt(player,"haidizhengfu10")
				+10/1*lualib:GetInt(player,"haidizhengfu11")
				+10/1*lualib:GetInt(player,"haidizhengfu12")
				+10/40*lualib:GetInt(player,"haidizhengfu13")
				+10/1*lualib:GetInt(player,"haidizhengfu14")
				
	if haidizhengfudian >= 10 and string.len(tostring(haidizhengfudian)) > 5 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		haidizhengfudxs = string.sub(haidizhengfudian,1,5)
	elseif haidizhengfudian < 10 and string.len(tostring(haidizhengfudian)) > 4 then --��������С������2λ��ֻȡǰ2λ������ʾ����
		haidizhengfudxs = string.sub(haidizhengfudian,1,4)
	else
		haidizhengfudxs = haidizhengfudian
	end


	local msg = "���������﷢����һ�ҹŴ��ĳ���,�����ϱ���֪�Ķ�ħ���ӵ�ǿ��Ĺ���!\n \n"
	msg = msg.."#COLORCOLOR_RED#�ڵ�ͼ��̽��ð��ʱ�᲻֪�������ӶԵ�ͼ�������ȣ���������ȡ���ֽ�����#COLOREND##COLORCOLOR_GREENG#�ؾ�����#COLOREND##COLORCOLOR_BLUE#�ʺ�50-60��̽��#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700042>#<@chumojiemian5 *01*�鿴��������>   Ŀǰ����#COLORCOLOR_ORANGE#"..haidizhengfudxs.."%#COLOREND#\n \n \n"
	msg = msg.."<@likai *01*���뿪��>\n"
	return msg
end

function likai(npc,player)
	return ""
end