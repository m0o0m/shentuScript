<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3319" name="[����]-�ﵽ55��" type="1" suggest_level="1" visible="1" next_id="3320">
		<description>
			��Ȼ���ǵĽ���������ʧ��,����,���ڹŴ���������ż��������һ������,����㼶��������55��,�ҿ��Ը�����.
		</description>
		<dialogue>
			<brief>��Ȼ���ǵĽ���������ʧ��,����,���ڹŴ���������ż��������һ������,����㼶��������55��,�ҿ��Ը�����.</brief>
			<await>�㻹û�дﵽ55����~</await>
			<finish>��ô��������55��ѽ,���Ŷ!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3311" />
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
			<![CDATA[������55����]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="55" max_num="200" />
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