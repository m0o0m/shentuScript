--ÿ��ǩ����Ʒ

--Э�鶨��
--��һ�а�˳�������н�Ʒitem��KeyName���������ö��Ÿ��� �磺����[1],�̽�[1],����[1],�̵�[1],����[1]
--�ڶ������Ѿ����еĽ�Ʒ������������ �磺 3,2,4 ��ʾ��һ�γ��г������ڶ��γ��ж̽�...
--�����б�ʾ�Ƿ񲥷���Ч1���ţ�0ֱ����ʾ
--�����б�ʾ�Ƿ���δ��ȡ������1�У�0û��
--�зָ���Ϊ"\n"
--
--�Զ����������
--"ÿ��ǩ��_times"  ��ұ�����ĳ齱����
--"ÿ��ǩ��_Sel_1"  ��һ�γ��еĽ�Ʒ���к�
--"ÿ��ǩ��_Sel_2"  �ڶ��γ��еĽ�Ʒ���к�
--"ÿ��ǩ��_Sel_3"  �����γ��еĽ�Ʒ���к�
--"ÿ��ǩ��_CurGroupID"     ��ұ��εĳ齱�ķ���

settings1 =
{
    ["ÿ�����"]=1,
    ["����Ԫ��"]=0,
    ["�ȼ�����"]=1,
    ["ת�̴���"]=1, --���ܴ���ת���ϵ���Ʒ����
}

AwardGroup1 =
{
	{
	    --Keyname            Rate         count   notice
		{"item1",               1,			1,		""},
		{"item2",               2,			1,		""},
		{"item3",               3,			1,		""},
		{"item4",               5,			1,		""},
		{"item5",               1,			1,		""},
		{"item6",               1,			1,		""},
		{"item7",               3,			1,		""},
		{"item8",               1,			1,		""},
	},
}

item =  {
	{"1.5���������", "1.5���������", "1.5���������", "1.5���������", "1.5���������", "1.5���������", "˫���������", "˫���������", "3���������"},
	{"õ�廨", "õ�廨", "õ�廨", "9��õ�廨"},
	{"ѭ��ħ��", "���鵤", "���鵤", "���;��鵤"},
	{"������", "������(С)", "������(С)", "������(С)", "������(��)", "������(��)", "������(��)", "����������"},
	{"�������"},
	{"������", "������", "������", "������"},
	{"��ɽ�Ǵ���", "���Ǵ���", "��ң��"},
	{"���ﾭ�鵤", "�������ﾭ�鵤", "�������ﾭ�鵤", "�������ﾭ�鵤", "�������"},
        }
		
function compare1(a, b)
    return a < b
end

----------------------------�������ת������Ʒ----------------------------------
function GetRandomAward1(player)
    local group = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_CurGroupID")	
    local max = 0
    local v = {}
    for i = 1, table.getn(AwardGroup1[group]) do
        max = max + AwardGroup1[group][i][2]
        v[i] = max
    end
    local times = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_times")
    local r_off = 0
    local selected = {}
    for i = 1, times do
        selected[i] = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_Sel_"..i)
        r_off = r_off + AwardGroup1[group][selected[i]][2]
    end

    table.sort(selected, compare1)

    local r = lualib:GenRandom(1, max - r_off)

    for i = 1,times do
        if r > v[selected[i]] - AwardGroup1[group][selected[i]][2] then
            r = r + AwardGroup1[group][selected[i]][2]
        end
    end

    local sel = 8
    for i = 1, table.getn(v) do
        if r <= v[i] then
            sel = i
            break
        end
    end
    return sel
end

---------------------------------ת������ʾ��Ʒ------------------------------------------
-- showtype 1�����Ŷ��� 0��ֱ����ʾ
function notify_award1(player, showtype)
    local group = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_CurGroupID")
    local times = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_times")
    local content = ""
	
		local max = table.getn(AwardGroup1[group])
		for j = 1, max do
			local suiji = 0
			if lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_ת�̵���_"..j) == 0 then
				suiji = math.random(#item[j])
				lualib:Player_SetCustomVarInt(player, "ÿ��ǩ��_ת�̵���_"..j,suiji)
			else
				suiji = lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_ת�̵���_"..j)
			end
			
			content = content..item[j][suiji].."["..AwardGroup1[group][j][3].."],"
			
			if lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_Sel_1") == j then
				lualib:Player_SetCustomVarStr(player, "ÿ��ǩ��_ItmeName", item[j][suiji])
			end
		end
		content = content.."\n"
		
		local t = 0
		for i = 1,times do
			var = "ÿ��ǩ��_Sel_"..i
			local lastsel = lualib:Player_GetCustomVarInt(player, var)
			content = content..lastsel..","
		end
		content = content.."\n"..showtype
		content = content.."\n"..lualib:Player_GetCustomVarInt(player, "ÿ��ǩ��_HasAward")
	
    lualib:Print(content)
    lualib:ShowFormWithContent(player, "����ת��", content)
end