<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3331" name="[����]-����ˮ֮���ķ���(1)" type="1" suggest_level="1" visible="1" next_id="3332">
		<description>
			�ؾ���ĵ��Ҵ�ʦ������Ѱ���㣬����ȥ�ݷ���һ�ˡ�����,��ʦӦ���ҵ����յķ�����.
		</description>
		<dialogue>
			<brief>�ؾ���ĵ��Ҵ�ʦ������Ѱ���㣬����ȥ�ݷ���һ�ˡ�����,��ʦӦ���ҵ����յķ�����.</brief>
			<await>���Ҵ�ʦ��������,ȥ����һ�˰�</await>
			<finish>������Ѱ���ƽ⺣��һ��ˮ֮���ķ��������������н���ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3326" />
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
			<![CDATA[���뺣�׳���һ�㣬��#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[���뺣�׳���һ�㣬��#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
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