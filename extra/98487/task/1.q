<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1" name="ÿ������-���������" type="1" suggest_level="1" visible="1">
		<script name="ÿ������" />
		<description>
			������ｩʬ���У��Ѿ�����Ӱ��������������ճ������ˡ�
��������ǣ�ǰ���Ͽ����ɱ��100ֻ��ʬ��
������������60000 �󶨽��50000 ��Ԫ��50
		</description>
		<dialogue>
			<brief>������ｩʬ���У��Ѿ�����Ӱ��������������ճ������ˡ�
��������ǣ�ǰ���Ͽ����ɱ��100ֻ��ʬ��
������������60000 �󶨽��50000 ��Ԫ��50</brief>
			<await>�������</await>
			<finish>�������</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:00" />
			</time>
			<level enable="1" min_num="25" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#NPCLINK<STR:���͵�������,NPCKEYNAME:�����ϱ�># 
�����ˣ�#MONSTERGROUP0#
(��Ӵ��Ч�ʸ���)]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:����������ʹ�߽�����,NPCKEYNAME:����ʹ��>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="��ʬ1" />
					<group_hunting keyname="��ʬ10" />
					<group_hunting keyname="��ʬ2" />
					<group_hunting keyname="��ʬ20" />
					<group_hunting keyname="��ʬ3" />
					<group_hunting keyname="��ʬ30" />
					<group_hunting keyname="��ʬ4" />
					<group_hunting keyname="��ʬ40" />
					<group_hunting keyname="��ʬ5" />
					<group_hunting keyname="��ʬ50" />
					<group_hunting keyname="��1" />
					<group_hunting keyname="��2" />
					<group_hunting keyname="��3" />
					<group_hunting keyname="��4" />
					<group_hunting keyname="��5" />
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