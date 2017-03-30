local player_var = {
    "xiangmo_quest_var_4201", 
    "xiangmo_quest_var_4202", 
    "xiangmo_quest_var_4203", 
    "xiangmo_quest_var_4204", 
    "xiangmo_quest_var_4205", 
    "xiangmo_quest_var_4206", 
    "xiangmo_quest_var_4207", 
    "xiangmo_quest_var_4208", 
    "xiangmo_quest_var_4221", 
    "xiangmo_quest_var_4222", 
    "xiangmo_quest_var_4223", 
    "xiangmo_quest_var_4224", 
    "xiangmo_quest_var_4225", 
    "xiangmo_quest_var_4226", 
    "xiangmo_quest_var_4227", 
    "xiangmo_quest_var_4228",
    --"xiangmo_quest_var_4060", 
    "xiangmo_quest_var_4061", 
    --"xiangmo_quest_var_4062", 
    --"xiangmo_quest_var_4064", 
    --"xiangmo_quest_var_4070", 
    "xiangmo_quest_var_4071", 
    --"xiangmo_quest_var_4072", 
    --"xiangmo_quest_var_4074" 
    }
	
function main(npc,player)

    for i = 1, #player_var do
        lualib:GetDayInt(player, player_var[i])
    end
    
	local msg = "#COLORCOLOR_BROWN#	������ħ��ͣ����������Ҫһλǿ�����ʿ��ÿ���ܹ������������Ͷ�ħ���ϵش�������㹻��ǿ��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n\n"
	msg = msg.."#OFFSET<X:30,Y:0>##IMAGE1902700016#<@accept_task *01*��ȡ�ճ�����>#OFFSET<X:-2,Y:0>#"
	msg = msg.."#OFFSET<X:70,Y:0>##IMAGE1902700016#<@accomplish_task *02*�ύ�ճ�����>#OFFSET<X:7,Y:0>#\n\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"	
	msg = msg.."#COLORCOLOR_SKYBLUE#���ѣ�ͬһ����ÿ���������10�Σ�#COLOREND#��\n"	
	msg = msg.."#COLORCOLOR_SKYBLUE#���ѣ�ÿ���һ�����񣬶��л��ʻ�ö�������������#COLOREND#��\n"	
	msg = msg.."#OFFSET<X:330,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:0>#<@likai *01*�뿪>\n"
	return msg
end

function likai(npc,player)
	return ""
end

local map_table = {
    {15, 28, "����ڣ",    "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#����ڣ *01*����ڣ>"}, 
    {20, 35, "������",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#������ *02*������>"}, 
    {25, 37, "��ɽ��Ѩ",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#��ɽ��Ѩ *04*��ɽ��Ѩ>"}, 
    {28, 40, "��·��",    "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#��·�� *03*��·��>"}, 
    {35, 45, "�����",    "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#����� *05*�����>"}, 
    {37, 50, "���а��",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#���а�� *06*���а��>"}, 
    {40, 60, "��ħʯ��",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#��ħʯ�� *07*��ħʯ��>"}
    }
	
local map_table_48 = {
	{45, 70, "�����ؾ�",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#�����ؾ� *08*�����ؾ�>"}}	

local map_table_50 = {
	{15, 45, "��ħ��",    "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#��ħ�� *09*��ħ��>"}}
	

local quest_id_table = {4201, 4221, 4202, 4222, 4203, 4223, 4204, 4224, 4205, 4225, 4206, 4226, 4207, 4227, 4208,
 4228, 4061, 4071}	

local map_quest_table = {
    ["����ڣ"] =    {
                    {4201, 15, 28, "#IMAGE1902700018#<@accept#4201 *01*������ڣ30ֻ�������>", "�����飺10000"}, 
                    {4221, 15, 28, "#IMAGE1902700018#<@accept#4221 *01*������ڣ60ֻ�������>", "�����飺16000"} 
                    }, 
    ["������"] =  {
                    {4202, 20, 35, "#IMAGE1902700018#<@accept#4202 *01*���������30ֻ�������>", "�����飺15000"}, 
                    {4222, 20, 35, "#IMAGE1902700018#<@accept#4222 *01*���������60ֻ�������>", "�����飺24000"} 
                    }, 
    ["��ɽ��Ѩ"] =  {
                    {4204, 25, 37, "#IMAGE1902700018#<@accept#4204 *01*������ɽ��Ѩ30ֻ�������>", "�����飺30000"}, 
                    {4224, 25, 37, "#IMAGE1902700018#<@accept#4224 *01*������ɽ��Ѩ60ֻ�������>", "�����飺48000"}
                    }, 
    ["��·��"] =    {
                    {4203, 28, 40, "#IMAGE1902700018#<@accept#4203 *01*�����·��30ֻ�������>", "�����飺32000"}, 
                    {4223, 28, 40, "#IMAGE1902700018#<@accept#4223 *01*�����·��60ֻ�������>", "�����飺51200"}
                    }, 
    ["�����"] =    {
                    {4205, 35, 45, "#IMAGE1902700018#<@accept#4205 *01*���������30ֻ�������>", "�����飺50000"}, 
                    {4225, 35, 45, "#IMAGE1902700018#<@accept#4225 *01*���������60ֻ�������>", "�����飺80000"}
                    }, 
    ["���а��"] =  {
                    {4206, 37, 50, "#IMAGE1902700018#<@accept#4206 *01*�������а��30ֻ�������>", "�����飺70000"}, 
                    {4226, 37, 50, "#IMAGE1902700018#<@accept#4226 *01*�������а��60ֻ�������>", "�����飺112000"} 
                    }, 
    ["��ħʯ��"] =  {
                    {4207, 40, 60, "#IMAGE1902700018#<@accept#4207 *01*������ħʯ��30ֻ�������>", "�����飺230000"}, 
                    {4227, 40, 60, "#IMAGE1902700018#<@accept#4227 *01*������ħʯ��60ֻ�������>", "�����飺368000"}
                    }, 
    ["�����ؾ�"] =  {
                    {4208, 45, 70, "#IMAGE1902700018#<@accept#4208 *01*�������ؾ�30ֻ�������>", "�����飺310000"}, 
                    {4228, 45, 70, "#IMAGE1902700018#<@accept#4228 *01*�������ؾ�60ֻ�������>", "�����飺496000"}
                    },
    ["��ħ��"] =  {
                    --{4060, 15, 28, "#IMAGE1902700018#<@accept#4060 *01*����������ħ�ǳ���30ֻ����>", "�����飺15000"}, 
                    {4061, 20, 33, "#IMAGE1902700018#<@accept#4061 *01*������ħ����ǰ����30ֻ����>", "�����飺26000"}, 
                    --{4062, 28, 40, "#IMAGE1902700018#<@accept#4062 *01*������ħ���ص��Ĳ�30ֻ����>", "�����飺88000"}, 
                    --{4064, 33, 45, "#IMAGE1902700018#<@accept#4064 *01*������ħ���ص�����30ֻ����>", "�����飺225000"}, 
                    --{4070, 15, 28, "#IMAGE1902700018#<@accept#4070 *01*����������ħ�ǳ���60ֻ����>", "�����飺30000"}, 
                    {4071, 20, 33, "#IMAGE1902700018#<@accept#4071 *01*������ħ����ǰ����60ֻ����>", "�����飺52000"}, 
                    --{4072, 28, 40, "#IMAGE1902700018#<@accept#4072 *01*������ħ���ص��Ĳ�60ֻ����>", "�����飺176000"}, 
                    --{4074, 33, 45, "#IMAGE1902700018#<@accept#4074 *01*������ħ���ص�����60ֻ����>", "�����飺450000"}                   
                    }					
    }

local quest_table = {
["4201"] = {"������ڣ30ֻ�������",     "������ħ֮����ڣ(1)",   10000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1000}, 
["4221"] = {"������ڣ60ֻ�������",     "������ħ֮����ڣ(2)",   16000,  2,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2000}, 
["4202"] = {"���������30ֻ�������",   "������ħ֮������(1)", 15000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1500}, 
["4222"] = {"���������60ֻ�������",   "������ħ֮������(2)", 24000,  2,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3000}, 
["4204"] = {"������ɽ��Ѩ30ֻ�������",   "������ħ֮��ɽ��Ѩ(1)", 30000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3000}, 
["4224"] = {"������ɽ��Ѩ60ֻ�������",   "������ħ֮��ɽ��Ѩ(2)", 48000,  3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 6000}, 
["4203"] = {"�����·��30ֻ�������",     "������ħ֮��·��(1)",   32000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3500}, 
["4223"] = {"�����·��60ֻ�������",     "������ħ֮��·��(2)",   51200,  3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 7000}, 
["4205"] = {"���������30ֻ�������",     "������ħ֮�����(1)",   50000,  2,  1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 5000}, 
["4225"] = {"���������60ֻ�������",     "������ħ֮�����(2)",   80000,  4,  2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 10000}, 
["4206"] = {"�������а��30ֻ�������",   "������ħ֮���а��(1)", 70000,  2,  1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 7500}, 
["4226"] = {"�������а��60ֻ�������",   "������ħ֮���а��(2)", 112000, 4,  2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 15000}, 
["4207"] = {"������ħʯ��30ֻ�������",   "������ħ֮��ħʯ��(1)", 230000, 3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 20000}, 
["4227"] = {"������ħʯ��60ֻ�������",   "������ħ֮��ħʯ��(2)", 368000, 5,  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 40000}, 
["4208"] = {"�������ؾ�30ֻ�������",   "������ħ֮�����ؾ�(1)", 310000, 3,  2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 25000}, 
["4228"] = {"�������ؾ�60ֻ�������",   "������ħ֮�����ؾ�(2)", 496000, 5,  4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 50000},
["4060"] = {"����������ħ�ǳ���30ֻ����", "�������֮�����Ӻ�(1)", 15000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1000},
["4070"] = {"����������ħ�ǳ���60ֻ����", "�������֮�����Ӻ�(2)", 30000,  1,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2000},
["4061"] = {"������ħ����ǰ����30ֻ����", "�������֮������ʬ(1)", 26000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2500},
["4071"] = {"������ħ����ǰ����60ֻ����", "�������֮������ʬ(2)", 52000,  2,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5000},
--["4062"] = {"������ħ���ص��Ĳ�30ֻ����", "�������֮����ū(1)", 88000,  2,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10000},
--["4072"] = {"������ħ���ص��Ĳ�60ֻ����", "�������֮����ū(2)", 176000, 3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 20000},
--["4064"] = {"������ħ���ص�����30ֻ����", "�������֮ʵ��֤��(1)", 225000, 3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 15000},
--["4074"] = {"������ħ���ص�����60ֻ����", "�������֮ʵ��֤��(2)", 450000, 5,  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 30000} 
}


--������
function accept_task(npc, player)
	local msg = "\n \n#COLORCOLOR_YELLOW#������������������������ȡ�ճ����񩥩���������������������#COLOREND#\n \n"
	local level = lualib:Level(player)
    
	--�������ƽ�ȡ����
    --1.�����ؾ�����	
    local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
    if haidi_Open >= 20 then
		if nil ~= map_table_48 then
			for i = 1, #map_table_48 do
				table.insert(map_table, map_table_48[i])
			end
			map_table_48 = nil
		end		
    end
   
   --2.��ħ�ǿ���   
    local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
    if zhenmocheng_Open >= 20 then
		if nil ~= map_table_50 then
			for i = 1, #map_table_50 do
				table.insert(map_table, map_table_50[i])
			end
			map_table_50 = nil
		end		
    end
    
    for i = 1, #quest_id_table do
        if lualib:HasQuest(player, quest_id_table[i]) == true then 
			local id = tostring(quest_id_table[i]) return "���Ѿ��������������ˣ�����\n\n��������Ϊ��\n"..quest_table[id][2].."������\n\n\n\n #OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
        end
    end    
		
	if level < 15 then return "��ﵽ15����������"
  
	else
		for i = 1, #map_table do
			if map_table[i][1] <= level and map_table[i][2] > level then

                    msg = msg .. map_table[i][4].."\n"

			end
		end	
		msg = msg.."\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>\n"
	end
	return msg
end

function accept_q(npc, player, map_name)
	local quest_inmap_table = map_quest_table[map_name]
	local level = lualib:Level(player)
    local quest_is_have = false
    local msg = "\n \n#COLORCOLOR_YELLOW#������������������������ȡ�ճ����񩥩���������������������#COLOREND#\n \n"	
	for i = 1, #quest_inmap_table do
        if quest_inmap_table[i][2] <= level and quest_inmap_table[i][3] >level then
            local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_inmap_table[i][1]) + 1
            if huanshu <= 10 then
                quest_is_have = true
                msg = msg .. quest_inmap_table[i][4].."#COLORCOLOR_SKYBLUE#����"..huanshu.."����#COLOREND#\n"..quest_inmap_table[i][5].."\n"
            end
        end
    end
    if quest_is_have ~= true then
        msg = msg .. "��ǰ��ͼ�������������Ѿ���ɣ�\n\n"
    end

    msg = msg.."\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>\n"
    return msg

end

function accept(npc, player, quest_id)
	local quest_id = tonumber(quest_id)
	local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_id) +1
	local mozhou_request = quest_table[tostring(quest_id)][huanshu + 4]
	if lualib:AcceptQuest(player, quest_id) == true then
        return "��ȡ����ɹ���\n\n#IMAGE1902700016#<@accomplish_mozhou#"..quest_id.." *01*ֱ��ʹ��ħ�����>\n\n�軨��"..mozhou_request.."��ѭ��ħ����ɴ�����\n #OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
    else
        return "��ȡ����ʧ�ܣ�����鿴�����Ƿ��Ѿ�����20��������������\n\n\n\n #OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
    end
end


--�������������
function accomplish_task(npc,player)	--������ҵ�ǰ���е������Լ����״̬�����������ύʱֻ��ʾħ���ύ���������ύʱֻ��ʾ�����ύ
	local msg = "\n"
	msg = msg.."#COLORCOLOR_SKYBLUE#����������������������������������������������������������#COLOREND#\n"
    local jianyan = 0
    for i = 1, #quest_id_table do
        if lualib:HasQuest(player, quest_id_table[i]) == true then
            jianyan = i
            break
        end
    end
    if jianyan == 0 or jianyan == nil then
        msg = msg .. "��û�н�ȡ��ħ�����޷��ύ������\n\n\n"
    else
        local quest_id = quest_id_table[jianyan]
        local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_id) +1
        local mozhou_request = quest_table[tostring(quest_id)][huanshu + 4]
        if lualib:CanAccomplishQuest(player, quest_id) == true then
            msg = msg.."���Ѿ��������"..quest_table[tostring(quest_id)][2].."��\n\n#OFFSET<X:0,Y:0>##IMAGE1902700016#<@accomplish#"..quest_id.." *01*�����ύ����>#OFFSET<X:-2,Y:0>#\n"
        else
            msg = msg.."#COLORCOLOR_BROWN#�㻹û������Ѿ���ȡ������:"..quest_table[tostring(quest_id)][2].."��\n#COLORCOLOREND##COLORCOLOR_RED#����Ի���"..mozhou_request.."��ѭ��ħ������ɴ�����#COLORCOLOREND#\n#OFFSET<X:0,Y:0>##IMAGE1902700016#<@accomplish_mozhou#"..quest_id.." *02*ʹ��ѭ��ħ���ύ����>#OFFSET<X:7,Y:0>#\n"
        end
    end

	msg = msg.."#COLORCOLOR_SKYBLUE#����������������������������������������������������������#COLOREND#\n "
	msg = msg.."#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>\n"
	return msg	
	
end

function accomplish(npc, player, quest_id)
    local per_gold = quest_table[quest_id][15]
    local msg = "�ύ��ħ����ɻ��ѽ�ҽ��ж౶������ȡ\n"
    msg = msg .. "��ǰ����ɻ�þ���Ϊ"..quest_table[quest_id][3]
    msg = msg .. "    ÿ����"..per_gold.."��ҿ��Զ���ȡһ���ľ��飬������ȡ�ı���\n\n"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_Ex#1#"..per_gold.."#"..quest_id.." *01*��ͨ��ȡ>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_Ex#2#"..per_gold.."#"..quest_id.." *01*˫����ȡ>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_Ex#3#"..per_gold.."#"..quest_id.." *01*������ȡ>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_Ex#4#"..per_gold.."#"..quest_id.." *01*�ı���ȡ>\n\n"
    msg = msg .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
    return msg
end

function accomplish_mozhou(npc, player, quest_id)
    local per_gold = quest_table[quest_id][15]
    local msg = "\n\n    �ύ������ɻ��ѽ����ȡ���ྭ��\n"
    msg = msg .. "    ��ǰ����ɻ�þ���Ϊ"..quest_table[quest_id][3].."\n"
    msg = msg .. "    ÿ����"..per_gold.."��ҿ��Զ���ȡһ���ľ��飬������ȡ�ı���\n\n"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_mozhou_Ex#1#"..per_gold.."#"..quest_id.." *01*��ͨ��ȡ>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_mozhou_Ex#2#"..per_gold.."#"..quest_id.." *01*˫����ȡ>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_mozhou_Ex#3#"..per_gold.."#"..quest_id.." *01*������ȡ>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_mozhou_Ex#4#"..per_gold.."#"..quest_id.." *01*�ı���ȡ>\n\n"
    msg = msg .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
    return msg

end

function accomplish_Ex(npc, player, beil, per_gold, quest_id)
    local gold_cost = (tonumber(beil) - 1) * tonumber(per_gold)
    local lv = lualib:Level(player)
    local gold_count = quest_table[quest_id][4] * 50 * lv
    local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..tonumber(quest_id)) + 1
    
    if lualib:Player_IsGoldEnough(player, gold_cost, false) == false then
        return "��Ҳ��㣡\n\n\n\n\n\n\n\n\n<@likai *01*�ر�>"
    end
    if lualib:BagFree(player, true, false, false) < 1 then
        return "�����ռ䲻�㣬������Ҫ1��λ�ã�\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
    end
    local reward = {
        {"ѭ��ħ��", 1, true}, 
        {"����", 1, false}, 
        }
    local p = 10
    local re_p = lualib:GenRandom(1, 100)
    local reward_item, reward_count, reward_bind = nil, nil, nil
    if re_p <= p then
        local item_index = lualib:GenRandom(1, 2)
        reward_item = reward[item_index][1]
        reward_count = reward[item_index][2]
        reward_bind = reward[item_index][3]
    end
    
    if lualib:DropQuest(player, tonumber(quest_id)) == true then
        if lualib:Player_SubGold(player, gold_cost, false, "��ħ���񷭱���ȡ", player) == false then
            return "��ҿ۳�ʧ�ܣ�\n\n\n\n\n\n\n\n\n<@likai *01*�ر�>"
        end
        lualib:Player_AddExp(player, tonumber(beil) * quest_table[quest_id][3], "�������", player)
		lualib:Player_AddGold(player, gold_count, true, "�������", player)
		lualib:SetDayInt(player, "xiangmo_quest_var_"..quest_id, lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_id) + 1)
        if reward_item ~= nil and reward_count ~= nil and reward_bind ~= nil then
            lualib:AddItem(player, reward_item, reward_count, reward_bind, "��ɽ�ħ������漴������", player)
            local msg1 = "\n\n�����������"..quest_table[quest_id][2].."����"..huanshu.."������\n"
            if beil ~= "1" then
                    msg1 = msg1 .. "������"..gold_cost.."�����ȡ��"..beil.."������\n"
            end
            msg1 = msg1 .. "�����"..tonumber(beil) * quest_table[quest_id][3].."���飬"..gold_count.."�󶨽�ҡ�\n"
            msg1 = msg1 .. "��������������Ʒ"..reward_item.."*"..reward_count.."��\n \n#IMAGE1902700016#<@accept_task *01*������ȡ��ħ����>\n \n"
            return msg1
        else
            local msg2 = "\n\n�����������"..quest_table[quest_id][2].."����"..huanshu.."������\n"
            if beil ~= "1" then
                    msg2 = msg2 .. "������"..gold_cost.."�����ȡ��"..beil.."������\n"
            end
            msg2 = msg2 .. "�����"..tonumber(beil) * quest_table[quest_id][3].."���飬"..gold_count.."�󶨽�ҡ�\n \n#IMAGE1902700016#<@accept_task *01*������ȡ��ħ����>\n \n"
            msg2 = msg2 .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
            return msg2
        end
    else
        return "\n\nɾ������ʧ�ܣ���鿴�����Ƿ��ڣ�\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
    end
end

function accomplish_mozhou_Ex(npc, player, beil, per_gold, quest_id)
    local gold_cost = (tonumber(beil) - 1) * tonumber(per_gold)
    local lv = lualib:Level(player)
    local gold_count = quest_table[quest_id][4] * 50 * lv
    local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..tonumber(quest_id)) + 1
    
    if lualib:Player_IsGoldEnough(player, gold_cost, false) == false then
        return "��Ҳ��㣡\n\n\n\n\n\n\n\n\n<@likai *01*�ر�>"
    end
    if lualib:BagFree(player, true, false, false) < 1 then
        return "�����ռ䲻�㣬������Ҫ1��λ�ã�\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
    end
    local reward = {
        {"ѭ��ħ��", 1, true}, 
        {"����", 1, false}, 
        }
    local p = 10
    local re_p = lualib:GenRandom(1, 100)
    local reward_item, reward_count, reward_bind = nil, nil, nil
    if re_p <= p then
        local item_index = lualib:GenRandom(1, 2)
        reward_item = reward[item_index][1]
        reward_count = reward[item_index][2]
        reward_bind = reward[item_index][3]
    end
    
    local item_count = lualib:ItemCountByKey(player, "ѭ��ħ��", true, false, false, 2)
    local item_request = quest_table[quest_id][huanshu + 4]
    if item_count < item_request then
        return "\n\n���ѭ��ħ���������㣡��Ҫ"..item_request.."��ѭ��ħ�䣡����\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
    else
        if lualib:DropQuest(player, tonumber(quest_id)) == true then
            lualib:DelItem(player, "ѭ��ħ��", item_request, 2, "�ύ��ħ����", player)
            if lualib:Player_SubGold(player, gold_cost, false, "��ħ���񷭱���ȡ", player) == false then
                return "��ҿ۳�ʧ�ܣ�\n\n\n\n\n\n\n\n\n<@likai *01*�ر�>"
            end
            lualib:Player_AddExp(player, tonumber(beil) * quest_table[quest_id][3], "�������", player)
			lualib:Player_AddGold(player, gold_count, true, "�������", player)
			lualib:SetDayInt(player, "xiangmo_quest_var_"..quest_id, lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_id) + 1)
            if reward_item ~= nil and reward_count ~= nil and reward_bind ~= nil then
                lualib:AddItem(player, reward_item, reward_count, reward_bind, "��ɽ�ħ������漴������", player)
                local msg1 = "\n\n��ʹ��ѭ��ħ�����������"..quest_table[quest_id][2].."����"..huanshu.."������\n"
                if beil ~= "1" then
                    msg1 = msg1 .. "������"..gold_cost.."�����ȡ��"..beil.."������\n"
                end
                msg1 = msg1 .. "�����"..tonumber(beil) * quest_table[quest_id][3].."���飬"..gold_count.."�󶨽�ҡ�\n"
                msg1 = msg1 .. "��������������Ʒ"..reward_item.."*"..reward_count.."��\n \n#IMAGE1902700016#<@accept_task *01*������ȡ��ħ����>\n \n"
                msg1 = msg1 .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
                return msg1
            else
                local msg2 = "\n\n��ʹ��ѭ��ħ�����������"..quest_table[quest_id][2].."����"..huanshu.."������\n"
                if beil ~= "1" then
                    msg2 = msg2 .. "������"..gold_cost.."�����ȡ��"..beil.."������\n"
                end
                msg2 = msg2 .. "�����"..tonumber(beil) * quest_table[quest_id][3].."���飬"..gold_count.."�󶨽�ҡ�\n \n#IMAGE1902700016#<@accept_task *01*������ȡ��ħ����>\n \n"
                msg2 = msg2 .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
                return msg2
            end
        else
            return "\n\nɾ������ʧ�ܣ���鿴�����Ƿ��ڣ�\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*����>"
        end
    end
end