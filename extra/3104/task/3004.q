<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3004" name="[����]-����������ħʯ��" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������ϱ�#COLOREND#
 #COLORCOLOR_GREENG#�������ϱ�#COLOREND#

#IMAGE1902100023#
     ǰ��#COLORCOLOR_GREENG##LINK<MAP:���ٳ�,POSX:93,POSY:95,STR:��ħʯ������>##COLOREND#������10����ħ�ȷ�


#IMAGE1902100024#
     �붫�ٳǵ�#COLORCOLOR_GREENG##NPCLINK<STR:�ϱ�,NPCID:45>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺850000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="3003" />
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
			<![CDATA[ǰ��#COLORCOLOR_GREENG##LINK<MAP:���ٳ�,POSX:93,POSY:95,STR:��ħʯ������>##COLOREND#������10ֻ#COLORCOLOR_GREENG#��ħ�ȷ�#COLOREND##MONSTERGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ض��ٳ���#COLORCOLOR_GREENG##NPCLINK<STR:�ϱ�,NPCID:45>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="��ħ�ȷ�1" />
					<group_hunting keyname="��ħ�ȷ�2" />
					<group_hunting keyname="��ħ�ȷ�˵��1" />
					<group_hunting keyname="��ħ�ȷ�˵��2" />
					<group_hunting keyname="��ħ�ȷ�˵��3" />
					<group_hunting keyname="��ħ�ȷ�˵��4" />
					<group_hunting keyname="��Ӣ��ħ�ȷ�1" />
					<group_hunting keyname="������ħ�ȷ�1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="850000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>