
function 发送全区消息(msg, color)
	if color == nil then
		color = "WHITE";
	end
	lualib:GSRunScript("发送玩家消息", msg.."#"..color);
end

function 发送玩家消息(player, msg, color)
	if color == nil then
		color = "WHITE";
	end
	local str = "GameMainBar.SendMsg(\""..msg.."\", \""..color.."\")";
	lualib:ShowFormWithContent(player, "脚本表单", str);
end