<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3351" name="[����]-��ֵĽ�" type="1" suggest_level="1" visible="1" next_id="3352">
		<description>
			��ʿ���ȵȣ��ҿ����㱳������һ����ֵĽ����ܹ����ҿ�����
		</description>
		<dialogue>
			<brief>��ʿ���ȵȣ��ҿ����㱳������һ����ֵĽ����ܹ����ҿ�����</brief>
			<await>������û����Ʒ����ֵĽ���~</await>
			<finish>����̫��ϧ�ˣ�����һ����������ϧ����ϧ��\n�������룬�ܾ���ǰ����϶���һ���˲��õ��񽣣���Ȼ��ˣ��˽��еĶ����ַ��Ը����˺ܶ���ʾ���������������ɣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3287" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<items>
				<item keyname="��ֵĽ�1"  n="1" bind_require="1" />
			</items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[������#NPCLINK<STR:����,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:����,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��ֵĽ�2"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>