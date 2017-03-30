function main(npc,player)
	local msg = ""
	msg = msg .. "     世界曾经是我们的，现在是儿子们的，最终，将会是那帮孙子们的！\n \n\n "
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01* 挑战！>\n"
	return msg
end

function likai(npc,player)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	local a = 2
	
	if  lualib:HasQuest(player,5068) == false then
		lualib:SysMsg_SendTriggerMsg(player, "接取相关任务后方可挑战！")	--接取5068任务方可挑战	
		return ""
	end
	
	if  lualib:Map_GetMonsterCount(map, "隐居的战士", true, true) > a then
		lualib:SysMsg_SendTriggerMsg(player, "怪物已存在！")	--刷出2个怪物后，第3个仍会刷出，第4个则不能刷出了
	else	
		local monster = lualib:Map_GenSingleMonster(map, X, Y, 5, 5, "隐居的战士", false)
		lualib:AddBuff(monster, "武斗场赤峰战甲男", 0)
	end
	return ""
end


