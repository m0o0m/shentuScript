--������Ϣ
local curindex = 1;
local msg = {"������ȥ����������ȥ���������еĹ���������е�BOSS�����ֱ��ﶼ���������ǣ��������¸ҵ����ߣ�",
	"���ڸ�Զ�������Ͽ������ǣ�", "�������ߣ�", "�������ߣ�", "�������ߣ�", "��ʿ�ǣ�׼��������", "���ǿ�ʼ��"}
function siege(id, map, times)	
	lualib:SysMsg_SendTopMsg(1, "���﹥�ǿ�ʼ��");
	lualib:SysMsg_SendBroadcastColor("���﹥�ǿ�ʼ��", "", 1, 12);
	local mapid = lualib:Map_GetMapGuid("����");
	--���ű�������
	local y = 217;
	for x = 266, 286, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "����ţħ1", 1, false);
		y = y + 1;
	end
	lualib:Map_GenMonster(mapid, 287, 238, 1, 4, "ţħ����", 1, false);
	lualib:Map_GenMonster(mapid, 298, 249, 1, 4, "ţħ����", 1, false);
	y = 250;
	for x = 299, 315, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "����ţħ1", 1, false);
		y = y + 1;
	end
	
	lualib:Map_GenMonster(mapid, 325, 264, 7, 4, "ţħ����1", 100, false);
	lualib:Map_GenMonster(mapid, 327, 212, 7, 4, "����ţħ1", 100, false);
	lualib:Map_GenMonster(mapid, 271, 211, 7, 4, "ţħ��ʿ1", 100, false);
	lualib:Map_GenMonster(mapid, 297, 240, 1, 4, "ǧ����ħ", 1, false);
	lualib:Map_GenMonster(mapid, 300, 238, 3, 4, "����ħ����", 10, false);
	lualib:Map_GenMonster(mapid, 300, 238, 3, 4, "��ħ����", 3, false);
	lualib:Map_GenMonster(mapid, 300, 232, 3, 4, "����ħ����", 10, false);
	lualib:Map_GenMonster(mapid, 300, 232, 3, 4, "��ħ����", 3, false);
	lualib:Map_GenMonster(mapid, 307, 239, 3, 4, "����ħ������Գ", 10, false);
	lualib:Map_GenMonster(mapid, 307, 239, 3, 4, "��ħ������Գ", 3, false);
	lualib:Map_GenMonster(mapid, 303, 325, 3, 4, "����ħ������", 10, false);
	lualib:Map_GenMonster(mapid, 303, 325, 3, 4, "��ħ������", 3, false);
	lualib:Map_GenMonster(mapid, 307, 231, 3, 4, "����ħ��ڤʬ��", 10, false);
	lualib:Map_GenMonster(mapid, 307, 231, 3, 4, "��ħ��ڤʬ��", 3, false);
	lualib:Map_GenMonster(mapid, 310, 229, 6, 4, "ħ��1", 40, false);
	lualib:Map_GenMonster(mapid, 315, 224, 6, 4, "ɢ��1", 40, false);
	lualib:Map_GenMonster(mapid, 320, 219, 6, 4, "��ū1", 40, false);
	lualib:Map_GenMonster(mapid, 323, 216, 6, 4, "�Źֵ���1", 1, false);
	lualib:Map_GenMonster(mapid, 327, 212, 6, 4, "���浶��1", 40, false);
	lualib:Map_GenMonster(mapid, 326, 201, 6, 4, "˫��������1", 50, false);
	lualib:Map_GenMonster(mapid, 319, 212, 6, 4, "ɳʯħ1", 50, false);
	lualib:Map_GenMonster(mapid, 334, 204, 6, 4, "ţħ����", 1, false);
	lualib:Map_GenMonster(mapid, 305, 222, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 313, 215, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 319, 239, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 324, 227, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 331, 221, 6, 4, "��ħ1", 50, false);
	--���ű�������
	y = 174
	for x = 266, 287, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "����ţħ1", 1, false);
		y = y - 1;
	end
	lualib:Map_GenMonster(mapid, 288, 152, 1, 4, "ţħ����", 1, false);
	lualib:Map_GenMonster(mapid, 299, 141, 1, 4, "ţħ����", 1, false);
	y = 140
	for x = 300, 323, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "����ţħ1", 1, false);
		y = y - 1;
	end
	lualib:Map_GenMonster(mapid, 308, 168, 7, 4, "ţħ����1", 100, false);
	lualib:Map_GenMonster(mapid, 264, 193, 7, 4, "����ţħ1", 100, false);
	lualib:Map_GenMonster(mapid, 321, 133, 7, 4, "ţħ��ʿ1", 100, false);
	lualib:Map_GenMonster(mapid, 297, 156, 1, 4, "ǧ����ħ", 1, false);
	lualib:Map_GenMonster(mapid, 304, 163, 3, 4, "����ħ����", 10, false);
	lualib:Map_GenMonster(mapid, 304, 163, 3, 4, "��ħ����", 3, false);
	lualib:Map_GenMonster(mapid, 300, 169, 3, 4, "����ħ����", 10, false);
	lualib:Map_GenMonster(mapid, 300, 169, 3, 4, "��ħ����", 3, false);
	lualib:Map_GenMonster(mapid, 311, 160, 3, 4, "����ħ������Գ", 10, false);
	lualib:Map_GenMonster(mapid, 311, 160, 3, 4, "��ħ������Գ", 3, false);
	lualib:Map_GenMonster(mapid, 309, 168, 3, 4, "����ħ������", 10, false);
	lualib:Map_GenMonster(mapid, 309, 168, 3, 4, "��ħ������", 3, false);
	lualib:Map_GenMonster(mapid, 314, 173, 3, 4, "����ħ��ڤʬ��", 10, false);
	lualib:Map_GenMonster(mapid, 314, 173, 3, 4, "��ħ��ڤʬ��", 3, false);
	lualib:Map_GenMonster(mapid, 314, 173, 6, 4, "ħ��1", 40, false);
	lualib:Map_GenMonster(mapid, 320, 179, 6, 4, "ɢ��1", 40, false);
	lualib:Map_GenMonster(mapid, 325, 184, 6, 4, "��ū1", 40, false);
	lualib:Map_GenMonster(mapid, 329, 188, 6, 4, "�Źֵ���1", 1, false);
	lualib:Map_GenMonster(mapid, 337, 185, 6, 4, "ɳʯħ1", 50, false);
	lualib:Map_GenMonster(mapid, 334, 193, 6, 4, "ǧ����ħ", 1, false);
	lualib:Map_GenMonster(mapid, 307, 177, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 317, 166, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 324, 172, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 314, 185, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 321, 192, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 331, 178, 6, 4, "��ħ1", 50, false);
	--���ű�������
	y = 273
	for x = 361, 384, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "����ţħ1", 1, false);
		y = y - 1;
	end
	lualib:Map_GenMonster(mapid, 385, 248, 1, 4, "ţħ����", 1, false);
	lualib:Map_GenMonster(mapid, 395, 238, 1, 4, "ţħ����", 1, false);
	y = 237
	for x = 396, 426, 1
	do
		lualib:Map_GenMonster(mapid, x, y, 1, 4, "����ţħ1", 1, false);
		y = y - 1;
	end
	lualib:Map_GenMonster(mapid, 354, 270, 7, 4, "ţħ����1", 100, false);
	lualib:Map_GenMonster(mapid, 420, 204, 7, 4, "����ţħ1", 100, false);
	lualib:Map_GenMonster(mapid, 253, 270, 7, 4, "ţħ��ʿ1", 100, false);
	lualib:Map_GenMonster(mapid, 385, 243, 1, 4, "ǧ����ħ", 1, false);
	lualib:Map_GenMonster(mapid, 379, 238, 3, 4, "����ħ����", 10, false);
	lualib:Map_GenMonster(mapid, 379, 238, 3, 4, "��ħ����", 3, false);
	lualib:Map_GenMonster(mapid, 381, 230, 3, 4, "����ħ����", 10, false);
	lualib:Map_GenMonster(mapid, 381, 230, 3, 4, "��ħ����", 3, false);
	lualib:Map_GenMonster(mapid, 370, 241, 3, 4, "����ħ������Գ", 10, false);
	lualib:Map_GenMonster(mapid, 370, 241, 3, 4, "��ħ������Գ", 3, false);
	lualib:Map_GenMonster(mapid, 374, 234, 3, 4, "����ħ������", 10, false);
	lualib:Map_GenMonster(mapid, 374, 234, 3, 4, "��ħ������", 3, false);
	lualib:Map_GenMonster(mapid, 370, 230, 3, 4, "����ħ��ڤʬ��", 10, false);
	lualib:Map_GenMonster(mapid, 370, 230, 3, 4, "��ħ��ڤʬ��", 3, false);
	lualib:Map_GenMonster(mapid, 370, 230, 6, 4, "ħ��1", 40, false);
	lualib:Map_GenMonster(mapid, 364, 224, 6, 4, "ɢ��1", 40, false);
	lualib:Map_GenMonster(mapid, 367, 217, 6, 4, "��ū1", 40, false);
	lualib:Map_GenMonster(mapid, 360, 209, 6, 4, "�Źֵ���1", 1, false);
	lualib:Map_GenMonster(mapid, 366, 203, 6, 4, "ɳʯħ1", 50, false);
	lualib:Map_GenMonster(mapid, 344, 204, 6, 4, "ǧ����ħ", 1, false);
	lualib:Map_GenMonster(mapid, 376, 204, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 369, 216, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 362, 209, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 366, 236, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 368, 229, 6, 4, "��ħ1", 50, false);
	lualib:Map_GenMonster(mapid, 360, 221, 6, 4, "��ħ1", 50, false);
	--�ʹ���ǰ��������
	lualib:Map_GenMonster(mapid, 344, 194, 1, 4, "Ѫ��ʦ", 1, false);
	lualib:Map_GenMonster(mapid, 363, 185, 1, 4, "Ѫ��ʦ", 1, false);
	lualib:Map_GenMonster(mapid, 362, 171, 1, 4, "����ɮ", 1, false);
	lualib:Map_GenMonster(mapid, 343, 190, 6, 4, "��������1", 40, false);
	lualib:Map_GenMonster(mapid, 348, 196, 6, 4, "��ԭ��ʿ1", 40, false);
	lualib:Map_GenMonster(mapid, 348, 196, 6, 4, "��ԭ��ʿ1", 40, false);
	lualib:Map_GenMonster(mapid, 366, 190, 6, 4, "��ԭ��ʿ1", 40, false);
	lualib:Map_GenMonster(mapid, 365, 175, 6, 4, "ҹ��ɮ1", 40, false);
	lualib:Map_GenMonster(mapid, 360, 180, 6, 4, "Ӱ��1", 40, false);
	lualib:Map_GenMonster(mapid, 368, 167, 6, 4, "�ڰ��̿�1", 40, false);
	lualib:Map_GenMonster(mapid, 365, 174, 6, 4, "��ɮ1", 40, false);
	--�ʹ��ڱ�������
	local mapid = lualib:Map_GetMapGuid("���ǻʹ�");
	lualib:Map_GenMonster(mapid, 20, 30, 7, 4, "�ڰ��̿�1", 100, false);
	lualib:Map_GenMonster(mapid, 30, 40, 7, 4, "��ɮ1", 100, false);
	lualib:Map_GenMonster(mapid, 29, 29, 1, 4, "����ɮ", 1, false);
	--�ܵ���������
	local mapid = lualib:Map_GetMapGuid("�����ܵ�");
	lualib:Map_GenMonster(mapid, 88, 65, 1, 4, "Ѫ��ʦ", 1, false);
	lualib:Map_GenMonster(mapid, 97, 68, 8, 4, "ɳʯħ2", 100, false);
	lualib:Map_GenMonster(mapid, 84, 53, 8, 4, "��Ӣ��������1", 100, false);
	lualib:Map_GenMonster(mapid, 85, 68, 8, 4, "��ū2", 100, false);
	lualib:Map_GenMonster(mapid, 83, 73, 8, 4, "��ħ3", 100, false);
	lualib:Map_GenMonster(mapid, 77, 79, 8, 4, "��ԭ��ʿ1", 100, false);
	lualib:Map_GenMonster(mapid, 70, 86, 8, 4, "ҹ��ɮ1", 100, false);
	lualib:Map_GenMonster(mapid, 58, 79, 8, 4, "��ԭ��ʿ3", 100, false);
	lualib:Map_GenMonster(mapid, 48, 71, 8, 4, "Ӱ��2", 100, false);
	lualib:Map_GenMonster(mapid, 39, 70, 8, 4, "�ڰ��̿�3", 100, false);
	lualib:Map_GenMonster(mapid, 37, 81, 8, 4, "��Ӣħ��1", 100, false);
	lualib:Map_GenMonster(mapid, 29, 94, 8, 4, "����ɢ��1", 100, false);
	lualib:Map_GenMonster(mapid, 33, 105, 8, 4, "����ҹ��ɮ1", 100, false);
	lualib:Map_GenMonster(mapid, 33, 117, 4, 4, "����1", 50, false);
	lualib:AddTimer(lualib:Map_GetMapGuid("���ǻʹ�"), curindex, 1, 1, "on_timer")
end

function on_timer()
	lualib:SysMsg_SendBroadcastColor(msg[curindex], "", 1, 12)
	lualib:AddTimer(lualib:Map_GetMapGuid("���ǻʹ�"), curindex, 5000, 1, "on_timer")
	curindex = curindex + 1;
	if(curindex >= table.getn(msg)) then
		return;
	end
end

