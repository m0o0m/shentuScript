local timeId = 12582	--��ʱ��ID

local second = 1	--�������һ�ξ���

local limit = 200	--���ټ���ʼ����ʹ���ݵ�


function main(npc,player)
	local mes = " NpcKeyName = \"�������ݵ㡿\""--����
	lualib:ShowFormWithContent(player, "�ű���", mes)
	local msg = [[




   #COLORCOLOR_ORANGE#һ��׷������Ĵ�����£�һ��ֵ����ص��ֵ�����

   #COLORCOLOR_BLUE#�ഺ�ļ��������Ŵ���ĵ��εΣ�������Ѫ��д����

   #COLORCOLOR_MAGENTA#��ʾ��#COLORCOLOR_GREENG#ʱ������䣬ֻҪ��Ŭ��һ�н��п��ܣ�����������#COLOREND#

            

                    #IMAGE1902700015##OFFSET<Y:-2>#<@sure *01*����ӭ��������ŭ֮�á�>           
	]]
 
lualib:SetPanelSize(npc, 426, 258)
	
	return msg
end






function sure(npc, player)

	if lualib:Level(player) >= 200 then
		showmsg(player, "������"..limit.."���޷�����ʹ���ݵ㹦�ܡ�")
		return ""
    end
	
	if lualib:HasTimer(player, timeId) then
		showmsg(player, "���Ѿ��������ݵ���")
		return ""
	end
	lualib:AddTimer(player, timeId, second * 1000, -1, "on_time_exp")
	lualib:Player_MapMoveXY(player,"��ŭ֮��",255,405,5)
	showmsg(player, "�����ݵ�ɹ���")
	return ""
end


function on_time_exp(player, id)
	if lualib:Level(player) >= limit then
		lualib:DisableTimer(player, id)
		lualib:SysWarnMsg(player, "�ȼ��ﵽ"..limit.."���޷��ٽ��������ݵ㡣")
		return false
	end
	if lualib:IsOffline(player) then
		lualib:DisableTimer(player, id)
		return false
	end
	
	local temp = lualib:GetTempInt(player, "tbingot") + 1

	lualib:AddExp(player, 100000, "�Ӿ���:�����ݵ�", player)

end


function showmsg(player, msg)
	lualib:ShowFormWithContent(player, "�ű���", "msgbox = "..string.format("%q", msg))
	lualib:ShowFormWithContent(player, "form�ļ���", "MsgBox")
end