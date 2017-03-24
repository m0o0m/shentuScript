local gold_bar = 
{
	小金条 = 100000,
	金条 = 1000000,
};

local gold_limit = 1000000000;

function main(player, item)
	local keyname = lualib:KeyName(item);
	local gold = gold_bar[keyname];				--取得要添加的金币数
	
	assert(gold, "系统错误,金条物品挂错了脚本.");
	
	local bind = lualib:Item_IsBind("", item);	--取得是否绑定金币
	local bind_info = select(bind and 2 or 1, "不绑定", "绑定");
	
	if lualib:Player_IsGoldEnough(player, gold_limit - gold, bind) then --兑换后是否会超过系统限制
		lualib:NPCTalk(player, "金条兑换后金币数量将超过系统限制,最高只能拥有"..gold_limit..bind_info.."金币!\n\n <@Leave *01* 离开>");
        return false;
	end
	
	if not lualib:Item_Destroy("", item, "扣道具:金条", "金条兑换脚本") then
		lualib:NPCTalk(player, "兑换金条失败!\n\n <@Leave *01* 离开>");
		return false;
	end
	
	assert(lualib:Player_AddGold(player, gold, bind, "加金币:使用金条道具.", "金条兑换脚本"), "系统错误,加金币不可能失败!");
	lualib:NPCTalk(player, "恭喜,你已成功兑换"..gold.."的"..bind_info.."金币!\n\n <@Leave *01* 离开>");
	return true;
end

function Leave(...)
	return "";
end