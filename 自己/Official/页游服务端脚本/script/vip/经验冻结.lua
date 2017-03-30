 local exp_time = {
					{"1.5倍经验", 1, {"1.5倍经验", "1.5倍经验24小时"}, "1.5_exp", 99},
					{"双倍经验", 2, {"双倍经验", "双倍经验24小时"}, "2_exp", 198},
					{"三倍经验", 3, {"三倍经验", "三倍经验24小时"}, "3_exp", 396},
				}

function main(player, vipLevel)
	local msg = [["尊敬的VIP玩家，请选择你所需要的操作！"
	#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#
	
	#IMAGE<ID:1902700017>#<@take_exp#%s *01*提取1.5倍经验>            #IMAGE<ID:1902700017>#<@take_exp#%s *01*提取双倍经验>            #IMAGE<ID:1902700017>#<@take_exp#%s *01*提取三倍经验>
	
	#IMAGE<ID:1902700017>#<@save_exp#%s *01*存储1.5倍经验>            #IMAGE<ID:1902700017>#<@save_exp#%s *01*存储双倍经验>            #IMAGE<ID:1902700017>#<@save_exp#%s *01*存储三倍经验>
	#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#
	
	#IMAGE<ID:1902700017>#<@goumai *01*购买经验倍数时间>            
	                                                                    #IMAGE<ID:1902700017>#<@leave *01*稍后再说>
	]]
	msg = string.format(msg, 1, 2, 3, 1, 2, 3)
	lualib:NPCTalk(player, msg)
	return ""
end



function leave(palyer)
	return ""
end

function goumai(player)
	local msg = "请选择购买的倍数！\n \n"
	msg = msg.."#IMAGE<ID:1902700017>#<@take_exp#1#1 *01*购买1.5倍经验>            #IMAGE<ID:1902700017>#<@take_exp#2#1 *01*购买双倍经验>            #IMAGE<ID:1902700017>#<@take_exp#3#1 *01*购买3倍经验>\n \n"
	msg = msg.."#IMAGE<ID:1902700017>#<@leave *01*稍后再说>\n"
	return msg
end



function save_exp(player, types)
	local types = tonumber(types)
	local times = 0
	for i = 1, #exp_time[types][3] do
		if lualib:HasBuff(player, exp_time[types][3][i]) == true then
			local b_time = lualib:GetBuffTime(player, exp_time[types][3][i])
			if b_time >= 90 then  
				times = times + b_time - 10
				lualib:DelBuff(player, exp_time[types][3][i])
				break
			else
				return "你身上的"..exp_time[types][1].."不足90秒，不能存储！"
			end
		end
	end
	
	if times == 0 then 
		return "你的身上没有"..exp_time[types][1].."状态，无需存储!"
	end
	
	local save_time = lualib:GetInt(player, exp_time[types][4]) + times
	lualib:SetInt(player, exp_time[types][4], save_time)
	
	local strTime = timeCom(player, save_time)
	return "存储"..exp_time[types][1].."成功，你当前存储的"..exp_time[types][1].."为"..strTime.."，需要的可以随时领取！"
end
	
function take_exp(player, types, subType)
	local msg = ""
	local types = tonumber(types)
	local subType = tonumber(subType)
	local a = lualib:GetInt(player, exp_time[types][4])
	if a < 60 or subType == 1 then 
		msg = [[请选择所要购买的经验倍率！
		
		<@buy#%s#%s *01* 购买1小时%s>          <@buy#%s#%s *01* 购买2小时%s>          <@buy#%s#%s *01* 购买5小时%s>
		
		<@leave *01* 稍后再说>
		]]
		msg = string.format(msg, types, 1, exp_time[types][1], types, 2, exp_time[types][1], types, 5, exp_time[types][1])
	else
		msg = "您当前存储的"..exp_time[types][1].."为"..timeCom(player, a)
		msg = msg.."\n \n<@tiqu#"..types.." *01*我要提取>\n"
		msg = msg.."<@leave *01*稍后再说>"
	end
	return msg
end


function tiqu(player, types)
	lualib:SysMsg_SendInputDlg(player, 10, "请输入提取的时间(分钟)", 45, 14, "EnterHot", types)
	return ""
end


function EnterHot(id, player, time_gen, types)
	local types = tonumber(types) 
	local time_gen = tonumber(time_gen)
	if time_gen == nil or time_gen < 1 or time_gen%1 ~= 0 then
		msg = "请输入大于等于1的整数时间！\n \n"
		msg = msg.."<@main *01*返回>"
		lualib:NPCTalk(player, msg)
		return
	end
	
	local gen2 = time_gen * 60
	local ExpTime = lualib:GetInt(player, exp_time[types][4])
	local msg = ""
	local c = 0
	
	if gen2 > ExpTime then
		msg = "你的存储时间不足"..time_gen.."分钟，无法提取\n \n"
		msg = msg.."<@main *01*返回>"
		lualib:NPCTalk(player, msg)
		return 
	else
		for i = 1, #exp_time do
			for j = 1, #exp_time[i][3] do
				if lualib:HasBuff(player, exp_time[i][3][j]) == true then
					if exp_time[types][2] < exp_time[i][2] then
						msg = "您的身上有更高倍数的经验状态，无法提取！\n \n"
						msg = msg.."<@main *01*返回>"
						lualib:NPCTalk(player, msg)
						return
					elseif exp_time[types][2] > exp_time[i][2] then
						msg = "您的身上有其他倍数的经验状态，提取后将会替换，您确定提取吗！\n \n"
						msg = msg.."<@tihuan#"..types.."#"..gen2.."#"..ExpTime.." *01*确定提取>"
						lualib:NPCTalk(player, msg)
						return
					end
				end
			end
		end
	
		for i = 1, #exp_time[types][3] do
			local b_time = lualib:GetBuffTime(player, exp_time[types][3][i])
			c = c + b_time
			lualib:DelBuff(player, exp_time[types][3][i])
		end
		
		local d = c + gen2
		ExpTime = ExpTime - gen2 - 10
		lualib:SetInt(player, exp_time[types][4], ExpTime)
		lualib:AddBuff(player, exp_time[types][3][1], d)
		msg = "提取"..exp_time[types][1].."成功！"
		lualib:NPCTalk(player, msg)
	end
	return
end

function tihuan(player, types, gen2, ExpTime)
	local types = tonumber(types)
	local gen2 = tonumber(gen2)
	local ExpTime = tonumber(ExpTime)
	local c = 0
	for i = 1, #exp_time[types][3] do
		local b_time = lualib:GetBuffTime(player, exp_time[types][3][i])
		local c = c + b_time
	end
	
	for i = 1, #exp_time do
		for j = 1, #exp_time[i][3] do
			lualib:DelBuff(player, exp_time[i][3][j])
		end
	end
	
	local d = c + gen2
	ExpTime = ExpTime - gen2 - 10
	lualib:SetInt(player, exp_time[types][4], ExpTime)
	lualib:AddBuff(player, exp_time[types][3][1], d)
	local msg = "提取"..exp_time[types][1].."成功！"
	return msg
end



function timeCom(player, save_time)
	local hour   = (save_time - (save_time % 3600)) / 3600
	local minute = (save_time - hour * 3600 - (save_time % 60)) / 60
	local strTime = hour .. "小时" .. minute .. "分钟"
	return strTime
end

function buy(player, types, buytime)
	local types = tonumber(types)
	local buytime = tonumber(buytime)
	local yb = exp_time[types][5] * buytime
	
	local msg = "购买了"..buytime.."小时"..exp_time[types][1].."，需要"..yb.."元宝，你确定购买吗？\n \n"
	msg = msg.."<@buy2#"..types.."#"..buytime.." *01*确定购买>\n"
	msg = msg.."<@leave# *01*稍后在说>"
	return msg
end

function buy2(player, types, buytime)
	local types = tonumber(types)
	local buytime = tonumber(buytime)
	local yb = exp_time[types][5] * buytime
	
	if not lualib:Player_IsIngotEnough(player, yb, false) then return "你的元宝不足"..yb.."，无法购买！" end
	if lualib:Player_SubIngot(player, yb, false, "购买存储经验时间", "购买存储经验时间") == false then
		return "元宝扣除失败"
	end
	
	local times = lualib:GetInt(player, exp_time[types][4]) + 3600 * buytime
	local strTime = timeCom(player, times)
	lualib:SetInt(player, exp_time[types][4], times)
	local msg = "您购买了"..buytime.."小时"..exp_time[types][1].."，请返回领取存储时间！\n \n"
	msg = msg.."<@main *01*返回>"
	return msg
end
