<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1012" name="[����]-����ʵս" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#����������ϰ�#COLOREND#
 #COLORCOLOR_GREENG#����������ϰ�#COLOREND#

#IMAGE1902100023#
     ����ʹ�ü��������������ȣ����ܵȼ�������ȼ��й�ϵ��


#IMAGE1902100024#
     ����5��#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:465,POSY:620,STR:��é��>##COLOREND#�������#COLORCOLOR_GREENG##NPCLINK<STR:����,NPCID:14>##COLOREND#


#IMAGE1902100025#

   �������飺20000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1011" />
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
			<![CDATA[ȥ�������5ֻ#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:465,POSY:620,STR:��é��>##COLOREND##MONSTERGROUP0#���ٻ�������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:����,NPCID:14>##COLOREND#����]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="��é��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>