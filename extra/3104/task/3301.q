<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3301" name="[����]-������53��" type="1" suggest_level="1" visible="1" next_id="3293">
		<description>
			����,�ڽ�����ð����,�㽫�⿪һ��������.����, ������Ҳ����ζ�Ŵ�Σ��,�����ʵ����Ȼ����! ����������53���������Ұ�!
		</description>
		<dialogue>
			<brief>����,�ڽ�����ð����,�㽫�⿪һ��������.����, ������Ҳ����ζ�Ŵ�Σ��,�����ʵ����Ȼ����! ����������53���������Ұ�!</brief>
			<await>��û���㹻��ʵ��~,���Ͱ�!</await>
			<finish>��ϲ���ֽ�����.��Ȼ��Ȼ�е���ǿ,�����ʵ��С�ĵ�Ҳ����Ӧ����!</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3292" />
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
			<![CDATA[�ȼ�������53����]]>
			</progressing>
			<accomplishing>
			<![CDATA[��������#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="53" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>