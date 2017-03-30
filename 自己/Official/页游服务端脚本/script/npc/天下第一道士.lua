local record_file = {"���µ�һսʿ.txt", "���µ�һ��ʦ.txt", "���µ�һ��ʿ.txt", "���µ�һ.txt"}
local record_name = {"���µ�һսʿ", "���µ�һ��ʦ", "���µ�һ��ʿ", "���µ�һ"}
local talk_t = {"������������Ե���ƣ�����֮·����;���衭��", "Ҫ��һ��Ҫ�ľ��ģ�", "ѡ��ȼӱ���Ŭ������Ҫ��"}

function on_create(npc)
	npc_update(npc)
	lualib:AddTimer(npc, 1, 15000, -1, "on_timer_talk")
end

function main(npc, player)
	msg = "������������Ե���ƣ�����֮·����;���衭��\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:0>#<@Nothing *01*�ݼ����µ�һ��ʿ>\n"
	return msg
end

function Nothing(npc, player)
	return talk_t[lualib:GenRandom(1, #talk_t)].."\n \n \n \n \n \n \n \n                                                       #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*����>"
end

function npc_update(npc)
	if  not (lualib:IO_FileExists(record_file[3])) then
		lualib:Npc_ChangeName(npc, record_name[3])
		return
	end
	
	local texts = lualib:IO_GetFileText(record_file[3])
	if texts == nil then
		lualib:Npc_ChangeName(npc, record_name[3])
		else
		lualib:Npc_ChangeName(npc, texts[1])
	end
end

function on_timer_talk(npc, timer_id)
	if lualib:GenRandom(1, 100) > 70 then	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])
	end
end

