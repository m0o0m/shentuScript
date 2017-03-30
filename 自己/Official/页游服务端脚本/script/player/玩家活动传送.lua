local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
--��ħ����
function playerMoveMagic(player)
	local level = lualib:Level(player)
	if level >= 80 then
		local param = "��ħ����"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end

--��ħ���
function playerMoveMagic1(player)
	local level = lualib:Level(player)
	if level >= 80 then
		local param = "��ħ���"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end

--Ĥ�ݳ���
function playerMoveMagic2(player)
	local level = lualib:Level(player)
	if level >= 40 then
		local param = "Ĥ�ݳ���"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end

--����֮��
function playerMoveMagic3(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "����֮��"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end

--Ԫ�����껪
function playerMoveMagic4(player)
	local level = lualib:Level(player)
	if level >= 40 then
		local param = "Ԫ�����껪"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end

--Ѱ���ᱦ
function playerMoveMagic5(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "Ѱ���ᱦ"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end

--ҹϮ��ɽ��
function playerMoveMagic6(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "ȺӢ����"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end

--˭������
function playerMoveMagic7(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "˭������"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end

--�޾���Ԩ
function playerMoveMagic8(player)
	local level = lualib:Level(player)
	local vip_lv = lualib:GetVipLevel(player)
	if level > 79 or (vip_lv >0 and level > 49 ) then
		local param = "�޾���Ԩ"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end



--����ս
function playerMoveMagic9(player)
	local family = lualib:GetFamilyName(player);
	if family ~= "" then 
		local param = "����ս"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end 
	return ""
end

--Ѻ���淨
function playerMoveMagic10(player)
	local level = lualib:Level(player)
	if level >= 50 then
		local param = "Ѻ���淨"
		lualib:ShowFormWithContent(player,"form�ļ���","�����#"..serialize(param))
	end
	return ""
end