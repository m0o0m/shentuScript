<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="20004" name="[����]-�ַ�������" type="1" suggest_level="1" visible="1" next_id="">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     ȥ#COLORCOLOR_GREENG##LINK<MAP:������,POSX:113,POSY:149,STR:������>##COLOREND#����50ֻ#COLORCOLOR_GREENG##LINK<MAP:������,POSX:113,POSY:149,STR:��ʬ>##COLOREND#���������


#IMAGE1902100024#
     ����50ֻ#COLORCOLOR_GREENG##LINK<MAP:������,POSX:113,POSY:149,STR:������>##COLOREND#��#COLORCOLOR_GREENG##LINK<MAP:������,POSX:113,POSY:149,STR:��ʬ>##COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCKEYNAME:�������>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺����Ʒ��Խ�߻�þ���Խ��]]>
		</description>
		<dialogue>
			<brief>2</brief>
			<await>2</await>
			<finish>2</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="40" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:������,POSX:113,POSY:149,STR:������>##COLOREND#����50ֻ#COLORCOLOR_GREENG##LINK<MAP:������,POSX:113,POSY:149,STR:��ʬ>##COLOREND##MONSTERGROUP0#���������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCKEYNAME:�������>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="50" >
					<group_hunting keyname="ʬ��2" />
					<group_hunting keyname="��ʬ2" />
					<group_hunting keyname="��ʬ1" />
					<group_hunting keyname="��ʬ2" />
					<group_hunting keyname="�ױ���ʬ2" />
					<group_hunting keyname="��ڤʬ��" />
					<group_hunting keyname="������ʬ1" />
					<group_hunting keyname="��Ӣ��ʬ1" />
					<group_hunting keyname="��ʬ1" />
					<group_hunting keyname="������ʬ1" />
					<group_hunting keyname="�ױ���ʬ1" />
					<group_hunting keyname="��Ӣʬ��1" />
					<group_hunting keyname="�����ױ���ʬ1" />
					<group_hunting keyname="�����ױ���ʬ1" />
					<group_hunting keyname="ʬ��1" />
					<group_hunting keyname="Ĺ������1" />
					<group_hunting keyname="��ʬ1" />
					<group_hunting keyname="������ʬ1" />
					<group_hunting keyname="���ⸯʬ1" />
					<group_hunting keyname="��Ӣ��ʬ1" />
					<group_hunting keyname="��Ӣ�ױ���ʬ1" />
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