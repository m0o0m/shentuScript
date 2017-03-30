local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/level_gold_exp")

Coe = 0.4
lvl = 8
yaobaoKey   = "����ҩ��"
yaobaoKey_2   = "С��������ҩ"
yaobaoKey_3   = "����������ҩ"
zssKey   = "ת��ʯ"
zhsKey   = "�ٻ�ʯ"
exchangeTbl =
	{
		{["yl"] = 1,  ["yb"] = 1 },
		{["yl"] = 2,  ["yb"] = 2 },
		{["yl"] = 5,  ["yb"] = 5 },
		{["yl"] = 20, ["yb"] = 20},
		{["yl"] = 50, ["yb"] = 50}
	}
	
exchangeTbl_2 =
	{
		{["yl"] = 2,  ["yb"] = 1 },
		{["yl"] = 4,  ["yb"] = 2 },
		{["yl"] = 20,  ["yb"] = 5 },
		{["yl"] = 40, ["yb"] = 20},
		{["yl"] = 100, ["yb"] = 50}
	}
	
exchangeTbl_3 =
	{
		{["yl"] = 4,  ["yb"] = 1 },
		{["yl"] = 8,  ["yb"] = 2 },
		{["yl"] = 20,  ["yb"] = 5 },
		{["yl"] = 80, ["yb"] = 20},
		{["yl"] = 200, ["yb"] = 50}
	}
	
exchangeTbl_zss =
	{
		{["yl"] = 1,  ["zss"] = 1 },
		{["yl"] = 2,  ["zss"] = 2 },
		{["yl"] = 5,  ["zss"] = 5 },
		{["yl"] = 20, ["zss"] = 20},
		{["yl"] = 50, ["zss"] = 50}
	}

exchangeTbl_zhs =
	{
		{["yl"] = 1,  ["zhs"] = 50 },
		{["yl"] = 2,  ["zhs"] = 100 },
		{["yl"] = 5,  ["zhs"] = 250 },
		{["yl"] = 20, ["zhs"] = 1000},
		{["yl"] = 50, ["zhs"] = 2500}
	}

local talk_t = {"����ҩ����������������ҩ��", "����ҩ����������һ�����ҩ��Ŷ��", "��ҩ���ҩ����Ҫʱ��Ŷ������Ҫ��ǰ׼����"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 280000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = ""

	if lualib:Level(player) < lvl then
		msg = msg .. "���ĵȼ�δ�ﵽ" .. lvl .. "�������ܽ�����ҩ\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                      #OFFSET<X:0,Y:0>#<@Leave      *01*���뿪��>"
		return msg
	end

    msg = msg .. "����֮;������ãã����׷����������ı䡣\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n"
    msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@Query      *01*[��ѯ��һ�ҩ��]>\n"
    msg = msg .. "#OFFSET<X:0,Y:1>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@Ly         *01*[������ҩ]>\n"
	msg = msg .. "#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@GetReward  *01*[��ȡ����]>\n"
	msg = msg .. "#OFFSET<X:0,Y:1>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@Rule       *01*[��ҩ����]>\n \n"
	msg = msg .. "                                                  #OFFSET<X:0,Y:-1>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave      *01*���뿪��>"
    return msg
end

--��ҩ����
function Rule(npc, player)
	local msg = ""
	msg = msg .. "1.����100Ԫ��������ҩ2��Сʱ���ɻ�ô��������2��ҩ��\n"
	msg = msg .. "2.���һ�������Ԫ����������5000���������ö���5��ҩ��\n"
	msg = msg .. "3.���һ�������Ԫ����������10000���������ö���10��ҩ��\n"
	msg = msg .. "4.��ҿ�������ҩδ����ʱ��ȡ��������ֻ�ܻ��2Сʱ�����������������µ�ʱ������ۼ�\n"
	msg = msg .. "5.���һ���Ի�ȡ����24��ҩ��ɶ�����1��ҩ��\n \n \n"
	msg = msg .. "                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

	return msg
end

--��ҩ
function Ly(npc, player)
	local msg = ""

	msg = msg .. "����û�а�������ͣ�����ҩ�Ĳ�������ĳ����Լ�һ��СС��Ԫ����100Ԫ���ҿ���Ϊ������2��Сʱ������Ի�ô��������Լ�ҩ�飬ҩ������������ﻻȡ����ҩƷ!\n���һ�������Ԫ����������5000����������5��ҩ��\n���һ�������Ԫ����������10000����������10��ҩ��\n \n \n"
	msg = msg .. "#OFFSET<X:0,Y:-4>##IMAGE1902700032#<@LyEx#1      *01*[Ԫ����ҩ]>\n"
	msg = msg .. "#OFFSET<X:0,Y:-4>##IMAGE<ID:1902700036>#<@LyEx#2      *01*[�����ҩ]>\n"
	msg = msg .. "                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main      *01*�����ء�>"

	return msg
end

function LyEx(npc, player, types)
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")
	
	
	
	
	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "�����ҩʱ���쳣��������  \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end

	local msg = ""
	if types == "1" then
		lualib:SysMsg_SendInputDlg(player, 1, "������Ԫ��������", 30, 12, "EnterSilver", npc.."#"..types)
	elseif types == "2" then
		lualib:SysMsg_SendInputDlg(player, 1, "��������������", 30, 12, "EnterSilver", npc.."#"..types)
	end
	return ""
end

function EnterSilver(id, player, silver, param)
	
	local t = string.split(param, "#")
	local npc, types  = t[1], t[2]
	
	local silver = tonumber(silver)

	local msg = ""
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local curYL     = lualib:Player_GetCustomVarInt(player, "YL")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")
	if curTime <= EndTime then
		msg = msg .. "����ǰ��ҩ���ڽ��У����ܿ�ʼ�µ���ҩ\n \n \n \n \n \n \n"
		msg = msg .. " #IMAGE1902700034##OFFSET<X:0,Y:-2>#<@StopLy     *01*[��ֹ��ǰ��ҩ]>\n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if TimeConversion(LyTime + (EndTime - BeginTime)).hour >= 2 then
		lualib:NPCTalkEx(npc, player, "�㻹��"..StrTimeConversion(LyTime + (EndTime - BeginTime)) .."����ҩʱ��û����ȡ��������ȡ�������ҩ��")
		return true
	end
	
	
	if types == "1" then
		if (silver == nil) then
			msg = msg .. "�����봿����\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if (silver == 0 ) then
			msg = msg .. "����Ϊ0\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if (silver <= 0 ) then
			msg = msg .. "��������������\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if ((silver % 100) ~= 0) then
			msg = msg .. "����Ϊ100��������\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if silver > 100000 then
			msg = msg .. "���ܴ���100000\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if not lualib:Player_IsIngotEnough(player, silver, false) then
			msg = msg .. "Ԫ������\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if lualib:Player_SubIngot(player, silver, false, "��ҩʦ:��ҩ��Ԫ��", "��ҩ��Ԫ��") == false then
			lualib:NPCTalkEx(npc, player, "�۳�Ԫ��ʧ��")
			return true
		end
		
		lualib:Player_SetCustomVarInt(player, "BeginTime", curTime)
		lualib:Player_SetCustomVarInt(player, "EndTime", curTime + (((silver / 100)*2) * 3600))
		BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
		EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")

		msg = msg .. "����ʼ����ҩ���ܹ���Ҫ����" .. StrTimeConversion(EndTime - BeginTime) .. "�м��κ�ʱ�����������������ȡ����,"

		if silver >= 10000 then
			lualib:Player_SetCustomVarInt(player, "YL", curYL + 10)
			msg = msg .. "������ĳ��ĸж����ң����ⷢ�͸���10��ҩ��"
		elseif silver >= 5000 then
			lualib:Player_SetCustomVarInt(player, "YL", curYL + 5)
			msg = msg .. "������ĳ��ĸж����ң����ⷢ�͸���5��ҩ��"
		end


		msg = msg .. "\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		lualib:NPCTalkEx(npc, player, msg)
		
	elseif types == "2" then
	
		if (silver == nil) then
			msg = msg .. "�����봿����\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if (silver == 0 ) then
			msg = msg .. "����Ϊ0\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if (silver <= 0 ) then
			msg = msg .. "��������������\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if ((silver % 200000) ~= 0) then
			msg = msg .. "����Ϊ200000��������\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if silver > 200000000 then
			msg = msg .. "���ܴ���200000000\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if not lualib:Player_IsGoldEnough(player, silver, false) then
			msg = msg .. "��Ҳ���\n \n \n \n \n \n \n \n"
			msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Ly *01*�����ء�>"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end

		if lualib:Player_SubGold(player, silver, false, "��ҩʦ:��ҩ�����", "��ҩ�����") == false then
			lualib:NPCTalkEx(npc, player, "�۳����ʧ��")
			return
		end
		
		lualib:Player_SetCustomVarInt(player, "BeginTime", curTime)
		lualib:Player_SetCustomVarInt(player, "EndTime", curTime + (((silver / 200000)*2) * 3600))
		BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
		EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")

		msg = msg .. "����ʼ����ҩ���ܹ���Ҫ����" .. StrTimeConversion(EndTime - BeginTime) .. "�м��κ�ʱ�����������������ȡ����,"

		if silver >= 20000000 then
			lualib:Player_SetCustomVarInt(player, "YL", curYL + 10)
			msg = msg .. "������ĳ��ĸж����ң����ⷢ�͸���10��ҩ��"
		elseif silver >= 10000000 then
			lualib:Player_SetCustomVarInt(player, "YL", curYL + 5)
			msg = msg .. "������ĳ��ĸж����ң����ⷢ�͸���5��ҩ��"
		end

		msg = msg .. "\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		lualib:NPCTalkEx(npc, player, msg)
	end
	return true
end

--��ȡ����
function GetReward(npc, player)
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")

	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "�����ҩʱ���쳣��������\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main      *01*�����ء�>"
	end
	
	if curTime < BeginTime then
		BeginTime = curTime
	end
	
	if EndTime - BeginTime > 2000*3600 then
		EndTime = BeginTime
	end
	
	local msg = ""
	if curTime <= EndTime then
		msg = msg .. "��ǰ��ҩ���ڽ���"
		msg = msg .. "��ҩ������" .. StrTimeConversion(curTime - BeginTime)
		msg = msg .. "����" .. StrTimeConversion(EndTime - curTime) .. "���Խ���"
		msg = msg .. "\n������ȡ" .. TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour .. "Сʱ����\n"
		msg = msg .. "������" .. TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour .. "ҩ��"
		msg = msg .. (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2] .. "����\n"
		if (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour >= 24) then
			msg = msg .. "����������ģ����⽱��1��ҩ��\n \n"
		else
			msg = msg .. "���꣬�����Ĳ��������������ҩ���ۻ���24������ʱ������ȡ������Զ��⽱����1��ҩ�飡\n \n"
		end
		msg = msg .. "#OFFSET<X:140,Y:-2>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@StopLy      *01*[��ֹ��ҩ]>\n\n"
	elseif curTime > EndTime then
		msg = msg .. "��ǰ��ҩ��ֹͣ"
		msg = msg .. "��ҩ������" .. StrTimeConversion(LyTime + (EndTime - BeginTime))
		msg = msg .. "\n������ȡ" .. TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour .. "Сʱ����\n"
		msg = msg .. "������" .. (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour) .. "ҩ��"
		msg = msg .. (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2] .. "����\n"
		if (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour >= 24) then
			msg = msg .. "����������ģ����⽱��1��ҩ��\n \n"
		else
			msg = msg .. "���ҩ��δ��24�����������ҩ�ﵽ24ʱ����ȡ����ɶ��⽱��1��ҩ��\n \n"
		end
	end

    msg = msg .. "#OFFSET<X:12,Y:-10>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@GetRewardEx#1 *01*[��ȡ����]>"
	msg = msg .. "#OFFSET<X:50,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@beishulingqu#2 *01*[˫����ȡ]>"
	msg = msg .. "#OFFSET<X:50,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@beishulingqu#3 *01*[������ȡ]>\n\n"
	msg = msg .. "#OFFSET<X:269,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01*��������ҳ��>\n"
	return msg
end

function beishulingqu(npc, player, types)
	local types = tonumber(types)
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")
	local msg = ""
	
	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "�����ҩʱ���쳣��������\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main      *01*�����ء�>"
	end
	
	if curTime < BeginTime then
		BeginTime = curTime
	end
	
	if EndTime - BeginTime > 2000*3600 then
		EndTime = BeginTime
	end
	
	
	if curTime <= EndTime then
		msg = msg.."������ȡ" .. TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour .. "Сʱ����\n"
		msg = msg..types.."����ȡ��Ҫ����".. TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour * 50 * (types - 1).."Ԫ����\n"
        msg = msg .."�ɻ��"..TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour*types.."ҩ��#COLORCOLOR_RED#("..types.."��)#COLOREND#\n"
        msg = msg .."�ɻ�þ���"..(TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2].."���飡\n"
		msg = msg.."\n\n#IMAGE1902700031##OFFSET<X:0,Y:-1>#<@GetRewardEx#"..types.." *01*ȷ����ȡ>\n\n"
        msg = msg .. "#OFFSET<X:250,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	else
		msg = msg .. "������ȡ" .. TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour .. "Сʱ����\n"
        msg = msg..types.."����ȡ��Ҫ����".. TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour * 50 * (types - 1).."Ԫ����\n"
        msg = msg .."�ɻ��"..TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour*types.."ҩ��#COLORCOLOR_RED#("..types.."��)#COLOREND#\n"
        msg = msg .."�ɻ�þ���"..(TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2].."���飡\n"
		msg = msg.."\n\n#IMAGE1902700031##OFFSET<X:0,Y:-1>#<@GetRewardEx#"..types.." *01*ȷ����ȡ>\n\n"
        msg = msg .. "#OFFSET<X:250,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	end
	
	return msg
	
end


function StopLy(npc, player)
	local msg = ""
	msg = msg .. "�����ǰ��ҩ���ڽ��У���ֹ��ҩ����ֹ��ǰ���ڽ��е���ҩ�������˻�Ԫ�����Ƿ�ȷ����\n \n \n \n \n \n"
	msg = msg .. " #OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@OK       *01*[ȷ��]>\n"
    msg = msg .. "                                                 #OFFSET<X:0,Y:3>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*�����ء�>\n"

	return msg
end

function OK(npc, player)
	local curTime   = lualib:GetAllTime()
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")
	local msg = ""

	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "�����ҩʱ���쳣�������� \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end
	
	if curTime <= EndTime then
		lualib:Player_SetCustomVarInt(player, "LyTime", LyTime + (curTime - BeginTime))
	elseif curTime > EndTime then
		lualib:Player_SetCustomVarInt(player, "LyTime", LyTime + (EndTime - BeginTime))
	end

	lualib:Player_SetCustomVarInt(player, "BeginTime", curTime)
	lualib:Player_SetCustomVarInt(player, "EndTime", curTime)

	msg = msg .. "��ҩ����ֹ\n \n \n \n \n \n \n \n"
	msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg
end

function GetRewardEx(npc, player, types)
	local types = tonumber(types)
	local curTime   = lualib:GetAllTime()
	local YL        = lualib:Player_GetCustomVarInt(player, "YL")
	local LyTime    = lualib:Player_GetCustomVarInt(player, "LyTime")
	local BeginTime = lualib:Player_GetCustomVarInt(player, "BeginTime")
	local EndTime   = lualib:Player_GetCustomVarInt(player, "EndTime")

	if LyTime < 0 then
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		return "�����ҩʱ���쳣�������� \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end
	
	if curTime < BeginTime then
		BeginTime = curTime
	end
	
	if EndTime - BeginTime > 2000*3600 then
		EndTime = BeginTime
	end
		
	if curTime <= EndTime then
		if (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour == 0) and ((TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2] == 0) then
			return "��ǰû�н���������ȡ��\n \n".. "\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
		end
        if lualib:Player_SubIngot(player, (types - 1) * 50 * TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour, false, "��ҩ�౶��ȡ", player) == false then
            return "�۳�Ԫ��ʧ�ܣ���鿴�Ƿ��㹻��\n \n".. "\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
        end
		lualib:Player_SetCustomVarInt(player, "BeginTime", BeginTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200)))
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		lualib:Player_AddExp(player, TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour*Coe*level_gold_exp_t[lualib:Level(player)][2], "��ҩ��������", "��ҩ��������")
		lualib:Player_SetCustomVarInt(player, "YL", YL + types * (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour))
		if (TimeConversion(LyTime + ((curTime - BeginTime) - ((curTime - BeginTime) % 7200))).hour >= 24) then
			lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") + 1)
		end
	elseif curTime > EndTime then
		if (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour == 0) and ((TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour)*Coe*level_gold_exp_t[lualib:Level(player)][2] == 0) then
			return "��ǰû�н���������ȡ\n \n" .. "\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
        if lualib:Player_SubIngot(player, (types - 1) * 50 * TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour, false, "��ҩ�౶��ȡ", player) == false then
            return "�۳�Ԫ��ʧ�ܣ���鿴�Ƿ��㹻��\n \n".. "\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
        end
		lualib:Player_SetCustomVarInt(player, "BeginTime", curTime)
		lualib:Player_SetCustomVarInt(player, "EndTime",   curTime)
		lualib:Player_SetCustomVarInt(player, "LyTime", 0)
		lualib:Player_AddExp(player, TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour*Coe*level_gold_exp_t[lualib:Level(player)][2], "��ҩ��������", "��ҩ��������")
		lualib:Player_SetCustomVarInt(player, "YL", YL + types * (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour))
		if (TimeConversion(LyTime + ((EndTime - BeginTime) - ((EndTime - BeginTime) % 7200))).hour >= 24) then
			lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") + 1)
		end
	end
	local msg = "�����Ѷһ�\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"

	return msg
end

--��ѯҩ��
function Query(npc, player)
	if lualib:Player_GetCustomVarInt(player, "YL") < 0 then
	lualib:Player_SetCustomVarInt(player, "YL", 0)
	end

	local msg = ""
	msg = msg .. "����ǰ����ȡ��ҩ��Ϊ��" .. lualib:Player_GetCustomVarInt(player, "YL") .. "\n \n \n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange   *01*[��Ҫ��ȡ����ҩ]>\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange_2   *01*[��Ҫ��ȡС��������ҩ]>\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange_3   *01*[��Ҫ��ȡ����������ҩ]>\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange_zss   *01*[��Ҫ��ȡת��ʯ]>\n"
	--msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:0>#<@Exchange_zhs   *01*[��Ҫ��ȡ�ٻ�ʯ]>\n"
	msg = msg .. "                                             #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*�����ء�>\n"

	return msg
end

function Exchange(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx#" .. k .. "   *01*" .. v.yl .. "  ��ҩ��      ��ȡ      " .. v.yb .. " ������ҩ��>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*��������ҳ��>\n"
	return msg
end

function ExchangeEx(npc, player, count)
	local msg = ""
	count = tonumber(count)

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl[count].yl then
		msg = msg .. "����ҩ�鲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < exchangeTbl[count].yb then
		msg = msg .. "���ı����ռ䲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl[count].yl)
	lualib:AddItem(player, yaobaoKey, exchangeTbl[count].yb, false, "ҩ��һ�", "ҩ��һ�")
	msg = msg .. "�Ѷһ�" .. exchangeTbl[count].yl .. "ҩ��\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"

	return msg
end


--С����
function Exchange_2(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl_2) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx2#" .. k .. "   *01*" .. v.yl .. "  ��ҩ��      ��ȡ      " .. v.yb .. " ��С��������ҩ��>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*��������ҳ��>\n"
	return msg
end

function ExchangeEx2(npc, player, count)
	local msg = ""
	count = tonumber(count)

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl_2[count].yl then
		msg = msg .. "����ҩ�鲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < exchangeTbl_2[count].yb then
		msg = msg .. "���ı����ռ䲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl_2[count].yl)
	lualib:AddItem(player, yaobaoKey_2, exchangeTbl_2[count].yb, false, "ҩ��һ�", "ҩ��һ�")
	msg = msg .. "�Ѷһ�" .. exchangeTbl_2[count].yl .. "ҩ��\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"

	return msg
end


--������
function Exchange_3(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl_3) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx3#" .. k .. "   *01*" .. v.yl .. "  ��ҩ��      ��ȡ      " .. v.yb .. " ������������ҩ��>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*��������ҳ��>\n"
	return msg
end


function ExchangeEx3(npc, player, count)
	local msg = ""
	count = tonumber(count)

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl_3[count].yl then
		msg = msg .. "����ҩ�鲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < exchangeTbl_3[count].yb then
		msg = msg .. "���ı����ռ䲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl_3[count].yl)
	lualib:AddItem(player, yaobaoKey_3, exchangeTbl_3[count].yb, false, "ҩ��һ�", "ҩ��һ�")
	msg = msg .. "�Ѷһ�" .. exchangeTbl_3[count].yl .. "ҩ��\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
	return msg
end



--ת��ʯ
function Exchange_zss(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl_zss) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx_zss#" .. k .. "   *01*" .. v.yl .. "  ��ҩ��      ��ȡ      " .. v.zss .. " ��ת��ʯ>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*��������ҳ��>\n"
	return msg
end

function ExchangeEx_zss(npc, player, count)
	local msg = ""
	count = tonumber(count)
    local item_count = exchangeTbl_zhs[count].zhs
    local max_stack = lualib:Item_GetStack("ת��ʯ")
    local bagfree = (item_count - item_count % max_stack) / max_stack + 1

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl_zss[count].yl then
		msg = msg .. "����ҩ�鲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < bagfree then
		msg = msg .. "���ı����ռ䲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl_zss[count].yl)
	lualib:AddItem(player, zssKey, exchangeTbl_zss[count].zss, false, "ҩ��һ�", "ҩ��һ�")
	msg = msg .. "�Ѷһ�" .. exchangeTbl_zss[count].yl .. "ҩ��\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"

	return msg
end

--�ٻ�ʯ
function Exchange_zhs(npc, player)
	local msg = ""
	for k, v in pairs(exchangeTbl_zhs) do
		msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700030#<@ExchangeEx_zhs#" .. k .. "   *01*" .. v.yl .. "  ��ҩ��      ��ȡ      " .. v.zhs .. " ���ٻ�ʯ>\n"
	end

	msg = msg .. " \n \n \n                                             #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main   *01*��������ҳ��>\n"
	return msg
end

function ExchangeEx_zhs(npc, player, count)
	local msg = ""
	count = tonumber(count)    
    local item_count = exchangeTbl_zhs[count].zhs
    local max_stack = lualib:Item_GetStack("�ٻ�ʯ")
    local bagfree = (item_count - item_count % max_stack) / max_stack + 1

	if lualib:Player_GetCustomVarInt(player, "YL") < exchangeTbl_zhs[count].yl then
		msg = msg .. "����ҩ�鲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	if lualib:BagFree(player, true, false, false) < bagfree then
		msg = msg .. "���ı����ռ䲻��\n \n \n \n \n \n \n \n"
		msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"
		return msg
	end

	lualib:Player_SetCustomVarInt(player, "YL", lualib:Player_GetCustomVarInt(player, "YL") - exchangeTbl_zhs[count].yl)
	lualib:AddItem(player, zhsKey, exchangeTbl_zhs[count].zhs, false, "ҩ��һ�", "ҩ��һ�")
	msg = msg .. "�Ѷһ�" .. exchangeTbl_zhs[count].yl .. "ҩ��\n \n \n \n \n \n \n \n"
	msg = msg .. "                                             #OFFSET<X:0,Y:6>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Query   *01*�����ء�>\n"

	return msg
end

--�뿪
function Leave(npc, player)
	return ""
end

function TimeConversion(time)
	local  hour    = (time - (time % 3600)) / 3600
	local  minute  = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local  second  = time - (hour * 3600) - (minute * 60)
	local  timeTbl = {["hour"] = hour, ["minute"] = minute, ["second"] = second}
	return timeTbl
end

function StrTimeConversion(time)
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
	local strTime = hour .. "Сʱ" .. minute .. "����" .. second .. "��"
	return strTime
end