<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3321" name="[����]-���ԹŴ�������(1)" type="1" suggest_level="1" visible="1" next_id="3322">
		<description>
			��j*u444^^k@Ehh****^������\n����������������Ա��ϣ�������ȷ��������ʹ�õ����֡�������,��ȥѰ������������ʰɡ�
		</description>
		<dialogue>
			<brief>��j*u444^^k@Ehh****^������\n����������������Ա��ϣ�������ȷ��������ʹ�õ����֡�������,��ȥѰ������������ʰɡ�</brief>
			<await>�������������������</await>
			<finish>ȷʵ����������֣����ң�������ʧ�˵Ĵ̿Ͱ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3320" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="��д��"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�ص����ǣ���#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص����ǣ���#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="��д��"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>