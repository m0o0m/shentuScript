<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3309" name="[����]-������54��" type="1" suggest_level="1" visible="1" next_id="3310">
		<description>
			�������ð����Ҫ��ǿ���ʵ��,����������54��ȥ��Զ����ͳ�쿴����!
		</description>
		<dialogue>
			<brief>�������ð����Ҫ��ǿ���ʵ��,����������54��ȥ��Զ����ͳ�쿴����!</brief>
			<await>�㻹û�дﵽ54��,ҪŬ��ѽ!</await>
			<finish>ǿ���ð����,���ʵ����������!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3308" />
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
			<![CDATA[����ﵽ54����]]>
			</progressing>
			<accomplishing>
			<![CDATA[�뺣����ڴ���#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="54" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="320000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>