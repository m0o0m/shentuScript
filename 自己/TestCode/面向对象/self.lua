local a = {}
a.name = 'zhu'
function a:f()  --使用冒号定义,就可以不用在参数列表中写self
	self.age = 1
	print(self.name)
	print(self.age)
end

a:f()
--[[
function a:f2()
	print(this.name)  --lua里面用self,不能用this
end

a:f2()
--]]