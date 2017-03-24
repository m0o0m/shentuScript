local buff_t = 
{
	["1.5倍经验卷轴"] = 
	{
		{"1.5倍经验", 1},
		{"双倍经验", -1},
		{"三倍经验", -1},
	},
	
	["双倍经验卷轴"] = 
	{
	    {"1.5倍经验", 0},
		{"双倍经验", 1},
		{"三倍经验", -1},
	},
	["3倍经验卷轴"] = 
	{
	    {"1.5倍经验", 0},
		{"双倍经验", 0},
		{"三倍经验", 1},
	},
}

local o_buff_t = 
{
    ["1.5倍经验卷轴"] = "1.5倍经验", 
	["双倍经验卷轴"] = "双倍经验",
	["3倍经验卷轴"] = "三倍经验",
}

function main(player, item)
	local keyname = lualib:KeyName(item);
	local mutex = buff_t[keyname];
	local buff = o_buff_t[keyname];
	assert(mutex and buff, "系统错误:道具挂错了脚本.");
	
	for _, v in pairs(mutex) do
		if lualib:HasBuff(player, v[1]) then
			if v[2] == 1 then
				lualib:AddBuff(player, buff, 0);
				return true;
			elseif v[2] == 0 then
				overlap(player, buff, item);
				return false;
			elseif v[2] == -1 then
				lualib:NPCTalk(player, v[1].."与"..buff.."无法共存!\n\n<@cancel *01*确定>");
				return false;
			end
		end
	end
	
	lualib:AddBuff(player, buff, 0);
	return true;
end

function overlap(player, keyname, item)
	local msg = "你当前已经拥"..keyname.."状态，是否要替换？\n\n"
	msg = msg.."<@replace#"..keyname.."#"..item.." *01*确定>\n"
	msg = msg.."<@cancel *01*取消>"
	lualib:NPCTalk(player, msg)
end

function replace(player, keyname, item)
	if (not lualib:HasItem(player, item)) or (not lualib:InBag(player, item)) then
		return "抱歉,经验卷轴已经不存在了.\n\n<@cancel *01*确定>";
	end
	
	assert(lualib:Item_SetAmount(player, item, lualib:Item_GetAmount(player, item) - 1), "系统错误:修改物品堆叠数失败.");
	lualib:AddBuff(player, keyname, 0);
	return "";
end

function cancel(player)
	return ""
end