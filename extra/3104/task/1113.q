<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1113" name="[����]-�����͸߼��ֿ�����" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#����������ϰ�#COLOREND#
 #COLORCOLOR_GREENG#�����񣺲ֿ����Ա#COLOREND#

#IMAGE1902100023#
     ��#COLORCOLOR_GREENG##NPCLINK<STR:�ֿ����Ա,NPCID:8>##COLOREND#�Ի�����������һ����������������ռ䡣


#IMAGE1902100024#
     ��#COLORCOLOR_GREENG##NPCLINK<STR:�ֿ����Ա,NPCID:8>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺30000����
   �������ߣ�һ������
              һ���߼��ֿ�����]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1112" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�ұ����#COLORCOLOR_GREENG##NPCLINK<STR:�ֿ����Ա,NPCID:8>##COLOREND#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�ֿ����Ա,NPCID:8>##COLOREND#�Ի��˽�ֿ�洢֪ʶ]]>
			</accomplishing>
		</tracker>
		<rewards exp="30000" >
			<awards>
				<award keyname="�鲼��"  n="1" bind_require="1" />
				<award keyname="������(1��)"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>