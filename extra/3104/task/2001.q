<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2001" name="[����]-��ѹ����ڣ" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#���ҽ�����#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:128,POSY:39,STR:����ڣ>##COLOREND#���������Լ�#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:128,POSY:39,STR:����ڣ>##COLOREND#Ŀǰ�������Ҫ��ȥ��ѹ20ֻ#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:128,POSY:39,STR:����>##COLOREND#��


#IMAGE1902100024#
     ����20ֻ����#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:128,POSY:39,STR:����>##COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺50000
   ������ң�30000���󶨽�ң�
   ����Ԫ����200����Ԫ����]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1022" />
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
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:128,POSY:39,STR:����ڣ>##COLOREND#����20ֻ����#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:128,POSY:39,STR:����>##COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="�ɵ�����1" />
					<group_hunting keyname="��������1" />
					<group_hunting keyname="����սʿ1" />
					<group_hunting keyname="������1" />
					<group_hunting keyname="����ɵ�����1" />
					<group_hunting keyname="���ⵥ������1" />
					<group_hunting keyname="��������սʿ1" />
					<group_hunting keyname="���������1" />
					<group_hunting keyname="��Ӣ�ɵ�����1" />
					<group_hunting keyname="��Ӣ������1" />
					<group_hunting keyname="��Ӣ��������1" />
					<group_hunting keyname="��Ӣ����սʿ1" />
					<group_hunting keyname="������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" bind_ingot="200" bind_gold="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>