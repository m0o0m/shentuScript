<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1104" name="[����]-ս��ʵ��" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#��������������Ա#COLOREND#
 #COLORCOLOR_GREENG#��������������Ա#COLOREND#

#IMAGE1902100023#
     �ڴ��Ӹ�������3ֻ#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:202,POSY:689,STR:��>##COLOREND#���鿴����Ϊ��ͻȻ��ñ��壬Ȼ��������ҡ����ڲ����ϻ��в����׵ĶԷ������ڸ����������ҵ��ҵĻ�������˽⡣


#IMAGE1902100024#
     ������3ֻ#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:202,POSY:689,STR:��>##COLOREND#�������#COLORCOLOR_GREENG##NPCLINK<STR:��������Ա,NPCID:1001>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺500]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1103" />
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
			<![CDATA[�ڴ��Ӹ�������3ֻ#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:202,POSY:689,STR:��>##COLOREND##MONSTERGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:��������Ա,NPCID:1001>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>