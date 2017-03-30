local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local first_bill_gift = 
{
	[0] = {
	number = 10, --��Ҫ���ٳ�ֵ���
    {"��ɽ�Ǵ���ʯ",1,1}, --��Ʒ���֣������������Ƿ��
	{"3���������",1,1},
	{"��Ǯ��(10��)",1,1},
	{"�����ر�ͼ",1,1},
	{"�м��ر�ͼ",1,1},
	{"�߼��ر�ͼ",1,1},
	{"��Ԫ��",1,1,},
	{"Ǯ��(5��)",1,1},
	},
	
	{
	number = 50, --��Ҫ���ٳ�ֵ���
    {"���Ǵ���ʯ",1,1},
	{"˫���������",1,1}, 
	{"��Ԫ��",5,1,},
	{"��Ǯ��(5��)",1,1},
	{"����������",1,1,},
	{"������",1,1,},
	{"Ǯ��(5��)",1,1,},
	{"ѭ��ħ��",5,1},
	},
	
    {
	number = 200, --��Ҫ���ٳ�ֵ���
	{"�м��ر�ͼ",5,1},
	{"˫���������",1,1,},
	{"��Ԫ��",10,1,},
	{"��Ǯ��(10��)",1,1,},
	{"Ǯ��(10��)",1,1},
	{"��Ԫ����",10,1},
	{"��ӡ������",3,1},
	{"ѭ��ħ��",10,1},
	},
	
    {
	number = 500, --��Ҫ���ٳ�ֵ���
    {"�������(50��)",1,1},
	{"��ң��(50��)",1,1},
	{"��Ԫ��",50,1},
	{"��Ǯ��(20��)",2,1},
	{"ף����ˮ",20,1},
	{"��Ԫ����",20,1},
	{"��ӡ������",20,1},
	{"ѭ��ħ��",20,1},
	},
	
    {
	number = 1000, --��Ҫ���ٳ�ֵ���
    {"ף�������",1,1,},
	{"99��õ�廨",1,1},
	{"��ң��(7��)",1,1},
	{"����ӡ",20,1},
	{"���ﻹ�굤",10,1},
	{"��ӡ������",20,1},
	{"������(δ����)",1,1},
	{"������(δ����)",1,1},
	},
	
    {
	number = 2000, --��Ҫ���ٳ�ֵ���
    {"��ӥ(δ����)",1,1},
	{"������(δ����)",1,1},
	{"���������",1,1},
	{"999��õ�廨",1,1},
	{"�߼��ر�ͼ",5,1},
	{"Ǯ��(50��)",1,1},
	{"����",50,1},
	{"ת��ʯ",50,1},
	},
}

local first_bill_icon = 
{
    disable = "1903800026",
    enable = "1903800022",
}

-------------------------�ж�ͼ���Ƿ���ʾ-------------------------
function check_first_bill(player)
    local chongzhi_number = lualib:GetTotalBill(player)
	local id = tostring(lualib:Player_GetAccountID(player))
	local chongzhi_cishu = lualib:GetDBNum(id)
	if first_bill_gift[chongzhi_cishu] ~= nil and chongzhi_number >= first_bill_gift[chongzhi_cishu].number*100 then
        ShowTimeCount(player, 0, first_bill_icon.enable, "��ֵ���") --ͼ��������
	elseif first_bill_gift[chongzhi_cishu] ~= nil then
		ShowTimeCount(player, 0, first_bill_icon.disable, "��ֵ���") --ͼ��ҵ�
    end
end

------------------------ͼ������ر�---------------------
function get_first_bill_gift(player)
    local chongzhi_number = lualib:GetTotalBill(player)
	local id = tostring(lualib:Player_GetAccountID(player))
    local chongzhi_cishu = lualib:GetDBNum(id)
	
	if first_bill_gift[chongzhi_cishu] == nil then
		lualib:SysPromptMsg(player, "û�п���ȡ�Ľ�Ʒ");
		return
	end
	
	if chongzhi_number < first_bill_gift[chongzhi_cishu].number*100 then
		lualib:SysPromptMsg(player, "�޷���ȡ������ֻҪ��ֵ���ﵽ"..first_bill_gift[chongzhi_cishu].number.."Ԫ������ȡร�"); 
		return
    end
	
	local gift_table = {}
	for i = 1, #first_bill_gift[chongzhi_cishu] do
		gift_table[i] = first_bill_gift[chongzhi_cishu][i][1]
	end
	
	local count_table = {}
	for i = 1, #first_bill_gift[chongzhi_cishu] do
		count_table[i] = first_bill_gift[chongzhi_cishu][i][2]
	end
	
	local bind_table = {}
	for i = 1, #first_bill_gift[chongzhi_cishu] do
		bind_table[i] = first_bill_gift[chongzhi_cishu][i][3]
	end
	
	local opr_table = {}
	for i = 1, #first_bill_gift[chongzhi_cishu] do
		opr_table[i] = 0
	end
	
	if lualib:Player_GetBagFree(player) < (#first_bill_gift[chongzhi_cishu] - 1) then
		lualib:SysMsg_SendWarnMsg(player, "��������"..(#first_bill_gift[chongzhi_cishu] - 1).."����λ���������Ժ�������")
		return false
	end
	
	if not lualib:Player_ItemRequest(player, gift_table,count_table, bind_table, opr_table, "����������������", player) then
		return false
	end
	lualib:SetDBNumEx(id,lualib:GetDBNum(id)+1,1) --��ȡ��������
	lualib:SysMsg_SendWarnMsg(player, "��ֵ�����ȡ�ɹ�����򿪰������գ�")
	
	if first_bill_gift[chongzhi_cishu+1] == nil then
			ShowTimeCount(player, -1, first_bill_icon.disable, "��ֵ���") --ͼ��ҵ�
		return
	end
end

-----------------------ͼ�걻���----------------------
function show_my_first_bill_gift(player)
	check_first_bill(player) --ͼ����ʾ
	local chongzhi_number = lualib:GetTotalBill(player)/100
	local id = tostring(lualib:Player_GetAccountID(player))
	local chongzhi_cishu = lualib:GetDBNum(id)
	
	if first_bill_gift[chongzhi_cishu] == nil then
		lualib:SysPromptMsg(player, "û�п���ȡ�Ľ�Ʒ");
		return
	end
	
    local content = ""
    local max = table.getn(first_bill_gift[chongzhi_cishu])
    for j = 1, max do
        content = content..first_bill_gift[chongzhi_cishu][j][1].."["..first_bill_gift[chongzhi_cishu][j][2].."]"..first_bill_gift[chongzhi_cishu][j][3]..","
    end

    lualib:ShowFormWithContent(player, "��ֵ�����", content.."#"..first_bill_gift[chongzhi_cishu].number.."#"..chongzhi_number)
end