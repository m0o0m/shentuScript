<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="20003" name="[����]-�ַ�����ڣ" type="2" suggest_level="1" visible="0">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     ȥ#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:37,POSY:138,STR:����ڣһ��,MOVE:1>##COLOREND#(37.138)��������10ֻ#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:37,POSY:138,STR:��ħ�ȷ�,MOVE:1>##COLOREND#���������


#IMAGE1902100024#
     ����10ֻ#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:37,POSY:138,STR:����ڣ,MOVE:1>##COLOREND#��#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:37,POSY:138,STR:��ħ�ȷ�,MOVE:1>##COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001,MOVE:1>##COLOREND#�Ի�


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
			<level enable="1" min_num="25" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:37,POSY:138,STR:����ڣ,MOVE:1>##COLOREND#����10ֻ#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:37,POSY:138,STR:��ħ�ȷ�,MOVE:1>##COLOREND##MONSTERGROUP0#���������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="��ħ�ȷ�3" />
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