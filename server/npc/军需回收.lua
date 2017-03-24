local tab = {--������ձ�
	"���1", "���2", "���3", "���4", "ѫ��1", "ѫ��2", "ѫ��3", "ѫ��4", "����1", "����2", "����3", "����4", "��ʯ1", "��ʯ2", "��ʯ3", "��ʯ4", "����1", "����2", "����3", "����4", "����1", "����1", "����6", "����8", "����10", "����16", "����18", "����20", "����26", "����28", "�·�6", "�·�8", "�·�10", "�·�16", "�·�18", "�·�20", "�·�26", "�·�28"
}

local gold = 3000--���ո�����

local limit = 20	--��������

local time_table = {"12:00:00"}	 --����ÿ��12:00:00����


function on_create(npc)
	lualib:AddScheduled(128568, "�������", 5, time_table, "regstier", "")
end

function regstier()
	local rnd = lualib:GenRandom(1, #tab)
	lualib:SetDBStrEx("����Ʒ", tab[rnd], 6)
	lualib:SetDBNumEx("������", limit, 6)
	local msg = "����ع���ʼ�ˣ����λع���������Ϊ��"..lualib:KeyName2Name(tab[rnd], 4).."�������ۡ�"..gold.."����ң�������"..limit.."��������ץ��ʱ������"
	lualib:SysMsg_SendBroadcastMsg(msg, "")
	lualib:SysMsg_SendBroadcastMsg(msg, "")
	lualib:SysMsg_SendBroadcastMsg(msg, "")
end

function main(npc, player)
	local num = lualib:GetDBNum("������")
	local key = lualib:GetDBStr("����Ʒ")
	if key == "" then
		key = "����"
	end
	local msg = [[
#POS<Y:25>##COLORCOLOR_ORANGE#   ÿ��12�㶨ʱˢ�»��վ������ʣ���ʱ��ע��ϵͳ���档

   #COLORCOLOR_BROWN#��ǰ�ع���Ʒ#COLORCOLOR_GREENG#��]].. lualib:KeyName2Name(key, 4) ..[[��#COLORCOLOR_BROWN#��
   #COLORCOLOR_BROWN#��ǰʣ������#COLORCOLOR_GREENG#��]].. math.max(0, num) ..[[��#COLORCOLOR_BROWN#����
   #COLORCOLOR_BROWN#��ǰ���ռ۸�#COLORCOLOR_GREENG#��]]..gold..[[��#COLORCOLOR_BROWN#��ң�

   #IMAGE1902700035#<@submit *01*[�ύ����Ʒ]>         #IMAGE1902700034#<@leave *01*[�ر�ҳ��]>
	]]
	lualib:SetPanelSize(npc, 380, 200)
	return msg
end

function submit(npc, player)
	lualib:SetPanelSize(npc, 380, 200)
	local key = lualib:GetDBStr("����Ʒ")
	if key == "" then
		return "#POS<Y:25>#   ��ǰû�п��Իع�����Ʒ��������ϵͳ���档"
	end
	local num = lualib:GetDBNum("������")
	if num <= 0 then
		return "#POS<Y:25>#   ���ź����������ˣ����Ѿ��ռ����㹻�ľ���Ʒ�ˡ�"
	end
	local count = lualib:ItemCount(player, key)
	if count == 0 then
		return "#POS<Y:25>#   ��������û������Ҫ�ľ���Ʒ��"
	end
	if not lualib:DelItem(player, key, 1, 2, "����ع�", npc) then
		return "#POS<Y:25>#   �۳�����Ʒʧ�ܡ�"
	end
	lualib:AddGold(player, gold, "����ع�", npc)
	lualib:SetDBNumEx("������", num - 1, 6)
	local msg = "��ҡ�"..lualib:Name(player).."���ɹ��Ͻɾ���Ʒ��"..lualib:KeyName2Name(key, 4).."������á�"..gold.."����ҡ�"
	lualib:SysMsg_SendBroadcastMsg(msg, "")
	return main(npc, player)
end