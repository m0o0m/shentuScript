local jinbi = 10000	


function main(npc,player)
	local mes = " NpcKeyName = \"【修仙丹合成】\""--标题
	lualib:ShowFormWithContent(player, "脚本表单", mes)
	local msg = [[




   #COLORCOLOR_ORANGE#等级达到500级以上需要使用修仙丹提升等级

   #COLORCOLOR_BLUE#修仙丹合成要,修炼的x3+10000金币

  

                    <@sure *01*【合成修仙丹】>           
	]]
 
lualib:SetPanelSize(npc, 426, 258)
	
	return msg
end






function sure(npc, player)
if lualib:ItemCount(player, "初级等级丹") < 3 then
	showmsg(player, "《修炼丹》不足3个")
    return main(npc,player)
end
if lualib:GetGold(player) < jinbi then 
		showmsg(player, "金币不足"..jinbi.."")
return main(npc,player)
end
lualib:DelItem(player, "初级等级丹", 3, 2, "合成", "合成")
lualib:SubGold(player, jinbi, "合成", lualib:Name(player))
 lualib:AddItem(player,"中级等级丹",1,false,"合成", player)
lualib:SysMsg_SendPromptMsg(player, "合成成功")
	return main(npc,player)
end





function showmsg(player, msg)
	lualib:ShowFormWithContent(player, "脚本表单", "msgbox = "..string.format("%q", msg))
	lualib:ShowFormWithContent(player, "form文件表单", "MsgBox")
end