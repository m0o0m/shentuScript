<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3296" name="[����]-��ʦ������(3)" type="1" suggest_level="1" visible="1" next_id="3297">
		<description>
			������֪����ɽ�ǵ������̾���һ���������֮������������Ϊ�ǹ���á�����Ӧ�ö໨��Ǯ������򵽡�\n���������Ҹ������ȥ��
		</description>
		<dialogue>
			<brief>������֪����ɽ�ǵ������̾���һ���������֮������������Ϊ�ǹ���á�����Ӧ�ö໨��Ǯ������򵽡�\n���������Ҹ������ȥ��</brief>
			<await>ȥ����ɽ�ǵ�������,��취Ū���������֮����</await>
			<finish>���ܵ��Ҵ�ʦ��ί�У��������ﹺ���ǹ�����͸�ѱ��ʦѽ������һ��������Ȥ�¡�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3295" />
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
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:������,NPCKEYNAME:��ɽ��������,MOVE:1>#����Ū���ǹ�������������]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:������,NPCKEYNAME:��ɽ��������,MOVE:1>#����Ū���ǹ�������������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>