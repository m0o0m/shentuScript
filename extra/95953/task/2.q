<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2" name="ÿ������-��������ɽ��" type="1" suggest_level="1" visible="1">
		<script name="ÿ������" />
		<description>
			��򼶴��������������ɽ�ȡ�������Զ��ʱ��Ѩ���˵�һ�������ܵ�������Ѩ�������ھ�ʱ��
��С���ͷų�������˯�ڵص׵ĳ�����������Щ���ͳ��Ѿ���в�������Ǿ����������ȫ��
��������ǣ�ǰ����򼶴ɱ��20ֻ��򼣬20ֻ��ɫ������20ֻ�����䣬20ֻ������档
������������40000 �󶨽��50000 ��Ԫ��50
		</description>
		<dialogue>
			<brief>��򼶴��������������ɽ�ȡ�������Զ��ʱ��Ѩ���˵�һ�������ܵ�������Ѩ�������ھ�ʱ��
��С���ͷų�������˯�ڵص׵ĳ�����������Щ���ͳ��Ѿ���в�������Ǿ����������ȫ��
��������ǣ�ǰ����򼶴ɱ��20ֻ��򼣬20ֻ��ɫ������20ֻ�����䣬20ֻ������档
������������40000 �󶨽��50000 ��Ԫ��50</brief>
			<await>�������</await>
			<finish>�������</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:00" />
			</time>
			<level enable="1" min_num="25" max_num="44" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#NPCLINK<STR:���͵���򼶴,NPCKEYNAME:�����ϱ�># 
��򼣺#MONSTERGROUP0#
��ɫ������#MONSTERGROUP1#
�����䣺#MONSTERGROUP2#
������棺#MONSTERGROUP3#
(��Ӵ��Ч�ʸ���)]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:����������ʹ�߽�����,NPCKEYNAME:����ʹ��>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="���" />
					<group_hunting keyname="���0" />
					<group_hunting keyname="���1" />
				</group>
				<group n="20" >
					<group_hunting keyname="��ɫ����" />
					<group_hunting keyname="��ɫ����0" />
					<group_hunting keyname="��ɫ����1" />
				</group>
				<group n="20" >
					<group_hunting keyname="������" />
					<group_hunting keyname="������0" />
					<group_hunting keyname="������1" />
				</group>
				<group n="20" >
					<group_hunting keyname="�������" />
					<group_hunting keyname="�������0" />
					<group_hunting keyname="�������1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="50" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>