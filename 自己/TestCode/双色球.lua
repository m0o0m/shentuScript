local tb_redall = {}  --存1到33的红球
local tb_red = {}     --存中奖红球
local blue = 0        --存中奖篮球
local zhongjiang = "" --存最后中奖结果

--定义红球池
for i=1,33 do 
	tb_redall[i]=i
end

--[[for k,v in pairs(red_all) do 
	print(v)
end--]]

--随机产生不重复的6个红球，存入tb_red中	
local j = 0
for i=1,6 do 
	j = math.random(1,#tb_redall)
	table.insert(tb_red,tb_redall[j])
	table.remove(tb_redall,j)
end

--[[for k,v in pairs(tb_red) do
	print(v)
end--]]

--给产生的红球排序
table.sort(tb_red)

--[[for k,v in pairs(tb_red) do
	print(v)
end--]]

--随机产生蓝球
blue = math.random(1,16)

--格式化红球输出，小于10的前面要加0
local str_red = ""
for k,v in pairs(tb_red) do 
	if v < 10 then
		str_red =str_red .. 0 .. v .. " "
	 else 
	    str_red = str_red .. v .. " "
	end
end
--[[print(str)--]]

--格式化篮球输出，小于10的前面要加0
local str_blue = ""
if blue < 10 then
	str_blue = str_blue .. 0 .. blue 
else 
	str_blue =str_blue .. blue 
end
--[[print(str2)--]]

--输出最后中奖结果
zhongjiang = str_red .. "|" .. " " .. str_blue
print("本期的中奖号码为：" .. zhongjiang)