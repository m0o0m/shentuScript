local jl_tbale = {"一号位", "二号位", "三号位"}
local bianliang = {"jiangli1", "jiangli2", "jiangli3"}



function main(npc, player)
	local L_V = lualib:GetInt(player, "L_V")
    local count = lualib:ItemCountByKey(player, "召唤石", true, true, true, 1)
    if L_V <= 35 then
        lualib:DelItem(player, "召唤石", count, 1, "初级秘海封印销毁", "初级秘海封印")
    end
	local msg = ""
	msg = msg.."     我这里有#COLORCOLOR_GREENG#大量经验丹#COLOREND#和独一无二的#COLORCOLOR_GREENG#海底坐骑#COLOREND#，以及#COLORCOLOR_GREENG#附魔石#COLOREND#，能不能抽到，就看你的造化了！\n"
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700037#<@jl *01*领取奖励> \n \n#IMAGE1902700015#<@likai *01*离开副本>\n"
	return msg
end


function jl(npc, player)
	local msg = "请翻选你的奖励！\n"
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
				--msg = msg.."#POS<X:".. x * i - 80 ..",Y:".. y - 80 ..">#已抽取"
			else
				local str_table = string.split(str, "#")
				local s, e = string.find(str_table[2], str_table[2])
				local b = (e - 4) / 2 * 5
				msg = msg.."#POS<X:".. x * i - 115 ..",Y:".. y - 125 ..">##IMAGE<ID:1904900003>#"
				msg = msg.."#POS<X:".. x * i - 92 ..",Y:".. y - 178 ..">##IMAGE<ID:"..str_table[1]..">#"
				msg = msg.."#POS<X:".. x * i - 75 - b ..",Y:".. y - 151 ..">#"..str_table[2]
				--msg = msg.."#POS<X:".. x * i - 80 ..",Y:".. y - 80 ..">#已抽取"
			end
		end
		--msg = msg.."#POS<X:".. x + 37 ..",Y:".. y - 80 ..">#已抽取"
	end			
			
	return msg
end

function fp(npc, player, types)
    local lv = lualib:Level(player)
    --keyname, icon, rate, count
    local item = {}
    
    local item1 = {
    --物品KeyName，物品ICON，权重，数量
				{"经验丹", "1990035239", 200, 1},
				{"大型经验丹", "1990035239", 20, 1},
                {"坐骑口粮", "1990035337", 50, 5},
                {"坐骑经验丹", "1990035356", 20, 5},
                {"套索", "1990035339", 50, 1},
                {"神羽", "1990020036", 20, 1},
			}
            
	local item2 = {
				{"经验丹", "1990035239", 80, 10},
				{"大型经验丹", "1990035239", 20, 10},
				{"开光印", "1990035336", 8, 1},
                {"坐骑口粮", "1990035337", 20, 10},
                {"坐骑经验丹", "1990035356", 20, 20},
                {"套索", "1990035339", 20, 10},
                {"神羽", "1990020036", 20, 10},
                {"召唤石", "1990035338", 20, 10},
                {"附魔石", "1990035305", 10, 1},
                {"梦魇兽(未开光)", "1990020195", 1, 1},
                {"雪域天狼(未开光)", "1990020198", 1, 1},
                {"吼天兽(未开光)", "1990020199", 1, 1},
                {"霸下玄龟(未开光)", "1990020353", 1, 1},
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
	lualib:SetCamp(player, 0)  --将玩家恢复为0阵营
	local mapguid = lualib:MapGuid(npc)
	lualib:Map_DestroyDgn(mapguid)
	
	return ""
end
