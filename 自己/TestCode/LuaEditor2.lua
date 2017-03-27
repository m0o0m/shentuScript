a = {}
a["x"] = 10
b = a                  --b与a引用了同一个table
print(b["x"])
b["x"] = 20
print(a["x"])
a = nil
b = nil 
