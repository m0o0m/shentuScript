function main(player_guid, item_guid)
    local issgc = lualib:IsCastleWarStart("����")
	local msg = ""
	msg = msg.."#COLORCOLOR_BLUE#                                      ��#COLOREND#��ѡ������#COLORCOLOR_BLUE#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."��#COLORCOLOR_LIGHTBROWN#            �X�������������[��    �X�������������[��    �X�������������[#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#          ��  #COLOREND##COLORCOLOR_LIGHTBROWN#��   #COLOREND#<@wsc#"..item_guid.." *01*��ɽ��>#OFFSET<X:1,Y:0>##COLORCOLOR_LIGHTBROWN#   ��#COLOREND##COLORCOLOR_RED#  ��  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��    #COLOREND#<@lc#"..item_guid.." *01*����>#OFFSET<X:3,Y:0>##COLORCOLOR_LIGHTBROWN#    ��#COLOREND##COLORCOLOR_RED#  ��  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��   #COLOREND#<@dlc#"..item_guid.." *01*���ٳ�>#OFFSET<X:2,Y:0>##COLORCOLOR_LIGHTBROWN#   ��#COLOREND##COLORCOLOR_RED#  ��  #COLOREND#\n"
    msg = msg.."��#COLORCOLOR_LIGHTBROWN#            �^�������������a��    �^�������������a��    �^�������������a#COLOREND#\n"
    if issgc == false then
        msg = msg.."��#COLORCOLOR_LIGHTBROWN#            �X�������������[��    �X�������������[��    �X�������������[#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#          ��  #COLOREND##COLORCOLOR_LIGHTBROWN#��   #COLOREND#<@tsc#"..item_guid.." *01*��ɣ��>#OFFSET<X:1,Y:0>##COLORCOLOR_LIGHTBROWN#   ��#COLOREND##COLORCOLOR_RED#  ��  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��    #COLOREND#<@sgc#"..item_guid.." *01*����>#OFFSET<X:3,Y:0>##COLORCOLOR_LIGHTBROWN#  ��#COLOREND##COLORCOLOR_RED#  ��  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��     #COLOREND#<@yw#"..item_guid.." *01*Ұ��>#OFFSET<X:2,Y:0>##COLORCOLOR_LIGHTBROWN#   ��#COLOREND##COLORCOLOR_RED#  ��  #COLOREND#\n"
        msg = msg.."��#COLORCOLOR_LIGHTBROWN#            �^�������������a��    �^�������������a��    �^�������������a#COLOREND#\n"
    else
        msg = msg.."��#COLORCOLOR_LIGHTBROWN#                        �X�������������[��    �X�������������[#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#                      ��  #COLOREND##COLORCOLOR_LIGHTBROWN#��   #COLOREND#<@tsc#"..item_guid.." *01*��ɣ��>#OFFSET<X:1,Y:0>##COLORCOLOR_LIGHTBROWN#   ��#COLOREND##COLORCOLOR_RED#  ��  #COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN##COLOREND##COLORCOLOR_RED##COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_LIGHTBROWN#��     #COLOREND#<@yw#"..item_guid.." *01*Ұ��>#OFFSET<X:2,Y:0>##COLORCOLOR_LIGHTBROWN#   ��#COLOREND##COLORCOLOR_RED#  ��  #COLOREND#\n"
        msg = msg.."��#COLORCOLOR_LIGHTBROWN#                        �^�������������a��    �^�������������a#COLOREND#\n"
    end
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
   lualib:NPCTalk(player_guid, msg)
    return msg
end


--��ɽ��
function wsc(player_guid, item_guid)
	local msg = ""
	msg = msg.."#COLORCOLOR_BLUE#                                  ��#COLOREND#��ɽ��#COLORCOLOR_BLUE#��#COLOREND#\n \n"
    msg = msg.."#COLORCOLOR_BLUE#  ��#COLOREND#�̵�#COLORCOLOR_BLUE#��#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#01#"..item_guid.." *01*����        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#02#"..item_guid.." *01*�÷�        >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#13#"..item_guid.." *01*�ϱ�        >  "
            msg = msg.."#OFFSET<X:4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#07#"..item_guid.." *01*����        >  "
            msg = msg.."#OFFSET<X:4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#09#"..item_guid.." *01*������        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#15#"..item_guid.." *01*�ӻ���      >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#22#"..item_guid.." *01*ҩ����      >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#24#"..item_guid.." *01*�ֿ����Ա  > \n \n "
	msg = msg.."#COLORCOLOR_BLUE# ��#COLOREND#����#COLORCOLOR_BLUE#��#COLOREND#\n "
            msg = msg.."#OFFSET<X:-6,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#10#"..item_guid.." *01*�������    >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#03#"..item_guid.." *01*װ����ʦ    >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#11#"..item_guid.." *01*װ���ϳɴ�ʦ>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#21#"..item_guid.." *01*��ҩʦ      >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#12#"..item_guid.." *01*Ԫ����ֵ    >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#16#"..item_guid.." *01*��������    >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#17#"..item_guid.." *01*�䶷��ʹ��  >  "
            msg = msg.."#OFFSET<X:-2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#18#"..item_guid.." *01*ʦͽ����Ա  >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#19#"..item_guid.." *01*�л����Ա  >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#14#"..item_guid.." *01*������Ա  >  \n \n"
	msg = msg.."#COLORCOLOR_BLUE#  ��#COLOREND#����#COLORCOLOR_BLUE#��#COLOREND#\n "
            msg = msg.."#OFFSET<X:-6,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#25#"..item_guid.." *01*����ʦ      >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#77#"..item_guid.." *01*�弶�����콱>  "
            msg = msg.."#OFFSET<X:-2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#08#"..item_guid.." *01*��������    >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#26#"..item_guid.." *01*��ݽ���    >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#20#"..item_guid.." *01*����ս����Ա>  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#23#"..item_guid.." *01*�����Թ���Ա>  "
            msg = msg.."#OFFSET<X:-4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#74#"..item_guid.." *01*���µ�һ    >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#78#"..item_guid.." *01*����ʦ      >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#76#"..item_guid.." *01*����ת��ʹ��>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#75#"..item_guid.." *01*��֮��      >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#04#"..item_guid.." *01*���µ�һ��ʿ>  "
            msg = msg.."#OFFSET<X:-3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#05#"..item_guid.." *01*���µ�һ��ʦ>  "
            msg = msg.."#OFFSET<X:-2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#06#"..item_guid.." *01*���µ�һսʿ>   \n"
            msg = msg.."#OFFSET<X:450,Y:3>##OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*�����ء�>\n"
	return msg
end

--����
function lc(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   ��#COLOREND#����#COLORCOLOR_BLUE#��#COLOREND#\n \n"
        msg = msg.."#COLORCOLOR_BLUE#  ��#COLOREND#�̵�#COLORCOLOR_BLUE#��#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#36#"..item_guid.." *01*�ϱ�        >  "
            msg = msg.."#OFFSET<X:3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#46#"..item_guid.." *01*�ӻ���      >  "
            msg = msg.."#OFFSET<X:4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#47#"..item_guid.." *01*ҩ����      >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#57#"..item_guid.." *01*����        >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#58#"..item_guid.." *01*������      >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#59#"..item_guid.." *01*�÷�        >  "
            msg = msg.."#OFFSET<X:3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#60#"..item_guid.." *01*����        >  "
            msg = msg.."#OFFSET<X:5,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#69#"..item_guid.." *01*���˵�����>  "
            msg = msg.."#OFFSET<X:12,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#38#"..item_guid.." *01*�ֿ����Ա  >  \n \n"
        msg = msg.."#COLORCOLOR_BLUE#  ��#COLOREND#�#COLORCOLOR_BLUE#��#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#27#"..item_guid.." *01*���Ǿ����  >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#28#"..item_guid.." *01*��ħ�����>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#29#"..item_guid.." *01*����ʹ��    >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#30#"..item_guid.." *01*��ͯ��С��  >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#31#"..item_guid.." *01*�þ�������  >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#32#"..item_guid.." *01*ͨ��ʦ      >  "
            msg = msg.."#OFFSET<X:3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#33#"..item_guid.." *01*��Ĺ����    >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#34#"..item_guid.." *01*�ᱦ��ʹ    >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#35#"..item_guid.." *01*��������    >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#37#"..item_guid.." *01*��ħ����·��>  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#39#"..item_guid.." *01*����������ͷ>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#40#"..item_guid.." *01*��ħ��������>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#44#"..item_guid.." *01*����ʹ��    >  \n \n"
        msg = msg.."#COLORCOLOR_BLUE#  ��#COLOREND#����#COLORCOLOR_BLUE#��#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#70#"..item_guid.." *01*�弶�����콱>  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#43#"..item_guid.." *01*�������    >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#41#"..item_guid.." *01*װ����ʦ    >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#42#"..item_guid.." *01*�����      >  "
            msg = msg.."#OFFSET<X:2,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#45#"..item_guid.." *01*Ԫ����ֵ    >  \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*�����ء�>\n"
	return msg
end

--���ٳ�

function dlc(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   ��#COLOREND#���ٳ�#COLORCOLOR_BLUE#��#COLOREND#\n \n"
        msg = msg.."#COLORCOLOR_BLUE#  ��#COLOREND#�̵�#COLORCOLOR_BLUE#��#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#52#"..item_guid.." *01*�ϱ�        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#48#"..item_guid.." *01*�÷�        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#49#"..item_guid.." *01*ҩ����      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#50#"..item_guid.." *01*�ӻ���      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#53#"..item_guid.." *01*����        >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#54#"..item_guid.." *01*������      >  "
            msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#55#"..item_guid.." *01*�ֿ����Ա  >  \n \n"
        msg = msg.."#COLORCOLOR_BLUE#  ��#COLOREND#����#COLORCOLOR_BLUE#��#COLOREND#\n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#56#"..item_guid.." *01*���ٳǾ����>  "
            msg = msg.."#OFFSET<X:-4,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#51#"..item_guid.." *01*ѱ��ʦ      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#72#"..item_guid.." *01*������Ԩ������>  \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*�����ء�>\n"
	return msg
end

--��ɣ��

function tsc(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   ��#COLOREND#��ɣ��#COLORCOLOR_BLUE#��#COLOREND#\n \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#61#"..item_guid.." *01*�÷�        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#62#"..item_guid.." *01*ҩ����      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#63#"..item_guid.." *01*�ӻ���      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#64#"..item_guid.." *01*����        >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#65#"..item_guid.." *01*����        >  \n"
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#66#"..item_guid.." *01*��������Ա  >  "
            msg = msg.."#OFFSET<X:-3,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#73#"..item_guid.." *01*����        >  "
            msg = msg.."#OFFSET<X:1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#67#"..item_guid.." *01*������      >  "
            msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#68#"..item_guid.." *01*�ֿ����Ա  >  \n \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*�����ء�>\n"
	return msg
end

--����
function sgc(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   ��#COLOREND#����#COLORCOLOR_BLUE#��#COLOREND#\n \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#89#"..item_guid.." *01*���ǹ�����>  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#90#"..item_guid.." *01*����        >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#91#"..item_guid.." *01*ҩ����      >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#92#"..item_guid.." *01*�÷�        >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#93#"..item_guid.." *01*������      >  \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#94#"..item_guid.." *01*�ӻ���      >  \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*�����ء�>\n"
	return msg
end
--Ұ��
function yw(player_guid, item_guid)
	local msg = "  "
    	msg = msg.."#COLORCOLOR_BLUE#                                   ��#COLOREND#Ұ��#COLORCOLOR_BLUE#��#COLOREND#\n \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#71#"..item_guid.." *01*��������    >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#79#"..item_guid.." *01*��·���ӻ���>  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#80#"..item_guid.." *01*��·�Ȳֿ�  >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#81#"..item_guid.." *01*��·������  >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#82#"..item_guid.." *01*�������ӻ���>  \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#83#"..item_guid.." *01*���˵Ĺ�����>  "
        msg = msg.."#OFFSET<X:-1,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#84#"..item_guid.." *01*����������  >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#85#"..item_guid.." *01*��·������  >  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#86#"..item_guid.." *01*��ɽ��Ѩ����>  "
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#87#"..item_guid.." *01*���а������>  \n"
        msg = msg.."#OFFSET<X:0,Y:3>##IMAGE<ID:1902700015>##OFFSET<X:0,Y:-3>#<@JumpMap#88#"..item_guid.." *01*���������  >  \n"
            msg = msg.."#OFFSET<X:-3,Y:3>#                                                                                #OFFSET<X:0,Y:3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-3>#<@main#"..item_guid.." *01*�����ء�>\n"
	return msg
end

function JumpMap(player_guid, index, item_guid)
    local npc_table = { "-n ��ɽ������", --1
                        "-n ��ɽ�ǲ÷�", --2
                        "-n װ����ʦ", --3
                        "-n ���µ�һ��ʿ", --4
                        "-n ���µ�һ��ʦ", --5
                        "-n ���µ�һսʿ", --6
                        "-n ��ɽ������", --7
                        "-n ��������", --8
                        "-n ��ɽ��������", --9
                        "-n �������", --10
                        "-n װ���ϳɴ�ʦ", --11
                        "-n Ԫ����ֵ", --12
                        "-n ��ɽ���ϱ�", --13
                        "-n ������Ա", --14
                        "-n ��ɽ���ӻ���", --15
                        "-n ��������", --16
                        "-n �䶷��ʹ��", --17
                        "-n ʦͽ����Ա", --18
                        "-n �л����Ա", --19
                        "-n ����ս����Ա", --20
                        "-n ��ɽ����ҩʦ", --21
                        "-n ��ɽ��ҩ����", --22
                        "-n �����Թ���Ա", --23
                        "-n ��ɽ�ǲֿ����Ա", --24
                        "-n ����ʦ ", --25
                        "-n ��ݽ�������", --26
                        "-n ���Ǿ����", --27
                        "-n ��ħ�����", --28
                        "-n ����ʹ��", --29
                        "-n ��ͯ��С��", --30
                        "-n �þ�������", --31
                        "-n ͨ��ʦ", --32
                        "-n ��Ĺ����", --33
                        "-n �ᱦ��ʹ", --34
                        "-n ��������", --35
                        "-n �����ϱ�", --36
                        "-n ��ħ����·��", --37
                        "-n ���ǲֿ����Ա", --38
                        "-n ����������ͷ", --39
                        "-n ��ħ��������", --40
                        "-n װ����ʦ����", --41
                        "-n �����", --42
                        "-n �����������", --43
                        "-n ����ʹ��", --44
                        "-n Ԫ����ֵ", --45
                        "-n �����ӻ���", --46
                        "-n ����ҩ����", --47
                        "-n ���ٳǲ÷�", --48
                        "-n ���ٳ�ҩ����", --49
                        "-n ���ٳ��ӻ���", --50
                        "-n ѱ��ʦ", --51
                        "-n ���ٳ��ϱ�", --52
                        "-n ���ٳ�����", --53
                        "-n ���ٳ�������", --54
                        "-n ���ٳǲֿ����Ա", --55
                        "-n ���ٳǾ����", --56
                        "-n ��������", --57
                        "-n ����������", --58
                        "-n ���ǲ÷�", --59
                        "-n ��������", --60
                        "-n ���ִ�÷���", --61
                        "-n ���ִ�ҩ������", --62
                        "-n ���ִ��ӻ�����", --63
                        "-n ���ִ�������", --64
                        "-n ���ִ峵��", --65
                        "-n ��������Ա��", --66
                        "-n ���ִ���������", --67
                        "-n ���ִ�ֿ����Ա��", --68
                        "-n ���˵�����", --69
                        "-n ���ǳ弶����", --70
                        "-n ��������", --71
                        "-n ������Ԩ������", --72
                        "-n ���ִ�������", --73
                        "-n ���µ�һ", --74
                        "-n ��֮��", --75
                        "-n ����ת��ʹ��", --76
                        "-n ��ɽ�ǳ弶����", --77
                        "-n ����ʦ", --78
                        "-n ��·���ӻ���", --79
                        "-n ��·�Ȳֿ����Ա", --80
                        "-n ��·������", --81
                        "-n �������ӻ���", --82
                        "-n ���˵Ĺ�����", --83
                        "-n ����������", --84
                        "-n ��·������", --85
                        "-n ��ɽ��Ѩ����", --86
                        "-n ���а������", --87
                        "-n ���������", --88
                        "-n ���ǹ�����", --89
                        "-n ��������", --90
                        "-n ����ҩ����", --91
                        "-n ���ǲ÷�", --92
                        "-n ����������", --93
                        "-n �����ӻ���", --94
					   }
	if not lualib:Player_RunGMCmd(player_guid, "mv", npc_table[tonumber(index)]) then
        return "׷��NPCʧ��"
    end


    return ""
end
