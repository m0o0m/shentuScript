Guide =
{
	e = {},
	newflag = true,
}

Guide.e[LUA_EVENT_RELOADLUAEND]       =ReloadLuaEnd                  --���¼��ؽű�
Guide.e[LUA_EVENT_ONGUIDECREATE]      =OnGuideCreate                 --�������������¼�
Guide.e[LUA_EVENT_ONLOGIN]            =Event_OnLogin                 --��ҵ�¼�¼�
Guide.e[LUA_EVENT_INITRESCOMPLETE]    =Event_InitResComplete         --��Դ��ʼ������¼�
Guide.e[LUA_EVENT_OPENPAKAGEGUI]      =Event_OpenPackage             --�򿪰����¼�
Guide.e[LUA_EVENT_OPENSKILLGUI]       =Event_OpenSkill               --�򿪼�������¼�
Guide.e[LUA_EVENT_OPENQUESTGUI]       =Event_OpenQuest               --����������¼�
Guide.e[LUA_EVENT_ONADDITEM]          =Event_OnAddItem               --���������Ʒ�¼�
Guide.e[LUA_EVENT_ONEQUIPMENT]        =Event_OnEquipment             --����װ���¼�
Guide.e[LUA_EVENT_ONAPPLYITEM]        =Event_OnApplyItem             --ʹ����Ʒ�¼�
Guide.e[LUA_EVENT_ONADDSKILL]         =Event_OnAddSkill              --��Ӽ����¼�
Guide.e[LUA_EVENT_HORSEBUTTONCLICK]   =Event_OnHorseButtonClick      --��������¼�
Guide.e[LUA_EVENT_GETNEWQUEST]        =Event_GetTask                 --��ȡ�����¼�
Guide.e[LUA_EVENT_FINISHQUEST]        =Event_FinishTask              --�ύ�����¼�
Guide.e[LUA_EVENT_DROPQUEST]          =Event_DropQuest               --���������¼�
Guide.e[LUA_EVENT_OPENNPCTALK]        =Event_OpenNpcTalk             --��NPC����¼�
Guide.e[LUA_EVENT_CLICKNPCTALKITEM]   =Event_ClickNpcTalkItem        --���NPC��������¼�
Guide.e[LUA_EVENT_ONENTERMAP]         =Event_OnEnterMap              --�����ͼ�¼�


Guide[0] = {"Guide0", Guide0}
Guide[1] = {"Guide1", Guide1}
--Guide[2] = {"Guide2", Guide2}
Guide[3] = {"Guide3", Guide3}
Guide[4] = {"Guide4", Guide4}
Guide[5] = {"Guide5|GameMainInterface,TaskWindow", Guide5}
Guide[6] = {"Guide6|GameMainInterface", Guide6}
Guide[7] = {"Guide7|QuestDlg", Guide7}
Guide[8] = {"Guide8|GameMainInterface", Guide8}
Guide[9] = {"Guide9|Package", Guide9}
Guide[10] = {"Guide10", Guide10}
Guide[11] = {"Guide11", Guide11}
Guide[12] = {"Guide12|Package", Guide12}
Guide[13] = {"Guide13", Guide13}
Guide[14] = {"Guide14", Guide14}
Guide[15] = {"Guide15", Guide15}
Guide[16] = {"Guide16", Guide16}
Guide[17] = {"Guide17", Guide17}
Guide[18] = {"Guide18|Package", Guide18}
Guide[19] = {"Guide19|GameMainInterface,SkillBar", Guide19}
Guide[20] = {"Guide20", Guide20}
Guide[21] = {"Guide21|Package", Guide21}
Guide[22] = {"Guide22|GameMainInterface", Guide22}
Guide[23] = {"Guide23|RoleSkill", Guide23}
Guide[24] = {"Guide24", Guide24}
Guide[25] = {"Guide25", Guide25}
Guide[26] = {"Guide26|Package", Guide26}
Guide[27] = {"Guide27|GameMainInterface", Guide27}
Guide[28] = {"Guide28", Guide28}

Guide[201] = {"Guide201", Guide201}
Guide[202] = {"Guide202", Guide202}
Guide[203] = {"Guide203", Guide203}
Guide[204] = {"Guide204", Guide204}



Guide[0][3] = "#COLORCOLOR_BROWN#   ��ӭ��������PK��������Ϸ����;Ӣ�۴�������̤������֮;���������Ƿ���Ҫ��������������������Ϸ�أ�#COLOREND#"
--Guide[2][3] = "���ߣ�����Σ�� ���췴��  ����ս�в��� �����ش�½�� ����;����ʧ�� ����ƽ���˽��� ���ꣻ ��ħ���ᣬ��Ȼ Ϯ�����ǣ����� �����������ٴ� �⵽�����Դ�� ������֮�⣬�� ħ�Ĵ��������� Ϊ������󼯽� �ص���ɽ�ǣ��� ��Ҳа����Ű�� ��ʹ�Ǵ�󷽵� ���ִ�Ҳ���� ħ����Χ���� ������󣬶�ħ �ٴν�������� ������  ��Ϊ�Ȱ���ƽ�� �㣬ֻ�ǽ����� �����������ѵ �������ǣ����� ħ���٣������� ľ������Ȼ���� �������Ǿ�Ԯ�� ����ļ���� ������䣬�㽫 ������������� ��·��"
--Guide[2][4] = "#COLORCOLOR_BROWN#(����������ֽ���)#COLOREND#"
Guide[3][3] = "#COLORCOLOR_BROWN#һֱ��ס#COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#��������·#COLOREND#"
Guide[4][3] = "\n#COLORCOLOR_BROWN#һֱ��ס#COLORCOLOR_YELLOW#����Ҽ�#COLORCOLOR_BROWN#�����Կ����ܶ�\n#COLORCOLOR_RED#ע�⣺#COLORCOLOR_BROWN#�������ﶫ������ʱ�Ͳ����ܲ���#COLOREND#"
Guide[5][3] = "#COLORCOLOR_BROWN#����ұߵ�#COLORCOLOR_GREENG#NPC#COLORCOLOR_BROWN#���ֿ����Զ��ܵ�NPC�Ա�#COLOREND#"
Guide[6][3] = "#COLORCOLOR_BROWN#��#COLORCOLOR_YELLOW# Ctrl + R #COLORCOLOR_BROWN#���Կ��ٴ��������\n��������#COLORCOLOR_YELLOW# ����ť #COLORCOLOR_BROWN#Ҳ�ܴ��������#COLOREND#"
Guide[7][3] = "#COLORCOLOR_BROWN#���������Բ鿴��ǰ�������������ϸ��Ϣ#COLOREND#"
Guide[8][3] = "#COLORCOLOR_BROWN#��#COLORCOLOR_YELLOW# F9 #COLORCOLOR_BROWN#���Կ��ٴ򿪱���\n��������#COLORCOLOR_YELLOW# ������ť #COLORCOLOR_BROWN#Ҳ�ܴ򿪱���#COLOREND#"
Guide[9][3] = "#COLORCOLOR_YELLOW#�Ҽ�#COLORCOLOR_BROWN#���װ�����Դ�����װ��Ŷ#COLOREND#"
Guide[10][3] = "#COLORCOLOR_BROWN#����������Ĺ����ʬ�嶼������ȡ��Ʒ\n��ס#COLORCOLOR_YELLOW# Alt+������ #COLORCOLOR_BROWN#���ʬ��Ϳ�����ȡ��Ʒ��#COLOREND#"
Guide[11][3] = "#COLORCOLOR_BROWN#��é�˺��׶񣬴����·���������һ���ķ�������#COLOREND##COLORCOLOR_BROWN#���÷����͵��·�����#COLOREND##SELECT##COLORCOLOR_YELLOW#�򿪰���#SELECTEND#"
Guide[12][3] = "#COLORCOLOR_YELLOW#�Ҽ�#COLORCOLOR_BROWN#����·����Դ�������ɫ����#COLOREND#"
Guide[14][3] = "#COLORCOLOR_BROWN#��ϲ������#COLORCOLOR_YELLOW#С����#COLORCOLOR_BROWN#��#COLORCOLOR_YELLOW#��Ь#COLORCOLOR_BROWN#���Ͽ�#COLOREND##SELECT##COLORCOLOR_YELLOW#�򿪰���#SELECTEND##COLORCOLOR_BROWN#����װ���ɡ�#COLOREND#"
Guide[15][3] = "#COLORCOLOR_BROWN#���#COLORCOLOR_YELLOW#С����#COLORCOLOR_BROWN#��#COLORCOLOR_YELLOW#��Ь#COLORCOLOR_BROWN#װ���ϰɣ������������������#COLOREND#"
Guide[16][3] = "#COLORCOLOR_BROWN#��ϲ������#COLORCOLOR_YELLOW#�ƽ�����#COLORCOLOR_BROWN#���Ͽ�#COLOREND##SELECT##COLORCOLOR_YELLOW#�򿪰���#SELECTEND##COLORCOLOR_BROWN#����װ���ɡ�#COLOREND#"
Guide[18][3] = "#COLORCOLOR_YELLOW#�Ҽ�#COLORCOLOR_BROWN#����⿪������ҩ#COLOREND#"
Guide[19][3] = "#COLORCOLOR_BROWN#���Խ�ҩ��#OFFSET<X:32,Y:0>#������\n#OFFSET<X:0,Y:-10>#���������ʹ��Ŷ#COLOREND#"
Guide[20][3] = "#COLORCOLOR_BROWN#����#COLOREND##SELECT##COLORCOLOR_YELLOW#�򿪱���#SELECTEND##COLORCOLOR_BROWN#ѧϰ�Լ���ְҵ���ܰɡ�#COLOREND#"
Guide[21][3] = "#COLORCOLOR_BROWN#˫��#COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#�Ϳ���ѧϰ������Ŷ#COLOREND#"
Guide[22][3] = "#COLORCOLOR_BROWN#��#COLORCOLOR_YELLOW# F11 #COLORCOLOR_BROWN#���Կ��ٴ򿪼������\n���#COLORCOLOR_YELLOW# ���ܰ�ť #COLORCOLOR_BROWN#Ҳ���Դ򿪼������#COLOREND#"
Guide[23][3] = "#COLORCOLOR_BROWN#���Ե���ô����ü��ܵĿ�ݼ���Ҳ���Խ����������·��Ŀ����ʹ��#COLOREND#"
Guide[24][3] = "#COLORCOLOR_BROWN#��ϲ����#COLORCOLOR_YELLOW#������Ͱ�#COLORCOLOR_BROWN#��#COLORCOLOR_YELLOW#�سǾ��#COLORCOLOR_BROWN#�����Ƕ����к����������Ŷ������ʹ�ú��֪����#COLOREND#"
Guide[25][3] = "#COLORCOLOR_BROWN#��ϲ������#COLORCOLOR_YELLOW#��Ѫ����(24Сʱ)#COLORCOLOR_BROWN#�����#COLOREND##SELECT##COLORCOLOR_YELLOW#�򿪱���#SELECTEND##COLORCOLOR_BROWN#������������ܰ�~#COLOREND#"
Guide[26][3] = "#COLORCOLOR_BROWN#�Ҽ��������װ��������Ŷ#COLOREND#"
Guide[27][3] = "#COLORCOLOR_BROWN#�����Ѿ�װ�����������ǻ���������������Ŷ����#COLORCOLOR_YELLOW# Ctrl+Q #COLORCOLOR_BROWN#���ߵ���ұߵ�#COLORCOLOR_YELLOW# ��˰�ť #COLORCOLOR_BROWN#�������ɱ���~~#COLOREND#"
Guide[28][3] = "#COLORCOLOR_BROWN#�����������Ҫװ��������������߲���ʹ�ã���������߿������ӻ��̴�����#COLOREND#"
Guide[202][3] = "���ߣ�������Ѫ Ӣ��֮ŭ  ��ʶ�����޿��� �����࣬���ڱ� ����ǰ��δ�е� ��������ͼ���� ĩ���µ�һ���� ����û��ʵ���� ƽ�������Լ� ҹ���������ʡ� �¸ҵ������ˣ� �������κ�һ�� ֻҪ�ܶԶ�ħ�� ���˺��������� �Һã���ħ���� ɽ�ǵ���ı��˳ ���߸������㣬 �����������Ѹ �ٳɳ������ʵ ���õ��˳��ϡ�  �����������ǣ� ���ǣ��㽫���� ��Ϊ���ѵĴ��� ������������ �ǳغ�Σ������ �ľ��ƣ��㽫�� �ò��е����ػ� ���ǡ��Կ���ħ �����Σ���ν�� ʱ��Σ�֣��α� Ӣ�ۡ��������� ����ΪӢ�۳ɳ� ��������"
Guide[202][4] = "#COLORCOLOR_BROWN#(����������ֽ���)#COLOREND#"
Guide[204][3] = "���ߣ���ָ��ң ��Ѫ����  ���ิ�˵ĽŲ� �޿��赲������ ׿����ս������ �����ڻ���а�� ���ȶ������ǡ� �������ս�н� ������ĳ��У� ���ڿ�ʼ��Ϊ�� �����԰��  ������������� �������£����� �������ո�ʧ�� ����������а�� ���ź�������� �����Ŀ�֮�� ������ͬ����� �����Ļ�Į֮�� ��һƬ����ħ�� ��ս���״ݻٵ� ���أ�һƬ���� ���Ϳ־������ ��������֮�� �����桢���ߡ� �ݹǣ�һ������ ���𺳵Ļ��� �������������� ǰ�����˻���� ���ˣ�ֱ������ �ǵķ��֡�"
Guide[204][4] = "#COLORCOLOR_BROWN#(����������ֽ���)#COLOREND#"





function Guide_PrepareString(str, x, y, hdisp, vdisp, fontsize)
	if str == nil then return false end
	if hdisp == nil then hdisp = 10 end
	if vdisp == nil then vdisp = 4 end
	if fontsize == nil then fontsize = 16 end
	Guide_PrepareString_str = str
	Guide_PrepareString_length = string.len(str)
	Guide_PrepareString_pos = 1
	Guide_PrepareString_xpos = x
	Guide_PrepareString_ypos = y
	Guide_PrepareString_y = y
	Guide_PrepareString_hdisp = hdisp
	Guide_PrepareString_vdisp = vdisp
	Guide_PrepareString_fontsize = fontsize
	return true
end

function Guide_GetString()
	if Guide_PrepareString_pos > Guide_PrepareString_length then return "",0 end
	local ret = ""
	local num = 0
	local flag = string.byte(Guide_PrepareString_str, Guide_PrepareString_pos)
	while flag ~= 0x20 do
		if Guide_PrepareString_pos > Guide_PrepareString_length then break end
		local s
		if flag < 0x80 then
			s = string.sub(Guide_PrepareString_str, Guide_PrepareString_pos, Guide_PrepareString_pos)
			Guide_PrepareString_pos = Guide_PrepareString_pos + 1
		else
			s = string.sub(Guide_PrepareString_str, Guide_PrepareString_pos, Guide_PrepareString_pos + 1)
			Guide_PrepareString_pos = Guide_PrepareString_pos + 2
		end
		num = num + 1
		ret = ret.."#POS<X:"..Guide_PrepareString_xpos..",Y:"..Guide_PrepareString_ypos..">#"..s
		Guide_PrepareString_ypos = Guide_PrepareString_ypos + Guide_PrepareString_fontsize + Guide_PrepareString_vdisp
		flag = string.byte(Guide_PrepareString_str, Guide_PrepareString_pos)
	end
	if Guide_PrepareString_pos <= Guide_PrepareString_length then
		Guide_PrepareString_xpos = Guide_PrepareString_xpos - Guide_PrepareString_fontsize - Guide_PrepareString_hdisp
		Guide_PrepareString_ypos = Guide_PrepareString_y
		Guide_PrepareString_pos = Guide_PrepareString_pos + 1
		if ret == "" then return Guide_GetString() end
	end
	return ret, num
end

function Guide_GetString2()
	if Guide_PrepareString_pos > Guide_PrepareString_length then return "" end
	local ret = ""
	local flag = string.byte(Guide_PrepareString_str, Guide_PrepareString_pos)
	if flag == 0x20 then
		Guide_PrepareString_xpos = Guide_PrepareString_xpos - Guide_PrepareString_fontsize - Guide_PrepareString_hdisp
		Guide_PrepareString_ypos = Guide_PrepareString_y
		Guide_PrepareString_pos = Guide_PrepareString_pos + 1
		return Guide_GetString()
	else
		local s
		if flag < 0x80 then
			s = string.sub(Guide_PrepareString_str, Guide_PrepareString_pos, Guide_PrepareString_pos)
			Guide_PrepareString_pos = Guide_PrepareString_pos + 1
		else
			s = string.sub(Guide_PrepareString_str, Guide_PrepareString_pos, Guide_PrepareString_pos + 1)
			Guide_PrepareString_pos = Guide_PrepareString_pos + 2
		end
		ret = "#POS<X:"..Guide_PrepareString_xpos..",Y:"..Guide_PrepareString_ypos..">#"..s
		Guide_PrepareString_ypos = Guide_PrepareString_ypos + Guide_PrepareString_fontsize + Guide_PrepareString_vdisp
	end
	return ret
end


--[[
========================����������ǿ��table���˵��========================
ʾ���� "��ֵ" = {"����������", �Ƿ�������, X����, Y����, ���, �߶�, �Ƿ�ʹ����ŮͼƬ, �Ƿ�ɵ㴩, ��ͷ����, ����ʱ��, �رհ�ť, ��ʼ������, �������, ��ʾ�����ַ���}
˵����
     ��ֵ�������� Ҳ������ID ��ȫ��Ψһ
	 �����������������ĸ������ڴ��� ͨ�ô��������ַ��� ��㴰��֮����Ӣ��״̬�µĶ��Ÿ���
	 �Ƿ����������˱�ǶԺ���ļ�������(X����, Y����, ���, �߶�, �Ƿ�ʹ����ŮͼƬ, �Ƿ�ɵ㴩, ��ͷ����, ��ʾ�����ַ���)��Ч ��Ϊfalse������⼸�����
	 X���꣺��Ч���ο��ˮƽ���� ��������ͷ
	 Y���꣺��Ч���ο�Ĵ�ֱ���� ��������ͷ
	 ��ȣ��ı���Ŀ��
     �߶ȣ��ı���ĸ߶�
	 �Ƿ�ʹ����ŮͼƬ����Ϊtrue�������ŮͼƬ�İ�����
	 �Ƿ�ɵ㴩����ʶ��Ч���ο��Ƿ���Ե㴩
	 ��ͷ���򣺱�ʶ��ͷ���� 1����� 2����� 3����� 4����� ��������ʹ�ü�ͷ
	 ����ʱ�䣺�涨���������ڶ೤ʱ����Զ��رգ���λ�롣���Ϊ0������Դ���
	 �رհ�ť���Ƿ����Ĭ�Ϲرհ�ť��true��ʾ��� false��ʾ�����
	 ��ʼ�������������Ϊnil�򵱴��ڴ�����ɺ��ص��˺���
	 ������ǣ���һ�α�� �������ļ�GameEventFlag.dat�ļ�
	 ��ʾ�����ַ������ı�����ʾ������
]]

GuideEx =
{
	["��ս��ħ��"] = {"NpcTalk", true, 150, 160, 140, 40, 1904100071, true, 1, 0, false, GuideInit_Tiaozhanfengmozhen, nil, "����������#COLORCOLOR_YELLOW#��ħ��#COLOREND#\n  ����#COLORCOLOR_YELLOW#��ħ��#COLOREND#�ڵĹ�����Ի�ô���#COLORCOLOR_YELLOW#����#COLOREND#"},
	["�����ħ��"] = {"NpcTalk", true, 160, 200, 150, 40, 1904100071, true, 1, 0, false,GuideInit_Jinrufengmozhen, 29, "�볡��Ҫ����1��#COLORCOLOR_YELLOW#����#COLOREND#\n  #COLORCOLOR_YELLOW#����#COLOREND#��#COLORCOLOR_YELLOW#�ӻ���#COLOREND#������\nÿ��ɽ����ħ��#COLORCOLOR_YELLOW#3��#COLOREND#		"},
	["��ս������"] = {"NpcTalk", true, 178, 175, 140, 40, 1904100071, true, 1, 0, false,GuideInit_Tiaozhanshilianchang, nil, "����������#COLORCOLOR_YELLOW#������#COLOREND#\n  ���ڵĹ����м��ʵ���#COLORCOLOR_YELLOW#����ƾ֤#COLOREND#"},
	["����������"] = {"NpcTalk", true, 182, 190, 140, 53, 1904100071, true, 1, 0, false,GuideInit_Jinrushilianchang, 30, "#COLORCOLOR_YELLOW#����ƾ֤#COLOREND#������#COLORCOLOR_YELLOW#������ͷ#COLOREND#��#COLORCOLOR_YELLOW#�һ�����#COLOREND#\n  ÿ��ɽ���������#COLORCOLOR_YELLOW#3��#COLOREND#��ÿ������#COLORCOLOR_YELLOW#15����#COLOREND#"},
	["��ս�غ���ӡ"] = {"NpcTalk", true, 127, 206, 160, 40, 1904100071, true, 1, 0, false,GuideInit_Tiaozhanmihaifengyin, 31, "����������#COLORCOLOR_YELLOW#�غ���ӡ#COLOREND#\n #COLORCOLOR_YELLOW#ǰ��#COLOREND#�ɻ�ô���#COLORCOLOR_YELLOW#����#COLOREND#\n #COLORCOLOR_YELLOW#����#COLOREND#�ɻ�ô���#COLORCOLOR_YELLOW#���#COLOREND#"},
	["�����غ���ӡ"] = {"NpcTalk", true, 166, 135, 80, 40, 1904100071, true, 1, 0, false,GuideInit_Jinrumihaifengyin, 31, "�����غ���ӡ\n�غ���ӡ����"},
	["��������1"] = {"NpcTalk", true, 150, 128, 130, 40, 1904100071, true, 1, 0, false,GuideInit_Xuanshangrenwu1, nil, "\n  ���������������"},
	["��������2"] = {"NpcTalk", true, 140, 185, 130, 40, 1904100071, true, 1, 0, false,GuideInit_Xuanshangrenwu2, nil, "    �鿴��������\n����������Ʒ�ʣ�#COLORCOLOR_YELLOW#Ʒ��Խ��#COLOREND#��õ�#COLORCOLOR_YELLOW#����Խ��#COLOREND#"},
	["��������3"] = {"NpcTalk", true, 122, 85, 150, 50, 1904100071, true, 1, 0, false,GuideInit_Xuanshangrenwu3, nil, "    �����ȡ��������\n  ÿ�տ���#COLORCOLOR_YELLOW#ʮ��#COLOREND#�������񣬻���Խ�߾���Խ��\n#COLORCOLOR_YELLOW#���������������¼���#COLOREND#"},
	["��ȡ��������"] = {"NpcTalk", true, 140, 185, 130, 40, 1904100071, true, 1, 0, false,GuideInit_Lingquxuanshangrenwu, 32, "ȷ��#COLORCOLOR_YELLOW#��ȡ#COLOREND#��������\nӵ��#COLORCOLOR_YELLOW#ѭ��ħ��#COLOREND#����ˢ������Ʒ��"},
	["�ύ��������1"] = {"NpcTalk", true, 150, 131, 130, 40, 1904100071, true, 1, 0, false, GuideInit_Tijiaoxuanshangrenwu, nil, "���������Ѿ���ɣ���������ύ����"},
	["�ύ��������"] = {"NpcTalk", true, 265, 185, 130, 40, 1904100071, true, 1, 0, false,GuideInit_Tijiaoxuanshangrenwu, 33, "\n  #COLORCOLOR_YELLOW#�ύ#COLOREND#��������"},
	["ħ��ˢ��"] = {"NpcTalk", true, 290, 180, 200, 40, 1904100071, true, 1, 0, false,GuideInit_Mozhoushuaxin, 34, "�������������#COLORCOLOR_YELLOW#ѭ��ħ��#COLOREND#\n�������#COLORCOLOR_YELLOW#ˢ��#COLOREND#����Ʒ��\n#COLORCOLOR_YELLOW#����Ʒ��Խ��#COLOREND#����õ�#COLORCOLOR_YELLOW#����ҲԽ��#COLOREND#"},
	["�����������"] = {"", true, 400, 400, 120, 60, 1904100071, true, 0, 10, false,GuideInit_Tongyongweizhitishikuang, 35, "��ϲ���������������\n#COLORCOLOR_YELLOW#ѭ��ħ��#COLOREND#���Դ���ɽ��Ѩ�Ĺ������ϻ��"},
	--["��ɽ��_1"] = {"", true, 0, 0, 120, 100, 1904100102, true, 0, 30, false,GuideInit_Tongyongweizhitishikuang, 36, "��ת����ɽ��\n��ɽ�ǹ���"},
	["�غ���ӡ_1"] = {"", true, 0, 0, 120, 100, 1904100102, true, 0, 30, false,GuideInit_Tongyongweizhitishikuang, 37, "\n\n��򿪰������Ҽ����#COLORCOLOR_YELLOW#�ٻ�ʯ#COLOREND#�����ػ��߽��з���"},
}

--[[
========================GuideEx����˵��========================
GuideEx.Open        ��ʾ��������
GuideEx.IsOpened    ĳ���������Ƿ�������ʾ
GudieEx.Close       �ر�ĳ��������
GuideEx.CloseAll    �ر���������
GuideEx.HasDone     ĳ�¼��Ƿ��Ѿ�����
GuideEx.Do          �����¼����Ϊ����
]]

GuideEx.Open = function(GuideID)
	if GuideID == nil then return end
	if GuideEx[GuideID] == nil then return end
	local tbl = GuideEx[GuideID]
	if tbl[1] == nil then return end
	local parent = GetWindow(nil, tbl[1])
	if parent == 0 then return end
	if WndFindChild(parent, nil, GuideID) ~= 0 then return end
	local assist = false
	if tbl[2] ~= nil and true == tbl[2] then
		assist = true
	end
	local this = CreateImage(parent, nil, 0, 0, 0, 0, 0, GuideID, 0, "")
	if this == 0 then return end
	if assist then
		local x = 0 --X����
		if nil ~= tbl[3] then
			x = tbl[3]
		end
		local y = 0 --Y����
		if nil ~= tbl[4] then
			y = tbl[4]
		end
		local cx = 0 --���
		if nil ~= tbl[5] then
			cx = tbl[5]
		end
		local cy = 0 --�߶�
		if nil ~= tbl[6] then
			cy = tbl[6]
		end
		local use_girl_picture = false --��ŮͼƬ
		if nil ~= tbl[7] and true == tbl[7] then
			tbl[7] = 1904100071
		end
		if nil ~= tbl[7] and 0 ~= tbl[7] and UI:Lua_IsTextureExists(tbl[7]) then
			use_girl_picture = true
		end
		local can_mouse_through = false --�Ƿ�ɵ㴩
		if nil ~= tbl[8] and true == tbl[8] then
			can_mouse_through = true
		end
		local arrow_direction = 0 --��ͷ����
		if nil ~= tbl[9] and tbl[9] >= 1 and tbl[9] <= 4 then
			arrow_direction = tbl[9]
		end
		local live_time = 0 --����ʱ��
		if nil ~= tbl[10] and 0 ~= tbl[10] then
			live_time = tbl[10] * 1000
		end
		local close_button = false --�رհ�ť
		if nil ~= tbl[11] and true == tbl[11] then
			close_button = true
		end
		local text = "" --��ʾ�ı�
		if nil ~= tbl[14] then
			text = tbl[14]
		end
		WndSetPos(this, nil, x, y)
		if live_time > 0 then
			WndAddTimerBrief(this, nil, live_time, "GuideCloseTimerProc")
		end

		local girl_width = 0
		local girl_height = 0
		if tbl[7] ~= 0 then
			if UI:Lua_GetTextureWidth(tbl[7]) then
				girl_width = LuaRet
			end
			if UI:Lua_GetTextureHeight(tbl[7]) then 
				girl_height = LuaRet
			end
			if tbl[7] == 1904100102 then
				girl_width = 180
			end
		end
		local margin = 10
		if true == close_button then
			margin = 12
		end
				
		local panel_width = cx + margin * 2 --�ײ����ؼ�
		if use_girl_picture then
			panel_width = panel_width + girl_width
		end
		local panel_height = cy + margin * 2
		local panel = CreateImage(this, nil, 0, 0, 0, panel_width, panel_height, "Panel", 0, "")
		ImageSetAroundImage(panel, nil, 1904100001, 1904100002, 1904100003, 1904100004, 1904100005, 1904100006, 1904100007, 1904100008, 1904100009)
		if can_mouse_through then
			WndSetCanRevMsg(panel, nil, false)
		end

		if true == close_button then --�رհ�ť�ؼ�
			local close_posx = panel_width - 18
			local close_posy = -10
			local close_width = 28
			local close_height = 27
			local close = CreateButton(this, nil, 1900111000, close_posx, close_posy, close_width, close_height, "Close", 0, "")
			WndRegistScript(close, nil, RDWndBaseCL_mouse_lbUp, "GuideCloseLButtonUp")
		end

		if use_girl_picture then --��ŮͼƬ�ؼ�
			local girl_posx = 0
			local girl_posy = cy + margin * 2 - girl_height
			local girl = CreateImage(this, nil, tbl[7], girl_posx, girl_posy, girl_width, girl_height, "Girl", 0, "")
			if can_mouse_through then
				WndSetCanRevMsg(girl, nil, false)
			end
		end

		if text ~= "" then --�༭��ؼ�
			local edit_posx = margin
			if use_girl_picture then
				edit_posx = edit_posx + girl_width
			end
			local edit_posy = margin
			local edit = CreateRichEdit(this, nil, 0, edit_posx, edit_posy, cx, cy, "Edit", 0, "")
			RichEditSetEnable(edit, nil, false)
			WndSetCanRevMsg(edit, nil, false)
			RichEditAppendString(edit, nil, text)
		end

		if 0 ~= arrow_direction then --��ͷ�ؼ�
			local arrow_offset = 10
			local arrow_image = 0
			local arrow_posx = 0
			local arrow_posy = 0
			local arrow_width = 0
			local arrow_height = 0
			local arrow_next_posx = 0
			local arrow_next_posy = 0
			if arrow_direction == 1 then --���ϡ�
				arrow_image = 1904100100
				arrow_width = 57
				arrow_height = 57
				arrow_posx = (panel_width - arrow_width) / 2
				arrow_posy = -arrow_height + 8
				arrow_next_posx = arrow_posx
				arrow_next_posy = arrow_posy - arrow_offset
			elseif arrow_direction == 2 then --���¡�
				arrow_image = 1904100016
				arrow_width = 37
				arrow_height = 57
				arrow_posx = (panel_width - arrow_width) / 2
				arrow_posy = panel_height - 5
				arrow_next_posx = arrow_posx
				arrow_next_posy = arrow_posy + arrow_offset
			elseif arrow_direction == 3 then --�����
				arrow_image = 1904100101
				arrow_width = 57
				arrow_height = 57
				arrow_posx = -arrow_width + 5
				arrow_posy = (panel_height - arrow_height) / 2
				arrow_next_posx = arrow_posx - arrow_offset
				arrow_next_posy = arrow_posy
			else --���ҡ�
				arrow_image = 1904100099
				arrow_width = 57
				arrow_height = 57
				arrow_posx = panel_width - 5
				arrow_posy = (panel_height - arrow_height) / 2
				arrow_next_posx = arrow_posx + arrow_offset
				arrow_next_posy = arrow_posy
			end
			local arrow = CreateImage(this, nil, arrow_image, arrow_posx, arrow_posy, arrow_width, arrow_height, "Arrow", 0, "")
			WndSetCanRevMsg(arrow, nil, false)
			WndAddTimerBrief(arrow, nil, 300, "GuideArrowTimerProc")
			WndAddProperty(arrow, nil, "x", tostring(arrow_posx))
			WndAddProperty(arrow, nil, "y", tostring(arrow_posy))
			WndAddProperty(arrow, nil, "next_x", tostring(arrow_next_posx))
			WndAddProperty(arrow, nil, "next_y", tostring(arrow_next_posy))
			WndAddProperty(arrow, nil, "use_next", "1")
		end
	end
	if nil ~= tbl[12] then
		tbl[12](this)
	end
end

function GuideCloseTimerProc(handle)
	WndClose(handle)
end

function GuideCloseLButtonUp(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	local this = WndGetParent(handle)
	if 0 ~= this then
		WndClose(this)
	end
end

function GuideArrowTimerProc(handle)
	local use_next = tonumber(WndGetProperty(handle, nil, "use_next"))
	local posx = 0
	local posy = 0
	if use_next == 0 then
		posx = tonumber(WndGetProperty(handle, nil, "x"))
		posy = tonumber(WndGetProperty(handle, nil, "y"))
		WndAddProperty(handle, nil, "use_next", "1")
	else
		posx = tonumber(WndGetProperty(handle, nil, "next_x"))
		posy = tonumber(WndGetProperty(handle, nil, "next_y"))
		WndAddProperty(handle, nil, "use_next", "0")
	end
	WndSetPos(handle, nil, posx, posy)
end

GuideEx.IsOpened = function(GuideID)
	if GuideID == nil or GuideEx[GuideID] == nil then return false end
	if WndFindChild(nil, GuideEx[GuideID][1], GuideID) == 0 then return false end
	return true
end

GuideEx.Close = function(GuideID)
	if GuideID == nil or GuideEx[GuideID] == nil then return end
	local this = WndFindChild(nil, GuideEx[GuideID][1], GuideID)
	if 0 ~= this then
		WndClose(this, nil)
	end
end

GuideEx.CloseAll = function()
	for k,v in pairs(GuideEx) do
		if type(v) == "table" and v[1] ~= nil then
			local this = WndFindChild(nil, v[1], k)
			if 0 ~= this then
				WndClose(this, nil)
			end
		end
	end
end

GuideEx.HasDone = function(GuideID)
	if GetFlag(1023) == 1 then return true end
	if GuideID == nil or GuideEx[GuideID] == nil then return true end
	local tbl = GuideEx[GuideID]
	if tbl[13] == nil then return true end
	local flag = tbl[13]
	return GetFlag(flag) == 1
end

GuideEx.Do = function(GuideID)
	if GuideID == nil or GuideEx[GuideID] == nil then return end
	local tbl = GuideEx[GuideID]
	if tbl[13] == nil then return end
	SetFlag(tbl[13])
end