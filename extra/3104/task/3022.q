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
		<rewards exp="8000" >
			<awards>
				<award keyname="ħ��ͷ��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>