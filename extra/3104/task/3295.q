<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3295" name="[����]-��ʦ������(2)" type="1" suggest_level="1" visible="1" next_id="3296">
		<description>
			˭Ҳ��֪���Ժ���ν�֣�����������ĺ�ϣ���ܹ���������һ�������\n����������ܰ������������Ը���Ļ����һᱣ�ֿ��Ƶġ�
		</description>
		<dialogue>
			<brief>˭Ҳ��֪���Ժ���ν�֣�����������ĺ�ϣ���ܹ���������һ�������\n����������ܰ������������Ը���Ļ����һᱣ�ֿ��Ƶġ�</brief>
			<await>������!</await>
			<finish>�㣡���Ȼ��������ôһ��������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3294" />
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
			<![CDATA[���뺣���ؾ�,����#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#����ѱ��ʦ�Ļ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[���뺣���ؾ�,����#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#����ѱ��ʦ�Ļ�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="215000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>