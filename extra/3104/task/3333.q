<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3333" name="[����]-����ˮ֮���ķ���(3)" type="1" suggest_level="1" visible="1" next_id="3334">
		<description>
			����Ҫ����ʱ�����������������죬��ʱֻҪ�ں����ؾ����ú��󷨣��Ϳ������ֹ���Ũ�ص�ˮ֮�����Ⲽ��ķ��������Ѿ�������˵�����㽫�����͸�Զ����ͳ�죬�������ðɰɡ�
		</description>
		<dialogue>
			<brief>����Ҫ����ʱ�����������������죬��ʱֻҪ�ں����ؾ����ú��󷨣��Ϳ������ֹ���Ũ�ص�ˮ֮�����Ⲽ��ķ��������Ѿ�������˵�����㽫�����͸�Զ����ͳ�죬�������ðɰɡ�</brief>
			<await>ȥ��Զ����ͳ��</await>
			<finish>�һᰲ����Աǰ�������ڲ������󷨡�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3332" />
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
			<![CDATA[�ص�������ڴ�������ʦ�ķ�������#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�������ڴ�������ʦ�ķ�������#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="255000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>