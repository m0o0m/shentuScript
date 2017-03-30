

function main(monster)

end

function on_create(monster)
	lualib:AddTimerEx(monster, 1, 120000, 1, "delete", "")

end

function delete(monster)
	lualib:Monster_Remove(monster)

end