local gold_bar = 
{
	С���� = 100000,
	���� = 1000000,
};

local gold_limit = 1000000000;

function main(player, item)
	local keyname = lualib:KeyName(item);
	local gold = gold_bar[keyname];				--ȡ��Ҫ��ӵĽ����
	
	assert(gold, "ϵͳ����,������Ʒ�Ҵ��˽ű�.");
	
	local bind = lualib:Item_IsBind("", item);	--ȡ���Ƿ�󶨽��
	local bind_info = select(bind and 2 or 1, "����", "��");
	
	if lualib:Player_IsGoldEnough(player, gold_limit - gold, bind) then --�һ����Ƿ�ᳬ��ϵͳ����
		lualib:NPCTalk(player, "�����һ���������������ϵͳ����,���ֻ��ӵ��"..gold_limit..bind_info.."���!\n\n <@Leave *01* �뿪>");
        return false;
	end
	
	if not lualib:Item_Destroy("", item, "�۵���:����", "�����һ��ű�") then
		lualib:NPCTalk(player, "�һ�����ʧ��!\n\n <@Leave *01* �뿪>");
		return false;
	end
	
	assert(lualib:Player_AddGold(player, gold, bind, "�ӽ��:ʹ�ý�������.", "�����һ��ű�"), "ϵͳ����,�ӽ�Ҳ�����ʧ��!");
	lualib:NPCTalk(player, "��ϲ,���ѳɹ��һ�"..gold.."��"..bind_info.."���!\n\n <@Leave *01* �뿪>");
	return true;
end

function Leave(...)
	return "";
end