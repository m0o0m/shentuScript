<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2008" name="[����]-���ţħ����" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�����񣺾�·������#COLOREND#
 #COLORCOLOR_GREENG#�����񣺾�·������#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:��·��1,POSX:293,POSY:496,STR:��·��>##COLOREND#�г����ţħ���������20ֻ#COLORCOLOR_GREENG#ţħ����#COLOREND#������ţħ����Ľ���


#IMAGE1902100024#
     ����20ֻ#COLORCOLOR_GREENG#ţħ����#COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺100000
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
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:��·��1,POSX:293,POSY:496,STR:��·��>##COLOREND#����20ֻ#COLORCOLOR_GREENG#ţħ����#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="ţħ����1" />
					<group_hunting keyname="ţħ����2" />
					<group_hunting keyname="ţħ����3" />
					<group_hunting keyname="����ţħ����1" />
					<group_hunting keyname="����ţħ����1" />
					<group_hunting keyname="����ţħ����2" />
					<group_hunting keyname="����ţħ����3" />
					<group_hunting keyname="��Ӣţħ����1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" bind_ingot="300" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>