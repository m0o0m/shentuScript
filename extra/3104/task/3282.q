<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3282" name="[����]-������51��" type="1" suggest_level="1" visible="1" next_id="3283">
		<description>
			���Ѿ�����˵��,��һ������Σ�յĵ�·,�����ʵ��������С ,�����һ������֮���������Ұ�!��ס,����������51ʱ�������Ұ�!
		</description>
		<dialogue>
			<brief>���Ѿ�����˵��,��һ������Σ�յĵ�·,�����ʵ��������С ,�����һ������֮���������Ұ�!��ס,����������51ʱ�������Ұ�!</brief>
			<await>�㻹û��������51����,����51��ʱ�������Ұ�!</await>
			<finish>�ܸ������ʵ����������!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3281" />
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
			<![CDATA[�ȼ�������51����]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="51" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>