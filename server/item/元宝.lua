local ingots = 
{
	["1Ԫ��"] = 1,
	["5Ԫ��"] = 5,
	["10Ԫ��"] = 10,
	["50Ԫ��"] = 50,
	["100Ԫ��"] = 100,
	["500Ԫ��"] = 500,
	["1000Ԫ��"] = 1000,
	["5000Ԫ��"] = 5000,
	["10000Ԫ��"] = 10000,
	["50000Ԫ��"] = 50000
};

function main(player, item)
	local keyname = lualib:KeyName(item);
	local ingot = ingots[keyname];
	assert(ingot, "ϵͳ����:Ԫ�����߹Ҵ��˽ű�.");
	
	local bind = lualib:Item_IsBind("", item);
	if bind then
		assert(lualib:AddBindIngot(player, ingot, "��Ԫ��:Ԫ���ű�", "Ԫ���ű�"), "ϵͳ����:��Ԫ��ʧ��.");
	else
		assert(lualib:AddIngot(player, ingot, "��Ԫ��:Ԫ���ű�", "Ԫ���ű�"), "ϵͳ����:��Ԫ��ʧ��.");
	end
	
	return true
end