local a = {}
a.name = 'zhu'
function a:f()  --ʹ��ð�Ŷ���,�Ϳ��Բ����ڲ����б���дself
	self.age = 1
	print(self.name)
	print(self.age)
end

a:f()
--[[
function a:f2()
	print(this.name)  --lua������self,������this
end

a:f2()
--]]