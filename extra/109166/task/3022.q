<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3022" name="[����]-Ѱ���ӻ���" type="1" suggest_level="1" visible="1" next_id="3023">
		<description>
			ȥ�����ӻ��̣�Ҳ��������Ҫ�Ķ�����
		</description>
		<dialogue>
			<brief>���ڣ����Ѿ�����һ���ϸ����ʿ�ˡ�ȥ��ɽ�ǲμ����Ǿ�Ԯ��֮ǰ���ҽ�����ȥ�����ӻ��̣�Ҳ�������еĶ�����</brief>
			<await>�ҽ�����ȥ�����ӻ��̣�Ҳ�������еĶ�����</await>
			<finish>�ף�����ô���ڴ����й䣿�����˿ɶ�����Ŭ��ѧϰս���ļ���Ŷ����ɱ�������͵����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3021" />
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
			<![CDATA[��#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ִ��ӻ�����,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ִ��ӻ�����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="8000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>