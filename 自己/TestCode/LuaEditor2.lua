a = {}
a["x"] = 10
b = a                  --b��a������ͬһ��table
print(b["x"])
b["x"] = 20
print(a["x"])
a = nil
b = nil 
