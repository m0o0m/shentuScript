local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local first_bill_gift = 
{
	[0] = 
	{
	number = 1, --��Ҫ���ٳ�ֵ���
    {"����",1,0}, --��Ʒ���֣������������Ƿ��
	},		

	{
	number = 100, --��Ҫ���ٳ�ֵ���
    {"����",1,0},
    {"�������ΰ�",1,0},
    {"��ͨ�����",1,0},
    {"ף����ˮ",10,1},
	},
	
	{
	number = 500, --��Ҫ���ٳ�ֵ���
    {"��ӡ������",50,1},
	{"�������ΰ�",1,1}, 
	{"��Ʒ�����",1,1},
	{"ף����ˮ",50,1,},	
	},
	
    {
	number = 1000, --��Ҫ���ٳ�ֵ���
    {"��ӡ������",100,1},
	{"ս�����ΰ�",1,1}, 
	{"��������",1,1},
	{"ף����ˮ",100,1,},
	},
	
    {
	number = 2000, --��Ҫ���ٳ�ֵ���
    {"��ӡ������",200,1},
	{"ս�����ΰ�",1,1}, 
	{"��������",1,1},
	{"ף����ˮ",200,1,},
	},
	
}

local first_bill_icon = 
{
    disable = "1903800026",
    enable = "1903800022",
}

-------------------------�ж�ͼ���Ƿ���ʾ-------------------------
function check_first_bill(player)
    local chongzhi_number = lualib:GetTotalBill(player)				--ȡ����ҳ�ֵԪ����
	local id = tostring(lualib:Player_GetAccountID(player))			--ȡ����ҵ��ʺ�ID.
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