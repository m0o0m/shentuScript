<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3326" name="[����]-�ﵽ56��" type="1" suggest_level="1" visible="1" next_id="3331">
		<description>
			���Ҵ�ʦ�����о������ؾ��й���Ũ����ˮ֮���ķ���,����Ҫһ��ʱ��.����,����Ҫ��������ʵ��.����������56���������Ұ�.
		</description>
		<dialogue>
			<brief>���Ҵ�ʦ�����о������ؾ��й���Ũ����ˮ֮���ķ���,����Ҫһ��ʱ��.����,����Ҫ��������ʵ��.����������56���������Ұ�.</brief>
			<await>�㻹û�дﵽ56��,ҪŬ��Ŷ!</await>
			<finish>������ʵ�����ٶȴ���û����ʧ����.</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3325" />
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
			<![CDATA[������56����]]>
			</progressing>
			<accomplishing>
			<![CDATA[�뺣����ڴ���#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="56" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="355000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>