local jl_tbale = {"һ��λ", "����λ", "����λ"}
local bianliang = {"jiangli1", "jiangli2", "jiangli3"}



function main(npc, player)
	local L_V = lualib:GetInt(player, "L_V")
    local count = lualib:ItemCountByKey(player, "�ٻ�ʯ", true, true, true, 1)
    if L_V <= 35 then
        lualib:DelItem(player, "�ٻ�ʯ", count, 1, "�����غ���ӡ����", "�����غ���ӡ")
    end
	local msg = ""
	msg = msg.."     ��������#COLORCOLOR_GREENG#�������鵤#COLOREND#�Ͷ�һ�޶���#COLORCOLOR_GREENG#��������#COLOREND#���Լ�#COLORCOLOR_GREENG#��ħʯ#COLOREND#���ܲ��ܳ鵽���Ϳ�����컯�ˣ�\n"
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700037#<@jl *01*��ȡ����> \n \n#IMAGE1902700015#<@likai *01*�뿪����>\n"
	return msg
end


function jl(npc, player)
	local msg = "�뷭ѡ��Ľ�����\n"
	local x = 120
	local y = 150
	
	local a = 0
	
	for i = 1, #bianliang do
		if lualib:GetStr(npc, bianliang[i]) ~= "" then
			a = 1
		end
	end
	
	
	if a ~= 1 then
		for i = 1, #jl_tbale do
			local str = lualib:GetStr(npc, bianliang[i])
			if str == "" then
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 125 ..">##IMAGE<ID:1904900001>#"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 255 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 245 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 235 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 225 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 215 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 205 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 195 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 185 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 175 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 165 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 155 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 145 ..">#<@fp#"..i.." *01*                >"
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 135 ..">#<@fp#"..i.." *01*                >"
			
				--msg = msg.."#POS<X:".. x * i - 80 ..",Y:".. y - 80 ..">#<@fp#"..i.." *01*"..jl_tbale[i]..">"
			end
		end
	else
		for i = 1, #jl_tbale do
			local str = lualib:GetStr(npc, bianliang[i])
			if str == "" then
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 125 ..">##IMAGE<ID:1904900001>#"
				--msg = msg.."#POS<X:".. x * i - 80 ..",Y:".. y - 80 ..">#�ѳ�ȡ"
			else
				local str_table = string.split(str, "#")
				local s, e = string.find(str_table[2], str_table[2])
				local b = (e - 4) / 2 * 5
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 125 ..">##IMAGE<ID:1904900003>#"
				msg = msg.."#POS<X:".. x * i - 92 ..",Y:".. y - 178 ..">##IMAGE<ID:"..str_table[1]..">#"
				msg = msg.."#POS<X:".. x * i - 75 - b ..",Y:".. y - 151 ..">#"..str_table[2]
				--msg = msg.."#POS<X:".. x * i - 80 ..",Y:".. y - 80 ..">#�ѳ�ȡ"
			end
		end
		--msg = msg.."#POS<X:".. x + 37 ..",Y:".. y - 80 ..">#�ѳ�ȡ"
	end			
			
	return msg
end

function fp(npc, player, types)
    local lv = lualib:Level(player)
    --keyname, icon, rate, count
    local item = {}
    
    local item1 = {
    --��ƷKeyName����ƷICON��Ȩ�أ�����
				{"���鵤", "1990035239", 200, 1},
				{"���;��鵤", "1990035239", 20, 1},
                {"�������", "1990035337", 50, 5},
                {"���ﾭ�鵤", "1990035356", 20, 5},
                {"����", "1990035339", 50, 1},
                {"����", "1990020036", 20, 1},
			}
            
	local item2 = {
				{"���鵤", "1990035239", 80, 10},
				{"���;��鵤", "1990035239", 20, 10},
				{"����ӡ", "1990035336", 8, 1},
                {"�������", "1990035337", 20, 10},
                {"���ﾭ�鵤", "1990035356", 20, 20},
                {"����", "1990035339", 20, 10},
                {"����", "1990020036", 20, 10},
                {"�ٻ�ʯ", "1990035338", 20, 10},
                {"��ħʯ", "1990035305", 10, 1},
                {"������(δ����)", "1990020195", 1, 1},
                {"ѩ������(δ����)", "1990020198", 1, 1},
                {"������(δ����)", "1990020199", 1, 1},
                {"��������(δ����)", "1990020353", 1, 1},
			}
            
    if lv >= 35 then
        item = item2
    else
        item =item1
    end
	local types = tonumber(types)
	
	local rate_max = 0
	for i = 1, #item do
		rate_max = rate_max + item[i][3]
	end
	local rete_end = 0
	local rete = lualib:GenRandom(1, rate_max)
	for i = 1, #item do
		rete_end = rete_end + item[i][3]
		if rete < rete_end then
			lualib:AddItem(player, item[i][1], item[i][4], false, "TD", "TD")
			lualib:SetStr(npc, bianliang[types], item[i][2].."#"..item[i][1])
			break
		end
	end
	return jl(npc, player)
end

function qingk(npc, player)
	for i = 1, #bianliang do
		lualib:SetStr(npc, bianliang[i], "")
	end
	return main(npc, player)
end

function likai(npc, player)
	lualib:SetCamp(player, 0)  --����һָ�Ϊ0��Ӫ
	local mapguid = lualib:MapGuid(npc)
	lualib:Map_DestroyDgn(mapguid)
	
	return ""
end
