function on_create(npc_guid)
	lualib:AddTimer(npc_guid, 815, 180000, 1, "ssck_scnpc")
	lualib:AddTimer(npc_guid, 816, 1000, -1, "ssck_scnpcc")
end

function ssck_scnpc(npc_guid)
     lualib:Npc_Remove(npc_guid)
end

function ssck_scnpcc(npc_guid)
	local player_guid = lualib:GetStr(npc_guid, "vip7_player_guid")
	if not lualib:Player_IsOnline(player_guid) then
    lualib:Npc_Remove(npc_guid)
	end
end

function main(npc, player)
    lualib:AddShop(npc, 10)
	local msg = ""
	local player_npc = lualib:GetStr(npc, "vip7_player_guid")
	if player_npc == player then
		msg = msg.."�߹�����ˣ�������ʲô��Ҫ��#COLORCOLOR_RED#��ÿ�γ���ʱ��Ϊ3���ӣ���ץ��ʱ�䣡#COLOREND#\n \n"
		msg = msg.."#IMAGE<ID:1902700037>#<@OpenShop#2 *01*��������>     #IMAGE<ID:1902700037>#<@OpenShop#4 *01*�����·�>     #IMAGE1902700037#<@OpenShop#6 *01*��������>     #IMAGE<ID:1902700037>#<@OpenShop#13 *01*������>\n"
		msg = msg.."#IMAGE<ID:1902700037>#<@OpenShop#8 *01*����ҩƷ>     #IMAGE<ID:1902700037>#<@OpenShop#10 *01*�����ӻ�>     #IMAGE<ID:1902700037>#<@OpenShop#24 *01*�ϱ��̵�>     #IMAGE<ID:1902700037>#<@OpenShop#25 *01*ѱ���̵�>\n"
		msg = msg.."#COLORCOLOR_BROWN#������������������������������������������������������������#COLOREND#\n"
		msg = msg.."#IMAGE1902700036#<@SellItem#1 *01*������Ʒ>        #IMAGE1902700036#<@ShowRepire#1 *01*��ͨ����>        #IMAGE1902700036#<@ShowRepireEx#1 *01*��������>\n"
		msg = msg.."#COLORCOLOR_BROWN#������������������������������������������������������������#COLOREND#\n"
		msg = msg.."#COLORCOLOR_RED#��#COLOREND#<@InfoItemRefine *01*װ������>#COLORCOLOR_RED#��#COLOREND#<@FengYin *01*�����ӡ>#COLORCOLOR_RED#��#COLOREND#<@jinglianzhuanyi *01*����ת��>#COLORCOLOR_RED#��#COLOREND#<@jingliangaibian *01*�����ı�>#COLORCOLOR_RED#��#COLOREND#<@Openfumo *01*װ����ħ>#COLORCOLOR_RED#��#COLOREND#<@Openxishou *01*��������>\n"
		msg = msg.."#COLORCOLOR_BROWN#������������������������������������������������������������#COLOREND#\n"
		msg = msg.."#IMAGE<ID:1902700037>#<@kaiguang *01*���￪��>"
		return msg
	else
		msg = msg.."�������ҵ����ˣ����޷�Ϊ���ṩ���·���\n#COLORCOLOR_DARKGREY#��������     �����·�     ��������     ������\n����ҩƷ     �����ӻ�     �ϱ��̵�     ѱ���̵�\n������Ʒ        ��ͨ����        ��������\nװ������  �����ӡ  ����ת��  �����ı�  װ����ħ  ��������\n���￪��#COLOREND#\n \n"
		msg = msg.."��Ҫӵ�к���һ�����������֣�#COLOREND#\n \n�����#IMAGE<ID:1902700037>#<@OpenShop#24 *01*��˴��ϱ��̵깺������ֿ�������̵�>\n"
		return msg
	end
end



function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
	end


function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "�����")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "���������")
    return ""
end

function InfoItemRefine(npc, player)
    lualib:ShowForm(player, "������2")

    return ""
end

function FengYin(npc, player)
	local msg = ""
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	local time_cha = times - StartServerTime_int
	
	if time_cha < 86400 * 5 then 	--(5��) 
		msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#��ӡ����ϵͳ���ڿ���5���������5���������~\n"
		msg = msg.."������������������������������������������������#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* [����]>\n"
		return msg
	end
	
   lualib:ShowForm(player, "������")

    return ""
end

function jinglianzhuanyi(npc, player)
   lualib:ShowForm(player, "����ת�Ʊ�")

    return ""
end

function jingliangaibian(npc, player)
   lualib:ShowForm(player, "�����ı��")

    return ""
end

function Openfumo(npc, player)
    lualib:ShowForm(player, "װ����ħ��")
    return ""
end


function Openxishou(npc, player)
    lualib:ShowForm(player, "��ħʯ���ձ�")
    return ""
end


function kaiguang(npc, player)
    lualib:ShowForm(player, "�����")
    return ""
end