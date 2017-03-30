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
			AddSEIcon(player, 1, -8, "�ͻ�������", 1800200067, "����ʱ", "download","","���ؿͻ��ˣ���ȡ��ֵ���")
		else
			AddSEIcon(player, 1, -8, "�ͻ�������", 1800200067, "����ʱ", "download","","���ؿͻ��ˣ���ȡ��ֵ���")
		end
------------------------------------------------------------------------------------
	end
end

-------------------ͼ�걻���-----------------------
function download(player)
	lualib:RunClientScript(player, "CommonScriptFun", "GetIsClient", "")
	--lualib:ShowFormWithContent(player,"�ű���","GetIsClient()")
	--local clientType = lualib:GetClientType(player)
	
	--local tab = serialize(client_award)
	--lualib:ShowFormWithContent(player, "�ű���", "client_award_t="..serialize(client_award))
	--lualib:ShowFormWithContent(player, "form�ļ���", "�ͻ������ر�#"..serialize(client_award).."#"..clientType)
	--lualib:download_award_t(player, "client_award_t="..serialize(client_award))
	
	
    --local msg = "http://www.hzyotoy.com/index.do?mod=pay&groupid=" .. lualib:GetGroupId()
	--lualib:SysMsg_SendWarnMsg(player, "�ͻ������ر����")
    --lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

function clintSet(player,clientType)
	--lualib:SysPromptMsg(player,"clientType = "..clientType)
	local tab = serialize(client_award)

	lualib:ShowFormWithContent(player, "form�ļ���", "�ͻ������ر�#"..serialize(client_award).."#"..clientType)
    return ""
end

function get_download_award(player,clientType)
	--local types = lualib:GetClientType(player)
	--lualib:SysPromptMsg(player,"clientType = "..clientType)
	if tonumber(clientType) ~= 0 then
		lualib:SysPromptMsg(player, "���ÿͻ��˵�½!")
		return ""
	end
	
	local aaaa = lualib:GetInt(player, "award_download")
	if aaaa == 1 then
		lualib:SysPromptMsg(player, "���Ѿ���ȡ������!")
		return ""
	end
	
	if lualib:Player_GetBagFree(player) < #client_award then
		lualib:SysPromptMsg(player, "��������!")
		return ""
	end
	
	lualib:SetInt(player, "award_download", 1)
	for i = 1, #client_award do
		local bind = false
		if client_award[i][3] == 1 then
			bind = true
		end
		lualib:AddItem(player, client_award[i][1], client_award[i][2], bind, "�ͻ������ؽ���", player)
		lualib:SysPromptMsg(player, "��ȡ���ؽ�����"..lualib:KeyName2Name(client_award[i][1], 4).." + "..client_award[i][2].."!")
	end
	--AddSEIcon(line, pos, name, image, file, func, param, tips)
	local str = "WndClose(nil,\"���ؽ���\");"
	lualib:ShowFormWithContent(player, "�ű���", str)
	--DelIcon(player,"�ͻ�������")
	--ShowTimeCount2(player, -1, 1906100157, "�ͻ�������",1096000300,"",5) --��ʾĿ��ͼ��
	
	---------------------------------------------------------------------------
	if lualib:GetInt(player,"getAllSpecialGift") == 0 then
		if lualib:GetInt(player,"storeUp_flag") == 0 then      --���ڿ��������Ϸ�ղ�
			DelIcon(player,"�ͻ�������")
			AddSEIcon(player, 1, -4,"�ղ���Ϸ", 1800200071, "����ʱ", "store_aaa","","�ղ���Ϸ����ȡ���")
		else  --���ڿ��������������Ϸ�ղ�
			DelIcon(player,"�ͻ�������")
		end
	else
		if lualib:GetInt(player,"storeUp_flag") == 0 then      --�����ڿ������������Ϸ�ղ�
			DelIcon(player,"�ͻ�������")
			AddSEIcon(player, 1, -3,"�ղ���Ϸ", 1800200071, "����ʱ", "store_aaa","","�ղ���Ϸ����ȡ���")
		else
			DelIcon(player,"�ͻ�������")
		end
	end
	----------------------------------------------------------------------------
	
	return ""
end

function download_web(player)
	--��½����������
	local msg = "http://serverlist.oss-cn-hangzhou.aliyuncs.com/yycest/yycest.exe"
	--lualib:SysMsg_SendWebPage(player, msg)
	return ""
end	

function close(player)
	return ""
end