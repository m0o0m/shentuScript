<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2004" name="[����]-��������" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#������������ͷ#COLOREND#
 #COLORCOLOR_GREENG#������������ͷ#COLOREND#

#IMAGE1902100023#
     Ϊ����ǿʵ������#NPCLINK<STR:������ͷ,NPCID:30006>#�Ի����������Լ������������н�����������˵�������еĹ�������ͣ���һ��Ҫ����ҩƷ������װ���źý��롣


#IMAGE1902100024#
     ����20ֻ�����޺������#NPCLINK<STR:������ͷ,NPCID:30006>#�Ի�


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
			<![CDATA[��#COLORCOLOR_GREENG##NPCLINK<STR:������ͷ,NPCID:30006>##COLOREND#������#COLORCOLOR_GREENG#������#COLOREND#����20ֻ#COLORCOLOR_GREENG#������#COLOREND##MONSTERGROUP0#���Լ���ĸ�ǿ]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:������ͷ,NPCID:30006>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="����������" />
					<group_hunting keyname="�м�������" />
					<group_hunting keyname="�߼�������" />
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