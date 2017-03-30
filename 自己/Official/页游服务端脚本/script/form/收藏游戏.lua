local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")
local save_client_award = {
    {"��שС",1,0},
    {"��שС",1,0},
    {"��שС",1,0},
    {"��שС",1,1},
}

-----------------------ͼ����ʾ-----------------------------
function storeUp_show(player)	
	local types = lualib:GetClientType(player)
	if types ==  1 then
		local flag = lualib:GetInt(player,"storeUp_flag")
		if flag == 0 then
			AddSEIcon(player, 1, -6,"�ղ���Ϸ", 1800200071, "����ʱ", "store_aaa","","")
			--ShowTimeCount2(player, 0, 1906100153, "�ղ���Ϸ",0,"",5) --��ʾĿ��ͼ��
-------------------------------------------------------------------------------

---------------------------------------------------------------------------------
		end
	end	
end

-------------------ͼ�걻���-----------------------
function store_aaa(player)
	--ShowTimeCount2(player, 0, 1903800079, "�ղ���Ϸ",0,"",5) --��ʾĿ��ͼ��
	--local msg = "http://www.hzyotoy.com/index.do?mod=pay&groupid=" .. lualib:GetGroupId()
	--lualib:ShowFormWithContent(player, "�ղ���Ϸ��", ""..lualib:GetGroupId())
	--lualib:SysMsg_SendWarnMsg(player, "�ղ���Ϸ�����,���ѷ���")
	--lualib:SysMsg_SendWebPage(player, msg)
	
	lualib:ShowFormWithContent(player, "form�ļ���","CollectAward#");
    return ""
end

function CollectAwardGetAward(player)
	local storeUp_flag = lualib:GetInt(player,"storeUp_flag");
	if storeUp_flag == 1 then 
		lualib:Error(""..player.."�Ѿ��ղ�,��ͼ�ظ��콱");
		return ""
	end
	for i = 1, #save_client_award do
		local bind = false
		if save_client_award[i][3] == 1 then
			bind = true
		end
		lualib:AddItem(player, save_client_award[i][1], save_client_award[i][2], bind, "�ͻ������ؽ���", player)
		lualib:SysPromptMsg(player, "��ȡ���ղؽ���"..lualib:KeyName2Name(save_client_award[i][1], 4).." + "..save_client_award[i][2].."!")
	end
	lualib:SetInt(player,"storeUp_flag", 1)
	DelIcon(player,"�ղ���Ϸ")
   	return ""
end


function close(player)
	return ""
end