local Hair_t = {
					--显示名， 男性发型编号， 女性发型编号
					{"返璞归真", {1, 1}},
					{"个性发型1", {2, 2}},
				}



function main(player, item)
	local msg = "请选择你要改变的发型！\n\n"
	for i = 1, #Hair_t do
		msg = msg.."<@Hair_ex#"..i.." *01*"..Hair_t[i][1]..">"
		msg = msg.."    "
	end
	
	msg = msg.."\n<@leave *01*离开>"
	lualib:NPCTalk(player, msg)
	return true
end

function Hair_ex(player, index)
	local index = tonumber(index)
	local Hair = lualib:Hair(player)
	
	local gender = lualib:Gender(player)
	
	if Hair == Hair_t[index][2][gender] then
		return "你当前已经是此发型，无需换发型！"
	end
	
	
	if not lualib:DelItem(player, "个性发型", 1, 2, "", "") then
		return "你没有个性发型道具！"
	end
	lualib:SetHair(player, Hair_t[index][2][gender])
	return "你换上了新发型！"
end


function leave()
	return ""
end