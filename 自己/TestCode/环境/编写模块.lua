local m = {}
mod1 = m 
m.a = 1
m.b = 2
m.c = 3
function m.f()
	print("mod1")
end
print(mod1.a)