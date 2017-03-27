
--[[
tb = {1,2,3}
tb[1] = tb
print(tb[1][1][1][1][1][1]) --tb[1][1][1][1][1][1]，不管多少个【1】，值都是table{1,2,3}

print( _G["tb"][1][1][1][1][2])
local a = tb[1][1][1][1][1][1]
--]]



--要是像下面这样
local tb1 = {1,2,3}
local tb2 = {}
tb2[1] = tb1
print(tb2[1][1])    -- 1 这样的索引并不会出现问题

--或者像下面这样
local tb3 = {1,2,3}
tb3["a"] = tb3
print(tb3["a"][1])   -- 1 这样的索引也并不会出现问题
print(tb3["a"][2])   -- 2
print(tb3["a"][3])   -- 3

--然后要是像下面这样，和表的内容无关，只要表是一个数组，是数组你就得用【1】去索引，
local tb4 = {4,5,6}
tb4[1] = tb4		-- tb4[1] 原本的值是4，经过这样赋值改变之后，【数组【1】的位置已经被覆盖】，4的位置变成了指向一个表的引用，而指向的并不是{4,5,6}，还是{tb4,5,6}
print(tb4[1])      -- table: 0602B780  输出发现tb4[1]已经不是4了，还是一个表，这相当于【不经意间改变了自己里面的一个元素，表结构被改变了】，给了自己一刀
print(tb4[1][1])   -- table: 0602B780  和上面一样，指向相同的一个表，指向tb4,对[1]进行【1】索引发现还是一个表，再【1】发现还是一个表无尽递归，一步步的进行索引，发现永远索引到的都是自己，table: 0602B780
print(tb4[1][2])   -- 2
print(tb4[1][3])   -- 3

--将一个表放入自己之中，要是覆盖了自己原有的k,改变了表结构，那这个k永远是一个table了


--运用函数递归进行表复制
local tba = {
			--{{1,2,3},1},
			--{4,5,6},
			{7,8,9}
}

function copytab(tb)
	if type(tb) ~= "table" then   --对传进来的参数进行检查
        return tb
    end
	
	local tab = {}
	for k , v in pairs(tb) do 
		if type(v) ~= "table" then 
			tab[k] = v
		else
			tab[k] = copytab(v)  --像个钻头一样一直钻进去
		end
	end
	return tab
end