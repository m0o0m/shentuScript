<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1108" name="[����]-ҩƷ" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#������ҩ����#COLOREND#
 #COLORCOLOR_GREENG#������ҩ����#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##NPCLINK<STR:ҩ����,NPCID:1>##COLOREND#��¹������ҩ��û��ʲô����

#IMAGE1902100024#
     ��#COLORCOLOR_GREENG##NPCLINK<STR:ҩ����,NPCID:1>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺1100
   �������ߣ���ҩ(С)��
              ħ��ҩ(С)��]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1107" />
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
			<![CDATA[�ұ����#COLORCOLOR_GREENG##NPCLINK<STR:ҩ����,NPCID:1>##COLOREND#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ҩ���̵�#COLORCOLOR_GREENG##NPCLINK<STR:ҩ����,NPCID:1>##COLOREND#�Ի��������]]>
			</accomplishing>
		</tracker>
		<rewards exp="1100" >
			<awards>
				<award keyname="��ҩ(С)��"  n="1" bind_require="1" />
				<award keyname="ħ��ҩ(С)��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>