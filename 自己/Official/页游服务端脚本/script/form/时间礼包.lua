--GetDayInt��ѯonlinegift���ҵ�������ȡ�������



local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local client_award = 
{
    {"��שС",1,0},
    {"��ש��",1,0},
    {"��ש��",1,0},
    {"��ש��",1,0},	
}

local olgifttbl = {
						{ 
							{ "��שС" 			, 1 } , 
							{ "��������" 		, 1 } , 
						},
						{ 
							{ "��ש��" 			, 1 } , 
							{ "���ž���" 		, 1 } , 
						},
						{ 
							{ "��ש��"			, 1 } , 
							{ "ת��������"	, 1 } , 
						},
						{ 
							{ "��ש��"			, 1 } , 
							{ "ת��������"	, 1 } , 
						},
					
}


-----------------------ͼ����ʾ-----------------------------
function onlinegift_show( sPlayerID )	
	if lualib:GetDayInt( sPlayerID , "onlinegift" ) == 0 then
		AddSEIcon( sPlayerID , 1 , -3 , "�������" , 1906100009 , "����ʱ" , "onlinegiftpickup" ,"" , "���ֽ����쵼����" )
	end
end

-------------------ͼ�걻���-----------------------
function onlinegiftpickup(player)
	local tab = serialize(client_award)
	lualib:ShowFormWithContent(player, "�ű���", "client_award_t="..serialize(client_award))
	lualib:ShowFormWithContent(player, "�����", "�����")
    return ""
end

-------------------��ȡ����-------------------------
function pickupolgift( sPlayerID )
	local this = lualib:GetDayInt( sPlayerID , "onlinegift" ) + 1
	if this >= 4 then
		return "��ȡʧ��"
	end
	if lualib:GetBagFree( sPlayerID ) < 2 then
		return "�����ո���2�����޷���ȡ"
	end
	for i=1,#olgifttbl[this] do
		lualib:AddItem( sPlayerID , olgifttbl[this][i][1] , olgifttbl[this][i][2] , true , "������ȡ����" , "������ȡ����"..sPlayerID )
	end
	lualib:SetDayInt( sPlayerID , "onlinegift" , this )
end

function close(player)
	return ""
end