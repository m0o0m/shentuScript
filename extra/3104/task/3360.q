<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3360" name="[����]-�޸������" type="1" suggest_level="1" visible="1" next_id="">
		<description>
			��ѽ��Ѿ��޸����ˣ������˲��õ�������������ɭɭ���������ˣ��ҷ�����������ѽ�ʹ����ħ֮Ѫ���ź�����������ɣ�����ȥ�����������˰ɡ�
		</description>
		<dialogue>
			<brief>��ѽ��Ѿ��޸����ˣ������˲��õ�������������ɭɭ���������ˣ��ҷ�����������ѽ�ʹ����ħ֮Ѫ���ź�����������ɣ�����ȥ�����������˰ɡ�</brief>
			<await>�콫�޸��õĽ������������˰�!</await>
			<finish>лл�㣡��һ�����ô˽�������ħ����Ѫ������һ�����⣬��������������Ұ�������һѽ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3358" />
				</group>
			</prologues>
			<jobs>
				<job id="2" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="��"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[���޸��õ��񽣽��������Ĳ��#NPCLINK<STR:ð����,NPCKEYNAME:ð����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[���޸��õ��񽣽��������Ĳ��#NPCLINK<STR:ð����,NPCKEYNAME:ð����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��������"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>