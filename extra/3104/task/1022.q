<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1022" name="[����]-��������˱���" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#������Ԫ����ֵ#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     
     ��#NPCLINK<STR:�������,NPCID:25001>#���棺�Լ��Ѿ������˽���;������

#IMAGE1902100024#
     ��#NPCLINK<STR:�������,NPCID:25001>#�Ի�


#IMAGE1902100025#

   �������飺70000����
   ������ң�14000���]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1021" />
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
			<![CDATA[ȥ����ɽ�ǵ�#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:233,POSY:290,STR:�������>##COLOREND#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�����Լ�����;�����Ѿ����˴��µ��˽�]]>
			</accomplishing>
		</tracker>
		<rewards exp="70000" gold="14000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>