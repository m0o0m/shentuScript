
function win_msg_up(str)
	local _DeviceSizeX = CL:GetScreenWidth();
    local _DeviceSizeY = CL:GetScreenHeight();
	local width = CL:GetFontStrWidth("system", str);
	local _GUIHandle = GUI:EditCreate(0, "prompt_msg", _DeviceSizeX/2 - width/2, _DeviceSizeY/2, 220, 22);
	EditSetProp(0, "prompt_msg", true, false, false, false, 0xFFff0000, false, str);
	prompt_msg_count = 0;
	GUI:WndAddTimerBrief(_GUIHandle, 30, "MovePromptEditWnd");
	
	-- if not prompt_msg_Timer then 
		-- CL:AddDelayTask("MovePromptEditWnd()", 30, 60)
		-- prompt_msg_Timer = true;
	-- end
end

function MovePromptEditWnd()
	local _handle = GetWindow(0, "prompt_msg");
	if _handle ~= 0 then 
		GUI:WndGetPosM(_handle);
		local posX = LuaRet[1];
		local posY = LuaRet[2];
		GUI:WndSetPosM(_handle, posX, posY - 3);
		prompt_msg_count = prompt_msg_count + 1;
		if prompt_msg_count >= 30 then 
			GUI:WndClose(_handle);
			prompt_msg_Timer = false;
		end
	end 
end

--richedit版本
function win_msg_up(str)
	local _DeviceSizeX = CL:GetScreenWidth();
    local _DeviceSizeY = CL:GetScreenHeight();
	local _GUIHandle = GUI:RichEditCreate(0, "prompt_msg", _DeviceSizeX/2 - 300, _DeviceSizeY/2, 220, 32);
	RichEditSetProp(0, "prompt_msg", true, false, false, 0, "SIMLI", str);
	prompt_msg_count = 0;
	GUI:WndAddTimerBrief(_GUIHandle, 30, "MovePromptEditWnd");
	
	-- if not prompt_msg_Timer then 
		-- CL:AddDelayTask("MovePromptEditWnd()", 30, 60)
		-- prompt_msg_Timer = true;
	-- end
end

function MovePromptEditWnd()
	local _handle = GetWindow(0, "prompt_msg");
	if _handle ~= 0 then 
		GUI:WndGetPosM(_handle);
		local posX = LuaRet[1];
		local posY = LuaRet[2];
		GUI:WndSetPosM(_handle, posX, posY - 3);
		prompt_msg_count = prompt_msg_count + 1;
		if prompt_msg_count >= 30 then 
			GUI:WndClose(_handle);
			prompt_msg_Timer = false;
		end
	end 
end
