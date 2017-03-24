function main(npc, player)
    lualib:AddShop(npc, 1)
	local msg = "�꣡��������,��һ��������������ĳ��ֶ�������ʦ��˵��,ÿһ����������������,����,�����ڵȵ����Լ������ˣ�\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1># <@OpenShop#1 *01*����> \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700035##OFFSET<X:0,Y:-1># <@ShowRepire *01*����> \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700035##OFFSET<X:0,Y:-1># <@ShowRepireEx *01*��������> \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700036##OFFSET<X:0,Y:-1># <@SellItem *01*����> \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@talk *01*�Ի�> "
	return msg
end



function OpenShop(npc, player, id)
	lualib:OpenShop(npc, player, tonumber(id))
	return ""
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
	local msg = ""
	local itemName = {"���ʯ15", "���ʯ16", "���ʯ17", "���ʯ18", "���ʯ19", "���ʯ20"}
	local count = 0
	for i = 1, #itemName do
		count = count + lualib:ItemCountByKey(player, itemName[i], true, false, false, 2)
	end
	
	local my_quest = lualib:GetInt(player, "my_quest")
	
	if count > 0 and my_quest == 0 then
		lualib:SetInt(player, "my_quest", 1)
		msg = [[����﷢�����ʲô?�ѵ��ǽ��?
		�����������?��������ڿ�ʼ���ý���о��µ�����.
		������Ҫ�ܶ���,��֪���ܲ��ܰ����Ҵ���Ϊ15���ϵĽ��?
		�ý����,�һ����ü�Ǯ.

		<@talk *01*�����Ի�>]]
		return msg
	end

	if my_quest == 1 and count >= 3 then
		msg = [[Ŷ, �������������.�Ǹ������ȥƷ�ʲ���.
		����,������û���㹻��Ǯ��������3����.
		��֪���ܲ��ܸ�������?
		
		<@give *01*����͸���> 
		<@refuse *01*�ܾ�>]]
		return msg
	end

	if my_quest == 2 then
		msg = [[��˵���˾������������������µ��������ϰ�,
		����������С������ûʲô��Ϣ,�������Ǻ�������������,
		����ʱ��ѧ���ļ���,���ڸ�������������.
		��ȥ��һ������,�һ����Ⱥ������õ�.
		
		
		<@Leave *01*�رնԻ�>]]
		return msg
	end

	msg = "�����ڲ������˵��!\n������ֻ��Ѱ��3�鴿��Ϊ15���ϵĽ��!\n \n \n"
	msg = msg.."<@Leave *01*�رնԻ�> \n"
	return msg

end

function refuse(npc, player)
	local msg = [[ʲô?����������?Ŷ,������������ǰ��������ƭ��.
	��ô�������˰�?�Ǻ�
	��������������,�Ժ���Ҳ�п��ܲ��ں���������.
	�㻹��־ܾ���?
	
	
	<@give *01*����͸���> \n
	<@refuseEx *01*���Ǿܾ�> \n]]
	return msg
end

function refuseEx(npc, player)
	local msg = "�����ô�����?\n�����Ҿ�û�취����?���߰�!\n \n"
	msg = msg.."<@Leave *01*�رնԻ�> \n"
	return msg
end

function give(npc, player)
	local msg = ""
	local del_count_max = 3
	local count = 0
	local itemName = {"���ʯ15", "���ʯ16", "���ʯ17", "���ʯ18", "���ʯ19", "���ʯ20"}

	for i = 1, #itemName do
		count = count + lualib:ItemCountByKey(player, itemName[i], true, false, false, 2)
	end
	
	if count < 3  then
		msg = "�����ڲ������˵��!\n������ֻ��Ѱ��3�鴿��Ϊ15���ϵĽ��!\n \n \n"
		msg = msg.."<@Leave *01*�رնԻ�> \n"
		return msg
	end
	
	for i = 1, #itemName do
		if del_count_max > 0 then
			local minecount = lualib:ItemCountByKey(player, itemName[i], true, false, false, 2)
			if minecount > 0 then
				if minecount > del_count_max then
					minecount = del_count_max
				end
				lualib:Player_DestroyItem(player, itemName[i], minecount, "��ȡ���", player)
				del_count_max = del_count_max - minecount
			end
		else
			lualib:SetInt(player, "my_quest", 2)
			return "��?����İ���Щ�׸���?\n��û�뵽�����������������,�����������鰡.\n�Ҳ��ܰ�����ô���صĶ���.����û����˵������֮��?\n������С��������������֮��,��û����ϸ�۲���Ǹ�����?\n \n \n <@talk *01*�ٴ���һ��>"
		end
	end
	
end		

function Leave(npc, player)
	return ""
end
