local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

local BayeEquip = {"��ҵ��", "12���﹥��ʯ", "12��ħ����ʯ", {"��ҵ�����", "��ҵ���Ů"}, "12��������ʯ", "12��������ʯ"}
local ZhiZunEquip = {"�������ս��", "�����������", "����Ԫ������", {"�������ս��", "�������ս��"}, {"�����������", "�����������"}, {"����Ԫ������", "����Ԫ������"}}

--��������������������ͼ����ʾ��������������������
function openTreasureHouse_show(player)
	AddSEIcon(player, 2, -3, "̽��", 1800200079, "����ʱ", "openTreasureHouse","","̽���ü�Ʒװ��")
    --  AddIconMagic(player, "̽��",1094200000 , 0,62, 150)
	return ""
end

-------------------ͼ�걻���-----------------------
function openTreasureHouse(player)
	-------------weiduan--------------
	if lualib:GetClientType(player) == 0 then
		local score = lualib:GetInt(player, "tanbao_score")
		local newDisplay = playDisplayFive(player)
		local treasureTxt = lualib:GetDBStr("treasureMsgDataBase")
		local strDataBase = {}
		if treasureTxt ~= "" then
			strDataBase = json.decode(treasureTxt)
		end
		lualib:ShowFormWithContent(player, "form�ļ���", "TreasureWnd#".. serialize(ZhiZunEquip) .. "#" .. serialize(BayeEquip) .. "#" .. score .. "#" .. serialize(newDisplay) .. "#" .. serialize(strDataBase))
		return ""
	end
	---------------------------------
	--lualib:SetDBNum("ActivityUnderway",0)
	--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
	--lualib:SysPromptMsg(player, ""..ActivityVar)
	lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenTreasure()")
    return ""
end