function main(npc, player)
            lualib:Mail("", lualib:Name(player), "ȡ���������", 10, 10, {"5Ԫ��", 1, 1,"5Ԫ��", 1, 1,"5Ԫ��", 1, 1,"5Ԫ��", 1, 1,"5Ԫ��", 1, 1})
	local msg = "#COLORCOLOR_PINK#��ȡ���������#COLOREND#"
          msg = msg .."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700031>##OFFSET<X:1,Y:-1>#<@activate *01*[���뼤������ȡ���]>"
	return msg
end


function activate(npc, player)
	if not lualib:SysMsg_SendInputDlg(player, 1, "�����뼤���룺", 30, 19, "VerifyReg", "") then
        return "�ȡ��ȣ����Ӳ���ʹ�ˣ���������......"
	end
	return ""
end

local code_t = {
					["ERGERGRFG"] = "014335",
				}

local varname = "jhmlb_web_active"
				
function VerifyReg(id, player, str, npc)
    local accountid = lualib:Player_GetAccountID(player);
    local serverid = lualib:GetZoneId();
    local groupid = lualib:GetGroupId();
    local lblq = lualib:GetInt(player, varname);
    if lblq == 1 then
        lualib:NPCTalkEx(npc, player, "���Ѿ���ȡ��һ���ˣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>");
        return;
    end
    
    if lualib:BagFree(player, true, false, false) < 1 then
        lualib:NPCTalkEx(npc, player, "����������������������\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>");
        return;
    end

    if str == "" then
        lualib:NPCTalkEx(npc, player, "����ļ����벻���ڣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*����>");
        return;
    end
    
    if code_t[str] == nil then
        lualib:NPCTalkEx(npc, player, "����ļ����벻���ڣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*����>");
        return;
    end
	
    local url = string.format("http://passport.173uu.com/api/bindtid.do?accountid=%d&gid=%d&tid=%s", accountid, groupid, tonumber(string.sub(code_t[str], 1, 6)));
    lualib:GetURL(url, "JhCallbackTg", player, 30);

    lualib:SysMsg_SendPromptMsg(player, "�ʺż����У����Ժ�...");
    return;
end

function JhCallbackTg(param, errorcode, result)
    local ret = 0;
    local descript = "";
    local player = param;

    _, _, ret, descript = string.find(result, "<ret>(.+)</ret>.*<descript>(.+)</descript>");

    if ret ~= nil then
        if ret == "1" or ret == "-5" or ret == "-6" then
            local account_name = lualib:AccountName(player);
            lualib:AddItem(player, "�ƽ����22��", 1, true, "����������", player);
            lualib:SetInt(player, varname, 1);
            lualib:SysMsg_SendPromptMsg(player, "����ɹ�����ȡ����ɹ���");
        else
            lualib:SysMsg_SendPromptMsg(player, string.format("�����뼤��ʧ��: %s", descript));
        end
    else
        lualib:SysMsg_SendPromptMsg(player, "����ʧ�ܣ�ϵͳ�����������Ժ����ԣ�" .. result);
        lualib:Error(string.format("jihuo error(%d):", errorcode) .. result);
    end
end