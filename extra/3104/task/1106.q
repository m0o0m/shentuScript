<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1106" name="[����]-װ������" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�����񣺲÷�#COLOREND#
 #COLORCOLOR_GREENG#����������#COLOREND#

#IMAGE1902100023#
     �˽⵽����װ���ļ��ɺ�ȥ��������#COLORCOLOR_GREENG##NPCLINK<STR:����,NPCID:3>##COLOREND#����һ�´���������˳����һ������������֮��


#IMAGE1902100024#
     ��#COLORCOLOR_GREENG##NPCLINK<STR:����,NPCID:3>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺800
   ����װ��������֮��]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1105" />
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
			<![CDATA[�ұ����#COLORCOLOR_GREENG##NPCLINK<STR:����,NPCID:3>##COLOREND#������Ϣ]]>
			</progressing>
			<accomplishing>
			<![CDATA[�˽⵽�˴���װ������Ҫ�ԣ�ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:����,NPCID:3>##COLOREND#����һ�´������Ϣ]]>
			</accomplishing>
		</tracker>
		<rewards exp="800" >
			<awards>
				<award keyname="����֮��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>