local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local data = [[{
	{
		amount = 50,	--��Ҫ��ֵ�Ľ��
		img = 1218122200,	--����ͼ
		desc = "#OFFSET<X:-18>##IMAGE1803400007##OFFSET<X:10,Y:5>##IMAGE1801500154##IMAGE1801500159#",--��ֵ���ͼƬ
		item = {
			{"����1", 1, 0},--������ + ���� + ������
			{"����2", 1, 0},
			{"����3", 1, 0},
			{"����4", 1, 0},
			{"�����ȼ���", 30, 1},
			{"���", 300, 1},
		},
	},
}]]

local items = loadstring(" return "..data)()

function first_show(player)
	local use = lualib:UserID(player)
	local has = lualib:GetDBNum(use.."_first")
	if has ~= #items then
		AddSEIcon(player, 1, 0, "�׳����", 1906100005, "�׳������", "first_main", "", "�׳�Ӯ����")
		AddIconMagic(player, "�׳����", 1094200000, -6, -6, 150)
		-- ShowTimeCount2(player, 0, 1906100005, "�׳����", 0, "") --��ʾĿ��ͼ��
		-- AddIconMagic(player, "�׳����", 1094200000, -6, -6, 150)
	end
end

function first_main(player)
	local use = lualib:UserID(player)
	local has = lualib:GetDBNum(use.."_first")
	local total = lualib:GetDBNum("refine_bills"..use) + lualib:GetTotalBill(player)
	local str = " firstgift_t = "..data..";"
	str = str.. " firstgift_bill = "..math.floor(total/100)..";"
	str = str.. " firstgift_nums = "..has..";"
	lualib:ShowFormWithContent(player, "�ű���", str)
	lualib:ShowFormWithContent(player, "form�ļ���", "�׳����Wnd")
	return ""
end

function destroy(player)
	local use = lualib:UserID(player)
	local has = lualib:GetDBNum(use.."_first")
	if has ~= #items then
		-- ShowTimeCount2(player, 0, 1906100005, "�׳����", 0, "")
		AddSEIcon(player, 1, 0, "�׳����", 1906100005, "�׳������", "first_main", "", "�׳�Ӯ����")
		
	end
	return ""
end

function award(player)
	local use = lualib:UserID(player)
	local has = lualib:GetDBNum(use.."_first") + 1
	local total = lualib:GetDBNum("refine_bills"..use) + lualib:GetTotalBill(player)
	if items[has] == nil then
		return "��Ǹ����ǰû�п�����ȡ�Ľ�����ͬ�ʺ�ֻ������ȡһ�����н�����"
	end
	total = math.floor(total / 100)
	if total < items[has].amount then
		return "��Ǹ������ǰ�ĳ�ֵ������".. items[has].amount .."Ԫ���޷����׳�������"
	end
	local name = {}
	local count = {}
	local bind = {}
	local opr = {}
	local job = lualib:Job(player)
	for k, v in ipairs(items[has].item) do
		name[k] = v[1]
		count[k] = v[2]
		bind[k] = v[3]
		opr[k] = 0
	end
	if not lualib:Player_ItemRequest(player, name, count, bind, opr, "����������׳����", player) then
		return "���ı����ռ䲻�㣬�������������ȡ��"
	end
	lualib:SetDBNumEx(use.."_first", has, 2)
	local str = [[
		if FirstGift ~= nil and FirstGift.Handle ~= 0 then
			FirstGift.Init(FirstGift.Handle, ]]..string.format("%q", total.."#"..has)..[[)
		end
	]]
	lualib:ShowFormWithContent(player, "�ű���", str)
	return "��ϲ���ɹ���ȡ�׳���������򿪱����鿴��"
end

function recharge(player)
	local zone = lualib:GetZoneId()
	local user = lualib:UserID(player)
	local msg = "http://www.hzyotoy.com/index.do?mod=pay&act=step1&serverid="..zone.."&userid="..user
	lualib:SysMsg_SendWebPage(player, msg)
	return ""
end