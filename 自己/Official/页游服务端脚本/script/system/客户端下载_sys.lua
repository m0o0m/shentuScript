local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
local client_award = 
{
    {"��ש��",1,0},
    {"��ש��",1,0},
    {"��ש��",1,0},
    {"��ש��",1,1},	
}



-----------------------ͼ����ʾ-----------------------------
function download_show(player)	
	local aaaa = lualib:GetInt(player, "award_download")
	if aaaa == 0 then
		--ShowTimeCount2(player, 0, 1906100157, "�ͻ�������",1096000300,"",5) --��ʾĿ��ͼ��
		--AddSEIcon(player, 1, -4, "�ͻ�������", 1800200067, "����ʱ", "download","","")

------------------------------------------------------------------------------------		
		if lualib:GetInt(player, "getAllSpecialGift") == 0 then
			AddSEIcon(player, 1, -4, "�ͻ�������", 1800200067, "����ʱ", "download","","���ؿͻ��ˣ���ȡ��ֵ���")
		else
			AddSEIcon(player, 1, -3, "�ͻ�������", 1800200067, "����ʱ", "download","","���ؿͻ��ˣ���ȡ��ֵ���")
		end
------------------------------------------------------------------------------------
	end
end

-------------------ͼ�걻���-----------------------
function download(player)

	
	local clientType = lualib:GetClientType(player)

	local tab = serialize(client_award)
	--lualib:ShowFormWithContent(player, "�ű���", "client_award_t="..serialize(client_award))
	lualib:ShowFormWithContent(player, "form�ļ���", "�ͻ������ر�#"..serialize(client_award).."#"..clientType)
	--lualib:download_award_t(player, "client_award_t="..serialize(client_award))
	
	
    --local msg = "http://www.hzyotoy.com/index.do?mod=pay&groupid=" .. lualib:GetGroupId()
	--lualib:SysMsg_SendWarnMsg(player, "�ͻ������ر����")
    --lualib:SysMsg_SendWebPage(player, msg)
    return ""
end
