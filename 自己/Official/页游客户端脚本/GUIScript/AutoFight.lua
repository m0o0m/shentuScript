--×Ô¶¯¹Ò»ú
AF = {}
function autofight(ret)
	msg(ret)
	if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) ~= 0 then
		AF.job = as3.tolua(LuaRet)
		msg("job = "..AF.job)
	end
	
	if CLGetPlayerSelfSkillArray() ~= 0 then
		AF.skilllist = getTable(as3.tolua(LuaRet))
		for i = 1,#AF.skilllist do
			skillInfo = getTable(as3.tolua(AF.skilllist[i]))
			skillid = skillInfo[1]
		end
	end	

	if(AF.job == 2) then
		CLAutoFightSetMageSkilllist(2100,2030,2120,2090)		
	end

	if(AF.job == 3) then
		CLAutoFightSetTaoSkilllist(3020,3114,3140,3110,3030)	
	end
end