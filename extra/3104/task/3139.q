<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3139" name="[����]-�ﵽ34��" type="1" suggest_level="1" visible="1" next_id="3140">
		<description>
			������������ǳ�Σ�գ������û��34����ʵ�����ҿɲ������鷳���ˡ�����������34��ʱ������ȥħ�����ߣ���һ��������㣡
		</description>
		<dialogue>
			<brief>������������ǳ�Σ�գ������û��34����ʵ�����ҿɲ������鷳���ˡ�����������34��ʱ������ȥħ�����ߣ���һ��������㣡</brief>
			<await>������ʵ����̫���ˣ��ȵ�34�������ɣ�����Զ�ȥ��ħ�������������ʵ������</await>
			<finish>���ʵ���Ѿ��㹻����������Ѱ��һλ����������ʿ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3138" />
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
			<![CDATA[������#COLORCOLOR_YELLOW#34��#COLOREND#����ʵ������ð��>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ϲ���Ѿ��ﵽ#COLORCOLOR_YELLOW#34��#COLOREND#�ˣ���ȥ�����������ǰ��#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="34" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>