--��ѧ����
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
--lualib:ShowFormWithContent(player,"�ű���", str)

print("0"+1)

local a = "9"+1
print(a)
print(type(a))
print(10 .. 20)




local s = ('����%d%d'):format(1,2)
print(s)

print("��'��'��")
print([[��ð�\n]])
  


