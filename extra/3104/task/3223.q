<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3223" name="[����]-��ø�ǿ" type="1" suggest_level="1" visible="1" next_id="3224">
		<description>
			лл���������ô�࣬��֪���ܶ��˶������㡣����������41����ȥ���Ҷ��ٳǵ�ѱ��ʦ�ɡ�
		</description>
		<dialogue>
			<brief>лл���������ô�࣬��֪���ܶ��˶������㡣����������41����ȥ���Ҷ��ٳǵ�ѱ��ʦ�ɡ�</brief>
			<await>����41����ʱ��ȥ�Ҷ��ٳǵ�ѱ��ʦ��</await>
			<finish>�ǵģ���ȷʵ�������㡣</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3222" />
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
			<![CDATA[�ﵽ41��ʱ�������ٳ���#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:ѱ��ʦ,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:ѱ��ʦ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="41" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>