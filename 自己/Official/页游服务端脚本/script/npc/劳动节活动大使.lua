smallKeyname = "���鵤"
largeKeyname = "���;��鵤"

laoKeyname   = "��"
dongKeyname  = "��"
shenKeyname  = "��"
shengKeyname = "ʥ"
lmxzty       = "��ģѫ��ͼ��"

medal        = "�Ͷ�ģ��ѫ��"
diamond      = "��ʯ"

function main(npc, player)
	local msg = ""
	msg = msg .. "����ᵽ�Ͷ��ļ�����������𣬰����Ͷ�����֤���ø��ң��ҿ��Ը���һ���Ľ���\n"
	msg = msg .. "<@Exchange *01*���鵤�һ����;��鵤>\n"
	msg = msg .. "<@Medal    *01*��+��+��+ʥ+��ģѫ��ģ�� �һ��Ͷ�ģ��ѫ��>\n"
	msg = msg .. "<@DmMedal  *01*��ĥ�Ͷ�ģ��ѫ��>\n"
	msg = msg .. "<@Leave    *01*�뿪>"
	
	return msg
end


--�һ����鵤
function Exchange(npc, player)
	local exchangeTbl = 
	{
		{10,  1},
		{20,  2},
		{50,  5},
		{100, 10},
		{200, 20},
		{500, 50}
	}
	
	local msg = ""
	msg = msg .. "���;��鵤��������Ϊ���鵤��10��\n"
	for _, v in pairs(exchangeTbl) do
		msg = msg .. "<@ExchangeEx#" .. v[1] .. "#" .. v[2] .. "  *01*" .. v[1] .. "�����鵤�һ�" .. v[2] .. "�����;��鵤>\n"
	end
	
	msg = msg .. "\n \n<@main *01*����>"
	return msg
end

function ExchangeEx(npc, player, jydCount1, jydCount2)
	jydCount1 = tonumber(jydCount1)
	jydCount2 = tonumber(jydCount2)
	
	local keyTbl   = {smallKeyname, largeKeyname}
	local countTbl = {jydCount1, jydCount2}
	local bindTbl  = {0, 0}
	local oprTbl   = {1, 0}
	
	if not lualib:Player_ItemRequest(player, keyTbl, countTbl, bindTbl, oprTbl, "�Ͷ��ڻ��ʹ���һ����;��鵤", "�Ͷ��ڻ��ʹ") then
		return "���ľ��鵤����\n \n<@main *01*����>"
	end
	
	local msg = ""
	msg = msg .. "����ô��;��鵤" .. jydCount2 .. "��\n"
	msg = msg .. "<@main *01*����>"
	
	return msg
end

--��+��+��+ʥ+��ģѫ��ģ�� �һ��Ͷ�ģ��ѫ��
function Medal(npc, player)
	local msg = ""
	msg = msg .. "<@MedalEx    *01* ��+��+��+ʥ+��ģѫ��ͼ�� �һ��Ͷ�ģ��ѫ��>\n"
	msg = msg .. "<@DmMedal    *01* ��ĥ�Ͷ�ģ��ѫ��>\n \n"
	msg = msg .. "<@main       *01* ����>"
	
	return msg
end

function MedalEx(npc, player)
	local itemTbl =
	{
		laoKeyname,
		dongKeyname,
		shenKeyname,
		shengKeyname,
		lmxzty,
		medal
	}
	local countTbl = {1, 1, 1, 1, 1, 1}
	local bindTbl  = {0, 0, 0, 0, 0, 0}
	local oprTbl   = {1, 1, 1, 1, 1, 0}
	
	if not lualib:Player_ItemRequest(player, itemTbl, countTbl, bindTbl, oprTbl, "�Ͷ��ڻ��ʹ���һ��Ͷ�ģ��ѫ�¿���Ʒ", "�Ͷ��ڻ��ʹ") then
		return "ȱ����Ʒ\n \n<@main *01*����>"
	end
	
	local msg = ""
	msg = msg .. "�ɹ��һ��Ͷ�ģ��ѫ��\n \n<@main *01*����>"
	return msg
end

--��ĥѫ��
function DmMedal(npc, player)
	local msg = ""
	msg = msg .. "ʹ����ʯ���Զ��Ͷ�ģ��ѫ�½��д�ĥ����ĥ֮���Ϊ�����Բ��ɽ��׵���\n"
	msg = msg .. "<@OK   *01*ȷ������Ϊ�Ҵ�ĥ>\n"
	msg = msg .. "<@main *01*����>"
	
	return msg
end

function OK(npc, player)
	local itemTbl  = {medal, diamond, medal}
	local countTbl = {1, 1, 1}
	local bindTbl  = {0, 0, 1}
	local oprTbl   = {1, 1, 0}
	
	if not lualib:Player_ItemRequest(player, itemTbl, countTbl, bindTbl, oprTbl, "�Ͷ��ڻ��ʹ����ĥ�Ͷ�ģ��ѫ��", "�Ͷ��ڻ��ʹ") then
		return "��ȱ���Ͷ�ģ��ѫ�»���ʯ\n \n<@main *01*����>"
	end
	
	local msg = ""
	msg = msg .. "��ĥ�Ͷ�ģ��ѫ�³ɹ�"
	msg = msg .. "<@main *01*����>"
	return msg
end

function Leave(npc, player)
	return ""
end