<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1027" name="[����]-��������˸��" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#������������ͷ#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
    �Ҷ���;����������ô����˽⣬�ⶼ�ù鹦��������˵İ����������Ҽ���������;���磬Ҳ��ȥ��#NPCLINK<STR:�������,NPCID:25002>#���лл����ָ����


#IMAGE1902100024#
     ��#NPCLINK<STR:�������,NPCID:25002>#�Ի�


#IMAGE1902100025#

   �������飺40000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1026" />
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
			<![CDATA[ȥ�����ǵ�#COLORCOLOR_GREENG##LINK<MAP:����,POSX:225,POSY:223,STR:�������>##COLOREND#�Ի��������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25002>##COLOREND#�Ի��������]]>
			</accomplishing>
		</tracker>
		<rewards exp="40000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>