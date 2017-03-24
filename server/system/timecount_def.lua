local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("form/Common")

function ShowTimeCount(player, time, icon, notify)
    local content = time.."\n"..icon.."\n"..notify
    lualib:Player_SetCustomVarInt(player, notify.."����ʱ", lualib:GetTime() + time)
    lualib:ShowFormWithContent(player, "����ʱ", content)
end

function ShowTimeCount2(player, time, icon, notify, xianshi, ziti)
    local content = time.."\n"..icon.."\n"..notify.."\n"..xianshi.."\n"..ziti
    lualib:Player_SetCustomVarInt(player, notify.."����ʱ", lualib:GetTime() + time)
    lualib:ShowFormWithContent(player, "����ʱ", content)
end

function ShowTimeCount3(player, time, icon, notify, xianshi, ziti, str)
    local content = time.."\n"..icon.."\n"..notify.."\n"..xianshi.."\n"..ziti.."\n"..str
    lualib:Player_SetCustomVarInt(player, notify.."����ʱ", lualib:GetTime() + time)
    lualib:ShowFormWithContent(player, "����ʱ", content)
end


--�У���, ͼ��Ψһ�ı�ʶ, ͼ�꣬ ������ļ���������˺���������
function AddSEIcon(player, hang, dian, biaoshi, icon, biaodan, hanshu, canshu, tips)
	if tips == nil or type(tips) ~= "string" then
		tips = ""
	end
	local script = "AddSEIcon("..hang..","..dian..","..string.format("%q", biaoshi)..","..icon..","..string.format("%q", biaodan)..","..string.format("%q", hanshu)..","..string.format("%q", canshu)..","..string.format("%q", tips)..")"
    lualib:ShowFormWithContent(player, "�ű���", script)

end

--�У���, ͼ��Ψһ�ı�ʶ, ͼ�꣬ ������ļ���������˺���������ʱ����������
function AddSETimeIcon(player, hang, dian, biaoshi, icon, biaodan, hanshu, time, canshu, tips)
	if tips == nil or type(tips) ~= "string" then
		tips = ""
	end
	local script = "AddSETimeIcon("..hang..","..dian..","..string.format("%q", biaoshi)..","..icon..","..string.format("%q", biaodan)..","..string.format("%q", hanshu)..","..time..","..string.format("%q", canshu)..","..string.format("%q", tips)..")"
    lualib:ShowFormWithContent(player, "�ű���", script)

end

-- ��ӣ�ͼ��Ψһ�ı�ʶ, ͼ��ID�� x��y(��Ը�ICON��ƫ��)����Ч��֮֡���ʱ����(����)
function AddIconMagic(player, name, image, x, y, elapse)
	Invoke(player, "AddIconMagic", name, image, x, y, elapse)
end

--ɾ����ͼ��Ψһ�ı�ʶ
function DelIconMagic(player, name)
	Invoke(player, "DelIconMagic", name)
end



-- �ļ���
function DelIcon(player, file)
	local script = "DelIcon("..string.format("%q", file)..")"
	lualib:ShowFormWithContent(player, "�ű���", script)		
end

