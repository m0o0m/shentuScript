local record_file = {"天下第一战士.txt", "天下第一法师.txt", "天下第一道士.txt", "天下第一.txt"}
local record_name = {"天下第一战士", "天下第一法师", "天下第一道士", "天下第一"}
local talk_t = {"沧溟隐隐，尘缘悠悠，成神之路，道途险阻……", "要有一定要的决心！", "选择比加倍的努力更重要！"}

function on_create(npc)
	npc_update(npc)
	lualib:AddTimer(npc, 1, 15000, -1, "on_timer_talk")
end

function main(npc, player)
	msg = "沧溟隐隐，尘缘悠悠，成神之路，道途险阻……\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:0>#<@Nothing *01*拜见天下第一道士>\n"
	return msg
end

function Nothing(npc, player)
	return talk_t[lualib:GenRandom(1, #talk_t)].."\n \n \n \n \n \n \n \n                                                       #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*返回>"
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

