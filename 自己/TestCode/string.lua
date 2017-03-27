--教学代码
--print(("[%d] = %d,\n"):format(k,v))

local str = [[
						local handle = GetWindow(nil,"ShenLuWnd")
						if handle ~= 0 then
							for i = 1, 4 do 
								local btnhandle = GetWindow(ShenLuWnd.WndHandle,"button"..i)
								if btnhandle ~= 0 then 
									local Is_true = ButtonGetIsActivePageBtn(btnhandle)
									if Is_true then 	
										if ]] .. index .. [[== i then
											ShenLuWnd.chipupdata(]].. chips ..[[)
										end
									end
								end
							end
						end	
						]]
--lualib:ShowFormWithContent(player,"脚本表单", str)

print("0"+1)

local a = "9"+1
print(a)
print(type(a))
print(10 .. 20)




local s = ('测试%d%d'):format(1,2)
print(s)

print("你'好'啊")
print([[你好啊\n]])
  


