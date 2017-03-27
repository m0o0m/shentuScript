local str = "abc%defg%hij"
local char = "c"

local d = string.gsub(str, "^(.-)%" .. char .. "(.-)$","%1")
local e = string.gsub(str, "^(.-)%".. char .. "(.-)$","%2")

print(d)
print(e)

--print(e)