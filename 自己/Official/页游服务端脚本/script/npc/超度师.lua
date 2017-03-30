local level_exp = {
					100,
					200,
					300,
					400,
					600,
					900,
					1200,
					1700,
					2500,
					6000,
					8000,
					10000,
					15000,
					30000,
					40000,
					50000,
					70000,
					100000,
					120000,
					140000,
					250000,
					300000,
					350000,
					400000,
					500000,
					700000,
					1000000,
					1400000,
					1800000,
					2000000,
					2400000,
					2800000,
					3200000,
					3600000,
					4000000,
					4800000,
					5600000,
					8200000,
					9000000,
					12000000,
					16000000,
					30000000,
					50000000,
					80000000,
					120000000,
					141000000,
					159000000,
					178000000,
					200000000,
					222000000,
					248000000,
					275000000,
					305000000,
					336000000,
					370000000,
					410000000,
					450000000,
					495000000,
					540000000,
					592000000,
					650000000,
					705000000,
					770000000,
					835000000,
					907000000,
					983000000,
					1065000000,
					1152000000,
					1245000000,
					1343000000,
					1448000000,
					1560000000,
					1680000000,
					1800000000,
					1930000000,
					2070000000,
					2220000000,
					2380000000,
					2540000000,
					2720000000,
					2900000000,
					3090000000,
					3295000000,
					3508000000,
					3732000000,
					3980000000,
					4215000000,
					4474000000,
					4747000000,
					5032000000,
					5330000000,
					5643500000,
					5970000000,
					6310000000,
					6670000000,
					7040000000,
					7840000000,
					8267000000,
					8710000000,
					9170000000,
					}

local gold_Factor = 0.2
local exp_Factor = 1000000

function main(npc, player)
	local msg = "�����������Ҫ���ġ������鳾��������\n"
	msg = msg.."36������ÿ������ڴ˳��ȳɳ������д�������꣡#COLORCOLOR_GREENG#������Ҫ�ķѴ�����ң�ÿ�����Խ�����Խ��#COLOREND##COLORCOLOR_GREENG#�߸�˧��������������˿��ج����Ԩ��#COLOREND#\n \n"
	
	local level = lualib:Level(player)
	
	local chaodu_exp = lualib:GetInt(player, "chaodu_exp") -- �ѳ��Ⱦ���
	local chaodu_time = lualib:GetInt(player, "chaodu_time") -- ��󳬶�������
	local chaodu_count = lualib:GetInt(player, "chaodu_count") -- ���ճ��ȴ���
	
	if lualib:GetAllDays(0) > chaodu_time then
		lualib:SetInt(player, "chaodu_count", 0)
		chaodu_count = 0
	elseif lualib:GetAllDays(0) < chaodu_time then
		return "ϵͳ����"
	end
	
	
	local exp_count = level_exp[level] / 2 - chaodu_exp
	if exp_count >= 1000000 then
		msg = msg.."����ʣ��ɻ��飺"..exp_count.."      �����ѳ��ȣ�"..chaodu_count.."�Σ�"
	else
		msg = msg.."#COLORCOLOR_RED#���Ȼ�þ����Ѵ����ޣ�����������������#COLOREND#"
	end
	
	local reqGold = (chaodu_count + 1 ) / 15 * gold_Factor * (level / 50 * exp_Factor)
	if exp_count >= 1000000  then
		msg = msg.."\n\n#COLORCOLOR_RED#�˴γ�����Ҫ����"..reqGold.."���,���ȿɻ��100����ֵ��#COLOREND#\n \n"
		msg = msg.."<@chaodu#"..reqGold.." *01*����ʼ�������꡹>"
	end
	
	return msg
end

function chaodu(npc, player, reqGold)
	local chaodu_exp = lualib:GetInt(player, "chaodu_exp") -- �ѳ��Ⱦ���
	local chaodu_time = lualib:GetInt(player, "chaodu_time") -- ��󳬶�������
	local chaodu_count = lualib:GetInt(player, "chaodu_count") -- ���ճ��ȴ���
	
	if lualib:GetAllDays(0) > chaodu_time then
		lualib:SetInt(player, "chaodu_count", 0)
		chaodu_count = 0
	elseif lualib:GetAllDays(0) < chaodu_time then
		return "ϵͳ����"
	end
	
	
	local reqGold = tonumber(reqGold)
	if not lualib:Player_IsGoldEnough(player, reqGold, false) then
		return "��Ľ�Ҳ��㣬�޷����ȣ�"
	end
	
	lualib:SetInt(player, "chaodu_exp", lualib:GetInt(player, "chaodu_exp") + 1000000)
	lualib:SetInt(player, "chaodu_time", lualib:GetAllDays(0))
	lualib:SetInt(player, "chaodu_count", lualib:GetInt(player, "chaodu_count") + 1)
	
	if not lualib:Player_SubGold(player, reqGold, false, "����", player) then
		return "�۳����ʧ�ܣ�"
	end
	
	if not lualib:Player_AddExp(player, 1000000, "����", player) then
		return "���Ӿ���ʧ�ܣ�"
	end
	
	lualib:SysMsg_SendPromptMsg(player, "���ȳɹ����������1000000����")
	return main(npc, player)
end