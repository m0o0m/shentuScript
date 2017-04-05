function  fun( player )
	print(""..player);
end

local tb = {
	["a"] = fun;
}
tb["a"]("你好");