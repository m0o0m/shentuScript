
--可以使用一对匹配的双方括号来界定一个字符串，Lua不会解释其中的转义序列。
page = 
 [[
 <html>
 <body>
		<a href = "http://www.lua.org">Lua</a>
 </body>
 </html>
 ]]
 print(page)