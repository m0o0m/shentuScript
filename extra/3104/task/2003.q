<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2003" name="[����]-����аħ��ż" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�����񣺷�ħ����·��#COLOREND#
 #COLORCOLOR_GREENG#�����񣺷�ħ����·��#COLOREND#

#IMAGE1902100023#
     ��#NPCLINK<STR:��ħ����·��,NPCID:30022>#�������ħ���л���а�����λ��ǿ���ٻ������ķ�����ֹ���ָ�ʵ�������ܵ����ķ��������Ի�ô����ľ���ͽ�Ǯ�����ܻ��ѭ��ħ�䣬ѭ��ħ�������������˴�ˢ���ַ�����ʱʹ��


#IMAGE1902100024#
     ����20ֻаħ��ż�������#NPCLINK<STR:��ħ����·��,NPCID:30022>#�Ի�


#IMAGE1902100025#

   �������飺50000
   ������ң�20000���󶨽�ң�]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<repeat enable="1" times="1"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
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
			<![CDATA[����#COLORCOLOR_GREENG#��ħ��#COLOREND#����20ֻ#COLORCOLOR_GREENG#аħ��ż#COLOREND##MONSTERGROUP0#��ֹ����ǿ�߱�ǿ]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:��ħ����·��,NPCID:30022>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="аħ��ż1" />
					<group_hunting keyname="аħ��ż2" />
					<group_hunting keyname="аħ��ż3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" bind_gold="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>