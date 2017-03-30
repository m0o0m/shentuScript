local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

-------------------------�ж�ͼ���Ƿ���ʾ-------------------------
function zhuansheng_xianshi(player)
	local reinNum = lualib:GetInt(player,  "reinNum")
	local Level = lualib:Level(player)
	if reinNum < 1 and Level < 60 then
		return
	end
	ShowTimeCount2(player, 0, 1905600001, "ת��ϵͳ",0,"") --��ʾת��ϵͳͼ��
    --[[local chongzhi_number = lualib:GetTotalBill(player)
	local chongzhi_cishu = lualib:GetInt(player, "chongzhi_cishu")

	if first_bill_gift[chongzhi_cishu] ~= nil and chongzhi_number >= first_bill_gift[chongzhi_cishu].number then
        ShowTimeCount(player, 0, first_bill_icon.enable, "��ֵ���") --ͼ��������
	elseif first_bill_gift[chongzhi_cishu] ~= nil then
		ShowTimeCount(player, 0, first_bill_icon.disable, "��ֵ���") --ͼ��ҵ�
    end]]
end

------------------------ͼ������ر�---------------------
function zhuansheng(player)
	ShowTimeCount2(player, 0, 1905600001, "ת��ϵͳ",0,"") --��ʾĿ��ͼ��
	local msg = ""

	lualib:NPCTalkDetail(player, re_showfrom_zhuanshen(player), 540, 260)
	return ""
end

function re_showfrom_zhuanshen(player)
    local msg =  "                            #COLORCOLOR_SKYBLUE#������ת�������ֻأ�#COLOREND#\n \n"

    msg = msg .. "    #COLORCOLOR_GREENG#ת��������#COLOREND#\n"
    msg = msg .. "        1.#COLORCOLOR_RED#��ɫ50������ÿ����������1�����ɷ����ǿ������#COLOREND#����F10�򿪵Ľ�������ǿ�����鿴��ͨ��ת��������50���£�������������50�����ظ����ÿ����ǿ���㣬ʵ�ֽ�ɫ���Ե�ͻ��\n"
    msg = msg .. "        2.ת�����ض��׶ο��Ի������ģ�ͣ�����ͨ���滻�ƺ���ʹ����ģ��\n"
    msg = msg .. "    #COLORCOLOR_GREENG#ת����������#COLOREND#\n"
    msg = msg .. "        1.ת����Ҫ����ﵽ60����ת���󽵵�һ���ȼ�\n"
    msg = msg .. "        2.ת����Ҫ���ѽ�Һ�ת��ʯ��ת��ʯ������ɽ����ҩʦ����ҩ����жһ�\n"
    msg = msg .. "        3.#COLORCOLOR_RED#ÿ����ɫ���ת��6��#COLOREND#\n"
    msg = msg .. "                             #IMAGE<ID:1905600007>##OFFSET<X:-184,Y:-35>#<@showfrom_zhuanshen *01*                             >\n"
    msg = msg .. "                              #OFFSET<X:0,Y:-5>#<@showfrom_zhuanshen *01*                             >\n"
    msg = msg .. "                              #OFFSET<X:0,Y:-5>#<@showfrom_zhuanshen *01*                             >\n"
    return msg
end

function showfrom_zhuanshen(player)
	local reinNum = lualib:GetInt(player,  "reinNum")
    if reinNum >= 6 then
        return "���Ѿ�ת���ﵽ6�Σ��޷�����ת����"
    end
	lualib:ShowFormWithContent(player, "ת����", ""..reinNum.."")
	zhuansheng_xianshi(player)
    return ""
end