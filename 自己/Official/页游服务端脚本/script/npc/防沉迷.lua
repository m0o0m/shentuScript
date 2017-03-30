function main(npc, player)
            lualib:Mail("", lualib:Name(player), "取激活码礼包", 10, 10, {"5元宝", 1, 1,"5元宝", 1, 1,"5元宝", 1, 1,"5元宝", 1, 1,"5元宝", 1, 1})
	local msg = "#COLORCOLOR_PINK#领取激活码礼包#COLOREND#"
          msg = msg .."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700031>##OFFSET<X:1,Y:-1>#<@activate *01*[输入激活码领取礼包]>"
	return msg
end


function activate(npc, player)
	if not lualib:SysMsg_SendInputDlg(player, 1, "请输入激活码：", 30, 19, "VerifyReg", "") then
        return "咳、咳，脑子不好使了，出问题了......"
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
        lualib:NPCTalkEx(npc, player, "你已经领取过一次了！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>");
        return;
    end
    
    if lualib:BagFree(player, true, false, false) < 1 then
        lualib:NPCTalkEx(npc, player, "背包已满，请先整理背包！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>");
        return;
    end

    if str == "" then
        lualib:NPCTalkEx(npc, player, "输入的激活码不存在！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*返回>");
        return;
    end
    
    if code_t[str] == nil then
        lualib:NPCTalkEx(npc, player, "输入的激活码不存在！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*返回>");
        return;
    end
	
    local url = string.format("http://passport.173uu.com/api/bindtid.do?accountid=%d&gid=%d&tid=%s", accountid, groupid, tonumber(string.sub(code_t[str], 1, 6)));
    lualib:GetURL(url, "JhCallbackTg", player, 30);

    lualib:SysMsg_SendPromptMsg(player, "帐号激活中，请稍候...");
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
            lualib:AddItem(player, "黄金礼包22级", 1, true, "激活码给礼包", player);
            lualib:SetInt(player, varname, 1);
            lualib:SysMsg_SendPromptMsg(player, "激活成功，领取礼包成功！");
        else
            lualib:SysMsg_SendPromptMsg(player, string.format("激活码激活失败: %s", descript));
        end
    else
        lualib:SysMsg_SendPromptMsg(player, "激活失败，系统发生错误，请稍候再试！" .. result);
        lualib:Error(string.format("jihuo error(%d):", errorcode) .. result);
    end
end