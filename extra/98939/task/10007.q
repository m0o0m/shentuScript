<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10007" name="[����]-�ַ�Ұ��" type="1" suggest_level="1" visible="0" next_id="">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     ȥ#COLORCOLOR_GREENG##LINK<MAP:Ұ��,POSX:132,POSY:130,STR:Ұ��>##COLOREND#����30ֻ#COLORCOLOR_GREENG##LINK<MAP:Ұ��,POSX:132,POSY:130,STR:����>##COLOREND#���������


#IMAGE1902100024#
     ����30ֻ#COLORCOLOR_GREENG##LINK<MAP:Ұ��,POSX:132,POSY:130,STR:Ұ��>##COLOREND#��#COLORCOLOR_GREENG##LINK<MAP:Ұ��,POSX:132,POSY:130,STR:����>##COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#�Ի�


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
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:Ұ��,POSX:132,POSY:130,STR:Ұ��>##COLOREND#����30ֻ#COLORCOLOR_GREENG##LINK<MAP:Ұ��,POSX:132,POSY:130,STR:����>##COLOREND##MONSTERGROUP0#���������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCKEYNAME:�������>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="30" >
					<group_hunting keyname="����1" />
					<group_hunting keyname="��������1" />
					<group_hunting keyname="ɳʯħ1" />
					<group_hunting keyname="����ɳʯħ1" />
					<group_hunting keyname="��������1" />
					<group_hunting keyname="����ɳʯħ1" />
					<group_hunting keyname="��Ӣɳʯħ1" />
					<group_hunting keyname="�޶�" />
					<group_hunting keyname="˫��������1" />
					<group_hunting keyname="����˫��������1" />
					<group_hunting keyname="����˫��������1" />
					<group_hunting keyname="��Ӣ˫��������1" />
					<group_hunting keyname="��Ӣ���浶��1" />
					<group_hunting keyname="�Źֵ���1" />
					<group_hunting keyname="���浶��1" />
					<group_hunting keyname="��ħ2" />
					<group_hunting keyname="�������浶��1" />
					<group_hunting keyname="��ū1" />
					<group_hunting keyname="��Ӣ��ū1" />
					<group_hunting keyname="�綾���볲1" />
					<group_hunting keyname="��Ӣ�Źֵ���1" />
					<group_hunting keyname="�綾���볲3" />
					<group_hunting keyname="�����ħ2" />
					<group_hunting keyname="�綾���볲4" />
					<group_hunting keyname="��ʯ����" />
					<group_hunting keyname="��Ӣ��ħ1" />
					<group_hunting keyname="Ѫ��ʦ" />
					<group_hunting keyname="�綾���볲5" />
					<group_hunting keyname="�綾���볲6" />
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