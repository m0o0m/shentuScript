local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/ÿ�ճ�ֵ_s")
require("system/timecount_def")

local _weapons = ""
local firstConsume_cmpt = 0

-----------------------ͼ����ʾ-----------------------------
function firstConsume_show(player)
	------*****************ҳ�Ρ�΢����Դͬ����ɾ��*****************------
--[[	if lualib:GetClientType(player) == 0 then
		AddSEIcon(player, 2, -2, "�׳����", 1800200043, "����ʱ", "firstConsume_click","","��ֵ��������+6���")
		return ""
	end--]]
	------------*******************END********************-----------------
	
	AddSEIcon(player,2, -2, "�׳����", 1800200023, "����ʱ", "firstConsume_click","","��ֵ��������+6���")

--	AddIconMagic(player, "�׳����",3020101100, -19,-19, 150)
	AddIconMagic(player, "�׳����",3020300700, -40,-40, 150)
	return ""
end

-------------------ͼ�걻���-----------------------
function firstConsume_click(player)

	local _weaponsPic = 0
	local job = lualib:Job(player)
	if job == 1 then 
		_weapons = "���ս��Plus"
		_weaponsPic = 1990440649
	end
	if job == 2 then 
		_weapons = "ħ�귨��Plus"
		_weaponsPic = 1990440491
	end
	if job == 3 then 
		_weapons = "�������Plus"
		_weaponsPic = 1990409003
	end

local gift_ = {
	{	6, _weapons, 1, 1,_weaponsPic},
	{	"ֱ��һ����", 1, 1,
		"�߼�ת����", 1, 1,
		"���շ���", 1, 1,
	}
}
	if lualib:GetTotalBill(player) ~= 0 then
		--firstConsume_cmpt = 1
		lualib:ShowFormWithContent(player, "form�ļ���", "�׳����_c#"..serialize(gift_).."#"..firstConsume_cmpt)
	else
		lualib:ShowFormWithContent(player, "form�ļ���", "�׳����_c#"..serialize(gift_))
	end

	return ""
end





-------------------�������-----------------------
function firstConsume_reward(player)
	local id = tostring(lualib:Player_GetAccountID(player))
	if lualib:GetDBNum(id) ~= 0 then
		lualib:SysPromptMsg(player, "ͬһ���˺�ֻ����ȡһ���׳����")
		return ""
	end
	if lualib:GetInt(player, "firstConsume_reward") ~= 1 then
		local job = lualib:Job(player)
		if job == 1 then 
			_weapons = "���ս��Plus"
		end
		if job == 2 then 
			_weapons = "ħ�귨��Plus"
		end
		if job == 3 then 
			_weapons = "�������Plus"
		end
		if lualib:GetTotalBill(player) ~= 0 then 
			if lualib:MailToPlayer("�׳�����", player, "Ϊ��������Ϸ�ó̸����泩������һ���׳���ߡ���Ϸ��죡", 0, 0,	{	
			_weapons,1,1,
			"ֱ��һ����", 1, 1,
			"�߼�ת����", 1, 1,
			"���շ���", 1, 1,
			} ) then 
				lualib:SetInt(player, "firstConsume_reward", 1)
				lualib:SetDBNum(id,1)
				lualib:RunClientScript(player, "�׳����_c", "FirstConsume.wndClose","")
				DelIcon(player,"�׳����")
				dailyConsume_show(player)
			end
		end
	end	
	return ""	
end
