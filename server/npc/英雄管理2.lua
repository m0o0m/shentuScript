local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function main(npc, player)
	local msg = [[��ã���ʲô�ɰ������

	<@yingxiong *01*����Ӣ��>
	<@huolong *01*�������֮��>
]]	
	return msg
end

local hero_ = {
				{"Ӣ�ۣ���սʿ��", 1, 1},
				{"Ӣ�ۣ�Ůսʿ��", 1, 2},
				{"Ӣ�ۣ��з�ʦ��", 2, 1},
				{"Ӣ�ۣ�Ů��ʦ��", 2, 2},
				{"Ӣ�ۣ��е�ʿ��", 3, 1},
				{"Ӣ�ۣ�Ů��ʿ��", 3, 2},
			}


function yingxiong(npc, player)
	local msg = [[�����ڿ�����ѡһλӢ���ˡ�������ֻ��һ����ѡ���ᣬ
����ɹ���ȡӢ�ۺ����޷��ٸ�����������ϸѡ��
���������λӢ���أ�
]]
	local x = 0
	local y = 50
	local num = 0
	
	for i = 1, #hero_ do
		msg = msg.."#POS<X:"..x..",Y:"..y..">#<@hero_ex#"..i.." *01*"..hero_[i][1]..">"
		x = x + 100 
		num = num + 1
		if num >= 3 then
			num = 0
			x = 0
			y = y + 18
		end
	end
	
	msg = msg.."\n<@main *01*����>\n"
	return msg
end


function hero_ex(npc, player, index)
    lualib:InputDlg(player, 1, "�������Ӣ�۵�����", 60, 14, "CreateHeroInput", index)
    return ""
end


function CreateHeroInput(id, player, input, index)
	local index = tonumber(index)
	
	lualib:CreateHeroForPlayer(player, string.trim(input), hero_[index][2], hero_[index][3],  "CreateHeroResult", string.trim(input).."#"..hero_[index][3])
	return ""
end


function CreateHeroResult(player, err, guid, str)
	local result = string.split(str, "#")
	local name = result[1]
	local gender = tonumber(result[2])
	
	local playername = lualib:Name(player)
    if err == 0 then
		lualib:SysMsg_SendBroadcastMsg("["..playername .."]ͨ����ɽ��Ӣ�۹���,�ɹ���ȡս�����!", "��ϲ")	
        lualib:SysWarnMsg(player, "����Ӣ��"..name.."�ɹ�")
		
		if not lualib:AddItem(player, "ľ��", 1, false, "", "") then
			lualib:SysMsg_SendTriggerMsg(player, "����ľ��ʧ�ܣ�")
		end
		
		if not lualib:AddItem(player, "��ҩ(С)��", 1, true, "", "") then
			lualib:SysMsg_SendTriggerMsg(player, "���ͽ�ҩ(С)��ʧ�ܣ�")
		end
		
		if not lualib:AddItem(player, "ħ��ҩ(С)��", 1, true, "", "") then
			lualib:SysMsg_SendTriggerMsg(player, "���ͽ�ҩ(С)��ʧ�ܣ�")
		end
		
		local award_item = {"����(��)", "����(Ů)"}
		if not lualib:AddItem(player, award_item[gender], 1, false, "", "") then
			lualib:SysMsg_SendTriggerMsg(player, "����ľ��ʧ�ܣ�")
		end
		
		lualib:SetStr(player, "dfhero", guid)
    else
        lualib:SysWarnMsg(player, "����Ӣ��"..name.."ʧ�ܣ���������"..err)
    end
end


function huolong(npc, player)
	local msg = [[�������֮����Ҫ200Ԫ������ȷ��������
<@huolongEx *01*����>
<@main *01*����>
]]
	return msg
end


function huolongEx(npc, player)
	if lualib:Player_GetBagFree(player) < 1 then
	    return "�����ռ䲻������Ҫ1�����ӣ�"
	end
	
	if not lualib:Player_SubIngot(player, 200, false, "", "") then
		return "��û��200Ԫ�����޷�����"
	end
	
	if not lualib:AddItem(player, "����֮��", 1, false, "", "") then
		return "��ӵ���ʧ�ܣ�"
	end
	return "�������֮�ĳɹ���\n<@main *01*����>\n"
end
