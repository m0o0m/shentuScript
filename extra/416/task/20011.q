<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="20011" name="[����]-�ַ�����" type="1" suggest_level="1" visible="0">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     ȥ#COLORCOLOR_GREENG##LINK<MAP:ʯ��һ��,POSX:228,POSY:156,STR:����,MOVE:1>##COLOREND#����10ֻ����#COLORCOLOR_GREENG##LINK<MAP:ʯ��һ��,POSX:228,POSY:156,STR:����,MOVE:1>##COLOREND#���������


#IMAGE1902100024#
     ����10ֻ#COLORCOLOR_GREENG##LINK<MAP:ʯ��һ��,POSX:228,POSY:156,STR:����,MOVE:1>##COLOREND#������#COLORCOLOR_GREENG##LINK<MAP:ʯ��һ��,POSX:228,POSY:156,STR:����,MOVE:1>##COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25002,MOVE:1>##COLOREND#�Ի�


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
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:ʯ��һ��,POSX:118,POSY:156,STR:����,MOVE:1>##COLOREND#����10ֻ����#COLORCOLOR_GREENG##LINK<MAP:ʯ��һ��,POSX:188,POSY:156,STR:����,MOVE:1>##COLOREND##MONSTERGROUP0#���������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="��Ұ��" />
					<group_hunting keyname="��Ұ��0" />
					<group_hunting keyname="��Ұ��" />
					<group_hunting keyname="��ɫ����0" />
					<group_hunting keyname="��ɫ����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>