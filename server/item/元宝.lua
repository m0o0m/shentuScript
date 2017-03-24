local ingots = 
{
	["1元宝"] = 1,
	["5元宝"] = 5,
	["10元宝"] = 10,
	["50元宝"] = 50,
	["100元宝"] = 100,
	["500元宝"] = 500,
	["1000元宝"] = 1000,
	["5000元宝"] = 5000,
	["10000元宝"] = 10000,
	["50000元宝"] = 50000
};

function main(player, item)
	local keyname = lualib:KeyName(item);
	local ingot = ingots[keyname];
	assert(ingot, "系统错误:元宝道具挂错了脚本.");
	
	local bind = lualib:Item_IsBind("", item);
	if bind then
		assert(lualib:AddBindIngot(player, ingot, "加元宝:元宝脚本", "元宝脚本"), "系统错误:加元宝失败.");
	else
		assert(lualib:AddIngot(player, ingot, "加元宝:元宝脚本", "元宝脚本"), "系统错误:加元宝失败.");
	end
	
	return true
end