local buff_t = 
{
	["1.5���������"] = 
	{
		{"1.5������", 1},
		{"˫������", -1},
		{"��������", -1},
	},
	
	["˫���������"] = 
	{
	    {"1.5������", 0},
		{"˫������", 1},
		{"��������", -1},
	},
	["3���������"] = 
	{
	    {"1.5������", 0},
		{"˫������", 0},
		{"��������", 1},
	},
}

local o_buff_t = 
{
    ["1.5���������"] = "1.5������", 
	["˫���������"] = "˫������",
	["3���������"] = "��������",
}

function main(player, item)
	local keyname = lualib:KeyName(item);
	local mutex = buff_t[keyname];
	local buff = o_buff_t[keyname];
	assert(mutex and buff, "ϵͳ����:���߹Ҵ��˽ű�.");
	
	for _, v in pairs(mutex) do
		if lualib:HasBuff(player, v[1]) then
			if v[2] == 1 then
				lualib:AddBuff(player, buff, 0);
				return true;
			elseif v[2] == 0 then
				overlap(player, buff, item);
				return false;
			elseif v[2] == -1 then
				lualib:NPCTalk(player, v[1].."��"..buff.."�޷�����!\n\n<@cancel *01*ȷ��>");
				return false;
			end
		end
	end
	
	lualib:AddBuff(player, buff, 0);
	return true;
end

function overlap(player, keyname, item)
	local msg = "�㵱ǰ�Ѿ�ӵ"..keyname.."״̬���Ƿ�Ҫ�滻��\n\n"
	msg = msg.."<@replace#"..keyname.."#"..item.." *01*ȷ��>\n"
	msg = msg.."<@cancel *01*ȡ��>"
	lualib:NPCTalk(player, msg)
end

function replace(player, keyname, item)
	if (not lualib:HasItem(player, item)) or (not lualib:InBag(player, item)) then
		return "��Ǹ,��������Ѿ���������.\n\n<@cancel *01*ȷ��>";
	end
	
	assert(lualib:Item_SetAmount(player, item, lualib:Item_GetAmount(player, item) - 1), "ϵͳ����:�޸���Ʒ�ѵ���ʧ��.");
	lualib:AddBuff(player, keyname, 0);
	return "";
end

function cancel(player)
	return ""
end