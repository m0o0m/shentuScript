<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="40007" name="[����]-�ַ���ħ��" type="1" suggest_level="1" visible="0" next_id="">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     ȥ#COLORCOLOR_GREENG##LINK<MAP:�����,POSX:98,POSY:98,STR:��ħ��,MOVE:1>##COLOREND#(132.130)��������20ֻ#COLORCOLOR_GREENG##LINK<MAP:�����,POSX:98,POSY:98,STR:��Ұ��,MOVE:1>##COLOREND#���������


#IMAGE1902100024#
     ����20ֻ#COLORCOLOR_GREENG##LINK<MAP:�����,POSX:98,POSY:98,STR:��ħ��,MOVE:1>##COLOREND#��#COLORCOLOR_GREENG##LINK<MAP:�����,POSX:98,POSY:98,STR:��Ұ��,MOVE:1>##COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25002,MOVE:1>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺��ɫ�ȼ�Խ�߻��Խ��]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="35" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:�����,POSX:98,POSY:98,STR:��ħ��,MOVE:1>##COLOREND#����20ֻ#COLORCOLOR_GREENG##LINK<MAP:�����,POSX:98,POSY:98,STR:��Ұ��,MOVE:1>##COLOREND##MONSTERGROUP0#���������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="��Ұ��" />
					<group_hunting keyname="��Ұ��0" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>