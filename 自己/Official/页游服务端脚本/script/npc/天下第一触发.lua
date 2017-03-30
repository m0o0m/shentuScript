local record_file = {"���µ�һսʿ.txt", "���µ�һ��ʦ.txt", "���µ�һ��ʿ.txt", "���µ�һ.txt"}
local record_name = {"���µ�һսʿ", "���µ�һ��ʦ", "���µ�һ��ʿ", "���µ�һ"}

function GSTriggerScript(map_keyname, npc_keyname, type)
	lualib:Debug("���µ�һ�����ű��ص���")
	
	if not lualib:Map_IsInGS(map_keyname) then return end
	local map = lualib:Map_GetMapGuid(map_keyname)
	if "" == map then return end
	
	local npc = lualib:Map_GetMapNpc(map, npc_keyname)
	if "" == npc then return end
	
	npc_update(npc, tonumber(type))
end

function npc_update(npc, type)
	local texts = lualib:IO_GetFileText(record_file[type])
	if texts == nil then
		lualib:Npc_ChangeName(npc, record_name[type])
	else
		lualib:Npc_ChangeName(npc, texts[1])
	end
end