--[[local ta_a = {  
[3] = "test2",  
[6] = "test3",  
[4] = "test1"  
} --]]
--[[
for k,v in pairs(ta_a) do 
	print(k,v)
end--]]
--[[
for k,v in ipairs(ta_a) do 
	print(k)
end--]]



gQuestMap =
{
   {1111, "", "QuestAccomplish1111","", "*01*�������: ������"},
   ["�ڶ�"] = {1112, "QuestAccept1112", "QuestAccomplish1112","01*����: ����ʵս", "*01*�������: ����ʵս"},
   {1113, "QuestAccept1113", "","01*����: �����͸߼��ֿ�����", ""},
}

for k,v in ipairs(gQuestMap) do 
	print(k,v)
end

for k,v in pairs(gQuestMap) do 
	print(k,v)
end