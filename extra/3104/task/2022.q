<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2022" name="[����]-�����ԭ��ʿ" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#���������а������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:а��2,POSX:50,POSY:275,STR:���а��>##COLOREND#������ִ�����ħ��ȥ����20��#COLORCOLOR_GREENG#��ԭ��ʿ#COLOREND#


#IMAGE1902100024#
     ����20��#COLORCOLOR_GREENG#��ԭ��ʿ#COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺300000
   ������ң�50000���󶨽�ң�
   ����Ԫ����300����Ԫ����]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:а��2,POSX:50,POSY:275,STR:���а�����>##COLOREND#����20��#COLORCOLOR_GREENG#��ԭ��ʿ#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="��ԭ��ʿ1" />
					<group_hunting keyname="������ԭ��ʿ1" />
					<group_hunting keyname="������ԭ��ʿ1" />
					<group_hunting keyname="��Ӣ��ԭ��ʿ1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300000" bind_ingot="300" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>