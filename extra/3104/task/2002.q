<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2002" name="[����]-����������Թ��" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:������1,POSX:21,POSY:175,STR:������>##COLOREND#��Թ����Ӱ�쵽�˻��˵����ǣ���Ҫȥ����20ֻ����#COLORCOLOR_GREENG##LINK<MAP:������1,POSX:21,POSY:175,STR:��ʬ>##COLOREND#��ƽϢԹ��


#IMAGE1902100024#
     ����20ֻ����#COLORCOLOR_GREENG##LINK<MAP:������1,POSX:21,POSY:175,STR:��ʬ>##COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺80000
   ������ң�50000���󶨽�ң�
   ����Ԫ����300����Ԫ����]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="2001" />
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
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:������1,POSX:21,POSY:175,STR:������>##COLOREND#����20ֻ����#COLORCOLOR_GREENG##LINK<MAP:������1,POSX:21,POSY:175,STR:��ʬ>##COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="��ʬ1" />
					<group_hunting keyname="��ʬ1" />
					<group_hunting keyname="ʬ��1" />
					<group_hunting keyname="��ʬ2" />
					<group_hunting keyname="��ʬ2" />
					<group_hunting keyname="ʬ��2" />
					<group_hunting keyname="��ʬ1" />
					<group_hunting keyname="�ױ���ʬ1" />
					<group_hunting keyname="�ױ���ʬ2" />
					<group_hunting keyname="������ʬ1" />
					<group_hunting keyname="���ⸯʬ1" />
					<group_hunting keyname="����ʬ��1" />
					<group_hunting keyname="������ʬ2" />
					<group_hunting keyname="���ⸯʬ2" />
					<group_hunting keyname="����ʬ��2" />
					<group_hunting keyname="���⽩ʬ1" />
					<group_hunting keyname="�����ױ���ʬ1" />
					<group_hunting keyname="�����ױ���ʬ2" />
					<group_hunting keyname="��Ӣɥʬ1" />
					<group_hunting keyname="��Ӣ��ʬ1" />
					<group_hunting keyname="��Ӣ�ױ���ʬ1" />
					<group_hunting keyname="��Ӣ��ʬ1" />
					<group_hunting keyname="��Ӣ��ʬ1" />
					<group_hunting keyname="��Ӣʬ��1" />
					<group_hunting keyname="��Ӣ��ʬ2" />
					<group_hunting keyname="��Ӣ��ʬ2" />
					<group_hunting keyname="��Ӣʬ��2" />
					<group_hunting keyname="��ڤʬ��" />
					<group_hunting keyname="��ʬ��" />
					<group_hunting keyname="��ʬ��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" bind_ingot="300" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>