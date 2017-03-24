function main(npc, player)
    lualib:AddShop(npc, 1)
	local msg = "�꣡��������,��һ��������������ĳ��ֶ�������ʦ��˵��,ÿһ����������������,����,�����ڵȵ����Լ������ˣ�\n \n \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1># <@ShowRepire#1 *01*����> \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1># <@ShowRepireEx#1 *01*��������> \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1># <@SellItem#1 *01*����> \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@talk *01*�Ի�> "
	return msg
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "�����")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "���������")
    return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end

function talk(npc, player)
	local my_quest = lualib:GetInt(player, "my_quest")
	local msg = ""
	if my_quest == 2 then
		msg = [[Ŷ��ԭ����������ҵ��������Ǹ��ˣ�
		���������˻����۹Ⱑ��
		�����ң��������Ǻܷ�����
		�����ҵĹ�����
		
		<@hear *01*��>          <@Leave *01*����>]]
		return msg
	end
	
	if my_quest == 3 then
		msg = [[��ȥ�Ҹ߼���ʿ��!��������ɽ�ǵ�77:355
		
		
		<@Leave *01*�رնԻ�>]]
		return msg
	end
	
	if my_quest == 8 then
		msg = [[��?�Ȿ����?ʦ��������֮��!
		ʦ������û��������.
		������....
		�Ҳ��ܾ���������,��Ҫ����ʦ���ľ�����Ʒ������֮�С�!
		������Ҫ���������?
		
		<@enter *01*���ھ͸���>           <@Leave *01*ΪʲôҪ����?>]]
		return msg
	end
	
	
	return "��û��ʲô�ö���˵��!"
end
	
function enter(npc, player)
	local msg = ""
	if lualib:DelItem(player, "����֮��", 1, 2, "����֮����������", player) == true then

		local item_tbl =
		{
			{"����֮��",  800},
			{"����֮��1", 700},
			{"����֮��2", 600},
			{"����֮��3", 500},
			{"����֮��4", 400},
			{"����֮��5", 300},
			{"����֮��6", 200},
			{"����֮��7", 100},
		}
		local max, pr_y = 0, 0
		
		for i = 1, #item_tbl do
			max = max + item_tbl[i][2]		
		end
		
		local r = lualib:GenRandom(1, max)
		for _, v in pairs(item_tbl) do
			pr_y = pr_y + v[2]
			if r <= pr_y then
				local item_k = v[1]
				lualib:AddItem(player, item_k, 1, false, "����֮�����������֮��", player)
				lualib:SysMsg_SendBroadcastMsg("�߼���ʿ��ͽ�����������ɾ�����Ʒ������֮�С�,û������ʦ���Ľ̵��Ͷ���,��ѵ������ˡ�"..lualib:Name(player).."�������ø߼���ʿ���������������񽭺�!��", "ϵͳ֪ͨ")
				lualib:SetInt(player, "my_quest", 0)
				msg = [[��,�ǲ��Ǻ�����?�ú��ð�.
				��һ�Ѻ������ƵĽ�.
		
				<@Leave �رնԻ�>]]	
				return msg
			end
		end		

		return msg
	else
		msg = "�������֮�������Ķ�ȥ��?\n��������֮�������������֮�а�!\n \n \n"
		msg = msg.."<@Leave �رնԻ�>"
		return msg
	end
end

function hear(npc, player)
	local msg = ""
	local level = lualib:Level(player)
	if level < 35 then
		msg = [[�ţ������㻹���߱����ҹ��µ��ʸ�
		Ҫ����ս��Ҫ���Ĺ��£�ƾ��������������еġ�
		��Ȼ���Ѿ��ҵ�����ˣ��������ҵ�������ϣ��Ҿ͸���˵��Ц����!
		
		<@Leave *01*�رնԻ�>]]
		return msg
	else
		msg = [[���Ǻܻῴ�˰�����֪����û����˵������֮��?
		������Ϊ��ѧ��������������ʦ����ʱ��
		��ʱ�����ᣬѪ����ʢ��û�����һ����ׯ��
		Ϊ��ѧ����ߵļ��������߱������еĵط���
		����ʱ����־Ҫ���Լ������·�Χ��Ϊ��һ��
		���ԣ���������������,��һ�쵽��һ��С��ׯ��
		��ʱ��ֻ��������������ӣ����Ծ����ڸ����ҿ�ջ��
		�����ջ���ҽ��ϰ壬��㼸���򵥵Ĳˣ�
		�����ҷ������������ŵĲ˵�����һ��ĵ���
		�ǰѵ����������������κε���Ҫ��ɫ��
		�ǿ���һ�Ѳ˵���������������
		һ�Ѳ˵���Ȼ�Ƚ�������ĵ���Ҫ�á�
		�Ҳ��Ͽ�ջ�ϰ壬Ҫ��һ�������������ǰѵ����ˡ�
		�����ҵ��˲��Ǳ��ˣ������Ǹ߼���ʿ��
		���Ľ�����ʱ�Ѿ��ﵽ����ľ��硣
		����û���κ�Ұ�ĵ������������׵Ĺ����������,
		ֻ��һ���������ׯ����Զ�ĵط����
		�ҷ����Ƶ�Ѱ�����������ҵ�������������������ҹ���������ĵ��ӡ�
		���ǣ��ԴӸо��Լ���ʵ���г������ҾͿ�ʼ�ܱ���԰���
		ʦ����������������������
		ÿ����˺Ⱦƾ����棬�������һ��ܺ�ڡ�
		�����ʦ��Ҳû�������ң�Ҳ������һ�����Ҹ��������ܡ�
		�Թ��ŷŵ�������ң�ʦ��û��˵�κλ���
		��ʵ����̫�Բ���ʦ��������û�����κλ����Ҿ��뿪��ʦ����
		��������������¡�ʦ������������֮ǰ��������һ�ѽ���
		��������û��ѧ��������ѽ��ļ���֮ǰ��
		�͹����˸��ܵ���������Ҳ�֪���˼�����
		����û����ȥ��ʦ������֪���ܲ���������ʦ���� 
		<@accept *01*����>          <@Leave *01*�ܾ�>]]
		return msg
	end
end

function accept(npc, player)
	local msg = "��ȥ�Ҹ߼���ʿ��!��������ɽ�ǵ�77:355\n \n"
	msg = msg.."<@Leave *01*�رնԻ�>"
	lualib:SetInt(player, "my_quest", 3)
	return msg
end
	
function Leave(npc, player)
	return ""
end
