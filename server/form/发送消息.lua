
function ����ȫ����Ϣ(msg, color)
	if color == nil then
		color = "WHITE";
	end
	lualib:GSRunScript("���������Ϣ", msg.."#"..color);
end

function ���������Ϣ(player, msg, color)
	if color == nil then
		color = "WHITE";
	end
	local str = "GameMainBar.SendMsg(\""..msg.."\", \""..color.."\")";
	lualib:ShowFormWithContent(player, "�ű���", str);
end